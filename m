Return-Path: <devicetree+bounces-133383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 425E19FA719
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B304516314C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D9AC1ACE12;
	Sun, 22 Dec 2024 17:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="C6lsCuEn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94591AC435
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887164; cv=none; b=lHPJT//WZsjazbwJI9RWJlJby/6XpQoWrYFvWtquWe7hSBaLYsEawObdiyYeTrdtKKET/iXJ9bcXJz1+ZuMnCeaR6Oz1eFnmRY2HzWKEIj7S9LXGzgRcrtKmOkLbcdGl9dGSQdrZESWvkvretP9a/Ya9GRaP661+5IlbONL9ClM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887164; c=relaxed/simple;
	bh=2JhFTNbz+mPx9HqCC7mp/y2AepFst/c//AlKmHPYdgw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c6YuGCNXZG2psvqoYnkhNPRYuJ+zTjmYRRyoKrvflsHBeKYyd0Vb7/BPqw295SCKU2Kq6nKTrxGj0jnPfCfz+dkUDZ2trlWRDRvzkMYVIcMqOvqo1u0Ozp0PQPk4/imL/tEeQWWzJmiWA/C0Y5UvlwaJ4AyTzwmF9DV4CL9rrhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=C6lsCuEn; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa69107179cso599340766b.0
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887161; x=1735491961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2hCs9DBY1WcnrRGyr88Evw8OuCDQNrA4ENDf/4vgOw=;
        b=C6lsCuEnOM3UaylkKWBW0c8ti6qtqMMAKtfdsvx/s8ONfSL6Wpc0UmizesANy6km3n
         i7C03dr3xQj+PCrQpC7RKMBRPPJNu4UHswapLU2OhBdWW+U3AS0IIRwR0VxocWx5TJIC
         a+qP/EEKzE7FN8M4JLqrmMXbds0nczC0t2dr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887161; x=1735491961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j2hCs9DBY1WcnrRGyr88Evw8OuCDQNrA4ENDf/4vgOw=;
        b=aWnYrhqPTNzPUORgltb8zcxzShmJikFUYPykl5OP4C48INrW1vuGQzYxnjiV82cZiv
         UZHjrR0Ah+MX+PPOOHM6MDRTMP95dblIeHXiVz+nsyY5YDwA19CGTzCw+cHd18lEz2n2
         Ki6QRo6OursQXyX9Lq2oltrMjRk/ZM+SszZb4HyAd5O2/Q2g3gUBRFy1nkFb9C76f0KK
         JuAir42SI0xFhHUjocNChBMZ0w2a4T+XW0J9U+/I9iX5XwTi80FJ5H8hMuQsauSwfnuj
         V3vi7Kg/HqVr8jfUH1DDWul5a7saNehPDp40NbSj92AZwV4rctf8DsYFWlxqwVbCRi6l
         M4qA==
X-Forwarded-Encrypted: i=1; AJvYcCUGQjacxDzSXigCQh/5fpm+u+U+Q35bjwtKnp7+kh7V489UfxQYU8NiRK3BZkVA23sPwNJZXR2PEaPm@vger.kernel.org
X-Gm-Message-State: AOJu0YzTqxNY2epJb1CI68yFMxCKbYti94RdTzl9bmy88cFEdyoHHKsz
	gpAD1e1oyJuc3Wdkd+OueKDUywxfj2jfhFfP7sQLVtgkHWrud3JmFBeWeEqZ/1Q=
X-Gm-Gg: ASbGncuGrS0ZFEbtxav5tnncQ0pAmnC+LnQl0lFlxdUp5YEayOxgu0ha0/gE9Y+uo5c
	oUbiQiTg5Wh+5VkfYzX91nMAnEQJWAWrGpQzsY73z87QYWVbE2j8jyzZyjvPkZoqRZ8guZwvbCm
	9nJd62n0lwrlg8Hh16yekBPvOttXek4lrUB7y64EnwBKZLHEcBSa8JQfpPcTz5zDnLAhdCEVIMS
	4ZvnW/7IjXVn+hpoVPzVbV2OvMua9lJlIFARR1AIuEAbwL3XW23qs+3lPPGkiKU6yXrT/QOpiPh
	7dABQx3AZmGKcXuNkQuLSYPwQvyYCEvr9rwMJiYSlvOk7Q==
X-Google-Smtp-Source: AGHT+IGrdnp4N/NaiyuFY3WnBeZDVSq9Cn43U29rzxiI+9WQh541chHbCDz39sJDsX8w3trYGW8osA==
X-Received: by 2002:a17:907:c20d:b0:aae:8490:9429 with SMTP id a640c23a62f3a-aae84909672mr543216266b.34.1734887161008;
        Sun, 22 Dec 2024 09:06:01 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:06:00 -0800 (PST)
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
Subject: [PATCH v6 13/18] arm64: dts: imx8mm: add PLLs to clock controller module (ccm)
Date: Sun, 22 Dec 2024 18:04:28 +0100
Message-ID: <20241222170534.3621453-14-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 597041a05073..0b35aecb6755 100644
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
 				assigned-clocks = <&clk IMX8MM_CLK_A53_SRC>,
 						<&clk IMX8MM_CLK_A53_CORE>,
 						<&clk IMX8MM_CLK_NOC>,
-- 
2.43.0


