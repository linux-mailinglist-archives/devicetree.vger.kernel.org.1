Return-Path: <devicetree+bounces-233852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4718CC26282
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 17:39:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 206574611E3
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 16:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785A62F12A7;
	Fri, 31 Oct 2025 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZNzqTuFk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A4E2D47F6
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 16:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761926793; cv=none; b=fXp3AkyOusBR4Vh1b6DZ8lJpnDshLmkZWvrwVVwzwCwQC17l91Th/FWpKwOUI+aoeFq16iHvPMrmWhfFm3620OuPyNHjBrltUynEGMKKbLWUI4ox/RbqTd9hLyu+G9rTvlQQgekWZbam9fGJXw+JiZQ/WnErLgXURC3cSZvPrLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761926793; c=relaxed/simple;
	bh=K5YIOa2uekYTR7BG1QeqoaCyvyNsybzRqs7pinkLnWU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PxFInQHZfXIoRm3QeBdrwRqNUddcdTC890EmcpuNRza4ONWsNjgJe7uTrArG2zoGbcs5MwxYLOYYEOBnniR31l57MPBl4u1+3Mi5l5pNswa8hE9XK5PlF/H1nRcruBp0AC8fyDqW/R9fH8y42rp66F4bHnwraDdZtK43e+XfGlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZNzqTuFk; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so19656625e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761926790; x=1762531590; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eRyeAIdNCNVWpBCeP53EIPuNRhQqWF48SYqRwaIlzas=;
        b=ZNzqTuFkTuBZ8f3SDYnyOaDh3AHx8D37teQ2vkgeDtIR5KDXf2wyELVdYJGQOPSFv8
         Q7RVHmwnYZXFiOlkxarzJzADWZjhHpTjEs0tjiulqiw2MmdvBvqbqUseRPZHxPXbgxQH
         1TDXTvsJ9rb7jfPP228WbC0h4S1GEhWdEsv4/042sXXVXme7/J3Y4cAPmQ2cJyGsfHWZ
         uyqlhCR43cn6k6csSlyvOBcbVYEq3dDlT4yOFp3RpYPNVXVrdgYcdbEDWRDQq+xfqYNM
         YRXM5KxO+joZOmNkQZl/IN0gz6CNm3cEF1X3xPPA2b9hYgmePIu611YrviEnKtyhQ0s5
         3jVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761926790; x=1762531590;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eRyeAIdNCNVWpBCeP53EIPuNRhQqWF48SYqRwaIlzas=;
        b=C9lC9IPdupBLmvUSNgRySWEwdtheDRUs4W9qrfz6owO4BhKGFIJlxcSCQdjaZTvMM/
         HrnrXyQg+PdW/5vN9TgUVwrcw44t8Cqb7ljrvU4eTv9plQ0vRDJcC03mLDmQDtT71mzu
         wo8yg5LEHkUgefGR4ZJW/NAqMBc6P+NGmQsfLl5O16tUOzTDTGOMN5kcCSvsL/IrsbTx
         grVmxlg4qffoCFpFAnRahuZFFkjr+DIFzlfLohJYOocdINbgnb6U01ZEQVfM4p/eqXY5
         M67IQTMijDO16Oc8b88Bg9dyN8Z2uZA6YsiVoFJYXV6fcfl8ElLcfYurx1PYBztYb+dR
         BtqA==
X-Forwarded-Encrypted: i=1; AJvYcCUcB8y6wPtVFCq2YNb7R3ZSaS25cXCgCGkuxyrNmAVWgyhz7Y+h/1VbXrxr/BaYe+uRa/2mtFbd+Oo8@vger.kernel.org
X-Gm-Message-State: AOJu0YzZqcsL/JJ0LfUWyyOEa00Rthv77ADR/Ciqjm8np8pNnWLCa5mA
	GM4RPBtLHjfPtnOCABxB01aGQ7R/zSwSWLJLB8Z1sFcBPy5EfxIjuWpdadHifyND+4g=
X-Gm-Gg: ASbGnctnkAsNBQSsw6txL2lJ5UshOxNHUWM0UB9rbJxW2FyilLSlXw/Vjmxthrr1GHX
	dpaXxYbl1DL6ljf8AccLtSqPGkr5P68/vLAvIYbC3WNkNRtk5VJBEprKLNJqzE4CbmWZchfMh4I
	cD0/JEye2B5hvme6SzhD7l9VP85eAarIM/7Z7hm5oY6LYQ1QHjGPI4n2GgpENRy8Didxo9mAkq6
	yogajVwyvj5Kf84ld+6MeyjdwdtSFS0jbp8rVBtuvK6vGzEC0B76D3XBbpInHEXC0PuBdAPRFnA
	2+QXFG/hx160khCRhBqAj0qEb6uKsK6g2pw6PyySIp6wPtkAD3XNS27cVN3JvSEDgEf43osriLb
	osFGonuOTB4hH9PB4TWIUJryixrfiFEiNIKLtGCjb1FirndvJptZVzS0ZpB5KiI8DaGtuRGpxcs
	7FfeHdlhjKJaxxHnxUIM1JOGFnpgJrDhU=
X-Google-Smtp-Source: AGHT+IFCU6WaBZgiF/ZmQ2rOEta9IrMmGJFMsWC5NGLfn/XlBZep1GcrbuAmBW+nOAHJjxzhUAPNvQ==
X-Received: by 2002:a05:600c:b8a:b0:46f:b42e:e39c with SMTP id 5b1f17b1804b1-477308efe61mr37787825e9.41.1761926789560;
        Fri, 31 Oct 2025 09:06:29 -0700 (PDT)
Received: from [192.168.0.252] ([82.76.204.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c13ec105sm4271473f8f.36.2025.10.31.09.06.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 09:06:28 -0700 (PDT)
Message-ID: <336b06a7-8772-443e-8716-99e52ac4cc7e@linaro.org>
Date: Fri, 31 Oct 2025 18:06:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: nvmem: add google,gs101-otp
To: Conor Dooley <conor@kernel.org>, Srinivas Kandagatla <srini@kernel.org>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org>
 <20251031-gs101-otp-v1-1-2a54f6c4e7b6@linaro.org>
 <20251031-seltzer-briskness-6f223654c993@spud>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20251031-seltzer-briskness-6f223654c993@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/31/25 5:02 PM, Conor Dooley wrote:
> On Fri, Oct 31, 2025 at 12:45:09PM +0000, Tudor Ambarus wrote:
>> Add binding for the OTP controller found on Google GS101.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  .../bindings/nvmem/google,gs101-otp.yaml           | 68 ++++++++++++++++++++++
>>  1 file changed, 68 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml b/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..2144911297beb89337b0389b30fe6609db4156ea
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
>> @@ -0,0 +1,68 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/nvmem/google,gs101-otp.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Google GS101 OTP Controller
>> +
>> +maintainers:
>> +  - Tudor Ambarus <tudor.ambarus@linaro.org>
>> +
>> +description: |
>> +  OTP controller drives a NVMEM memory where system or user specific data
>> +  can be stored. The OTP controller register space if of interest as well
>> +  because it contains dedicated registers where it stores the Product ID
>> +  and the Chip ID (apart other things like TMU or ASV info).
>> +
>> +allOf:
>> +  - $ref: nvmem.yaml#
>> +  - $ref: nvmem-deprecated-cells.yaml
> 
> Why are the deprecated cells needed here?
> |  Before introducing NVMEM layouts all NVMEM (fixed) cells were defined
> |  as direct device subnodes. That syntax was replaced by "fixed-layout"
> |  and is deprecated now. No new bindings should use it.
>

This OTP controller has an OTP memory space that can be read/program/lock
using specific OTP commands /register pokes (I'm not adding support for
this in this patch set).

The OTP controller register space contains dedicated registers for the
Product ID and Chip ID, which I'd like to expose as nvmem cells so that
a client can parse them and register as a soc device (see [1]).

Right now I need to expose the OTP controller register space, but I
expect that the OTP memory space will need to be exposed as nvmem cells
in the future as well.

Thus I need to be able to expose both the OTP register space and the
OTP memory space as nvmem cells in DT. I thought of using the deprecated
(fixed) cells for the OTP register space and the fixed-layout syntax
for the OTP memory space.

What is the recommended way to expose the OTP register space? I guess
an alternative is to add empty nodes as direct device subnodes, and
define and add the cells to the nvmem device from the driver using
config->cells.

[1] https://lore.kernel.org/linux-samsung-soc/20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org/T/>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - const: google,gs101-otp
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    const: pclk
> 
> Why bother with clock-names when you only have one clock? Are you
> anticipating a variant with more?
> 

Likely, but I'll drop the name. We can add it later on.>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - clock-names
>> +  - clocks
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/google,gs101.h>
>> +
>> +    otp: efuse@10000000 {
>> +        compatible = "google,gs101-otp";
>> +        reg = <0x10000000 0xf084>;
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
>> +        clock-names = "pclk";
>> +
>> +        product_id: product_id@0 {
> 
> Why does this node name have an underscore?

I forgot to update, will use product-id for the name> 
> Additionally, all nodes here should lose their labels.

and drop the labels from the examples.

Thanks!
ta

