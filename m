Return-Path: <devicetree+bounces-19465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 030F77FB106
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 05:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B156C281C53
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 04:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E211D506;
	Tue, 28 Nov 2023 04:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="APLgs9RD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F31F21AA;
	Mon, 27 Nov 2023 20:54:30 -0800 (PST)
Received: by mail-il1-x12a.google.com with SMTP id e9e14a558f8ab-35ba5e00dc5so20931395ab.1;
        Mon, 27 Nov 2023 20:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701147270; x=1701752070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3SKlaGhSsAL25beNhK5KHJ+yWzkVMbOPMoVfUG9EKvw=;
        b=APLgs9RD29JW/gjb+vgwGv0z+MYKtBX5ymih/2tUvwliqVg13qsNPJWmy7UyUTfbcc
         g6WmffcPYgUcvgnVHIkLyPu2AU1IrOXzr0Gd9NJFZZLRUMbgpv213h79BPYMHbPAQTLi
         14J8WpMbb/dMB9Xyc/mqER7IuCkJCWCYP/ya/afbZRLdpPLHAGkSTfAVrA1l3TtY3c2q
         XaDTNnthl8HX6AogpA2p2Ti4zTp8Xt4ijEceUO/vZNYrmwuEs/MLuYN1gnw5wYhOVjZc
         A9O7Gd7ElIb2uQH/Pyj2/RTVyXNikxo5076H9jWPmxEn7D5qkaUi4TLBgAep0y4T/ncC
         TjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701147270; x=1701752070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3SKlaGhSsAL25beNhK5KHJ+yWzkVMbOPMoVfUG9EKvw=;
        b=MMKoE3Gohg5laY3NWuhukZbZdMpTHl0n56Ffpz7V9wuaMXUL/pYQX4SV/qpqF/nZ3k
         hJB5JnY1YLOXz6IPxmKD1fF//0uGKkm0voo6TIR2NqufzekFmNd9MXbnZ4nGzBFzUK2C
         FHsh84Kj/wtOoTthVe635TuWcqy/sDM0SPH7e0t9IrxsdAGFaAwP+e/dpbXrBA1fDwK5
         7hRz2YUstVmuwUaDWZpim1P0MsB3NuyC1hK9V//CponSWR6AsNZdpzOVm2+R2HKLTaQ6
         2LPqSPZxN0b1zJm5LNtTkBxj781u81BIQrnRh1EFaRI8NtgdGX9vRKDjnoWMqrPm6PiD
         pkyA==
X-Gm-Message-State: AOJu0Yxj6mBK/GPQsw9fJhYwcO/374XUjEhpj+u7TfzZ1E0U/xQL2rnJ
	TdeSP8NhRuOL1jnDu8hzVj4=
X-Google-Smtp-Source: AGHT+IH+8mU+usPNnE6Nb7VCm7UMBVeY098YDDcNFPbxmWBxiyZdGBeVDnpatUnTwox2uTSEh8Qtmw==
X-Received: by 2002:a05:6e02:220d:b0:359:4376:6615 with SMTP id j13-20020a056e02220d00b0035943766615mr19132843ilf.30.1701147270115;
        Mon, 27 Nov 2023 20:54:30 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:5d62:b359:8b5c:90ac])
        by smtp.gmail.com with ESMTPSA id bo33-20020a056e02342100b0035b0b05189bsm3357251ilb.38.2023.11.27.20.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 20:54:29 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: aford@beaconembeded.com,
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
Subject: [PATCH 2/3] arm64: dts: imx8mm: Remove video_pll1 clock rate from clk node
Date: Mon, 27 Nov 2023 22:54:14 -0600
Message-Id: <20231128045415.210682-2-aford173@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231128045415.210682-1-aford173@gmail.com>
References: <20231128045415.210682-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are two clock-rate assignments for video_pll1, and the
only one it should really have belongs inside the lcdif node,
since it's the only consumer of this clock.  Remove it from
the clk node.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 8d872568231d..a3dae114c20e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -647,7 +647,6 @@ clk: clock-controller@30380000 {
 						<&clk IMX8MM_CLK_AUDIO_AHB>,
 						<&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
 						<&clk IMX8MM_SYS_PLL3>,
-						<&clk IMX8MM_VIDEO_PLL1>,
 						<&clk IMX8MM_AUDIO_PLL1>;
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
 							 <&clk IMX8MM_ARM_PLL_OUT>,
@@ -657,7 +656,6 @@ clk: clock-controller@30380000 {
 							<400000000>,
 							<400000000>,
 							<750000000>,
-							<594000000>,
 							<393216000>;
 			};
 
-- 
2.40.1


