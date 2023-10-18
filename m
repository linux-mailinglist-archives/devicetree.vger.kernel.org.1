Return-Path: <devicetree+bounces-9818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9507C7CE9C1
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 23:08:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C701D1C20E2E
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 21:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90E044292B;
	Wed, 18 Oct 2023 21:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="WGA4Atkg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C81D42920
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 21:08:16 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E70BC1A6
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 14:08:13 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 2B7AA2C0733;
	Thu, 19 Oct 2023 10:08:10 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697663290;
	bh=EuT/gQdJps2mm8D5MVpyIaH0L8xBo60NeGvPLwUUvxk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WGA4Atkg6sWfU2LOIK+AvrFimGjc+J+kDUMSEEH1QB1KnrjC7kRaWqdywS5mnjTnw
	 1ZNxINat7/iGuhweYljCmgoOtXmAWT7zQkTn7PLSyLVNUP0Htg3ye/n7BkUDFUCwMq
	 wB4LNnYbvivHjaxLL95D/ipTNdLAS6ekNHd0qxM+g7fsRAJ4ALkstsqipi8oOaxbxw
	 BWzRZmICBZmfM5YXzbjeo9+b2WV5yfD6JvA+0YS9iuONLnqBhIL6fnHGI5asSND7qX
	 QMpPe6T1eYq/pzbC4rN9kr/P8EPQBKKXZvquT7cyAs9x5361+0wmfkBueGWmGdidnq
	 H8qOf7Yl56FNg==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B653049390001>; Thu, 19 Oct 2023 10:08:09 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 5964B13EE3F;
	Thu, 19 Oct 2023 10:08:09 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 564D7280450; Thu, 19 Oct 2023 10:08:09 +1300 (NZDT)
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
Subject: [PATCH v3 1/2] dt-bindings: i2c: mv64xxx: add reset-gpios property
Date: Thu, 19 Oct 2023 10:08:04 +1300
Message-ID: <20231018210805.1569987-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
References: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=N1qcaoclDu5WUfG3NQYA:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add reset-gpios and reset-duration-us properties to the
marvell,mv64xxx-i2c binding. These can be used to describe hardware
where a common reset GPIO is connected to all downstream devices on and
I2C bus. This reset will be asserted then released before the downstream
devices on the bus are probed.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - Rename reset-delay-us to reset-duration-us to better reflect its
      purpose
    - Add default: for reset-duration-us
    - Add description: for reset-gpios
    Changes in v2:
    - Update commit message
    - Add reset-delay-us property

 .../devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml   | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.ya=
ml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
index 461d1c9ee3f7..ecf5b279cfa4 100644
--- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -70,6 +70,16 @@ properties:
   resets:
     maxItems: 1
=20
+  reset-gpios:
+    description:
+      GPIO pin providing a common reset for all downstream devices. This=
 GPIO
+      will be asserted then released before the downstream devices are p=
robed.
+    maxItems: 1
+
+  reset-duration-us:
+    description: Reset duration in us.
+    default: 1
+
   dmas:
     items:
       - description: RX DMA Channel
--=20
2.42.0


