Return-Path: <devicetree+bounces-76870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4234390C671
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0F5A1F2281F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D9513C913;
	Tue, 18 Jun 2024 07:51:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B9013A245;
	Tue, 18 Jun 2024 07:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718697104; cv=none; b=GMKQyGK+To/5VzUjXIN9sSkwOLuIq2L2OyFKvTkC9ArrGmxzVkRDCY8p4kEITzgZEYo6u9Sz7Z09lZPguzcAUsO2AG62+6/KWhFj137eCfElviWFUjVVhTL++QsHvg4q7LtfcSUfQ3v+0Dqtsu9ldZSVTuDitvsww/Vb/Ye8BT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718697104; c=relaxed/simple;
	bh=C3wdJD72r78Egc9KFUBjVcSgYoNuhaM/wcJvoiKPVzw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TvC56MexqYQ+1AoSNQEaPtGViHhp99EdZlzLpEe/D2QTVQz02NJ51ZC8X4BGCJKAcw7gGgpFJNw/TGzgbo8npVYs5IyeWzQr/jm1aPEhf4EctGYQjtkt0MDrwqxJfjfC0rDoiE93zAWzNxqhWIjhba8qSdHeMUwnEfwoJUTQJpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJTco-0006Ly-DP; Tue, 18 Jun 2024 09:51:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject:
 Re: [PATCH 2/4] phy: phy-rockchip-samsung-hdptx: Enable runtime PM at PHY
 core level
Date: Tue, 18 Jun 2024 09:51:28 +0200
Message-ID: <19099161.fAMKPKieAE@diego>
In-Reply-To: <20240618-rk3588-hdmiphy-clkprov-v1-2-80e4aa12177e@collabora.com>
References:
 <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
 <20240618-rk3588-hdmiphy-clkprov-v1-2-80e4aa12177e@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Montag, 17. Juni 2024, 23:48:10 CEST schrieb Cristian Ciocaltea:
> When a new PHY is created via [devm_]phy_create(), the runtime PM for it
> is not enabled unless the parent device (which creates the PHY) has its
> own runtime PM already enabled.
> 
> Move the call to devm_pm_runtime_enable() before devm_phy_create() to
> enable runtime PM at PHY core level.
> 
> With this change the ->power_on() and ->power_off() callbacks do not
> require explicit runtime PM management anymore, since the PHY core
> handles that via phy_pm_runtime_{get,put}_sync() when phy_power_on() and
> phy_power_off() are invoked.
> 
> Hence drop the now unnecessary calls to pm_runtime_resume_and_get() and
> pm_runtime_put() helpers.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

checked against phy_create()

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



