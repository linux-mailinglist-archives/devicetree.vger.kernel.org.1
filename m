Return-Path: <devicetree+bounces-10056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 881387CF7FF
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D538282000
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE10B1DFF2;
	Thu, 19 Oct 2023 12:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSqk6R0t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A94F1DFDA;
	Thu, 19 Oct 2023 12:03:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 537CBC433C7;
	Thu, 19 Oct 2023 12:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697717028;
	bh=7RwRDPja+BFl9I42gPB9G48QdL9q0Wc22SuWBEjhfrw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jSqk6R0t7Y2nETGpH7m/j95dxlR5uEG7sj/AkGv0RjujwZtpE5racGJ6z03J+Ivyp
	 FRyYqp9SN62PNV427KXcQ9l64TMw1qFrMGnVqCW+j1R2Oztqtc3FOB1Dnd9TIGvkn1
	 iyMzYLXDKIjaxWLsER1xm3fznuDSSxfrglKoxoo7pc16hpyJFJWrlvOHn6e0Y4Mr4x
	 WoE7d6F0VMne7e9R2NGZV7OTGAvYm5H7uK5PuPsSeDaQNMoAgvVWdh/1gqHUVLPEWv
	 xuY8kShvwVrXUmjPj1a38GUjK40tBgfCDHEY5f3sA6sqWrUD9Ur51LKxrEQilI70S+
	 HcpQM1c2Sp65Q==
Date: Thu, 19 Oct 2023 13:03:41 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Eric Dumazet <edumazet@google.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	"David S. Miller" <davem@davemloft.net>,
	linux-kernel@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH net-next v4 1/7] dt-bindings: net: dsa: Require ports or
 ethernet-ports
Message-ID: <20231019-repacking-scrunch-f2435c2fd7e8@spud>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-1-3ee0c67383be@linaro.org>
 <169762516670.391804.7528295251386913602.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KPoA9a73TBHTsk2t"
Content-Disposition: inline
In-Reply-To: <169762516670.391804.7528295251386913602.robh@kernel.org>


--KPoA9a73TBHTsk2t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 05:32:48AM -0500, Rob Herring wrote:
>=20
> On Wed, 18 Oct 2023 11:03:40 +0200, Linus Walleij wrote:
> > Bindings using dsa.yaml#/$defs/ethernet-ports specify that
> > a DSA switch node need to have a ports or ethernet-ports
> > subnode, and that is actually required, so add requirements
> > using oneOf.
> >=20
> > Suggested-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/net/dsa/dsa.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >=20
>=20
> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>=20
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/net/dsa/dsa.yaml:60:7: [warning] wron=
g indentation: expected 8 but found 6 (indentation)
> ./Documentation/devicetree/bindings/net/dsa/dsa.yaml:62:7: [warning] wron=
g indentation: expected 8 but found 6 (indentation)
>=20
> dtschema/dtc warnings/errors:
> Traceback (most recent call last):
>   File "/usr/local/bin/dt-doc-validate", line 64, in <module>
>     ret |=3D check_doc(f)
>            ^^^^^^^^^^^^
>   File "/usr/local/bin/dt-doc-validate", line 32, in check_doc
>     for error in sorted(dtsch.iter_errors(), key=3Dlambda e: e.linecol):
>                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.11/dist-packages/dtschema/schema.py", line=
 125, in iter_errors
>     self.annotate_error(scherr, meta_schema, scherr.schema_path)
>   File "/usr/local/lib/python3.11/dist-packages/dtschema/schema.py", line=
 104, in annotate_error
>     schema =3D schema[p]
>              ~~~~~~^^^
> KeyError: 'type'

Locally, on an older version of dt-schema, I see
/stuff/linux-dt/Documentation/devicetree/bindings/net/dsa/dsa.yaml: $defs: =
'oneOf' should not be valid under {'$ref': '#/definitions/json-schema-prop-=
names'}
	hint: A json-schema keyword was found in $defs key.
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/stuff/linux-dt/Documentation/devicetree/bindings/net/dsa/dsa.yaml: $defs:o=
neOf: [{'required': ['ports']}, {'required': ['ethernet-ports']}] is not of=
 type 'object'
	hint: $defs entries must contain schemas
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json

On the latest version I see the error from the bot.

Doing=20
diff --git a/Documentation/devicetree/bindings/net/dsa/dsa.yaml b/Documenta=
tion/devicetree/bindings/net/dsa/dsa.yaml
index bd6948e4fd9e..25e5950d51ae 100644
--- a/Documentation/devicetree/bindings/net/dsa/dsa.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
@@ -55,10 +55,10 @@ $defs:
             $ref: dsa-port.yaml#
             unevaluatedProperties: false
=20
-  oneOf:
-    - required:
-      - ports
-    - required:
-      - ethernet-ports
+oneOf:
+  - required:
+    - ports
+  - required:
+    - ethernet-ports
=20
 ...

resolves both issues, but the older version of dt-schema definitely had
better error reporting in this case!


--KPoA9a73TBHTsk2t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTEbHQAKCRB4tDGHoIJi
0pEpAQCU4hd9BQ874qBY0UwVcMAKHvyY/RN4cl/j41XZ9MKAEgD+MkLFIYAED1qk
QbcQNLASFWw6gdEZTkwIvwbJAoBlsA4=
=DneM
-----END PGP SIGNATURE-----

--KPoA9a73TBHTsk2t--

