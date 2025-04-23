Return-Path: <devicetree+bounces-169692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE98A97EA1
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:05:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46A001B60232
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 06:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B21FD26A0FD;
	Wed, 23 Apr 2025 06:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="KLCB9KX6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A198A269D06
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745388207; cv=none; b=NIMQ9GkwUxgL7J9bvZ2qCEgc6eC+QbwdLh95KjZNrynSqxj70PKaCJ8OKgcblzkYOb4Tx0NJ7YgjNo0GN7GsGUpWcejIvX3YIhGkClGfUZTQguHjCxDLpYzMh1OJSNHwYJEnZt2wqG+ZIumnGVBcDAKdU9NBx4VeMqUGT1Qs2vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745388207; c=relaxed/simple;
	bh=7yYZJd86bIYU+vT8RAjY7wEp1oq0Xfmfy1RQITDVRe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AG1U09MsmS8hdqQRfCAb/Mb021gVz1PWW8M44iwp1vYvguVpxhpubtcvpS2ZBms2LUBQfI26NOEZmYv9m/XTlMwEiAYVs20V2XiQ7SKUg2+XnPSYFRA1DYyNM13FlPyIu3+9gF8sq5YATO4pifezz+ud7FSkwvs0EA0Z/0EgA2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=KLCB9KX6; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac2aeada833so119417566b.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745388204; x=1745993004; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=KLCB9KX6r6o957n+xQESPWLdVV3PHVVIOekAlCvLhuKm0Hz7U6jcN719cBB3sv7NOQ
         8FsoiuFksxx5n4VyKCttftr9EnpY7qzc4Yb16c629LKio3VRUOzizFiDMx2x/Kl8wLJl
         dbHswO+j3+qAvVBlSFYDpX1mA33+VgHm7wdTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745388204; x=1745993004;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=DFzHRfYgalnbNuezOQkWdourZ1HF3IR3ebdjzW8EipbMQgMsOaS2rBwlwONICB6/UH
         TCOOuWtUvmAJkafMczSnQIyzbZdBNkfZLCpwITq65GONkwWYHUMRv49PEhb3lMOepqA0
         234y6C9t1bBjGIvg2DUAY1tnf1AZDxILiPmdYF5Zjg6kgvTXCL3xg9hC0iN9Y2IfEzGF
         mJBmkdjaBDAUEH80M3fRRbq8VPUt28ffKBXNXwc24W8RlMpJViCCX6XuVhagheUgr7X3
         PmuxftxyoyDHT5kjO5+3ib+bh1oz6IaoeKzoiOmLXSbib8ug8JJw6Wi2r1+qi7nFRAKH
         IQZg==
X-Forwarded-Encrypted: i=1; AJvYcCU1o63pnuXJo8a+7mUzJ5WpC6hXyirBcNrxahAql0co9NFHSY0jaN9XeQC9PuMNRjeJZ/sMual2Disx@vger.kernel.org
X-Gm-Message-State: AOJu0YzrDBOJFEiQGyL7QG2OviYyoVUL4k+L9Y3n1md18BoX7X8g+5Y/
	Q5YrEwGUYdXCKSR4xN8FryORkCDP66QflTbNi1V4WcKTL15pkfrkVg3/izMujFE=
X-Gm-Gg: ASbGncuw4Jcvy3rTkVLfcVioFk80q0cXdtvOwS21CNep4eWjATVR2u6BaJFjFs0ShNM
	03OHal1jymX9ss8kD1axzX+coHBohD+xXIHkJB8bQVhh8MIlJtbNpnMkajs0BuCbEaaUQtkzpqP
	1pnq4BlpGgoTwZJvmvX/UvXe09sQY13aCwzkxT0s28Ew7/dAyqYdkRndnHR8rXImAiCIIMA7AHI
	61u1mRk88peCethtxAaDeudY3O08oE84llgsXZ/X7+R767e10hXvCDEF2kwZAVl2t42CstOIyLS
	Bi6/TimC4ZUCkZPcqYwWpQgvk5HHns/CAUtazQzwqvEOEfugm+sP8yimY0mPiIGSm/SOXyhQKZE
	LTQcZsqHWGePQsmY=
X-Google-Smtp-Source: AGHT+IFZSf+bG+KI7r41cPCeoQNA0TACINpcw/DiMJU59t/n7F33j98DIG9obiHLOdT98I7Ur4zh6A==
X-Received: by 2002:a17:907:1c94:b0:ace:395c:124d with SMTP id a640c23a62f3a-ace3f559e71mr99328266b.25.1745388203852;
        Tue, 22 Apr 2025 23:03:23 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef9e7e6sm745234366b.162.2025.04.22.23.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 23:03:23 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v11 17/18] arm64: dts: imx8mn: add PLLs to clock controller module (CCM)
Date: Wed, 23 Apr 2025 08:02:34 +0200
Message-ID: <20250423060241.95521-18-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
References: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
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
index 49be492b5687..01013c1fd61d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -643,9 +643,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL2>,
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


