Return-Path: <devicetree+bounces-68239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1108CB51B
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:10:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44D7E1F229DB
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB542149DE8;
	Tue, 21 May 2024 21:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="iKTQHHYg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D3F50276
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716325850; cv=none; b=GTVyxEC/Y+WJL+Yk5fkOO9Inq0vVpYWjjScmAObOBWRObBf7U35Gl4AWtpa7l5Tma5Xjb8MCSszGlSvI3oPS5MmRkiVrFkfS0VcXo2O1WdQXK+Rn2OHvQbDlBj4gAaass7D5cmFcEGrivr60M9V5VG1P/tHJvHqWNT2AauOsc1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716325850; c=relaxed/simple;
	bh=tl01I95NElPs3aHBRxo5/Y5O+pZt1WGTSKkYPEno90Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aV8FtXURmuioUF4qpwo7JvHKeYbTA8wI98IK1ZZ4S5laVVi2uN0bYh09h+NtXr6AgQa4YlpAR/iZVFfMgnQV15jIPqgU7cEhHcGnxNZI9CjuZPGXX3ACV4GYsjynoiDXgYLVxAtGSqa5fbt+PWmhE9ex+A8bFLsfyNEMzEV3ZDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=iKTQHHYg; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325846; bh=wqxLb2f+Hpfvmew89a1WWyn7UWwka4UkvE6H4LmjyQI=;
 b=iKTQHHYgS1SYU/69ugg3WPa85lYGMV/A7gbjFqdhSePPYtw28tV+HuGpmXh5rYT/PeDKCA58o
 KyAovS/mEqBReYHN62PlaQRosfSV1EdCxwWqY8ssJLYRpjRnI/L9Z6TSNNHn8H+Ta2ji1rtDe3E
 xo5I5k9IpwmgRxPpuhXuB7uVmiF/glVaznoGI8MKxbR2bzx3ojtWXcAnZwDXsh5mYhVeeeNyBYe
 B33LMC2CM396HlIWVvO0S+OihIeY1WrEYC7eESMaRFA4xQcJwClnEUrPrIIILLnkFlH3quQq0U8
 K3QOBHiy+jDPoFsvO5WCqNEckcJAbNbi+TkPpL8eAsWg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 02/13] arm64: dts: rockchip: rk3308: Fix codec@ff560000 reset-names
Date: Tue, 21 May 2024 21:10:05 +0000
Message-ID: <20240521211029.1236094-3-jonas@kwiboo.se>
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
 149.28.215.223
X-ForwardEmail-ID: 664d0dd48b6b0c828344aeb8

The commit 30d72458624b ("arm64: dts: rockchip: add the internal audio
codec on rk3308") added codec@ff560000 node to SoC DT. However, the
node does not pass DT schema validation:

  codec@ff560000: reset-names:0: 'codec' was expected
        from schema $id: http://devicetree.org/schemas/sound/rockchip,rk3308-codec.yaml#

Use the expected codec reset name to fix this.

Fixes: 30d72458624b ("arm64: dts: rockchip: add the internal audio codec on rk3308")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 962ea893999b..c00da150a22f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -811,7 +811,7 @@ codec: codec@ff560000 {
 		clocks = <&cru SCLK_I2S2_8CH_TX_OUT>,
 			 <&cru SCLK_I2S2_8CH_RX_OUT>,
 			 <&cru PCLK_ACODEC>;
-		reset-names = "codec-reset";
+		reset-names = "codec";
 		resets = <&cru SRST_ACODEC_P>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
-- 
2.43.2


