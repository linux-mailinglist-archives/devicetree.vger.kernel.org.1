Return-Path: <devicetree+bounces-39673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE23484DECC
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:55:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 780C02860D2
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 10:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1EBD76400;
	Thu,  8 Feb 2024 10:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YXd0hQMb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8B71B22
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389546; cv=none; b=F8i81/curUm09N1i/TqX3jmYRWZdQmf9sg/jaxggTl3QiANs85nxXBwp2wE4oLO/t2bebxkGQOX+tc+8o4D556iiFhSCjWrsSF3OY258AGEllx79hA1FjStxXeqFUCZazePQ8i74u7nIpgiISw/IJYu042zSZAY7/839Gw92TjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389546; c=relaxed/simple;
	bh=k7KlLAM74mtRXmGluXHTGtPFb6smigMM6Sfa5RFt3lU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mwRoKCL0PPNfSYCuA+ly2mB205nsWlwkolWh4Udjj27wxl9Gx2LbNyZqQbahG5dZKikX42za+snU1vRrSol4hy205785ylA+oz9OQfTc8oi773K/UuAVELgTsbnGkdPeGbHez4RuiNg/1oeltknw4mLWV9yIqveZcxrqIR/Snjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YXd0hQMb; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40fff96d5daso13991395e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707389542; x=1707994342; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=smSo7VSgJLNAbISWU6mt+SaBuWP5qaKLkVu4Ojrrp3o=;
        b=YXd0hQMbnphxHC3VgnGC/1myzUfuIijsArVvLRqVGsKquuJ0r1aAHKV8uUbV69rcda
         QntAQIDsELSL23mxm52Im48FNBWvJpi/YjyC2VIXK0d/zhEtjsYBfXSIci36vIvawf6u
         0gdQ+HLVHpWD4eg4HHwIemJ8hePpHqAqvAhvzUHVgCm9Ju8dmKBeYFjX/8FQDAhp7yEI
         HjnzzFeXpp9OHNOS6K6jhJRxk+kqjHby090C+WvIJbWCz9mPzFqdNL66QWkqIQzug9vm
         OqQNYt2a4XmXTePGIIGeDFPZecrm8/TM5C1iQaNcLZicKszW8GX5EOloVUt4Wqu7N6bx
         JOsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389542; x=1707994342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=smSo7VSgJLNAbISWU6mt+SaBuWP5qaKLkVu4Ojrrp3o=;
        b=mMICMh+F4qJDKA6guEHQsSnfQKGfyB2rIaRj7QrlBZCvrIw894fKn++BYDHm4l2jaO
         o96NJv6Ts387tB4rjnIBzGJUMcKa/BQhDrK8BpzMljIqPbONGTEbypCftzSRUbDeHDmF
         a7Zi48ioBa0AC0JxHjSOr6oajaUu/ESjnG+c/bzjl7VZSUxGhhg4cTCWwRGDPpf5otXa
         CiR9B1pHeDe3U7NS5YmyhzqIw57c8aC51s8MGct7tpG26+BJbMpMz6QaohUzhzTvpTxJ
         f9Vi7lrTBwjQCuWNQ3IXn3xJqntCJfnrzIk3S6azLvBhpHCLhmXzgkvcyLixutwdCgCN
         IWoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZ5O+ZRou0hI8lhSQ74S1kA9Dku896i7Y8OI5GbhJ/avuxW7N31EFHG5XgdJb2oOr2IVrUo+QcDItOloHDASDTIzn7BBOmMXDOuw==
X-Gm-Message-State: AOJu0YymgsHzavAWJxZ0RfVtF+D/DJvWgbjk4cG3BWaoLMyv5jb/+hG5
	C7TZugMaDFS/9L3lUPPyfqxS/w4SYWNbo9w7iiKrOhfCYKoA14IG3EJzD4+hQQw=
X-Google-Smtp-Source: AGHT+IE8W9OBM/Gv6ShRxJOzND/DCObKC34pGKVZq/mINvLljLAlgrSMTn8tquOchi6JM7gxMstCyg==
X-Received: by 2002:a05:600c:4ec6:b0:40f:d25f:718d with SMTP id g6-20020a05600c4ec600b0040fd25f718dmr6035814wmq.37.1707389542396;
        Thu, 08 Feb 2024 02:52:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWdks/CWLFffQPVEFFoXiAMQlf9pFm5WKlMP2xexqyH267x34CDNWkY87Qv9UXbo2Vg3kVh5GCWkMQJKMvqkxGHpw5GMI/YSvYK0fpkWkufeD9ZB9YzKl56eOaTV4jZU8ah7ZvJqmFi7GqLnhapLG42xfbnh27fumzYyjF+fBRmRxhR9Twx6pm2BFvVBR+g/dqLik0HgPNa9UFa9S9KhIgn9GRDdhn/Ez8sMayJDC3IsgTEnamPh8/qfk+8vq0Oc2AGK9ETb98qV5tj6KEChfsWnEw9BAZFGYg52AO/2aLIpN6+UPKJkHsy1VcC0zVVoFwT3jGUeuz3Ka++KBPeB2CduXPUZKIadP0/8LADnE2vp5yC42cyegyJPyp4v2OkgSBGCHda2w==
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id az6-20020a05600c600600b0040fdc645beesm1266110wmb.20.2024.02.08.02.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:52:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: freescale: minor whitespace cleanup
Date: Thu,  8 Feb 2024 11:52:17 +0100
Message-Id: <20240208105217.128748-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before '{'
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 2 +-
 arch/arm64/boot/dts/freescale/mba8xx.dtsi     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
index 69dd8e31027c..24bb253b938d 100644
--- a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
@@ -37,7 +37,7 @@ m33_reserved: noncacheable-section@a8600000 {
 			no-map;
 		};
 
-		rsc_table: rsc-table@1fff8000{
+		rsc_table: rsc-table@1fff8000 {
 			reg = <0 0x1fff8000 0 0x1000>;
 			no-map;
 		};
diff --git a/arch/arm64/boot/dts/freescale/mba8xx.dtsi b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
index 6164fefb9218..3b4c5fa21f31 100644
--- a/arch/arm64/boot/dts/freescale/mba8xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
@@ -466,7 +466,7 @@ pinctrl_pca9538: pca9538grp {
 		fsl,pins = <IMX8QXP_USDHC1_RESET_B_LSIO_GPIO4_IO19	0x00000020>;
 	};
 
-	pinctrl_pcieb: pcieagrp{
+	pinctrl_pcieb: pcieagrp {
 		fsl,pins = <IMX8QXP_PCIE_CTRL0_PERST_B_LSIO_GPIO4_IO00	0x06000041>,
 			   <IMX8QXP_PCIE_CTRL0_CLKREQ_B_LSIO_GPIO4_IO01	0x06000041>,
 			   <IMX8QXP_PCIE_CTRL0_WAKE_B_LSIO_GPIO4_IO02	0x04000041>;
-- 
2.34.1


