Return-Path: <devicetree+bounces-158171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 328D5A64F94
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:45:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB8371692A4
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC061E868;
	Mon, 17 Mar 2025 12:45:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190d.mail.infomaniak.ch (smtp-190d.mail.infomaniak.ch [185.125.25.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84CF23BD17
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742215514; cv=none; b=GaG29dwhUgMbbyAOZaBy7UHPE97u4knMqBGpe8aPY2nPQuplhuIjR4/P4NFvEfcryt4FHmV57W+HewJfr495o2zaJE9eQw30uM254hmn8fyHF8imnno5U8YJY0C4wl1NrhzMBN97i863IQLe7yiDyz8ZidCvCak4z0yZEQmTxbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742215514; c=relaxed/simple;
	bh=/oKMHI9YC9MRdlj5nmGBWbuCG0en5++8+L33Q/IxEDA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GnzmMf3RuPfTyvPeaiBjZXt/YVkBbroz8X8zubwuu8Prw1fFBji9sB7vadNnq7LjpAtS7LG58nI05ZzegVcpzIOA7b/ohSvJ9xctQvjo0E90CIjoB4w3jbG/TSjlgyznsOfp1NCfRXQOFWI3W2AP4Apnimn3LW1LWAPaqZkUyw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4ZGYd93NZQzLqM;
	Mon, 17 Mar 2025 13:07:41 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4ZGYd86bNTzKxM;
	Mon, 17 Mar 2025 13:07:40 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Mon, 17 Mar 2025 13:07:27 +0100
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI audio output for
 RK3588 Tiger Haikou
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-tsd-rk3588-hdmi-audio-v1-2-0b8ceb9597a6@cherry.de>
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

HDMI audio is available on the RK3588 Tiger Haikou HDMI TX port, so
let's enable it.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index a3d8ff647839a900ece2ca9113754c7b20605641..caa43d1abf179365d37a244ea374b0dae39b0433 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -189,6 +189,10 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -228,6 +232,10 @@ &i2s3_2ch {
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &pcie30phy {
 	status = "okay";
 };

-- 
2.48.1


