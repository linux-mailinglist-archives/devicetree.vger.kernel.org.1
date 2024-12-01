Return-Path: <devicetree+bounces-125835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D8C9DF6CE
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:50:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DD53B2251D
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23AA61DE3B8;
	Sun,  1 Dec 2024 17:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hPNFkSUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A781DE2CB
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075268; cv=none; b=pcHLIV8cov9bgpqnk6azFMfBfeGV66zobYFiljkrFr35O2ilknGptxIKVlcQnMP3wB8SwYFl60UhtcbL4ZXYgtY+Qj+0J+EbqT8IFjrjymY4SbdQr4TRTcbpmYEXQmhKMB+bxj06utKmAy3XXo2l729jOAQZSrxth9aHeUjd/i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075268; c=relaxed/simple;
	bh=b5sQPSBRgo47tB+ebeagJ2XOKAg7lFzF2AsAXWJ+C/4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rBap0pfpbw5Qer2A1zUK9PpQdCKC2J0a1REO0XW6tjMnC70BmgCBjHu/tplODIcddQIGwwgtkMiCt66A9/jGTi3+aPc6E5JucYXHpUMOT4wrTf4L+rcH8PCd/uUT2seXrcRVSRV+xQsaSpETEYNb4YuJyPlalD3dqvFMP7H7+gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=hPNFkSUj; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa560a65fd6so600331366b.0
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075264; x=1733680064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a/0iXUlDnHB4vmCkCvqYino8rMZyy/qKapLkvYLstbs=;
        b=hPNFkSUjAPjJUcejSQC80M0Kw+iwjQ63s25Kj69VTsFkD6UT1riEL1Oeg/CnAPQje4
         IZQd7kFjWtAR7ULcy2VPaz7Kq6p4ozQcNgrRaeczDxxF8gfCzsN1oKUaA7eEIIOYuAzs
         GstBHL1MN0zfRVujaC2DtV6TZBbqHR8/BKytE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075264; x=1733680064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a/0iXUlDnHB4vmCkCvqYino8rMZyy/qKapLkvYLstbs=;
        b=kW8eBlwK8LiRLtAqbXnSLwOxpLNkhDDMPGSK0hJHToAd/FHdcEYN+If2IOdQ8tSB9J
         Lx4nZNqippcSE9LAXYHHeSLxQhiXGwoH17w7YpF0ccE5WqWQq5cw2wmm+etz6+yN1DlZ
         WoGfgcqv5iUcNCFWqhtfiVBAO/b1cWflZWWlQB7DT4Ym+dwF6kbPixiyhjV+cbEqVQpD
         fNM+I+0txyZgVmgLs3ftKoZsJoPoaKKuyI4ssw+Nne/6gNG9St/npm5r8f5+A/OvAUQu
         5A3YbinI81auFZJDkWLwE8CYqOnUQPMiB1KZ6m6nWUaXY7+a/IgqCNF7AWi8Kp7JCp4J
         RrZg==
X-Forwarded-Encrypted: i=1; AJvYcCUSnwCgeXpg0YUyAl2Ya5gUnAo/6SUaZEktoCpZi6uvWeGYHDaTwVq20bVbTLLgZMtH3rnuU7hL7Xz9@vger.kernel.org
X-Gm-Message-State: AOJu0YxwX6O3sdeXKIWOZbXuFSqylF/CsUDXsBCXBolML5xy1zWwM0u4
	0qRc4btzUE8XeoHqFGZJBMXw30pFp60sOfHMpVQQw/NYrgW24B65t9IYnjLdaNo=
X-Gm-Gg: ASbGncsvdZvq996iRCTJseueYGJNz0PsXOyxnrrOnUbztEZM8FqhtEd/74ImiUPmGh+
	B9KAXWvMselD8v7Xan9rWqWdeSpO/13UUYFwB97XxjCgnY6PCAk3O4F7ikzkhPoQ7V5layyp4uF
	KUlvimkHnbcbZvCE0IQU6tzcC6Jybq/gn66TFUgBFen3Gpekn4b8PgDV1hOGhqpr5gm3VdD07V1
	kqhgmfHTThvNUEtwF2FR9IsY5CfjdO81cSliGP0u/xPo/ENTkH55rHBZwAnfIikDtzbs2E4sMp8
	Uc2GODgqHf+CNu68V/4VQCtJiPVtoMtx98gwQTY5iIpnFbTUl5O4S/6ZZvEtKTFvHI5VQCJx90R
	xaIQH+zL/oWCXeetX
X-Google-Smtp-Source: AGHT+IFj8fxBbCctJozB81f2fryKqDo2iAN8X7SxR3YpQJadp6U2uwo7YTwRhSu0ED8hkicMtVTnog==
X-Received: by 2002:a17:906:3cb1:b0:a9a:5b84:ac81 with SMTP id a640c23a62f3a-aa5946e6d03mr1472151766b.31.1733075263673;
        Sun, 01 Dec 2024 09:47:43 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:43 -0800 (PST)
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
Subject: [PATCH v4 14/18] arm64: dts: imx8mm: add PLLs to clock controller module (ccm)
Date: Sun,  1 Dec 2024 18:46:14 +0100
Message-ID: <20241201174639.742000-15-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
References: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
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

 - Added in v4

---

(no changes since v1)

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


