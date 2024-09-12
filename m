Return-Path: <devicetree+bounces-102346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9B2976959
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 14:44:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C37BB1C235BF
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 12:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD93F1A4E77;
	Thu, 12 Sep 2024 12:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aLjFVlzq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE751A3AAA
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 12:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726145056; cv=none; b=Jy6E0wIwyxJFR+5jPWhKsDgPfV9Qa85lrWWfAb4dvKy3RVRIF8Uq13BQBQMnHexO+azY5QPo1knWwn0KhHeeO2GS9LcsjGlqONstE3toHFAuUAkCbHQdC5hogRlhpANu8dWyEfKtL9407FB0NXFSDAvxtKjBftKz0XZyCUoxZf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726145056; c=relaxed/simple;
	bh=0urSazZdA3Q//+hFIfRp0TDi61MzX9DROm8rbQ4pKxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gZ7k6nc/jdTFBxM6Q1nUDR5SR+plbbXlS2X+Vun44J2Fo5GFR3i1Fu3CtbyINo6tOWblUv2FqFrViGy9OcA4JqplVMPc5haj2zqL4eTZ8jW+u73htqzt3GbIQQFMSn9UM0LFL9NfFSYeCAlC8PZ7EE9Bx8fQOq87pNEUhqYLKYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aLjFVlzq; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2f75ec1ddebso404311fa.0
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 05:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726145053; x=1726749853; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yMaEX9I1RQP11LCLQlJt88Oo9tTkzQ2nXArFlvuYAlk=;
        b=aLjFVlzq80G5RBCxwLW8/Ae8vLJOM6/Aja+kr5SbATUI8/llKfH+0eo4c0as3CQie0
         whXSoXmIaSV7bhQWL6UxhymQZcHGXdhcGcq5P52SikXRT2tlAEtoxHAQY5ZmPIjCAqP1
         At8HS5ovffbvraafIW6xhZKEDrsYurmUJyP8CrvjYO6kDM9/519ulp40niocedjI4dfl
         aovjnlsXszh165U5g4soLNSXs0G8GjXiuL7zU0jOobFEmi6/qzEWDvACKqrL2FqxStdw
         YoTmDOPzrystC1feTkwic5kcdWKk+16ogv9QwZDJsxlVzav8RUyFfCw5BwVIGsYlVTCU
         42Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726145053; x=1726749853;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yMaEX9I1RQP11LCLQlJt88Oo9tTkzQ2nXArFlvuYAlk=;
        b=X7KC1jicOWf//YyflT778qPKOgNrldaaJlWkGSI+adEWSxI/s6VfmiV7UAbRojE1kk
         kfnnCrQpgpyCKJ51pDMedTJ2Z3mCEP4Et4RoXK2E1HXiNMZam/umi6pYUQRniHyTBjug
         vwTiOhSn4Fx7pbtsqLKNBwoGbHYZQKjqkHxydhde6s9dg5dnS9/LuS1vL7Yd5jWb0dMy
         sQc4Vx23h0p2UKUOCm4jN5OqcnxGt84Pczpe89/xEudnxxMYvi0EUTp84mlkCq7lTBkA
         +zTpLzMYJ+XkcliVsK1o2cmkZl7iFPyr27qEbH0XFCTHVcZJlLtNfgAvJZxYRGz4E+tl
         pTCg==
X-Forwarded-Encrypted: i=1; AJvYcCVgW8AMskQImFiwM26nVE3buWHDFenjR/bqdh7sZcbaTy/+by9+On6SvznX/+zqnKKxWNQPkV+6H9Rj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyu7Hfo4gplEZ0oSGFeqOU7STfu6/RHdG4IeSpJy4RGqgV96j2
	z5SM+qxVxNcxRDc8ApRLkr2Ge6UMazEKEElHQZwOp8vnd6kEDMuz/+gW1grkh6A=
X-Google-Smtp-Source: AGHT+IEsQyCCvQn8ayp0ihr0+sIEfLHDRxRsCTv6scTqDFj5NaZm60IwE+Ob1juIBiajON1Byw0mdw==
X-Received: by 2002:a2e:a983:0:b0:2f7:66ce:a319 with SMTP id 38308e7fff4ca-2f787f4a5d2mr4217221fa.9.1726145052973;
        Thu, 12 Sep 2024 05:44:12 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f8cb73esm1904592e87.174.2024.09.12.05.44.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2024 05:44:12 -0700 (PDT)
Message-ID: <da60cf71-13a4-465d-a0ee-ca2ad3775262@linaro.org>
Date: Thu, 12 Sep 2024 15:44:11 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/13] dt-bindings: media: camss: Add qcom,sm8550-camss
 binding
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-8-quic_depengs@quicinc.com>
 <b1b4a866-fa64-4844-a49b-dfdcfca536df@linaro.org>
 <82dd61ab-83c0-4f9c-a2ee-e00473f4ff23@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <82dd61ab-83c0-4f9c-a2ee-e00473f4ff23@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bryan.

On 9/12/24 14:41, Bryan O'Donoghue wrote:
> On 12/09/2024 09:22, Vladimir Zapolskiy wrote:
>>> +
>>> +  vdda-phy-supply:
>>> +    description:
>>> +      Phandle to a regulator supply to PHY core block.
>>> +
>>> +  vdda-pll-supply:
>>> +    description:
>>> +      Phandle to 1.2V regulator supply to PHY refclk pll block.
>>> +
>>
>> Here the supplies should be split into ones, which are specific to CSI
>> blocks,
>> and I believe they shall be set as optional.
> 
> In principle I agree with that, each CSIPHY should have its own vdda-phy
> and vdda-pll regulator specified.
> 
> In practice though I don't believe its necessary, below.
> 
>> The proposed names are:
>>
>> vdda-phy-01-supply
>> vdda-pll-01-supply
>> vdda-phy-23-supply
>> vdda-pll-23-supply
>> vdda-phy-46-supply
>> vdda-pll-46-supply
>> vdda-phy-57-supply
>> vdda-pll-57-supply
> 
> In principle, you're right, we need to expand the name set here.
> 
>> I understand that what I ask is much more clumsy, and it could be seen
>> even as
>> unneeded, however it'll be the right set of properties to describe the
>> CAMSS IP
>> in this respect
> I think the following naming would be better as it matches the
> power-grid naming in the docs.
> 
> csiphyX-vdda-phy-supply
> csiphyX-vdda-pll-supply

I have no opinion about the names, any reason for name selection is
good for me.

> =>
> 
> // voltage domain = vdd_a_csi_01_09 = regulator l1e
> csiphy0-vdda-phy-supply = <&vreg_l1e_0p9>;
> 
> // voltage domain = vdd_a_csi_01_1p2 = regulator l3e
> csiphy0-vdda-pll-supply = <&vreg_l3e_1p2>;
> 
> //
> csiphy1-vdda-phy-supply = <&vreg_l1e_0p9>;
> csiphy1-vdda-pll-supply = <&vreg_l3e_1p2>;
> 
> Where X indicates the CSIPHY number.
> 
> So in fact, in practice we don't need to differentiate these entries.
> 
> Checking x1e80100 ...

Checking some particular board, right?

> csiphy0
> 
> vdda-phy-supply = <&vreg_l2c_0p9>;
> vdda-pll-supply = <&vreg_l1c_1p2>;
> 
> This is also the case for csiphy 1/2/4
> 
> So, I _don't_ believe this is work we need to do, since its the same
> regulator for each PHY.

This is board specific, and even if the separation is not needed on the boards
you have just checked, still it may be needed on some boards, which are not yet
checked/not yet known.

It's needed to make the best predictions about all possible usage of hardware,
fortunately it's easy in this particular case, and it's trivial to correct it now
than on some day later on.

--
Best wishes,
Vladimir

