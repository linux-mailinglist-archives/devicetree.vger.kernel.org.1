Return-Path: <devicetree+bounces-139446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC243A15CE8
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14BB93A7949
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E560A1ACEB5;
	Sat, 18 Jan 2025 12:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="eaTglPzz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395BA1ABEB7
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204078; cv=none; b=g/n3E5cTjWl09L9eR4kt7DjgJAxcI7aDN+LqxKLzZRZywJgGD9EqZs1MVD14/n8qgLFI632gokVwYlXYqmgoQvs31D0f7zawec3pk1p/6EZWzs52LmHathRXapopFG6Wglvfn8rDmVLJOrOi7Fvz5qIJx7iBXV0hIM3IpvZOH2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204078; c=relaxed/simple;
	bh=7yYZJd86bIYU+vT8RAjY7wEp1oq0Xfmfy1RQITDVRe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EG7tQbcZONNM3pV88I3gYrjtzAvF6ZUlaWZ9yymRGY6whVMH7yimhKojTUJNGGb1GKxC9McVGKBUfjbD2tg58xImuRv/TR6/c14Z64hT1MF+ZwNjpDxXWYrr07oVp/vUELpZwRkAFim+qN/N85866+kaNGA6l6Iv3g/7hk2jp/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=eaTglPzz; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa689a37dd4so577488666b.3
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204075; x=1737808875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=eaTglPzzXN7Tm5ZjkbAdOnJx63GashaT3qzUODQlzmbdJDMNphujO0z/FDICQkZro0
         DvWvEHl7pg5cKj+jyRdr+0mF9WmJEiTYFi1Q3MiuBmqNS79POdFy5z7kcsa6plbmAxRy
         dskU44q7s56skF+yYbecG5tprJGrvQ70fyUVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204075; x=1737808875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=Prs8TvlBtxapePrGMGI0kkcA6bGy1keT5gzZsII1afYF7eFkbRVIsP9ifAlgoK8a00
         F40zgvRCTauCWMTlgxJcSKOrRyt2TzXhqPvvJywGhzEMeHNHHcUiZk7lS/f9+SDW3Dc7
         nWtK2zjrGKJCMPWS2V2BfdtXX3yPtEoi251Qg+YBNdCvEU9zSq9F69u18rzIzlbZG5as
         +LumbzBKaGjRbUpIdJWcsLyAE06RlUgBvro07JSw8Az6SJgMxKp7vC8xp5x5LPI8nH8o
         a36HeDVUxm0NKzb+q5AhffHpXW8uJDxXWRunSxUt2sh2Km2Q1yqGzWZ03GxkAocq/DXh
         WZ+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVCheRY5y2uebQCUurDFLMkVMy2gaces9tCulaVUTldWTlaw9ELRgq8NfL7cg1b/wMYQs6/zerPJTfn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7j9LT4bB9+soKDQwfD3YxJ1suN9A/vjHCR1BYEKmpVIOgiDi2
	NQnmuQr673Ms2bfwtW7rwhln/ZxDZvcMGXUVmInApjbNPXJWBLFBdqNx46tFZys=
X-Gm-Gg: ASbGnculnOAj3o2Om/QrJI6zoS8/+iQdJ4DIkktKgw28HgDPDRDxfx3VVjz4J5QCAPA
	/04L8xcXFLVWlIqj4+Oycfo4ufiETedLNgoOoLY6h3aS7U5Vl97Y9M/nWATSmzfBsNlRZJrkVH+
	3p51vVJzmtEcFXlWy9ivbXIwzykDAzmVsYmDrHOFv5Z3yqkeErW50mblRlVi1ayUUPA0EKa9ImX
	AXu09vXqtjQVr7BuDEA6p8SBl366AohLG0MWlGy/EbvkNpbo6GVRo/z7+rjxggVzyw1YwwMSeZn
	fcoFKm65qg/MW8XRcgKH89lxobOLb+uX6w86Z3q1snxTXvhzEAAfTJIT7x4LlcuvHNnsw5o9tnk
	aS99ACEsLTFOywjTkhjRRqodWO/2wNaknTa6Q
X-Google-Smtp-Source: AGHT+IGrdiviIu6q9fiYP/RGOjIY03KXNIsY/WbK/qC6yiR83TyBa8iDeXj/6LQlS48GivuMZ5bWmA==
X-Received: by 2002:a17:907:86aa:b0:ab2:faed:e305 with SMTP id a640c23a62f3a-ab38b1b2689mr549230766b.10.1737204075606;
        Sat, 18 Jan 2025 04:41:15 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:15 -0800 (PST)
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
Subject: [PATCH v9 14/23] arm64: dts: imx8mn: add PLLs to clock controller module (CCM)
Date: Sat, 18 Jan 2025 13:39:57 +0100
Message-ID: <20250118124044.157308-15-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
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


