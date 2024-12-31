Return-Path: <devicetree+bounces-134878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5999FEDF1
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53EB118809DC
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 08:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98D4118B482;
	Tue, 31 Dec 2024 08:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMf7k1i8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4C27346D;
	Tue, 31 Dec 2024 08:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735633478; cv=none; b=U6uF44oNUKYfe76e1XstaLdxj7LAR7ev7Ajqh642CsG1PXNhWFVtH32CgnZLir0/58IGMdg4NGqwMX3uCOfDQyOekXLmV0W47tMZ8Knrhe/d4d3icofiQwVZOiIq8YaH6VGIk3xA1b6akuvaGI0M8p+s+Y4D44gRoGvwiv+Qv2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735633478; c=relaxed/simple;
	bh=j76t3o2w5ZiwLWVPj3IcWXPcINfLohhzaK78/qTi5SQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WmgTwshJS461oZprkgjlO0Jahbv1RLc5ThcgFokB27JMzwQGnYGehvISqrITR6ztV1EguNuz7I2FRoUr36pOV35oAA8gqYxdqCY3A9K9sJoW5byzKVD3c9Dp9wt2JrkUXzt+IIdDRoPYeDk/1rM8vLcVIG4kkonzTVTKfJNrRZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMf7k1i8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EE4BC4CED6;
	Tue, 31 Dec 2024 08:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735633478;
	bh=j76t3o2w5ZiwLWVPj3IcWXPcINfLohhzaK78/qTi5SQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cMf7k1i88qw2NxaNJhKFgeYpFJhlWn4PgoVrjNQkoVWZVpO7R0v18vETeAHy4BaMH
	 mdbf6RKrhyy1M3X9zWCyIpb/tmmZWU7w5RNdQJSIJOCYuoscw702wXd26xTfC1Dl9X
	 vEtsYtOsYnA0ePZDjd1YTrG3Hm/fmaSuyG8S/jxcSlobhTI+UKSSO32yuNAMSwR+eP
	 HWXElkb9KeQVknMgE5V1HYXWnmPKNydklT4T00XznMp9RrHMNWmmjjOFYHmX+LWVse
	 fnGHK4DtsDu+6WwK5K6sC7dGq3Jnb3AU6so3d+i5EunZ+yb/zCQet0LiuSLA/38Pli
	 EGCrglUZDlw2g==
Date: Tue, 31 Dec 2024 09:24:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Karl.Li" <karl.li@mediatek.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Chungying Lu <chungying.lu@mediatek.com>, Chien-Chih Tseng <Chien-Chih.Tseng@mediatek.com>, 
	Andy Teng <Andy.Teng@mediatek.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v2 0/3] Add MediaTek APU Mailbox Support For MT8196
Message-ID: <xkzx34xl6rpb5bxdlsmfxogu26unsof3wupfs7se53wl6jhko5@qeepska2kalu>
References: <20241230034446.1195728-1-karl.li@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241230034446.1195728-1-karl.li@mediatek.com>

On Mon, Dec 30, 2024 at 11:43:34AM +0800, Karl.Li wrote:
> From: Karl Li <karl.li@mediatek.com>
> 
> Based on tag: next-20241220, linux-next/master
> 
> Hello,
> 
> This patch series introduces support for the MediaTek APU (AI Processing Unit) mailbox, a crucial component for facilitating communication between the APU and other system processors within MediaTek platforms. The APU subsystem relies on a message-passing mechanism built atop the mailbox infrastructure, necessitating enhancements to the existing mailbox framework to accommodate the APU's communication requirements.
> 


Wrap your patch descriptions.

https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

Best regards,
Krzysztof


