Return-Path: <devicetree+bounces-48328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 687C787172A
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 08:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E84FB285EFE
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 07:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CDE97E777;
	Tue,  5 Mar 2024 07:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HgQuaLYh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54ADD7E773
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 07:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709624590; cv=none; b=AzhVLeVSJc5uIYIP2Y29S3K/6/ahi2LKz+sTql9UyWOuG7U1PEv7/yIpTkRs5xGls3vCbrYmhjLAlHzcGCC+1GwXnX1HJqoMOXnSO4F9PgHZIXQT7oQlT3KlItnX9YyThHXDIsvtAN3Li2elpNzPe+DjPBDB99bEO83DpI6Ngws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709624590; c=relaxed/simple;
	bh=XzAMOJp2cnaLDfXMCu21thXIzE0KzbK3HQKIo/jV4Wc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YG0fnxqVTk//Jo23kUBHQfHiXysxsGrmagUG4i3908AFitQBYFqsxyaiNpyJc/874toWeLQBGXzqnTta08SuFyJYU1D3KEzURipcLKtZ6YDUn+oTVVcB+B6vw7nsJ8ucrUE3/jXTwYpJaZisqqGETX8Rt497EE9WLWKkAbmiFNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HgQuaLYh; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-566e869f631so4218286a12.0
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 23:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709624586; x=1710229386; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AlDJ7kh3O0zrMMWsz44HvinNJM2mBd0ElOmtZs1RiZU=;
        b=HgQuaLYh2mQ/RXefX1ZeZQMPAQbo3e/KZAwmynh3wtqHos5c7zXSGR66uFEZv4oN7x
         mEJfDr9YuIHbt+d1v54RXA6jyexKAfVTYSkfYwwSIOgCOXyk0ksoCPiqLVBmzT88igm/
         WeX6gvxqOpO91MH85eb/CeiaItr+vyS+9rItK1tBwCE51RJwfr1+r3U/6H2naHgMgS7W
         UKDXvvLI5/U8ouJAaF2Qx/ekAgIp6lOZ/yU56DdhT5zXarGYecslRhkFfA1Pewe6e+vF
         q0AMlOkJH1aKc+adBm5KPuwoFdIHh1KFLr6bWRiXsY048G4WkjP1MFNPVFNpFxbxt8+v
         efbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709624586; x=1710229386;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AlDJ7kh3O0zrMMWsz44HvinNJM2mBd0ElOmtZs1RiZU=;
        b=kc7j8zod9Zq0pIi8npkaxt0nmH0pxeQZbyq63ROH0S+mLOiTicjG3j5pP5UDNoN67t
         KHNH9RBtN78oXCyD2beUHll4K6OqsS6XZ7AQ8Y/xKDhRlBlUJRCgXp/P5aQD6c3mw7Qo
         XAjgw0USTQtdJ77RWDMq1XyCGFKbSzvFH0Qq1zVtQMT3zfBtr/6ppqWwhx9GKco7aDtd
         Fgvm9mcO3J7IEniA+zqzq3lGfd66flZiXjImjGTZoUxzofD1Ig4llhh0yBNafeD5t48s
         jkaGxxpYU1GeLewmlOGF7UZaaocl7SRcVvY8Fs//5lkp+kqV2dNBN+JPlF3bP9cniner
         59mg==
X-Forwarded-Encrypted: i=1; AJvYcCUy/e9RS8CV3z3xuAEfO97zFJLgvSDGelgVE8hgSyHbiJPxYlY3Gycsm/KPFUTz22v96IdXTh0OtsBFIM9WAiAxWkxmEt9iIyDyCw==
X-Gm-Message-State: AOJu0Yw/VhsUMfLMYMTB0m1emF1CycCT9mGL0QREyRRKtcJYPaswkdQv
	6lAMH9H6RfWF+bEwCnChCNtiVslO/sxBqol5GVl2E8Uvsm5i/3LEssTKaNfGnXo=
X-Google-Smtp-Source: AGHT+IFsVVDHP3/Dnmgh2YLaFgXTyyFDDgAhL/ynNmKZh1B4lulVXlsqR8tw2Xh/enquUajTMD09JA==
X-Received: by 2002:a17:906:1cc2:b0:a44:4578:c79d with SMTP id i2-20020a1709061cc200b00a444578c79dmr6044633ejh.4.1709624586499;
        Mon, 04 Mar 2024 23:43:06 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id jw11-20020a170906e94b00b00a455d78be5bsm1763376ejb.9.2024.03.04.23.43.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 23:43:06 -0800 (PST)
Message-ID: <48902771-5d3b-448a-8a74-ac18fb4f1a86@linaro.org>
Date: Tue, 5 Mar 2024 08:43:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: hwinfo: ti,k3-socinfo: Add nvmem-cells
Content-Language: en-US
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Andrew Davis <afd@ti.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240206143711.2410135-1-msp@baylibre.com>
 <20240206143711.2410135-3-msp@baylibre.com>
 <20240206184305.GA1875492-robh@kernel.org>
 <z56fiu2jpokp57sjvnrdcbfy7brpq2ag4yxpektqlhtidecx4n@vc7dsurhxorb>
 <cb75c098-521e-4eed-bc3e-7237f8a6498f@linaro.org>
 <ut63wrhsewkpfdgaatd6hqmj5upvyamjhf2rsecju2v2o3hdod@kyi5sezcggl7>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ut63wrhsewkpfdgaatd6hqmj5upvyamjhf2rsecju2v2o3hdod@kyi5sezcggl7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/03/2024 11:36, Markus Schneider-Pargmann wrote:
> Hi,
> 
> On Sat, Feb 17, 2024 at 03:25:30PM +0100, Krzysztof Kozlowski wrote:
>> On 14/02/2024 10:31, Markus Schneider-Pargmann wrote:
>>> Hi Rob,
>>>
>>> On Tue, Feb 06, 2024 at 06:43:05PM +0000, Rob Herring wrote:
>>>> On Tue, Feb 06, 2024 at 03:37:09PM +0100, Markus Schneider-Pargmann wrote:
>>>>> The information k3-socinfo requires is stored in an efuse area. This
>>>>> area is required by other devices/drivers as well, so using nvmem-cells
>>>>> can be a cleaner way to describe which information are used.
>>>>>
>>>>> If nvmem-cells are supplied, the address range is not required.
>>>>> Cells chipvariant, chippartno and chipmanufacturer are introduced to
>>>>> cover all required information.
>>>>>
>>>>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>>>>> Reviewed-by: Andrew Davis <afd@ti.com>
>>>>> ---
>>>>>  .../bindings/hwinfo/ti,k3-socinfo.yaml        | 23 ++++++++++++++++++-
>>>>>  1 file changed, 22 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
>>>>> index dada28b47ea0..f085b7275b7d 100644
>>>>> --- a/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
>>>>> +++ b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
>>>>> @@ -26,9 +26,24 @@ properties:
>>>>>    reg:
>>>>>      maxItems: 1
>>>>>  
>>>>> +  nvmem-cells:
>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>> +
>>>>> +  nvmem-cell-names:
>>>>> +    items:
>>>>> +      - const: chipvariant
>>>>> +      - const: chippartno
>>>>> +      - const: chipmanufacturer
>>>>> +
>>>>>  required:
>>>>>    - compatible
>>>>> -  - reg
>>>>> +
>>>>> +oneOf:
>>>>> +  - required:
>>>>> +      - reg
>>>>> +  - required:
>>>>> +      - nvmem-cells
>>>>> +      - nvmem-cell-names
>>>>>  
>>>>>  additionalProperties: false
>>>>>  
>>>>> @@ -38,3 +53,9 @@ examples:
>>>>>          compatible = "ti,am654-chipid";
>>>>>          reg = <0x43000014 0x4>;
>>>>>      };
>>>>> +  - |
>>>>> +    chipid: chipid@14 {
>>>>> +        compatible = "ti,am654-chipid";
>>>>
>>>> This isn't compatible if you have a completely different way to access 
>>>> it. 
>>>
>>> Thanks, it is not entirely clear to me how I could go forward with this?
>>> Are you suggesting to use a different compatible? Or is it something
>>> else I could do to proceed with this conversion?
>>
>> What you claim now, is that you have one device with entirely different
>> interfaces and programming model. So either this is not the same device
>> or you just wrote bindings to whatever you have in driver.
>>
>> Nothing in commit msg explains this.
>>
>> What you should do? Depends. If you just write bindings for driver, then
>> stop. It's a NAK. Instead write bindings for hardware.
>>
>> If the first choice, just the hardware is somehow like this, then
>> explain in commit msg and device description, how this device can be
>> connected over other bus, not MMIO. You can draw some schematics in
>> commit msg explaining architecture etc.
> 
> Sorry the information provided in the commit message is not very clear.
> 
> The basic access to the registes is still MMIO. nvmem is used to have a
> better abstraction and cleaner description of the hardware.
> 
> Currently most of the data is exported using the parent syscon device.
> The relevant data is read-only and contained in a single register with
> offset 0x14:
>   - Chip variant
>   - Chip part number
>   - Chip manufacturer
> 
> There are more read-only registers in this section of address space.
> These are relevant to other components as they define the operating
> points for example. For the OPP table relevant are chip variant and chip
> speed (which is in a different register).
> 
> Instead of devices refering to this whole register range of 0x20000 in

Whaaaaat?

> size, I would like to introduce this nvmem abstraction in between that
> describes the information and can directly be referenced by the devices
> that depend on it. In this case the above mentioned register with offset
> 0x14 is instead described as nvmem-layout like this:
> 
> 	nvmem-layout {
> 		compatible = "fixed-layout";
> 		#address-cells = <1>;
> 		#size-cells = <1>;
> 
> 		chip_manufacturer: jtagidmfg@14 {
> 			reg = <0x14 0x2>;
> 			bits = <1 11>;
> 		};
> 
> 		chip_partno: jtagidpartno@15 {
> 			reg = <0x15 0x3>;
> 			bits = <4 16>;
> 		};
> 
> 		chip_variant: jtagidvariant@17 {
> 			reg = <0x17 0x1>;
> 			bits = <4 4>;
> 		};
> 
> 		chip_speed: jtaguseridspeed@18 {
> 			reg = <0x18 0x4>;
> 			bits = <6 5>;
> 		};
> 
> The underlying registers are still the same but they are not hidden
> by the syscon phandles anymore.
> 
> The device that consumes this data would now use
> 
> 	nvmem-cells = <&chip_variant>, <&chip_speed>;
> 	nvmem-cell-names = "chipvariant", "chipspeed";
> 
> instead of
> 
> 	syscon = <&wkup_conf>;

syscon allows you this as well - via phandle arguments.

nvmem is for non-volatile memory, like OCOTP and eFUSE. This is not for
accessing regular MMIO registers of system-controller, regardless
whether they are read-only or not (regmap handles this nicely, BTW).
Although probably Apple efuses and few others can confuse here. It still
looks like you convert regular system-controller block into nvmem,
because you prefer that Linux driver abstraction...

Best regards,
Krzysztof


