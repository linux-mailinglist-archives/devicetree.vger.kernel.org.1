Return-Path: <devicetree+bounces-70295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE86E8D30D6
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B8C5B29EDB
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:19:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12BD1836C4;
	Wed, 29 May 2024 08:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="faeqJuDD"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA00181D1A
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716970202; cv=none; b=TDuHw639ZgoF9/Z7PkhAf0lfTrqJfPevNXhjgJhyImf5XyXC4UH7lcXq//9M+XMm66SfKblBeZOOWWz+4xcZW34BlNFLU4GWZ5wC5M0YPEdk+DJwrJFZ0fL8Y5+Nsz1SQJOatVsiacLOwxiN1Oh9WcDsrmSZcgjE0OFnqt1nQgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716970202; c=relaxed/simple;
	bh=OExHiN99wGb6R2db+IRFul6kbEXNTc2ifi7mmG8VrZQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TwNRC9ZaClrbWsFnUjG9P4EgtgrXegxj9FTKWn9hjByyZzij1z1a+nBnmwxXfmczFc79ZygbOIh2Prq1mPIvk3Fj7UTdmwRe9/Yief8Qnu9gMz0+C5Y7KFDbxBnY1RNBejeQgGxDTnBi6ZznBP//cHbM7XbhmupZzKobGM6UvZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=faeqJuDD; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716970199;
	bh=OExHiN99wGb6R2db+IRFul6kbEXNTc2ifi7mmG8VrZQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=faeqJuDDvqrB2pUioHsdCJKTOCKQx/HqffJzaxeTSMA2s0oPUEaR6mlLWlIM1KyKm
	 rzzACPTx4aB8qNrq+LcC0RLwOgevuMw817p56rYE7LwaFDh6VMRKwA28wue7gqFOcF
	 34o6/vE12pc4aBNh+qLfHfa697HlQ+VGCETFRGtaFFeI515mbepAjOzGuecslYFRbw
	 ant5ZwazY+Z1n4G9GntLO2iVit5O3F/M6re3PHvBLc0zd3fHSHNS9QyC+udQbP2j7d
	 dbZ1MhbVTAVqeUEXzVmf8vjbRhRQo2I2GR7hdb+KPI5WHotG/wrR4/pKvg6PPJQdt7
	 Orl7CbZNBsGYg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6C9DB3780627;
	Wed, 29 May 2024 08:09:58 +0000 (UTC)
Message-ID: <0cbfcab9-f3d0-4b88-bfcf-154e96ab67df@collabora.com>
Date: Wed, 29 May 2024 10:09:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: arm64: dts: mediatek: Add OpenWrt One
To: Linus Walleij <linus.walleij@linaro.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Chris Morgan <macromorgan@hotmail.com>, Sebastian Reichel <sre@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 openwrt-devel@lists.openwrt.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>
References: <20240527115933.7396-1-zajec5@gmail.com>
 <20240527115933.7396-3-zajec5@gmail.com>
 <f3930034-0cc1-4bb5-894a-72c809211233@collabora.com>
 <CACRpkdbh+5CMAD6_gxrMspJ+uFCs7R0HPe_SAWNvfvyxyA=U2A@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CACRpkdbh+5CMAD6_gxrMspJ+uFCs7R0HPe_SAWNvfvyxyA=U2A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 29/05/24 09:51, Linus Walleij ha scritto:
> On Tue, May 28, 2024 at 12:32 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> 
>> Isn't the OpenWRT One made by BananaPi?
>> In that case this would be bananapi,openwrt-one I guess?
>>
>> Is there any OpenWRT contact that can please help clarifying this?
> 
> Both Rafal and me are members of the OpenWrt project.
> 
> The legal responsibility and trademark of this product is handled
> by OpenWrt, so they are legally the entity producing this board,
> I think that is what matters for vendor strings.
> 
> Yours,
> Linus Walleij

I was suspecting that, but wanted to be extremely sure of what's happening here
especially because we're at the beginning of the new cycle.

Btw, I think I didn't know that Rafal was involved in that ... or maybe I knew
but I forgot - whatever - there's just too much stuff in my head right now :-P

Thanks for clarifying!

Cheers,
Angelo



