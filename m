Return-Path: <devicetree+bounces-232636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3AEC19937
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0AFF34E86B9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440782E5437;
	Wed, 29 Oct 2025 10:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MRT4fBqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556CF2E427B
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761732348; cv=none; b=K17/rOU0l28Mz9lH8Hl4/y14TW3mtV6235sUTPb60EhD99RFdAhUrpKrda+G9elJg82jz3nE/NesPo5xNl1rGGoEB9U2n6xd3GhdnQf4imDR1ZEmNQVTupAGVsoK1QMnDOocmDwHh8FXp8pmPLFsgKReqBA8wtVWYSSTwFb2GBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761732348; c=relaxed/simple;
	bh=6fhlONikyziLKXSOgsIWG9Q5ws9vOabN9oCSLCgESxY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mtZ3+8sdS+nITkD8+aj4GM5Y+gBgmlfUtHpjBtbzDoyxG3yM0DvtVQ7lZjZbcpq1iZC222x1/I+Eb5Qyc8YsnNJHiVtgzm/CfX5LddnHx2l0XHJdF+DfWp2FppEPmv/DkPeRIBEFp0IxcnJW8WQ+pzo77cACWjy3Gat6cwJOAXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MRT4fBqv; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-378d61ce75aso8388411fa.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 03:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761732344; x=1762337144; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uijkDtADuxF9K7YO0wHfT0dqUWSv/gYtiCeLIm0pwtg=;
        b=MRT4fBqvZ6hKMYRWETILIkdfAr+GsPdED1SHlqrmu5MXYxKPF95DiK5oGAUI4PD87R
         zCHQgHXOqrfmvrB0rH0ZsjwW8ohSFk4j2SOSxeppZhzyMysSwcepKsOF7UxwPIK2IR3/
         g8pD8ZGgDsyS//wwt1V0iLzbDQ7zJCd7YurzPfbJpORuMLdZQnKClY9ARJQVSUzxW7HV
         a7kxwJBS1cLb9K3e3/FlmmC8UnIDX/GErVmtiXyADSJjiH0ZemDqNdLbn74gpWR4Qa1g
         7+IvoYYgSE0nZ1tec9firm+t7rLhQuEsA/XQVCyh9xrN6Pb1yYegh/+bZz2OIhlfjSM3
         UrFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761732344; x=1762337144;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uijkDtADuxF9K7YO0wHfT0dqUWSv/gYtiCeLIm0pwtg=;
        b=NkhA57P+eu1T1R4FxB4VqBWdv0NWxy5jLbr7f3RUJ9fhKpfhFYHTRxU40Au7bWXxgN
         l38khc1AZL1UgfiPZNB0MrdXEQm9xMYrPa8Uhng9ExQcFp4h/B2OVPUF7VxRwiQ7B2ui
         e1zR3W+i9fX0qWH6subKpUpoPvXuVIhoR0BPImNXarDT5chMGt1oZaW63zYKrj3QcnI0
         m1IEXjjeLJmNokpgjqO/H06TArJog5BrtUCoaIVWCmoMHiKuMAOfqWOEdEsjvUScTdjN
         ZPCZ1sXlatXcu9u7xPEomUdxg/w0VkJNsg6uAlIeIZMJmqrjn+1/lmTWmkZoA2FzyxIl
         2W8w==
X-Forwarded-Encrypted: i=1; AJvYcCUVWS36GQNo2vtxMSqKLNmloEDL6LL02JTDOKhPwU46/54KqHEDNjOUszbfT1yuPVToKPw8v6wX1OSK@vger.kernel.org
X-Gm-Message-State: AOJu0YyAsZkVNqSf8GEEbVjvV7a27hPPQvGOpmOS/rRsXFpLE6gr+S1d
	P6TQDZwJHrcojdjGprhs6KrU886TD+J+16DToxbsg2z9JtjC3VuIkd8J
X-Gm-Gg: ASbGncuu5S++sSqVDZVg9Trpjl0T+kNYqRPBE7W3wDIAePZQMhdZwSYtUQRJdasmxrQ
	OB881GM1vmXuOrIM7X7G6wOwgVwytC0IGYetG1k2nFM6ExAheMh/pOCunxfQoQrFazJyeMtaobx
	28DjyDhL5ZUPCGNTFCuuXG4p6hIWaBSHKb69S4/OehQDZHoJst4Slp18jYWT2r2Z/4jZb0cB/iv
	e89+KX3OPr7mQcEVDzWUnapoM3tlJH3cfDmqV6BG+uWp66lYafNL6QnbH3Ku+jvMJFEjXbFbpdr
	vBnhDl8/TBF88yi10drkeodj58Sw+NS36ufulV83pKtuP3OdD30q/p0Yzmod49gGnefKK8A1ZH7
	leeJkWDV21VIocxzagiyH2Qx2x+DdtEurxPPeRAEAYaP2PWwPMj+9SgdS62UE3gPKB25o+jd4vH
	2m+N+EsnJItw==
X-Google-Smtp-Source: AGHT+IGPxek9rb53Ximkpkaumucrgng5VeDuIhUsDvmIZ+V2MTxI6ONwkIEmWMDo7OzJnyOZGmVRjw==
X-Received: by 2002:a05:651c:1614:b0:373:a93d:5b4d with SMTP id 38308e7fff4ca-37a05e4e256mr6276451fa.14.1761732344095;
        Wed, 29 Oct 2025 03:05:44 -0700 (PDT)
Received: from [10.38.18.54] ([213.255.186.37])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee09213fsm32546531fa.1.2025.10.29.03.05.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 03:05:43 -0700 (PDT)
Message-ID: <d05c62c9-7ed7-46e4-aa4d-27172741b5ee@gmail.com>
Date: Wed, 29 Oct 2025 12:05:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: freescale: add Ka-Ro Electronics
 tx8m-1610 COM
To: =?UTF-8?Q?Lothar_Wa=C3=9Fmann?= <LW@KARO-electronics.de>
Cc: Maud Spierings <maudspierings@gocontroll.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
References: <20251022-mini_iv-v2-0-20af8f9aac14@gocontroll.com>
 <20251022-mini_iv-v2-3-20af8f9aac14@gocontroll.com>
 <a7012995-c2a8-48a3-abe1-5c227272f21c@gmail.com>
 <65202d1f-6c4f-4d4e-9fef-85cfb74ec768@gocontroll.com>
 <938f85b0-4c9b-463a-960a-f5f4e4092480@gocontroll.com>
 <20251029081138.2161a92a@karo-electronics.de>
 <4a47b9b5-f482-41b6-a441-7728572c5a0c@gmail.com>
 <20251029104838.44c5adcf@karo-electronics.de>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20251029104838.44c5adcf@karo-electronics.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 29/10/2025 11:48, Lothar Waßmann wrote:
> Hi,
> 
> On Wed, 29 Oct 2025 10:42:17 +0200 Matti Vaittinen wrote:
>> On 29/10/2025 09:11, Lothar Waßmann wrote:
>>> Hi,
>>>
>>> On Tue, 28 Oct 2025 14:10:04 +0100 Maud Spierings wrote:
>>>> On 10/28/25 13:42, Maud Spierings wrote:
>>>>> On 10/28/25 13:15, Matti Vaittinen wrote:
>>> [...]
>>>>>> Could/Should this be described using the:
>>>>>> 'rohm,feedback-pull-up-r1-ohms' and
>>>>>> 'rohm,feedback-pull-up-r2-ohms'? If I understand the comment
>>>>>> correctly, that might allow the driver to be able to use correctly
>>>>>> scaled voltages.
>>>>>>
>>>>>> https://elixir.bootlin.com/linux/v6.18-rc1/source/Documentation/
>>>>>> devicetree/bindings/regulator/rohm,bd71837-regulator.yaml#L108
>>>>>>      
>>>>>
>>>>> Ah I didn't know those existed, should've checked the bindings in more
>>>>> detail, thanks for the hint!
>>>>>
>>>>> I will have to investigate this carefully, since I don't have access to
>>>>> the actual design of the COM, so I don't know exactly what is there.
>>>>>       
>>>>
>>>> So I am not yet entirely sure if this works out, I used the calculation
>>>> in the driver:
>>>>
>>>> /*
>>>>     * Setups where regulator (especially the buck8) output voltage is scaled
>>>>     * by adding external connection where some other regulator output is
>>>> connected
>>>>     * to feedback-pin (over suitable resistors) is getting popular amongst
>>>> users
>>>>     * of BD71837. (This allows for example scaling down the buck8 voltages
>>>> to suit
>>>>     * lover GPU voltages for projects where buck8 is (ab)used to supply power
>>>>     * for GPU. Additionally some setups do allow DVS for buck8 but as this do
>>>>     * produce voltage spikes the HW must be evaluated to be able to
>>>> survive this
>>>>     * - hence I keep the DVS disabled for non DVS bucks by default. I
>>>> don't want
>>>>     * to help you burn your proto board)
>>>>     *
>>>>     * So we allow describing this external connection from DT and scale the
>>>>     * voltages accordingly. This is what the connection should look like:
>>>>     *
>>>>     * |------------|
>>>>     * |	buck 8  |-------+----->Vout
>>>>     * |		|	|
>>>>     * |------------|	|
>>>>     *	| FB pin	|
>>>>     *	|		|
>>>>     *	+-------+--R2---+
>>>>     *		|
>>>>     *		R1
>>>>     *		|
>>>>     *	V FB-pull-up
>>>>     *
>>>>     *	Here the buck output is sifted according to formula:
>>>>     *
>>>>     * Vout_o = Vo - (Vpu - Vo)*R2/R1
>>>>     * Linear_step = step_orig*(R1+R2)/R1
>>>>     *
>>>>     * where:
>>>>     * Vout_o is adjusted voltage output at vsel reg value 0
>>>>     * Vo is original voltage output at vsel reg value 0
>>>>     * Vpu is the pull-up voltage V FB-pull-up in the picture
>>>>     * R1 and R2 are resistor values.
>>>>     *
>>>>     * As a real world example for buck8 and a specific GPU:
>>>>     * VLDO = 1.6V (used as FB-pull-up)
>>>>     * R1 = 1000ohms
>>>>     * R2 = 150ohms
>>>>     * VSEL 0x0 => 0.8V – (VLDO – 0.8) * R2 / R1 = 0.68V
>>>>     * Linear Step = 10mV * (R1 + R2) / R1 = 11.5mV
>>>>     */
>>>>
>>>> Because I do not know the pull up voltage, and I am not sure if it is a
>>>> pull up.
>>>>
>>>> So:
>>>> Vout_o = 1.35V
>>>> Vo = 1.1V
>>>> Vpu = unknown
>>>> R2 = 499 Ohm
>>>> R1 = 2200 Ohm
>>>> Gives:
>>>> Vpu = ~0V
>>>>
>>>> And:
>>>> Vout_o = 1.35V
>>>> Vo = 1.1V
>>>> Vpu = unknown
>>>> R2 = 2200 Ohm
>>>> R1 = 499 Ohm
>>>> Gives:
>>>> Vpu = ~1.04V
>>>>
>>>> I am not quite sure which resistor is R1 and which is R2 but having
>>>> there be a pull down to 0V seems the most logical answer?
>>>>
>>>> I am adding Lothar from Ka-Ro to the CC maybe he can shed some light on
>>>> this setup.
>>>>   
>>> R2 is connected to GND, so Vpu = 0.
>>> With:
>>> 	regulator-min-microvolt = <1350000>;
>>> 	regulator-max-microvolt = <1350000>;
>>> 	rohm,fb-pull-up-microvolt = <0>;
>>> 	rohm,feedback-pull-up-r1-ohms = <2200>;
>>> 	rohm,feedback-pull-up-r2-ohms = <499>;
>>> the correct voltage should be produced on the BUCK8 output, but a quick
>>> test with these parameters led to:
>>> |failed to get the current voltage: -EINVAL
>>> |bd718xx-pmic bd71847-pmic.3.auto: error -EINVAL: failed to register buck6 regulator
>>> |bd718xx-pmic: probe of bd71847-pmic.3.auto failed with error -22
>>>
>>> Apparently noone has ever tested this feature in real life.
>>
>> Thanks for trying it out Lothar. I am positive this was tested - but
>> probably the use-case has been using a pull-up. I assume having the zero
>> pull-up voltage causes the driver to calculate some bogus values. I
>> think fixing the computation in the driver might not be that big of a
>> task(?) The benefit of doing it would be that the correct voltages would
>> be calculated by the driver.
>>
>> If real voltages aren't matching what is calculated by the driver, then
>> the voltages requested by regulator consumers will cause wrong voltages
>> to be applied. Debug interfaces will also show wrong voltages, and the
>> safety limits set in the device-tree will not be really respected.
>>
>> I think this would be well worth fixing.
>>
> Before doing the real-life test I did the same calculation that's done
> in the driver to be sure that it will generate the correct values:
> bc 1.07.1
> Copyright 1991-1994, 1997, 1998, 2000, 2004, 2006, 2008, 2012-2017 Free Software Foundation, Inc.
> This is free software with ABSOLUTELY NO WARRANTY.
> For details type `warranty'.
> fb_uv=0
> r1=2200
> r2=499
> min=800000
> step=10000
> # default voltage without divider
> min+30*step
> 1100000
> min=min-(fb_uv-min)*r2/r1
> step=step*(r1+r2)/r1
> min
> 981454
> step
> 12268
> # default voltage with divider
> min+30*step
> 1349494
> 
> Probably we need to use this value rather than the nominal 135000 as
> the target voltage in the DTB.

Yes. When the driver calculates the voltages which match the actual 
voltages, then you should also use the actual voltages in the device-tree.

Yours,
	-- Matti

> 
> 
> Lothar Waßmann


