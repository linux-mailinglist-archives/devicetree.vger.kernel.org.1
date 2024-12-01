Return-Path: <devicetree+bounces-125831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D45CE9DF6BE
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6CD816327C
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AB261DAC93;
	Sun,  1 Dec 2024 17:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="MxNw785V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFB21DAC9D
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075255; cv=none; b=TspfTo+q1TMrz/vKUXanaTl5Ub6NlkDppAuBaB/oxMDMXtVwnBCOXglzFrTlnYZVOSn6lRnzvn5dF7PUcHMzq6CU7FVn5FwuZKBocA44L3k9WpFywiZKh9X501GEf8HM+BYyanjBVxnIi9vzAcKDh4rGQc2GABmvFlZv5J32r2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075255; c=relaxed/simple;
	bh=Nwn3EKKlmGoN86TIQsDCmmh1hRjCTmWLWbVqZEcZ4hA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RL2dNPgfvfOPNWG3imS3+9EMOUOWc0+yS2gi3L/KLjKqIyNOPZvkfVKx5/aUqKS3dfQMXZn9VaPHUbGgcqqEXY9Zl9Kh73z5PQFLBz+aaamyXQ0zEQo1BrBdIwF1C7127df/T9NG6/o2MR8h1Idl8wN3yOREg4ES4RVgyIc7Xwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=MxNw785V; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa5325af6a0so494494966b.2
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075251; x=1733680051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6vpGtyZ0NLJqQmHQubdh3p8VNW8Gv2lh2Riw5LPZEts=;
        b=MxNw785VNqSy0qe6fFTaBpCQzlra3GjmtJuJe5mLY1Be8IAGVaeWDpuVYVtGsMwgHj
         AE4hUjRPRc/XGUJQNiYpYh1upCirOeQMIcEp/1qsdyqP+l/AkOfFewPPGjSDDR20LRw5
         LJKE1jQulOOG/Qpx0whRkmzDLt5BQfAZ5ZqHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075251; x=1733680051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vpGtyZ0NLJqQmHQubdh3p8VNW8Gv2lh2Riw5LPZEts=;
        b=nJN2cUoGHcmr2lOiqvwTrhLrVq89VSwPKtQcb57shB8W35U0tp0/f8V9cV12IyPhga
         vObVZHzSBRoV77IUNQlbWoBeXFUI66I2LUdGzMjcf7pBdepSOYcz1Ge7kapLD8tiMmUd
         Ua7kKC96Qsx9Ws1ww7rmPRm1pzf7My8WMabcWMSmM7mgcYi6xJ4RV8whKglt1IycUYyP
         2CwyPpBMPgTjrI6Oj4cd39QF2VEohAQnfNUpzzG2NrD12AIkswu3MjOk7cLsdspPHYgH
         el5MD/k4IX+h7DUQbORXnv1OWTW/I6xYHoeCJ6Zoft5cZf/5YBU3ppGlrM/LsQF52hO5
         Z09g==
X-Forwarded-Encrypted: i=1; AJvYcCWzJ33UbuKR6ogxlQis24JwyW+3RAwiBt+R3u4WkH27e7VGlXvIpvBFHTptTQqF26c2vew+WJ0jkQe4@vger.kernel.org
X-Gm-Message-State: AOJu0YzQaUuR1TPCwc/MJi6OTtRt0YCbKnt4wRSH0qOmouxMx5betGB2
	l1CvSAzzd8F9fn4JzlXJ6X5NCTbFWnU3S4HVCvxADZbLzgJe3QY3mcnMW7gSRgnQPbhOBkyKWN9
	W
X-Gm-Gg: ASbGncuqmc8fN/K6Qr+301NwwLgDh4KFdO/OPS9/ZFqvvN2U4Rayyx9kshexnMCUZ5z
	lRkz3Z/6WOROwU3cVcg3pLX6wDMhDXNDnso5wauPqbXlAOPkJOV0Qxk7xgQRtB5ExVCPRD45AQx
	0gy81C/Yh+XOwm954CnG0m0lLsVRBXXcMcFTn2qGzNObxZ58LXsQpClbJofsgOppt9UHi+DscEE
	UZ1R7A3dWD5aKyjKtHzSDzh8LlhlPl7573yIGfOg3UkGEyafQ8JBVj4FIf4l1bWhFcR60HpH6Wj
	Y59mdxEBVJwsePasdoDp4x17s+9K+wH4t8a8GPUyk6XKVwAa2AodWP5tsH5Lbf9gMzKKRqgsmq+
	MuIfNk0qB7raVD8yD
X-Google-Smtp-Source: AGHT+IH6kOma2DObSZmZth2XtVd8Da7MknZR6nKDqDOJ+2Riopq+leVAbUkamxADzB83IjOAlOgwqg==
X-Received: by 2002:a17:906:23ea:b0:a9a:10c9:f4b8 with SMTP id a640c23a62f3a-aa58109dc28mr1664550866b.61.1733075251568;
        Sun, 01 Dec 2024 09:47:31 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:31 -0800 (PST)
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
Subject: [PATCH v4 08/18] dt-bindings: clock: imx8mm: add binding definitions for anatop
Date: Sun,  1 Dec 2024 18:46:08 +0100
Message-ID: <20241201174639.742000-9-dario.binacchi@amarulasolutions.com>
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

 include/dt-bindings/clock/imx8mm-clock.h | 66 ++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 102d8a6cdb55..1962b0a1e732 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -287,4 +287,70 @@
 
 #define IMX8MM_CLK_END				258
 
+#define IMX8MM_ANATOP_CLK_DUMMY			0
+#define IMX8MM_ANATOP_CLK_32K			1
+#define IMX8MM_ANATOP_CLK_24M			2
+#define IMX8MM_ANATOP_AUDIO_PLL1_REF_SEL	3
+#define IMX8MM_ANATOP_AUDIO_PLL2_REF_SEL	4
+#define IMX8MM_ANATOP_VIDEO_PLL_REF_SEL		5
+#define IMX8MM_ANATOP_DRAM_PLL_REF_SEL		6
+#define IMX8MM_ANATOP_GPU_PLL_REF_SEL		7
+#define IMX8MM_ANATOP_VPU_PLL_REF_SEL		8
+#define IMX8MM_ANATOP_ARM_PLL_REF_SEL		9
+#define IMX8MM_ANATOP_SYS_PLL3_REF_SEL		10
+#define IMX8MM_ANATOP_AUDIO_PLL1		11
+#define IMX8MM_ANATOP_AUDIO_PLL2		12
+#define IMX8MM_ANATOP_VIDEO_PLL			13
+#define IMX8MM_ANATOP_DRAM_PLL			14
+#define IMX8MM_ANATOP_GPU_PLL			15
+#define IMX8MM_ANATOP_VPU_PLL			16
+#define IMX8MM_ANATOP_ARM_PLL			17
+#define IMX8MM_ANATOP_SYS_PLL1			18
+#define IMX8MM_ANATOP_SYS_PLL2			19
+#define IMX8MM_ANATOP_SYS_PLL3			20
+#define IMX8MM_ANATOP_AUDIO_PLL1_BYPASS		21
+#define IMX8MM_ANATOP_AUDIO_PLL2_BYPASS		22
+#define IMX8MM_ANATOP_VIDEO_PLL_BYPASS		23
+#define IMX8MM_ANATOP_DRAM_PLL_BYPASS		24
+#define IMX8MM_ANATOP_GPU_PLL_BYPASS		25
+#define IMX8MM_ANATOP_VPU_PLL_BYPASS		26
+#define IMX8MM_ANATOP_ARM_PLL_BYPASS		27
+#define IMX8MM_ANATOP_SYS_PLL3_BYPASS		28
+#define IMX8MM_ANATOP_AUDIO_PLL1_OUT		29
+#define IMX8MM_ANATOP_AUDIO_PLL2_OUT		30
+#define IMX8MM_ANATOP_VIDEO_PLL_OUT		31
+#define IMX8MM_ANATOP_DRAM_PLL_OUT		32
+#define IMX8MM_ANATOP_GPU_PLL_OUT		33
+#define IMX8MM_ANATOP_VPU_PLL_OUT		34
+#define IMX8MM_ANATOP_ARM_PLL_OUT		35
+#define IMX8MM_ANATOP_SYS_PLL3_OUT		36
+#define IMX8MM_ANATOP_SYS_PLL1_OUT		37
+#define IMX8MM_ANATOP_SYS_PLL1_40M		38
+#define IMX8MM_ANATOP_SYS_PLL1_80M		39
+#define IMX8MM_ANATOP_SYS_PLL1_100M		40
+#define IMX8MM_ANATOP_SYS_PLL1_133M		41
+#define IMX8MM_ANATOP_SYS_PLL1_160M		42
+#define IMX8MM_ANATOP_SYS_PLL1_200M		43
+#define IMX8MM_ANATOP_SYS_PLL1_266M		44
+#define IMX8MM_ANATOP_SYS_PLL1_400M		45
+#define IMX8MM_ANATOP_SYS_PLL1_800M		46
+#define IMX8MM_ANATOP_SYS_PLL2_OUT		47
+#define IMX8MM_ANATOP_SYS_PLL2_50M		48
+#define IMX8MM_ANATOP_SYS_PLL2_100M		49
+#define IMX8MM_ANATOP_SYS_PLL2_125M		50
+#define IMX8MM_ANATOP_SYS_PLL2_166M		51
+#define IMX8MM_ANATOP_SYS_PLL2_200M		52
+#define IMX8MM_ANATOP_SYS_PLL2_250M		53
+#define IMX8MM_ANATOP_SYS_PLL2_333M		54
+#define IMX8MM_ANATOP_SYS_PLL2_500M		55
+#define IMX8MM_ANATOP_SYS_PLL2_1000M		56
+#define IMX8MM_ANATOP_CLK_CLKOUT1_SEL		57
+#define IMX8MM_ANATOP_CLK_CLKOUT1_DIV		58
+#define IMX8MM_ANATOP_CLK_CLKOUT1		59
+#define IMX8MM_ANATOP_CLK_CLKOUT2_SEL		60
+#define IMX8MM_ANATOP_CLK_CLKOUT2_DIV		61
+#define IMX8MM_ANATOP_CLK_CLKOUT2		62
+
+#define IMX8MM_ANATOP_CLK_END			63
+
 #endif
-- 
2.43.0


