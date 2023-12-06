Return-Path: <devicetree+bounces-22469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C9E8078CA
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 20:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D21F9281D8B
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 19:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5742A47F62;
	Wed,  6 Dec 2023 19:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="emCT72yc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2170E90;
	Wed,  6 Dec 2023 11:42:41 -0800 (PST)
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-7b435966249so6321039f.0;
        Wed, 06 Dec 2023 11:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701891760; x=1702496560; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MD7rQumZcxtfQXGF4yVw2sbuVFtWw0Ym2PO4K4QsjTg=;
        b=emCT72ycOC3WQTIgzQ5RsIFE3KFo7a/0GX6Y+9XprNWgE6So8XzgXM2FKuKBHtI9Ta
         n1unpJY0hV6jkCunwkFXekHVeGpUwBAiwZo1yEvDEY7TeksIPc41JBfmQNGtdSQlBbxQ
         lMkuPvy97KkCNQ1E7TH773Yw3qL7aLXzII1wm70H2yNOhnwSRJzcVOcr6yiD28PdyD6/
         vEkMTA8VVCwuuzXZXG56+Pt3SLAyoYDqCJQnSmwUi+hv18tqmkZOLBgSuUGzGmL2OLtn
         ELoDrKHzZx/tHUi0PeY3QmvmRRkmHF2trVo1GvaVWrrMIqn0u3j144pkip9zQYF7GJRa
         kT3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701891760; x=1702496560;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MD7rQumZcxtfQXGF4yVw2sbuVFtWw0Ym2PO4K4QsjTg=;
        b=lygQUpbYTYkbugAWgIGtAkKp2i6bVwkGWVgXvxq7gzOju6bFQqTDD80bPSmIoh9oLl
         ebVG7ferGdH6l379dmrwIW2xkrzqOsfqCTewTWRXoM5U6t+dMvgikxaank//ndu1BBsu
         lmOOrxppNjpvcZfcPtLsBE3yz+/0BBetbygVluH4eyfY+x2v08g/+k04o+sY9BbMvKhx
         6apcqj9XodKUMDwFuzhmrHmNbXWwpqpLe15bDbHHvS6o4qfF9Rz30IH/q8Ld4gYVOswv
         4UVAWD91bnoivFepep5gFScukwWQA8cAauSF9GrH5+bzTi4gVay+PleQ2aZ00xziMvlG
         zmAQ==
X-Gm-Message-State: AOJu0YwX7gHGNeacfskW9eUTrwxp3IbJrnZ7OxltpJPdTcC0eGmzVAmq
	BZpsjmVyPucT1+0bTGkzIao=
X-Google-Smtp-Source: AGHT+IGZKyCQ3/0gK/XWj3RkOsj/pO3uQPcIUsLAQq0XmhC1y14umof2h15amr7/e/JU6bQMY+L/yg==
X-Received: by 2002:a05:6602:1249:b0:7b4:28f8:2bfe with SMTP id o9-20020a056602124900b007b428f82bfemr1737479iou.39.1701891760323;
        Wed, 06 Dec 2023 11:42:40 -0800 (PST)
Received: from ?IPV6:2001:470:42c4:101:3fb7:1e39:b284:286f? ([2001:470:42c4:101:3fb7:1e39:b284:286f])
        by smtp.gmail.com with ESMTPSA id x14-20020a056638010e00b0042b2f0b77aasm106476jao.95.2023.12.06.11.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 11:42:39 -0800 (PST)
Message-ID: <b188d02d-7bca-0f1e-bf83-e04e7a4330ea@gmail.com>
Date: Wed, 6 Dec 2023 12:42:33 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RESEND PATCH] arm64: dts: rockchip: Add PCIe pinctrls to Turing
 RK1
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Daniel_Kukie=c5=82a?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
References: <20231205202900.4617-1-CFSworks@gmail.com>
 <2724771.ElGaqSPkdT@diego>
From: Sam Edwards <cfsworks@gmail.com>
In-Reply-To: <2724771.ElGaqSPkdT@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 12/6/23 02:35, Heiko Stübner wrote:
> Am Dienstag, 5. Dezember 2023, 21:28:59 CET schrieb Sam Edwards:
>> The RK3588 PCIe 3.0 controller seems to have unpredictable behavior when
>> no CLKREQ/PERST/WAKE pins are configured in the pinmux. In particular, it
>> will sometimes (varying between specific RK3588 chips, not over time) shut
>> off the DBI block, and reads to this range will instead stall
>> indefinitely.
>>
>> When this happens, it will prevent Linux from booting altogether. The
>> PCIe driver will stall the CPU core once it attempts to read the version
>> information from the DBI range.
>>
>> Fix this boot hang by adding the correct pinctrl configuration to the
>> PCIe 3.0 device node, which is the proper thing to do anyway. While
>> we're at it, also add the necessary configuration to the PCIe 2.0 node,
>> which may or may not fix the equivalent problem over there -- but is the
>> proper thing to do anyway. :)
>>
>> Fixes: 2806a69f3fef6 ("arm64: dts: rockchip: Add Turing RK1 SoM support")
>> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
>> ---
>>   .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 14 ++------------
>>   1 file changed, 2 insertions(+), 12 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
>> index 9570b34aca2e..129f14dbd42f 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
>> @@ -214,7 +214,7 @@ rgmii_phy: ethernet-phy@1 {
>>   &pcie2x1l1 {
>>   	linux,pci-domain = <1>;
>>   	pinctrl-names = "default";
>> -	pinctrl-0 = <&pcie2_reset>;
>> +	pinctrl-0 = <&pcie30x1m1_pins>;
> 
> This really throws me for a loop here - in the original submission too
> already. Because somehow those pins are named pcie30x1... for the
> pcie2 controller ;-) .

Hi Heiko,

I just double-checked. The RK1's PCIe 2.0 x1 has the following pin 
assignments:
PCIE1_CLKREQ_N -> AK30 (4 RK_PA0)
PCIE_WAKE (shared with PCIE0 wake signal) -> AL30 (4 RK_PA1)
PCIE1_RST_N -> AM29 (4 RK_PA2)

...so the patch's pinmux setting is indeed correct. (But we may still 
want to drop the `reset-gpios` property; see my reply to your other email.)

The confusion seems to be that the PCIe 2.0 path used here is:
PCIe30X1_1(1L1) -> Combo PIPE PHY2
(So, a PCIe3 controller, but a PCIe2 PHY.)

The WAKE/CLKREQ/PERST signals are very low-speed, and thus bypass the 
PHY: the RK3588's IOMUX subsystem connects them directly to the PCIe3 
controller. So they are "pcie30" pins in that sense.

The (potential) misnomer here is `pcie2x1l1`. The controller at 
0xFE180000 is unequivocally a PCIe 3.0 core, and it *could* be muxed to 
a (bifurcated) PCIe 3.0 x2 PHY for true PCIe 3.0 operation. But since it 
appears that mainline doesn't support this bifurcation (yet), this PCIe 
3.0 core can only be used for PCIe 2.0 through combphy2, which is 
probably why the DT node is labeled `pcie2x1l1` (for now).

In any case, thank you for calling attention to this! I enjoyed 
researching the "why" and hope that it clarifies things for you as well. :)

Cheers,
Sam

> 
> 
>>   	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>>   	status = "okay";
>>   };
>> @@ -226,7 +226,7 @@ &pcie30phy {
>>   &pcie3x4 {
>>   	linux,pci-domain = <0>;
>>   	pinctrl-names = "default";
>> -	pinctrl-0 = <&pcie3_reset>;
>> +	pinctrl-0 = <&pcie30x4m1_pins>;
>>   	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>>   	vpcie3v3-supply = <&vcc3v3_pcie30>;
>>   	status = "okay";
>> @@ -245,17 +245,7 @@ hym8563_int: hym8563-int {
>>   		};
>>   	};
>>   
>> -	pcie2 {
>> -		pcie2_reset: pcie2-reset {
>> -			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -	};
>> -
>>   	pcie3 {
>> -		pcie3_reset: pcie3-reset {
>> -			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -
>>   		vcc3v3_pcie30_en: pcie3-reg {
>>   			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
>>   		};
>>
> 
> 
> 
> 

