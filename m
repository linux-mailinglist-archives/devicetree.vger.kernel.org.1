Return-Path: <devicetree+bounces-12522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2C77D9C67
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:58:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A1B01C21068
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE77D374CA;
	Fri, 27 Oct 2023 14:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="OY7hFvWC";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="bg4Rw4kF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C87E37167
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:58:11 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 231DB106
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:58:07 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507be298d2aso3172091e87.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698418685; x=1699023485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=siUZJrbtt4CbUUZitfpYvjgu5IMoaEGSfOVSP4bYDnk=;
        b=Pgm0L7tRJhbH/LvX5AVP0q7rfMeWn2UAqr1fb0rbRAGGEns0fLKajGpPF4wnAuhWN7
         53Ukqpvrrsr5vaTKiXADbNpVXXKGpFJMTAl9z5ngXIUf0nXP9mxUc7EugwWPKtZFw4ZP
         X0pvUI5vUkMGvpR1L+zwCAzjshJ1lJwLdGKKAWu88d+OvkHXdwhwpCt6NVLgss2sC4Pq
         /SckYtVzJ+FyWkaYZ3g6Ah8BQcsCD5gdhwNeizxCAANf2+b8jm13z3IF1Ac8E7yoC7XI
         ZzrQW6i+XqDhiLRlLNglGKVy90rXFi4OVeML2yWaR4KCUxACgmD9EXD5Z/TcoCbJuzY6
         TTEA==
X-Gm-Message-State: AOJu0YwSL8WN5xVvMH1pPUKujo1UQizblOifEYlQdY24cISJxRAWBO6Y
	Dt1Dmav8NvEjm+CZcNLKBDsgaqtkuL9DLg==
X-Google-Smtp-Source: AGHT+IFAIgKLGk6VH7vnoi5Hr0iBqalaRIIv5ECs8J9bMOUYd1qQwk/xb9BKaP3grYi9LUhhR7OSDw==
X-Received: by 2002:ac2:488e:0:b0:500:7cab:efc3 with SMTP id x14-20020ac2488e000000b005007cabefc3mr2050848lfc.11.1698418685247;
        Fri, 27 Oct 2023 07:58:05 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id e14-20020a05651236ce00b00505a5ea726asm302219lfs.309.2023.10.27.07.58.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:58:04 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id C46E919B4; Fri, 27 Oct 2023 16:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698418683; bh=miupRV8RhYMaqOSEpy6WK8qgDcQilcrGFUgzpsHq5Qk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OY7hFvWCEkQEP6EDnAwC555vF5UQD7Fg4bKlMPoQR5xrymYeEKawK5ycMBQz/4aQ+
	 kZ/ookYYpHKtrR0pL7YB1JUkAEaMF8Qsw77luc49/s503y19KtnFe87oFup38DPysj
	 QAlwTGrTubtyl/yjPb5IrUtD/VhD6LJoUCfR1k4w=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 373911ADE;
	Fri, 27 Oct 2023 16:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698418488; bh=miupRV8RhYMaqOSEpy6WK8qgDcQilcrGFUgzpsHq5Qk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bg4Rw4kFarSLAcR/28UZBplA1yW3SaJXCGFBIJJw7D181V2/gtLHKwe8ans8XE/AR
	 hDAP5d90UyeWAqii9AGWHsVNfnRAer7Beoz4QIidOnavnu8NdTvilb+WLE7efYrCyv
	 TiFMDDnDPjw8HDoZoNnNmcDHf2Rz5E4JrIHs4RxU=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 6/6] arm64: dts: rockchip: add missing rk3588 PCIe eDMA interrupts
Date: Fri, 27 Oct 2023 16:54:18 +0200
Message-ID: <20231027145422.40265-7-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231027145422.40265-1-nks@flawful.org>
References: <20231027145422.40265-1-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niklas Cassel <niklas.cassel@wdc.com>

The rk3588 has 5 PCIe controllers, however, according the the rk3588 TRM
(Technical Reference Manual), only pcie3x4 has dedicated interrupts wired
to embedded DMA controller (eDMA) on the DWC PCIe controller.

The eDMA on pcie3x4 has two DMA read channels and two DMA write channels,
and according to snps,dw-pcie.yaml, the IRQs for the write channels have
to be specified before the IRQs for the read channels in "interrupts".

On the rk3588 based rock-5b board, when building with CONFIG_DW_EDMA=y:
Before this patch, only the iATUs are detected:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G

After this patch, both the iATUs and the eDMA channels are detected:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G
rockchip-dw-pcie a40000000.pcie: eDMA: unroll T, 2 wr, 2 rd

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 28955acda9f2..9b042f97f8c8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -101,8 +101,13 @@ pcie3x4: pcie@fe150000 {
 			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
+				  "dma0", "dma1", "dma2", "dma3";
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 0 7>;
 		interrupt-map = <0 0 0 1 &pcie3x4_intc 0>,
-- 
2.41.0


