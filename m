Return-Path: <devicetree+bounces-125832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 569049DF6C0
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5938B2141E
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A01D1DB54C;
	Sun,  1 Dec 2024 17:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="EtOE0ANK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC41F1D86E6
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075256; cv=none; b=TpvKk6fTgPeDsmXzp1OxPOX0PaInFJjGxm1tAyf8e2S1ryVzrhO8xCkcCctJBOI7s4ORa6fSOgswEpUixQQUwhSc8QclWhU8tP47r/Ol13Fm/Z8IDuELmwthRMbaup7b1ywtHh30pdD4PJ+eatyiY3FNL42sAGRHpmm/xLivD0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075256; c=relaxed/simple;
	bh=tJv9ZhHsklUT4QeD4L4dHSFnzdweH1pqQf74mjhikPA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LB1jMHT0RF+ALdcty/AnD1a9eEz9h/PPBMQKDBbBTImt+anWFR9Jc5leNfLVXxK4rqMKC9kItIccrJIFuZr2LiEtW+mdG7uqB6Bz9Qwm0Q0HEIiaN5/goQE0XpkNoMJ4fddAEq6IcKS2qLMNi+FkEzQatNy97tw5WNC1Fs6YQ6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=EtOE0ANK; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa51bf95ce1so658113266b.3
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075253; x=1733680053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oLhcLywhuJhFOiraoxYfL0OnvzBa/3HuAHL0GSCsrJE=;
        b=EtOE0ANKJU4IaThpveXtIKxrgs4QL6LU5K582/8jv1VCt9ZOLvzdvmEz2NLgYIBytD
         a2VcHYJIPmwH4UR/EjwcPj3l1VF6osHdIUOyorkFcGmty7TdfDpIZOz0l0JbSMxeMs3N
         hS3am4Rw6/6scy+lreDyFJ4ChNVW319FH5cI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075253; x=1733680053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oLhcLywhuJhFOiraoxYfL0OnvzBa/3HuAHL0GSCsrJE=;
        b=gvseuzq02E0s6TTCM07CCgdbCEB6DGmzGuMiTD0xRHNdQLLCF/xEHQuROid2NSYo2o
         bYgi+EJV7afaDqjqCPaih4+lXU8CdCEI74pPezY4ICM9H1vx8nRoseG3p7Y302Q9aQGU
         rIGP+vR4jC22EhlUUFbYOE3pL+9lk+BElI/rBoWReUAH0Bd//TuxA+5fbxOA98jONcdO
         /IcZ71GbsNBWLvaUf9dIg2JZOg0EN9KyolFlsZj1YdeI5vHOxkt4HlxgX+BuCMC2f1Tf
         WFUqinH1qZcanGpAUvC+IAageE/ju6v4dsmYsDgDWZ3wXmr1QDmqA/FB1mOCGlOA95OE
         9xGA==
X-Forwarded-Encrypted: i=1; AJvYcCWDnenZMxO08l1XZizKtYZ7sXCPjYlXx3tAPjkDUxjBalWedg3IDVVDBbEi/+62w1bsnMdlnXqaMc7s@vger.kernel.org
X-Gm-Message-State: AOJu0YyeaEEP4dRwm70Ge8UlIMEMLCNQe1jKur6DiVVGXp1m6ulolOpA
	ux8vEIv11EZHFOXvjX6AARFrAXF+PfMCLJOefxmIXs3y1E1WlLlfPug2ew6jBDg=
X-Gm-Gg: ASbGncusJ1IOMSAe270nbDb+KDdLBLCu7Pl5hL4339PoPMSM7ypIE468vMU5dTmSPMH
	tjqzRG/GqIclmxzgwLb70dxcfrckbJ7ll4cLIGPwY2Hm/jA7A1TCyYS+2OyzCRWZBpWurvaQ2BZ
	CSeun3dKEWTGTlEN/9um9Pn4jux+ZssH1hkV4Z3zxWzoTvfs2IF73cMtChNCy5AFtVoQa/7uBV3
	8ihwiqi7NuiAET9a8pr2Wh3E2svoWQwFF1qvTM4f4hPcduJTgKfKwhWfC1LE7GurUS754lpgtQN
	rdTqZGt3HVdoLOSRxlmW/IR8AFpmqxv/jFKkWkmSaVV3M6MgPlalHkRa/2AcnotbO3I8HJ/l2fV
	17mVRaMNEcwGdY+os
X-Google-Smtp-Source: AGHT+IGn4/RWVLL59jddxhSFtsf5Or4ZQ8VOnVsID7RwbBkW6zIOVCAero1gEw2gjSwr4s7DcORz6w==
X-Received: by 2002:a17:906:3090:b0:aa5:1ce8:e4e0 with SMTP id a640c23a62f3a-aa580edfc21mr2238279966b.10.1733075253130;
        Sun, 01 Dec 2024 09:47:33 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:32 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v4 09/18] dt-bindings: clock: imx8mn: add binding definitions for anatop
Date: Sun,  1 Dec 2024 18:46:09 +0100
Message-ID: <20241201174639.742000-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
References: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

 - Added in v4

---

(no changes since v1)

 include/dt-bindings/clock/imx8mn-clock.h | 67 ++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/include/dt-bindings/clock/imx8mn-clock.h b/include/dt-bindings/clock/imx8mn-clock.h
index 04809edab33c..732ff87a16c2 100644
--- a/include/dt-bindings/clock/imx8mn-clock.h
+++ b/include/dt-bindings/clock/imx8mn-clock.h
@@ -267,4 +267,71 @@
 
 #define IMX8MN_CLK_END				235
 
+#define IMX8MN_ANATOP_CLK_DUMMY			0
+#define IMX8MN_ANATOP_CLK_32K			1
+#define IMX8MN_ANATOP_CLK_24M			2
+#define IMX8MN_ANATOP_AUDIO_PLL1_REF_SEL	3
+#define IMX8MN_ANATOP_AUDIO_PLL2_REF_SEL	4
+#define IMX8MN_ANATOP_VIDEO_PLL_REF_SEL		5
+#define IMX8MN_ANATOP_DRAM_PLL_REF_SEL		6
+#define IMX8MN_ANATOP_GPU_PLL_REF_SEL		7
+#define IMX8MN_ANATOP_M7_ALT_PLL_REF_SEL	8
+#define IMX8MN_ANATOP_ARM_PLL_REF_SEL		9
+#define IMX8MN_ANATOP_SYS_PLL3_REF_SEL		10
+#define IMX8MN_ANATOP_AUDIO_PLL1		11
+#define IMX8MN_ANATOP_AUDIO_PLL2		12
+#define IMX8MN_ANATOP_VIDEO_PLL			13
+#define IMX8MN_ANATOP_DRAM_PLL			14
+#define IMX8MN_ANATOP_GPU_PLL			15
+#define IMX8MN_ANATOP_M7_ALT_PLL		16
+#define IMX8MN_ANATOP_ARM_PLL			17
+#define IMX8MN_ANATOP_SYS_PLL1			18
+#define IMX8MN_ANATOP_SYS_PLL2			19
+#define IMX8MN_ANATOP_SYS_PLL3			20
+#define IMX8MN_ANATOP_AUDIO_PLL1_BYPASS		21
+#define IMX8MN_ANATOP_AUDIO_PLL2_BYPASS		22
+#define IMX8MN_ANATOP_VIDEO_PLL_BYPASS		23
+#define IMX8MN_ANATOP_DRAM_PLL_BYPASS		24
+#define IMX8MN_ANATOP_GPU_PLL_BYPASS		25
+#define IMX8MN_ANATOP_M7_ALT_PLL_BYPASS		26
+#define IMX8MN_ANATOP_ARM_PLL_BYPASS		27
+#define IMX8MN_ANATOP_SYS_PLL3_BYPASS		28
+#define IMX8MN_ANATOP_AUDIO_PLL1_OUT		29
+#define IMX8MN_ANATOP_AUDIO_PLL2_OUT		30
+#define IMX8MN_ANATOP_VIDEO_PLL_OUT		31
+#define IMX8MN_ANATOP_DRAM_PLL_OUT		32
+#define IMX8MN_ANATOP_GPU_PLL_OUT		33
+#define IMX8MN_ANATOP_M7_ALT_PLL_OUT		34
+#define IMX8MN_ANATOP_ARM_PLL_OUT		35
+#define IMX8MN_ANATOP_SYS_PLL3_OUT		36
+#define IMX8MN_ANATOP_SYS_PLL1_OUT		37
+#define IMX8MN_ANATOP_SYS_PLL1_40M		38
+#define IMX8MN_ANATOP_SYS_PLL1_80M		39
+#define IMX8MN_ANATOP_SYS_PLL1_100M		40
+#define IMX8MN_ANATOP_SYS_PLL1_133M		41
+#define IMX8MN_ANATOP_SYS_PLL1_160M		42
+#define IMX8MN_ANATOP_SYS_PLL1_200M		43
+#define IMX8MN_ANATOP_SYS_PLL1_266M		44
+#define IMX8MN_ANATOP_SYS_PLL1_400M		45
+#define IMX8MN_ANATOP_SYS_PLL1_800M		46
+#define IMX8MN_ANATOP_SYS_PLL2_OUT		47
+#define IMX8MN_ANATOP_SYS_PLL2_50M		48
+#define IMX8MN_ANATOP_SYS_PLL2_100M		49
+#define IMX8MN_ANATOP_SYS_PLL2_125M		50
+#define IMX8MN_ANATOP_SYS_PLL2_166M		51
+#define IMX8MN_ANATOP_SYS_PLL2_200M		52
+#define IMX8MN_ANATOP_SYS_PLL2_250M		53
+#define IMX8MN_ANATOP_SYS_PLL2_333M		54
+#define IMX8MN_ANATOP_SYS_PLL2_500M		55
+#define IMX8MN_ANATOP_SYS_PLL2_1000M		56
+
+#define IMX8MN_ANATOP_CLK_CLKOUT1_SEL		57
+#define IMX8MN_ANATOP_CLK_CLKOUT1_DIV		58
+#define IMX8MN_ANATOP_CLK_CLKOUT1		59
+#define IMX8MN_ANATOP_CLK_CLKOUT2_SEL		60
+#define IMX8MN_ANATOP_CLK_CLKOUT2_DIV		61
+#define IMX8MN_ANATOP_CLK_CLKOUT2		62
+
+#define IMX8MN_ANATOP_CLK_END			63
+
 #endif
-- 
2.43.0


