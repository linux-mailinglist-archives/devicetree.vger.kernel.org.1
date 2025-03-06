Return-Path: <devicetree+bounces-154816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D002A5498C
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:36:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F39A1749A9
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6942121ABAF;
	Thu,  6 Mar 2025 11:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qVwCa2pD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13FB2192EB
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260660; cv=none; b=VgqsItaIT7LhOdop/wOeZVe/+jBBrDHlrlPAsSnNOwS3oiY0QxAn8A9lse+uNA09TGDxa36+t5vV3kEZj+tqxZlHQ5+3nc9ro6Md6jh8zhDWIInQnwv20DmAY8b96ApTwXTjfxf4VU4SLuwEfy1YqA1cUMW+A2DjAyxhoySRSh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260660; c=relaxed/simple;
	bh=7yYZJd86bIYU+vT8RAjY7wEp1oq0Xfmfy1RQITDVRe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OqWDTHCWmuBWri+70mWlvP+HyWV2GWlaNTRf3ud1xAFYvElW7kADohLkh1G9byM9qXp1iQ0aB621ozuvOlmcvLm9yhtwSOYJSrZnYJBXZeEtq/9gMixZTlCOGmRB8raeVAuONH7jsM555m0zi7+YlSh+mCd0+i+NISFamiYSkIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qVwCa2pD; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43bdc607c16so4041005e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741260656; x=1741865456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=qVwCa2pDhzlowXcZPTga5a0lXfiD9DBXlQ+VtX6oNpTzsDB+rQ6Xsixz28M0GI5FJx
         +YYF5vygmXrQqOqkROz7kY45tHNyMu6WotpzI3KRg0KPvLB5X5V2AzPAY+SLkOLjfnlZ
         Ctr2av6AQu6GoXK3bQTSioEibh0LWawRyBobY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741260656; x=1741865456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=RA/Pj0qYSk7W21auvgpV1Uk0Z/9bf0MTjhT7pAFMnZD0euplK2kNPgJgQOjrF7HA3+
         IyIxqWCNoq2gDIE5vYIVRuW5oHlbxfH/UCfEj2Dmdm+hdBb/7Se9RDp8bwTq/Igpn8mg
         Fb1DTWiBjz7L+sE6mWB7GmdHUBBXXTSp3aRAKszml0zmKnISHeirvx2vkPEuS3I2chmj
         tvnoe8oI1WdkOSTVj7zvK7HI3X7AxECpH10SHm6/E2YItWuGlYQlu+bFFM2uqf4DUwD+
         ppKgL+U4szpiwAp9RGrYs4MdNs/Y2obOFjBfWZ8fphvkSLlkZ8DEBDJ101e5NeFSPsjs
         uBtA==
X-Forwarded-Encrypted: i=1; AJvYcCW8m7cXJrE5FjjANxHVmjP8haRHmHU1XNGRBmWj7X8tps8M49b9dMrhNfpuUEr9SBFf0/eg5W2tzRJb@vger.kernel.org
X-Gm-Message-State: AOJu0YyV04f5CDCX4jaYPbXPV7WhXvRg7DSefbsEI1oMrw10CK6FLYE2
	n7xXZ21FB6F92KFo6eltWOg+mYf//DNonzmxmZmPQ8ngoRkpHmUr8JgRXYFOA50=
X-Gm-Gg: ASbGncvx3u53DD1KmIvqhXow9l1fxUdDV0G4cHeAfgZ5hRQKOlTTWkpfHbWWUes5SJ8
	X6dF66eFVzxuLF1dkXoU+W/Vk8VUUOilsDWagUnME+dfZmHm5EiQBcA04D6D4TAE4iPiCzDMfAr
	tX86s0UvsNE36g8f3fLcayeMJEs77gfA923hX+snxWDl2DoBtbItH/yj8EOGLXRbv06Uq4fwvwE
	p7NkstfIcCfrLZuA9OzpAhHb07XF3UUD4Ze8rUH1mWstQ7WqgF0FcZb7gPByG95Y9kkkq9pgX0a
	3dGmxibW2aWJ+f2LmjJvaacjHw2y8TlKFQh/hpQZ6xrR4n0QMb+G3Et5Gwl+SpiKgoky60XaFSv
	d8i0PoQ==
X-Google-Smtp-Source: AGHT+IFeKvGyyBqN0xdpou0tHRjJGAp0jFx4x573e2BTr5KjxvJqJCsFOx3f7ZBV0vsm+afHKUXGSA==
X-Received: by 2002:a05:600c:3b87:b0:439:6101:5440 with SMTP id 5b1f17b1804b1-43bd296abc2mr49684235e9.8.1741260656050;
        Thu, 06 Mar 2025 03:30:56 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:4703:aa8c:6eab:8161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb79b9sm1749650f8f.3.2025.03.06.03.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:30:55 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Stephen Boyd <sboyd@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v10 17/18] arm64: dts: imx8mn: add PLLs to clock controller module (CCM)
Date: Thu,  6 Mar 2025 12:28:06 +0100
Message-ID: <20250306112959.242131-18-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
References: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
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


