Return-Path: <devicetree+bounces-29452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DDA822F03
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C95FB22967
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CEDF19BD2;
	Wed,  3 Jan 2024 13:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UDiwRsJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F31719BCA
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704290284;
	bh=JO7RVJxRzIBM+hqrV3qvd0udNiqUczY+zEyxv10jhiQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UDiwRsJ88AmZVNG+/rWDyyDNplOitszzyj4Co+jIgdLCUc1iQFnMIDOxenHz5BiNd
	 mv/5O/f0Wx8gPLvcbzTxyy4j3oOuRj/XxYSt/Ch/4F0AWWLFiREcGIgh8VDVPtukZ7
	 D3UHu0k6T9JQMrgmmfkxBCo6YCxSYbLaJNdihpdu/VQn/zSxWAODEnXHJ0YNPuQLgJ
	 O+V6o7diItBMknlJv0xgyforFDMiVLvCTk4CRPNAlyEnq7EyuQ/sjdhqhAiaoDbZ1K
	 75GaEa9L5SuNBKQC98RMYdE7khkE3VKrjKZbim9TLo8Nli6TJP9aXHhlaevafLyP7P
	 qDqSI0Qmxt01A==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id AD8F737813CB;
	Wed,  3 Jan 2024 13:58:03 +0000 (UTC)
Message-ID: <76aefd7f-601e-4cc6-b66f-6e62659791a5@collabora.com>
Date: Wed, 3 Jan 2024 14:58:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan
 node
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231116130816.4932-1-zajec5@gmail.com>
 <a5113b85-e29c-454f-b776-ac7abbca771f@gmail.com>
 <d0734a8f-0b72-4609-a941-da4bdc3e323e@gmail.com>
 <ddbdec9b-f075-4c7e-9411-28baf1e68401@linaro.org>
 <e0fae82d-aa6c-4341-bc56-1370dcf733b1@app.fastmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <e0fae82d-aa6c-4341-bc56-1370dcf733b1@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 02/01/24 12:45, Arnd Bergmann ha scritto:
> On Thu, Dec 28, 2023, at 08:14, Krzysztof Kozlowski wrote:
>> On 28/12/2023 08:03, Rafał Miłecki wrote:
>>> On 14.12.2023 07:43, Rafał Miłecki wrote:
>>>> On 16.11.2023 14:08, Rafał Miłecki wrote:
>>>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>>
>>>> I sent those few trivial fixes weeks ago:
>>>> [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan node
>>>> [PATCH 1/2] arm64: dts: mediatek: mt7986: fix SPI bus width properties
>>>> [PATCH 2/2] arm64: dts: mediatek: mt7986: fix SPI nodename
>>>> [PATCH] arm64: dts: mediatek: mt7986: drop crypto's unneeded/invalid clock name
>>>>
>>>> Could someone pick them up, please?
>>
>> This should happen some time ago but...
>>>
>>> Anyone, please?
>>
>> ... exactly now, this cannot happen. We are way past applying patches
>> for the next cycle. Please ping or resend after the merge window.
> 
> If these are bugfixes, I still take them, only new functionality
> should wait. I still need a reply from the maintainers of course.
> 
>        Arnd

I didn't notice those patches, sorry; just added my R-b's to all four.

Arnd, if you can - please pick.

Thanks,
Angelo

