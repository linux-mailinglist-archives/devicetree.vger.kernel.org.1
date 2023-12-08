Return-Path: <devicetree+bounces-23155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AAD80A61C
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D59DE1F213CF
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 14:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B45A820B1B;
	Fri,  8 Dec 2023 14:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Nz7RuFjJ"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18CF81BC6;
	Fri,  8 Dec 2023 06:51:22 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id CBE8524000C;
	Fri,  8 Dec 2023 14:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702047081;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kOA4z6r+6Tw9VE2/Ykzr/TDzoWZUyODcnTrVc7hxXhE=;
	b=Nz7RuFjJzuOae6pn3HjyKDKpoZWHo8YWlgtv7SMma0uV3151+Q1FgTsjczMHQG9memeizl
	4KoefwHeD1WWlsWwpaukBGgjg1wgiQ6B3ZkbfkX60WWD90enBmYY2/weOWtafL1CUoS85Y
	SSXcdanHGGIAvFLKwgoRhHLDaYokxvLxikGvZQ+H9IeIQOggm32d2tjVU6XGpaSab5nsqr
	XIhbdz+of9BvnNfp0obfhicqMzDNasuh1x3Wev3KucI6Zuq+YRQyUs5If2hIHzDF41OjkV
	aBsMXb54oMhz0pJn4VBXeChyGWx0OmZqp4SyfquEU5SbyeH0GiIxdJAFn1FMww==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Sjoerd Simons <sjoerd@collabora.com>, Marek =?utf-8?Q?Beh=C3=BAn?=
 <kabel@kernel.org>
Cc: Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>, kernel@collabora.com,
 Andrew Lunn
 <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Moxtet bus fixes
In-Reply-To: <20231128213536.3764212-1-sjoerd@collabora.com>
References: <20231128213536.3764212-1-sjoerd@collabora.com>
Date: Fri, 08 Dec 2023 15:51:20 +0100
Message-ID: <87fs0ceoif.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: gregory.clement@bootlin.com

Hello Marek and Sjoerd,

> It seems the moxtet bus support was broken since 21aad8ba615e ("arm64:
> dts: armada-3720-turris-mox: Add missing interrupt for RTC") for two
> reasons:
> * The moxtet irq isn't marked as shared so the driver fails to load if
>   the rtc driver gets set up first.
> * The dts change didn't set the IRQ type, so in case the rtc driver got
>   probed first irq setup ended up wrong (rising instead of falling edge).
>
> On top of that the moxtet module isn't auto-loading due to a missing spi
> table
>
> Changes in v2:
> - Add cover letter
> - Add patch to set the irq type
>
> Sjoerd Simons (3):
>   bus: moxtet: Mark the irq as shared
>   bus: moxtet: Add spi device table
>   arm64: dts: armada-3720-turris-mox: set irq type for RTC

I only received the previous patch in my inbox, I plan to apply it. But
what about the 2 other patches ? Marek will you do a pull request with
these 2 patches or do you expect that I take them also ?

Regards,

Gregory


>
>  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 2 +-
>  drivers/bus/moxtet.c                                   | 9 ++++++++-
>  2 files changed, 9 insertions(+), 2 deletions(-)
>
> -- 
> 2.43.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

