Return-Path: <devicetree+bounces-232596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4CDC192A4
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:48:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 129C41884268
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82B39313547;
	Wed, 29 Oct 2025 08:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qv/w9vTR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08631917F1
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727344; cv=none; b=gtAHYSMSXYxrAkBe0MGJS3M7u1PWQNwQK8/VcmPippEGjFcei3MqHI3vZUNwOyf4lGw2DXx4aReMrbjmzYfOOHyiB1XVg4Sbl2JYjy5IhXTPTAdXq2OeHvFDOZWvFFTsmJoXzzxt6RMoi2XX9Y6f5rDURUriAKDQICeRGL0W/i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727344; c=relaxed/simple;
	bh=vdHoq0VF/CPXU2WRwDy2aBvJwoy4MK9QKZ23JGgkeXo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m6eaYkpctAzHnD49E+rcXLwfYJXms8W+8AzJRXOA8RrBcZ0fB/zGCN9QkH86gJkzS4pxK7zGp/kgce8rrQZSmFeqw8krm1q1wCI6a/xwShNHGCHuWpevOo7H2CEklZeMgU4ezEgSMtfY3fcDXXR/vlX+1aeIw6dyq079fbaKjN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qv/w9vTR; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-378d65d8184so26029011fa.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761727340; x=1762332140; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3we07e3UJvP1GOZyxsthN2v1+i0U7aVlrq0WJfskyK8=;
        b=Qv/w9vTRiucNgymSWPmCLuuiqmWiT0GMMRn8Zlbu27zWe3fX5ScgdV81/R+ThLmmyK
         00MGQcZUIQwPsyxhjNEFV1WrLJJil4hppgYaiBDgnd4m5qJdxT5ML3vMxL9fY0sNKGyw
         LWxabaeUIRyHiu70bAd6tto0whcqyWWVnz1DqflCmHbPPRoEtglQHY+VVdeax6Tvq2Fe
         WGh/EcOmPtJ9ss10zfrvdgSIUBDwtwLb6p/wNWd4uu47KV7/vNYFtSnkScBSFgBBRugG
         00qbJdi1XyhFg3UQ8lL75/40rHgWR5B2JIKQ2DG83lX/I6ABnQRxwgFxnOPswliBg+Tp
         WHcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727340; x=1762332140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3we07e3UJvP1GOZyxsthN2v1+i0U7aVlrq0WJfskyK8=;
        b=MMn9XHPH0ss+8VjbtuDAcN2QpM4CTq5hDa5ks83iSdayiiqP6pxLuQ0cUgaSDjCkqe
         coFPDO8eWQWR9+wi10TmZLHKcb4BzfkOgfBh+O3nhaREmdNgE++Y5ZTDiwIuYzL2mJ31
         XwPSTfD4lPFR5oaFyki9WcFu0TNu0v7d4rWu/RYElTfJBYrtUgCyn+qvdAol3tjPbPJ9
         CL1TNoWizXCF6ObANUfVBc+92lhOu3tf452SGz1BeE4d6b64ZN76NFealDNB1ejqYRSZ
         0AW0oBoEcyh8ei9QL32fXt8B4RFTg/rKWsgjL9MZeTLUYH/B8pcRm2pKf26EJB87zsPn
         1nCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFACwpdkLMQJfldcj6uUkGGngVb5D9xACCzq4nS+vWX4nRsWH1FDRL8yvoDkkahIJZ31ht6S5nBjxi@vger.kernel.org
X-Gm-Message-State: AOJu0YxmOIrDKsfS+FrcLykO/2k6PljLWrW0GuXQ5bg26JobdnRdUUjo
	zGFR5XQscFx2KoroGzMlt78rpG2bxHD1z7SaY5Ip/s49/h6kyeGflWB3
X-Gm-Gg: ASbGncumok0jfVN0IRePIlsLBtTd0EXtPSHm44c4en+uDHopn8cDE9YAHmZtX4iBj+Z
	idbGRgokGJn72WYyXxdpW31Dki4kRQ+8+6YMksbFTXUddwjn6yOJzC/MjZB27owgi4akmHe0JjM
	eKroJFJL+IANJnx8FSBTMvMiawC3FZwCaVWlwaxmQaccRL0W4apjG6Jeuu2dNMyV1TRlpnT0Zcm
	W8CULFv7fqjAhajkMzW/4yxJuX23k9eC3Sh8rnZB4ZP7/eGrFswC2t3pDjs6eyH9ty7R6WAQN/U
	JBzOsc8VnfiB9SJDBp/UiFLQnbW9+vhQY/Fbq4JbAER2NdjG80iGh5H+lwe22whBJ44D5SYzyhq
	q0RURPF7Q2Hd5pWdaNJO1Oe1/G5vny3fa+Ybf5Mg8lb8uBOqmLdB3xB2qvRlCH5Eoiy5RaYmtem
	qwKr6xh+qvwQ==
X-Google-Smtp-Source: AGHT+IEBJiRFPVFsvgo9dN9DCTuU4N9+tKqy36VEQJMKBJXWx4r2ceVpk4tbpOZEBYRZLo1hsmybxg==
X-Received: by 2002:a05:6512:4025:b0:593:3d5:f0e6 with SMTP id 2adb3069b0e04-594128b1140mr700531e87.35.1761727339236;
        Wed, 29 Oct 2025 01:42:19 -0700 (PDT)
Received: from [10.38.18.54] ([213.255.186.37])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f83c96sm3667085e87.101.2025.10.29.01.42.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 01:42:18 -0700 (PDT)
Message-ID: <4a47b9b5-f482-41b6-a441-7728572c5a0c@gmail.com>
Date: Wed, 29 Oct 2025 10:42:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: freescale: add Ka-Ro Electronics
 tx8m-1610 COM
To: =?UTF-8?Q?Lothar_Wa=C3=9Fmann?= <LW@KARO-electronics.de>,
 Maud Spierings <maudspierings@gocontroll.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
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
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20251029081138.2161a92a@karo-electronics.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 29/10/2025 09:11, Lothar Waßmann wrote:
> Hi,
> 
> On Tue, 28 Oct 2025 14:10:04 +0100 Maud Spierings wrote:
>> On 10/28/25 13:42, Maud Spierings wrote:
>>> On 10/28/25 13:15, Matti Vaittinen wrote:
> [...]
>>>> Could/Should this be described using the:
>>>> 'rohm,feedback-pull-up-r1-ohms' and
>>>> 'rohm,feedback-pull-up-r2-ohms'? If I understand the comment
>>>> correctly, that might allow the driver to be able to use correctly
>>>> scaled voltages.
>>>>
>>>> https://elixir.bootlin.com/linux/v6.18-rc1/source/Documentation/
>>>> devicetree/bindings/regulator/rohm,bd71837-regulator.yaml#L108
>>>>   
>>>
>>> Ah I didn't know those existed, should've checked the bindings in more
>>> detail, thanks for the hint!
>>>
>>> I will have to investigate this carefully, since I don't have access to
>>> the actual design of the COM, so I don't know exactly what is there.
>>>    
>>
>> So I am not yet entirely sure if this works out, I used the calculation
>> in the driver:
>>
>> /*
>>    * Setups where regulator (especially the buck8) output voltage is scaled
>>    * by adding external connection where some other regulator output is
>> connected
>>    * to feedback-pin (over suitable resistors) is getting popular amongst
>> users
>>    * of BD71837. (This allows for example scaling down the buck8 voltages
>> to suit
>>    * lover GPU voltages for projects where buck8 is (ab)used to supply power
>>    * for GPU. Additionally some setups do allow DVS for buck8 but as this do
>>    * produce voltage spikes the HW must be evaluated to be able to
>> survive this
>>    * - hence I keep the DVS disabled for non DVS bucks by default. I
>> don't want
>>    * to help you burn your proto board)
>>    *
>>    * So we allow describing this external connection from DT and scale the
>>    * voltages accordingly. This is what the connection should look like:
>>    *
>>    * |------------|
>>    * |	buck 8  |-------+----->Vout
>>    * |		|	|
>>    * |------------|	|
>>    *	| FB pin	|
>>    *	|		|
>>    *	+-------+--R2---+
>>    *		|
>>    *		R1
>>    *		|
>>    *	V FB-pull-up
>>    *
>>    *	Here the buck output is sifted according to formula:
>>    *
>>    * Vout_o = Vo - (Vpu - Vo)*R2/R1
>>    * Linear_step = step_orig*(R1+R2)/R1
>>    *
>>    * where:
>>    * Vout_o is adjusted voltage output at vsel reg value 0
>>    * Vo is original voltage output at vsel reg value 0
>>    * Vpu is the pull-up voltage V FB-pull-up in the picture
>>    * R1 and R2 are resistor values.
>>    *
>>    * As a real world example for buck8 and a specific GPU:
>>    * VLDO = 1.6V (used as FB-pull-up)
>>    * R1 = 1000ohms
>>    * R2 = 150ohms
>>    * VSEL 0x0 => 0.8V – (VLDO – 0.8) * R2 / R1 = 0.68V
>>    * Linear Step = 10mV * (R1 + R2) / R1 = 11.5mV
>>    */
>>
>> Because I do not know the pull up voltage, and I am not sure if it is a
>> pull up.
>>
>> So:
>> Vout_o = 1.35V
>> Vo = 1.1V
>> Vpu = unknown
>> R2 = 499 Ohm
>> R1 = 2200 Ohm
>> Gives:
>> Vpu = ~0V
>>
>> And:
>> Vout_o = 1.35V
>> Vo = 1.1V
>> Vpu = unknown
>> R2 = 2200 Ohm
>> R1 = 499 Ohm
>> Gives:
>> Vpu = ~1.04V
>>
>> I am not quite sure which resistor is R1 and which is R2 but having
>> there be a pull down to 0V seems the most logical answer?
>>
>> I am adding Lothar from Ka-Ro to the CC maybe he can shed some light on
>> this setup.
>>
> R2 is connected to GND, so Vpu = 0.
> With:
> 	regulator-min-microvolt = <1350000>;
> 	regulator-max-microvolt = <1350000>;
> 	rohm,fb-pull-up-microvolt = <0>;
> 	rohm,feedback-pull-up-r1-ohms = <2200>;
> 	rohm,feedback-pull-up-r2-ohms = <499>;
> the correct voltage should be produced on the BUCK8 output, but a quick
> test with these parameters led to:
> |failed to get the current voltage: -EINVAL
> |bd718xx-pmic bd71847-pmic.3.auto: error -EINVAL: failed to register buck6 regulator
> |bd718xx-pmic: probe of bd71847-pmic.3.auto failed with error -22
> 
> Apparently noone has ever tested this feature in real life.

Thanks for trying it out Lothar. I am positive this was tested - but 
probably the use-case has been using a pull-up. I assume having the zero 
pull-up voltage causes the driver to calculate some bogus values. I 
think fixing the computation in the driver might not be that big of a 
task(?) The benefit of doing it would be that the correct voltages would 
be calculated by the driver.

If real voltages aren't matching what is calculated by the driver, then 
the voltages requested by regulator consumers will cause wrong voltages 
to be applied. Debug interfaces will also show wrong voltages, and the 
safety limits set in the device-tree will not be really respected.

I think this would be well worth fixing.

Yours,
	-- Matti

> 
> 
> Lothar Waßmann


