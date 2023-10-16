Return-Path: <devicetree+bounces-8729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DD97C9D72
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 04:35:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1369B20BC9
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 02:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9DC17D9;
	Mon, 16 Oct 2023 02:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="kUbKuvA4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA2A620
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:35:12 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8480D9
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 19:35:10 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id E99432C0405;
	Mon, 16 Oct 2023 15:35:07 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697423707;
	bh=OB1HFD0haj60ittWb4C4v4aE6Zvqg/jIQB4+5b3lZ8I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kUbKuvA4hJxMPzKxurRcQFeYQKJLAbYdmc5d8iJffeGIvFq4R87Nm+FI93Kp6MDI5
	 HpGUwrZhx0paEVdzcX9HEVTK4a/B+1BaaTCfBh4s+Z7gmgdy+55X0ed7DUqI/5bor/
	 5plNxxpS38BU7M/5iHcWDhGX+ZDAOSVJauLx5gQqqDvHzszG3qvGW/lhBTfv+ppe9O
	 CGQjY2wAH8JfScQt3wd3Sslhwd9cka0ea/LZctHSC0jmQS55taAnc+q0wOihrs0ngL
	 Y0o2l1ELwt3fXrZWvbzRyDmkzqN7M967lmWQb/d0mx5H/YU+OYEKL3/G0SwZ0wel4L
	 RWM+pIrXbE10A==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B652ca15b0001>; Mon, 16 Oct 2023 15:35:07 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id ADADF13EE4B;
	Mon, 16 Oct 2023 15:35:07 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id AB2A0280056; Mon, 16 Oct 2023 15:35:07 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregory.clement@bootlin.com,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v2 1/2] dt-bindings: i2c: mv64xxx: add reset-gpios property
Date: Mon, 16 Oct 2023 15:35:03 +1300
Message-ID: <20231016023504.3976746-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016023504.3976746-1-chris.packham@alliedtelesis.co.nz>
References: <20231016023504.3976746-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=KjBMs4lFH6h5yTpZ_i4A:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add reset-gpios and reset-delay-us properties to the marvell,mv64xxx-i2c
binding. These can be used to describe hardware where a common reset
GPIO is connected to all downstream devices on and I2C bus. This reset
will be released before the downstream devices on the bus are probed.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v2:
    - Update commit message
    - Add reset-delay-us property

 .../devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.ya=
ml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
index 461d1c9ee3f7..7223797b0572 100644
--- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -70,6 +70,12 @@ properties:
   resets:
     maxItems: 1
=20
+  reset-gpios:
+    maxItems: 1
+
+  reset-delay-us:
+    description: Delay in us to wait after reset gpio de-assertion.
+
   dmas:
     items:
       - description: RX DMA Channel
--=20
2.42.0


