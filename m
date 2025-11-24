Return-Path: <devicetree+bounces-241757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B419AC821C4
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 19:31:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4AEDA34222A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 18:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AB6D2BEC57;
	Mon, 24 Nov 2025 18:31:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959851B532F;
	Mon, 24 Nov 2025 18:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.95.11.211
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764009066; cv=none; b=E3p6dVqRfilSvmt/QLdwehfQRXWGtlsxKbnf4BMX3hGRdE+po4MfNuF7MsBTJsn0J/jbtH8oCTaV2Jv9ulFJT9v7U1uruL8Nubt+hqj6/fxFQPuH1zZJ0DECCBgOETMyx9S9U7iRyf/fbmgf2qCLNc/vDotCpUu98tCCrZlf3Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764009066; c=relaxed/simple;
	bh=uJ/HXusLmLw4XhNXswVFypT0c/bPc8RRqOYM8b5M6JI=;
	h=From:To:Cc:Subject:Message-Id:Date; b=SM2OtE/OMZDQPpD5gVTN3LQaddSGdXUBI2M4JIPP0j7QOfX8NwGRd1uGZGEQpFzSto6y7N48DJ0Ho/dxSXrBzg0E3fUrUxsarf/UrSX8GjLS3F+a2hFeHgckBFxb9Kou/VRgczRZLNXx1fzTk1ejXWOYfEojWYVEyr+To+PRx0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lst.de; spf=pass smtp.mailfrom=lst.de; arc=none smtp.client-ip=213.95.11.211
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lst.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lst.de
Received: by verein.lst.de (Postfix, from userid 2005)
	id B853068C4E; Mon, 24 Nov 2025 19:30:56 +0100 (CET)
From: Torsten Duwe <duwe@lst.de>
To: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
    Rob Herring <robh@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>,
    Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
    linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: enable SPDIF audio on Rock 5 ITX
Message-Id: <20251124183056.B853068C4E@verein.lst.de>
Date: Mon, 24 Nov 2025 19:30:56 +0100 (CET)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Rock5 ITX has an S/PDIF (TOSLINK) socket in its I/O-shield, whose
TX signal is wired to GPIO4 C1. Activate SPDIF TX unit 1 and select
the proper pinmux (M2).

Signed-off-by: Torsten Duwe <duwe@lst.de>
---

For Linux, activating spdif_tx1 only creates a "component", see
/sys/kernel/debug/asoc/components. ALSA needs a "simple-audio-card"
pseudo device wrapper along with a "dummy transmitter" (?!) in order
to turn it into a functioning audio output. This is not really
intuitive and IMHO does not belong in a hardware description.
But well, so be it.

	Torsten

---
 rk3588-rock-5-itx.dts |   23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index bc8140883de4..6780fbb26efb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -147,6 +147,24 @@ sdio_pwrseq: sdio-pwrseq {
 		reset-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
 	};
 
+	spdif_dit: spdif-dit {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+	};
+
+	spdif_sound: spdif-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "SPDIF";
+
+		simple-audio-card,cpu {
+			sound-dai = <&spdif_tx1>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&spdif_dit>;
+		};
+	};
+
 	typec_vin: regulator-typec-vin {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -839,6 +857,11 @@ spi_flash: flash@0 {
 	};
 };
 
+&spdif_tx1 {
+	pinctrl-0 = <&spdif1m2_tx>;
+	status = "okay";
+};
+
 &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;

