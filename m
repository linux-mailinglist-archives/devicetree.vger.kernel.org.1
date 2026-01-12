Return-Path: <devicetree+bounces-254074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E849D13AD8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5BBAD300100E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3683C3033E7;
	Mon, 12 Jan 2026 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o20PqNeQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81DF82FFFB6
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768231792; cv=none; b=peXAhVeD/VRU0PuDFBNf5CqGvEjq2ID96QVtcfxkj/GnhbO/tWj8Hi5cM1a+qmwnmIECni0FnfdYrmPFJBHOz0kUjnXPCRhYIbW/eYWcBRme9cJqTWYrCEGvG5yfou5FfsaJhyu+d4bFYtAFD9fLw+IqlnKqTETn/K7eTnLKxYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768231792; c=relaxed/simple;
	bh=1q2ax2hEsC6HF2vMYN2XxtAK88GH6KeleMQbRKgD+Oo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hQrEi3IFsVcgYwgHpBr6tUdx2m+eCh+QK0hrA5RNkUewgTkB55ZYMC4EQlTuNWfunNUA3xOHsbnrgCSxbnnFth9eU0kin/bEQdeiAjDazgJcXPY/pOjwBfgNXjTx2Z9H+w6Gks87eBu37KKXDr1NEzIi0LlcM/GA3bYBmvuudvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o20PqNeQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEE4FC16AAE;
	Mon, 12 Jan 2026 15:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768231791;
	bh=1q2ax2hEsC6HF2vMYN2XxtAK88GH6KeleMQbRKgD+Oo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=o20PqNeQ7hEwOhNnrJ7xWQaBWa5NEx+c+MPR5U9etKlPzYuurCekYhnj4X5NK2d9/
	 8uFHJEN6VbVCmH6WmOniJ1pqZgnBSMevwRnosPlgsK+frKkT4Fr5emduOmb8jvuN99
	 L+C1SEehSyHeGdJPvt74B46k9O6q4MXqVh7uPD09N3nkrWQ8HetzvkFWFGLYFHLB4h
	 Nk4Qw/eJeuR+zvfLPAkP166eJ+EErghxQ4jCB1FX4bT8dQ6OPpGFPc1VbyRgLjCq4J
	 p/0IfhRNk5rtwlurva8eocGzdVcqRlcLSuIQh5/pNlZhYg5EF0V8v6WtHKqacgLtR4
	 KY0RpYfJHRl5g==
Message-ID: <45c8878a-347a-4e30-af3a-6f8ada2a1a78@kernel.org>
Date: Mon, 12 Jan 2026 09:29:44 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2] ARM: dts: socfpga: remove underscore node names for
 base socfpga dtsi
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org
References: <20260112044153.1887253-1-dinguyen@kernel.org>
 <ef4bbb5a-4019-4b2b-91a3-b103c99be335@kernel.org>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <ef4bbb5a-4019-4b2b-91a3-b103c99be335@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/12/26 01:34, Krzysztof Kozlowski wrote:
> On 12/01/2026 05:41, Dinh Nguyen wrote:
>> The node names in a DTS file should be using a hyphen, not an underscore
>> as warned by 'dtc W=2'.
>>
>> For clock nodes, use clock-controller@address and clock-<name>. While at
>> it, fix DTS coding style to use lowercase hex for values and unit
>> addresses for these clock nodes.
>>
>> There are no functional change in this patch.
>>
>> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
>> ---
>> v2: used clock-controller@address and clock-name
>>      reworded commit message
>> ---
>>   arch/arm/boot/dts/intel/socfpga/socfpga.dtsi | 128 +++++++++----------
>>   1 file changed, 64 insertions(+), 64 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
>> index 35be14150f41..28494aeb71b2 100644
>> --- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
>> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
>> @@ -131,17 +131,17 @@ osc2: osc2 {
>>   						compatible = "fixed-clock";
>>   					};
>>   
>> -					f2s_periph_ref_clk: f2s_periph_ref_clk {
>> +					f2s_periph_ref_clk: clock-f2s-periph-ref {
>>   						#clock-cells = <0>;
>>   						compatible = "fixed-clock";
> 
> I am pretty sure this is functional change, because you just changed the
> name of the clock. At least that is the impression of above diff.
> 

Thanks for the review. I'll check it with dtx_diff and fdtdump. I just 
don't see the the clock names getting used anywhere.

Dinh

