Return-Path: <devicetree+bounces-78646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2218D912FCF
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:58:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F2491C20A3B
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A738517C9E5;
	Fri, 21 Jun 2024 21:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="I3FJIGQz"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3083817C7BB;
	Fri, 21 Jun 2024 21:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719007106; cv=none; b=KhuaEFhnXR/YoTIiFy1egSSTIrVSfHrzG1BBc2TDw/VIqDksuoTumJUe+V0f8JbxzVFlSAV/dCP09vsG+bxjxNw2S8YYx3j6WsMv+cXfWAX05VHTpF59efZ/gx+i8wyulm77K4Fhg/VVR3NBrcXo8CzQqZL8IOQ5Ni0isgq5ibw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719007106; c=relaxed/simple;
	bh=GzRDLnuFoZMdH1hQlF6ojeOZvsWqIJBgLcgKRUN0xBw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FixgD37+2OEBd8fWj0ux722btX7tHmqvg21Slm8vu+MpwTtiTw3oqLMlCyWv9rOtKie6YSPM2NRYE35ZSFmTayEYVSssEUX87+zq0pWob81Y95RnG8YLRwlj8MLEXcAAvZ2kLU4Alc6ESRlzN985yss6qbKMCBviW4PZxz/rFtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=I3FJIGQz; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719007098;
	bh=GzRDLnuFoZMdH1hQlF6ojeOZvsWqIJBgLcgKRUN0xBw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=I3FJIGQz0/eVwL3XqHal+xKSuyjIOKIrSuR2P/EMbws789fnsn/J55wtJsJEnCUCw
	 YfCjbR90ROUiUmb/bXsHYXfyCRfh+HxlJpvjVDHo/cGTUsA9MYHDUVwvTYVg8TNLX0
	 JAQLznq6XjlAyKlXG7tU2eP+CXX38COpXFscufpPU506ScPDAzh5v86EA+k2DGW8po
	 0k3V3qUperSSnCxNT8m63wEnlSYPMhYTrZIJK5wohkJkOKCwu72kTJM0g6NQ3kMWlF
	 e9R0TzyEZSx8MwJZ28NSSMAUNBOTF5EyhvhnHXMNhzpcRtibRRCy7yCDIE8ajrDyeN
	 Ul5kp5BwuYvkg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2ED1F37821E4;
	Fri, 21 Jun 2024 21:58:18 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 22 Jun 2024 00:57:21 +0300
Subject: [PATCH v2 4/5] arm64: dts: rockchip: Fix mic-in-differential usage
 on rk3566-roc-pc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240622-rk809-fixes-v2-4-c0db420d3639@collabora.com>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
In-Reply-To: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Furkan Kardame <f.kardame@manjaro.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0

The 'mic-in-differential' DT property supported by the RK809/RK817 audio
codec driver is actually valid if prefixed with 'rockchip,':

  DTC_CHK arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dtb
  rk3566-roc-pc.dtb: pmic@20: codec: 'mic-in-differential' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

Make use of the correct property name.

Fixes: a8e35c4bebe4 ("arm64: dts: rockchip: add audio nodes to rk3566-roc-pc")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 63eea27293fe..67e7801bd489 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -269,7 +269,7 @@ rk809: pmic@20 {
 		vcc9-supply = <&vcc3v3_sys>;
 
 		codec {
-			mic-in-differential;
+			rockchip,mic-in-differential;
 		};
 
 		regulators {

-- 
2.45.2


