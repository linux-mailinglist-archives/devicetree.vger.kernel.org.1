Return-Path: <devicetree+bounces-147888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 200B6A39B6D
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:50:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C40FF3B5BFD
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0DD4241CAD;
	Tue, 18 Feb 2025 11:49:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42a8.mail.infomaniak.ch (smtp-42a8.mail.infomaniak.ch [84.16.66.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACD224111E
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.168
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879383; cv=none; b=SVD8Bvu2yS8h5yZU6Ugc8lf+/JgXyV+RSK4jFBJp9aerg2Jf7KHVOREaSEvnnO0+m1IwMOg8JHn4KoHk/4zFef2gUP98Z6yrK7dc01SLUkRnJ8WuzQ+8nRKNLT/gIpGAWXl7cYs0t0ap6dKNbCYAG0FODyNH7VdMaU/4Bjgcrys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879383; c=relaxed/simple;
	bh=Njmh6w0VHxoSuWfvFkvMfNbSLEezZKnKOjqp+SRdGL4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k27AMn/8Lm6e/3Hy7U0BmALdZ+tS/YnFZdXhS9HXpm1vLbgKBgu9VUxo3ZoKngfU/PPX/QmEDZIwDXcX1E4oOpBiWz8PhR5rrYHDLWjTrvil8UB5+Co/+kR7RX/A89ObKb062H4zFSV/MD5w786h/n0MNEItlpPKI9mSBbMCpi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.168
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVj3NHhz4mn;
	Tue, 18 Feb 2025 12:49:33 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVh6mK1zkLh;
	Tue, 18 Feb 2025 12:49:32 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 18 Feb 2025 12:49:19 +0100
Subject: [PATCH 8/9] arm64: dts: rockchip: enable I2C3 in Haikou
 carrierboard, not Ringneck DTSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-tsd-align-haikou-v1-8-5c44d1dd8658@cherry.de>
References: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
In-Reply-To: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

PX30 Ringneck only exposes I2C3 as LVDS_BLC_CLK/DAT on Q7 golden fingers
but nothing is on that bus on the SoM itself. Therefore, let's enable
the I2C3 bus where it makes sense, in the Haikou carrierboard DTS.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 2 ++
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi       | 4 ----
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index e4517f47d519cc08ec9ee705a6f51a740687f6df..16996cc6b8b62fb4f87ab5cff7e86ba751af1794 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -154,6 +154,8 @@ sgtl5000: codec@a {
 };
 
 &i2c3 {
+	status = "okay";
+
 	eeprom@50 {
 		reg = <0x50>;
 		compatible = "atmel,24c01";
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index ae050cc6cd050f730fb8fd7e3971a166d234d408..c166a9e3cc1c30bba3ab9b6a5ce3e1f67566ee8c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -325,10 +325,6 @@ rtc_twi: rtc@6f {
 	};
 };
 
-&i2c3 {
-	status = "okay";
-};
-
 &i2s0_8ch {
 	rockchip,trcm-sync-tx-only;
 

-- 
2.48.1


