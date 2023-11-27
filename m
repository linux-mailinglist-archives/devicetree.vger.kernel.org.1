Return-Path: <devicetree+bounces-19154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4177F9DDA
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:43:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF34CB20DC5
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3069134A2;
	Mon, 27 Nov 2023 10:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="vqpokK7y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49D4EEA
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:43:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701081786;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sv3zUYeCIAwtSQ/4pLuCWPrHDmeMxigzL0J1JJKeGb8=;
	b=vqpokK7yjxI8ofYjft393wXKMsHk/av4/dBN9wD9FA2/EJeJtqdIfdWT/b8HNUnaVjHVEw
	hk3DDpq8b05MIWbHvcQBGfwSWqIIwH0sbMkb7qB2vnEJjxhILKIrE4PFqB2n35hb6dTwEZ
	9Re31xypPjO9niGJh4dgyJZi9HfAAt/OkTWPPcxq9ekkvGf2ZLq5I3jUdo4EoPAkjXkB1W
	VGLYf3Yv+J96ZO0PYGZLihpq2zsfWDpNx2xZsRFT6ChMCVOYblJgJbodfCGPcewcpDSLJa
	FJ+sSVoeS+Yob5/YevNu9mCKXsN41KuzhBSyFsc3wsFmfPNX6JaaOWRfk/UPuQ==
Date: Mon, 27 Nov 2023 11:43:05 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tim Lunn
 <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
In-Reply-To: <4065853.CrzyxZ31qj@diego>
References: <20231122122232.952696-1-tim@feathertop.org>
 <50694679.MN2xkq1pzW@diego>
 <99db2b8a-631b-40df-a33a-c2baeb44c940@feathertop.org>
 <4065853.CrzyxZ31qj@diego>
Message-ID: <4bd0ce0f496646209eb8b220dfdd80bd@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2023-11-27 11:29, Heiko Stübner wrote:
> Am Montag, 27. November 2023, 10:58:43 CET schrieb Tim Lunn:
>> On 11/27/23 20:45, Heiko Stübner wrote:
>>> It's different for mmc, where this naming scheme isn't normally used,
>>> so we (mostly?) migrated to them being in the board-specific alias 
>>> section.
>> 
>> What about the ethernet alias, the MAC is part of the SoC, should this
>> stay as it is in patch 6 from this series, or move to board dtsi?
> 
> I think judging from everything above (and the other modern boards
> like all rk3588 ones) the ethernet0 alias should move to the board 
> dts(i).
> 
> The gmac generally does not have this numbering scheme like i2c or 
> uarts.

Please note there's already an Ethernet alias defined in rk3399.dtsi, 
even despite not all RK3399-based devices using the GMAC, for example 
the Pinebook Pro.  Perhaps that's something to be fixed as well.

