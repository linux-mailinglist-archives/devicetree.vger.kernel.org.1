Return-Path: <devicetree+bounces-57882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E5B89F21D
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB2021C2356B
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5AA15CD64;
	Wed, 10 Apr 2024 12:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="P0Q3SB/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D378F15B159
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712752034; cv=none; b=aR1x/1kpxf68t3KeGbUYE+wH3f0VDprxrIS1JWUJARwDUg9lEOmopIb1Jj7HW8/GcdF9wS81x628aW6L8J8pkPCE3krInLMguXpnMvj39eUhYljW9ecnMiOzCgI5AFi7kV4iQOB6MKFue2918nyKlU3+YpOJGi13qmWzoJ3s4r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712752034; c=relaxed/simple;
	bh=kt0T6oAjZ1lqWaIaUu8Sr09sefIFHdT0FJpsK8q8nM8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pvEdxxI8GJtyKjQCO1pS0wv+3V8codd2Of2sP5zv4DpVeJ4QBm4CqfqVfXfRUa1fWSZKa12jD+CMQ3g9pvFi8os9zuAiKWomzyxr+RsdjKSLncwiFSsaeZhCp3fxCPZGzRJEHir7qyYlUeGhpMteTuqoSrpa9TFHY6bjiuacmBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=P0Q3SB/7; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-516dd07d373so3159669e87.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712752031; x=1713356831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TIDge7spa3NjlHFsGDVwHhao1cU+1T3vrFbJtXNX3p4=;
        b=P0Q3SB/74qhrxcW5rxZ2s59AdCM4X1hKKYU7Ebr2pM7wjPrrUh28mifYW468i7n/R+
         DoWF2+x+9D8sAmEix2SMFbAex+kGgcDoTW+W0Kiu+9WjqwYGgZ83fTDnBrHWDKvvTrAE
         3mdVA0GOxXrS7BinW4lCR/VAEV7eF1DAPTHnpW8VItdiKVHU70lx1iTyq5JedQDjiBUu
         Xt7fpmaS8QLI5odFyIy/+qqpo2DqP3Aee4FFPTEh4/niNAjqa7BFHLtwDPXCKDTtRdwJ
         VUuPebgVK094VSEsHnwCWWXHKDypcv3damhTNl2EkZ29lAMIYVf71pOGVBnpDJFWanfb
         7AMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712752031; x=1713356831;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TIDge7spa3NjlHFsGDVwHhao1cU+1T3vrFbJtXNX3p4=;
        b=kxhMJNGuSIISg6FoYFyHIwO5eQGpAGufA5/Fk6tqJGFLpUWuRdgi4vFQIpq3x5le+f
         oqLPOyaMCdOskDBKEhoEcUo7Cr81hCHtiQfkIUUdLuzvSszkui016TuNtTA2TyR7ICxx
         16qw08W45wMlCanSwC+wHp19LkaZKoSFPFG3IvojxCGv8KuAH3h67wz8AG18TrpB1GuF
         gva8glpXUt1y3tf1olFmCYuh2YG+um75Jj4s5QgtUY6Ppk26yLdwWHMsF+7+CuVTjJsV
         7hNxcl/mVmBxUMeOCx8qt2T0tgNr6/e0y8XC+qyioXmRwse1ScsBPzwN7Erqo0rlO6dx
         4VPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlk8dP68/A0h8/TsOFHRQXL+HvCB5pKEscDLckiDkVRYTlWXqVT1wG9g2bW+l8ba1b1K2pZ/mFCZ+KLBk2cYyEeMHBwxMXvxOyUQ==
X-Gm-Message-State: AOJu0YwQdQnUuUOI68egzoHNplAP1DyVDpg4ZMazwqQTAibWCctSVZvA
	uB9V9tS6n/yAWi4T+lpsnovSlWiAhEOHOrDAk016BHEIHVIaxHRtjASxbVMHFto=
X-Google-Smtp-Source: AGHT+IG7C1rxroDAU6W0bovwLXxkh24mVrENeNOi1KyVg7KJzkIr82Il2WrkW+2XbX41JWaolFOEXg==
X-Received: by 2002:a05:6512:3d01:b0:516:d1bd:7743 with SMTP id d1-20020a0565123d0100b00516d1bd7743mr1970235lfv.64.1712752030947;
        Wed, 10 Apr 2024 05:27:10 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c3b0200b004171f151a5csm1679446wms.16.2024.04.10.05.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 05:27:10 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 1/9] dt-bindings: clock: r9a07g043-cpg: Add power domain IDs
Date: Wed, 10 Apr 2024 15:26:49 +0300
Message-Id: <20240410122657.2051132-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add power domain IDs for RZ/G2UL (R9A07G043) SoC.

Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- added "RZ/G2UL Only" comments to some defines
- added RZ/Five specific defines

 include/dt-bindings/clock/r9a07g043-cpg.h | 52 +++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/include/dt-bindings/clock/r9a07g043-cpg.h b/include/dt-bindings/clock/r9a07g043-cpg.h
index a64139fec815..131993343777 100644
--- a/include/dt-bindings/clock/r9a07g043-cpg.h
+++ b/include/dt-bindings/clock/r9a07g043-cpg.h
@@ -200,5 +200,57 @@
 #define R9A07G043_AX45MP_CORE0_RESETN	78	/* RZ/Five Only */
 #define R9A07G043_IAX45_RESETN		79	/* RZ/Five Only */
 
+/* Power domain IDs. */
+#define R9A07G043_PD_ALWAYS_ON		0
+#define R9A07G043_PD_GIC		1	/* RZ/G2UL Only */
+#define R9A07G043_PD_IA55		2	/* RZ/G2UL Only */
+#define R9A07G043_PD_MHU		3	/* RZ/G2UL Only */
+#define R9A07G043_PD_CORESIGHT		4	/* RZ/G2UL Only */
+#define R9A07G043_PD_SYC		5	/* RZ/G2UL Only */
+#define R9A07G043_PD_DMAC		6
+#define R9A07G043_PD_GTM0		7
+#define R9A07G043_PD_GTM1		8
+#define R9A07G043_PD_GTM2		9
+#define R9A07G043_PD_MTU		10
+#define R9A07G043_PD_POE3		11
+#define R9A07G043_PD_WDT0		12
+#define R9A07G043_PD_SPI		13
+#define R9A07G043_PD_SDHI0		14
+#define R9A07G043_PD_SDHI1		15
+#define R9A07G043_PD_ISU		16	/* RZ/G2UL Only */
+#define R9A07G043_PD_CRU		17	/* RZ/G2UL Only */
+#define R9A07G043_PD_LCDC		18	/* RZ/G2UL Only */
+#define R9A07G043_PD_SSI0		19
+#define R9A07G043_PD_SSI1		20
+#define R9A07G043_PD_SSI2		21
+#define R9A07G043_PD_SSI3		22
+#define R9A07G043_PD_SRC		23
+#define R9A07G043_PD_USB0		24
+#define R9A07G043_PD_USB1		25
+#define R9A07G043_PD_USB_PHY		26
+#define R9A07G043_PD_ETHER0		27
+#define R9A07G043_PD_ETHER1		28
+#define R9A07G043_PD_I2C0		29
+#define R9A07G043_PD_I2C1		30
+#define R9A07G043_PD_I2C2		31
+#define R9A07G043_PD_I2C3		32
+#define R9A07G043_PD_SCIF0		33
+#define R9A07G043_PD_SCIF1		34
+#define R9A07G043_PD_SCIF2		35
+#define R9A07G043_PD_SCIF3		36
+#define R9A07G043_PD_SCIF4		37
+#define R9A07G043_PD_SCI0		38
+#define R9A07G043_PD_SCI1		39
+#define R9A07G043_PD_IRDA		40
+#define R9A07G043_PD_RSPI0		41
+#define R9A07G043_PD_RSPI1		42
+#define R9A07G043_PD_RSPI2		43
+#define R9A07G043_PD_CANFD		44
+#define R9A07G043_PD_ADC		45
+#define R9A07G043_PD_TSU		46
+#define R9A07G043_PD_PLIC		47	/* RZ/Five Only */
+#define R9A07G043_PD_IAX45		48	/* RZ/Five Only */
+#define R9A07G043_PD_NCEPLDM		49	/* RZ/Five Only */
+#define R9A07G043_PD_NCEPLMT		50	/* RZ/Five Only */
 
 #endif /* __DT_BINDINGS_CLOCK_R9A07G043_CPG_H__ */
-- 
2.39.2


