Return-Path: <devicetree+bounces-134577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F07209FDF78
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CAF13A14D0
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0010119DF40;
	Sun, 29 Dec 2024 14:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="rck3lPzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A3019D892
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483856; cv=none; b=I5qaurPhOi6c1G1USU0VV0a0CoGH19u4f1kB2ddf2+OI6rywgM9g//u/vab0Ht/cd+j/Gcehbz3tgnXwgw5wieJzvHcBgUUKDA8Fs8lTw1iP024o0/Ofp1W9fTIlcmv5uB+s/5JHrlgUcttJ6HEW9TDMK7z8whJeMRnJfF4oc0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483856; c=relaxed/simple;
	bh=gzAb8Vev7F0m4l48I407MYxa8qXR/pteEzI03GTE0HY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=crq1I2Z59KwXZxwIZ44SqgImnUxV4hdAQTQHxnPO1fXJZYZhUCjsFNaVs3/veIxSKtY0k787mJjmFMyyobzxkwwD+xOIWV5TSYcNW30zlz0ZxlLJLF3iptGOkDu12jxwWP5tl+p7eSvrt6EnDCeb4EPzPLSstoJnROBnMHy7QWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=rck3lPzA; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d3e9f60bf4so14479209a12.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483853; x=1736088653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FS59gZd32BjVBMnl0y8BuCd7aMfa22x1ZHu9pei4qQQ=;
        b=rck3lPzAq69inkk6doL0xUhyz+D4myn4VtP+mwNEe2OWN78qCrQ2ds4PGiZeD3mQuR
         +HPbbsxK04ZeG2RX9YCyGb90IaZznW3PIcvvlUpU4/i5iiu80qz1HAxAiz9aKwpx67Ax
         2bvRpSOKb0z2WyH8/C/sRVv/3NNbK05UmYsL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483853; x=1736088653;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FS59gZd32BjVBMnl0y8BuCd7aMfa22x1ZHu9pei4qQQ=;
        b=oMsLbNzsodNCo6R6yy/8U3/mrPSvXNEcmGwE8/WB1wlKtofFJMskzwEc+XFgzv9UVl
         o2kiwTOLMb1ad3b/D9sZqxGPh3OoP0r6EtnfhG8jOL6uM8npZ1aO/J0Ferv1XVY/1Wwe
         B1gAOoiHbueQ0QGYrgwuHX/O0+jg6OVTr+nk0jDGZYQaevNe4M+XehJV54am9pzsqyRd
         dcpTWFi74RF0nHU71q+gPtSWDLRUjqZqyeoedC73t0MOm8qozLfdpuRrNEyRCXowA4Xc
         fDJLcBQg/4IpWOuJtCLn2enOJ62wAtG8ntBtRLWPZdrqQk/evNazKNlkGiRGUX5/4hD8
         B4aA==
X-Forwarded-Encrypted: i=1; AJvYcCWte36XKkcOOFgJ0bhZK3cNrX6iQmnh12o3scBiik96T/6eNLRHJQPGaAm5FItVPzm6oQ4mMC/Da1+s@vger.kernel.org
X-Gm-Message-State: AOJu0YzkkZOpXdaMEKjISyAdEFO4OvYbPVZ3MS61xD42HMOE3zrdTv5R
	nGD3vCKJ3u7161qycBUZGYZ9rfUyh0r4vH4qs0goi2iT8ACidaa1PVtuYJHtZ/c=
X-Gm-Gg: ASbGncvQaPZDJlsdklZxwRjKKCfOqKiS12md/DIPCxbvUxLQJiy24s7AEv3XekHezfq
	81nUrgsuNJqUblZvnu96WQya3f8WxKnH3oxNydfZTxrTjYD3jg39W3tVxiJJGw/d38juamWYQT3
	gteVMS56HBd0L1/A0m7RGO2jbnql53kt6LYveLiSm0PfMhADJgpsLsvHGG4zE8TPro7h3hez2D1
	OImChqt9VJDDhlCba6DbfYp0X9rjwR4HK3n6tabF/IEeVS5f6v4IsYA8oRXxNpALG9zVD8uCwBg
	D8aIk5Uwu9gl7VBC3ViC1Q==
X-Google-Smtp-Source: AGHT+IGAr/fj0/FxvDNSF3QhklUe5PsXkRgWrVEt4Z7yfy8kv6dXfzAqgAyAuWRdOWj4EIdZF2KqUg==
X-Received: by 2002:a17:907:3f9e:b0:aa6:7f99:81aa with SMTP id a640c23a62f3a-aac2d446f68mr2704157366b.6.1735483853232;
        Sun, 29 Dec 2024 06:50:53 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:52 -0800 (PST)
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
Subject: [PATCH v8 13/18] arm64: dts: imx8mm: add PLLs to clock controller module (CCM)
Date: Sun, 29 Dec 2024 15:49:37 +0100
Message-ID: <20241229145027.3984542-14-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
References: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
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
index 597041a05073..79f4c1ae7d8b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -642,9 +642,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL2>,
+					 <&anatop IMX8MM_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MM_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MM_CLK_A53_SRC>,
 						<&clk IMX8MM_CLK_A53_CORE>,
 						<&clk IMX8MM_CLK_NOC>,
-- 
2.43.0


