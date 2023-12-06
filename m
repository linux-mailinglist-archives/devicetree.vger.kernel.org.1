Return-Path: <devicetree+bounces-22459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA5580778D
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 19:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 873D11F21074
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 651E74184A;
	Wed,  6 Dec 2023 18:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TKb/E3hC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C773122;
	Wed,  6 Dec 2023 10:26:44 -0800 (PST)
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-7b6e9f335dcso2390239f.1;
        Wed, 06 Dec 2023 10:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701887203; x=1702492003; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ZySKQCUH2RPxJ6tJdSkxJbwaT6/swy656+RmrGV9Kg=;
        b=TKb/E3hCKNvdTGEVHRBSH3EGiwRrO1Li5kThVkzbUz3rY1/r3Txc+UbB5zVWfjaSLB
         kngPK1ZRnb2Fyut7Lu+C1o3hDEdN/WFKiwXjm0qLSZZ8IraaAeoZKzad+NKRH9+kM9zV
         CvCHo0UYHF/esnxovM5YloNrlyynJJmDXWfZ+vQbWsPFtpVEEwfo9axt77yS4w6y3dcN
         GYThyfpbBvPjZMgmb7X5UMzP6qbo9N6eIs/o24b/w4jJQ3wDBuV++DAnfOUqL0YlLoqd
         f+7hgAvBaAYgzm1NF3v75gWjkGTJjFPJX0htoz88D0fepLejbJLiiPgY6+AfhIx0OnpR
         b/Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701887203; x=1702492003;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZySKQCUH2RPxJ6tJdSkxJbwaT6/swy656+RmrGV9Kg=;
        b=EbfYjoCtFj8MkWc1a6/sMaTscLqgEJ2SfeQJDFkJpQKpb/knWbAm6kemyxoBOejnET
         o1i2WDlke6MRyyacztXmIbCnf+6nxjuJCHG0cT2r/QBAhNR1kMvR/A744DjKgLS2q4NP
         YRfQBJns7watvIzbT3G30pz4LYF4nzcmTMtXi7LLq37ZefL9i9FBLq7Vz9melB6LoBAT
         OCGWM5mNav3G6ZclJGsRWTDjI8kY2vP8sA9nj+D6416q4WFewLuN4KUNmgFTTv4HvqzM
         9ur211F0OvfGEOct+YxZQueo6IVnD1OGRzS/wTRUd2tj/OTLbetLGS8lzqYDVwRcNeqq
         affQ==
X-Gm-Message-State: AOJu0Yy9wH9f6nK94rX4pPJLFTPuHaXL+ZWoDLAfsuzMCm5e8qMa10wU
	JcvDZX6VtIZ07IIBDf9F1Po=
X-Google-Smtp-Source: AGHT+IE6PzZN0GIbW9nhkBhrktDqmhUZc6UrKi9VtszWP0ZuOdttejlhzjzvWT7tR5TZYs8u772HPA==
X-Received: by 2002:a05:6e02:12a2:b0:35d:6aa4:d5d8 with SMTP id f2-20020a056e0212a200b0035d6aa4d5d8mr1673892ilr.37.1701887203568;
        Wed, 06 Dec 2023 10:26:43 -0800 (PST)
Received: from ?IPV6:2001:470:42c4:101:3fb7:1e39:b284:286f? ([2001:470:42c4:101:3fb7:1e39:b284:286f])
        by smtp.gmail.com with ESMTPSA id j29-20020a02cb1d000000b00468f1305e4esm84031jap.21.2023.12.06.10.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 10:26:43 -0800 (PST)
Message-ID: <d38540c5-79a8-0582-87b9-0e99bf3044d5@gmail.com>
Date: Wed, 6 Dec 2023 11:26:40 -0700
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
 <3331042.e9J7NaK4W3@diego>
From: Sam Edwards <cfsworks@gmail.com>
In-Reply-To: <3331042.e9J7NaK4W3@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 12/6/23 07:55, Heiko Stübner wrote:
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
>>   	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>>   	status = "okay";
>>   };
>> @@ -226,7 +226,7 @@ &pcie30phy {
>>   &pcie3x4 {
>>   	linux,pci-domain = <0>;
>>   	pinctrl-names = "default";
>> -	pinctrl-0 = <&pcie3_reset>;
>> +	pinctrl-0 = <&pcie30x4m1_pins>;

Hi Heiko,

> 
> also, why are you throwing out the pinctrl for the reset pin.
> That seems not related to the regular pins and you could instead just do
> 
> +	pinctrl-0 = <&pcie30x4m1_pins>, <&pcie3_reset>;

The pcie30x4m1_pins def does include pinmuxing `4 RK_PB6` to the DW 
controller already. The v2 patch should probably instead remove the 
reset-gpios property, since an out-of-band GPIO reset is not needed when 
the controller can do it.

I'm still looking into the story with the PCIe 2.0 pins, since 2.0x1's 
PERST# is definitely 4A2. I'll ask around and try to find out where the 
corresponding CLKREQ# is going.

> 
> Thanks
> Heiko

Likewise,
Sam

> 
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

