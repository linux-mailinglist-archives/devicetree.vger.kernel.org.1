Return-Path: <devicetree+bounces-203634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7DCB221C2
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EF1B18C12DF
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6872E283F;
	Tue, 12 Aug 2025 08:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fwMMmEsi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4242147E5
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754988297; cv=none; b=ksHTWVZnsU8rIaGux64vqRCsEOjVQXcKOo+amNXGWcZbj36l6aD0BXDIhI8jauHV6chWcQEWSFhGXTO5gGh2I/ZVgCuvvKL3niA72qNzzldLV+0WA6O3PCUSRMUuLXzJ5iFhOQo1x6fZQazL1j1C51biYismEDVAig4nxJ7rWdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754988297; c=relaxed/simple;
	bh=yUEBG3s2Iox5Z1YnWor/+RVWc+Tlit/BIkynfNjn8u0=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=E4i25tJ1ccgMgJSp1bVVs8Tu/960T6exzq0qm3rLeE4A63jcLH0GQ9OBmTaKGxUQCRW9u+6MkEeb7oi8JPkepHHTUW84D+kD5QorpVxPKtJQrazrzVoMbdqzf+QUADmS9p336quyLu0vZICIKLSPizVbpgiGOVJvh/hz74VEzg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fwMMmEsi; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-61553a028dfso6861134a12.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754988294; x=1755593094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=UIMOvue31dwc/J4aquxw833RlbJuhQchriCV8fOzVLE=;
        b=fwMMmEsiVc+pLmQmqeEk98Y6Bpb8sbp7eqUEA5l3qqW+nsDnCJZKbXskaAs5/Gb8+E
         mCQnO7LKfyzy9w3nTl355jSCdt8YgrTUivBHa6YRLNYn8qwTslua/Oxf4v3bCTjFsdgM
         hXQV+O/JyWkylrjYLgYp/706HrGhvYx8ICmSEiPHdg85A6Pa8zn3rMe8W5M/nKNe2hWl
         IoVIHhUn9u9EtCPwfkXrfXgf4tB7U276Dvv86fDq1mhyn99wsMDgi99+dpNoOOHcLDnn
         j46gIsVBp9TyEjpU2itO8FSnxZpu7oeCUcQcBOxsqDWuG9g6Y8p866mX4+NMKLl3WD2j
         k/Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754988294; x=1755593094;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UIMOvue31dwc/J4aquxw833RlbJuhQchriCV8fOzVLE=;
        b=QsSNGY3IcUhu7E8HIsTAPn3+NNC/f1kxVtQ58hqrmwb3qqLkQnNqGgjqyn3A/Uj8Ap
         34qGJMVAdDQjkE2H1pqCVsyfD5M9K4zTvenUr1W8bqNfikoB7ykf2BHwOjIuWwU3ACq3
         kcOyLEC+u/BsYcRaZK+Nb/5yHF05YZBO+pIVEdR/wpBsz3Y4Sm0OdzDZt140vCwgzebw
         tyInT3Ueh+iFRaaurCKJg/x8hnEeaObspMtM5gutTH7+G2gUDg0uBvaN+/gMV6VbR+4x
         QhbxUJh8Cu3HEtR9sod97SkeOJT5k5CVS58zH7SrWShEK/LP7o24Dck7FawhDkFOvkGC
         BSuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYF3bwIUe/iOlzo55FkygZIFcHRqsvdq59koDPNbe3ygpj0rb6Nc+e7kRPVsp8969gUqGdqI61ZTvm@vger.kernel.org
X-Gm-Message-State: AOJu0YygyXFEd7ehYyEeZlvo23z4Gf/6bhrtfhCgUDi71/skaBFbtxMO
	9MydQb8qY4oHJF9HG87QJYmkRj4euq91gT86VwTBDYMRw3tjwEZ7AUIKalF9OBM5HDFs26fdDg5
	qexcijcc=
X-Gm-Gg: ASbGncuDQzUymTe3JqO2XSi7x+JL0Q6qd9OVGiYUwNcubHYdSTh1zcq7h/ylrJNIs+b
	CmFP3Qb72W4ltftS2/MJhfhn/sM7pfNAHx5bw8z6DPJU5e2YaWhWVaJgvx0GKf051bma5ApMtEU
	4ufK1IoBVcHYSF5DCH7KATfvXSj96D3v8u8BkU1+BgAvAT6/ZdxAYrcLt1lH1CcX/UnIOMTKt3c
	VUmb4AD8flwah6IT86IfMEqgURagtR/vep3kjaLRic/7dwvFTK/oDQZ4LOjVHG6+JXG2JwAEdjo
	UT9YVQelQkzTaTq3V1wnBeTFYkznSHRkTgA4VSOqWuv9UGcl/asDmjhx1ugLmOqPJ76Xzf1/c37
	setyh9et156i2n9zfiXObJUfMgJcc884eyvsMW1aUSyGRcU8E0L2AsPEDr79tefNjiA==
X-Google-Smtp-Source: AGHT+IHGS28WyNhkMEqCYl++k5tXKsI+SYF4vISQjhRE5gJkG3IUVoDSvuT7pIyGxqFMWkpcex+/TQ==
X-Received: by 2002:a17:907:3f94:b0:af9:14cf:d808 with SMTP id a640c23a62f3a-af9c654272amr1559960166b.55.1754988293947;
        Tue, 12 Aug 2025 01:44:53 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a078afbsm2158282666b.4.2025.08.12.01.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 01:44:53 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	andrea.porta@suse.com,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH] dt-bindings: pinctrl: rp1: Describe groups for RP1 pin controller
Date: Tue, 12 Aug 2025 10:46:39 +0200
Message-ID: <20250812084639.13442-1-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DT binding for RP1 pin controller currently lacks the group
definitions.

Add groups enumeration to the schema.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../pinctrl/raspberrypi,rp1-gpio.yaml         | 35 ++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml b/Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
index eec9a9b58542..af6fbbd4feea 100644
--- a/Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
@@ -72,10 +72,36 @@ $defs:
       pins:
         description:
           List of gpio pins affected by the properties specified in this
-          subnode.
+          subnode (either this or "groups" must be specified).
         items:
           pattern: '^gpio([0-9]|[1-4][0-9]|5[0-3])$'
 
+      groups:
+        description:
+          List of groups affected by the properties specified in this
+          subnode (either this or "pins" must be specified).
+        items:
+          anyOf:
+            - pattern: '^gpio([0-9]|[1-4][0-9]|5[0-3])$'
+            - enum: [ uart0, uart0_ctrl, uart1, uart1_ctrl, uart2, uart2_ctrl,
+                      uart3, uart3_ctrl, uart4, uart4_ctrl, uart5_0,
+                      uart5_0_ctrl, uart5_1, uart5_1_ctrl, uart5_2,
+                      uart5_2_ctrl, uart5_3,
+                      sd0, sd1,
+                      i2s0, i2s0_dual, i2s0_quad, i2s1, i2s1_dual, i2s1_quad,
+                      i2s2_0, i2s2_0_dual, i2s2_1, i2s2_1_dual,
+                      i2c4_0, i2c4_1, i2c4_2, i2c4_3, i2c6_0, i2c6_1, i2c5_0,
+                      i2c5_1, i2c5_2, i2c5_3, i2c0_0, i2c0_1, i2c1_0, i2c1_1,
+                      i2c2_0, i2c2_1, i2c3_0, i2c3_1, i2c3_2,
+                      dpi_16bit, dpi_16bit_cpadhi, dpi_16bit_pad666,
+                      dpi_18bit, dpi_18bit_cpadhi, dpi_24bit,
+                      spi0, spi0_quad, spi1, spi2, spi3, spi4, spi5, spi6_0,
+                      spi6_1, spi7_0, spi7_1, spi8_0, spi8_1,
+                      aaud_0, aaud_1, aaud_2, aaud_3, aaud_4,
+                      vbus0_0, vbus0_1, vbus1, vbus2, vbus3,
+                      mic_0, mic_1, mic_2, mic_3,
+                      ir ]
+
       function:
         enum: [ alt0, alt1, alt2, alt3, alt4, gpio, alt6, alt7, alt8, none,
                 aaud, dcd0, dpi, dsi0_te_ext, dsi1_te_ext, dsr0, dtr0, gpclk0,
@@ -103,6 +129,13 @@ $defs:
       drive-strength:
         enum: [ 2, 4, 8, 12 ]
 
+    required:
+      - function
+
+    oneOf:
+      - required: [ groups ]
+      - required: [ pins ]
+
     additionalProperties: false
 
 allOf:
-- 
2.35.3


