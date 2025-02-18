Return-Path: <devicetree+bounces-147886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EC3A39B66
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:49:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 130713B45C5
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DCC9241105;
	Tue, 18 Feb 2025 11:49:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42ae.mail.infomaniak.ch (smtp-42ae.mail.infomaniak.ch [84.16.66.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECF623958B
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879381; cv=none; b=mMrdpZjlKeldk1tOCNM4R6fb/sFXDrlSR2wveGtUDY5/kM7NPipFpfTWpAayjJzexmgCnz8Qv+1FKmEKoFqYJYEz1t5WuzyjYxk4RzQoz+UDiWlCNxDUDZlHjppVVt8E9LLzQtF92Q3XfzKs1cds4K4ivTPYuKcD4/pYQbBFsBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879381; c=relaxed/simple;
	bh=PUvWHyANjJlf8SrjVO7MPS5UeR0fjKPj73Kt5iQK138=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GZVqy8ODB6HwxKvNFLIZs9MO2yU3wbN8i1AVI3ltum05QeC80k1Hyaz3hE3yOhrFW7XqwQwZh3EghO+qD4qTKJNx/TC4saiYpMvP5sDYzhRjXwKX9+X5/9wRHEsXacscgmZvnlhiOwdZKzeIjcqI/FqIybclowlAVJtjMImwKGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVf36t1z37b;
	Tue, 18 Feb 2025 12:49:30 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVd6W9NzknF;
	Tue, 18 Feb 2025 12:49:29 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 18 Feb 2025 12:49:13 +0100
Subject: [PATCH 2/9] arm64: dts: rockchip: move DDC bus from Haikou
 carrierboard to RK3399 Puma DTSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-tsd-align-haikou-v1-2-5c44d1dd8658@cherry.de>
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

The DDC bus is necessarily on I2C3, that's how it's exposed by RK3399
Puma on the Q7 golden fingers, so let's move it to the SoM DTSI instead.

If the carrierboard doesn't route it for some reason, /delete-property/
can be used to remove it.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi       | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 947bbd62a6b09ce55320d0889ee8cf50ca59dfd4..4a1a71995bf5da65d59214711671d87c9ea2de62 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -150,7 +150,6 @@ vddd_codec: regulator-vddd-codec {
 };
 
 &hdmi {
-	ddc-i2c-bus = <&i2c3>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 995b30a7aae01a0326e9f80d6be930f227968539..f7548613ac46e190972d549271ec0bbc0c8a9b92 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -389,6 +389,10 @@ vdd_gpu: regulator@60 {
 	};
 };
 
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+};
+
 &i2c7 {
 	status = "okay";
 	clock-frequency = <400000>;

-- 
2.48.1


