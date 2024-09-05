Return-Path: <devicetree+bounces-100281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5082696D0C4
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:50:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C4EF1C246DF
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75CE7193070;
	Thu,  5 Sep 2024 07:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1OpFUwr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A8E146A72;
	Thu,  5 Sep 2024 07:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725522636; cv=none; b=AfZ5kUtCKvmvu9IbFagorwEZunhOP9+BPd5lAteUS3m9TcJTi47/tjNuLCYZeVXcQFiCiEG+qF1dO0PjtuLZzoH8wqZ2M7JRX9ZPJTwpWGaCf1p5GxNl6B7b5Y9YgAfvwnqLG4mTt4Jg9ACBMOXIy1kkTnkJnPZ4hVoVW4JThyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725522636; c=relaxed/simple;
	bh=SKUH61FQ+PxMKiwM4pw9qWNtwun5MSxFRIL+YN5sAzQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dlg6yIeuSqAaOtKUjQliXmmDrcOeK16qwwV35CYM3OiRzqq+QnfgBVB9wKUwDaqh1iaEJ3gi4u7H4KQUA8MfTY3mlcMz5HcaM5HvxhSgV1Lefk7pnrgrl/cswrP0TyB8V0uiDzucAMkWX8swGInclXs9m/m98s8RkqrgbmbwIzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1OpFUwr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41756C4CEC3;
	Thu,  5 Sep 2024 07:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725522635;
	bh=SKUH61FQ+PxMKiwM4pw9qWNtwun5MSxFRIL+YN5sAzQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=T1OpFUwrTP4pcrnQX7up6GgH3jUvKDLqyU/DykvIAV3MaHfIOBxGE/oXGJYkkMJzP
	 ExAxk6KPR4bqOsumM0E6GLOAz/t6/SLcwFCVw4DfCjIFM0NYU19Yd2+RBWITrFL+4n
	 dBtyes64+olA3Xwrd2jOj8w7a+BJXf/7Rp1EMIqBi5UZpas5mlo0lIhPAkOSuDlZ+i
	 kMs18hx0LhRrXT4jM71DatrIcvEOYbtusFfA+j+zfSIraMYM/KKT7+kwfyHKjiqRNq
	 1FSwykwr5fhM631druXC/NCmJ6jcZHIH1LGafXKMwyhmRNUfiYlaUG9L3t0/921H1M
	 l6oQEDupk/PmA==
Message-ID: <69f16e78-218f-4e03-aeca-05be5844d656@kernel.org>
Date: Thu, 5 Sep 2024 09:50:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] dt-bindings: PCI: ti,am65: Extend for use with PVU
To: Jan Kiszka <jan.kiszka@siemens.com>
Cc: Nishanth Menon <nm@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, Siddharth Vadapalli <s-vadapalli@ti.com>,
 Bao Cheng Su <baocheng.su@siemens.com>, Hua Qian Li
 <huaqian.li@siemens.com>, Diogo Ivo <diogo.ivo@siemens.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>
References: <cover.1725444016.git.jan.kiszka@siemens.com>
 <28d31a14fe9cc1867f023ebaddd6074459d15e40.1725444016.git.jan.kiszka@siemens.com>
 <t2mqfu62xx5uztlintofp4pquv6jalzace6w5jpymyyarb2wmn@vvo23e4cmu57>
 <4fd1d6e8-8a66-4eff-a995-5f947a4b707d@siemens.com>
 <669fa971-05f2-43f2-8c7b-d9de68d8910f@kernel.org>
 <50ee7c83-7dd2-44b7-ad80-649db9a76077@siemens.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <50ee7c83-7dd2-44b7-ad80-649db9a76077@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 05/09/2024 09:15, Jan Kiszka wrote:
> On 05.09.24 08:53, Krzysztof Kozlowski wrote:
>> On 05/09/2024 08:40, Jan Kiszka wrote:
>>> On 05.09.24 08:32, Krzysztof Kozlowski wrote:
>>>> On Wed, Sep 04, 2024 at 12:00:11PM +0200, Jan Kiszka wrote:
>>>>> From: Jan Kiszka <jan.kiszka@siemens.com>
>>>>>
>>>>> The PVU on the AM65 SoC is capable of restricting DMA from PCIe devices
>>>>> to specific regions of host memory. Add the optional property
>>>>> "memory-regions" to point to such regions of memory when PVU is used.
>>>>>
>>>>> Since the PVU deals with system physical addresses, utilizing the PVU
>>>>> with PCIe devices also requires setting up the VMAP registers to map the
>>>>> Requester ID of the PCIe device to the CBA Virtual ID, which in turn is
>>>>> mapped to the system physical address. Hence, describe the VMAP
>>>>> registers which are optionally unless the PVU shall used for PCIe.
>>>>>
>>>>> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
>>>>> ---
>>>>> CC: Lorenzo Pieralisi <lpieralisi@kernel.org>
>>>>> CC: "Krzysztof Wilczyński" <kw@linux.com>
>>>>> CC: Bjorn Helgaas <bhelgaas@google.com>
>>>>> CC: linux-pci@vger.kernel.org
>>>>> ---
>>>>>  .../bindings/pci/ti,am65-pci-host.yaml        | 52 ++++++++++++++-----
>>>>>  1 file changed, 40 insertions(+), 12 deletions(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
>>>>> index 0a9d10532cc8..d8182bad92de 100644
>>>>> --- a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
>>>>> +++ b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
>>>>> @@ -19,16 +19,6 @@ properties:
>>>>>        - ti,am654-pcie-rc
>>>>>        - ti,keystone-pcie
>>>>>  
>>>>> -  reg:
>>>>> -    maxItems: 4
>>>>> -
>>>>> -  reg-names:
>>>>> -    items:
>>>>> -      - const: app
>>>>> -      - const: dbics
>>>>> -      - const: config
>>>>> -      - const: atu
>>>>
>>>>
>>>> Nothing improved here.
>>>
>>> Yes, explained the background to you. Sorry, if you do not address my
>>> replies, I'm lost with your feedback.
>>
>> My magic ball could not figure out the problem, so did not provide the
>> answer.
>>
>> I gave you the exact code which illustrates how to do it. If you do it
>> that way: it works. If you do it other way: it might not work. However
> 
> The link you provided was unfortunately not self-explanatory because if 
> I - apparently - do it like that example, I'm getting the errors below.
> 
>> without seeing anything, magic ball was silent, so I am not
>> participating in game: would you be so kind to give more information so
>> I won't waste my day in asking what is wrong.
> 
> With my patch:
> 
> # make ... dtbs_check
>   DTC [C] arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dtb
>   DTC [C] arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-pg2.dtb
>   DTC [C] arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced.dtb
>   DTC [C] arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dtb
>   OVL [C] arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-ekey-pcie.dtb
>   OVL [C] arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-usb3.dtb
>   DTC [C] arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-pg2.dtb
>   DTC [C] arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-sm.dtb
>   DTC [C] arch/arm64/boot/dts/ti/k3-am654-base-board.dtb
> 
> With this revert on top:
> 
> diff --git a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
> index d8182bad92de..dd753dae24c6 100644
> --- a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
> +++ b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
> @@ -19,6 +19,16 @@ properties:
>        - ti,am654-pcie-rc
>        - ti,keystone-pcie
>  
> +  reg:
> +    maxItems: 4
> +
> +  reg-names:
> +    items:
> +      - const: app
> +      - const: dbics
> +      - const: config
> +      - const: atu

There is nothing like that in that example.
https://elixir.bootlin.com/linux/v6.8/source/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml#L44

> +
>    interrupts:
>      maxItems: 1
>  
> @@ -104,18 +114,6 @@ then:
>      - msi-map
>      - num-viewport
>  
> -else:
> -  properties:
> -    reg:
> -      maxItems: 4
> -
> -    reg-names:
> -      items:
> -        - const: app
> -        - const: dbics
> -        - const: config
> -        - const: atu

Neither this.

Each case MUST be covered, look:
https://elixir.bootlin.com/linux/v6.8/source/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml#L191

> -
>  unevaluatedProperties: false
>  
>  examples:
> 
> # make ... dtbs_check
>   DTC [C] arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dtb
> .../arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dtb: pcie@5500000: reg: [[0, 89128960, 0, 4096], [0, 89133056, 0, 4096], [0, 268435456, 0, 8192], [0, 89153536, 0, 4096], [0, 42991616, 0, 4096], [0, 43024384, 0, 4096]] is too long
>         from schema $id: http://devicetree.org/schemas/pci/ti,am65-pci-host.yaml#
> .../arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dtb: pcie@5500000: reg-names: ['app', 'dbics', 'config', 'atu', 'vmap_lp', 'vmap_hp'] is too long
>         from schema $id: http://devicetree.org/schemas/pci/ti,am65-pci-host.yaml#
> .../arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dtb: pcie@5600000: reg: [[0, 90177536, 0, 4096], [0, 90181632, 0, 4096], [0, 402653184, 0, 8192], [0, 90202112, 0, 4096], [0, 43057152, 0, 4096], [0, 43089920, 0, 4096]] is too long
>         from schema $id: http://devicetree.org/schemas/pci/ti,am65-pci-host.yaml#
> .../arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dtb: pcie@5600000: reg-names: ['app', 'dbics', 'config', 'atu', 'vmap_lp', 'vmap_hp'] is too long
>         from schema $id: http://devicetree.org/schemas/pci/ti,am65-pci-host.yaml#
>   DTC [C] arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-pg2.dtb
> ...
> 
> 
> Which magic dtschema spell am I missing to make this work like you 
> suggest?

follow the example. You do it entirely different so you have different
result. Code works deterministically.

Best regards,
Krzysztof


