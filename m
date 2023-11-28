Return-Path: <devicetree+bounces-19769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3B07FC7D6
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 22:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7E77282591
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 21:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC5F44390;
	Tue, 28 Nov 2023 21:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="masbeh8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B859C7D84;
	Tue, 28 Nov 2023 13:18:41 -0800 (PST)
Received: by mail-il1-x133.google.com with SMTP id e9e14a558f8ab-35ca9a9719cso10908175ab.1;
        Tue, 28 Nov 2023 13:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701206321; x=1701811121; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UL4SChusK1lb/YwOQOEddQGq0wDopSfaIQXyfIQ8Eac=;
        b=masbeh8U9VmFJHd2cs1cAfXkTnc1KLpYf8TgJR5u7xXxQlY2QzeeXthtb7SZPRHBrA
         W0L7slCw1xuyDnJtcbsRL0R62sKFixgd4AQKL7ryBF/C2fiJ67kzwrgBqYTkq7e0L3hE
         WbR8wGvLURtRqUYLHecp6J7q1aZmrbgNP2FI5bujFexraVEyJ0aKY2SE6ovl3cvBgeCb
         977NZj4x8+edMDncJS1QXv0i9fW2AhCxua+6LCTyIzQEbrw7G2ghNNXvNtNv3WuVOWOt
         y15raKYRUvm2kLT0V9XmcQ5oijlidCiCsmPiJkpYUkaCMxpnviaE2nkoahmTTm1o144u
         4YkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701206321; x=1701811121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UL4SChusK1lb/YwOQOEddQGq0wDopSfaIQXyfIQ8Eac=;
        b=SvRKIkX1bCS7l8c0SGKz/gU1lbG12VoFvOfCaoN3Jn8YeYIMmC1F6hXKT5i8pkEblV
         GgxE6e2lkjEfEgeZzfOxKTfT5TBx3o4ruqhZGxjZAIbQh3ABoXlFSYUK5Bm69UiOKAKC
         YTAIDduRrtAqdY6liroPwg1CjkQsTXi9xzKsqTWQRkICLqEitWQbfv2SaVuvURTk0b1B
         r//JwJyPIle29AQgGcdU7bUjIOwFtfDDmTcHXXJiCm4ODOVx7mz3hsnftIuyHtKgMd+J
         OYUrqGQEc5QJES/nt6rcF/ZIey4dwGzNyVRS3rxI1NgI1/RNk8rlPOsPFGJ88vTrVpxn
         Zwfw==
X-Gm-Message-State: AOJu0YwWop7CjocomSVXdg17at/OG2lNHDjTEuLx/PKIfOcxUGPz3zEL
	sBU+CmK/1c8ldeEVlcXXFqA=
X-Google-Smtp-Source: AGHT+IFerwHWb1cSOZdOoNCEQVsDbqmV+rX3p+k4yOtxnBCjIoKdpfjSYyAA75sfEDZiIctoS0vdJw==
X-Received: by 2002:a05:6e02:96f:b0:35c:ece0:75bd with SMTP id q15-20020a056e02096f00b0035cece075bdmr6507603ilt.26.1701206321002;
        Tue, 28 Nov 2023 13:18:41 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9cf:804b:3499:a67b])
        by smtp.gmail.com with ESMTPSA id f15-20020a056e020b4f00b0035cb9b85123sm299991ilu.46.2023.11.28.13.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 13:18:40 -0800 (PST)
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: imx8mn: Enable Overdrive mode
Date: Tue, 28 Nov 2023 15:18:31 -0600
Message-Id: <20231128211832.313544-1-aford173@gmail.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The i.MX8M Nano supports and overdrive mode if the SoC is given
the proper voltage.  Add imx8mn-overdrive.dtsi file which can
be included by boards who support the voltage necessary to handle
the faster clocks.  This increases the GPU clocks from 400MHz to
600MHz.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-overdrive.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-overdrive.dtsi
new file mode 100644
index 000000000000..5d03fb893e90
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mn-overdrive.dtsi
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+&gpu {
+	assigned-clocks = <&clk IMX8MN_CLK_GPU_CORE>,
+			  <&clk IMX8MN_CLK_GPU_SHADER>,
+			  <&clk IMX8MN_CLK_GPU_AXI>,
+			  <&clk IMX8MN_CLK_GPU_AHB>,
+			  <&clk IMX8MN_GPU_PLL>;
+	assigned-clock-parents = <&clk IMX8MN_GPU_PLL_OUT>,
+				  <&clk IMX8MN_GPU_PLL_OUT>,
+				  <&clk IMX8MN_SYS_PLL1_800M>,
+				  <&clk IMX8MN_SYS_PLL1_800M>;
+	assigned-clock-rates = <600000000>,
+			       <600000000>,
+			       <800000000>,
+			       <400000000>,
+			       <1200000000>;
+};
-- 
2.40.1


