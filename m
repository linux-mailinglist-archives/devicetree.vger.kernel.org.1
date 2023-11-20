Return-Path: <devicetree+bounces-17039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 769DF7F0F41
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 10:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16409B20FD1
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 09:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 502F61171D;
	Mon, 20 Nov 2023 09:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pHw/W39x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39A6EBA
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 01:41:43 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4083f613272so16903455e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 01:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700473301; x=1701078101; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=u4ulDi1zHXqoku3tvf/oqVF4mugJudCNC02l68RjBP8=;
        b=pHw/W39xVd3hrgEd1kBehowhl1F+WiDU3c4PJNJ8WRC16rtj+A8huty+ddBLJnT1Yd
         mtZyJp+5SeKceUt6Kfs2lLeLid9C2EyGw8N3s9blbd6Y+glp1Y8wpJq9yWqLdqwknqx+
         zhSJgDV3gWd3kkEP/egCY/ho2VVZVSCMMBxIr8rwuFEb5LaCFqFgCln5UEAzdliRyjOI
         pcZWNmSHKXT3J48/t+gCyYhT0403Hn7rAa5Kwo4/pbiPV+0JgBBdSTFxujNSDLbsc0F0
         D5nz0htDu4RJE5+iyBLIj3lSHFWkjmdqnxaQG4lYhat+jDfhudCR2FVgrjz7AUBpk1sz
         kSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700473301; x=1701078101;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u4ulDi1zHXqoku3tvf/oqVF4mugJudCNC02l68RjBP8=;
        b=iufXQpBMpesC5Ar70oQVEqqJp2OuGwv6JGSlTjtZ+HXY6y5Ju+ZqqfY7k+Zp361EEf
         zQQDHFT9BsgNhZBWzIKJDUyeh7hq5w5jdCpb4A0HVh1q6gafXzcnTTnRusXnjhTsW4+d
         BW1neD3hY2tSiopmi9qc5X3sbr/SmDH68qY6UV36DXGZ2pyZaK2MjAI8fGNf2x/mjQE/
         jB2XTy1mKTmXhIxBPldmGrjPo8d9f0veWWKJTnVZeMbRSSobHRzq3pDuhleix3dthf+8
         d8yZQk4FZpR06gy3nFH6CeSdT38W4Sm+YtVqr0sTShWvzZ7r0zYOsM+/ASktmqcneUnD
         4UTg==
X-Gm-Message-State: AOJu0Yz5rN8JnrIGDhc2QM91QbQmYGXdsbPRzfXpy+RNmq2LJ050XMJN
	1ZEJ5WVL/aZeip2q47yzTUcPJQ==
X-Google-Smtp-Source: AGHT+IFWBpYs1rdj5ektHnIdcJ0DTx5BglePzoH5Vl8iaEVmWHT4d5KBd0tVA9bREgg+XhAIPJFg/A==
X-Received: by 2002:a05:600c:a07:b0:405:3955:5872 with SMTP id z7-20020a05600c0a0700b0040539555872mr6074687wmp.18.1700473301399;
        Mon, 20 Nov 2023 01:41:41 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:36e8:9c14:4901:7aca])
        by smtp.gmail.com with ESMTPSA id m28-20020a05600c3b1c00b00401e32b25adsm12979612wms.4.2023.11.20.01.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 01:41:40 -0800 (PST)
References: <20231117125919.1696980-1-jbrunet@baylibre.com>
 <20231117125919.1696980-3-jbrunet@baylibre.com>
 <170040994064.269288.960284011884896046.robh@kernel.org>
 <4608012c-059f-4d6a-914b-e85ad0c32ff0@linaro.org>
User-agent: mu4e 1.10.7; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: neil.armstrong@linaro.org
Cc: Rob Herring <robh@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>,
 JunYi Zhao <junyi.zhao@amlogic.com>, devicetree@vger.kernel.org, Rob
 Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kevin
 Hilman <khilman@baylibre.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v2 2/6] dt-bindings: pwm: amlogic: add new compatible
 for meson8 pwm type
Date: Mon, 20 Nov 2023 10:18:49 +0100
In-reply-to: <4608012c-059f-4d6a-914b-e85ad0c32ff0@linaro.org>
Message-ID: <1j5y1wg3sb.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Mon 20 Nov 2023 at 09:27, Neil Armstrong <neil.armstrong@linaro.org> wrote:

> Hi Rob,
>
> On 19/11/2023 17:05, Rob Herring wrote:
>> On Fri, 17 Nov 2023 13:59:12 +0100, Jerome Brunet wrote:
>>> Add a new compatible for the pwm found in the meson8 to sm1 Amlogic SoCs.
>>>
>>> The previous clock bindings for these SoCs described the driver and not the
>>> HW itself. The clock provided was used to set the parent of the input clock
>>> mux among the possible parents hard-coded in the driver.
>>>
>>> The new bindings allows to describe the actual clock inputs of the PWM in
>>> DT, like most bindings do, instead of relying of hard-coded data.
>>>
>>> The new bindings make the old one deprecated.
>>>
>>> There is enough experience on this HW to know that the PWM is exactly the
>>> same all the supported SoCs. There is no need for a per-SoC compatible.
>>>
>>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>>> ---
>>>   .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 36 +++++++++++++++++--
>>>   1 file changed, 34 insertions(+), 2 deletions(-)
>>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> 
>
> I'm puzzled, isn't it recommended to have a per-soc compatible now ?

I have specifically addressed this matter in the description,
haven't I ? What good would it do in this case ?

Plus the definition of a SoC is very vague. One could argue that
the content of the list bellow are vaguely defined families. Should we
add meson8b, gxl, gxm, sm1 ? ... or even the actual SoC reference ?
This list gets huge for no reason.

We know all existing PWM of this type are the same. We have been using
them for years. It is not a new support we know nothing about.

>
> I thought something like:
> - items:
>     - enum:
>         - amlogic,gxbb-pwm
>         - amlogic,axg-pwm
>         - amlogic,g12a-pwm
>     - const: amlogic,pwm-v1

I'm not sure I understand what you are suggesting here.
Adding a "amlogic,pwm-v1" for the obsolete compatible ? No amlogic DT
has that and I'm working to remove this type, so I don't get the point.

>
> should be preferred instead of a single amlogic,meson8-pwm-v2 ?

This is named after the first SoC supporting the type.

Naming it amlogic,pwm-v2 would feel weird with the s4 coming after.
Plus the doc specifically advise against this type of names.

>
> Neil


