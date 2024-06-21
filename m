Return-Path: <devicetree+bounces-78648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 372EC912FD1
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7FD82813A3
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DF917C9FA;
	Fri, 21 Jun 2024 21:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="yNeVUHK2"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4911C17C7C0;
	Fri, 21 Jun 2024 21:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719007106; cv=none; b=E1kDwdM5LdD7sK4LWvowM1GwQ5lcfBVqZBihCjet0lXXJTXx8bsaITYZMAFJNtT1XnzHHcA5HDfus8B0cnrlY9UIBy8+Yy5+MC1lXbW2zaf8VmRi9mFqBv1P/Q8sPKkH/KtNehH5jjVvTrJOl4BxdFb7IuAFGRRM+3zZjKxGfMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719007106; c=relaxed/simple;
	bh=mvTc6mmb97QnDGAQR4LeZV3dSJ5FUaa474nFk7DAEx8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rwXD6gKVbeDUR0iQjo3n6Cyj1sjERXNkpFJXiu5kie6Rfw0F10H9Pn5LOP/QA4bvI779bTz5gk+pGu6az4wJHPVt2LV91Ka/8yYpD+m9cuGY5mpo+N2bXBjOnOkr9zRwdqdVG1ADE/Y2Sg++ct0/7F6W5rhTTQHEy3oS50sWDVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=yNeVUHK2; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719007099;
	bh=mvTc6mmb97QnDGAQR4LeZV3dSJ5FUaa474nFk7DAEx8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=yNeVUHK2XP2PBBdONBRootjCXsHSA4njaLxPpWzjLCrgLWWGloO25DTZ5XZNIMp3l
	 7fpggCWBh83igYPN3pXCVXgrxy4yl3IAXmvzk0shrdtzyIcAg27WveobPSQqLbv3l3
	 xcRuG+DeEMt5tfv1nW+OxFtIZHPb5+y29y/D63bhahdufBq04ZavTXBEfw0oS+lc4A
	 TIuwS2aMM3f7rrTZ7FouwqtnFDAiiQXJP3RU0oNprVBahvyrfVDclVo16J+eeshnda
	 Ze0oFu9jGOO7qLzTZ7oZQD0YcNC/EMqe3umRNaPOgMPyNYYtLXaL5lam8gMVEJr2gC
	 ujx+TVTyusIJA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5E8AC37821E6;
	Fri, 21 Jun 2024 21:58:19 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 22 Jun 2024 00:57:22 +0300
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Fix mic-in-differential usage
 on rk3568-evb1-v10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240622-rk809-fixes-v2-5-c0db420d3639@collabora.com>
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

  DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dtb

  rk3568-evb1-v10.dtb: pmic@20: codec: 'mic-in-differential' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

Make use of the correct property name.

Fixes: 3e4c629ca680 ("arm64: dts: rockchip: enable rk809 audio codec on the rk3568 evb1-v10")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 19f8fc369b13..8c3ab07d3807 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -475,7 +475,7 @@ regulator-state-mem {
 		};
 
 		codec {
-			mic-in-differential;
+			rockchip,mic-in-differential;
 		};
 	};
 };

-- 
2.45.2


