Return-Path: <devicetree+bounces-14181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3883C7E293B
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5ECD280FBD
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F39D528E31;
	Mon,  6 Nov 2023 15:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="TQrVvo8F"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1AD28E2C
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 15:59:45 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CFC010A;
	Mon,  6 Nov 2023 07:59:43 -0800 (PST)
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A40796607480;
	Mon,  6 Nov 2023 15:59:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699286380;
	bh=gejreQ+R9N2hJNUtlzdmP6zPO2yp/PwNztMCU8VlSv8=;
	h=From:To:Cc:Subject:Date:From;
	b=TQrVvo8FtPx4X+auY9pRUHOY8SmbEDkVy/Hln6yrSqgNGGmLm8PnqlPwC+psKg/83
	 irPrR5WsSe8u7THcvK06CU36U6dGE2IH97ugNTwpdDwckTB1Aqe/WdVVKUrIhMifps
	 t4SwNc7GNURa4sUJ0zdprH6HELb9YUVBNo/SLaACpjQFSTDzC5W2JDRsRtxT+TYKWb
	 KLCOkkjaBDR2V2Jqhihh2uNXZ7TGnY4J9v+WBmy0HLSnQnvnCMhjcUCSmOmZ8uFl1G
	 O5uNMYeh/UuOtNjuJHe1A0+k9MHMNE0GxhkNcIW4PE1gRb3PwYV2KFg2HR6dUVa4fM
	 bauQJxG5wDflA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 96BF348011C; Mon,  6 Nov 2023 16:59:37 +0100 (CET)
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
Subject: [PATCH v1 1/2] arm64: dts: rockchip: add USB3 host to rock-5b
Date: Mon,  6 Nov 2023 16:54:31 +0100
Message-ID: <20231106155934.80838-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable USB3 host controller for the Radxa ROCK 5 Model B. This adds
USB3 for the upper USB3 port (the one further away from the PCB).

The lower USB3 and the USB-C ports use the RK3588 USB TypeC host
controller, which use a different PHY without upstream support.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 741f631db345..61b937beca7f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -138,6 +138,10 @@ &combphy1_ps {
 	status = "okay";
 };
 
+&combphy2_psu {
+	status = "okay";
+};
+
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
@@ -765,3 +769,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host2_xhci {
+	status = "okay";
+};
-- 
2.42.0


