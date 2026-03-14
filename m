Return-Path: <devicetree+bounces-275716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZRSODvdstWlz0QAAu9opvQ
	(envelope-from <devicetree+bounces-275716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 15:13:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CBB28D700
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 15:13:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE4E930048C4
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 14:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B893262808;
	Sat, 14 Mar 2026 14:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="ho/Vx5yo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB49821773D
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 14:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773497587; cv=none; b=F7R9ZGyfM4lcrXFf5iLznUmom9fsauQbL/47gDF4cyzI8BU8rJ8ml4vVwE4nSzWGhZdIJO5L27kjEKPo/awrL2/nq6NwtxdxntNaAVJx53DMJePpR2NeFQU2rzfBZXQQkN34ey3QRGarXnF8T+pksMk3RnXajCJiKEZJmRkyXxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773497587; c=relaxed/simple;
	bh=dZfizOLvEhwTGQ+F1IZsC1RT3jKpyEuuiwgZF0wBGpw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c2AZoMa8XUIb2bURn5V7xWX3z6Wj0eQNemN+/UIbKQ82IWyDr1vtyuZYHx2V74acJnysOYKEo3KxpgHPERNsq1W1qxtReq3FCshT/VtOQiWW2UJaL6RNtbyJE4uZj9tgV/0++5kxFviLpPe64OH0EcoTAbrJ82xiAX53rU259Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=ho/Vx5yo; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64c9a6d6b70so2650447d50.3
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 07:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1773497585; x=1774102385; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kb1CjrStBIIzJ9sGHwsiJsF+p3lIqo/Alx3Y+vVcnNg=;
        b=ho/Vx5yoEd2lCkRy38GlGC5+CiZ13f+Py/QZJ71nx3F86pqcKwVf+mSlal4K8Zmc7a
         /TW48xHqEFe68Cd+5Wiu9e+txk1JybOOh+hsJ5zyW55H9DrhnG6D/nDsJZsSiCTrrzk8
         kArL628k1t9LLbgqc4PWligv2Hnxpzfru0jTF6lXVcIEV1gYrWKceBAjED+TMYQ4qyS8
         PzTzVXJOJ8GoVNQyfQSOHe463D8mnRibbln6U8Q/O/TLjYX9m+6PSOPVkqB41EIMImbM
         RYAKqnHBLNjqd8cFYNrcnjOwfaNjTM2xr5Van+ia3jyBrfmWmpF4PqonKIXpBZWZKSXB
         IPYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773497585; x=1774102385;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kb1CjrStBIIzJ9sGHwsiJsF+p3lIqo/Alx3Y+vVcnNg=;
        b=sLEbJavLmLI3dPzV0WwcnJjsQ8pF+Rm3Izxp9hSX8p0D+jDInHK6Y1+XV4eifrLUT/
         PEvycm25twRldqUKNj2ax081iFMPqQP7OyJtAE1YIqn7q5hFDQPAIqH3tlkO0qXJ6H2i
         +bsEvQ5Gerfz1K3PRAIOwE79xV8lpxK8y68fnsyafZCKzn2n6J+yM1rBVQFb70Mlk3Aa
         h80+85R5E9yPV09KFkEl5PiJJOrdP7278X+T8RFPOBvsIKaCUM/5zV9t82hEDNukZyxM
         o0LCdr1Ef+DALN4nn5Z9IHlAtoTMmaqfOYeXdqjJBEX3HK58MDpTpyO5vwyyq0o//8WM
         U82w==
X-Gm-Message-State: AOJu0YzDgTaQNU0/qcJDCxG3wk1To4mH9EjqtvWg+Re4FbYfR6Lx6p+m
	A5p/x54xvkYMj7Ruhn+pLQ2W8fmnM+KDwjy/Q+R/EIFYsg+/Dst3Hwwj219aSEebzL8=
X-Gm-Gg: ATEYQzyN+RHtHx/mLoJ+sfHFrZPIJ1FrNuR5Vq10+KpL6Api38hT+C8y3o5m/c73GVE
	9ixu6MEZ3qb+01fc4B+1b3slYuEUv3vCBA3nZ7DfUbs74CwAQqy5zHThVddnJTCUQ8ZiaiBhDYi
	EmJd7sNLBihnN2wqwX0Hnk5Mz/5vKRp2kOZoPN7edJCzA+47sCxf7UDqizDh4/i8IKjP0TcJbJR
	AphWClqNlUBkUG9UAuXd9SS+FT4SfIul9CBvi3qy4QcDFFiWuziKPq32BYH4PmHFk9csyslQhjO
	ezpcjdyfZmgSCYN54qakbcOF8Niyayep7VgFvk2xD8tOlzMrWfEdqvlLEGvSosaKS1uyfVHGREK
	AFHPS+3T0i2PUWoceA7IMJoajVDiBOOfe3HKf6QnOHl5OQQi8gMZIMS2VWpuh/igG2e/yNi1Wqg
	2sihTlrQiy+FJz5fyf/mtLUmNrbKVPLj77cR0MDNZ3P3mRe4LjC4c=
X-Received: by 2002:a53:ee65:0:b0:64d:6193:a752 with SMTP id 956f58d0204a3-64e62fc1f7amr5251930d50.28.1773497584611;
        Sat, 14 Mar 2026 07:13:04 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.103.33])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64e65b39f56sm2709456d50.15.2026.03.14.07.13.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 07:13:04 -0700 (PDT)
Message-ID: <b885158f-3859-4bfa-96b0-39c274a856cf@sifive.com>
Date: Sat, 14 Mar 2026 09:13:03 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] riscv: dts: spacemit: k3: add clock tree
To: Yixun Lan <dlan@kernel.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
References: <20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org>
 <20260304-01-dts-uart-full-v1-1-50a0aa53a245@kernel.org>
 <fecadd41-ee3e-4452-bf25-4a70eaeb5f3f@sifive.com>
 <20260314085252-GKB415778@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20260314085252-GKB415778@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275716-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.holland@sifive.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 82CBB28D700
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Yixun,

On 2026-03-14 3:52 AM, Yixun Lan wrote:
> On 20:44 Fri 13 Mar     , Samuel Holland wrote:
>> On 2026-03-04 1:36 AM, Yixun Lan wrote:
>>> Add clock support to SpacemiT K3 SoC, the clock tree consist of several
>>> blocks which are APBC, APMU, DCIU, MPUM.
>>>
>>> Signed-off-by: Yixun Lan <dlan@kernel.org>
>>> ---
>>>  arch/riscv/boot/dts/spacemit/k3.dtsi | 75 ++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 75 insertions(+)
>>>
>>> diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
>>> index b69cf81b5d55..e3d7f3102fd5 100644
>>> --- a/arch/riscv/boot/dts/spacemit/k3.dtsi
>>> +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
>>> @@ -4,6 +4,7 @@
>>>   * Copyright (c) 2026 Guodong Xu <guodong@riscstar.com>
>>>   */
>>>  
>>> +#include <dt-bindings/clock/spacemit,k3-clocks.h>
>>>  #include <dt-bindings/interrupt-controller/irq.h>
>>>  
>>>  /dts-v1/;
>>> @@ -398,6 +399,36 @@ core3 {
>>>  		};
>>>  	};
>>>  
>>> +	clocks {
>>> +		vctcxo_1m: clock-1m {
>>> +			compatible = "fixed-clock";
>>> +			clock-frequency = <1000000>;
>>> +			clock-output-names = "vctcxo_1m";
>>> +			#clock-cells = <0>;
>>> +		};
>>> +
>>> +		vctcxo_24m: clock-24m {
>>> +			compatible = "fixed-clock";
>>> +			clock-frequency = <24000000>;
>>> +			clock-output-names = "vctcxo_24m";
>>> +			#clock-cells = <0>;
>>> +		};
>>> +
>>> +		vctcxo_3m: clock-3m {
>>> +			compatible = "fixed-clock";
>>> +			clock-frequency = <3000000>;
>>> +			clock-output-names = "vctcxo_3m";
>>> +			#clock-cells = <0>;
>>> +		};
>>> +
>>> +		osc_32k: clock-32k {
>>> +			compatible = "fixed-clock";
>>> +			clock-frequency = <32000>;
>>> +			clock-output-names = "osc_32k";
>>> +			#clock-cells = <0>;
>>> +		};
>>
>> Are these clocks provided by SoC or by the board? Usually there's a crystal
>> external to the SoC that provides the root of the clock tree. If these clocks
>> are provided by the board, they (or at least the clock-frequency property)
>> should be in the board DT, not the SoC dtsi.
>>
> It's true, as a quick check, osc_32k provided by P1 PMU, while vctcxo_24m is
> a crystal, vctcxo_1m and vctcxo_3m are also marked as external in the clock
> tree, but I would confirm them later..

In that case, osc_32k should ideally be a reference to the P1 PMU clock
provider, not a fixed-clock. But this may be infeasible if it creates dependency
loops (PMU depends on I2C, I2C depends on clocks, clocks depend on PMU).

> I agree to move them out of SoC dtsi file - k3.dtsi, while due to all boards share
> the same clock topology, what if I creating a k3-clock.dtsi and making it shared 
> between all board dts file? to avoid massive DTS duplication

Yes, it is common practice to create a .dtsi file for things shared among
several boards for a SoC (for example if they are all based on a reference
platform). You may want to name it something more generic if more than just
clocks can be shared (like k3-common.dtsi, compare jh7110-common.dtsi).

>> Also, the /clocks node is out of order.
>>
> I will move osc_32k before vtccxo_1m, assuming it's the problem you
> refered to?

I mean that /clocks sorts alphabetically before /cpus. Your ordering of the
fixed-clocks nodes themselves is fine.

Regards,
Samuel


