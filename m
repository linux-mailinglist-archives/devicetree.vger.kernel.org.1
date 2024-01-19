Return-Path: <devicetree+bounces-33201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1E7832871
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 12:12:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50F081C22319
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E814CB3B;
	Fri, 19 Jan 2024 11:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u2VyAxVR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA4F4C62F
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 11:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705662711; cv=none; b=LCGGoVz5uP3H0QttXdgtcRfMWqBhrPwoaea5S98z+jnke/+5QFAYtLgEX2E8df3d03UIeIFj9Mk83oD1iylv2cKeLnxZGo/0b6knn1hzZK2cO5JE3Q3yI2AMSqn652nz7Iz6BDI2Qwi9aCpBuoj7grhGtZ1ogU45rVArZp/LyOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705662711; c=relaxed/simple;
	bh=Icqr6uOgdJLk5QgwR2OUDD6Dy7qQHxU9897G/is5FVE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MwyHNQTGtmE8rdTaCq7EWMn09C3e8EvFsk+sw+nrz6tF2bq/z0pMjkfmb4z9vNT0Q4FF6IUzpyo0+0RIEfZ+M9kzimZ24ZsBcgfgoEs2b3Oy+iSCcLl0OgJwn3l/7jpehwvp/VJKbcKiOY0MEA3W6+QWAJzhnO17jYpHlwNINzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u2VyAxVR; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40e76626170so6921795e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 03:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705662708; x=1706267508; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZKp1YGQpY9dJ29tzPoAgulzyG9Dox8/PAN9avATnHt0=;
        b=u2VyAxVRwbewSrlA6s++uK+BCzm6SfuZPpRWbrNTBCA3pOxaiN8KjbRzwTMTYLWAbS
         P8Mq2nTRMfyOFTaFbJVGrfyjKZXp+xtdBSNSOzuG6kWSC75dpWoJb63Hfk3poXVDfMSD
         PYY68+8hz6CTHuMnCmSRcGXfuN7rXfsGZqTqsqmmxfECFL4lJnsv50c2/JoHjzF57ly7
         L2C2NGDKS9akr6tIDwl15yQDqVAiCwr5R1SQoSsEO6aTFrwGed/AJq+5nH3JoTVsUJvf
         czQa1TfArfRREPlNHm2/E+xes6TyRljlSh2GSd5UsnZn4Dtt+JxLGuN9434T38SHWPgN
         1fuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705662708; x=1706267508;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZKp1YGQpY9dJ29tzPoAgulzyG9Dox8/PAN9avATnHt0=;
        b=X3wb4fQKX1riblrn7zWfAdWZL38hMZe66g+sznKvVCfCcUstGGGdBaw4CGsQDrrD5w
         ib/tL/og5BPekTAjlekFka/QiQw13m3mwtXJGEMk9Zy8Rhhd7Z2y7TFGf4bN57Oqu93+
         xHNx8v+Rp/XW9WiW0JwniQv9oemGF7HoVrfIKzUBM1iPFH/fCtGPArFupK52IVvEtY9Z
         9aaOqwOASG8S/G3ssagfYvRJ/jb9FVA1KOxqyRrxD72bTuBbudmbZW+0LPyP0RPEzzfK
         QthqXNpI+EFciFsuxTtKqxrYU6ZlhXWXe/IrOoJ+65Xk+4FKOvmScadQY1cigSQObE7B
         yhHA==
X-Gm-Message-State: AOJu0YzTGwDn12YpDdcrTjMHOJ8cuCU2Gg3Ly21NAb1hgu9RhNNVnhWA
	zKhfuDjgnJa5En5urtoVFAhwzPGkz/AxGYQZOzxwGV0GYad5JZU2k+eVYgKwiPg=
X-Google-Smtp-Source: AGHT+IGxdlSduKVkeLV1BSigmxYl9LCYBbrtabItH/jVHg6U07jz/qR1KvdKxVuAqPU87tf3HfsGjQ==
X-Received: by 2002:a05:600c:16ca:b0:40e:8d59:d240 with SMTP id l10-20020a05600c16ca00b0040e8d59d240mr1352319wmn.54.1705662707914;
        Fri, 19 Jan 2024 03:11:47 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id o10-20020a5d62ca000000b00337d4ce6ab4sm3341868wrv.20.2024.01.19.03.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 03:11:46 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: andi.shyti@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/8] dt-bindings: clock: google,gs101-clock: add PERIC0 clock management unit
Date: Fri, 19 Jan 2024 11:11:25 +0000
Message-ID: <20240119111132.1290455-2-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt-schema documentation for the Connectivity Peripheral 0 (PERIC0)
clock management unit.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/clock/google,gs101-clock.yaml    | 25 +++++-
 include/dt-bindings/clock/google,gs101.h      | 81 +++++++++++++++++++
 2 files changed, 104 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index ca7fdada3ff2..03698cdecf7a 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -30,14 +30,15 @@ properties:
       - google,gs101-cmu-top
       - google,gs101-cmu-apm
       - google,gs101-cmu-misc
+      - google,gs101-cmu-peric0
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   clock-names:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   "#clock-cells":
     const: 1
@@ -88,6 +89,26 @@ allOf:
             - const: bus
             - const: sss
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-cmu-peric0
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (24.576 MHz)
+            - description: Connectivity Peripheral 0 bus clock (from CMU_TOP)
+            - description: Connectivity Peripheral 0 IP clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+            - const: ip
+
 additionalProperties: false
 
 examples:
diff --git a/include/dt-bindings/clock/google,gs101.h b/include/dt-bindings/clock/google,gs101.h
index 21adec22387c..64e6bdc6359c 100644
--- a/include/dt-bindings/clock/google,gs101.h
+++ b/include/dt-bindings/clock/google,gs101.h
@@ -389,4 +389,85 @@
 #define CLK_GOUT_MISC_WDT_CLUSTER1_PCLK			73
 #define CLK_GOUT_MISC_XIU_D_MISC_ACLK			74
 
+/* CMU_PERIC0 */
+#define CLK_MOUT_PERIC0_BUS_USER			1
+#define CLK_MOUT_PERIC0_I3C_USER			2
+#define CLK_MOUT_PERIC0_USI0_UART_USER			3
+#define CLK_MOUT_PERIC0_USI14_USI_USER			4
+#define CLK_MOUT_PERIC0_USI1_USI_USER			5
+#define CLK_MOUT_PERIC0_USI2_USI_USER			6
+#define CLK_MOUT_PERIC0_USI3_USI_USER			7
+#define CLK_MOUT_PERIC0_USI4_USI_USER			8
+#define CLK_MOUT_PERIC0_USI5_USI_USER			9
+#define CLK_MOUT_PERIC0_USI6_USI_USER			10
+#define CLK_MOUT_PERIC0_USI7_USI_USER			11
+#define CLK_MOUT_PERIC0_USI8_USI_USER			12
+#define CLK_DOUT_PERIC0_I3C				13
+#define CLK_DOUT_PERIC0_USI0_UART			14
+#define CLK_DOUT_PERIC0_USI14_USI			15
+#define CLK_DOUT_PERIC0_USI1_USI			16
+#define CLK_DOUT_PERIC0_USI2_USI			17
+#define CLK_DOUT_PERIC0_USI3_USI			18
+#define CLK_DOUT_PERIC0_USI4_USI			19
+#define CLK_DOUT_PERIC0_USI5_USI			20
+#define CLK_DOUT_PERIC0_USI6_USI			21
+#define CLK_DOUT_PERIC0_USI7_USI			22
+#define CLK_DOUT_PERIC0_USI8_USI			23
+#define CLK_GOUT_PERIC0_IP				24
+#define CLK_GOUT_PERIC0_PERIC0_CMU_PERIC0_PCLK		25
+#define CLK_GOUT_PERIC0_CLK_PERIC0_OSCCLK_CLK		26
+#define CLK_GOUT_PERIC0_D_TZPC_PERIC0_PCLK		27
+#define CLK_GOUT_PERIC0_GPC_PERIC0_PCLK			28
+#define CLK_GOUT_PERIC0_GPIO_PERIC0_PCLK		29
+#define CLK_GOUT_PERIC0_LHM_AXI_P_PERIC0_I_CLK		30
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_0		31
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_1		32
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_10		33
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_11		34
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_12		35
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_13		36
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_14		37
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_15		38
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_2		39
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_3		40
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_4		41
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_5		42
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_6		43
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_7		44
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_8		45
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_9		46
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_0		47
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_1		48
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_10		49
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_11		50
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_12		51
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_13		52
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_14		53
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_15		54
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_2		55
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_3		56
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_4		57
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_5		58
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_6		59
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_7		60
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_8		61
+#define CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_9		62
+#define CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0		63
+#define CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_2		64
+#define CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0		65
+#define CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_2		66
+#define CLK_GOUT_PERIC0_CLK_PERIC0_BUSP_CLK		67
+#define CLK_GOUT_PERIC0_CLK_PERIC0_I3C_CLK		68
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI0_UART_CLK	69
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI14_USI_CLK	70
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI1_USI_CLK		71
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI2_USI_CLK		72
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI3_USI_CLK		73
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI4_USI_CLK		74
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI5_USI_CLK		75
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI6_USI_CLK		76
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI7_USI_CLK		77
+#define CLK_GOUT_PERIC0_CLK_PERIC0_USI8_USI_CLK		78
+#define CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK		79
+
 #endif /* _DT_BINDINGS_CLOCK_GOOGLE_GS101_H */
-- 
2.43.0.429.g432eaa2c6b-goog


