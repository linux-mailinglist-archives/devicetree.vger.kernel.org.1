Return-Path: <devicetree+bounces-68244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9608F8CB530
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:12:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7B9C1C2168F
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF12C14D280;
	Tue, 21 May 2024 21:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="HE5WW9lI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFAE714BF87
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716325871; cv=none; b=XxWK2mLYZ5nZ0cSoOTuCmY5Nf2VyOaZTtKjTXw5guvg/tfZ5swE5CmM+H4ieeKBilshGNKYhCeuPsA6IRGrKml+4TCKDglTUQH7v5PD8EENvA/CYBH4klIBkwurU9GW595MepiETQ9n0T/TCuRz43Gg890xOsHnvl60efinyVHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716325871; c=relaxed/simple;
	bh=MWmGwtLeifmCWtApn+L9r1idRtp7oiKz5iy/Q5lvhEM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CT/5NKkgyDsgL/0arh15J+F83yPrYzP60VBY2xX2PX8EnBvYdh+tr62KAHbMsiMhuE38rU8JzcooMOt6IeENu8CJzgRO5mDVVE9wGN14oVu6tavbdoT01wzrICYfvYSn3doSSIA/y4KgbyQH6XFMBJy/5Tt4v61DsGXnTaJUj9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=HE5WW9lI; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325859; bh=DqKdkq/DVt4N6f038uSTPnv86iR/BLOuZIgCRVepdW4=;
 b=HE5WW9lIBpNtaMlFoZcA0E0RfJAWC9qzj6LBOgaDUCltAQIsGb+ZgpZnw6NJioWnXzqe56Dlj
 +s/395BY/BypfOOzi/hpDpA3q2RWRD5VeS8FVugJSGptxHvTcLC7Jmp3NYpccqgsnADLE1XQdh9
 sIOGpOF7wap4mNKNHHq0rseEew6xR90i83o7/Zr+rl9VXwJgPAtGzUW5ypERxZPQAN9bsz+O2mv
 Drbyd3aH52vMut9lBYVByPqi10Vn54kIEc/C/4bWlGeInS4twYvH9NmXv8fthW4mbEj4P5RXLEl
 rhlV+UCVpaFEd3u3v3FNEyyH7q2Y3B1gbdHpCnOin3cQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sjoerd Simons <sjoerd@collabora.com>, Akash Gajjar
 <akash@openedev.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 05/13] arm64: dts: rockchip: rk3308-rock-pi-s: Add pinctrl for UART0
Date: Tue, 21 May 2024 21:10:08 +0000
Message-ID: <20240521211029.1236094-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d0de08b6b0c828344aeee

UAR0 CTS/RTS is not wired to any pin and is not used for the default
serial console use of UART0 on ROCK Pi S.

Override the SoC defined pinctrl props to limit configuration of the
two xfer pins wired to one of the GPIO pin headers.

Fixes: 2e04c25b1320 ("arm64: dts: rockchip: add ROCK Pi S DTS support")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index a2ec62a377e1..08d1be3a5de7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -288,6 +288,8 @@ u2phy_otg: otg-port {
 };
 
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer>;
 	status = "okay";
 };
 
-- 
2.43.2


