Return-Path: <devicetree+bounces-267899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP2nOs6jnWmZQwQAu9opvQ
	(envelope-from <devicetree+bounces-267899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:12:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DACC1876E2
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:12:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C147030FED48
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E400039B4BA;
	Tue, 24 Feb 2026 13:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="XUkyVOgX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661903793A1
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938690; cv=none; b=PaAh2kPE5BqMGfFI0XAUABn/tQUT7bUGH37Z2iI8uRDg3osX9FAiYqubEf6y87AUFhy85J0kWNty+oyKHD+73yIIW8Mg/apeMoIhdUzXEDgQ8lcshtzrlvXJPxbM1NSOV8eVKwlpj7U++Cih0OU2VxybtxDM1kyH6scV4ndIjiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938690; c=relaxed/simple;
	bh=IhLGVQXfCmmsm+oFLNmZxXVX26IOg+LiKd0YmX7izUE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Q5Mb+7nm2cKutWsWqII97PdMYOXO0zHh+cLZi+KaLQsZr0vNmGxA4K2vMQWoCdpHVoczQTgS2XbVCIsFrDqYyw2WNegu7VozVzVOUelGQpDIea/Fa71L6jEe4V5mbiAendFttsYxjTQ929Y+bW0/TDgjsdQ2ORZfw6FlGdTNwqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=XUkyVOgX; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Tue, 24 Feb 2026 15:11:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1771938686; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type; bh=q1yeJZZc6Z/KSxSsXn132Cfs6NBaJ/YQaIv5Z48mn98=;
	b=XUkyVOgXHpsax58jhCxJLf7RNABvw/+6y8lTL3UCtuPfYoqRACJuvPqgji1uArLhXY8I5p
	Hu+ZQNuxlExmOYbrUHrHyGL2lPERe3Y2cqQtNRYoJThOuPsqUteXNXhWSm1PZ1aSmqPS5T
	bUnvfC1XbifVmPWghoIw7pMo7DO01do=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Matti Vaittinen <matti.vaittinen@linux.dev>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <matti.vaittinen@linux.dev>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: bd72720: Add ROHM BD73900
Message-ID: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
Reply-To: Matti Vaittinen <mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QrP61xC/jjOHhrK1"
Content-Disposition: inline
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.24 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267899-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_TO(0.00)[gmail.com,fi.rohmeurope.com,linux.dev];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matti.vaittinen@linux.dev,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[mazziesaccount@gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:dkim,devicetree.org:url]
X-Rspamd-Queue-Id: 8DACC1876E2
X-Rspamd-Action: no action


--QrP61xC/jjOHhrK1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom: Matti Vaittinen <mazziesaccount@gmail.com>

The ROHM BD79300 is almost identical to the BD72720. Main differences
are the initial values for some of the registers. Thus, it appears the
BD79300 can be handled with same software as BD72720.

Adding the compatible for the BD79300 enables people to use the real IC
type in the device-tree instead of claiming it is BD72720. This does
also help differentiating the ICs if appears it is needed.

Add own compatible for the BD73900 and mark BD72720 as a fall-back.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
---
 .../bindings/mfd/rohm,bd72720-pmic.yaml       | 29 +++++++++++--------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd72720-pmic.yaml b=
/Documentation/devicetree/bindings/mfd/rohm,bd72720-pmic.yaml
index 9f42097dfbac..b094542339e8 100644
--- a/Documentation/devicetree/bindings/mfd/rohm,bd72720-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/rohm,bd72720-pmic.yaml
@@ -4,19 +4,19 @@
 $id: http://devicetree.org/schemas/mfd/rohm,bd72720-pmic.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
=20
-title: ROHM BD72720 Power Management Integrated Circuit
+title: ROHM BD72720 and BD73900 Power Management Integrated Circuits
=20
 maintainers:
   - Matti Vaittinen <mazziesaccount@gmail.com>
=20
 description:
-  BD72720 is a single-chip power management IC for battery-powered portable
-  devices. The BD72720 integrates 10 bucks and 11 LDOs, and a 3000 mA
-  switching charger. The IC also includes a Coulomb counter, a real-time
-  clock (RTC), GPIOs and a 32.768 kHz clock gate.
+  BD72720 and BD73900 are single-chip power management ICs for
+  battery-powered portable devices. They integrate 10 bucks and 11 LDOs,
+  and a 3000 mA switching charger. ICs also include a Coulomb counter,
+  a real-time clock (RTC), GPIOs and a 32.768 kHz clock gate.
=20
-# In addition to the properties found from the charger node, the ROHM BD72=
720
-# uses properties from a static battery node. Please see the:
+# In addition to the properties found from the charger node, PMICs
+# use properties from a static battery node. Please see the:
 # Documentation/devicetree/bindings/power/supply/battery.yaml
 #
 # Following properties are used
@@ -48,7 +48,12 @@ description:
=20
 properties:
   compatible:
-    const: rohm,bd72720
+    oneOf:
+      - const: rohm,bd72720
+
+      - items:
+          - const: rohm,bd73900
+          - const: rohm,bd72720
=20
   reg:
     description:
@@ -84,7 +89,7 @@ properties:
     minimum: 10000
     maximum: 50000
     description:
-      BD72720 has a SAR ADC for measuring charging currents. External sense
+      PMIC has a SAR ADC for measuring charging currents. External sense
       resistor (RSENSE in data sheet) should be used. If some other but
       30 mOhm resistor is used the resistance value should be given here in
       micro Ohms.
@@ -100,7 +105,7 @@ properties:
   rohm,pin-fault_b:
     $ref: /schemas/types.yaml#/definitions/string
     description:
-      BD72720 has an OTP option to use fault_b-pin for different
+      PMIC has an OTP option to use fault_b-pin for different
       purposes. Set this property accordingly. OTP options are
       OTP0 - bi-directional FAULT_B or READY indicator depending on a
       'sub option'
@@ -116,7 +121,7 @@ patternProperties:
   "^rohm,pin-dvs[0-1]$":
     $ref: /schemas/types.yaml#/definitions/string
     description:
-      BD72720 has 4 different OTP options to determine the use of dvs<X>-p=
ins.
+      PMIC has 4 different OTP options to determine the use of dvs<X>-pins.
       OTP0 - regulator RUN state control.
       OTP1 - GPI.
       OTP2 - GPO.
@@ -130,7 +135,7 @@ patternProperties:
=20
   "^rohm,pin-exten[0-1]$":
     $ref: /schemas/types.yaml#/definitions/string
-    description: BD72720 has an OTP option to use exten0-pin for different
+    description: PMIC has an OTP option to use exten0-pin for different
       purposes. Set this property accordingly.
       OTP0 - GPO
       OTP1 - Power sequencer output.

base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
--=20
2.53.0


--QrP61xC/jjOHhrK1
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmmdo2sACgkQeFA3/03a
ocWO8wf9E8ydMG/CrAkpmeiZ+HBjCrolujE3SY85i645qweVeJwXRwqHEGwtMq8Y
nwgg6NnVIyw/OjCVqaVzyaQdwzpIDmxI1iEi/2OPgzDu5vPFET/+PxwF30/8848B
e9JaOC51qDi8sCmQersiyGq9B4TrO/wUmzcZvPUwwFCCCsyzkGzCluN/s+D0iquY
Dx4NqROd68TFybg0EQfRuCcB3gupifX6EkVdhy06WEFjD975G88dgAuqvrJaLmOn
q+Zf5jK5MkQr6MyaiLOmtjwtQ9auUN9Wm3tsz9A80p1AuJC7Sn4Db0yitKywra5m
+O4drBRMmLNLoZYQOLSd7sq28XhA4A==
=VwAz
-----END PGP SIGNATURE-----

--QrP61xC/jjOHhrK1--

