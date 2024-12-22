Return-Path: <devicetree+bounces-133384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D835A9FA71D
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:09:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DF631881D86
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343B31AF0B9;
	Sun, 22 Dec 2024 17:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="PPDiw5HU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE161AD3E4
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887166; cv=none; b=gsxPECfFXotS4SFHpPGKVJdfiIVEA5N1MtF+ol+epPKoTuxiCfVZijl80Khh757QcxfCixms5CwoHGkhOc9x66+W1abCGG5pr+jIXxBaVO+qP/c84HGiIV8tBm0tII+7ydGObWG8V9W/U/5MdhQsyjCofsLG3doIpbg6f6t6SMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887166; c=relaxed/simple;
	bh=UMdg/7HEARC6ZgU2mWDyh9m6gc8+etDqX0OWe/Oj1Is=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cjbhDK5wV2d6MhZXUPng5EMMoKyitzwVIHS07cR/7fKKqNqPRtPZrrsxq4Xb5+luSY/qgxWp6GJVP1tVIQkFdY0GKtsplGRs2fqToPnwRtD0f8pQtN7a0X9UmMUx4XuQB/svx/PldS0Q7QBMYkRiMxlxhiw1xnh4OkiHqWxs13s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=PPDiw5HU; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aaec6ab57a5so74902066b.1
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887163; x=1735491963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=deJRTkp3cj8LQIAgwHRGE8nfXmDlGN+dwLVOnyJ9CpQ=;
        b=PPDiw5HUidA8DibNd0P4wfmvyQ1RX08kTAlN3QyjRnM6zVmjeD3ZRztZNm5aeikrMe
         uBLmGqlmlmrcf248gI2/64s1Q+bGntTGn9xz8NnbGm1BUBcfaXPF7HihfKzJ1YmyFLqy
         CGc44izpyzM0clpnb5cLhRD7/4XBbYWIwuOWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887163; x=1735491963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=deJRTkp3cj8LQIAgwHRGE8nfXmDlGN+dwLVOnyJ9CpQ=;
        b=Ls30elX6VusNPS6jUcP8GewfPq/qycAo5LkPaL9TTVYM00im0AjD7X2b6b3JBSkz03
         zqayP8PGOndaOt1aUPH4VP6iPfmFh0HxYlSeGSVExkWvzE0J6Vt0PMhTI8xReZLCaZwd
         t7FcC+6me4oElh1IXg5bDgjOpxurtHzEodTVGmRuBBpfhBjZgEk1fTWPUf6JyErAs8cx
         RuWYXQzAGVrgIZHHgQvjwhPOShlE41YEDAkPMsq+HAdRnQHDPVq/MDyIsSm4gsyKz3Ql
         Zgd/GJnaRv+cJaV4e6CZqjsnQKOqEDTiay3KiaVf+ZGFQU380Cy5Vfww2PngSJWd23oH
         1lrA==
X-Forwarded-Encrypted: i=1; AJvYcCXfSne2hrullbr1rzUKfYcwWs/aig4+7otPv0XGgyYgmqt2/NKrnA6LcXZllWU29iOaoDKdQ5aQdpki@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2wk6ApPuW105WPeuAUPXAzLh9MYrYYmLUNM3Kv9eN2WOcM9m/
	wfI4NWZCr3B/6hvIO8Fzt0q6gfY3vi4uK1b0QMagZGg1N7XWMSK+yF/UgUY5Dfs=
X-Gm-Gg: ASbGncuL5oxiaTlgocxvKlHbtWodhWlCm3MAAmGOupcrBuGu1z0Uy+k2gVYyL5PRh7T
	SMvxblZYT1I/rsquV9NjgYvkHfJDHreHpA0yVwUesJYYKKzuIsMTfUdAptT1U6wkOy4G7VPDJmg
	afEWEcAnfSmQ4h7pHNW6PLX4sKSBn187oyuTpvRur3l62IoCeMdLEA4XbrOsUirPaI5Htx2Cfty
	AHJdbTSSOgbpjAZ0opqkVWwbhiVHJhAwFhcnQXeZdbxtrRav8BHikXoKAndOjJ9icC29LbSd93f
	PhQQaGCPdaisZdRHKVN++ls8uMwMGbRyshQdFHd7qT2C2g==
X-Google-Smtp-Source: AGHT+IEHT0otOomGSUQ0XrcVfX2T03CnBKdUdcleEln+L6jncWNWYmfWUaMBTp2oSHdO5rJBcTrtbw==
X-Received: by 2002:a17:907:7f0f:b0:aac:1e96:e7cf with SMTP id a640c23a62f3a-aac334425abmr1040495866b.20.1734887162609;
        Sun, 22 Dec 2024 09:06:02 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:06:02 -0800 (PST)
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
Subject: [PATCH v6 14/18] arm64: dts: imx8mn: add PLLs to clock controller module (ccm)
Date: Sun, 22 Dec 2024 18:04:29 +0100
Message-ID: <20241222170534.3621453-15-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
References: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 49be492b5687..aaa179784717 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -643,9 +643,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MN_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MN_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MN_CLK_A53_SRC>,
 						<&clk IMX8MN_CLK_A53_CORE>,
 						<&clk IMX8MN_CLK_NOC>,
-- 
2.43.0


