Return-Path: <devicetree+bounces-87410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 966B593966A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 00:17:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F5071F225AC
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 22:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165424962E;
	Mon, 22 Jul 2024 22:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="uoGTp3cM"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DC8446A2
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 22:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721686667; cv=none; b=KWTuDeq/pC/hC7l9wwFu29XuKGsSzNWuCtajXxORR+9dwef4XlkszhwN11tPtEZ1xEEywcF9SH8bMfAzIayEt7Q/TwFUmuTdVt+bJP2Kaq59oBbyVqYdfBSv6OZhUOPjrw/S3Uy8DKrc0qZ3T/mcuyXDy70TK3xuOwRyZdJ6vAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721686667; c=relaxed/simple;
	bh=AF+1JUKY/oFIk2tcTh1Aos9t3aO7a3Mon5IR3WiqVPo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WP7kziI+zhCU+arjP3XcRrkFfe8Q0K+vozMXPW7ETecdLJ5ZJXRG5R8c0lF3vQzufzN6usaomCgu4bNfq8ZlPiYuZrUCoOmPB/Do0B/c5ru0KfwAD/5QDU4HnU+OlwfpGhn/fcHjXWW1vKEW59r4cwHPEp77Ym28VYCMKSiV8hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=uoGTp3cM; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 058892C054A;
	Tue, 23 Jul 2024 10:17:41 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1721686661;
	bh=VftulDIKeSpZ9piGV6A35uIIaLJflDoaQ4PWfpCKbfA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uoGTp3cM/kosaKQ1A7qsaMlPkayo5ycQi0kWDj7+V6vXpwS+McuInNyf7yPbl9Zng
	 ckQMobO8n7Joq8I+cNyBSrX7nZv+o0Sdjnoo+Y7icsDfbnEAkRSvIsuuVFJ/echsXx
	 g1uc1oSQMUGv14RrM2Id0G1q97lgsfiSJ6jSmykzFZQ6GO20TigBasRpnLcar6NsWs
	 pwXUYoKSatVx7TQf7yPXUAiTZrwQiBvhWc3uyQQSVnSJXj0a6uYo2mrmTRwiabO5C4
	 U/JiFavKzCITSees1551UnDDvh4Mu/P4Z/hLvJvSePP0P0l7ifUPzSIUsH6MtcKmTs
	 eeQdF0pNK7rRQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B669eda840002>; Tue, 23 Jul 2024 10:17:40 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id A757F13ED4A;
	Tue, 23 Jul 2024 10:17:40 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id A32E2280341; Tue, 23 Jul 2024 10:17:40 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: jdelvare@suse.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ukleinek@kernel.org
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v7 2/3] dt-bindings: hwmon: adt7475: Deprecate adi,pwm-active-state
Date: Tue, 23 Jul 2024 10:17:36 +1200
Message-ID: <20240722221737.3407958-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722221737.3407958-1-chris.packham@alliedtelesis.co.nz>
References: <20240722221737.3407958-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Gqbh+V1C c=1 sm=1 tr=0 ts=669eda84 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=4kmOji7k6h8A:10 a=VwQbUJbxAAAA:8 a=A1YWOaG1RMH6ymt1ZYoA:9 a=3ZKOabzyN94A:10 a=TmF2cBh53Nm6oE2QjmZc:22 a=AjGcO6oz07-iQ99wixmX:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Now that we have fan child nodes that can specify flags for the PWM
outputs we no longer need the adi,pwm-active-state property.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---

Notes:
    Changes in v6 & v7:
    - None
    Changes in v5:
    - Add ack from Rob
    Changes in v4:
    - None
    Changes in v3:
    - New

 Documentation/devicetree/bindings/hwmon/adt7475.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/hwmon/adt7475.yaml b/Docum=
entation/devicetree/bindings/hwmon/adt7475.yaml
index df2b5b889e4d..79e8d62fa3b3 100644
--- a/Documentation/devicetree/bindings/hwmon/adt7475.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adt7475.yaml
@@ -45,6 +45,7 @@ properties:
       the pwm uses a logic low output for 100% duty cycle. If set to 1 t=
he pwm
       uses a logic high output for 100% duty cycle.
     $ref: /schemas/types.yaml#/definitions/uint32-array
+    deprecated: true
     minItems: 3
     maxItems: 3
     items:
@@ -121,7 +122,6 @@ examples:
         reg =3D <0x2e>;
         adi,bypass-attenuator-in0 =3D <1>;
         adi,bypass-attenuator-in1 =3D <0>;
-        adi,pwm-active-state =3D <1 0 1>;
         adi,pin10-function =3D "smbalert#";
         adi,pin14-function =3D "tach4";
         #pwm-cells =3D <4>;
--=20
2.45.2


