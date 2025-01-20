Return-Path: <devicetree+bounces-139618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 639C6A165FB
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 05:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AC64168004
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 04:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93BC17A58F;
	Mon, 20 Jan 2025 04:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="hUzAcEpG"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFD83A1DB
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 04:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737345751; cv=none; b=CncMs0frnHMCuFu4HhQcowTE3SaXNpOl0ILaoTwilZoUnNmbbfvX8EorhT1+FEEKMo8UNaajcW9RjA50enfU+YOU9ekRkycLrnYLl3grSV/XL+JoRdIcrWJbK2hq4qg3SRJLdziDNQ6mX+pbHVLwxoJBnExYi5SALZLCZJfwHWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737345751; c=relaxed/simple;
	bh=/DdNYHrk7eDMYeS5irDsTjbxag8qguwsxKfZkpeQxEI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lj7s3YLSsNAYbQHe8TwY8YGxirEWgSgAi7lAlCCeLz55ZaxXYbNULfPKyLe7s/j7tljvdDt9zX/5Kgs27kKpo/YAvYfA6bK+DQr0E8x9Z1XgVCIQDhwhcTQqBmOHfuB/cCsIiiz8J7Hhzmv9TMsooefKGi2d6xq5bwY45aEQK3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=hUzAcEpG; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id B30B12C097B;
	Mon, 20 Jan 2025 17:02:25 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1737345745;
	bh=MYJ7NNFd3rq+paglzhf5w0P5fdAE/WYhCGuKvRBhz9M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hUzAcEpG49nz7+xidq4DaiWHQDSlCGEOIv4jB6yxS3ubx/YhsfAfqmb53PIQJG+9j
	 NkeRuG5KqVrbD2s3+cMPxDY5h4ZpfNpLDEy06PtZHC+hwqs6jwAaaVymk5caxDK3Z5
	 JUqggPhGTRa6RAXlyia9kbX3o8Asu3bBaxX9ig4wznvI5ygJLlJNNbGrknt3R8X6po
	 3qvxnCIAzsPnrqM11HbnTyFPKj2gyHZ/ENasfkaUjGMDAsCDYtLUKNUncl7o7UCG2e
	 NZbExgDT51qpzZtOFwI+228qf1Zf41dCPPaKsfEHTJuiH7vh9L75MdNAo8CjDdW8kW
	 Nx6muU4+A5lZw==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B678dcac80000>; Mon, 20 Jan 2025 17:02:16 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 8A31113EE8E;
	Mon, 20 Jan 2025 17:02:16 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 853C82801C4; Mon, 20 Jan 2025 17:02:16 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	tsbogend@alpha.franken.de,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	sander@svanheule.net,
	markus.stockhausen@gmx.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v4 2/4] dt-bindings: mfd: Add MDIO interface to rtl9301-switch
Date: Mon, 20 Jan 2025 17:02:12 +1300
Message-ID: <20250120040214.2538839-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250120040214.2538839-1-chris.packham@alliedtelesis.co.nz>
References: <20250120040214.2538839-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BNQQr0QG c=1 sm=1 tr=0 ts=678dcac8 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=VdSt8ZQiCzkA:10 a=ObRBCOWsh-3r9k4CE_AA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

The MDIO controller is part of the switch on the RTL9300 family of
devices. Add a $ref to the mfd binding for these devices.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v4:
    - There is a single MDIO controller that has MDIO buses as children
    Changes in v3:
    - None
    Changes in v2:
    - None

 .../bindings/mfd/realtek,rtl9301-switch.yaml  | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch=
.yaml b/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch.yaml
index f053303ab1e6..c19d2c209434 100644
--- a/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch.yaml
+++ b/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch.yaml
@@ -28,6 +28,9 @@ properties:
   reg:
     maxItems: 1
=20
+  mdio-controller:
+    $ref: /schemas/net/realtek,rtl9301-mdio.yaml#
+
   '#address-cells':
     const: 1
=20
@@ -110,5 +113,26 @@ examples:
           };
         };
       };
+
+      mdio-controller {
+        compatible =3D "realtek,rtl9301-mdio";
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        mdio-bus@0 {
+          reg =3D <0>;
+          #address-cells =3D <1>;
+          #size-cells =3D <0>;
+
+          ethernet-phy@0 {
+            reg =3D <0>;
+            realtek,port =3D <1>;
+          };
+          ethernet-phy@1 {
+            reg =3D <1>;
+            realtek,port =3D <0>;
+          };
+        };
+      };
     };
=20
--=20
2.47.1


