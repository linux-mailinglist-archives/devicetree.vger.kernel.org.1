Return-Path: <devicetree+bounces-254280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A595ED16DF4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:42:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D7AD30181B0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464AD366DBE;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXlXaHdA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2195335FF7B;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768286546; cv=none; b=V83jZx9D9F6nzI+gWg36PYELaYgGOIDBCx+XKfk99TFAp6lKWWGTOutZZJKbdA14jbPgHsReZoKpYHgwSGwfiHXp6fChgMO9gkyDEGOzSF4abksGZCjxFRv1D5zDTxNvpUCSU4cvRfB0CXMGul80MEawGpmu4tSghdwDyqHJ6RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768286546; c=relaxed/simple;
	bh=JVfXDE3E2ltmMy4GP25Fi2by9NnQ3UmZ7e8txPADr30=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uUJpaNqiNpyHDQcleY7y4M9VmX9/hwaxuQOLldQZkROKiiuzEDsJH/oXl89Z2vSv4RpRuPvxLDs45MOBC4myPT2sH6vXdzG2TnUwczKWEFiKBQ8UWV9DNynx8nhajItAA7X/3icMNBjdn0dqF167g1Crn+ySvYuBfU09ppVD13I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXlXaHdA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94ADC19425;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286545;
	bh=JVfXDE3E2ltmMy4GP25Fi2by9NnQ3UmZ7e8txPADr30=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qXlXaHdAa36uNPMLCrQhJ/6CsHPDR2IaT+Muq8evWJlHpus7SfpHIJwM/e+GpH0Jx
	 q9eFz91l8NYONrCbMlpeWeTdk2sF8xfh6PtgHrXKoWBwoMirIJHQY0QzS+2CDNjimB
	 1cl6zqKpPoeucsNX01exINvZxBuXbknjLJHzkEQdDiecI2933GHXkO9buS7Dak7yIt
	 aypgzwXSyAFRTAWBzdNoULlC9APQZIYDX6ItONDnV9jM2CsArtO/OluOf2iTl7+TTg
	 KqpmN1Pshc0VkXF5LKhCmB2Np5Bwh7oL1xgjMOb693Z33Y640xCnkxN9oDEt0ZRWO3
	 jhxSOBkjdwUSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECD7D29DE0;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 12 Jan 2026 22:42:26 -0800
Subject: [PATCH 3/3] arm64: dts: rockchip: Remove interrupt GPIO for WiFi
 for the Pinephone Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
In-Reply-To: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>, 
 Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768286545; l=1127;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=V2xGi6mOVeWleP+m2F/1DkoT1Cl2cZl0GZeCm6kqSeY=;
 b=QB+1y+pDSe95xr6xk+qde0I6KgnZrK15MGSnGS0vNzWdXVIPaXxoqEtr5mcbivN2mUb8Nm6L0
 Um61cMTLCyJDlyJ3mmvuBBGruOkvdrJ7XOzBXjx4r9u3vzsLjn6YkCL
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
Reply-To: guptarud@gmail.com

From: Ondrej Jirman <megi@xff.cz>

Wifi is currently unusable if interrupts are defined. Let's remove them
so that Wifi networks are actually discoverable.

Co-developed-by: Martijn Braam <martijn@brixit.nl>
Signed-off-by: Martijn Braam <martijn@brixit.nl>
Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
Signed-off-by: Kamil Trzciński <ayufan@ayufan.eu>
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 97d0bf455258..69bb9de4ce55 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -834,9 +834,6 @@ &sdio0 {
 	brcmf: wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
-		interrupt-parent = <&gpio4>;
-		interrupts = <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake_l>;
 	};

-- 
2.52.0



