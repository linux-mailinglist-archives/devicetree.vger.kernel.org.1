Return-Path: <devicetree+bounces-6330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D4A7BAF99
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 02:33:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3FFF61C20869
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 00:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 723C210E7;
	Fri,  6 Oct 2023 00:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="flpVkiNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9A9629
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 00:33:32 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 094C3D8
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 17:33:30 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id A32C72C0596;
	Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1696552408;
	bh=z5Ulpz8hd9vRm5+9CQamJ7SN/jCUcsm99YX0+edYC84=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=flpVkiNZ2Mbuwhghchke+/kIOzBtei53ZV196V1GjIMuz+Brr+eK/we8msd10s/sB
	 QEGujQTkOxI/0baKZaukM1XkT047fXn9Aautey56HH8EtlXaVoApT1KzOyosvNq1LG
	 iFljC59C8fme9o54MXLY9warFsGSZ7LoZy/LMyF0jA/KrLMHyDCdTBNBlup0weel5r
	 RfB1DthM8L6Ibwgkm3uVDJGZJ3bCbdljjtP7pDMXQKSu89GD2nVNtjVVm/G/9R27aG
	 qoeieHh4qQV0jZDTULljMR/bLFCT0yOCsrlAOUh9lUDud0u/Gh0FQCpD15LKW17QFG
	 kUMgYHrVUHXnQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B651f55d80001>; Fri, 06 Oct 2023 13:33:28 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 586D213EE4D;
	Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 560A92804C0; Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregory.clement@bootlin.com,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	pierre.gondois@arm.com
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v2 1/3] dt-bindings: i2c: mv64xxx: update bindings for unstuck register
Date: Fri,  6 Oct 2023 13:33:19 +1300
Message-ID: <20231006003321.2100016-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
References: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=Vf2Jw2h9 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=XYAwZIGsAAAA:8 a=b5Pq3k1ZBCuUTZ-Yr4IA:9 a=E8ToXWR_bxluHZ7gmE-Z:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some newer Marvell SoCs support an "unstuck" function for I2C bus
recovery. This is an alternative to the generic GPIO based recovery that
the older SoCs use. The unstuck register falls outside of the usual
address block for the I2C controller so requires an additional cell in
the register property. This is optional and does not need to be
supplied.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Notes:
    Changes in v2:
    - Collect ack from Conor

 .../devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml         | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.ya=
ml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
index 984fc1ed3ec6..461d1c9ee3f7 100644
--- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -45,7 +45,10 @@ properties:
       auto-detects this and sets it appropriately.
=20
   reg:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: I2C controller registers
+      - description: I2C unstuck register
=20
   interrupts:
     maxItems: 1
--=20
2.42.0


