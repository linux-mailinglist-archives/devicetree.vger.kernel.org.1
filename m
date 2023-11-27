Return-Path: <devicetree+bounces-19145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B045A7F9D4A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E11341C20A68
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE4E182C3;
	Mon, 27 Nov 2023 10:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id B2668C0;
	Mon, 27 Nov 2023 02:16:52 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD4422F4;
	Mon, 27 Nov 2023 02:17:39 -0800 (PST)
Received: from [10.57.4.90] (unknown [10.57.4.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B068D3F73F;
	Mon, 27 Nov 2023 02:16:50 -0800 (PST)
Message-ID: <573ec775-c1f0-4a09-afe4-83793fb11f3c@arm.com>
Date: Mon, 27 Nov 2023 10:17:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to
 rk3399 GPU
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 conor+dt@kernel.org, daniel.lezcano@linaro.org
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
 <CAGXv+5EgDk2B_FYo9hNiLVogq+mww1j140W4hsDhywExzgpf2g@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <CAGXv+5EgDk2B_FYo9hNiLVogq+mww1j140W4hsDhywExzgpf2g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 11/27/23 10:02, Chen-Yu Tsai wrote:
> On Mon, Nov 27, 2023 at 4:14 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
>>
>> Add dynamic-power-coefficient to the GPU node. That will create Energy
>> Model for the GPU based on the coefficient and OPP table information.
>> It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
>> In similar way the Energy Model for CPUs in rk3399 is created, so both
>> are aligned in power scale. The maximum power used from this coefficient
>> is 1.5W at 600MHz.
>>
>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index 9da0b6d77c8d..87cfdf570b19 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -2113,6 +2113,7 @@ gpu: gpu@ff9a0000 {
>>                  interrupt-names = "job", "mmu", "gpu";
>>                  clocks = <&cru ACLK_GPU>;
>>                  #cooling-cells = <2>;
>> +               dynamic-power-coefficient = <2640>;
> 
> For reference, in the ChromeOS downstrean v5.10 kernel we have:
> 
> gpu_power_model: power_model {
>          compatible = "arm,mali-simple-power-model";
>          static-coefficient = <411522>;
>          dynamic-coefficient = <977>;
>          ts = <32000 4700 (-80) 2>;
>          thermal-zone = "gpu";
> };
> 
> This is for the Mali kbase.

That's downstream driver for downstream IPA thermal governor, which is
different. As you can see there, there is a split of the total power
to 'static power' and 'dynamic power' and thus those 2 coefficients:
'static-coefficient' and 'dynamic-coefficient'. There is also
polynomial for the exponential curve approximating temperature impact
to the increasing leakage (static power).

This is totally not upstream code and quite complex to derive thus
fly upstream. Therefore, in upstream we have very simple power
model right now, but it will be possible to update it at runtime
when the leakage is increased. I hope the new v5 version that
I'm going to send, will get into mainline soon [1].

Regards,
Lukasz

[1] 
https://lore.kernel.org/lkml/20230925081139.1305766-1-lukasz.luba@arm.com/

