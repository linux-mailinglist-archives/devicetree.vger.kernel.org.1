Return-Path: <devicetree+bounces-72220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B98B48FB276
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:42:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56F3B1F25BA8
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91564145FF6;
	Tue,  4 Jun 2024 12:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="1Wg2OU5W"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ACE145B1C
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717504908; cv=none; b=Ji45xHCZtuwG7wyE7jPld9lt9wYpMKOrPSoqaaRK4rzHBGRF5GVgWlEc1m2s9MPh25/suW1f9ctTRunK+CqfRYA5Z4gL5C4IuisL6PxmWwTqaAFfY9m9SQT3xVgwzzqRVImjoRb+vqon+jfC0HT3SqpKrIiAL+a3Rl8w3SqO354=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717504908; c=relaxed/simple;
	bh=cyDfqlYfY4BrvsNgQnxyilZlkyV1nbikZ0wAS+skhvA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pprkZEcZA2Y+w9KAMxBqnb2TSE1Wu/iNFIYakZpBknQ6wHPugPJKVZIEKzDOu9l8t3runHNZAPVpFmMbBjXQlvuYXY+mwHlRsKWId/Jul4IqnAhXn9y1E0cgW3RLeN581/B0d+hvW0gKeNyPNn9MifkYiUY/4RPynkJM4Fyc01E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=1Wg2OU5W; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717504905;
	bh=cyDfqlYfY4BrvsNgQnxyilZlkyV1nbikZ0wAS+skhvA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=1Wg2OU5WhPuMTBQwgn6cR9rWs1U4Lukso/PMtSv39RRLyuGEXsrrApgawFYlVeU1M
	 DHRIVQlOA6LNVE5ixxkgd2ezGPZOaLYDGTL2Q7MUumIy0jqNeEzVGQR5V3l+Z74gu2
	 +Mta6egdyJpuyQl8n/h8JmJ7MqiJd4VYPd60qHvsuoTjvAcTTUowj9vqpZaoOeLHMY
	 kfi+NhqE3zjWCwFEF4X1z6MNEnS433I5Ue73FPvKWbDioDYwoHWEFWgPPfJ53HAL6V
	 xyfTvDxzGpwq0SmECOfDWlRrE8tMmSPVHfHwruMQlCzT1GDuE1nZZ5GuR9o4WsceHn
	 fukaI4wqAs4lw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id EF72637821F2;
	Tue,  4 Jun 2024 12:41:43 +0000 (UTC)
Message-ID: <281bb6eb-dbd1-4f85-872b-0fe105b940a9@collabora.com>
Date: Tue, 4 Jun 2024 14:41:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add OpenWrt
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
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
 <20240527115933.7396-2-zajec5@gmail.com>
 <CACRpkda-egxVtP8Tan9T_EfQX6ekqQDf3LaVUu0by7aWY1Qmag@mail.gmail.com>
 <ed191114-0259-4de9-8e32-6718fd5e6747@collabora.com>
 <a8845e9a-839c-4741-a868-1f415b926d40@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <a8845e9a-839c-4741-a868-1f415b926d40@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 04/06/24 09:14, Rafał Miłecki ha scritto:
> On 3.06.2024 09:37, AngeloGioacchino Del Regno wrote:
>> Il 29/05/24 09:42, Linus Walleij ha scritto:
>>> On Mon, May 27, 2024 at 2:00 PM Rafał Miłecki <zajec5@gmail.com> wrote:
>>>
>>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>>
>>>> OpenWrt project (with the help of MediaTek and Banana Pi) has produced
>>>> its very first own hardware. It needs its own prefix.
>>>>
>>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>>
>>
>> Hello,
>>
>> I'm not sure about who should pick this particular patch - should I pick it into
>> the MediaTek tree, or...?
> 
> We have ack from DT maintainer. Similar PATCH was picked by you during
> the previous merge windows in the commit d67c211261d1 ("dt-bindings:
> vendor-prefixes: add Cudy"). I don't see why this one couldn't go
> through your / mediatek tree :)

Ah, yes, right.

Cheers,
Angelo

