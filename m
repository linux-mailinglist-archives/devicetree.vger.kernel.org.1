Return-Path: <devicetree+bounces-49712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5824E8777A6
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 17:47:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C67E1C20AA7
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 16:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 179CA33CC4;
	Sun, 10 Mar 2024 16:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tynvjpkk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8DF2BAE3;
	Sun, 10 Mar 2024 16:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710089216; cv=none; b=Rf9lhGq2lUqoO9qnNhsjUdS+6LzQV6dWQwgA37fFpyb6k6W29DQ7g1t70SWp8OhcAEP6NhA+TCZTbVEX8aj9nURbF7M5eT0A4sQXdpji98jqlo+mlMvhYJeFa+JkLi3bCuhqL76xMuqNjx+5AtsSLlv0I24ELQDODyElOyzlszU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710089216; c=relaxed/simple;
	bh=YgFDGTSx8szIGlu041E7mSyIbrWzlKkD9Qxq+wJrHsw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zn9i4qe4ZR3eQLrUTQ93aySzsYnfOiTnIz4cZ1VAbtDmPR6gMhdoojkt34Lym1ItxnoBmKudSnRsopsPPMzQk0psU0oaDcCgAWp+yqe1pBiHkmpGucP4sG3i58mPq1//s6uZ79p46FYHVlYA18JWyL5CpqcdottJVUt6vSYKKfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tynvjpkk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E73EC433F1;
	Sun, 10 Mar 2024 16:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710089215;
	bh=YgFDGTSx8szIGlu041E7mSyIbrWzlKkD9Qxq+wJrHsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tynvjpkkXKbP+NabRGe/Qm/Fy0xX1j8cRv8jvMBTWWOZrQBm6baax/G14ONlRIHyA
	 gG+ZHJpOXFNMLs+zYzOaqXKRH3T9GOBwDsNl1okjfYicgARxFg9xhBwlsTW3ui2+Ok
	 ZaKtB0A426aHie0Vka49lmlYiXxaZYZsn/9kd8UMUUGuWo7RC7T8gmkL6rUqdZmYaR
	 bYk7cvgzA0fLQI5Cwc/ZAaHCKqGu1np7HrzLG+wis5vJA0W1U2dwYm1eXHY3TIu12z
	 jnluNgec2SEVDrxZM1IS/5sqd7ZnDKOFznwi8pXvSy00UoZykCXm4zRQE+UCHWjptu
	 rAtmsEb14vyBg==
Date: Sun, 10 Mar 2024 22:16:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>,
	Bc-bocun Chen <bc-bocun.chen@mediatek.com>,
	Steven Liu <steven.liu@mediatek.com>,
	John Crispin <john@phrozen.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: add driver for MediaTek XFI T-PHY
Message-ID: <Ze3j-7WzbTM52kAs@matsya>
References: <745f8b46f676e94c1a396df8c46aefe0e8b4771c.1707530671.git.daniel@makrotopia.org>
 <3bb95f1d795eede63284dbcb224e06ea6886b421.1707530671.git.daniel@makrotopia.org>
 <ZevJwSq-A43vqO6k@makrotopia.org>
 <20240308193632.158b3c42@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308193632.158b3c42@kernel.org>

On 08-03-24, 19:36, Jakub Kicinski wrote:
> On Sat, 9 Mar 2024 02:30:25 +0000 Daniel Golle wrote:
> > > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>  
> > 
> > It's been a month since this patch was posted. Maybe it has somehow
> > slipped under the table (or even under the carpet)?

Nope, somehow I dont have this in inbox, i think i have some issues with
gmail and list server,

> Lots of people in To:, lets direct the question to Vinod? 
> Most active generic PHY maintainer according to git, Vinod?

thanks for letting me know...
I will review it in next few days (pulled it from lore using b4)

-- 
~Vinod

