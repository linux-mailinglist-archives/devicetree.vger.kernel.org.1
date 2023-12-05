Return-Path: <devicetree+bounces-21990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB6A805F6A
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 21:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C0751C210DB
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 20:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF4F6DD1E;
	Tue,  5 Dec 2023 20:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ROO6w6Gc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01749129;
	Tue,  5 Dec 2023 12:29:14 -0800 (PST)
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-7b3bc70fca5so5146839f.1;
        Tue, 05 Dec 2023 12:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701808154; x=1702412954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LYftztaNvPp9AiycXxFsDD/pusJZO5VD4GKLxnNaenc=;
        b=ROO6w6Gc3UGUgtB23hLKn7QZVd9c7gSwZG8luUTDCKVHuXrTucFu0H/xUd+SVDXDtv
         PIiKySlgPjtEq69g6uJGTvjapgGQ8u5htSObTsyz4WCz4VsojD9SM/tJku8IwmL215HR
         Yf/78KhP1IaHpV7xgCVSC0j9RVFXRDbdjDEhsj++qd4VNxzAVB1gHIDMAmD642vzxyB7
         K0e6tSX7TebCzHuEl224QULL0BTit5RYAD/aO9o/wYhJCr9XMSrMaOaGxTiJrGrZJDcP
         UJRc8mJ2NNaAwYxfTYDmCaMVpxtU/ujcCn6SZUkbdKVu02tbyYLNTkemkMKL6N3fMIFQ
         tVuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701808154; x=1702412954;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYftztaNvPp9AiycXxFsDD/pusJZO5VD4GKLxnNaenc=;
        b=aIJ4yapcfsLYyd1Ws6jgmk+273J7Vl+d3kprdT57upwLD3RsG3nCJOp8ww+tTniEb5
         IyJhnMgLvZr6A0XHxcUJ63bEOvqpIdmbuxsOkn6UEcW+RpqG0EZgAR85nN2nisY3rkH9
         q1DtvpvKeOQNLegf2rN/QMyZwVAcSTqCUzsE7T1DKwmjfnH1OITTWCL3HRuohNjn0oYV
         2fk/K5kOLI6u3q7zV4HUeaHb1oOWPziLc1ogCYqzAWO6Hpa+7azT1J9h692D51e83D8m
         iUmFWqXMqE2ciGcxXb4DlzrUvLZx3rVycVCHdcqk38ykZDx567JtkCvIboqluv+g4x9G
         iPLg==
X-Gm-Message-State: AOJu0YwlJdQX1KRsbU8OK69s8kwgZd75hDbjb3pYoVUykGgJ9y6KOB5j
	FdYFX0s48VpPxQnGQqJlp6tdAS5St9oi5fVY
X-Google-Smtp-Source: AGHT+IEzCeN5Z1xrmFs3STXAJXiEKae3F1umsDm8OLaSSwygjahA5YJOSV+Flo2toG/hRrjDYvLSdg==
X-Received: by 2002:a5d:8716:0:b0:7b3:9de6:695c with SMTP id u22-20020a5d8716000000b007b39de6695cmr1889441iom.7.1701808154136;
        Tue, 05 Dec 2023 12:29:14 -0800 (PST)
Received: from celestia.nettie.lan ([2001:470:42c4:101:3fb7:1e39:b284:286f])
        by smtp.gmail.com with ESMTPSA id cw2-20020a05663849c200b004302370a169sm3296320jab.157.2023.12.05.12.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 12:29:13 -0800 (PST)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [RESEND PATCH] arm64: dts: rockchip: Fix eMMC Data Strobe PD
Date: Tue,  5 Dec 2023 12:29:00 -0800
Message-ID: <20231205202900.4617-2-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

JEDEC standard JESD84-B51 defines the eMMC Data Strobe line, which is
currently used only in HS400 mode, as a device->host clock signal that
"is used only in read operation. The Data Strobe is always High-Z (not
driven by the device and pulled down by RDS) or Driven Low in write
operation, except during CRC status response." RDS is a pull-down
resistor specified in the 10K-100K ohm range. Thus per the standard, the
Data Strobe is always pulled to ground (by the eMMC and/or RDS) during
write operations.

Evidently, the eMMC host controller in the RK3588 considers an active
voltage on the eMMC-DS line during a write to be an error.

The default (i.e. hardware reset, and Rockchip BSP) behavior for the
RK3588 is to activate the eMMC-DS pin's builtin pull-down. As a result,
many RK3588 board designers do not bother adding a dedicated RDS
resistor, instead relying on the RK3588's internal bias. The current
devicetree, however, disables this bias (`pcfg_pull_none`), breaking
HS400-mode writes for boards without a dedicated RDS, but with an eMMC
chip that chooses to High-Z (instead of drive-low) the eMMC-DS line.
(The Turing RK1 is one such board.)

Fix this by changing the bias in the (common) emmc_data_strobe case to
reflect the expected hardware/BSP behavior. This is unlikely to cause
regressions elsewhere: the pull-down is only relevant for High-Z eMMCs,
and if this is redundant with a (dedicated) RDS resistor, the effective
result is only a lower resistance to ground -- where the range of
tolerance is quite high. If it does, it's better fixed in the specific
devicetrees.

Fixes: d85f8a5c798d5 ("arm64: dts: rockchip: Add rk3588 pinctrl data")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
index 63151d9d2377..30db12c4fc82 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
@@ -369,7 +369,7 @@ emmc_cmd: emmc-cmd {
 		emmc_data_strobe: emmc-data-strobe {
 			rockchip,pins =
 				/* emmc_data_strobe */
-				<2 RK_PA2 1 &pcfg_pull_none>;
+				<2 RK_PA2 1 &pcfg_pull_down>;
 		};
 	};
 
-- 
2.41.0


