Return-Path: <devicetree+bounces-136452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEE2A05449
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CAA687A173D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 07:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A5C1A9B48;
	Wed,  8 Jan 2025 07:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0DNDZ6S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49B59476;
	Wed,  8 Jan 2025 07:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736320451; cv=none; b=W9yxR/2z9wQhlE8uyuDHTwfW9qFoBtxhyOsREnd/gzF3kORK1kFH5JyOfabeimODP1emlHxE89L9F/2sxMjP9UDqaXdyfPus7h1eNw6IeIjxkSjETjqJMmFXeRl2hwPdPHhXFV1RQK5MTKZO6To71cALZkK5T82LjvzKC9naw1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736320451; c=relaxed/simple;
	bh=YrfuhDiaN5Kk4H/BeG4EkczdwaVg2MneeVbXflmk6Q4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=bUSmahwwIAZWbC8rh/IKIENWVtdMZCR6DTsHyhV8e3t0XdOHVwvWksqsk8llckU1JGsNmLvVK+KVabM/a0HI27ydyqwpv8PCVSAwa85Yo2bKsxlkhVnxb6uz4cgseZi0z2IwF2IxePtpsV6JclYG+zfeiprBIu9Jl42JewFL3XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0DNDZ6S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67124C4CEE0;
	Wed,  8 Jan 2025 07:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736320451;
	bh=YrfuhDiaN5Kk4H/BeG4EkczdwaVg2MneeVbXflmk6Q4=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=e0DNDZ6SpOjshUVtsv9Wk6fEF/1iM+vz6TAhJOGVRakSwUg5zdIsEn9SyKxOuJXmL
	 tyNQv2gsFZFopXyl1itBGjV1FYJ5xMzK5fCWV/zCE6zt+Udmnghbu1N1m/3qsVC+Sj
	 GAR8bJgump1mtXfRMgkGeK8RI61He+xiWyTiaMxziE+Tx9buBzxSXe4lhkhtyxDmNc
	 hUjlFe3LA0YZgFMGXFajUzbfARam4dlmo2EjBvoL7cpvApct+QeUdyQ3swTga7iiWm
	 cbqV1HyxL9HK7B3iffSVYr0FBsUzPKQQ8olhTfLuUV17x8ECE0ugxmfVo5EhE5p+ra
	 VdTfp29Jc06oA==
Message-ID: <e85dd7c3-0dfc-499b-bd74-f9be998e488a@kernel.org>
Date: Wed, 8 Jan 2025 08:14:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: add clock-names property to
 nand node
To: "Rabara, Niravkumar L" <niravkumar.l.rabara@intel.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20250107084955.2750154-1-niravkumar.l.rabara@intel.com>
 <096f17cb-cb2a-4f09-8c31-e71348289c1b@kernel.org>
 <BL3PR11MB65326A8A7F2E413B0D8162A6A2112@BL3PR11MB6532.namprd11.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <BL3PR11MB65326A8A7F2E413B0D8162A6A2112@BL3PR11MB6532.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/01/2025 11:21, Rabara, Niravkumar L wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzk@kernel.org>
>> Sent: Tuesday, 7 January, 2025 5:21 PM
>> To: Rabara, Niravkumar L <niravkumar.l.rabara@intel.com>; Dinh Nguyen
>> <dinguyen@kernel.org>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
>> <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>;
>> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: add clock-names property
>> to nand node
>>
>> On 07/01/2025 09:49, niravkumar.l.rabara@intel.com wrote:
>>> From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
>>>
>>> Cadence nand controller driver requires clock-names = "nf_clk" property.
>>>
>>
>> Fixes tag.
>>
>>> Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
>>> ---
>>>  arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
>>> b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
>>> index 51c6e19e40b8..4357572e96e3 100644
>>> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
>>> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
>>> @@ -272,6 +272,7 @@ nand: nand-controller@10b80000 {
>>>  			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
>>>  			clocks = <&clkmgr AGILEX5_NAND_NF_CLK>;
>>>  			cdns,board-delay-ps = <4830>;
>>> +			clock-names = "nf_clk";
>>
>> It does not look like you tested the DTS against bindings. Please run `make
>> dtbs_check W=1` (see Documentation/devicetree/bindings/writing-
>> schema.rst or https://www.linaro.org/blog/tips-and-tricks-for-validating-
>> devicetree-sources-with-the-devicetree-schema/
>> for instructions).
>> Maybe you need to update your dtschema and yamllint. Don't rely on distro
>> packages for dtschema and be sure you are using the latest released
>> dtschema.
> 
> I believe you are pointing to this error message
> /soc@0/nand-controller@10b80000: failed to match any schema with
> compatible: ['cdns,hp-nfc']
> 

No. I refer to this clock-names property. As you can easily see in the
binding: there is no clock-names.

Best regards,
Krzysztof

