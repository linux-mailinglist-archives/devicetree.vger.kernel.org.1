Return-Path: <devicetree+bounces-20648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FB5800692
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0B4B1C209CD
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259BC1CAA7;
	Fri,  1 Dec 2023 09:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kEvXUR3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7674B1725;
	Fri,  1 Dec 2023 01:08:45 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7AC51660739A;
	Fri,  1 Dec 2023 09:08:43 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701421724;
	bh=PrNOiryV2LYy+Uuh76/Z7l/ZUYqlS9fP9X5q/gjltQA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kEvXUR3YKIgGpnJipALuVIaL1ELMcPFqwdfQTihCWtCUznQgsfPU6z6+h/7vwHpax
	 CjE/RbwjYK681YEWe7jxwZgYcfVk38p0+DyIgfCjd65aezEKSiV5Yo/GswRXkJd4Yt
	 cEqDBqtBvo+S4VcXNZBjCmOjXJ00bKNOq5Bay27zNK9HCT8ocGkwpDrFeyQTZeTMjq
	 U6DmOdYoHrIjmGjkilxMTSG0fGuanWhNHrq2W2u14+Bi6x6EvfDxbWM8B07/CqS9hV
	 tgEchnPGERtFi2W2ft9YSOxW2Oo2TAiqy2tmICV4e3RwmtunB0uOs27k029+O6DhKZ
	 Fxb2mHk34uqqg==
Message-ID: <d4f33b5c-f80d-4808-8e94-5c01eda34f10@collabora.com>
Date: Fri, 1 Dec 2023 10:08:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183-kukui-jacuzzi: fix dsi
 unnecessary cells properties
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-mediatek@lists.infradead.org,
 Eugen Hristev <eugen.hristev@collabora.com>
Cc: krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 matthias.bgg@gmail.com, kernel@collabora.com, hsinyi@chromium.org
References: <20230814071053.5459-1-eugen.hristev@collabora.com>
 <170126437824.153055.10626099314938040381.b4-ty@collabora.com>
 <299f569f-c3e7-4807-a141-4bbc06435f03@linaro.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <299f569f-c3e7-4807-a141-4bbc06435f03@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 30/11/23 10:01, Krzysztof Kozlowski ha scritto:
> On 29/11/2023 14:27, AngeloGioacchino Del Regno wrote:
>>
>> On Mon, 14 Aug 2023 10:10:53 +0300, Eugen Hristev wrote:
>>> dtbs_check throws a warning at the dsi node:
>>> Warning (avoid_unnecessary_addr_size): /soc/dsi@14014000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
>>>
>>> Other DTS have a panel child node with a reg, so the parent dtsi
>>> must have the address-cells and size-cells, however this specific DT
>>> has the panel removed, but not the cells, hence the warning above.
>>>
>>> [...]
>>
>> Applied, thanks!
>>
>> [1/1] arm64: dts: mediatek: mt8183-kukui-jacuzzi: fix dsi unnecessary cells properties
>>        commit: 4b66a34afe29d991155081b2f1e10482bd00cbaa
>>
> 
>> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>>
> 
> You know, your SoB implies review. Unless you want to say you
> usually apply code without reviewing it...
> 

Yeah, of course it does imply review ... but if there's no actual problem with me
also sending a R-b tag, it's more practical for me, because:
  1. I have mail filters to show me what I reviewed, and
  2. Matthias also can see what I reviewed....

...but I get it that in the specific case of *this* patch, I've sent a R-b just
before applying, so I agree in that this was actually really really useless to do.

so.. whoops :-)

Thanks, btw!
Angelo


