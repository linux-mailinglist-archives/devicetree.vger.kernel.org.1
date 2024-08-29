Return-Path: <devicetree+bounces-98021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7078096465F
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 15:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A43BC1C2294A
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 13:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68EF719005B;
	Thu, 29 Aug 2024 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="2Fkxxlix"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4AF18A923
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 13:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724937773; cv=none; b=VuCgpoEDZl5D7WgzeOsRPa1ArtfXnuarGEDeLVxqAouuKflLW76DZtnJmRaGgST1+nzCM8nSmDdbaOd8yKoEObLsTjUXSWzD+A7QLZQcDg3uASMc4i1fcOgZ5wkrDMNe0OFrX2zm58srJoEWbPb09rxmykLMueNLz/2bgTtVmcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724937773; c=relaxed/simple;
	bh=VKxpRivCkGCMbSj+RyS88E+AJiKzIRj6bZK9xd7ug3s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=D/+ke3/9uGurRMfyuyx+vKgDvFBLYS2rCSoWcmKvLwYpUea1X0JC4BoorT9fs6NArEfr5G1tfqLCWAcDverC5nHN3zB527bcHuhS8pvp7MlsaKpyE5iMz870nDVhJ6lYWSlzRMJnEI9EwhycA8BFLrETr3kYz4I7khZuCxddoL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=2Fkxxlix; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=d50psUmIEkqi/PIC0pC+pdrFyWuax6XFXFj8gL0MU30=; b=2FkxxlixmCeeaKQuup+KYnXb6w
	fahSX4tnvoyXps4Jo7VKVvNb3MURWejpJyukEp4NHA+rqZCsbxqrsXhnTgd2O/4BvyIx4ln4QluCv
	xQIvKpaGoIf3l70wBV55iGI3yx3lT8rpN4coeY2VF04eQrnrrMxoXTBSRDL5FDk+upCkb88qsTGMb
	mUO7rWUJAAyJJp4wImOVtYw4QhWz/yLPJjGHQm8qck5f07hk6K8gBsDnQ1ZgA+mryrWG7j2GimydA
	eO3UnrIJG9trMAdGmN8eqx4NBZdZKmdvO4psRE5Qm/cZMhYihrtpCrT1irXSpcz9xSnC/GnJ6YH5O
	eKMiYq3g==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjf6r-0004Gc-SI; Thu, 29 Aug 2024 15:22:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 0/9] FriendlyELEC NanoPC-T6 improvements
Date: Thu, 29 Aug 2024 15:22:42 +0200
Message-ID: <172493775779.1723433.10615698442871368939.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
References: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 29 Aug 2024 14:26:51 +0200, Marcin Juszkiewicz wrote:
> This series updates FriendlyELEC NanoPC-T6 situation. There is non-LTS
> (2301) version of a board and LTS (2310) version.
> 
> This series creates common DTSI for both boards and then separate
> NanoPC-T6 and NanoPC-T6 LTS DTS files. This way T6 gets MiniPCIe section
> and T6-LTS gets USB20 section.
> 
> [...]

Applied, thanks!

[1/9] dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
      commit: 809b3cb3285da6f98b0a516bf070a1d7bf4f7b2d
[2/9] arm64: dts: rockchip: prepare NanoPC-T6 for LTS board
      commit: d14f3a4f1feabb6bb5935bf3b275a1e6bf2208eb
[3/9] arm64: dts: rockchip: move NanoPC-T6 parts to DTS
      commit: aea8d84070fe0846961deb23228d9dd3f8caefb3
[4/9] arm64: dts: rockchip: add NanoPC-T6 LTS
      commit: db1dcbe5f752d423421f77d54d246398b196f670
[5/9] arm64: dts: rockchip: add SPI flash on NanoPC-T6
      commit: a22a629c63b1addcf2d81eaf30383c1deca5b7a9
[6/9] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      commit: b70caff0f9592719b6c977e291c33192e959c9d4
[7/9] arm64: dts: rockchip: enable GPU on NanoPC-T6
      commit: e86cbf999cda2d44f32ec622537024e3b923080d
[8/9] arm64: dts: rockchip: enable USB-C on NanoPC-T6
      commit: c9ba75320e5a12dc9d574603acf29b38a920b40c
[9/9] arm64: dts: rockchip: add Mask Rom key on NanoPC-T6
      commit: da439eed06ff6806f22341ab0468226afc555305

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

