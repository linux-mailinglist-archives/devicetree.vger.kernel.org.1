Return-Path: <devicetree+bounces-125833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EAB9DF6C5
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D737B21100
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586C91DDC0C;
	Sun,  1 Dec 2024 17:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gJYrbosl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531361DD0F6
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075259; cv=none; b=PCFUcZJD83wKKZH8hsR2Rv0R+v7nxABczJp9WzMF5YNwpoPshSwlPJjhVoV/h5kfcbsryDRfoqstekoEOANTXPJQH48u8Ys6hRII79xztw3nukCK5ApZ/FC0l8ehJsMz9wAUZSI7wcPPNGp8XunGFzZcgyGsvy2hocbr61mj4l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075259; c=relaxed/simple;
	bh=FgS3VPSUb3LX7ZxAviEc5zpx+vimv7Cxc32ZpCChiWo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q2cDcT4HzS/qJQz9+kawsB2XQSDouvZd7mE5cL6AldFeBedlVWMdbFJz4eVH8x9r3nzlj/JIGx8sGa3MN5ZAdPaSpqOBCl3ZH0kihhyD9odx+bLIsymGb34dA6VCk8kL8uvdpGvPB3jZfqI9NnmkzXMINsjaZojAuvanBjdRxnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=gJYrbosl; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa549f2f9d2so446365966b.3
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075255; x=1733680055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z9ECY73UG8ehnqT2joX/xp2njmIlfmPxWimrFTqyoco=;
        b=gJYrboslG1VqpZUncM458LGw1SIbQn5hUP1Dw/ovO+0WSFANfviYJTOFrBy9OmZyw5
         BI68V7JE+M8igpI+T40+6g/VlsKYNHWLRjYrX4o82pSAGLqkE7Xr9IdvUCyATQwft3QX
         CYxGJbqlg2q7k2xPf7GvCfIqrJipxfjAHyO5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075255; x=1733680055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z9ECY73UG8ehnqT2joX/xp2njmIlfmPxWimrFTqyoco=;
        b=S+pQ6XXW9fdyX/HNIjhGg62WVLeUo4BZBm/cvjQAo4gMRVhhJO33xnpsOHRNgUjcKW
         URrho/GCVxaCxWKxN9vW13tgxFnFevYzdZLa6d8HNtoU4kEiRoxwQh8okd4u69CYQYWV
         3syZb+9yQWHqz53Xwy2sGAblaZCLEspauJV4zcZM0yuvgOMWBcDHVqrboT5rH2830m0d
         VdMCKMC1nBHvN5oEfMVHUuuZH4lIloY3lrYg/fCP2qcIOl3b13oQNb6eHKTNeKYYHghU
         HeufiilzCqrPSGzkH3nMjNtJc2YwIKakn31qRlmRCwcE1MIJHuHHArBns8iE7UVwdOJd
         megQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbj2MpHWHqSLtmluNardFf+msWk5zpTT8Ml2OsCljKKVhiPVawAKMl3y4irEPr33zh3LXg3v9poo21@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb9GXox8RPpW6G5r91nMG0QsNoEzF01UqyRF3wKZpODnBSs/qo
	0kF+8GQ/zLtZRw8gewI5y0OxNIcUcdBlOFfMfNJe+xPM/BuRpTPpPXCoKNf6UrM=
X-Gm-Gg: ASbGncuQ+9YR7FD5+NZu2YEo9KBmQ8FBNFOgkNZ1Ii4g9EpvOZVW09P2TfLZvcY8rou
	dZslwUJZ0KzV0tBK/z++2NSL7bv8kMEp6YOOOt/DAgA/vstmoozizK9O9mHnE8FsrEZHCAUvL/R
	7IhmbztAIhpsd/UZVHIinlqLk/f41mwlZEXe8egQkeR1f2pa3CRLsYHNQuAuEpH8/7xVYDplZo6
	Qab1thS0jL1NHlTqpdpC3/p4mMg9/MK31s49124V2hNmmqu9wmwhvX6Gbmt2Go52Li+LaVwIzPB
	7OI+PbALms/YFz0Mfxf9INsMI9mBeHKAeD3EDfdttvAdSrHSHJTroopHCycEHtayxUll/yq7Qux
	fEdNBoVIbmb9l1DF1
X-Google-Smtp-Source: AGHT+IGWip9V7SPf/QghX0+OWBObLNjALVbM+OpWM2YdiKPU4MTIDv5I0WeF92pbW/fXTxQeu5Tp/A==
X-Received: by 2002:a17:906:3d22:b0:aa5:11be:5703 with SMTP id a640c23a62f3a-aa580f3a76dmr1448724266b.35.1733075254737;
        Sun, 01 Dec 2024 09:47:34 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:34 -0800 (PST)
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
Subject: [PATCH v4 10/18] dt-bindings: clock: imx8mp: add binding definitions for anatop
Date: Sun,  1 Dec 2024 18:46:10 +0100
Message-ID: <20241201174639.742000-11-dario.binacchi@amarulasolutions.com>
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

 include/dt-bindings/clock/imx8mp-clock.h | 70 ++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 0601df6c8d38..39e4ad470927 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -401,4 +401,74 @@
 
 #define IMX8MP_CLK_AUDIOMIX_END			59
 
+#define IMX8MP_ANATOP_CLK_DUMMY			0
+#define IMX8MP_ANATOP_CLK_24M			1
+#define IMX8MP_ANATOP_CLK_32K			2
+#define IMX8MP_ANATOP_AUDIO_PLL1_REF_SEL	3
+#define IMX8MP_ANATOP_AUDIO_PLL2_REF_SEL	4
+#define IMX8MP_ANATOP_VIDEO_PLL_REF_SEL		5
+#define IMX8MP_ANATOP_DRAM_PLL_REF_SEL		6
+#define IMX8MP_ANATOP_GPU_PLL_REF_SEL		7
+#define IMX8MP_ANATOP_VPU_PLL_REF_SEL		8
+#define IMX8MP_ANATOP_ARM_PLL_REF_SEL		9
+#define IMX8MP_ANATOP_SYS_PLL1_REF_SEL		10
+#define IMX8MP_ANATOP_SYS_PLL2_REF_SEL		11
+#define IMX8MP_ANATOP_SYS_PLL3_REF_SEL		12
+#define IMX8MP_ANATOP_AUDIO_PLL1		13
+#define IMX8MP_ANATOP_AUDIO_PLL2		14
+#define IMX8MP_ANATOP_VIDEO_PLL			15
+#define IMX8MP_ANATOP_DRAM_PLL			16
+#define IMX8MP_ANATOP_GPU_PLL			17
+#define IMX8MP_ANATOP_VPU_PLL			18
+#define IMX8MP_ANATOP_ARM_PLL			19
+#define IMX8MP_ANATOP_SYS_PLL1			20
+#define IMX8MP_ANATOP_SYS_PLL2			21
+#define IMX8MP_ANATOP_SYS_PLL3			22
+#define IMX8MP_ANATOP_AUDIO_PLL1_BYPASS		23
+#define IMX8MP_ANATOP_AUDIO_PLL2_BYPASS		24
+#define IMX8MP_ANATOP_VIDEO_PLL_BYPASS		25
+#define IMX8MP_ANATOP_DRAM_PLL_BYPASS		26
+#define IMX8MP_ANATOP_GPU_PLL_BYPASS		27
+#define IMX8MP_ANATOP_VPU_PLL_BYPASS		28
+#define IMX8MP_ANATOP_ARM_PLL_BYPASS		29
+#define IMX8MP_ANATOP_SYS_PLL1_BYPASS		30
+#define IMX8MP_ANATOP_SYS_PLL2_BYPASS		31
+#define IMX8MP_ANATOP_SYS_PLL3_BYPASS		32
+#define IMX8MP_ANATOP_AUDIO_PLL1_OUT		33
+#define IMX8MP_ANATOP_AUDIO_PLL2_OUT		34
+#define IMX8MP_ANATOP_VIDEO_PLL_OUT		35
+#define IMX8MP_ANATOP_DRAM_PLL_OUT		36
+#define IMX8MP_ANATOP_GPU_PLL_OUT		37
+#define IMX8MP_ANATOP_VPU_PLL_OUT		38
+#define IMX8MP_ANATOP_ARM_PLL_OUT		39
+#define IMX8MP_ANATOP_SYS_PLL3_OUT		40
+#define IMX8MP_ANATOP_SYS_PLL1_OUT		41
+#define IMX8MP_ANATOP_SYS_PLL1_40M		42
+#define IMX8MP_ANATOP_SYS_PLL1_80M		43
+#define IMX8MP_ANATOP_SYS_PLL1_100M		44
+#define IMX8MP_ANATOP_SYS_PLL1_133M		45
+#define IMX8MP_ANATOP_SYS_PLL1_160M		46
+#define IMX8MP_ANATOP_SYS_PLL1_200M		47
+#define IMX8MP_ANATOP_SYS_PLL1_266M		48
+#define IMX8MP_ANATOP_SYS_PLL1_400M		49
+#define IMX8MP_ANATOP_SYS_PLL1_800M		50
+#define IMX8MP_ANATOP_SYS_PLL2_OUT		51
+#define IMX8MP_ANATOP_SYS_PLL2_50M		52
+#define IMX8MP_ANATOP_SYS_PLL2_100M		53
+#define IMX8MP_ANATOP_SYS_PLL2_125M		54
+#define IMX8MP_ANATOP_SYS_PLL2_166M		55
+#define IMX8MP_ANATOP_SYS_PLL2_200M		56
+#define IMX8MP_ANATOP_SYS_PLL2_250M		57
+#define IMX8MP_ANATOP_SYS_PLL2_333M		58
+#define IMX8MP_ANATOP_SYS_PLL2_500M		59
+#define IMX8MP_ANATOP_SYS_PLL2_1000M		60
+#define IMX8MP_ANATOP_CLK_CLKOUT1_SEL		61
+#define IMX8MP_ANATOP_CLK_CLKOUT1_DIV		62
+#define IMX8MP_ANATOP_CLK_CLKOUT1		63
+#define IMX8MP_ANATOP_CLK_CLKOUT2_SEL		64
+#define IMX8MP_ANATOP_CLK_CLKOUT2_DIV		65
+#define IMX8MP_ANATOP_CLK_CLKOUT2		66
+
+#define IMX8MP_ANATOP_CLK_END			67
+
 #endif
-- 
2.43.0


