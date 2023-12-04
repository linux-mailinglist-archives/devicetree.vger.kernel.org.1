Return-Path: <devicetree+bounces-21520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8535803EC3
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 20:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D95DE1C20A01
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 19:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D693533078;
	Mon,  4 Dec 2023 19:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LvyFZ7jI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28AC4CE;
	Mon,  4 Dec 2023 11:50:47 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-54bfd4546fbso5975379a12.1;
        Mon, 04 Dec 2023 11:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701719445; x=1702324245; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+qdbcC7yRoXStA6//Sf0ppzUiv9xW5yZR+OVcJWO5pA=;
        b=LvyFZ7jIfK2UXnXp6F/Pn3KindYZatCeV0XwFSQpzCUDH/xO2qpJdxEtGFPaeFwCiZ
         o4sL+5HUBBTAC6A60KRNpwB9Fj4/ThkOuIOaRQJ2pRNk3k06RhA0Aczavlxl1kyFFBMV
         s4nBA+MMWwpHpm8ys8DcWJ9xHDXeyNrGYIEja8oR4CMWSV7lhdPvoMqsBw4ZTfWc2wT+
         uOmElctEIrIzgQalEoKVK6RWCPg0oj3R1y+G61EUTk63FV8aUGBL4MGoI6/Vyg2kwjUw
         xEZssUenE3v33hCwFUCPscJczTXBB8TeWljhExcKQ2lok6ei8u2q2WE7aWtg81gLlnnD
         th6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701719445; x=1702324245;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+qdbcC7yRoXStA6//Sf0ppzUiv9xW5yZR+OVcJWO5pA=;
        b=c8NMEyiQCWJelYLaAOt4hMdxL+PKXWceKJHT5+9UQYnmfgsAznlmnnyyHoxUP9c3fU
         QZ14Sc3Nd5C86wYhcEGLK6xh/FKUuSu6C6y/XJIGf6sYnrH/yEnl7DMTdmEu7iyru86V
         7DRumjWLuMSJnqIYB+sDFoHz+tldKyH5Ue2rTVAGp+bQO06Rd6UWL+8Z7AjucWOCwA0q
         6ETzhtSKceeK1hkr3sgy9PrjWXER0Q0oPJTsb6GGIA8ZoVm1iQM0YyWrqfamLfNPw3Q5
         5WvngfhtGXVtGdMHjXl+yur30ZRmExffCXPNLn++L8igsBvtCExa+kfWfkKt2rtiRHiG
         9MJA==
X-Gm-Message-State: AOJu0YzolwWSt71jbe1ldiBLH2tz8eSl6G57I9zNZsKwWMziYstR0ZyC
	S5ZiUHJFEbblyGlzrZZSjxM=
X-Google-Smtp-Source: AGHT+IFd3H78EZLb2ntO++WfIolEE0unvWxnYVDbs3/x9OA5b4eIfwNO07EUvodwpvsxw1kYt9ELqQ==
X-Received: by 2002:a17:906:7159:b0:a19:a19b:78a1 with SMTP id z25-20020a170906715900b00a19a19b78a1mr3701905ejj.100.1701719445371;
        Mon, 04 Dec 2023 11:50:45 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id lj16-20020a170906f9d000b00a0c9024828asm5605562ejb.68.2023.12.04.11.50.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 11:50:45 -0800 (PST)
Message-ID: <3b436dfe-832a-3c63-cf03-2ddc7aa969c3@gmail.com>
Date: Mon, 4 Dec 2023 20:50:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: add gpio alias for gpio dt
 nodes
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jay.xu@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
 <62868103.matp6XCIr4@diego>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <62868103.matp6XCIr4@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 12/4/23 20:35, Heiko Stübner wrote:
> Hi Johan,
> 
> Am Samstag, 2. Dezember 2023, 19:22:01 CET schrieb Johan Jonker:
>> Rockchip SoC TRM, SoC datasheet and board schematics always refer to
>> the same gpio numbers - even if not all are used for a specific board.
>> In order to not have to re-define them for every board add the
>> aliases to SoC dtsi files.
>>
>> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 

> patch itself looks good, but I don't understand the authorship situation.
> As these two signed-off-bys are now it would suggest that you picked up
> Jianqun Xu's patch, but then the author would need to be different.
> 
> Or do you want to declare this via a
> Co-Developed-by: Jianqun Xu <jay.xu@rock-chips.com>

The newer tag use of Co-Developed-by is more confusing compared to in the old days...

Patch derived from:
https://lore.kernel.org/linux-rockchip/20220909090558.3609190-2-jay.xu@rock-chips.com/

Could you add/fix what is needed without resubmitting.

Johan

> 
> 
> Thanks
> Heiko
> 
>> ---
>>
>> Changed V1:
>>   rebase
>>   remove rk3066 gpio5 alias
>> ---
>>  arch/arm/boot/dts/rockchip/rk3036.dtsi  | 3 +++
>>  arch/arm/boot/dts/rockchip/rk3066a.dtsi | 5 +++++
>>  arch/arm/boot/dts/rockchip/rk322x.dtsi  | 4 ++++
>>  arch/arm/boot/dts/rockchip/rk3288.dtsi  | 9 +++++++++
>>  arch/arm/boot/dts/rockchip/rk3xxx.dtsi  | 4 ++++
>>  5 files changed, 25 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
>> index 78686fc72ce6..8aa2e0864fed 100644
>> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
>> @@ -17,6 +17,9 @@ / {
>>  	interrupt-parent = <&gic>;
>>
>>  	aliases {
>> +		gpio0 = &gpio0;
>> +		gpio1 = &gpio1;
>> +		gpio2 = &gpio2;
>>  		i2c0 = &i2c0;
>>  		i2c1 = &i2c1;
>>  		i2c2 = &i2c2;
>> diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
>> index de9915d946f7..30139f21de64 100644
>> --- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
>> @@ -13,6 +13,11 @@
>>  / {
>>  	compatible = "rockchip,rk3066a";
>>
>> +	aliases {
>> +		gpio4 = &gpio4;
>> +		gpio6 = &gpio6;
>> +	};
>> +
>>  	cpus {
>>  		#address-cells = <1>;
>>  		#size-cells = <0>;
>> diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
>> index a721744cbfd1..831561fc1814 100644
>> --- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
>> @@ -15,6 +15,10 @@ / {
>>  	interrupt-parent = <&gic>;
>>
>>  	aliases {
>> +		gpio0 = &gpio0;
>> +		gpio1 = &gpio1;
>> +		gpio2 = &gpio2;
>> +		gpio3 = &gpio3;
>>  		serial0 = &uart0;
>>  		serial1 = &uart1;
>>  		serial2 = &uart2;
>> diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
>> index cb9cdaddffd4..ead343dc3df1 100644
>> --- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
>> @@ -19,6 +19,15 @@ / {
>>
>>  	aliases {
>>  		ethernet0 = &gmac;
>> +		gpio0 = &gpio0;
>> +		gpio1 = &gpio1;
>> +		gpio2 = &gpio2;
>> +		gpio3 = &gpio3;
>> +		gpio4 = &gpio4;
>> +		gpio5 = &gpio5;
>> +		gpio6 = &gpio6;
>> +		gpio7 = &gpio7;
>> +		gpio8 = &gpio8;
>>  		i2c0 = &i2c0;
>>  		i2c1 = &i2c1;
>>  		i2c2 = &i2c2;
>> diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
>> index cb4e42ede56a..f37137f298d5 100644
>> --- a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
>> @@ -16,6 +16,10 @@ / {
>>
>>  	aliases {
>>  		ethernet0 = &emac;
>> +		gpio0 = &gpio0;
>> +		gpio1 = &gpio1;
>> +		gpio2 = &gpio2;
>> +		gpio3 = &gpio3;
>>  		i2c0 = &i2c0;
>>  		i2c1 = &i2c1;
>>  		i2c2 = &i2c2;
>> --
>> 2.39.2
>>
>>
> 
> 
> 
> 

