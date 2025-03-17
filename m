Return-Path: <devicetree+bounces-158158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9394FA64E2C
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39854176628
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62121242931;
	Mon, 17 Mar 2025 12:07:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc09.mail.infomaniak.ch (smtp-bc09.mail.infomaniak.ch [45.157.188.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54AF242921
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742213271; cv=none; b=IjxOk47HW9J/wSJihBG2Y3YVovvhFF1x7aBtNbRlZQ0zH6hZGuZPBQSTwXu4H5OTze12Ji5eLRWCx5jeiXpcJlMkbkkG4fxzhfH4vEioDjh5z1awhi1TnUOc1b0/PFIKDJDmZWoRZb4T9ueR/JU5rBok33G0qdYUfbPaeoe5+ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742213271; c=relaxed/simple;
	bh=dFOHClK5imTEBQ/EVsJnTmzN7/HN1axPkvTr63sRzVA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ukqi6b/If1mxe1s5S7gFJInx89V/lPd2z96bZo+wlK9N/MXeXGbtZnooJZOGeup3FxygBPSX3awNM9MIPfxazf8Fwi/ZgrhGHfhay1ixCUwTJV51dzJbkl6MPljHlFaRXQ4eOTPUKwmV77ePxjSJlldZijzcXWd7rNAUif1TEj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=45.157.188.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:0])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4ZGYd86jb1zL3x;
	Mon, 17 Mar 2025 13:07:40 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4ZGYd82pBvzKht;
	Mon, 17 Mar 2025 13:07:40 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Mon, 17 Mar 2025 13:07:26 +0100
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable HDMI audio output for
 RK3588 Jaguar
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-tsd-rk3588-hdmi-audio-v1-1-0b8ceb9597a6@cherry.de>
References: <20250317-tsd-rk3588-hdmi-audio-v1-0-0b8ceb9597a6@cherry.de>
In-Reply-To: <20250317-tsd-rk3588-hdmi-audio-v1-0-0b8ceb9597a6@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

HDMI audio is available on the RK3588 Jaguar HDMI TX port, so let's
enable it.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 9fceea6c1398e92114dcb735cf2babb7d05d67a5..ebe77cdd24e803b00fb848dc81258909472290f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -303,6 +303,10 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -512,6 +516,10 @@ regulator-state-mem {
 	};
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &mdio0 {
 	rgmii_phy: ethernet-phy@6 {
 		/* KSZ9031 or KSZ9131 */

-- 
2.48.1


