Return-Path: <devicetree+bounces-134579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B720C9FDF7C
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:53:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D680A188173C
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8566E19E97F;
	Sun, 29 Dec 2024 14:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Mx/asu4I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D131219DF77
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483859; cv=none; b=F/X8EiKxKxx/1Pv3WkBbpL5C6vgMIWFRrJvikM7gpfMjL73ekewiSkiF44jaTEN8xZ7XTbc9ghy455wofqvCCz18TRy5rGa2LPfwnxgoeG5hPkz1nAkBZayb390z2ctAQQOyoXDGuqRBMHbZJpaBGq9kBeq2rzeOYMnx1Ut85Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483859; c=relaxed/simple;
	bh=PC1buv5hYG2W3S8/eU+2VA2jywMzm7Vv3xQppQcKsGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BWwwdrnh5vPbrSiGilCvBvBb40teFkAivgjrpJGkDuO5I4PSr5MB2dyDcmAxI48TzM6Ek5OzWCa9zC0EQo0OybDVcOhJZCZqNwQ1kPhIdJFJ9tHMjzGo8AVjGOfO28jdN9c6Z39434I8Win3X5t/NPOOHm6gq+Oef21qGCoOgUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Mx/asu4I; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aaf60d85238so4228766b.0
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483856; x=1736088656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KTPitaOd10kqEMh4mWJPB1Bs0wTX2XDIfABV6gUcV0=;
        b=Mx/asu4IM4eRmRcdVQKntg8G6eRO0KI7NMkDhorg//kSIzw2ybe/4wYD5yE7DxLSJx
         N4a4UBBCOQflrAvEbxfPnnQkDWy7ahPw8OHtP4Am/dEm8M1oxjaB3IR6gpTi1dpUbiO3
         d4vcSCkjjNELq3sXpu2blpjDBTjB79oc0dzBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483856; x=1736088656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KTPitaOd10kqEMh4mWJPB1Bs0wTX2XDIfABV6gUcV0=;
        b=ODeNTUuLXwwOFGwRiPvHNQVpf2EQnWlKjele6O/R4oSP2wOgKIWjMYO3Is2zPX3qxH
         sF3vAVEBNnjFXLmMUyVIIyLaonLqHSROnYr+sBBsLYMmeB7ryaSVlP5hPzWrHZL31UfD
         wGvAMk5EjxpkWRe+5cf+K6i7aE2bXkCMFjsOtLQG9V/3kTjoqacorihFY5U0g6Rr/B32
         F/GAPMEeyd2yTfoDtHsyUOwK/jVjBt0xHLrwhQU6rmN+A2Mw1FUWuc7WZmsYNLjEE+ib
         K5PKNt45FG+CAaXA/n1pW5AunEcCbuvReX+zpoZcKxpnxesFO93CZGp/4Gv02JksXhVc
         FL9A==
X-Forwarded-Encrypted: i=1; AJvYcCWxodN5H08ryDPxVykW7SpYGE0PAEIco5eFOuaiWKoAlIqb3bmzTO8jdgn7oE/W0380nTK+x8lzHgzB@vger.kernel.org
X-Gm-Message-State: AOJu0YwCXbY4Nk3CtZu/8yMfylfaLA8r4RpPrD1C3gf05EhLsC2Ss+H2
	Ts9mc+7WjuWZ9HJla7EL5tdL3v+Q3qeYi76pxln4/Xs9Wcx7mwSOehV+FHJSr4c=
X-Gm-Gg: ASbGncuA5OLVtQqx7u7wgbOQW5Lv8TeWLIya4uRle+nAluCscJS2zB7HZI3BY6FcZQh
	KoPOmF+UL84H1EXra0Ry63VP9gCVlJFtd5QAkpiJgYdg6/acjIIrWdHSkGMBAO8XBS2x3XL9lTU
	y/MO1+B1GxeF8VqGeHUFrrRdBOVCbhw67nGQc/RiTtpWt3gc2kt+drJdTUi8abXUzYSv/Fst7q7
	huiQQn3TI3nfAMyyETtc0aZruX++wlOJHJyxZzrhOSb4FY5THeTdhatjsCDre6Pk3DtjlPnQlLD
	yA21kE/6znBKskT3YLUqlQ==
X-Google-Smtp-Source: AGHT+IHvQXTsCcZJ8CU1KhAq/G5BDJIBlqOMAEAV9YW5qQI6LW38CUK2eUxP4LJJg+eZZRtCwN8OPg==
X-Received: by 2002:a17:907:c1d:b0:aae:ccbe:993d with SMTP id a640c23a62f3a-aaeccbe9ac9mr2338346966b.35.1735483856193;
        Sun, 29 Dec 2024 06:50:56 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:55 -0800 (PST)
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
Subject: [PATCH v8 15/18] arm64: dts: imx8mp: add PLLs to clock controller module (CCM)
Date: Sun, 29 Dec 2024 15:49:39 +0100
Message-ID: <20241229145027.3984542-16-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 0b928e173f29..eab05170442d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -751,9 +751,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL2>,
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


