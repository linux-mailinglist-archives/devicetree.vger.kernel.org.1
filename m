Return-Path: <devicetree+bounces-254079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 603D5D13D13
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B8B3301101A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D056D35EDDC;
	Mon, 12 Jan 2026 15:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhto+qLr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9EA23168F8
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768233030; cv=none; b=YWqNQgrXRbqHqLOwEj7pR0W/alpd5ZKOGLuEBiRTEUDLIiXS8mW1vsGbhndwguo33Q/jXO6PVAYbeVJtz34XxUaSNODUXN2D3s06NGh/KzIGEZliwbKcB6UU1IxWA2sOH6ng8SkxRyUnHQK5HwHSBKEBWOt1lvxtJh+JfHOoa5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768233030; c=relaxed/simple;
	bh=z5D6Z6Ht/Oyk/oxP5h7d7m5jEGK8VqVbC2o/V1Ijbr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lszr20A2HOygHfZyJr3OuCPNRpQ1F4Ci+NcvHq3nGLDC/jQCtGvC+cNaC4lxpKIR0OzFHBzMlr4Wi9Zjsi5FRAiVTtE+b4p2FBvmSRJ3OMUCEJsKh329iSCBcin99FOS1ZX5uyCoXGsD5p+didegMeSdUvIoLP4Yq0wV6Us+l/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhto+qLr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C870C16AAE;
	Mon, 12 Jan 2026 15:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768233030;
	bh=z5D6Z6Ht/Oyk/oxP5h7d7m5jEGK8VqVbC2o/V1Ijbr0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Vhto+qLrfmxNxda574r2rPAWQrw8F4VP7mk2/FdMlI049gSiHt7BPr2binSZRMdI0
	 qG7ANCdjai4PtqB0GfdqKtnnurNOgmPozJIvCpApiZb0PrOEcSNiwNw8iYOTEbYghB
	 d6LK3pQ0IsECISmE9C5rmZBixvxOxupP6AlRKYU3O8vMXE+4KIldJBcJWXZ6drFwp5
	 v4QY8bK9SDeYmRbu2G8oS6JIC1m3QoA1fS3eRgAHp4xJ7sPRN2foWSfoqsR+5MnDlz
	 Mw6rcKsp/082H62AlF48VvmTFdxRzy8u9ByW6gM+5HecC2HSPkvA1abMEN1qFvo36H
	 9YrAD2tNCCZxg==
Message-ID: <dae06e9a-fad4-44ce-995b-7e8289ce486a@kernel.org>
Date: Mon, 12 Jan 2026 16:50:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2] ARM: dts: socfpga: remove underscore node names for
 base socfpga dtsi
To: Dinh Nguyen <dinguyen@kernel.org>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: devicetree@vger.kernel.org
References: <20260112044153.1887253-1-dinguyen@kernel.org>
 <ef4bbb5a-4019-4b2b-91a3-b103c99be335@kernel.org>
 <45c8878a-347a-4e30-af3a-6f8ada2a1a78@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <45c8878a-347a-4e30-af3a-6f8ada2a1a78@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/01/2026 16:29, Dinh Nguyen wrote:
> 
> 
> On 1/12/26 01:34, Krzysztof Kozlowski wrote:
>> On 12/01/2026 05:41, Dinh Nguyen wrote:
>>> The node names in a DTS file should be using a hyphen, not an underscore
>>> as warned by 'dtc W=2'.
>>>
>>> For clock nodes, use clock-controller@address and clock-<name>. While at
>>> it, fix DTS coding style to use lowercase hex for values and unit
>>> addresses for these clock nodes.
>>>
>>> There are no functional change in this patch.
>>>
>>> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
>>> ---
>>> v2: used clock-controller@address and clock-name
>>>      reworded commit message
>>> ---
>>>   arch/arm/boot/dts/intel/socfpga/socfpga.dtsi | 128 +++++++++----------
>>>   1 file changed, 64 insertions(+), 64 deletions(-)
>>>
>>> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
>>> index 35be14150f41..28494aeb71b2 100644
>>> --- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
>>> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
>>> @@ -131,17 +131,17 @@ osc2: osc2 {
>>>   						compatible = "fixed-clock";
>>>   					};
>>>   
>>> -					f2s_periph_ref_clk: f2s_periph_ref_clk {
>>> +					f2s_periph_ref_clk: clock-f2s-periph-ref {
>>>   						#clock-cells = <0>;
>>>   						compatible = "fixed-clock";
>>
>> I am pretty sure this is functional change, because you just changed the
>> name of the clock. At least that is the impression of above diff.
>>
> 
> Thanks for the review. I'll check it with dtx_diff and fdtdump. I just 

Clock name won't be in DT.

> don't see the the clock names getting used anywhere.

I don't know if your drivers use clock names, but many platforms
especially legacy ones do. Whether this change has actual impact is a
bit different question, I just pointed out that there is an functional
change.

Best regards,
Krzysztof

