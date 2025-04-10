Return-Path: <devicetree+bounces-165441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF7EA845CA
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:11:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69F074E691D
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D3728D83F;
	Thu, 10 Apr 2025 14:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="agexsTip"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E56328A407
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 14:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744294012; cv=none; b=biFmU+IwB9gCV21aPU7UBmYr20YHUXSXn3KXhCe5XTSvY1BSt/MTYsSpzeaElqgkynErEv/0yJSTXDM72+t/7Qq4zs0V/kJ8H6NJufY5VZSjInes5eJSlcz/e/bbXOBd06oC2opGxIQIG2eFP2xhlnM/SEiWWqgRew/RBz3sbsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744294012; c=relaxed/simple;
	bh=sraY8C51lDPyUtT6kVHzQt9XX9IKRjjL+kUiJoWnVHo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bx6dNYGGC85k1Qu2aGGnFRNJ/APZ5ggjHbWtN2G0BP+rK1SNfDpO9HKZk5Nem36RS91XnVrdZYiKG31MLEV1+qWlxtxYnqVSHHskdkqnHIqP0PtEeDOLwrl/IMiYC70WXpeqzvAlf6gTyRQZyVuvEDmyX4ux5YAZyS0CNxWM3CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=agexsTip; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so649404f8f.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 07:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744294007; x=1744898807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6YjKhR0MTfe8cf8n+c1jOezPrRQEkLilsA9sYTi5zT8=;
        b=agexsTipDTR3CHS268vB2K6GbrTRNzKLMXkGYkvrqQwBbZUEbDzNPw0iS71G3qTN69
         EnvT8CfpA5llJRe59G7ARAoLUUOANTXca7XzmFNG8/iHxBGI6MGM5zWdt1lgN0GKM0xf
         OifZJzq9AMrYZRm9w7GkKzeDM8xG2kcZnLQ///OeHOFxO/RVL8JHmPhLYDSpoFUG6tyR
         2RdSpvA1MPuz2CoFyNdLhcDC08ZbiApftvr/q+w+W9VGVcx7jDHxVEkewdLgLRdGnzFr
         8Hq6bUAy5wi6pvbpstvu8mk1HcagGZ0YxlgISNki7kC18t7HdGiSd+rTXFQlHhnShC5d
         hGEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744294007; x=1744898807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6YjKhR0MTfe8cf8n+c1jOezPrRQEkLilsA9sYTi5zT8=;
        b=pNwqIXE4ux8Dm8fInmwZxMOBADXm6cGOVszHoeaFJz52ensu8CzIB+TEtvJ0GHF5ch
         ARrORD/hXp7e9j/B6NlDxaMgjSirgGIu+xnicNnp6eOVzVADEiiSefkFBeGT8qvybL7C
         nxMQofcnwtLUypdqZxrboRorjN0oZffILzJo8C+IOwW4mQI6WzMpn9/zSOfoG1HqykXZ
         vrG4U5fTx0kzj7+Sbjrm47AMSFSbaa0SuxzTRK+uD/cUu4BDe0uc1unqZqV2kSNPSAo7
         DvypP+pGTcvt1vH4aBotCYlTM3cqYg+wZWvWAh9GvhlfOV0xaHJkpajQDhoB9XbP6bVT
         KeTw==
X-Forwarded-Encrypted: i=1; AJvYcCVwpNaEw1HihCi2ZyzkB+pgOtjerfjsC+Q4Gbjr1HVR69LTRitakl5Nl9hn7vKM0giIzgLfnLI+X0gL@vger.kernel.org
X-Gm-Message-State: AOJu0YyYtj2Kf3L+X8qfcMF7nP6uy8KPP8/igBMm1g1857mBnDm87qA7
	+N630AgbfwgDpbOosQrdT9/EZRop4VtlTIxKh+1Yl8BlSyS5KoZe1QmbntQfuf0=
X-Gm-Gg: ASbGncuRZSyHla20UzKN1DaI2QZWjobLlcCCVw1nhhlZhk13xShvRh9ylJA9BMBk6FG
	RAL3qlCxnKWNAJXgeJbnZow1EuKLrUWRKQYhl1X727RKQxR8TJIrWysi4X1oB9B06xTXE9hqLaf
	RIGkPIMbrP5a7xq5fJ4LJHD4DVElaY6fy5PC0BDrf24QjUthZCDwaZZUSbbX2ldItS9VoK832u+
	NmSr5EF4djHjJKN2jhcveSz1ZyTVRrh6HMzaiGzqxr+OjpIpcXTusNoAKp9kABx89Z8jZflqVeQ
	CMtJLkKZgi8zffTjRFcHfxkVza7Qg3ZjFXkIuRkFyDWHnezjhEXSDek8Ilzo6gwGW2S5IQ==
X-Google-Smtp-Source: AGHT+IG7lGB5TBWky7nS5fmmzrkf6vGPxicFPJwW5oR63VtDRrWKYg1GDS949nBAF1dNyHRxWoRAKA==
X-Received: by 2002:a5d:588b:0:b0:391:4889:5045 with SMTP id ffacd0b85a97d-39d8fddf975mr2191745f8f.36.1744294007408;
        Thu, 10 Apr 2025 07:06:47 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8937f0d8sm4806913f8f.40.2025.04.10.07.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 07:06:46 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 6/7] dt-bindings: clock: rzg2l-cpg: Drop power domain IDs
Date: Thu, 10 Apr 2025 17:06:27 +0300
Message-ID: <20250410140628.4124896-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Since the configuration order between the individual MSTOP and CLKON bits
cannot be preserved with the power domain abstraction, drop the power
domain IDs. The corresponding code has also been removed. Currently, there
are no device tree users for these IDs.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 include/dt-bindings/clock/r9a07g043-cpg.h | 53 -----------------
 include/dt-bindings/clock/r9a07g044-cpg.h | 58 ------------------
 include/dt-bindings/clock/r9a07g054-cpg.h | 58 ------------------
 include/dt-bindings/clock/r9a08g045-cpg.h | 71 -----------------------
 4 files changed, 240 deletions(-)

diff --git a/include/dt-bindings/clock/r9a07g043-cpg.h b/include/dt-bindings/clock/r9a07g043-cpg.h
index 131993343777..e1f65f1928cf 100644
--- a/include/dt-bindings/clock/r9a07g043-cpg.h
+++ b/include/dt-bindings/clock/r9a07g043-cpg.h
@@ -200,57 +200,4 @@
 #define R9A07G043_AX45MP_CORE0_RESETN	78	/* RZ/Five Only */
 #define R9A07G043_IAX45_RESETN		79	/* RZ/Five Only */
 
-/* Power domain IDs. */
-#define R9A07G043_PD_ALWAYS_ON		0
-#define R9A07G043_PD_GIC		1	/* RZ/G2UL Only */
-#define R9A07G043_PD_IA55		2	/* RZ/G2UL Only */
-#define R9A07G043_PD_MHU		3	/* RZ/G2UL Only */
-#define R9A07G043_PD_CORESIGHT		4	/* RZ/G2UL Only */
-#define R9A07G043_PD_SYC		5	/* RZ/G2UL Only */
-#define R9A07G043_PD_DMAC		6
-#define R9A07G043_PD_GTM0		7
-#define R9A07G043_PD_GTM1		8
-#define R9A07G043_PD_GTM2		9
-#define R9A07G043_PD_MTU		10
-#define R9A07G043_PD_POE3		11
-#define R9A07G043_PD_WDT0		12
-#define R9A07G043_PD_SPI		13
-#define R9A07G043_PD_SDHI0		14
-#define R9A07G043_PD_SDHI1		15
-#define R9A07G043_PD_ISU		16	/* RZ/G2UL Only */
-#define R9A07G043_PD_CRU		17	/* RZ/G2UL Only */
-#define R9A07G043_PD_LCDC		18	/* RZ/G2UL Only */
-#define R9A07G043_PD_SSI0		19
-#define R9A07G043_PD_SSI1		20
-#define R9A07G043_PD_SSI2		21
-#define R9A07G043_PD_SSI3		22
-#define R9A07G043_PD_SRC		23
-#define R9A07G043_PD_USB0		24
-#define R9A07G043_PD_USB1		25
-#define R9A07G043_PD_USB_PHY		26
-#define R9A07G043_PD_ETHER0		27
-#define R9A07G043_PD_ETHER1		28
-#define R9A07G043_PD_I2C0		29
-#define R9A07G043_PD_I2C1		30
-#define R9A07G043_PD_I2C2		31
-#define R9A07G043_PD_I2C3		32
-#define R9A07G043_PD_SCIF0		33
-#define R9A07G043_PD_SCIF1		34
-#define R9A07G043_PD_SCIF2		35
-#define R9A07G043_PD_SCIF3		36
-#define R9A07G043_PD_SCIF4		37
-#define R9A07G043_PD_SCI0		38
-#define R9A07G043_PD_SCI1		39
-#define R9A07G043_PD_IRDA		40
-#define R9A07G043_PD_RSPI0		41
-#define R9A07G043_PD_RSPI1		42
-#define R9A07G043_PD_RSPI2		43
-#define R9A07G043_PD_CANFD		44
-#define R9A07G043_PD_ADC		45
-#define R9A07G043_PD_TSU		46
-#define R9A07G043_PD_PLIC		47	/* RZ/Five Only */
-#define R9A07G043_PD_IAX45		48	/* RZ/Five Only */
-#define R9A07G043_PD_NCEPLDM		49	/* RZ/Five Only */
-#define R9A07G043_PD_NCEPLMT		50	/* RZ/Five Only */
-
 #endif /* __DT_BINDINGS_CLOCK_R9A07G043_CPG_H__ */
diff --git a/include/dt-bindings/clock/r9a07g044-cpg.h b/include/dt-bindings/clock/r9a07g044-cpg.h
index e209f96f92b7..0bb17ff1a01a 100644
--- a/include/dt-bindings/clock/r9a07g044-cpg.h
+++ b/include/dt-bindings/clock/r9a07g044-cpg.h
@@ -217,62 +217,4 @@
 #define R9A07G044_ADC_ADRST_N		82
 #define R9A07G044_TSU_PRESETN		83
 
-/* Power domain IDs. */
-#define R9A07G044_PD_ALWAYS_ON		0
-#define R9A07G044_PD_GIC		1
-#define R9A07G044_PD_IA55		2
-#define R9A07G044_PD_MHU		3
-#define R9A07G044_PD_CORESIGHT		4
-#define R9A07G044_PD_SYC		5
-#define R9A07G044_PD_DMAC		6
-#define R9A07G044_PD_GTM0		7
-#define R9A07G044_PD_GTM1		8
-#define R9A07G044_PD_GTM2		9
-#define R9A07G044_PD_MTU		10
-#define R9A07G044_PD_POE3		11
-#define R9A07G044_PD_GPT		12
-#define R9A07G044_PD_POEGA		13
-#define R9A07G044_PD_POEGB		14
-#define R9A07G044_PD_POEGC		15
-#define R9A07G044_PD_POEGD		16
-#define R9A07G044_PD_WDT0		17
-#define R9A07G044_PD_WDT1		18
-#define R9A07G044_PD_SPI		19
-#define R9A07G044_PD_SDHI0		20
-#define R9A07G044_PD_SDHI1		21
-#define R9A07G044_PD_3DGE		22
-#define R9A07G044_PD_ISU		23
-#define R9A07G044_PD_VCPL4		24
-#define R9A07G044_PD_CRU		25
-#define R9A07G044_PD_MIPI_DSI		26
-#define R9A07G044_PD_LCDC		27
-#define R9A07G044_PD_SSI0		28
-#define R9A07G044_PD_SSI1		29
-#define R9A07G044_PD_SSI2		30
-#define R9A07G044_PD_SSI3		31
-#define R9A07G044_PD_SRC		32
-#define R9A07G044_PD_USB0		33
-#define R9A07G044_PD_USB1		34
-#define R9A07G044_PD_USB_PHY		35
-#define R9A07G044_PD_ETHER0		36
-#define R9A07G044_PD_ETHER1		37
-#define R9A07G044_PD_I2C0		38
-#define R9A07G044_PD_I2C1		39
-#define R9A07G044_PD_I2C2		40
-#define R9A07G044_PD_I2C3		41
-#define R9A07G044_PD_SCIF0		42
-#define R9A07G044_PD_SCIF1		43
-#define R9A07G044_PD_SCIF2		44
-#define R9A07G044_PD_SCIF3		45
-#define R9A07G044_PD_SCIF4		46
-#define R9A07G044_PD_SCI0		47
-#define R9A07G044_PD_SCI1		48
-#define R9A07G044_PD_IRDA		49
-#define R9A07G044_PD_RSPI0		50
-#define R9A07G044_PD_RSPI1		51
-#define R9A07G044_PD_RSPI2		52
-#define R9A07G044_PD_CANFD		53
-#define R9A07G044_PD_ADC		54
-#define R9A07G044_PD_TSU		55
-
 #endif /* __DT_BINDINGS_CLOCK_R9A07G044_CPG_H__ */
diff --git a/include/dt-bindings/clock/r9a07g054-cpg.h b/include/dt-bindings/clock/r9a07g054-cpg.h
index 2c99f89397c4..43f4dbda872c 100644
--- a/include/dt-bindings/clock/r9a07g054-cpg.h
+++ b/include/dt-bindings/clock/r9a07g054-cpg.h
@@ -226,62 +226,4 @@
 #define R9A07G054_TSU_PRESETN		83
 #define R9A07G054_STPAI_ARESETN		84
 
-/* Power domain IDs. */
-#define R9A07G054_PD_ALWAYS_ON		0
-#define R9A07G054_PD_GIC		1
-#define R9A07G054_PD_IA55		2
-#define R9A07G054_PD_MHU		3
-#define R9A07G054_PD_CORESIGHT		4
-#define R9A07G054_PD_SYC		5
-#define R9A07G054_PD_DMAC		6
-#define R9A07G054_PD_GTM0		7
-#define R9A07G054_PD_GTM1		8
-#define R9A07G054_PD_GTM2		9
-#define R9A07G054_PD_MTU		10
-#define R9A07G054_PD_POE3		11
-#define R9A07G054_PD_GPT		12
-#define R9A07G054_PD_POEGA		13
-#define R9A07G054_PD_POEGB		14
-#define R9A07G054_PD_POEGC		15
-#define R9A07G054_PD_POEGD		16
-#define R9A07G054_PD_WDT0		17
-#define R9A07G054_PD_WDT1		18
-#define R9A07G054_PD_SPI		19
-#define R9A07G054_PD_SDHI0		20
-#define R9A07G054_PD_SDHI1		21
-#define R9A07G054_PD_3DGE		22
-#define R9A07G054_PD_ISU		23
-#define R9A07G054_PD_VCPL4		24
-#define R9A07G054_PD_CRU		25
-#define R9A07G054_PD_MIPI_DSI		26
-#define R9A07G054_PD_LCDC		27
-#define R9A07G054_PD_SSI0		28
-#define R9A07G054_PD_SSI1		29
-#define R9A07G054_PD_SSI2		30
-#define R9A07G054_PD_SSI3		31
-#define R9A07G054_PD_SRC		32
-#define R9A07G054_PD_USB0		33
-#define R9A07G054_PD_USB1		34
-#define R9A07G054_PD_USB_PHY		35
-#define R9A07G054_PD_ETHER0		36
-#define R9A07G054_PD_ETHER1		37
-#define R9A07G054_PD_I2C0		38
-#define R9A07G054_PD_I2C1		39
-#define R9A07G054_PD_I2C2		40
-#define R9A07G054_PD_I2C3		41
-#define R9A07G054_PD_SCIF0		42
-#define R9A07G054_PD_SCIF1		43
-#define R9A07G054_PD_SCIF2		44
-#define R9A07G054_PD_SCIF3		45
-#define R9A07G054_PD_SCIF4		46
-#define R9A07G054_PD_SCI0		47
-#define R9A07G054_PD_SCI1		48
-#define R9A07G054_PD_IRDA		49
-#define R9A07G054_PD_RSPI0		50
-#define R9A07G054_PD_RSPI1		51
-#define R9A07G054_PD_RSPI2		52
-#define R9A07G054_PD_CANFD		53
-#define R9A07G054_PD_ADC		54
-#define R9A07G054_PD_TSU		55
-
 #endif /* __DT_BINDINGS_CLOCK_R9A07G054_CPG_H__ */
diff --git a/include/dt-bindings/clock/r9a08g045-cpg.h b/include/dt-bindings/clock/r9a08g045-cpg.h
index 311521fe4b59..410725b778a8 100644
--- a/include/dt-bindings/clock/r9a08g045-cpg.h
+++ b/include/dt-bindings/clock/r9a08g045-cpg.h
@@ -239,75 +239,4 @@
 #define R9A08G045_I3C_PRESETN		92
 #define R9A08G045_VBAT_BRESETN		93
 
-/* Power domain IDs. */
-#define R9A08G045_PD_ALWAYS_ON		0
-#define R9A08G045_PD_GIC		1
-#define R9A08G045_PD_IA55		2
-#define R9A08G045_PD_MHU		3
-#define R9A08G045_PD_CORESIGHT		4
-#define R9A08G045_PD_SYC		5
-#define R9A08G045_PD_DMAC		6
-#define R9A08G045_PD_GTM0		7
-#define R9A08G045_PD_GTM1		8
-#define R9A08G045_PD_GTM2		9
-#define R9A08G045_PD_GTM3		10
-#define R9A08G045_PD_GTM4		11
-#define R9A08G045_PD_GTM5		12
-#define R9A08G045_PD_GTM6		13
-#define R9A08G045_PD_GTM7		14
-#define R9A08G045_PD_MTU		15
-#define R9A08G045_PD_POE3		16
-#define R9A08G045_PD_GPT		17
-#define R9A08G045_PD_POEGA		18
-#define R9A08G045_PD_POEGB		19
-#define R9A08G045_PD_POEGC		20
-#define R9A08G045_PD_POEGD		21
-#define R9A08G045_PD_WDT0		22
-#define R9A08G045_PD_XSPI		23
-#define R9A08G045_PD_SDHI0		24
-#define R9A08G045_PD_SDHI1		25
-#define R9A08G045_PD_SDHI2		26
-#define R9A08G045_PD_SSI0		27
-#define R9A08G045_PD_SSI1		28
-#define R9A08G045_PD_SSI2		29
-#define R9A08G045_PD_SSI3		30
-#define R9A08G045_PD_SRC		31
-#define R9A08G045_PD_USB0		32
-#define R9A08G045_PD_USB1		33
-#define R9A08G045_PD_USB_PHY		34
-#define R9A08G045_PD_ETHER0		35
-#define R9A08G045_PD_ETHER1		36
-#define R9A08G045_PD_I2C0		37
-#define R9A08G045_PD_I2C1		38
-#define R9A08G045_PD_I2C2		39
-#define R9A08G045_PD_I2C3		40
-#define R9A08G045_PD_SCIF0		41
-#define R9A08G045_PD_SCIF1		42
-#define R9A08G045_PD_SCIF2		43
-#define R9A08G045_PD_SCIF3		44
-#define R9A08G045_PD_SCIF4		45
-#define R9A08G045_PD_SCIF5		46
-#define R9A08G045_PD_SCI0		47
-#define R9A08G045_PD_SCI1		48
-#define R9A08G045_PD_IRDA		49
-#define R9A08G045_PD_RSPI0		50
-#define R9A08G045_PD_RSPI1		51
-#define R9A08G045_PD_RSPI2		52
-#define R9A08G045_PD_RSPI3		53
-#define R9A08G045_PD_RSPI4		54
-#define R9A08G045_PD_CANFD		55
-#define R9A08G045_PD_ADC		56
-#define R9A08G045_PD_TSU		57
-#define R9A08G045_PD_OCTA		58
-#define R9A08G045_PD_PDM		59
-#define R9A08G045_PD_PCI		60
-#define R9A08G045_PD_SPDIF		61
-#define R9A08G045_PD_I3C		62
-#define R9A08G045_PD_VBAT		63
-
-#define R9A08G045_PD_DDR		64
-#define R9A08G045_PD_TZCDDR		65
-#define R9A08G045_PD_OTFDE_DDR		66
-#define R9A08G045_PD_RTC		67
-
 #endif /* __DT_BINDINGS_CLOCK_R9A08G045_CPG_H__ */
-- 
2.43.0


