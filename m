Return-Path: <devicetree+bounces-191796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B40AF0766
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 02:49:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA3EC4A53BC
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 00:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F7022EF5;
	Wed,  2 Jul 2025 00:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XDJr8m6I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A217CFBF6
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 00:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751417337; cv=none; b=V5CtuHx9AEYKoEgzFj95hPcKNsuckIKGqTdMJysu0myvtLpUurJzAwxYymi8Wj9h+tB596Cuok9CZTidD7Me7tIkJo+eSGN8aocJ8oEAfDI2P/bTuqBseu+uXnIMGfDHF9mEtl02D/Yvkgp5Q9xG2S75fWZJ8vKe35l6ELXoNp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751417337; c=relaxed/simple;
	bh=InK9J2/YqbwRfzojDagtvXR6jYQ+cBJHD459vWQEtCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MyaegoyEXNZWpv5IdIvRV2pP8HLq32F7hiqT7+vu6nlpLGSQMionrRp1FkolBSMCzxrQ9jDQf3I/vq3VHeISTNqgg7aplhhI+GF+AmBqDArUJdDl39NzBpCbD3x5xPMRSO5iE7HokZTHTjRrRy/o6ZrBZaPsXlc+MmeCc1MS7bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XDJr8m6I; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-453066fad06so42389315e9.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 17:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751417334; x=1752022134; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rGsHHNKY8cp9LTm76izZqQKI5ayNv9sJ0wimG6C8jKE=;
        b=XDJr8m6IfuQDk6y0MLBZ5youQQPHG49bMipqdF4jwd8nZA3MowkdOYxut8op42wwm5
         X6N2hblgwrxog1KJkwYHYUKTv5Gr4ZUEWZZzqmzpQbgX9gnfTPZeZmUCWhwlJGD1Tn/+
         V7Rc2LYB+IH4KXxA+9MmVK+oWCq1+nwBn6tvZGCS7TLXpOSQDF6LQ6IQnmfzULeyZkAP
         85Fxz4NZQ8npjtTuCoL6tE4gGfJKIQaJ1Jd5diT+rhGRscc690yPV07n83lfw405jkgs
         jAcftcD9GG2WX/4r3u5lp8/S5Pu5dhYyhCJjEy0kG4wHsYgSbJoj5woYYGMDs3H7Qycg
         UlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751417334; x=1752022134;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rGsHHNKY8cp9LTm76izZqQKI5ayNv9sJ0wimG6C8jKE=;
        b=pEN3htxINg9vMe50KcNZAUzi/ETlFCiVXzwhlfqtTTEY8JUG6UJugAjS/zCCLDTQby
         9VJQu353FEhWjmptUzDfLmxj9g3t6uS9AaCI9UK/Qy/z9YmlVlXUfsTglrodcWD60SSR
         rSrtpN8TcZUWTGC1eeSdSs6biijoySW14tDi+EjwP0P0Jrqi42i5LPY45BFMEywJcjz2
         BI1iyzmn/RT95lfkW4q/z9pDvRxER6RuOR1+D7xRv2jHXmoKeF257q3AgG0Ioyw7wzFE
         B1EevzGKOv47uX6SbSEc62av21TRWFgMv50YCaPO99FzpH932lPFkA1Vmah9mrpDWgyh
         iTzw==
X-Forwarded-Encrypted: i=1; AJvYcCUg/9RPwE0ocL/+cNFcsgJhYs2pyUtNm71n+dqbOa1Bi7hItmsIQ3tZBUtcJNhl1Uj3tA/7d/qrfVf5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8IEqjajYkvFmTg/N/oUXBPhNmNJwCYc7RUcJG5uoY5TeouCIf
	Sb5kkDPXy6lBsMFKMbtekNPSk70So+0DAANoVt5LhmVTrZJcU9mecbuHzEnicZhxLEg=
X-Gm-Gg: ASbGncuKtBYM/YUC+v7HAWT0fJVGqKoht/59pr+M5W7J16Z0rF3MqAXsKk3Wro9XBvC
	etjgT9NsMYPEVVXz/b9jCzE2O7QhoygxrA0zOSIR3SCeSkdZwPZC8GLoASFOfX6U4zwoNTxZNdd
	wPCuUFuXiCnpJrjUrwlXT1mNCv3PqfainnGd1p5uryjtj7ackpv9OPR0C5JngrMNB3yNBbWKJXi
	lHZ3+nSFEe2O8AgJThC9j7u4+5ZHB26SPXk4jDvdieFJi0xq2FQhWQQFDKtrd+Sw0+oJCp1eAiQ
	lgW3zx+TAH4h9oJSReM4ZBqt+Tk0Wv+fiNZBmfs5Ne2JUkBmrR3uPd7V+AGC5/Yd7bgLZVBlRRn
	vZDhhxzClgZwV65uTiauMqhKVYoI=
X-Google-Smtp-Source: AGHT+IGKgsMLOI0TmDqWO6ukaJ5/cpcfHm5ix9xN5jkjagPK8L17OmUWnBDEoVzL86A0njQ2MfOtYg==
X-Received: by 2002:a05:600c:3504:b0:43c:ec4c:25b4 with SMTP id 5b1f17b1804b1-454a36e459cmr10962585e9.10.1751417333805;
        Tue, 01 Jul 2025 17:48:53 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a406ab6sm183965225e9.30.2025.07.01.17.48.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 17:48:53 -0700 (PDT)
Message-ID: <f0a42059-41dc-4948-808f-05f56991d22a@linaro.org>
Date: Wed, 2 Jul 2025 01:48:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
To: Richard Acayan <mailingradian@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250630225944.320755-7-mailingradian@gmail.com>
 <3qGugliBdtpdHGZzR9xh_974TfJigMYERGVAfqmpCqe1R7O0CLU8FzXVcIESzTIc-SKzpk42ZAx5-38eDX00Eg==@protonmail.internalid>
 <20250630225944.320755-11-mailingradian@gmail.com>
 <488281f6-5e5d-4864-8220-63e2a0b2d7f2@linaro.org> <aGRsDRnV5tc5IG3J@radian>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <aGRsDRnV5tc5IG3J@radian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2025 00:15, Richard Acayan wrote:
> On Tue, Jul 01, 2025 at 01:23:44PM +0100, Bryan O'Donoghue wrote:
>> On 30/06/2025 23:59, Richard Acayan wrote:
>>> The Sony IMX355 is the front camera on the Pixel 3a. It is connected to
>>> CSIPHY1 and CCI I2C1, and uses MCLK2. Add support for it.
>>>
>>> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
>>> ---
>>>    .../boot/dts/qcom/sdm670-google-sargo.dts     | 112 ++++++++++++++++++
>>>    1 file changed, 112 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
>>> index d01422844fbf..0af6a440ecbc 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
>>> @@ -172,6 +172,34 @@ vreg_s2b_1p05: vreg-s2b-regulator {
>>>    		regulator-min-microvolt = <1050000>;
>>>    		regulator-max-microvolt = <1050000>;
>>>    	};
>>> +
>>> +	cam_front_ldo: cam-front-ldo-regulator {
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "cam_front_ldo";
>>> +		regulator-min-microvolt = <1352000>;
>>> +		regulator-max-microvolt = <1352000>;
>>> +		regulator-enable-ramp-delay = <135>;
>>> +
>>> +		gpios = <&pm660l_gpios 4 GPIO_ACTIVE_HIGH>;
>>> +		enable-active-high;
>>> +
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&cam_front_ldo_pin>;
>>> +	};
>>> +
>>> +	cam_vio_ldo: cam-vio-ldo-regulator {
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "cam_vio_ldo";
>>> +		regulator-min-microvolt = <1800000>;
>>> +		regulator-max-microvolt = <1800000>;
>>> +		regulator-enable-ramp-delay = <233>;
>>> +
>>> +		gpios = <&pm660_gpios 13 GPIO_ACTIVE_HIGH>;
>>> +		enable-active-high;
>>> +
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&cam_vio_pin>;
>>> +	};
>>>    };
>>>
>>>    &apps_rsc {
>>> @@ -392,6 +420,58 @@ vreg_bob: bob {
>>>    	};
>>>    };
>>>
>>> +&camss {
>>> +	vdda-phy-supply = <&vreg_l1a_1p225>;
>>
>> You've got your 1p2 but looks like you are missing your 0p8 supply
> 
> This is probably vreg_s6a_0p87 which supplies vreg_l1a_1p225.

Yep adds up to me.

> 
>>> +	status = "okay";
>>> +};
>>> +
>>> +&camss_endpoint1 {
>>> +	clock-lanes = <7>;
>>> +	data-lanes = <0 1 2 3>;
>>> +	remote-endpoint = <&cam_front_endpoint>;
>>> +	status = "okay";
>>> +};
>>
>> This looks not like how the other dts are upstream. Does this work and pass
>> the dt checker ?
>>
>> Right now upstream wants something like this
>>
>> &camss {
>>          vdda-phy-supply = <&vreg_l5a_0p88>;
>>          vdda-pll-supply = <&vreg_l9a_1p2>;
>>          status = "okay";
>>
>>          ports {
>>                  /* The port index denotes CSIPHY id i.e. csiphy2 */
>>                  port@2 {
>>                          csiphy2_ep: endpoint {
>>                                  clock-lanes = <7>;
>>                                  data-lanes = <0 1 2 3>;
>>                                  remote-endpoint = <&imx577_ep>;
>>                          };
>>                  };
>>          };
>> };
> 
> I misunderstood a review comment from an earlier series. We can do the
> same thing here instead of pushing a different style.

Yes. Unless/until there's a change in linux-next you can safely ignore 
all opinions/statements including mine on how things will be in the 
future...

>> Can the upstream driver actually consume the dt as you specified above ?
> 
> If you're curious, it does understand and let you go as far as using the
> camera.

Nice.

Good work.

---
bod

