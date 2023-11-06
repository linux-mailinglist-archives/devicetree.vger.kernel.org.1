Return-Path: <devicetree+bounces-14180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 544EC7E293E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81E44B20A94
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E164028E2E;
	Mon,  6 Nov 2023 15:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XZIq1Kqu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E14A28E15
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 15:59:45 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CF47107;
	Mon,  6 Nov 2023 07:59:43 -0800 (PST)
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2B4EB6607481;
	Mon,  6 Nov 2023 15:59:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699286380;
	bh=tOvg+NAg2DmpDA1isQ5MKe/44qEbV2zy3dB4exZDEuo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XZIq1KquvZIC1/6E2iNIqI5tGUtd3uj8ODqtBQPwI3gFPsdyd9LVNl89bd0n0/Yo7
	 kP1cX2aj71mnCOXPrH2bxabcAUzd4mlFxm5b1LKFmEWTN8Cr50tM5Y8l5mztwelfC/
	 w4WWAw1cZdXDIm+gu3C+ArrortL4xtnHC3+WYqBmWG3gsYw629os5ZyYC0sg+NyzrH
	 fs+K1VlJcYXN68cSbp2x1GK30QBGLzY7fGi/YhWJuAdehGt1GFVXjLSJqRyD3/dSML
	 i+5HDMR9gEJGHbTxh+b7d3IGwXa5+/ADHBNIXeUx6+xsOCPJ2nLa9i6pQ9tBPzRPtU
	 80cTzIF9BCIUA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 982FA480117; Mon,  6 Nov 2023 16:59:37 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 2/2] arm64: dts: rockchip: add USB3 host to rock-5a
Date: Mon,  6 Nov 2023 16:54:32 +0100
Message-ID: <20231106155934.80838-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231106155934.80838-1-sebastian.reichel@collabora.com>
References: <20231106155934.80838-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable USB3 host controller for the Radxa ROCK 5 Model A. This adds
USB3 for the lower USB3 port (the one closer to the PCB).

The upper USB3 port uses the RK3588 USB TypeC host controller, which
use a different PHY without upstream support.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8347adcbd003..6fb03294576c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -114,6 +114,10 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 	};
 };
 
+&combphy2_psu {
+	status = "okay";
+};
+
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
@@ -734,3 +738,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host2_xhci {
+	status = "okay";
+};
-- 
2.42.0


