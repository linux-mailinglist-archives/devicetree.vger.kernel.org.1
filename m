Return-Path: <devicetree+bounces-133385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8249B9FA71F
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CBC91881D99
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2611AFB36;
	Sun, 22 Dec 2024 17:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="NtlkQnxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49A81AF0A4
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887167; cv=none; b=U8HtT+UG3W5DZA0ZQEbpONyHjbhtn6tlPdpi09zL8jJLlhbHDm/0WP+XKWY/EpZ5fMmBG9vumfkZD/xtx6H31xW2IiXNsPrnfY8rw0xgooBozfOsl2LnsYjpLerifZRFW39c3n65u3+jAvKN3jhpTYYfstFY4VU7XcGqCrHhHf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887167; c=relaxed/simple;
	bh=esezWmna9GVq9r7yCdcGJZGlaSCNF6WPrEuO3eSEza8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dYzSovMsAIxHwLKDMeA68p/LyxWz2gPcq6ZTSQqKYXzf2te9Y25aXK8IF665JQBRyyuyxp8+M1qznRTuQNgifrEsO7pL2Ue+yNpCi3bcwnr+6c4I2xDITPBTkm410MAVIn0atckIsNHRqdyVl5r158V2ZUjFUiVPQUOsWfuTy5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=NtlkQnxN; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa5f1909d6fso542019266b.3
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887164; x=1735491964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=biWMPay2nyJxiRsIuM7kfYUrVvGohPt2+JFfoRTvr08=;
        b=NtlkQnxNTJQl4MqeLlDX4WeoPbRPufUtoXz6YmbYvq/tZeUQnEgStKrtSYWucXuaeR
         mhpKjjvTZutaSi+IT7mvoV1gUwsp/4aShNQU4AcjTWM1Tolcvgqbqxs7l/UIOYOg+Fg5
         CGL8STr++T9hmA0oToEPpISBaePNDIZHOpZ4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887164; x=1735491964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=biWMPay2nyJxiRsIuM7kfYUrVvGohPt2+JFfoRTvr08=;
        b=pda/amrFK6ouUawV3qHkBcbl5AX0rsB6OHRTi1r0nNb3YOy5RFizWixeumRXT3uLvJ
         vKAYTUhRsArTywq5o4pMGH6tHzUgYdCL5kZBE5ztVWZCdsB10UPdq9wy8H51cIpViNHe
         VFuJ6tTDe7DEmNb4od/w4uxvzkGhVumgz7SvUFZ7bLeWkYNWUIKG2Ebqp8TWPdC11WI1
         L2KH/wx1AC0nbZZ71QbXwXhLjhYWNixqvvJu8ymDN13giM6TJmdJSh49hd0e6DoS33Hn
         Ey3eUS8fkW+9NHNrANna9ge+lYTlD28O3Z/qErusiC3nTgCFiycBCXEpVx9RKNFeif7z
         Rniw==
X-Forwarded-Encrypted: i=1; AJvYcCVSyRTfzJ4o2NhaQY8wF2rlteVvGqAslvtozcjaeX8DgNUQYGdmdGhPYazAjJYpys0hLSGY/t/QNydh@vger.kernel.org
X-Gm-Message-State: AOJu0YyH5339eDjBnp/LaC8ONNOHyNIY0IuURfJQD+r9zHxI3hrbJMd0
	HN4zy+wklLu2ounrju4b3eff2gryLj6EcaTUhn6k3eTjRZzUsDKCmuCxqffdFp4=
X-Gm-Gg: ASbGncs7fFIBLcL3ZONx8REeO75Yfoz8jUCV4ILCavoNXeEkcb1gvppvrrTG478c/xV
	eNPBQ75qnC2IMhkp0HZmMLv9T7s28MzHm4eIoRJ7LowS+A3aoPmKBpeWyNbHayPik2TtJsVcPX0
	SM2X+SndLjwcr19jwfQZD3c/3jnjNrKae4CtGhiy3r/4Fg7CaMEy6XqVsWjyJxgOLWySsGJHa/A
	Lwzvl+hSkH0rmHLh54/1buqQDN1JQ8igVIE5tnQEeQLxcQtbO5QdDGdQpD/AwBJjnO1wC80dw9w
	iR5vY05eN8FcYJBh/XyYvJ/bB+zhx7ytXHhdKZdzA5jfyg==
X-Google-Smtp-Source: AGHT+IHS1WqgQkIx/Sdk7zlN3zZOAZuNbmdvKuf/0PVXS4VuRqhbEOl7O6hKLHRinTiVbfdiOSnO1A==
X-Received: by 2002:a17:907:3f12:b0:aa6:7220:f12f with SMTP id a640c23a62f3a-aac2ad8abccmr1116056966b.18.1734887164295;
        Sun, 22 Dec 2024 09:06:04 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:06:03 -0800 (PST)
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
Subject: [PATCH v6 15/18] arm64: dts: imx8mp: add PLLs to clock controller module (ccm)
Date: Sun, 22 Dec 2024 18:04:30 +0100
Message-ID: <20241222170534.3621453-16-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 0b928e173f29..861bd4f4dced 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -751,9 +751,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MP_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MP_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
 						  <&clk IMX8MP_CLK_A53_CORE>,
 						  <&clk IMX8MP_CLK_NOC>,
-- 
2.43.0


