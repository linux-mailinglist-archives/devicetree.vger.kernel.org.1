Return-Path: <devicetree+bounces-16675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8D57EF3F8
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 15:04:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 922291F25C1D
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 378CE30F9F;
	Fri, 17 Nov 2023 14:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="jQHVjkiF"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C45A6C5;
	Fri, 17 Nov 2023 06:04:00 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHE3fQ2129286;
	Fri, 17 Nov 2023 08:03:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700229821;
	bh=kT/iKhwxlZUzF6njO16w9Zyg0U8FX+yZFKavzTXPNL8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=jQHVjkiF60x9wAst6AQXgiabzK0c5l3W99Mq98YBLFQOGOEDitCZmqfQoVTl8V/7z
	 0eehTJ2s5iLenCakylfg2/SE1vgWLsoRVvCAXOi6vxi+/xe3Xnm/rmsg8RzUqwUmHV
	 G2JjVZXx0pqzxo0wF5o7UDXBCy8H7Qvy/Fn8U2ZU=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHE3ffC004544
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 08:03:41 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 08:03:41 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 08:03:41 -0600
Received: from [10.250.36.5] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHE3dH0120164;
	Fri, 17 Nov 2023 08:03:39 -0600
Message-ID: <2cb3f992-f214-4cdf-8443-9e14ab864a66@ti.com>
Date: Fri, 17 Nov 2023 08:03:38 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] docs: dt-bindings: add DTS Coding Style document
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
CC: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Arnd
 Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
        Geert
 Uytterhoeven <geert+renesas@glider.be>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Michal
 Simek <michal.simek@amd.com>,
        Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
        Olof Johansson <olof@lixom.net>
References: <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
 <3266223.44csPzL39Z@phil> <d8363bac-df41-416a-9043-f6212ad61e13@linaro.org>
 <7592981.EvYhyI6sBW@phil>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <7592981.EvYhyI6sBW@phil>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 11/16/23 2:33 PM, Heiko Stuebner wrote:
> Am Donnerstag, 16. November 2023, 21:23:20 CET schrieb Krzysztof Kozlowski:
>> On 16/11/2023 21:03, Heiko Stuebner wrote:
>>
>>>>> I guess the only thing I do have questions about is the part
>>>>>
>>>>>> +4. All properties with values
>>>>>> +5. Boolean properties
>>>>>
>>>>> Is there a rationale for it? Because with it things like regulator-*
>>>>> properties then end up in two different blocks.
>>>>
>>>> Good point. It is only a matter of style that this:
>>>>
>>>> foo {
>>>> 	compatible = "foo";
>>>> 	reg = <0x1>;
>>>> 	clocks = <&clk>;
>>>> 	wakeup-source;
>>>> 	key-autorepeat;
>>>> }
>>>>
>>>> looks better to me than:
>>>>
>>>>
>>>> foo {
>>>> 	compatible = "foo";
>>>> 	reg = <0x1>;
>>>> 	key-autorepeat;
>>>> 	wakeup-source;
>>>> 	clocks = <&clk>;
>>>> }
>>>>
>>>> But you have good point that similar properties should be usually
>>>> grouped together.
>>>>
>>>> About which regulator properties are you thinking now? You mean the
>>>> supplies or the provider?
>>>
>>> I was thinking about the provider. There are
>>> 	regulator-min-microvolt = <>;
>>> and friends, but also
>>> 	regulator-boot-on;
>>
>> These are in regulator provider nodes and above guideline would keep
>> logical order:
>>
>> 	regulator-name = "vdd_kfc";
>> 	regulator-min-microvolt = <800000>;
>> 	regulator-max-microvolt = <1500000>;
>> 	regulator-always-on;
>> 	regulator-boot-on;
>>
>> 	regulator-state-mem {
>> 		regulator-off-in-suspend;
>> 	};
>>
>> What exactly would be here misordered?
> 
> going with the vcc5v0_host regulator of the rk3588-quartzpro64 and
> 
> +1. compatible
> +2. reg
> +3. ranges
> +4. All properties with values
> +5. Boolean properties
> +6. status (if applicable)
> +7. Child nodes
> 
> we'd end up with
> 
>          vcc5v0_host: vcc5v0-host-regulator {
> /* 1. */        compatible = "regulator-fixed";
> /* 4. */        gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
>                  pinctrl-names = "default";
>                  pinctrl-0 = <&vcc5v0_host_en>;
>                  regulator-min-microvolt = <5000000>;
>                  regulator-max-microvolt = <5000000>;
>                  regulator-name = "vcc5v0_host";
>                  vin-supply = <&vcc5v0_usb>;
> /* 5. */        enable-active-high;
>                  regulator-always-on;
>                  regulator-boot-on;
>          };
> 

How about grouping like properties (defined in the same schema),
then sorting within that group. Would also allow for defining
where to add spacing.

1. compatible
2. reg
3. ranges
4. All property groups
   4.1 Properties with values
   4.2 Boolean properties
   4.3 Separating space
6. status (if applicable)
7. Child nodes

Your node then would look like we expect:

vcc5v0_host: vcc5v0-host-regulator {
/* 1   */   compatible = "regulator-fixed";

/* 4.1 */   pinctrl-names = "default";
/* 4.1 */   pinctrl-0 = <&vcc5v0_host_en>;
/* 4.3 */
/* 4.1 */   regulator-min-microvolt = <5000000>;
/* 4.1 */   regulator-max-microvolt = <5000000>;
/* 4.1 */   regulator-name = "vcc5v0_host";
/* 4.2 */   regulator-always-on;
/* 4.2 */   regulator-boot-on;
/* 4.2 */   enable-active-high;
/* 4.3 */
/* 4.1 */   gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
...
};


Andrew


> which I find somewhat counter-intuitive ;-) .
> 
> 
> Heiko
> 
> 

