Return-Path: <devicetree+bounces-133851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7D99FBEAA
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 14:33:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4B1F7A1D0A
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D161C07FA;
	Tue, 24 Dec 2024 13:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KC2xmTne"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D0C440C;
	Tue, 24 Dec 2024 13:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735047202; cv=none; b=VorF+G/IaMl6ABAUbr4f8E6EKGQ8E17+y/KkuxgMnhRTOtD5nnJB0WAns8GAkOpR8tsrnhGc3soBe7Lzhc/hsUhOltJTQoR8cXud4rfvPaYmMhzCfAL11hma8DXA9HIGKuj51GS33iGiryIcRPKluYzTg1GirH8Dwy6rrfzZflc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735047202; c=relaxed/simple;
	bh=iCylm2MRvv6PAKDEQXGNVZEgHIMFQpRlTrGrKOgYpeA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uZcck2VybndzjUhwFLMAmF3epZrMUcDUIRp92DbHekVelwOi8cCZbjhQ3eTCqBNeoPtjbxoOX2M9AlKdv2r9vuuBHO7aI9/R/NZ1TkSrQ6XyVrvjObe4151by+xpKpn+SiCXX6DwbLW6OT4MXHyHtwFs0UMGHtQceP76rqaKW1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KC2xmTne; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AF34C4CED0;
	Tue, 24 Dec 2024 13:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735047202;
	bh=iCylm2MRvv6PAKDEQXGNVZEgHIMFQpRlTrGrKOgYpeA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KC2xmTneRSFNwSAJp3+8iCsRqXaAFVJFSiPVeiE+x7IeYyahP4CRNOqrcVigGQ2X+
	 OMxLGycqlfZBJGVq9XTubCZ2Pjuh71d8E2MlJHLE6Z+gPo4QysVD8FtXZOJRkWSnCF
	 MW0ra5Tcr026pyup6Am4ik9LvUqxs8wZ+T+b0uolRA33fqVzijnFU5Q+ul67ITeoY6
	 vAhE/QyRrR0lEfhUlFv9QLMBfgE6E+nIKXJLbdMt8OYM5J6iC6RXNDK6+7EMzAPAsy
	 /evMujANNZdyALfkZ2KHylhHNmRi3CxNcHaifmkfNwCmaMsq946pFw6sc1KQD3Xb8o
	 BXBzXn+aZgE9A==
Message-ID: <24b7cb33-779c-447f-a080-5ed05cd7faf1@kernel.org>
Date: Tue, 24 Dec 2024 14:33:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v2 01/19] dt-bindings: clock: Add VO subsystem clocks
 and update address requirements
To: Michal Wilczynski <m.wilczynski@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>
Cc: airlied@gmail.com, aou@eecs.berkeley.edu, conor+dt@kernel.org,
 drew@pdp7.com, frank.binns@imgtec.com, guoren@kernel.org,
 jassisinghbrar@gmail.com, jszhang@kernel.org, krzk+dt@kernel.org,
 m.szyprowski@samsung.com, maarten.lankhorst@linux.intel.com,
 matt.coster@imgtec.com, mripard@kernel.org, mturquette@baylibre.com,
 p.zabel@pengutronix.de, palmer@dabbelt.com, paul.walmsley@sifive.com,
 robh@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
 ulf.hansson@linaro.org, wefu@redhat.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-pm@vger.kernel.org
References: <20241223125553.3527812-1-m.wilczynski@samsung.com>
 <CGME20241223125601eucas1p1d274193122638075dc65310a22616bae@eucas1p1.samsung.com>
 <20241223125553.3527812-2-m.wilczynski@samsung.com>
 <2cd0c34fbd14a0d69e689d04c2241938.sboyd@kernel.org>
 <wjet4yvtcobjaf7c4u7to6rm3ppkvmgyitp6evoqjpndtno6qg@h5xxyukph6y6>
 <c17c75c0-ef13-48df-9095-67fbf31bb817@samsung.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <c17c75c0-ef13-48df-9095-67fbf31bb817@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 24/12/2024 10:23, Michal Wilczynski wrote:
> 
> 
> On 12/24/24 09:53, Krzysztof Kozlowski wrote:
>> On Mon, Dec 23, 2024 at 12:50:59PM -0800, Stephen Boyd wrote:
>>> Quoting Michal Wilczynski (2024-12-23 04:55:35)
>>>> The T-Head TH1520 SoC’s AP clock controller now needs two address ranges
>>>> to manage both the Application Processor (AP) and Video Output (VO)
>>>> subsystem clocks. Update the device tree bindings to require two `reg`
>>>> entries, one for the AP clocks and one for the VO clocks.
>>>>
>>>> Additionally, introduce new VO subsystem clock constants in the header
>>>> file. These constants will be used by the driver to control VO-related
>>>> components such as display and graphics units.
>>>>
>>>> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
>>>> ---
>>> [...]
>>>> diff --git a/Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml b/Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
>>>> index 0129bd0ba4b3..f0df97a450ef 100644
>>>> --- a/Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
>>>> +++ b/Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
>>>> @@ -47,7 +54,9 @@ examples:
>>>>      #include <dt-bindings/clock/thead,th1520-clk-ap.h>
>>>>      clock-controller@ef010000 {
>>>>          compatible = "thead,th1520-clk-ap";
>>>> -        reg = <0xef010000 0x1000>;
>>>> +        reg = <0xef010000 0x1000>,
>>>> +              <0xff010000 0x1000>;
>>>
>>> I don't get it. Why not have two nodes and two devices? They have
>>> different register regions so likely they're different devices on the
>>> internal SoC bus. They may have the same input clks, but otherwise I
>>> don't see how they're the same node.
>>
>> That's a good point. Aren't here simply two different clock controllers?
> 
> Yeah there are two clock controllers, based on the review comments I was
> trying to re-use the driver, but the driver can also be re-used to serve
> multiple nodes and multiple compatible and .data properties, if that's
> fine with you that's how it will look like in v3.
Yeah, please drop my review tag and rework it to have two different
devices. Driver design should not influence DTS.

Best regards,
Krzysztof

