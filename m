Return-Path: <devicetree+bounces-89780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64481942B11
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 11:45:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABE21B239BC
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 09:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777411AB502;
	Wed, 31 Jul 2024 09:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4OuVXCX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C731AAE13;
	Wed, 31 Jul 2024 09:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722419083; cv=none; b=eAUUuhezlNxqRGW4WZ04u5rPHVw2DI7LRIMGvLLWMh4jTcVBejOnw/hZelDm22VJCx9HmaRC1BetwaQYf82zqM3Hn0pQ01kPNbo9ge6BW3YZTRYFfRJ+Egk7gV777D+8BO7r5KeeOHrnKGctbWi0j0Ms7wcFTQ8G118r76Jdb/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722419083; c=relaxed/simple;
	bh=crVqC2Bga0UvBn87o71gcZy+LewySJ3ybRAxogOcgDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AaeqvAFTjXMFCx/VSyv529zyKKGMmzpLFZruqeXe6oP074vDJcJOe6kQRqgSdZv2k0f/Crcp6B41BPfAMNwjXTgB/D8+GxvHXWAYlafwOcjS18e1dKk7w4scTAEBUbxNHdwzWqP1qhLawTuA5HNnR/xOOttEcxTWuM4boTd7gi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4OuVXCX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 191E5C116B1;
	Wed, 31 Jul 2024 09:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722419082;
	bh=crVqC2Bga0UvBn87o71gcZy+LewySJ3ybRAxogOcgDM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=d4OuVXCXBt6SvEkK5KyLLZeXT55qi7n4KwEKDICztpk3l0P0ZMUUzMJTguI9PgMty
	 T9quXSv9q06HAaD/fBdER7Jpyk3eaEsJ6mIS6jWLTFr8ZKLQZlPAPGFzOJtQvpTcX+
	 7aPktrSyHCAjaOo6cvR1Bd8ps8F/5i05ZQO3KU2RFbYHHzN6PaZhVfDdR5J3ufcT66
	 r0zeeE4u5p62K/LnflaW4Z/Xdx4LCN2cUNt92MSCfyNj7hqy56Fc08lwTgR6/uRQG3
	 qLCbm/dVXnl5eWV1QJtQq1qNcBTr/k6rd5fSydppTo4kB4l7lb03Ukz4x9PGbY5ITY
	 INB0ZIqlHcRAw==
Message-ID: <178bf399-2a13-4331-bb0d-341fe47ab112@kernel.org>
Date: Wed, 31 Jul 2024 11:44:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] dt-bindings: arm64: mediatek: Add
 kukui-jacuzzi-cerise board
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Hsin-Te Yuan <yuanhsinte@chromium.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20240731-jacuzzi_dt-v2-0-4995335daa30@chromium.org>
 <20240731-jacuzzi_dt-v2-2-4995335daa30@chromium.org>
 <bb696e60-642f-43f1-9ccf-972e1d839bcd@kernel.org>
 <909d4058-e3e9-4b59-b476-8f78e668c73b@collabora.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <909d4058-e3e9-4b59-b476-8f78e668c73b@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/07/2024 10:47, AngeloGioacchino Del Regno wrote:
> Il 31/07/24 10:16, Krzysztof Kozlowski ha scritto:
>> On 31/07/2024 08:26, Hsin-Te Yuan wrote:
>>> Cerise is known as ASUS Chromebook CZ1.
>>> Stern is known as ASUS Chromebook Flip CZ1.
>>>
>>> They are almost identical. The only difference is that Cerise is a
>>> clamshell device without touchscreen and Stern is a convertible device.
>>>
>>> Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
>>> ---
>>>   Documentation/devicetree/bindings/arm/mediatek.yaml | 14 ++++++++++++++
>>>   1 file changed, 14 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
>>> index 1d4bb50fcd8d..087773a43673 100644
>>> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
>>> @@ -146,6 +146,20 @@ properties:
>>>           items:
>>>             - const: google,burnet
>>>             - const: mediatek,mt8183
>>> +      - description: Google Cerise (ASUS Chromebook CZ1)
>>> +        items:
>>> +          - enum:
>>> +              - google,cerise-sku0
>>> +              - google,cerise-rev3-sku0
>>> +          - const: google,cerise
>>> +          - const: mediatek,mt8183
>>> +      - description: Google Stern (ASUS Chromebook Flip CZ1)
>>> +        items:
>>> +          - enum:
>>> +              - google,cerise-sku1
>>> +              - google,cerise-rev3-sku1
>>> +          - const: google,cerise
>>
>> Why not google,stern? If this is not compatible with cerise and has
>> different name, I think logical would be to have different compatible -
>> either here or the first one.
>>
> 
> They're both compatible, but the commercial names are different because one
> is convertible, one is not... and the bootloader still checks for cerise
> even on stern - that's how I read it, and it's not the first time...
> 
> ...but it doesn't hurt to have a "google,stern" compatible added to the mix,
> it's just one more const to add... and I don't have any strong opinion about
> that, so, Hsin-Te, it's your call. :-)

OK. Such explanations - including that bootloader expect exactly these
strings - should be in commit msg.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


