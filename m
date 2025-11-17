Return-Path: <devicetree+bounces-239306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C8CC63C45
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:20:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83C043B716C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D183732A3C5;
	Mon, 17 Nov 2025 11:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFFBjqgZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6AD335CBA5;
	Mon, 17 Nov 2025 11:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763377851; cv=none; b=D++mk+Eocgy/YoJaKi9dInjbnkTP8gSDcraHUlB0kcHLKCDfFHH0+PDNtVOUdEu1eZ6J7nUlVG8VgZifym/BMj992EDZ8T2/Xoh4Hf5Z9Q27sVTAb2Op0wCoavfTmj/Cqf9PVz8j/GrRkWH/UuTAnc1RoyXJeWblMoK5+ouJxLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763377851; c=relaxed/simple;
	bh=ntFoFb1m/WoUaNLNSJ3SjFp4CbCTxDpn57kc4IpNq+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DJ+8mX8Wd4psShtOPo4YAO2lOMnTfN/djIiXMGEnH6JiUd6/o/oEgAODA/j5w5/waGjNqFmf67e2l9kiCCLFjRxyHbs+jOrxGD4rov9oeF+BWxx2wB90tXoZ+p4fmi5CR4ArIvuVatRuH4jWRgYitALPpz/4hX1emSkQR8wvXOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFFBjqgZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4962EC116B1;
	Mon, 17 Nov 2025 11:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763377851;
	bh=ntFoFb1m/WoUaNLNSJ3SjFp4CbCTxDpn57kc4IpNq+s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FFFBjqgZdbwbWew6CMr2ctN/nuOB0VjfssYddk4Ewf8M2l3tuu3e/DL2vb1xtY2rL
	 Ig9R/gdVAaCL8Us9jfIbW2vdfu1hCheqXZc1mm3BfeD58p6ahHhOgVk9pE/otV1Hi8
	 I1tVhi2JxPn4JXIz8dd3VHWYqsFxY9rZaEHRKvOxVd46EYYXRkd39hWHHMQv4f+Bzx
	 4cn0xhZk2Vty4+fUCpLnJWU3h+c+rwRmuo36XAhiqu/66oq48uz1as9WAbDh7ASTQB
	 Xn5zFBlixfV503xZ00UAFNPuUs/NW3QgYGM/a9nf+WiaD9bPP0oFtNOjpnRZ/RrikR
	 Dyp7QHXzPt7qQ==
Message-ID: <94198d5f-e49f-4b38-8288-3be29efd142b@kernel.org>
Date: Mon, 17 Nov 2025 12:10:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: Add Realtek MISC system
 controller
To: =?UTF-8?B?WXUtQ2h1biBMaW4gW+ael+elkOWQm10=?= <eleanor.lin@realtek.com>,
 "afaerber@suse.de" <afaerber@suse.de>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, "lee@kernel.org"
 <lee@kernel.org>, =?UTF-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?=
 <james.tai@realtek.com>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
 =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
References: <20251113123009.26568-1-eleanor.lin@realtek.com>
 <20251113123009.26568-3-eleanor.lin@realtek.com>
 <e799389ce8b4449baba83a893361bdd4@realtek.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <e799389ce8b4449baba83a893361bdd4@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 17/11/2025 12:03, Yu-Chun Lin [林祐君] wrote:
> Hi Conor and Krzysztof,
> 
>> Documentation/devicetree/bindings/mfd/realtek,misc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/realtek,misc.yaml
>> b/Documentation/devicetree/bindings/mfd/realtek,misc.yaml
>> new file mode 100644
>> index 000000000000..4f4a9ae250be
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mfd/realtek,misc.yaml
>> @@ -0,0 +1,72 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mfd/realtek,misc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Realtek MISC System Controller
>> +
>> +description:
>> +  The Realtek MISC System Controller is a register area that contains
>> +  miscellaneous system registers for the SoC and serves as a parent
>> +node
>> +  for other functions.
>> +
>> +maintainers:
>> +  - James Tai <james.tai@realtek.com>
>> +  - Yu-Chun Lin <eleanor.lin@realtek.com>
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - enum:
>> +          - realtek,misc
> 
> I apologize for the current compatible string, which was initially named
> by referencing existing patterns like 'brcm,misc' and thus violates the
> naming guidance against "wildcards" and general non-SoC specific names.
> 
> Let me explain the purpose of the device node (Realtek system controller).
> 
> This MISC area contains several peripheral sub-modules such as uart,
> watchdog, rtc or i2c ..... These blocks share a unified register region
> implemented as a single hardware module, which remains powered during
> system suspend states (e.g., S3). These blocks share the same MMIO region
> and appear as child nodes under the MISC syscon node. Currently, it

No, you are mixing hardware with DT representation. This device cannot
appear as child node, because there is no such concept in hardware as
child node. You cannot use argument of DT representation when you
justify how this is represented in DT. It is invalid.

You need to start argumentation in terms of hardware.


> includes uart.
> 
> Regarding the current structure, the device node is defined in a kent.dtsi
> and is included by each SoC's DTSI.
> 
> I've considered two ways to write compatible string naming.
> 
> Option 1: Use a single SoC-specific compatible string
> 
> Rename "realtek,misc" to "realtek,rtd1861-misc"
> 
> /* kent.dtsi */
> misc: syscon@... {
>     compatible = "realtek,rtd1861-misc", "syscon", "simple-mfd";
> };
> 
> Pros: Only one compatible string is needed, simplifying maintenance across
> the driver and DTS.
> 
> Cons: Violates the "SoC-specific compatible" rule for other SoCs
> (RTD1501, RTD1920).
> 
> Option 2: SoC-specific + fallback (Compliant but Verbose)
> 
> Define the full list in the schema, and override the compatible string in each SoC DTSI.
> 
> /* schema binding */
> 
> compatible:
>   items:
>     - enum:
>         - realtek,rtd1501-misc
>         - realtek,rtd1861-misc
>         - realtek,rtd1920-misc
>         # ... add new SoCs here
>     - const: realtek,kent-misc
>     - const: syscon
>     - const: simple-mfd
> 
> 
> /* kent.dtsi */
> 
> misc: syscon@... {
>     compatible = "realtek,kent-misc", "syscon", "simple-mfd";
> };
> 
> SoC-specific override (e.g. rtd1920s-smallville.dtsi):
> 
> &misc {
>     compatible = "realtek,rtd1920-misc", "realtek,kent-misc", "syscon",
>                  "simple-mfd";
> };
> 
> Pros: Fully compliant with DT rules
> 
> Cons: Requires override in every SoC file; slight duplication.
> 
> Is Option 2 the expected pattern?
> Thanks for your guidance!
> 

None of them. You need SoC specific compatibles which can be used as
fallbacks for SoC specific compatibles. There is plenty of examples for
this already, but anyway this does not solve the problem that you still
did not properly describe the hardware but instead use your downstream
as arguments.

This will get you nowhere.


Best regards,
Krzysztof

