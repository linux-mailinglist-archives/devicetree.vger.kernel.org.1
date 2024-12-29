Return-Path: <devicetree+bounces-134578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A14AB9FDF7A
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:53:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A695161827
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5E819DF99;
	Sun, 29 Dec 2024 14:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="OfKNEyof"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677B919D8B7
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483857; cv=none; b=nzTuwR4PX6oey1lm9cn/CdbJTrPNWNmRR7EQ/fLBC1fZCoqdCFhOI49qdwF1KVNuhJ1/7X21Dg1Rh2pef4O7Jhzd+mEnRWvQYLeLlyfhkUFC98A7+NOnNFl9wUT6oDJcaQJ4FSDf/Po7S8jqvQ1A8WguU8VPHm91hkb9NOIQJR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483857; c=relaxed/simple;
	bh=7yYZJd86bIYU+vT8RAjY7wEp1oq0Xfmfy1RQITDVRe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h687RdPtsVMTMhAhRdEkM8eMTXPF1fwa4gBMpV5p65T2fqz+LjMGNTg9wapgVJN4Or8RV0FhkHE2HmSJiOF7IsPbT/bt0o3mwBjXkm10TdY4UxqgR4yGKA5rTYPh0LfjuGuGKEXCvITTlKefw2XqUt5BDjj1sY07IBvmYidoAVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=OfKNEyof; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa67333f7d2so1239468166b.0
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483855; x=1736088655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=OfKNEyofogqbMotCEeERoUEudBB0h+IjDOlbO4YGfnxvOugNSqB69nqMSqaTohXqCs
         55M/+jvAD5u1o8xvEgrHTsZ1+CpjlUIQKes7XC9PqnfTJV9+YXC9k124gjEdxoV6hYS8
         npn4PxM/FIqQqBfp49Tae3h8UKjoF2CMKu/nU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483855; x=1736088655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=gLtjU7Dos5YrRYRlJSNDOrdem3Fv1O4/a3pFhMSeNl5vxpV28NYZQzUXKIO7dGKXIw
         0iZITaQvDL+TYy7tkI47K6Xh9e6VsqtLERfaZKB/imOdyn6lChXRbHT2pO5HCEgu81fX
         RiLdPrHw5aRKTqHUpyvTd8KRk59ioOSlV2D16wRuITpnO83msJvKoGoST3m13kB4C5La
         ZRIs7PErWafH4ko9Az5+dUj8yvisSvhh4VAEYx2qnRrVkub6t9gSjeHx8UiXZRjVE3QQ
         5U3arC2GP4SeXN19uo73Ln2NEwLoty3KBv5E5xiiFHKfHu56sr0AWbf9TkdknQXc4/YJ
         QaAg==
X-Forwarded-Encrypted: i=1; AJvYcCX6xq7rZK7khYGCRBzN4JAFdlMvOLJPrXyYi0Zn/XyG3RJjZy4W73pygBXgVPqvM+JgnDDLUY3F5xsi@vger.kernel.org
X-Gm-Message-State: AOJu0YyUH6xBe9Yrk23FaHgJ1c3WkO0YIM8NKBCh2bEtgR8oXnLfpqZm
	ry2VD7kb9onS0AuxCSaduBEAK2S80aR4f70bDk/opNs/YZwp8g1pCSiTAST748I=
X-Gm-Gg: ASbGncu//X6RVHkX6lIxut8lfEJVK8dQkOhToM14BPi2gXFvNdVy6UDYX3w5/Fsa4dM
	3NIRV4LFtYtxanRgtx5dsxkk58pY/dKNhQOi+rj768XchlJVVzo3XMHLK+jd2EDb3bkJmhlkjJL
	0gfJuDhPHfqNoZYxETYvfjDaizb0UV4l1uEWmQJMi8r4jqrSoga8GGXjRPCu5gPri1R9mLUZHck
	fSKHD77xt7ACzhFs+QuR+fWh5nc2MrXL0FiS6Kpan2Sz30fpTKIT35/j7q+vJB6nlKKqdpWEKuo
	9jXUVP5SntpURFK3mG7P5g==
X-Google-Smtp-Source: AGHT+IGu2N+6ZD25BGmle+g9l4PupNH1HacLiS+Z1hhM3CuT2AA41uFWrZ6hOnOskLaUH72Ls045WQ==
X-Received: by 2002:a17:907:c082:b0:aae:93aa:9ac7 with SMTP id a640c23a62f3a-aae93aa9bcemr2063864266b.50.1735483854672;
        Sun, 29 Dec 2024 06:50:54 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:54 -0800 (PST)
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
Subject: [PATCH v8 14/18] arm64: dts: imx8mn: add PLLs to clock controller module (CCM)
Date: Sun, 29 Dec 2024 15:49:38 +0100
Message-ID: <20241229145027.3984542-15-dario.binacchi@amarulasolutions.com>
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


