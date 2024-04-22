Return-Path: <devicetree+bounces-61359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFD88AC64F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:08:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A44D71F21310
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 038524EB24;
	Mon, 22 Apr 2024 08:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AQyLaJgP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801B94DA11
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713773300; cv=none; b=JTNMPF2mwU2PgHVFbBtMYwu6swC5psUo9RXzAwdFmSt/+i9O80P89+S4hJNbhXk976WT6jsIoezf745BUieUnw2YlIVxTaeeeuAJTQGyl/jxzOWIocX5TQ/+NsM0vVfUJ/Xvd7fNrBIQX0HPtFFt8HT4nsx6OZfqlLgbH0g1IVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713773300; c=relaxed/simple;
	bh=Ahn2JAm7PvRk3ZbDFq42tpWOMZqsvRcRgTtmXMtFetA=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=tzA0cCc7Ol29YG27LMGER1OSCgWWB4fi8LohJMmDtKyfZFDC4qo+69k30HHJX1IjC0kPtTZpmASRFDY6hFljGAPaoSgaw/fLqJG8aOH6sTSEmCVzWsdwhVVqfsiGjCmxVOeEuyxNVgdqOtmwU5XNFPQvkC7rnPlIU3fPEeG9Ir0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AQyLaJgP; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-41a4f291f80so5312585e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 01:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713773297; x=1714378097; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=8C4BLckR86w7PgEOSZT9fU6K8kU4TqYHyw+2yRDa35Q=;
        b=AQyLaJgPZtXvB20N9OZ9fIDh8mV6zsfWQLrGpM4oxxmHn5MrYANTgc3F4NLBnC6KLz
         OrhAKns6+RjjXScSHL1F+aJVVHcimFd+OWk7ya0dQSRz5orkbWy0KYuCScz4cPrEW2Lm
         4mJbrdHqa8j+FDRrpJgaf5auyL/Og7t+yGefRgD142XfASwPdot2GbuQxs73dNJ2kFmP
         AeUdPFtVS2k9ZDGFe9YWsMOloW6BBC5OIObyOp+sOOsx/zxWOmnM7/5W4lmGWRyDij7i
         Vx6oLSrRgzDMmwovj/0Y6hNnzdwhPvmfVEeKh+4Fmz2wsppWPbSjP65iQ+2zCUd/4IZ5
         13fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713773297; x=1714378097;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8C4BLckR86w7PgEOSZT9fU6K8kU4TqYHyw+2yRDa35Q=;
        b=D0CQ1zh53oF7H4xgOMNQHQIoys2sL+xAvDixqGmuI9Tb1sLyo9ss1Z3HWudQ5jQet+
         8jx/6sMdi5sD2FGgrbpA4Vf3w6NcLkRqzqN6qb+iBIRQrYXOWrKcE5tErBOak3TMnE3i
         dTb1hePZBPUOKZhaONxRuI9KUbRHB78X3CNtU5HKsR9vxoPj0Ew+8u3jpEOHPR+k3onL
         FGZzmwDMRBNtg4U2ptkQ5wB+u/g8JjNEJXko3cb9sDEtUq3sNDlhLe+Tur/MBLTLjicg
         GbImP9Nhzu7lN0gnXJkQDLUucIyJWo4DKq89lh4Cp45kYqlXLJoqfS28Xs2LB339oN+W
         jypA==
X-Forwarded-Encrypted: i=1; AJvYcCWwXOUGmFGRI4b2FomeR6oraWdY2j24lQG4rrEM7LeKY4+09uIzGVi1qP4hRxmc0tENT9ppGVTG/ed3bhg4LRRNL8u6H5r8ndMWtw==
X-Gm-Message-State: AOJu0Yxc+/1wCQmmqikJGwUhiWn/bywgduUUB2CDjlttPKvbHLfX9Y5E
	ooWpAm18QND/dfafWxxb3xeIunDaZ80prYU7F3Gri7AyDaW/v12PTODWG2skcu/Gx8XSxn3Cs8B
	x
X-Google-Smtp-Source: AGHT+IHBRDMQwKvOZxdsZviBHLEtcpsSuo2S70D3ioZlID4dj7ckRfnd2O9nFp1K9jnxFnj/vmplIg==
X-Received: by 2002:a05:600c:a11:b0:418:f86a:5468 with SMTP id z17-20020a05600c0a1100b00418f86a5468mr8001096wmp.21.1713773296725;
        Mon, 22 Apr 2024 01:08:16 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:a619:ccb0:5f40:262c])
        by smtp.gmail.com with ESMTPSA id u18-20020a05600c19d200b0041896d2a05fsm15566259wmq.5.2024.04.22.01.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:08:16 -0700 (PDT)
References: <20240419125812.983409-1-jan.dakinevich@salutedevices.com>
 <20240419125812.983409-5-jan.dakinevich@salutedevices.com>
 <20240419210949.GA3979121-robh@kernel.org>
 <b86f1058-da53-4a9c-bc12-e7297351b482@salutedevices.com>
 <48e9f035-390b-40c9-a3ad-49880c0b972d@kernel.org>
 <1jle55c0bl.fsf@starbuckisacylon.baylibre.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Jan Dakinevich
 <jan.dakinevich@salutedevices.com>, Rob Herring <robh@kernel.org>, Neil
 Armstrong <neil.armstrong@linaro.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Krzysztof
  Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kevin
  Hilman <khilman@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Jiucheng Xu <jiucheng.xu@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH v3 4/6] dt-bindings: clock: meson: document A1 SoC
 audio clock controller driver
Date: Mon, 22 Apr 2024 09:57:30 +0200
In-reply-to: <1jle55c0bl.fsf@starbuckisacylon.baylibre.com>
Message-ID: <1jzftlakgg.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Mon 22 Apr 2024 at 09:16, Jerome Brunet <jbrunet@baylibre.com> wrote:

> On Sun 21 Apr 2024 at 20:14, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
>> On 20/04/2024 18:15, Jan Dakinevich wrote:
>>> 
>>> 
>>> On 4/20/24 00:09, Rob Herring wrote:
>>>> On Fri, Apr 19, 2024 at 03:58:10PM +0300, Jan Dakinevich wrote:
>>>>> Add device tree bindings for A1 SoC audio clock and reset controllers.
>>>>>
>>>>> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>
>>>>> ---
>>>>>
>>>>> This controller has 6 mandatory and up to 20 optional clocks. To describe
>>>>> this, I use 'additionalItems'. It produces correct processed-schema.json:
>>>>>
>>>>>   "clock-names": {
>>>>>       "maxItems": 26,
>>>>>       "items": [
>>>>>           {
>>>>>               "const": "pclk"
>>>>>           },
>>>>>           {
>>>>>               "const": "dds_in"
>>>>>           },
>>>>>           {
>>>>>               "const": "fclk_div2"
>>>>>           },
>>>>>           {
>>>>>               "const": "fclk_div3"
>>>>>           },
>>>>>           {
>>>>>               "const": "hifi_pll"
>>>>>           },
>>>>>           {
>>>>>               "const": "xtal"
>>>>>           }
>>>>>       ],
>>>>>       "additionalItems": {
>>>>>           "oneOf": [
>>>>>               {
>>>>>                   "pattern": "^slv_sclk[0-9]$"
>>>>>               },
>>>>>               {
>>>>>                   "pattern": "^slv_lrclk[0-9]$"
>>>>>               }
>>>>>           ]
>>>>>       },
>>>>>       "type": "array",
>>>>>       "minItems": 6
>>>>>   },
>>>>>
>>>>> and it behaves as expected. However, the checking is followed by
>>>>> complaints like this:
>>>>>
>>>>>   Documentation/devicetree/bindings/clock/amlogic,a1-audio-clkc.yaml: properties:clock-names:additionalItems: {'oneOf': [{'pattern': '^slv_sclk[0-9]$'}, {'pattern': '^slv_lrclk[0-9]$'}]} is not of type 'boolean'
>>>>>
>>>>> And indeed, 'additionalItems' has boolean type in meta-schema. So, how to
>>>>> do it right?
>>>>
>>>> The meta-schemas are written both to prevent nonsense that json-schema 
>>>> allows by default (e.g additionalitems (wrong case)) and constraints to 
>>>> follow the patterns we expect. I'm happy to loosen the latter case if 
>>>> there's really a need. 
>>>>
>>>> Generally, most bindings shouldn't be using 'additionalItems' at all as 
>>>> all entries should be defined, but there's a few exceptions. Here, the 
>>>> only reasoning I see is 26 entries is a lot to write out, but that 
>>>> wouldn't really justify it. 
>>> 
>>> Writing a lot of entries don't scary me too much, but the reason is that
>>> the existence of optional clock sources depends on schematics. Also, we
>>
>> Aren't you documenting SoC component, not a board? So how exactly it
>> depends on schematics? SoC is done or not done...
>>
>>> unable to declare dt-nodes for 'clocks' array in any generic way,
>>> because their declaration would depends on that what is actually
>>> connected to the SoC (dt-node could be "fixed-clock" with specific rate
>>> or something else).
>>
>> So these are clock inputs to the SoC?
>>
>
> Yes, possibly.
> Like an external crystal or a set clocks provided by an external codec
> where the codec is the clock master of the link.
>
> This is same case as the AXG that was discussed here:
> https://lore.kernel.org/linux-devicetree/20230808194811.113087-1-alexander.stein@mailbox.org/
>
> IMO, like the AXG, only the pclk is a required clock.
> All the others - master and slave clocks - are optional.
> The controller is designed to operate with grounded inputs

Looking again at the implementation of the controller, there is a clear
indication in patch 3 that the controller interface is the same as the
AXG and that the above statement is true.

The AXG had 8 master clocks wired in. The A1 just has 5 - and 3 grounded
master clocks. This is why you to had to provide a mux input table to
skip the grounded inputs. You would not have to do so if the controller was
properly declared with the 8 master clock input, as it actually is.

It also shows that it is a bad idea to name input after what is coming
in (like you do with "dds_in" or "fclk_div2") instead of what they
actually are like in the AXG (mst0, mst1, etc ...)

>
>>> 
>>> By the way, I don't know any example (neither for A1 SoC nor for other
>>> Amlogic's SoCs) where these optional clocks are used, but they are
>>> allowed by hw.
>
> Those scenario exists and have been tested. There is just no dts using
> that upstream because they are all mostly copy of the AML ref design.
>
>>> 
>>> This is my understanding of this controller. I hope, Jerome Brunet will
>>> clarify how it actually works.
>>
>
> I think the simpliest way to deal with this to just list all the clocks
> with 'minItems = 1'. It is going be hard to read with a lot of '<0>,' in
> the DTS when do need those slave clocks but at least the binding doc
> will be simple.
>
>> Best regards,
>> Krzysztof
>
> If you are going ahead with this, please name the file
> amlogic,axg-audio-clkc.yaml because this is really the first controller
> of the type and is meant to be documented in the same file.
>
> You are free to handle the conversion of the AXG at the same time if
> you'd like. It would be much appreciated if you do.


-- 
Jerome

