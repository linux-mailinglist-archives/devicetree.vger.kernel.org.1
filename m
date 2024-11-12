Return-Path: <devicetree+bounces-121051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A8C9C50A8
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 09:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99A6F1F22A70
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 08:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1493F20B812;
	Tue, 12 Nov 2024 08:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LB4TeJ2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81F4209F39
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 08:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731400292; cv=none; b=lghVaZwENIvtrHzKCzpqKMDa0556WGLyK8QQVNlsdWfd0/iw6xoMw2NtbEo8dLNQFiGeAzPuz1GcfmqKClFlH8IRX03KM29bk8Q0q2Wf5FpH+UuAjaePVqHeSPsyMpNEKnce5C9a6md0yL8pBqw66VBesBFuubYJKJIzbC7+VDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731400292; c=relaxed/simple;
	bh=xXCEJcHrEMjxlrj3J5Wc7ZCHF18/8gNCnF+VCp09UQk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AQV7UpIeqZvCZSJk9hLF1CmSvgVCGXB2/LsUBXbKihxxwShOb68xN9LAXIT+9Y3X0j02XAZHXQSm7lx98efN8T+4xSAsRcg3xa9UhEq0tAJN3H4IEJ8jZ7Ry0qrxE7bhseouvAs073YROyF4cL23sF5woujuRzY55Cnotm/HyQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LB4TeJ2r; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso68785041fa.2
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 00:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731400287; x=1732005087; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rAnhdJuivGo9yNtQ2A0g972HDr7huhPiocLItX4d5N8=;
        b=LB4TeJ2r6klLgmNGmftgm1CuicnjPfWdd6l/EXobEKoPRyzjXSXGerHrh3sJ7v/YeK
         w5//cC/6j4qzo0PkYHSXV7xDhpjKsClqS29urublNc1CbZavPcVFF1VPkg9KbiYsM4gF
         T5wkH1fwX5ep9xaxCPY/plyduJ6y2V4tK9CyIq+cLaT/avR6cHX6Qxrq5f1yXsY7YmEd
         Rg1WDtcKMAtSrs77zCAHh9Clq18x4rV6EOQdSfQgVsiomFQsHZOKSmRS4rq4yjXlBNf6
         lggXOVe39da3in3+QET69WVVmHw9mSDJboSmt5i31FIANOo33XQ9PEunwzXDEjIulTUw
         0SgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731400287; x=1732005087;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rAnhdJuivGo9yNtQ2A0g972HDr7huhPiocLItX4d5N8=;
        b=Ww+Uf2WRIc+kowx+U4K4AwgL3zAlh/QpcWO4rdbMYBmV14cIsHxynB4iY0l/DsKL7n
         gXXvZ7F/4rVjDyT/POMZe0mR/B81YythfU2TRF5Kef4aZ5UIdwbbVw98cxISxsfx0gz6
         TbP9lLwgDxf+Qfr0mYnmLNZ0D4eOVUcfhzvtKcrdAS/mOsF9KiuRfQGSdpCD09dc7i4L
         Fao/IPOK+uAra8iOKu0vUh4z6hpw4sHlQ9nplBmSGhoB/NF5gJSbwfcOJ61RcNJhkvoT
         kNeNc25GXgHGYoz47AcW24a/6AtGntm27COVwcnYuTO6C3NJgpWOevcynSFwD+Bajf8U
         S2Bg==
X-Forwarded-Encrypted: i=1; AJvYcCWsiBnJBHfPnBjjCZcAdiz4ULdmIj3CnhOgnS5m27W3zI7oI61ZVwyz7touirfrLYU2+swA/xlCRMRu@vger.kernel.org
X-Gm-Message-State: AOJu0YzduZLrZydYyPNyj/5rvcwyasLoLqT4+hksHI4/dfOlmeTvuNeQ
	/ZwnYQY6fKRx1GfDoqUAZajtDQOZR+SNaaAuU0NM5qiw1J9j3s/zSs6ya4B9XBo=
X-Google-Smtp-Source: AGHT+IErWU2LiF5Ga+iyyaA3F58LkgbkpQmJW54uHLJyzIyElx/+t9OewFq3ElClX5zbBzsEIKDxIg==
X-Received: by 2002:a2e:9a0a:0:b0:2f0:27da:6864 with SMTP id 38308e7fff4ca-2ff201bc4a3mr91446101fa.17.1731400286863;
        Tue, 12 Nov 2024 00:31:26 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0def7e1sm689117266b.148.2024.11.12.00.31.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 00:31:26 -0800 (PST)
Message-ID: <ce074521-7d4b-4514-9b2b-59b246686210@tuxon.dev>
Date: Tue, 12 Nov 2024 10:31:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 24/25] arm64: dts: renesas: rzg3s-smarc: Enable SSI3
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "perex@perex.cz" <perex@perex.cz>, "tiwai@suse.com" <tiwai@suse.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
 <20241108104958.2931943-25-claudiu.beznea.uj@bp.renesas.com>
 <TYCPR01MB113329FE5E9E610BEF45DC001865F2@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <c15bb621-6cd9-4be3-beec-20fecd411547@tuxon.dev>
 <TY3PR01MB1134600DEBF0096A67950441086582@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134600DEBF0096A67950441086582@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Biju,

On 11.11.2024 13:30, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
>> Sent: 11 November 2024 11:20
>> Subject: Re: [PATCH v2 24/25] arm64: dts: renesas: rzg3s-smarc: Enable SSI3
>>
>> Hi, Biju,
>>
>> On 10.11.2024 10:54, Biju Das wrote:
>>> Hi Claudiu,
>>>
>>> Thanks for the patch.
>>>
>>>
>>>> -----Original Message-----
>>>> From: Claudiu <claudiu.beznea@tuxon.dev>
>>>> Sent: 08 November 2024 10:50
>>>> Subject: [PATCH v2 24/25] arm64: dts: renesas: rzg3s-smarc: Enable
>>>> SSI3
>>>>
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> Enable SSI3.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>> ---
>>>>
>>>> Changes in v2:
>>>> - none
>>>>
>>>>  arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 26
>>>> ++++++++++++++++++++
>>>>  1 file changed, 26 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>>>> b/arch/arm64/boot/dts/renesas/rzg3s-
>>>> smarc.dtsi
>>>> index 4aa99814b808..6dd439e68bd4 100644
>>>> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>>>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>>>> @@ -64,6 +64,11 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
>>>>  	};
>>>>  };
>>>>
>>>
>>> &audio_clk1 {
>>>        assigned-clocks = <&versa3 xx>;
>>>        clock-frequency = <11289600>;
>>> };
>>
>> audio_clk1 node is in the RZ/G3S dtsi to keep the compilation happy.
>>
>> For this board the audio clock1 for the SSI 3 is from <&versa3 2>.
>>
>> If we fill in the audio_clk1 here it will be useless, there will be no consumers for it and it is not
>> available on board.
> 
> As per SSI IP needs external clks AUDIO_CLK1 and AUDIO_CLK2. 
> 
> AUDIO_CLK1 is provided by versa3 generator and
> AUDIO_CLK2 is provided by Crystal.
> 
> Currently AUDIO_CLK2 it reports a frequency of 12288000 which is a multiple of 48kHz
> whereas for AUDIO_CLK1, it reports a frequency of 0. 

Why? You mentioned above that "AUDIO_CLK1 is provided by versa3 generator".
It will report the frequency provided by the versa3 clock generator, isn't it?

> By defining the node, it will report as the value as
> 11289600 which is a multiple of 44.1kHZ.

Defining the node as you proposed have no meaning as it will be anyway
disabled (see the dtsi) and will appear nowhere as no driver will be probed
for it.

Defining it's frequency and enabling will have no meaning either for the
SSI3, as the SSI3 is connected to <&versa3 2> (as of the binding proposed
in this patch).

> 
> From the schematic we know that versa 3 is providing this clock and the audio_clk1 has
> a frequency of "11289600".

<&versa3 2> connected to AUDIO_CLK1 pin is configured at 11.2896MHz in this
series. See patch 22/25:

+	versa3: clock-generator@68 {
+		compatible = "renesas,5l35023";
+		reg = <0x68>;
+		clocks = <&x3_clk>;
+		#clock-cells = <1>;
+		assigned-clocks = <&versa3 0>,
+				  <&versa3 1>,
+				  *<&versa3 2>*,
+				  <&versa3 3>,
+				  <&versa3 4>,
+				  <&versa3 5>;
+		assigned-clock-rates = <24000000>,
+				       <12288000>,
+				       *<11289600>*,
+				       <25000000>,
+				       <100000000>,
+				       <100000000>;
+		renesas,settings = [
+		  80 00 11 19 4c 42 dc 2f 06 7d 20 1a 5f 1e f2 27
+		  00 40 00 00 00 00 00 00 06 0c 19 02 3f f0 90 86
+		  a0 80 30 30 9c
+		];
+	};

Thank you,
Claudiu Beznea

> 
> Cheers,
> Biju
> 
> 
>>
>> Thank you,
>> Claudiu Beznea
>>
>>>
>>> Maybe add audio_clk1, so that it described properly in clock tree??
>>>
>>> Cheers,
>>> Biju
>>>
>>>> +&audio_clk2 {
>>>> +	clock-frequency = <12288000>;
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>>  &i2c0 {
>>>>  	status = "okay";
>>>>
>>>> @@ -94,6 +99,11 @@ da7212: codec@1a {  };
>>>>
>>>>  &pinctrl {
>>>> +	audio_clock_pins: audio-clock {
>>>> +		pins = "AUDIO_CLK1", "AUDIO_CLK2";
>>>> +		input-enable;
>>>> +	};
>>>> +
>>>>  	key-1-gpio-hog {
>>>>  		gpio-hog;
>>>>  		gpios = <RZG2L_GPIO(18, 0) GPIO_ACTIVE_LOW>; @@ -151,6 +161,13 @@ cd {
>>>>  			pinmux = <RZG2L_PORT_PINMUX(0, 2, 1)>; /* SD1_CD */
>>>>  		};
>>>>  	};
>>>> +
>>>> +	ssi3_pins: ssi3 {
>>>> +		pinmux = <RZG2L_PORT_PINMUX(18, 2, 8)>, /* BCK */
>>>> +			 <RZG2L_PORT_PINMUX(18, 3, 8)>, /* RCK */
>>>> +			 <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
>>>> +			 <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
>>>> +	};
>>>>  };
>>>>
>>>>  &scif0 {
>>>> @@ -171,3 +188,12 @@ &sdhi1 {
>>>>  	max-frequency = <125000000>;
>>>>  	status = "okay";
>>>>  };
>>>> +
>>>> +&ssi3 {
>>>> +	clocks = <&cpg CPG_MOD R9A08G045_SSI3_PCLK2>,
>>>> +		 <&cpg CPG_MOD R9A08G045_SSI3_PCLK_SFR>,
>>>> +		 <&versa3 2>, <&audio_clk2>;
>>>> +	pinctrl-names = "default";
>>>> +	pinctrl-0 = <&ssi3_pins>, <&audio_clock_pins>;
>>>> +	status = "okay";
>>>> +};
>>>> --
>>>> 2.39.2
>>>

