Return-Path: <devicetree+bounces-127356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F319E53B9
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05A3D1882D39
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F2BD20E03A;
	Thu,  5 Dec 2024 11:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="G7IOtv9G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6958620DD78
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397613; cv=none; b=mf5C1RjLweYTAdswIwrHZu3Rf4Vt9J3J6576BMrJDsNVlLfkHNmBkfoyL/2HJMP1/Icnmkhgob/Fgn93pj3pa3irLCtsqz9+U3qy0oWRO/tDygKl50Lltmf7j2MLH+4pXG71P7F7iGt9mIeJHTYdew63z+F621aPLlBpBZIlIrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397613; c=relaxed/simple;
	bh=esezWmna9GVq9r7yCdcGJZGlaSCNF6WPrEuO3eSEza8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D2qx/JWuGXt/X+Ua3YhxJvDGTagDQLQd+2B+SAuGCgnj6u++YFVySTVLYftaJNvSIQ/gz6UsouO9ySk6asGC5S+FhY5IlDnosdb5WWZ4WsiMDOX8wijkVgr0+Z8hXeLtauYiZ5fzO2bK0AUcVxVGSkdiPyhe8a/HaE2WATHJ250=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=G7IOtv9G; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53df119675dso1055986e87.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397609; x=1734002409; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=biWMPay2nyJxiRsIuM7kfYUrVvGohPt2+JFfoRTvr08=;
        b=G7IOtv9GcsIv/G+1Y26CEEPqkjLwdqZd7bw3Re7sbjg9mGtZzZ3m6PwFS/qKiE7v4N
         0DZQEKoQv1YNdAoJrqzhbCHhG1dxPsY3vdRNJLJFb6+yeOWx5SgGG8XXj7vQ8REM6KoH
         cBxMtHrAY/aLo5v5bm3jDzql7ITQCe7hgmKEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397609; x=1734002409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=biWMPay2nyJxiRsIuM7kfYUrVvGohPt2+JFfoRTvr08=;
        b=emv0T3H9avyQNVZK1yv+t34Zbsc/z4ZXb/Cz1DuZL0+LuyRO4jV7aoa5IVUJaUmaVJ
         EYIghYJcQURCWSHBNnOXGo3Ee7alIROShiZSr8vT0BCEDyIesEAQR6/QNIuMkRwSIFYP
         T7WiHrijXaHd4Vh6/mXu7pCz4TlmVflPSdoFIktJtEvE/08UegGdK94dkD+f4xIeJ4Le
         OZoC+t11d4L5r4xtZvAPwjnJL5XTf1HIL/TB1Vum5cWsmsnvn8o0OjwzmCv/eQSLruOn
         FgG/QVjjgbp8FeuxrMm99/uDKXsjFIUNfYgH3SzSXZIAtoagWjvJMGUoJzAfo5nYXAWw
         WVIA==
X-Forwarded-Encrypted: i=1; AJvYcCXOlEk8tuOSYoZucFIUUyW1wA6yA8Gw7IrZfcf+1dpi+T7QSHr+5ZJ6rZmi+xtbzhNMp5GE7WEia4tA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0DKZNtlxNqv4jngP8PZMGvvcYmEx9fk1wkPGZWFSCKM3+HwNk
	Urw9T3pLs19nrQJl/yPHhxrB7A4T+HfhKA9iLe4kHCldEg7RxYOvBT9b11njChc=
X-Gm-Gg: ASbGncuTMnqHxHVz8+dSyNe13/vAJX7EGkKcLk36TAQeHuILzvN5QY1GNXGxpm1gC3R
	FFcRPzqlMCVGb8frvDVClM8sNvjINuzLBOyntmmVoi8wychDhjSDtBDuyyKjRKNxntCr279uOXy
	bDxlGf/np7BNsAaGrKflrTlX5umqT8qGTaq23CLAaGMeXChoi993Yhewm8g7/CcApUxbxa3ZzSJ
	ow5B7lIkOCAnmL405D6qaa67nGBGPqmGNbbwg0qKNBFCGtsqtyvbSiR3+LiZyeGvsCyTvfzDqzB
	9p2LzL4eCizYzEEbv/X9AxLgvMZus5tuJnS9sO8i5TLZVQ==
X-Google-Smtp-Source: AGHT+IEWp4UoDnwBUpXtmDUlrG4M6Gl9Nup3DKpNDi+ZT2s/ZJqbnUNyO4bcuE37hxKCpJ5erMuTvA==
X-Received: by 2002:a05:6512:b14:b0:53d:edf6:c560 with SMTP id 2adb3069b0e04-53e12a05948mr6199533e87.29.1733397608945;
        Thu, 05 Dec 2024 03:20:08 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:20:07 -0800 (PST)
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
Subject: [PATCH v5 18/20] arm64: dts: imx8mp: add PLLs to clock controller module (ccm)
Date: Thu,  5 Dec 2024 12:17:53 +0100
Message-ID: <20241205111939.1796244-19-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
References: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
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


