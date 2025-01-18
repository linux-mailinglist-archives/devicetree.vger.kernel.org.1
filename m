Return-Path: <devicetree+bounces-139406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25207A15C16
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:12:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 754803A7DFE
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 09:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749FE16FF4E;
	Sat, 18 Jan 2025 09:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9YOIaVk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409291632D3;
	Sat, 18 Jan 2025 09:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737191520; cv=none; b=ExFHVJ90Hq0xkD+f7hetr6Vw+WQpgQEeZ3bgZTGj/G7HhQuU1Q/P5wzfLur+LRbmyfygVLXCGOtOf1/PyZDUKCM7xPT/64eRoY/9BYfeM8WX73G5PtQxeqQK5B9WU8U4wKg2CsbHlTR8YdVe2mjCQUIW0EFm6QZMrgdJgDbWwEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737191520; c=relaxed/simple;
	bh=wSrwL7+zAwTzw2pcRpYszGvXj3TLvyE4g/z421PM3iY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XSEuzUOOHS9FOLKsGef/VLDWNoKSsu0nXH6PTFAYNpxyx9orLDGAhqwefPbaODZdBwkUb1AVvdFlLZDkD0+UJenfgaV3jFdVC8hebx4/TspzqcXAK/Xfjs31cMRslagAXtJD2XXiDC1RJUSmN/j2k3PRrHpkIbZdGlZF2uQfHcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9YOIaVk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14A7FC4CED1;
	Sat, 18 Jan 2025 09:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737191519;
	bh=wSrwL7+zAwTzw2pcRpYszGvXj3TLvyE4g/z421PM3iY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=S9YOIaVkgyChCiUixaGUbVHjhvm3m2NFP+G7QnaTF1oUXbEKIOhCqH+XA80hmskr6
	 L3tZ8wHkfpEDovq7r97WoTXfrhDqzyCENkg6O0G59+pxEhE7gDaCdyoee8sJYfxbuy
	 ftnt5a7BDgptgMV1jfkQle/heSDG3qPXhvbY4jM1kXCbQl3UOtzsZxJuBUbD3omM7q
	 aVmhzni4ETTBE4P733SuyR7u32ahg0Jq+akHdpL5EG8KowOb9kvGSZXg3Dj/OPa3q0
	 P7T3Ewk/+mGThkg3V8kQ9pHSs2XQWLvWFREtIaZdod18UqfOEOCaXgmBTbi5H/Zzyf
	 9j+ANqbKJGYUw==
Message-ID: <bdaee40d-a033-40c6-b96d-d4c73410b7ee@kernel.org>
Date: Sat, 18 Jan 2025 10:11:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: clock: add clock and reset definitions
 for Ralink SoCs
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: linux-clk@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 tsbogend@alpha.franken.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de,
 linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
 yangshiji66@outlook.com, linux-kernel@vger.kernel.org
References: <20250115153019.407646-1-sergio.paracuellos@gmail.com>
 <20250115153019.407646-2-sergio.paracuellos@gmail.com>
 <228a0b1b-68ec-40d2-b379-e9894a34cb57@kernel.org>
 <CAMhs-H-AiYULr8Yd2Cg2qqnvriq3YGrCqnfeKMMGqZyPM3XzeA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <CAMhs-H-AiYULr8Yd2Cg2qqnvriq3YGrCqnfeKMMGqZyPM3XzeA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 16/01/2025 10:53, Sergio Paracuellos wrote:
> On Thu, Jan 16, 2025 at 10:16 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 15/01/2025 16:30, Sergio Paracuellos wrote:
>>> Add clock and reset missing definitions for RT2880, RT305X, RT3352, RT3383,
>>> RT5350, MT7620 and MT76X8 Ralink SoCs. Update bindings to clarify clock and
>>> reset cells depending on these new introduced constants so consumer nodes
>>> can easily use the correct one in DTS files.
>>
>> I asked to explain why these should be in the bindings. Usage by DTS
>> alone, if driver does not use them, is not the reason as I explained
>> last time. The reason is that your driver actually depends on these
>> specific numbers because how it is written.
> 
> The driver uses them implicitly since the clock index is registered
> for any single clock and in a specific order matching these new
> constants.

Yes and that explanation should be in commit msg, because that's the
reason for this patch.

> 
>>
>> Or I understood it wrong and this is purely for DTS?
> 
> No is not purely DTS but constants are going to be used from DTS since
> for clocks we are matching already the index registered on clk_hw
> structs (for example here: [0]) and
> for reset the cells indicate the bit within the register so BIT macro
> is used [1] with the stuff passed from consumer nodes.
> 
> So if I understand what you are asking me to say in commit "Update
> bindings to clarify clock and
> reset cells depending on these new introduced constants so consumer nodes
> can easily use the correct one in DTS files matching properly what is
> being used in driver code".

"being used in driver code (clock IDs are implicitly used there)".

> 
> Would this work for you?


Yes, I want to be sure that commit expresses that driver uses these
indices implicitly, not just passing them to the hardware like IRQ
numbers or reg addresses.


Best regards,
Krzysztof

