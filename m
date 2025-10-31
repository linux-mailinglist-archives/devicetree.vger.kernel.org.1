Return-Path: <devicetree+bounces-233489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9249C22E3E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 02:38:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0635E3AAC83
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 01:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0EB12517AF;
	Fri, 31 Oct 2025 01:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="uXty7MD2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FC324DD09
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761874641; cv=none; b=N9pggcCgclDY6mTWpF6kLJM0S0wd9UZIKpYndWxZUfF/cPVDoFxuFE6tNgNimDcDzPvJWGas6AwS1qtiwrGE9JfFf91wo65WeUk1npZ0wDMkf8u2Tyxtkce6bRJYNvSEsPhKK9NICNkxgN7VGdmqDigk/6dTlf4f1UIJeCh0Osg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761874641; c=relaxed/simple;
	bh=nQ29tceSmQ4urDG0IsVFtbhp5svpPgNTCQfprJofihs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ApTZw7aAFAWTtn8dsHIoEbBBBfbxUeXICP7FxFTXRNOdYLjDdnB+uZAwZt+cULNV/g2TlXRU7zTImt3zrKLnfwSI82LGt8ZabRcI8poGZTBJR3WNmRDFmnBn9eKw4W7MjlY/AJbIS1rQul9Z9GDbN/216601ZRvIFq6Aa+6Cb4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=uXty7MD2; arc=none smtp.client-ip=209.85.166.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f195.google.com with SMTP id e9e14a558f8ab-433100c59dcso773965ab.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761874638; x=1762479438; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MZXfwu/E+BC+JAhEUtk1GdLUOAn+XEVcnmRSn9TxWj8=;
        b=uXty7MD2IMXtj/z2YgEmQfmOPcGb9VBgZY/cYAYCiYEDpIyToMZuA/kRHfE+ZGDyHs
         hdfQ3+3WdJ/gW8+b7OAW4wP5DWCqtCUQGauVyV+uvF6s+BkY0rmrkqo/pYXc0UMOnP4H
         FmUmzIeQJx7ezApiDcl7829rTv6xNoXJHBrYibXPoPn1gpzR8oUGHQWLPH/KjHOQtGwc
         NYE721SFaQmAa3WWk1B2jV8vpvUwk5DBu51p+vPi5M0hKDgOaE+gTAwKIqCAyO86ylaW
         Fwxhw0mOMG3vArfRVV8Q1AenBBgtGrcmCbYIpB+yOIN7tjtL+/YMuSQx+/S/94X1Fpdi
         tTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761874638; x=1762479438;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MZXfwu/E+BC+JAhEUtk1GdLUOAn+XEVcnmRSn9TxWj8=;
        b=A1CuWc9+zYafXBUkbTvh02tSw+LsNVb9OpaYNiOpXAW2hYzZLr6mIwg2yMZv+NEkP8
         P4rq8hdtRan36iBx6XHvJpeKwnvjH/QcQg1z+0oI0ivLros7YDFdaQ8MbH2gZUIRkHAr
         lSzmVHxZCol1lgcdgnu6g0QkZ+mIxk/EUefCAEQZomLfy+ph6KuPoP/31KjGd3a9Q97/
         gb72gXekWyXWrTc92+tGY4M1KPOvzejBQ5a2uDP8o2w2eIcwc232nuIIlyaKXrMFIcp5
         mjNm7N2CC/4d2Arg+IeMPv4A8h+dBbBQieKW8xW2gFixbEKhMhLOX7Az2t7OQfNYFqS2
         /cgA==
X-Forwarded-Encrypted: i=1; AJvYcCVyHs5a1SUDNugcP1BIAwCVNmQL1USYKEVb/UuDpt4i3Zv3t6j5sl4LYCq1LLrlj2DdRkrsjvLqF5Xn@vger.kernel.org
X-Gm-Message-State: AOJu0YzW8sYT+YL58UJdsEXVhEmvP9FFBGa9PP5r++H8Mw4KFWCip4ZV
	LJ3YH3JT73DygrwWJCMm64CuIVttHLhXCKdsyWA0MMCyZ+PkaCfgAz2GUs9dvXKQHa4=
X-Gm-Gg: ASbGncuUwHp70oMPpck8pgO4XvQjiLvhcLrFYjL2F78QNj6VpDoiGu1cjMbahzDau1a
	y0vD9R2p0EC5q69Cs61D85h6uYNGcD2I7hOOti+k8SBCCxYN9TsZM0xBk/wvvbdoyjonEeqLPGh
	eIHAXJIDDEIKxulshBrGWszymNIkufIVNo7Yj0+qRSW6yKZqz52xrxAvRZWWrqmf6WKtozhBIKi
	eoMponj4atCHvkgtWuxjn8+l3ExmJ3LbWyCNLPJO4wzj0MR5hnm80hiu//pVmPqz45IT+VuWYfJ
	wU9Ab78IZSe+jz92gw63MKDmmAAjAJB+/gma5uVsnDobhkxsAwMG98IxJXnghso/8QGPaDc683A
	TMk9tLrpS+CNeqiOokWRPzW7utSXnDlw42yc2TI7CcIqbDnuHSzcunQ5kldApFynGXtgV0KHdrp
	XQ2rt1+YC6lUTXjAwnQ4ChN0CYm6E6gpk4mBXwZc8T
X-Google-Smtp-Source: AGHT+IF8jKPMcN4haMJfj2iiZ24svqDtow1spkbfII1MB862Q9VVregRX2uRZw72R6OIomLop1+AMQ==
X-Received: by 2002:a05:6e02:b27:b0:430:af13:accc with SMTP id e9e14a558f8ab-4330d1280afmr28635775ab.7.1761874638596;
        Thu, 30 Oct 2025 18:37:18 -0700 (PDT)
Received: from [172.22.22.234] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-43310245c34sm1321815ab.2.2025.10.30.18.37.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 18:37:18 -0700 (PDT)
Message-ID: <9e60f7ed-7afc-4151-a301-4a0832b9105f@riscstar.com>
Date: Thu, 30 Oct 2025 20:37:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/7] dt-bindings: pci: spacemit: introduce PCIe host
 controller
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, bhelgaas@google.com,
 lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 dlan@gentoo.org, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251030220259.1063792-1-elder@riscstar.com>
 <20251030220259.1063792-4-elder@riscstar.com>
 <20251031005718.GA539812-robh@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251031005718.GA539812-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/30/25 7:58 PM, Rob Herring wrote:
> On Thu, Oct 30, 2025 at 05:02:54PM -0500, Alex Elder wrote:
>> Add the Device Tree binding for the PCIe root complex found on the
>> SpacemiT K1 SoC.  This device is derived from the Synopsys Designware
>> PCIe IP.  It supports up to three PCIe ports operating at PCIe gen 2
>> link speeds (5 GT/sec).  One of the ports uses a combo PHY, which is
>> typically used to support a USB 3 port.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   .../bindings/pci/spacemit,k1-pcie-host.yaml   | 157 ++++++++++++++++++
>>   1 file changed, 157 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>> new file mode 100644
>> index 0000000000000..58239a155ecc0
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>> @@ -0,0 +1,157 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pci/spacemit,k1-pcie-host.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: SpacemiT K1 PCI Express Host Controller
>> +
>> +maintainers:
>> +  - Alex Elder <elder@riscstar.com>
>> +
>> +description: >
>> +  The SpacemiT K1 SoC PCIe host controller is based on the Synopsys
>> +  DesignWare PCIe IP.  The controller uses the DesignWare built-in
>> +  MSI interrupt controller, and supports 256 MSIs.
> 
> Wrap lines at 80.

OK.

>> +
>> +allOf:
>> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: spacemit,k1-pcie
>> +
>> +  reg:
>> +    items:
>> +      - description: DesignWare PCIe registers
>> +      - description: ATU address space
>> +      - description: PCIe configuration space
>> +      - description: Link control registers
>> +
>> +  reg-names:
>> +    items:
>> +      - const: dbi
>> +      - const: atu
>> +      - const: config
>> +      - const: link
>> +
>> +  clocks:
>> +    items:
>> +      - description: DWC PCIe Data Bus Interface (DBI) clock
>> +      - description: DWC PCIe application AXI-bus master interface clock
>> +      - description: DWC PCIe application AXI-bus slave interface clock
>> +
>> +  clock-names:
>> +    items:
>> +      - const: dbi
>> +      - const: mstr
>> +      - const: slv
>> +
>> +  resets:
>> +    items:
>> +      - description: DWC PCIe Data Bus Interface (DBI) reset
>> +      - description: DWC PCIe application AXI-bus master interface reset
>> +      - description: DWC PCIe application AXI-bus slave interface reset
>> +
>> +  reset-names:
>> +    items:
>> +      - const: dbi
>> +      - const: mstr
>> +      - const: slv
>> +
>> +  interrupts:
>> +    items:
>> +      - description: Interrupt used for MSIs
>> +
>> +  interrupt-names:
>> +    const: msi
>> +
>> +  spacemit,apmu:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      A phandle that refers to the APMU system controller, whose
>> +      regmap is used in managing resets and link state, along with
>> +      and offset of its reset control register.
>> +    items:
>> +      - items:
>> +          - description: phandle to APMU system controller
>> +          - description: register offset
>> +
>> +patternProperties:
>> +  '^pcie?@':
> 
> It's always PCIe, so drop the '?'.

I'll fix that.

> With that,
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Thanks for the review.

					-Alex

