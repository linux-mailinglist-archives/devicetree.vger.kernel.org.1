Return-Path: <devicetree+bounces-19757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B13A47FC48E
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 21:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CCFE282636
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 20:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A6F43D0DE;
	Tue, 28 Nov 2023 20:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eup6auo/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1916C10F0;
	Tue, 28 Nov 2023 12:02:31 -0800 (PST)
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-35b2144232bso18675005ab.3;
        Tue, 28 Nov 2023 12:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701201750; x=1701806550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ibsGyTZf61SfEgsm2PP3QRsv0iL7gL9l/CsASyyufMM=;
        b=eup6auo/Nymbv57GXt0t1NuDNdPiuK0YkZaDH96Ve7X/tNu+EPsc8ggj6kQw3jti48
         u8siR8169P2aUNwBXaP4WOG0aAEBFc4bhiUpD69E2olnIiaUGFMBfJcgi5Q080QD+tIN
         fPxFIb/5MLnEl5zIQxbyIec/aDh2/SH6LRNFFPuXPAzgczHhdmRgS0C8HbbeqgpzxKr3
         xbeZs7GQYNcnIOX3eX9SNtNnsdhMPOr6VP1FaNMyRiKZ3jXUFut9mS0XofUgwic1U/mJ
         8ZVyZyyHI4Rg2PKmPlivA+R4RxF3KewxJShvuSX4lubmQ2bVFXgMAEMQMVRaDiIu6lbW
         jVJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701201750; x=1701806550;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ibsGyTZf61SfEgsm2PP3QRsv0iL7gL9l/CsASyyufMM=;
        b=DYaz7GkJlMsfdhaHkuIr24NZPzRlnJOwV9ortUre6B1pVEy2C4ojKUWhM2OiMNt/vn
         Dl7IgLUDAYdiU2k0At/CbCQK6R6LEuJ1aUNrICVtWeit8IIzlHi0tQDagk47cwOu/PcI
         7mrVz7nLVGthdiU1gD1kjla+M9hE1sDpCERg0ZRXihePXclXNRG34/bISfWBZ2dcS1SS
         d0sC++cTENGBB5QrpstXvQd/PluO/cxGEF+bqJSmdSthZNs7n37l9VGT+Wy3BQIl32Ul
         AIUIQt8aQ24lJnUvV9S2iDIQAhPGsRLU4bcgoDrm0NfWCLTm7GrjGnBXz7VHSsAJzusv
         KvbQ==
X-Gm-Message-State: AOJu0YyMqoaofqq01kw0waDGlRrAbSCG1/CHD95FdXb7EvJCHxrJAwb8
	ICegLjppRCYvjk7/uNXntzA=
X-Google-Smtp-Source: AGHT+IHZGj5ke3/R+tG8VEDQtV0E80pXplfDmCyK5iq+kenlAQB37h7HH9a2y/L1fxlfGBTbIpPowg==
X-Received: by 2002:a05:6e02:1547:b0:35c:c4a4:2537 with SMTP id j7-20020a056e02154700b0035cc4a42537mr9447106ilu.20.1701201750271;
        Tue, 28 Nov 2023 12:02:30 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9cf:804b:3499:a67b])
        by smtp.gmail.com with ESMTPSA id bs12-20020a056e02240c00b0035d21e48d28sm323392ilb.8.2023.11.28.12.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:02:29 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: imx8mm: Reduce GPU to nominal speed
Date: Tue, 28 Nov 2023 14:02:16 -0600
Message-Id: <20231128200219.226038-1-aford173@gmail.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When the GPU nodes were added, the GPU_PLL_OUT was configured
for 1000MHz, but this requires the SoC to run in overdrive mode
which requires an elevated voltage operating point.

Since this may run some boards out of spec, the default clock
should be set to 800MHz for nominal operating mode. Boards
that run at the higher voltage can update their clocks
accordingly.

Fixes: 4523be8e46be ("arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core")
Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 669fdd2c54e4..b33bc4855e5f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1402,7 +1402,7 @@ gpu_3d: gpu@38000000 {
 			assigned-clocks = <&clk IMX8MM_CLK_GPU3D_CORE>,
 					  <&clk IMX8MM_GPU_PLL_OUT>;
 			assigned-clock-parents = <&clk IMX8MM_GPU_PLL_OUT>;
-			assigned-clock-rates = <0>, <1000000000>;
+			assigned-clock-rates = <0>, <800000000>;
 			power-domains = <&pgc_gpu>;
 		};
 
@@ -1417,7 +1417,7 @@ gpu_2d: gpu@38008000 {
 			assigned-clocks = <&clk IMX8MM_CLK_GPU2D_CORE>,
 					  <&clk IMX8MM_GPU_PLL_OUT>;
 			assigned-clock-parents = <&clk IMX8MM_GPU_PLL_OUT>;
-			assigned-clock-rates = <0>, <1000000000>;
+			assigned-clock-rates = <0>, <800000000>;
 			power-domains = <&pgc_gpu>;
 		};
 
-- 
2.40.1


