Return-Path: <devicetree+bounces-240850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEF8C7678F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:23:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id D86D12B23F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914E62DF6F5;
	Thu, 20 Nov 2025 22:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="sJzR3fZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37A626E16A
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 22:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763677396; cv=none; b=AQJegp7xKqrREbPdgCSp6S3m8Tzh9ngz/KRE4NbOMPk8YIOYdYRF5O6V9dLSbLIJG7NxMrErcI/tHXHpy0mU0cA61eSl5KAV3Xr6wJBETJmp/5hYP0IRRSoy/YAPFqhlV3PmU5rNrxcvGzbzeURu7j+CITFnAUwHxSCT7zA9CIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763677396; c=relaxed/simple;
	bh=IAw1L1SQ9Ciz3mKp53RXU2I97ANn0Y8w+h5YqIKCmBo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Mr0kmIL1oI7s3eYYoFFM4ZtWApACkgrHPwx+t3YnhEBxMr2mcKACIbCKtaN1ugjWqkoDCI42Z6G50X+EfbPK7NgO6c5cAfuJ17RYU9L3QqlvstB7Zi7BB0ReCxNYYh2O6m8aqt3c6/CDkXON6K86R+EEni9UWyXhxj0ah3PUUfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=sJzR3fZJ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pe31F1NvLbc9IzAVxnRu2XrUbqzFQQoGyzsv0kkd0z0=; b=sJzR3fZJPqIeKj6vvFKyXHrvI5
	n2GWpSnrXwRHm5rH+SvNEjFqhw6NfyRQBsb0dBB/kJRVGGRgOwUUC96Ly1wUIXpKejUf7ITYSQUlq
	WLH8NoblMHJWlbQSfhzkFY0ySS1CqhAVraRfFeqpKg1puFhCa8tfSjRx8grRut1PdFYrfYl7MNCXm
	bhVOc3fwEpYRyvrKMvnow49CYSK2g4qJ1ZvzRi1zwV83gKOsys9WLCRaOjSuDb4FoRhJEmHnP4Ikt
	x6nU2/g4WIPF8TcN3RU+bZQdDbrSBHufp7r32ib3wsY2EEEgivcY2lPLyCK3a0spKcosBR/2kqUbJ
	37rOZJNw==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3Y-0007Je-Be; Thu, 20 Nov 2025 23:23:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 0/4] Indiedroid Nova Devicetree Updates
Date: Thu, 20 Nov 2025 23:23:01 +0100
Message-ID: <176367711166.9778.8294237491641265903.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 18 Nov 2025 16:30:44 -0600, Chris Morgan wrote:
> This series fixes up a few remaining issues with the devicetree for the
> Indiedroid Nova. Namely it adds or updates a few pinctrl definitions,
> it removes a few workarounds that no longer appear to be necessary for
> eMMC and bluetooth, it adds support for the NPU, and it sets the device
> type as embedded.
> 
> Changes since V1:
>  - The device type addition, NPU enablement, HS400 enablement, and DMA
>    fixes for bluetooth were accepted as a subset and have been removed
>    from this series.
>  - The individual changes from the pinctrl fixes have been broken out
>    into a series of separate patches.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Add clk32k_in for Indiedroid Nova
      commit: e28f44013dc4ec820bdb7182d5a2188550bc07fd
[2/4] arm64: dts: rockchip: Define regulator for pcie2x1l2
      commit: 835c909e8576919437227f6ac1d4e4769016137f
[3/4] arm64: dts: rockchip: Correct pinctrl for pcie for Indiedroid Nova
      commit: 6f563ebf0b21e661f6a663ea55ae00544192a213
[4/4] arm64: dts: rockchip: Add host wake pin for wifi on Indiedroid Nova
      commit: 932feac9d8c591a6c5d3824765f71e2cd87f33e8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

