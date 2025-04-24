Return-Path: <devicetree+bounces-170426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08875A9AC72
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 13:51:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F24821B65538
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 11:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DBF422577D;
	Thu, 24 Apr 2025 11:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LIBS4o9A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC4F1FA261
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 11:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745495497; cv=none; b=DNTxn0a9u+lttD75rufhmtGF4weWCue89cZSFgPTd7fRi7WvyvN55GuJpFqlIRJ4ofCeaUb3Cpxm+5vh07budBZj5FuL/+E916WW06dswCEp3y7K0ZtpKNHrHjCOW8SxJmgcHRz53L7+94+/+auVZyOurM09Ix7aiXx21SvYDUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745495497; c=relaxed/simple;
	bh=0PT1TPYFDY5G6tMNtteu+yeV5ak++DmaDyKeQUb0pVo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YicWkSjtPFk1wNxYvBLpvn8h62Wy+2Azp3bSW2GjERn3GhyaN1D8WklefYPJxI+XvkHrBztR+i8vOiOKQAkcTm/dAN9Vj3sCUJ6PaoxLrFdTbH0BCzT7InJiIodoMsTsQmR0kCq0YsVVjLTzNd/ymlk4mZKdSSP9C3hHxuGMA/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LIBS4o9A; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-391342fc0b5so687003f8f.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 04:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745495494; x=1746100294; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2EvBYji/1ahd9sU82U8VdJNcvWBfppZjw224cPiT/hg=;
        b=LIBS4o9AhuUFPMpeREmzeVDB1vuQ+FirAqbEFw4NtfOJ4/9Owyl0KsGG9Q5d38MFEF
         8xb7RGmSv/a5u2WJpyPEraCyPxUKJ9Fugd2IuOKHuEgMxdVhER8zs5FcjiTpObDDOAl2
         fFzXoHb7gV/7oYLd0U7yHBT8CGtbKXeGpC7u+qqpFz6EM6J9292tdeVpV90auPhtlJGy
         xwbLPk9263PuHrELo9yVhfNoGSg1eaGbaW/vE8OKd6Ueh6qIaMBq2ztIQWnQejIu4ke7
         JXT0J5KBVnGo/oZJ1+uCU4ZrU45l/BA3fh60ieMKql5NUkNRcCifxfS/bYkc++w9Unew
         +FKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745495494; x=1746100294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EvBYji/1ahd9sU82U8VdJNcvWBfppZjw224cPiT/hg=;
        b=w+RmIWy79LZ3LKy1AqJgVvKdlHNV97sweSzIWKHdjgoquSjSEl74JExwUKjWhyi6K6
         sb37STMqmHsFrMLNVXXyiKsyr5qUSCivhqpeYFkgcDrzAAfg04uzv/SQgh4bXmNpElqU
         7iyiuYvcB57kntvoo9exefCL3W92bgEkP2wFreD9bHcI1eR2FWykFges6JJMIaKJTgnY
         Kz+c58ddHbrkoShXnzW1+KzbON1Oc7uEopsh7ByJZl8lMAC9XS+Jn0CRdaT6DDv86pY+
         g5qnBOZm1mYN6HjbcFm0OkTUCX1VUvb/FTp62Ljy3x/BPmLQTt9WX+BMgh/T+2oprrYR
         NYxg==
X-Forwarded-Encrypted: i=1; AJvYcCUh+4U3YT7ACaWtzYda5L+uGDZAT/Biguvo22TTC1JxvqdPDneiqOOj50eX4cTDVXr/cD1+qMU50Krw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/G3FiAIHMg0e4uWkzj7baPKN4soDbzk7WCg14OHmdzTIV6wwT
	ipztqdgY+2K3F3P6VkTznE/Pfh4RUhXerFC+zMc5OwOdF3e7FJ1ZZo8wjLynGsA=
X-Gm-Gg: ASbGncs0lDnlzgZjjDybhTEM70SOiqDxFJsgDgJptDskdx7uJS5j9CxGQ6V2g+7mgxE
	oQbnL0J1bBjAPG+jWWhXqxGbyVpgNoyZE0FeZ1LNQO+iDEfaumvGeM5W2GrrxWUeSVSl0hFz92y
	7r/bGwMaWy+70RCGhW2oDyjKdBMSYa1WRzwi2feoiMTqqixiu0CaePnDRpJ/PcGTD0pWdQD5m0q
	bSqrziUgAJBi4z9vrw3GqI5wS5+csRGwlHuGlZFzaMiJDxc1GL+eTWJVvIhk2XOX5EFl6my1Usy
	ox1GEk1/AX/y5CFawph2s99gw0NUuOm4crMr7r4axmw8NAvoiMNzIkQvSmCaUVl9N3l6UPgMBLg
	RAi3dqw==
X-Google-Smtp-Source: AGHT+IEop8XqL9U0AH5g2cYKTCsldgKggxJPgUQlskofg+gw24g+Yaw/3ndrjXlnzZ//1SP31cIDpg==
X-Received: by 2002:a05:6000:402a:b0:39c:266c:400a with SMTP id ffacd0b85a97d-3a06cfc5d7amr2053936f8f.50.1745495493484;
        Thu, 24 Apr 2025 04:51:33 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a06d4a8144sm1900115f8f.19.2025.04.24.04.51.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 04:51:33 -0700 (PDT)
Message-ID: <42b56d7d-26cc-4c10-aca2-a0a5a16b09f6@linaro.org>
Date: Thu, 24 Apr 2025 12:51:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: media: Add qcom,x1e80100-camss
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-2-edcb2cfc3122@linaro.org>
 <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
 <54eeb470-cd90-4bc2-b415-6dea1ce2321d@linaro.org>
 <0ab31397-580f-4e5a-b9ad-d9bf79d29106@linaro.org>
 <36feffed-4558-4e59-97db-2f0e916dbfc7@linaro.org>
 <krofzevprczeuptn6yfj4n656qsw52s52c7cgiwotidxmi2xo6@d3q5bb5zbccc>
 <f05cba73-6d8b-4b7b-9ebe-366fcd92a079@linaro.org>
 <lwv5pk3dtyyxgtrwxss43dyecesv7pvrzvgwacwrnztkiowfkp@jqosvhrs3jk5>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <lwv5pk3dtyyxgtrwxss43dyecesv7pvrzvgwacwrnztkiowfkp@jqosvhrs3jk5>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2025 12:32, Dmitry Baryshkov wrote:
> On Thu, Apr 24, 2025 at 12:29:39PM +0100, Bryan O'Donoghue wrote:
>> On 24/04/2025 11:45, Dmitry Baryshkov wrote:
>>>> Which would then be consistent across SoCs for as long as 0p9 and 1p2 are
>>>> the power-domains used by these PHYs.
>>> This won't be consistent with other cases where we have a shared power
>>> pin. For example, for PMICs we provide supply names which match pin
>>> names rather than one-supply-per-LDO.
>>
>> Yes but taking a random example from a PMIC vdd-l2-l13-l14-supply is
>> specific to a given PMIC, so you need to name it specifically wrt its PMIC
>> pin-name whereas csiphyX-1p2 is there for every CSIPHY we have.
> 
> This is fine from my POV.
> 
>> For example on qcom2290 there's a shared power-pin for VDD_A_CAMSS_PLL_1P8
>> but then individual power-pins for VDD_A_CSI_0_1P2 and VDD_A_CSI_1_1P2.
> 
> So far so good.
> 
>>
>> If we follow the general proposal of
>>
>> vdd-csiphyX-1p2-supply
>> vdd-csiphyX-0p9-supply
>>
>> in the yaml, then whether SoCs like qcm2290 share 1p8 or SoCs like sm8650,
>> sm8450, x1e have individual 1p8 pins is up to the dtsi to decide.
> 
> So, what should be the behaviour if the DT defines different supplies
> for csiphy0 and csiphy1? Would you express that constraint in DT?
> 

You'd have that for qcm2290

yaml:

vdd-csiphy0-1p2-supply
vdd-csiphy1-1p2-supply

vdd-csiphy0-0p8-supply
vdd-csiphy1-0p8-supply

qcm2290-example0.dtsi

vdd-csiphy0-1p2-supply = <&vreg_1p2_ex0>; <- individual supply in PCB
vdd-csiphy1-1p2-supply = <&vreg_1p2_ex1>; <- individual supply in PCB

vdd-csiphy0-0p8-supply = <&vreg_0p9_ex0>; <- shared pin in the SoC
vdd-csiphy1-0p8-supply = <&vreg_0p9_ex0>; <- shared pin in the SoC


qcm2290-example1.dtsi

vdd-csiphy0-1p2-supply = <&vreg_1p2_ex0>; <- shared supply in this PCB
vdd-csiphy1-1p2-supply = <&vreg_1p2_ex0>; <- shared supply in this PCB

vdd-csiphy0-0p8-supply = <&vreg_0p9_ex0>; <- shared pin in the SoC
vdd-csiphy1-0p8-supply = <&vreg_0p9_ex0>; <- shared pin in the SoC

Then sm8650:
yaml:

vdd-csiphy0-1p2-supply
vdd-csiphy1-1p2-supply

vdd-csiphy0-0p8-supply
vdd-csiphy1-0p8-supply


sm8650-example0.dtsi

vdd-csiphy0-1p2-supply = <&vreg_1p2_ex0>; <- individual pin & pcb supply
vdd-csiphy1-1p2-supply = <&vreg_1p2_ex1>; <- individual pin & pcb supply

vdd-csiphy0-0p8-supply = <&vreg_0p9_ex0>; <- individual pin & pcb supply
vdd-csiphy1-0p8-supply = <&vreg_0p9_ex1>; <- individual pin & pcb supply


sm8650-example1.dtsi

vdd-csiphy0-1p2-supply = <&vreg_1p2_ex0>; <- shared supply in this PCB
vdd-csiphy1-1p2-supply = <&vreg_1p2_ex0>; <- shared supply in this PCB

vdd-csiphy0-0p8-supply = <&vreg_0p9_ex0>; <- shared supply in this PCB
vdd-csiphy1-0p8-supply = <&vreg_0p9_ex0>; <- shared supply in this PCB

That way we have a consistent naming across SoCs and PCBs and its up to 
the DT to get the pointer to the regulator right.

---
bod

