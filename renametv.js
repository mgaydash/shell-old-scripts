var fs = require( "fs" );

fs.readdir( ".", function ( err, files ) {
	var i, j,
		split,
		args = process.argv.splice( 2 ),
		out = [],
		outstr;

	console.log( args );

	if ( err ) {
		console.log( err );
	} else {
		for ( i = 0; i < files.length; i++ ) {

			// Filter out the app.js file. This is a bit of a hack, but whatever.
			if ( files[ i ].indexOf(  "app.js" ) === -1 ) {
				// split = files[ i ].split( args[ 0 ] );
				split = files[ i ].split( "." );
				out = [];
				outstr = "";
				
				for ( j = 0; j < split.length; j++ ) {
					if ( args.indexOf( split[ j ] ) !== -1 ) {
						out.push( split[ j ] );
					}
					if ( /[Ss][0-9]+[Ee][0-9]+/.test( split[ j ] ) ) {
						out.push( split[ j ] );
					}
					if ( j === split.length - 1 ) {
						out.push( split[ j ] );
					}
				}
				for ( j = 0; j < out.length; j++ ) {
					if ( j !== 0 && j !== out.length - 1 ) {
						outstr += " ";
					}
					if ( j === out.length - 1 ) {
						outstr += ".";
					}
					outstr += out[ j ];
				}
				// console.log( outstr );
				fs.rename( files[ i ], outstr );
			}
		}
	}
} );
