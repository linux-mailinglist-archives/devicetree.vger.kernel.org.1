Return-Path: <devicetree+bounces-13040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB0B7DC662
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:18:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7ADE4281328
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 06:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5082101E0;
	Tue, 31 Oct 2023 06:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MupwV0QQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9000DDF65
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 06:18:44 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 091A7F7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 23:10:40 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-53de0d1dc46so8922175a12.3
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 23:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698732638; x=1699337438; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ti+gd1S2oN/iUTNC/6buX1WfsVyGVF4t1qDxc027Lfs=;
        b=MupwV0QQNXKegdaTKHJQeu0/UcYc0GWoZZj9TrvqzGvkYtQ6I9NST5BIQqVCZd0B6K
         6O+Ppp4E+qbV0P0iXahoECDB4KmjNXKQu+VY8cd4dBW43C+G5skI2JsGHpG8AShInvTg
         dYAS2vbW4xzyYCS419TZzhi14a8myWcsxyE0gA1QVHezj8oowJ5JUWYvDTL/xMfMcuhT
         4jY2cjzcfAbw/plwxEk8gDDkXavnPopmvIgPR8f1eHCCRkI0jg8H6TeCwPaPdNIGYQFI
         DvYBYkf01EcKGRoHjsEFaIk5xP8oszljUMQ6kvYnunP4v5tvkZNWYF62wCRbJU+HpEH0
         DbqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698732638; x=1699337438;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ti+gd1S2oN/iUTNC/6buX1WfsVyGVF4t1qDxc027Lfs=;
        b=PnTSb+QzjuL6KJJ5LJISv2l335PYW9D7X6gBFgoDoB5+1lXBXlH/w4xWRzTifubCcy
         Od69VuF1SkzoO8IaV7AZ0smv6IB++6yZCvCdFImfe3KUUavjjQ/siZeaI5CuIhNzCGpH
         yBwLurVXASVnjXahhsQZHdALP8XWMBnV4s0sBO/wDBP24bLI7Rju7FO4PyZmYZXPE0rh
         pqE0M5aJutmalv/dlaEIhMxDn/97gdVUr2H1MsgKkBZhs9Tq/U7kXLLU3jd2Y1CZiU4E
         MkFF7voqdE4ZaG4VwtI1CVakmHTus5QSujEMIWxHe1JQBIPU+iVj1IX4MnyqF3z1GtSc
         +qEA==
X-Gm-Message-State: AOJu0YwVSEpehMUtfJY31CpfryPF2bBfkaJnAXHdM0fcKM+sPHo9vssH
	PWO0lkq08Bk3KzJoJjIzwXvgMQv9EF+/7nPCTck=
X-Google-Smtp-Source: AGHT+IGfPZ8p4VcGZA07o/r00CiXXAQ87F+ZZS2kbmHd57X0oeSiKhqhNLEOaYWf1vvFWwEOLuwp4w==
X-Received: by 2002:a50:9e87:0:b0:53d:a1c0:410f with SMTP id a7-20020a509e87000000b0053da1c0410fmr8364052edf.2.1698732076574;
        Mon, 30 Oct 2023 23:01:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id d29-20020a50f69d000000b00522828d438csm531565edn.7.2023.10.30.23.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 23:01:16 -0700 (PDT)
Message-ID: <22c74d90-19f8-4a68-ad01-1b7ed833cf91@linaro.org>
Date: Tue, 31 Oct 2023 07:01:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] i2c: mv64xxx: add an optional bus-reset-gpios
 property
Content-Language: en-US
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "andi.shyti@kernel.org" <andi.shyti@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, Abel Vesa
 <abel.vesa@linaro.org>, Mark Brown <broonie@kernel.org>
Cc: "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20231027033104.1348921-1-chris.packham@alliedtelesis.co.nz>
 <20231027033104.1348921-3-chris.packham@alliedtelesis.co.nz>
 <65911ec0-e073-435f-846a-c5501dd5d3a9@linaro.org>
 <9eebec9b-e6fd-4a22-89ea-b434f446e061@linaro.org>
 <b91223a3-d835-47c0-976b-3ebdfe84d1f8@alliedtelesis.co.nz>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <b91223a3-d835-47c0-976b-3ebdfe84d1f8@alliedtelesis.co.nz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/10/2023 21:48, Chris Packham wrote:
> 
> On 28/10/23 00:37, Krzysztof Kozlowski wrote:
>> On 27/10/2023 13:27, Krzysztof Kozlowski wrote:
>>> On 27/10/2023 05:31, Chris Packham wrote:
>>>> Some hardware designs have a GPIO used to control the reset of all the
>>>> devices on and I2C bus. It's not possible for every child node to
>>>> declare a reset-gpios property as only the first device probed would be
>>>> able to successfully request it (the others will get -EBUSY). Represent
>> Cc: Mark,
>>
>> Also this part is not true. If the bus is non-discoverable, then it is
>> possible to have reset-gpios in each probed device. You can share GPIOs,
>> so no problem with -EBUSY at all.
> 
> Last time I checked you couldn't share GPIOs. If that's no longer the 
> case then I can probably make what I need to happen work. It still 
> creates an issue that I have multiple PCA954x muxes connected to a 
> common reset GPIO so as each mux is probed the PCA954x driver will 
> toggle the reset. That's probably OK as the PCA954x is sufficiently 
> stateless that the extra resets won't do any harm but if it were a more 
> complicated device then there would be issues.

I know, but this is a broader problem, not really specific to this one
device. I also argue that your I2C controller does not actually have
this reset line.

> 
> Having some kind of ref-counted reset controller that is implemented 
> with GPIOs is probably the better solution. I was kind of surprised that 
> nothing existed like that in drivers/reset.

reset controller framework already supports this. The point is that GPIO
reset is not a reset controller, so in terms of bindings "resets"
property does not fit it.

> 
>> The problem is doing reset:
>> 1. in proper moment for all devices
>> 2. without affecting other devices when one unbinds/remove()
>>
>> The (2) above is not solveable easy in kernel and we already had nice
>> talks about it just few days ago:
>> 1. Apple case:
>> https://scanmail.trustwave.com/?c=20988&d=6qC75SLs-9PNM1ZHpLa6reGv82R6opEUmyI62vCytQ&u=https%3a%2f%2fsocial%2etreehouse%2esystems%2f%40marcan%2f111268780311634160
>>
>> 2. my WSA884x:
>> https://scanmail.trustwave.com/?c=20988&d=6qC75SLs-9PNM1ZHpLa6reGv82R6opEUmyJk3q3j7g&u=https%3a%2f%2flore%2ekernel%2eorg%2falsa-devel%2f84f9f1c4-0627-4986-8160-b4ab99469b81%40linaro%2eorg%2f
> Apologies for the mangled links (they're more secure now at least that's 
> what our IS team have been sold).
>> Last,
>> I would like to apologize to you Chris. I understand that bringing such
>> feedback at v5 is not that good. I had plenty of time to say something
>> earlier, so this is not really professional from my side. I am sorry,
>> just my brain did not connect all these topics together.
>>
>> I apologize.
> 
> Actually I kind of expected this feedback. I figured I could start with 
> the driver that is currently causing me issues and once the dt-binding 
> was considered good enough it might migrate to the i2c core.
> 
>>


Best regards,
Krzysztof


