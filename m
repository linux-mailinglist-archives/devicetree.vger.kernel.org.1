Return-Path: <devicetree+bounces-147883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64303A39B65
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:49:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D87D11894890
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE1D23F275;
	Tue, 18 Feb 2025 11:49:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc0c.mail.infomaniak.ch (smtp-bc0c.mail.infomaniak.ch [45.157.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF18C239083
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879380; cv=none; b=L0+OAloYH5nL64m481havlDxPid9DHAX/zizhHLJmEQF7aFhrXPE86yhLWNWPClhJleHglyjoLaRkF4UFwsChtEsRPM+D7k0D2kVdaZekDgE8TySVKN8xpYZGpD8sPzF98CUZ5dXvzB3/R5T7QclqwEu2Dp/dfI2PHnpikMl6JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879380; c=relaxed/simple;
	bh=FhCqxLQkgt7EE34RfFpYbVg7c/EXcIhB49j48kvMS1U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RSckDaiqUfgL9LlhTrl4dE1SoWeOXh1E8gAxW8uFk6AFufCDFIPcIaMmKgvwOaCU9YU+QeWrZQJtGnIEN+P9iaigPzrlwT0K5SwATTCrqAPqaMVwdNENHoiUifcGXRHt01a1fuYwe7h4bF3m4WaFN9PMlWKuybmGhpYsL4SDhnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=45.157.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVd6cw2z3GT;
	Tue, 18 Feb 2025 12:49:29 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVd2XrpzkJJ;
	Tue, 18 Feb 2025 12:49:29 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 18 Feb 2025 12:49:12 +0100
Subject: [PATCH 1/9] arm64: dts: rockchip: enable UART5 on RK3588 Tiger
 Haikou
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-tsd-align-haikou-v1-1-5c44d1dd8658@cherry.de>
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

In its default configuration (SW2 on "UART1"), UART5 is exposed on the
DB9 RS232/RS485 connector. While the same signals are also exposed on
Q7_GPIO5 and Q7_GPIO6, a GPIO header, and thus could be used for other
purposes, RK3399 Puma Haikou and PX30 Ringneck Haikou do enable the UART
controller exposed on the DB9 connector, so let's keep consistency
across our modules and enable it on RK3588 Tiger Haikou by default too.

Add a comment while at it to explicit where this controller is routed
to.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 3187b4918a300dae49fe05d760fb7e1fd55f14d5..7bd07e5026ed914063965c9f1ec6a29357b0c05d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -310,8 +310,10 @@ &uart2 {
 	status = "okay";
 };
 
+/* DB9 RS232/RS485 when SW2 in "UART1" mode */
 &uart5 {
 	rts-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_HIGH>;
+	status = "okay";
 };
 
 &usbdp_phy0 {

-- 
2.48.1


