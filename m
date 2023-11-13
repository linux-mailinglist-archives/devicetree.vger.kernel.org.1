Return-Path: <devicetree+bounces-15420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 944F67EA023
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 16:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C57D01C204F6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C1B21358;
	Mon, 13 Nov 2023 15:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Ig2nOlXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917C1219E4
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 15:37:39 +0000 (UTC)
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AFACD63
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 07:37:38 -0800 (PST)
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-41cb615c6fbso28907781cf.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 07:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1699889857; x=1700494657; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4tzWoq297WulTYALKaxRqew5uETGDYoNQPFDim6ud7Y=;
        b=Ig2nOlXZXFKHwBvvwN3otijDPsOnRmD8BF/+kQjbRA8VpQKQLedQyJCehGGiIHOLRL
         3bOg6ighC0Y65qbsCAIKkyicW2A7OeBHrMdLMrdgfjZ3suQE+rxyilhKu3aC6tH9e8Zc
         EWPlSlWXw4sdW4SlOSvxI/CfmicLqPwoKSckC3TvuCwPS+fd36mE2cz0UPy7TJL8/S4u
         VvGd83DTNcro71AvgDl24E1F8Cbfy25SWzypH7usZc8eyOl7T/1visEibGI9AJid97Wh
         TM/Xu59I3YxyaM+EFFb5GnEpboaYJsT2K6TbTTt3SXENJDlA//Sm6ydMgsTv2Y/ce/AL
         dP5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699889857; x=1700494657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4tzWoq297WulTYALKaxRqew5uETGDYoNQPFDim6ud7Y=;
        b=UcqL3p53y2x62loDRaBzZ32AQq5l6u4P4VRgiyKohoTxoW9Xnjhbm7xoQcv9nGx3IS
         ynt1/5iKjvs/i5NsuS6Lb5D7nJ0ix7SPwDm4yIW95gCi23+VnRJvmiGJlNRjiufioDQo
         L2YgodCbNIGf7BGCJkP6c105QQj0Y4Kzmi0sTv8elsXBqn136Wz7J56HBNNhQe7iAUPT
         KeUJMf3qQZ96wkN6wBVwtNLtG8mP8B9S0e04mJlVez3c5sQ/t6/PVFZgX2lSHWj1XQFp
         MgppxRI8/vKFCZQp+buGFAdA6YR5lqtf/DftlESlIhLWZxakJUSiv45YmQps/JMZPQSN
         Etog==
X-Gm-Message-State: AOJu0YxeSnok5gLTSvx4b2Nz2rWhXEe3Ksn/sRRv9eoBdlNbpUbpwlBp
	NhZl0b27SaYMLLPmLiK4iCWtwQ==
X-Google-Smtp-Source: AGHT+IG8E/omZHPUI+v3RUdT6i8N7Zm0/RMqKn+N3J3X13lnSqMYv1fnuditgTZu1q3iP19bWHlFNg==
X-Received: by 2002:a05:622a:245:b0:41e:a932:31f8 with SMTP id c5-20020a05622a024500b0041ea93231f8mr9811668qtx.6.1699889857255;
        Mon, 13 Nov 2023 07:37:37 -0800 (PST)
Received: from [172.25.81.170] ([12.186.190.1])
        by smtp.gmail.com with ESMTPSA id t19-20020ac85313000000b004180fb5c6adsm1996974qtn.25.2023.11.13.07.37.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Nov 2023 07:37:36 -0800 (PST)
Message-ID: <7cccf188-c47f-4865-95ce-dcfedc1429dc@sifive.com>
Date: Mon, 13 Nov 2023 10:37:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] riscv: dts: sophgo: add reset dt node for cv1800b
Content-Language: en-US
To: Jisheng Zhang <jszhang@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
 Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-4-jszhang@kernel.org> <20231113143224.GA130254@ofsar>
 <ZVI9bzAhPnHhVg8A@xhacker>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <ZVI9bzAhPnHhVg8A@xhacker>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Jisheng,

On 2023-11-13 9:14 AM, Jisheng Zhang wrote:
> On Mon, Nov 13, 2023 at 02:32:24PM +0000, Yixun Lan wrote:
>> On 08:55 Mon 13 Nov     , Jisheng Zhang wrote:
>>> Add the reset device tree node to cv1800b SoC.
>>>
>>> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
>>> ---
>>>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
>>> index df40e87ee063..4032419486be 100644
>>> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
>>> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
>>> @@ -54,6 +54,12 @@ soc {
>>>  		dma-noncoherent;
>>>  		ranges;
>>>  
>>> +		rst: reset-controller@3003000 {
>>> +			compatible = "sophgo,cv1800b-reset";
>>> +			reg = <0x03003000 0x1000>;
>>                                           ~~~~~~~
>> 			        it should be 0x28
> 
> The reg space is 4KB, but only 0x28 are used. I think 0x1000 or 0x28 are fine
> since the ioremap granule is 4kB.
>>
>> while please also note the 0x24 == SOFT_CPUAC_RSTN, does not compatible
>> with the reset-simple driver, but as it's not implemented nor used in this driver,
> 
> But the functionality of this "autoclear" reg isn't used at all since we also
> have "sticky" reset to acchieve the same feature, I.E reset cpusys. And in the
> usage case of reseting cpusys, I believe "sticky" reset is preferred.
> 
> And except the cpusys reset which has both autoclear and sticky, other
> resets are sticky only. I'm not sure whether it's worth to write a new
> driver for almost useless feature.

As long as the device has its own binding/compatible string, it is always
possible to replace RESET_SIMPLE with a custom driver later if needed. (Or use a
more complicated driver in some other context, e.g. firmware).

Regards,
Samuel

>> so we should be fine with this?
>>
>>> +			#reset-cells = <1>;
>>> +		};
>>> +
>>>  		uart0: serial@4140000 {
>>>  			compatible = "snps,dw-apb-uart";
>>>  			reg = <0x04140000 0x100>;
>>> -- 
>>> 2.42.0
>>>
>>
>> -- 
>> Yixun Lan (dlan)
>> Gentoo Linux Developer
>> GPG Key ID AABEFD55
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


