Return-Path: <devicetree+bounces-143154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A401A284FD
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 08:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33ECF1885557
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 07:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D8A213E62;
	Wed,  5 Feb 2025 07:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUO8UoyC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACCE25A649
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 07:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738740850; cv=none; b=oEScUgyKM/ZSiKsLYAuaY7pR6tI2xvSVRIrBy/z/6Z9y406O0sOzV7YCPbgZYEqA618E6S+Jf45kY2eUh8DtujY3n9rEnqZALPFjH+7O/YGcOlfqiGltTfU+gIiL7Ynn/4gniQsZs7MubVUQbjdwx8ya4Zc8jcXU7W4+HPdfQlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738740850; c=relaxed/simple;
	bh=hfSf8djy5hTtllDF2aFI0BXeoZW85f56NLjc1r4dcOg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RFt04dzE3O1BW/EGDswY8hRaiQAm93HLWWnyYPX5lVSZpxCp4Sm4ZfBlGDMh9ESz1/msQDFU64erLF4bTx9K5IS+SExNVpyzfwaoNWAyNLebolqnctebL4wlpQyYdQwcZNnt5QzW054i1BDkR8MEsYqQxAONK7+2mkKUdnuxiD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUO8UoyC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E10EC4CED1;
	Wed,  5 Feb 2025 07:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738740850;
	bh=hfSf8djy5hTtllDF2aFI0BXeoZW85f56NLjc1r4dcOg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IUO8UoyC94v2p/uPu2QedFxw6ksTgCG+xykgtw7nBFNxIutrAuvRkPsnND7CV1JAS
	 xj48DN1T9GSXMfyWjX9yZ8K/6+YdK2aAr5ZXmsEnmnfH7eiC5iuxmLiuQdCfoxn/oZ
	 mlcE5udHOAh6EWmdedjtv5NPCyLU4AI0yiXVlnzHntIINWDPzQomhFGW14sfi0Pksv
	 feJOUMw81pIwILmCmdv65ov7Dzw3UCw/Vbk9y0Yyv/8aWYWn+9a+O1RIPI3qHEvFT+
	 kxwx2gCcdkB9O/r0Iug93/ZCBi5IVQVjxL442dCkdhxr/feiiknmG+eQ46QXZlNGkO
	 y/cU1TRiFBarw==
Message-ID: <8b79700d-f628-4e65-b9a5-63bbc3958cc1@kernel.org>
Date: Wed, 5 Feb 2025 08:34:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: Introduce more nodes to EN7581 SoC evaluation
 board
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
References: <20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org>
 <4656ae57-c6a1-48ac-a60f-72d7b988c307@kernel.org>
 <231c1f01-dea1-4c39-bbe1-cb629f7c109d@kernel.org>
 <Z6I9JzAVv3VjKOiE@lore-desk>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <Z6I9JzAVv3VjKOiE@lore-desk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/02/2025 17:15, Lorenzo Bianconi wrote:
>> On 03/02/2025 17:04, Krzysztof Kozlowski wrote:
>>>> +
>>>> +		rng@1faa1000 {
>>>> +			compatible = "airoha,en7581-trng";
>>>> +			reg = <0x0 0x1faa1000 0x0 0xc04>;
>>>> +			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
>>>> +		};
>>>> +
>>>> +		system-controller@1fbf0200 {
>>>> +			compatible = "syscon", "simple-mfd";
>>>
>>> These are never allowed alone. I am pretty sure I added proper checks
>>> which should point it out, so I think you did not really test your DTS.
>>>
>>> It does not look like you tested the DTS against bindings. Please run
>>> `make dtbs_check W=1` (see
>>> Documentation/devicetree/bindings/writing-schema.rst or
>>> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
>>> for instructions).
>>> Maybe you need to update your dtschema and yamllint. Don't rely on
>>> distro packages for dtschema and be sure you are using the latest
>>> released dtschema.
>>>
>>
>> Now I see Rob's report:
>> arch/arm64/boot/dts/airoha/en7581-evb.dtb: system-controller@1fbf0200:
>> compatible: ['syscon', 'simple-mfd'] is too short
>> which confirms untested code. Schema is there for a reason. :(
> 
> actually I have tested them with the following command (but without W=1).
> 
> make CHECK_DTBS=y DT_SCHEMA_FILES=airoha airoha/en7581-evb.dtb
> 
> - dtschema 2024.11
> - yamllint 1.35.1
> 
> With W=1 I can see more issues, I will fix issues in v2.

Rob's warning does not come from W=1. Your test cmd was incorrect: drop
DT_SCHEMA_FILES. You must test your code against ENTIRE bindings, not
some subset.

Best regards,
Krzysztof

