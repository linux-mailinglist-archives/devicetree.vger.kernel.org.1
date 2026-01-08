Return-Path: <devicetree+bounces-253035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24569D06843
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 00:07:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1A2D3033D6B
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 23:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 846FF334361;
	Thu,  8 Jan 2026 23:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYv5fEly"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619172E8B61;
	Thu,  8 Jan 2026 23:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767913579; cv=none; b=QA6jz/JCqKPHCUstvvqt9m5V4rsfqoH4SZO0t5/XI6RAyVl2Q6aNbXFnxQ+38rGT3Y32FG+NXR1nK4DbuLn1MNM8SmJdS6FTO5WNbbPXl5SsmLrija15ufGa3ODPtA7qE/oz2RspWOmdKLL8iVaXInq+inQOr7/dcFFML0dYJ20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767913579; c=relaxed/simple;
	bh=lpYcV9gaFVICm+OV5hThQh4LXmGP/93/zbRqYv5uQ08=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ojKMjbM2ApuQ7aH2bghiX0ZwLw1zBupuLrCMzWMOi8qstUl7iSq6XVn3VSjs3a82BfwVNaYIMi3o8aEj0n0n0CPZ7nqh8deOzTLhxocR/wDUKJr9SDe6+HDKTrfk+P2HLDs3zKHL/spe0z2VPNUvfFRbShq+UNsNgIWB7hxUwSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYv5fEly; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E699BC116C6;
	Thu,  8 Jan 2026 23:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767913579;
	bh=lpYcV9gaFVICm+OV5hThQh4LXmGP/93/zbRqYv5uQ08=;
	h=From:To:Cc:Subject:Date:From;
	b=RYv5fElyNvHhVN5pAP8GE9ju4c62b0sd/zx/OZCTn00GkCUWPpzDuribmTE8dbE7+
	 EvPRYKDZ89iGX2KwUEwKy/bAC0B0NMEaNb8LwiscunRlSfFCz46eerxHkBTIxYZYVR
	 jREPKDD3G43UVyVhOG6M2fAyuoMkDPgiqodCafmHhsmwOzGjGLi/vrrlktaSHQhTUZ
	 qE1flRsKz0XjDLPHVb8LWNty8uRSKnn3VEJIvOfZ8uXnt5COZUrACiAGuI8aSJPIw0
	 Un1qI1ovBrENtJq9aFx5xb590NNZLw/2fq1KkM8UkTLDvBnmY+Q0BAP8tXUT6Bk1jn
	 NX5SILHcPzC9g==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3326-odroid-go3: Fix pinctrl property typo
Date: Thu,  8 Jan 2026 17:06:13 -0600
Message-ID: <20260108230613.1349060-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"pinctrl" is not a defined property name. The correct name is
"pinctrl-0".

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
index 35bbaf559ca3..7f6f3c5040d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
@@ -14,7 +14,7 @@ / {
 
 	joystick_mux_controller: mux-controller {
 		compatible = "gpio-mux";
-		pinctrl = <&mux_en_pins>;
+		pinctrl-0 = <&mux_en_pins>;
 		#mux-control-cells = <0>;
 
 		mux-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>,
-- 
2.51.0


