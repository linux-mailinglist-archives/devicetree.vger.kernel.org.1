Return-Path: <devicetree+bounces-71727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 816ED8D7C8F
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 09:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B4481C2090E
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 07:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC9C247A4C;
	Mon,  3 Jun 2024 07:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="J+NxhO1i"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3C55C0A
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 07:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717400263; cv=none; b=IJqiW9EyJhfn5JfB22NjNNQR4FVWy6Dg6LZhKRpUVp6YEWOavTbVOSrDnvvyw3AVMBygZEY1GuKlZutZc6SXluF554uTjiwS10R3QbviNf8yzkubdT04yKQmVzY2XrFI650Qjbh4ZxzSclAVJjyzkZnj9K4IjU5rWB7k3Anrhqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717400263; c=relaxed/simple;
	bh=y+Onjw/NgOT42Z8CqCca/qc73nEWr1sKa2IiCJCVm5I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RgnqZwpBmM0I//U+QdaIfGkb0wF3gAGqyWVfUGp0IkPlME70orrhzskdOq/2i6fq3azGlL5QaoxBuTsXG43Jou/LeRtHAt43XbbSLFdCXSF/c+8LuYjYPjFXDdIO+74C2S9tq8CJUoyKMYVQC2YMmQBsSNMhx+1sY0GqRTG7dYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=J+NxhO1i; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717400260;
	bh=y+Onjw/NgOT42Z8CqCca/qc73nEWr1sKa2IiCJCVm5I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J+NxhO1ia4PXJzDdchChedROoV348Na0shJxbYU9xaf5V4+V0s3PAtQMNMII0Nrzg
	 n5J2lgCYG5icjj/1JTsMVTW6uPqZWKIrt7aBxOunzCAD5Bz9wvom7gLWJDdiD3WWV7
	 76ZrfYpeSGNVMvaWm8QPeR0e/Yx2Yr8/ZUMNS9gx0umztSsIQKO4DzBhQZk6wH6FIQ
	 Yqt5YLS+C0HNoZcIDzTZftbvwlygnRvf9Kju+jL/9zvbbKtxx5ZRsdPs1ULl3+1AMc
	 r/D31ts6g6OqxwBfuaM2PeIeGgxM0xc/uNrzEN/bc0XtOAMZSNUUByln4EBjzZ/J0J
	 rZFevfjjW5DZg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CBB8A3782190;
	Mon,  3 Jun 2024 07:37:38 +0000 (UTC)
Message-ID: <ed191114-0259-4de9-8e32-6718fd5e6747@collabora.com>
Date: Mon, 3 Jun 2024 09:37:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add OpenWrt
To: Linus Walleij <linus.walleij@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
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
 <rafal@milecki.pl>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
References: <20240527115933.7396-1-zajec5@gmail.com>
 <20240527115933.7396-2-zajec5@gmail.com>
 <CACRpkda-egxVtP8Tan9T_EfQX6ekqQDf3LaVUu0by7aWY1Qmag@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CACRpkda-egxVtP8Tan9T_EfQX6ekqQDf3LaVUu0by7aWY1Qmag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 29/05/24 09:42, Linus Walleij ha scritto:
> On Mon, May 27, 2024 at 2:00 PM Rafał Miłecki <zajec5@gmail.com> wrote:
> 
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> OpenWrt project (with the help of MediaTek and Banana Pi) has produced
>> its very first own hardware. It needs its own prefix.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 

Hello,

I'm not sure about who should pick this particular patch - should I pick it into
the MediaTek tree, or...?

Cheers,
Angelo


