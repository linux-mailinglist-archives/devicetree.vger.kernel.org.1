Return-Path: <devicetree+bounces-134419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAEB9FD644
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90F67164071
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78BD1FA164;
	Fri, 27 Dec 2024 16:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ekeiMnMa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A3A1FA147
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318676; cv=none; b=EoVW8RaxFnOe4+wLWirVtAEKh21JaTIYKFl7anlEC2JLGeL1NAYSGbNNTYRWbxTe1QT5lGtGeCxBp9DbYpI4enONCNuKuC+IYAtFFjjz3rfyRLLXngFzv5tYNSWejXAGwG44ZJigt+shg1MPjBshz1CbyehWQ8/qH/+Wo6Vo/nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318676; c=relaxed/simple;
	bh=lZ+izl3KOcrP4dTerSDIL2lXeHI2SVlSR3OQDbuK8Bg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GQM73OvdR1yGqkodi32eJgu/TPZVhd7AZzacn7O0tq0MiI9SNNnXbU24wFbypw0BuT2BMDjhwTUUUW4z4DOxzYX3KNV8Q0rT8qZRDzhvp3bhNl+kkQARwh5/TQA19dDkmmq6UBEmHg1a61Kh9kBM7bPIMwlql5/TWCUqdEc2em0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ekeiMnMa; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a9e44654ae3so1198546866b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318673; x=1735923473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9tXcK4MzLANKycoQovw1YV+Lipo6MwZ9hAHR/w3gOEI=;
        b=ekeiMnMav+VO55+WQRmOQUmZVAYDGf/LyVFTdyRpaqMuzlNjxzc99mBgKHme+kk1x4
         p3w1+LoXM5M8cFJvQqQ1bmqXh65fLafhvuKMaj6U7Vl5/gzev1tgdQgSSx4DOxz8NCOW
         MzRGv8FPvGUrdw9nVNBBo8YXNDhbprcDpT+7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318673; x=1735923473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9tXcK4MzLANKycoQovw1YV+Lipo6MwZ9hAHR/w3gOEI=;
        b=ODeGlcaT1rH6s+B1wwYWCIQQmB8qmxIFDI3mIc6GBaAZb2r9EAw2WWkWxPuIVwlaN/
         KDeN0Pqd8G5eCI5nq8OXQonzar6VVnciWPlpbjz3qiLFecaEjv903rwBNESFix35QW65
         Mj1Rg6Cv9PZm3PnBYJserfTh1k8jmwt2MAOP7L5SCtjOrFoK4/KFMRxz8yXjtKxtfVJe
         cTUcVTByaYrAzBB1PCRp2wnvzWMGQ8/P5eQYyxFS+rzXkGUpEq6UAQLI6ZAdxihOWlGJ
         1Xkk91DxMSEgoihowzCxqjoleXBEDO2+CqisGHQLbcbc6H5ZzAC1FBpn4KGIHjXtO/S4
         e3fw==
X-Forwarded-Encrypted: i=1; AJvYcCX+Vvg1DK4OMQhFPbFwofWymC8/039PpmZnpXKdz+A+QnNw+CclA0Im12KjCpYTQJlkgwOTTCD3CfPs@vger.kernel.org
X-Gm-Message-State: AOJu0YwxTNSwwF5gzrdUj7ET2wfFOVQQ315bQb4j3EkO43BCXkctFHKS
	X2R+Kn2DUPltyXLTHCMrpfMewoEZn90g+ihuytDaTKjZ60xWttLNgA9poq5GxOU=
X-Gm-Gg: ASbGnctV5q8px3fNtAdEBVx8bjHfiqsVIMWPMTPrfnORv9P+Bj6Dttze0R3D47Fgvh3
	Xn13EB64pgbB502ueG78goUtSE7W+/97A7TviSNiQr8cYQuC5hVDqObRahVN2CRVg0VoH7FjgdY
	wCAInu1gT05zYFrToqK61p4WEDw+t+rbzXxE/njkcMVr7iuQ5kZQ/6ryG2KMLCeIMPjg5gFsnpn
	MhbRUARmjtdg9oVxlw1bZbG4tl4tK7vQGWmqIq9URruF1CFLrgKGMNKBIfxhvqmOeF7uAWbXE1Z
	APOsGSAIj+6IKJS9AFJyMg==
X-Google-Smtp-Source: AGHT+IELHXAIGmRFx+PeofZhS2rys3/Tv8YiD1lK/y4zs6kEicZzZbe/K6kVAhiRQW0mq2JcGswPjg==
X-Received: by 2002:a17:906:dc91:b0:aaf:300b:d1f7 with SMTP id a640c23a62f3a-aaf300bd28fmr253744366b.13.1735318672987;
        Fri, 27 Dec 2024 08:57:52 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:52 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 18/23] arm64: dts: imx8mm: add PLLs to clock controller module (CCM)
Date: Fri, 27 Dec 2024 17:56:21 +0100
Message-ID: <20241227165719.3902388-19-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the PLLs generated by anatop to the clock list of the Clock
Controller Module (CCM) node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index b1a4cc521bf4..c3287978c42b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -642,9 +642,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MM_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MM_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				fsl,anatop = <&anatop>;
 				assigned-clocks = <&clk IMX8MM_CLK_A53_SRC>,
 						<&clk IMX8MM_CLK_A53_CORE>,
-- 
2.43.0


