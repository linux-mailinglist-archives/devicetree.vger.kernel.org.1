Return-Path: <devicetree+bounces-23303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D5280AAB9
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 18:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11756B209E5
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D7ED3986C;
	Fri,  8 Dec 2023 17:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MUTFNE75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D16785;
	Fri,  8 Dec 2023 09:27:15 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1fb04fb8d28so1420606fac.3;
        Fri, 08 Dec 2023 09:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702056434; x=1702661234; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5y6HCRPZuFf1XHIVNqIPnl7q9aMDKbjcEIeBmVq9aVI=;
        b=MUTFNE7581QED/9sUg33xNKytgnKzxRC3O5Z8/Xd5rdSNUo3TZclsV3MKeKB96tI+V
         rsASq1Xk9m4mKGA6RRcWjSFFdXYL10Rm2DAiI1SAz6lW+6swLFJTt/NzSt/xIDEECdzr
         jcrsv2QiFI8eaAWpsCgTEwLF9IfBfqxyL3HZdl4Jo1/litcNaqOvSYO8Vo5HegWQEtyk
         ZAv3QmWjy+Lj8b16HXfLNV6nLmuTamzL4ndOJxZuBDSEu7/LJN0na36EsQbppip6IPgP
         57MQF5affNQmtygxAlBJauDp3mC10m4yk7wJ05Dtwf/h94CFz3e64nE76WmtDq/Lwx02
         TEYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702056434; x=1702661234;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5y6HCRPZuFf1XHIVNqIPnl7q9aMDKbjcEIeBmVq9aVI=;
        b=u/YKJH6KP4vPD/N4aD4RsK+BVU4Kt6FRR/mv2XMh3ytJ2m6e7zHVzl4BO1WQvASGrW
         5B0B9QZbfL1mHfRaTDPri81gSVI7PbdYsnsh2NeWH8UnMKVk3/Sg/6chel+mmG8x5JZQ
         eRE8d4dDx984LQnwcANU2rwYHj+W+yl0tZ7hMaFRIwKqvOAFSfqwtfhZEcSwEo8ZFvNA
         oe3m4Umr85qohgFh0aFHYW/UMGTZA35xgiHufXho17CVa72w71DH4hC4/2IivMnhpkDc
         IIrHK5r5LN4UH43bzA/gEQzLCLEDG5JV8JacPtKljF4+xkFVX1PqeNvh7c+BpmOIpQym
         /ssw==
X-Gm-Message-State: AOJu0YzvYJ4Kz7BiRA2POpfblIRc7CydiD3RHdRPPNLeR+N4jVY/88ms
	qMGB2kEgZNjPEzOocwCnLkk=
X-Google-Smtp-Source: AGHT+IHR5Nsu7OYrZNkh8DwheOqBrgowsG8O2QZINkUfloB75k/ah2w7bC8zeTWkDF7wcUry3kTqww==
X-Received: by 2002:a05:6870:858d:b0:1fa:f418:d071 with SMTP id f13-20020a056870858d00b001faf418d071mr406825oal.23.1702056434159;
        Fri, 08 Dec 2023 09:27:14 -0800 (PST)
Received: from ?IPV6:2001:470:42c4:101:de4c:e3ab:ccaa:1887? ([2001:470:42c4:101:de4c:e3ab:ccaa:1887])
        by smtp.gmail.com with ESMTPSA id rk7-20020a05687164c700b001fa39dfef88sm474815oab.37.2023.12.08.09.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 09:27:13 -0800 (PST)
Message-ID: <66f413d2-1a5b-b9e3-3c86-35a1d150f486@gmail.com>
Date: Fri, 8 Dec 2023 10:27:10 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add PCIe pinctrls to Turing RK1
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Daniel_Kukie=c5=82a?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
References: <20231208062510.893392-1-CFSworks@gmail.com>
 <6311244.MhkbZ0Pkbq@diego>
From: Sam Edwards <cfsworks@gmail.com>
In-Reply-To: <6311244.MhkbZ0Pkbq@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 12/8/23 04:05, Heiko Stübner wrote:
> Hi Sam,
> 
> Am Freitag, 8. Dezember 2023, 07:25:10 CET schrieb Sam Edwards:
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
>>
>> Hi list,
>>
>> Compared to v1, v2 removes the `reset-gpios` properties as well -- this should
>> give control of the PCIe resets exclusively to the PCIe cores. (And even if the
>> `reset-gpios` props had no effect in v1, it'd be confusing to have them there.)
> 
> Hmm, I'd think this could result in differing behaviour.
> 
> I.e. I tried the same on a different board with a nvme drive on the pci30x4
> controller. But moving the reset from the gpio-way to "just" setting the
> perstn pinctrl, simply hung the controller when probing the device.

Ah, I'm guessing it died in:
ver = dw_pcie_readl_dbi(pci, PCIE_VERSION_NUMBER);

If so, that's the same hang that this patch is aiming to solve. I'm 
starting to wonder if having muxed pins != 1 for a given signal upsets 
the RC(s). Is your board (in an earlier boot stage: 
reset/maskrom/bootloader) muxing a different perstn pin option to that 
controller (and Linux doesn't know to clear it away)? Then when you add 
the perstn pinctrl the total number of perstns muxed to the controller 
comes to 2, and without a reset-gpios = <...>; to take it away again, 
that number stays at 2 to cause the hang upon the DBI read?

If so, that'd mean the change resolves the hang for me, because it 
brings the total up to 1 (from 0), but also causes the hang for you, 
because it brings the total up to 2 (away from 1).

> 
> So I guess I'd think the best way would be to split the pinctrl up into the
> 3 separate functions (clkreqn, perstn, waken) so that boards can include
> them individually.

Mm, maybe. Though that might be more appropriate if a board comes along 
that doesn't connect all of those signals to the same group of pins. I 
worry that attempting to solve this hang by doing that will instead just 
mask the real problem.

> 
> Nobody is using the controller pinctrl entries so far anyway :-) .

Then it's interesting that this board requires them in order to avoid a 
hang on boot. I'll see if there's anything else that I can find out.

Happy Friday,
Sam

> 
> 
> Heiko
> 
> 
>> Note that it is OK for the pcie2x1l1 node to refer to pcie30x1m1_pins. The
>> pcie2x1l1 device is *in fact* a PCIe 3.0 controller, and the pcie30x1m1_pins
>> pinmux setting is so-named to reflect this. The pcie2x1l1 node is so-named
>> because Linux does not (currently) support routing it to a PCIe 3.0 PHY; so in
>> practice it is effectively a PCIe 2.0 controller, for the time being.
>>
>> Cheers and thank you for your time,
>> Sam
>>
>> ---
>>   .../boot/dts/rockchip/rk3588-turing-rk1.dtsi     | 16 ++--------------
>>   1 file changed, 2 insertions(+), 14 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
>> index 9570b34aca2e..875446fdb67e 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
>> @@ -214,8 +214,7 @@ rgmii_phy: ethernet-phy@1 {
>>   &pcie2x1l1 {
>>   	linux,pci-domain = <1>;
>>   	pinctrl-names = "default";
>> -	pinctrl-0 = <&pcie2_reset>;
>> -	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +	pinctrl-0 = <&pcie30x1m1_pins>;
>>   	status = "okay";
>>   };
>>   
>> @@ -226,8 +225,7 @@ &pcie30phy {
>>   &pcie3x4 {
>>   	linux,pci-domain = <0>;
>>   	pinctrl-names = "default";
>> -	pinctrl-0 = <&pcie3_reset>;
>> -	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>> +	pinctrl-0 = <&pcie30x4m1_pins>;
>>   	vpcie3v3-supply = <&vcc3v3_pcie30>;
>>   	status = "okay";
>>   };
>> @@ -245,17 +243,7 @@ hym8563_int: hym8563-int {
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

