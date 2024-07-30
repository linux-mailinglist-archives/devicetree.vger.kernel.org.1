Return-Path: <devicetree+bounces-89361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 922FD940E26
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 11:44:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B53B81C24595
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 09:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD59B195398;
	Tue, 30 Jul 2024 09:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="MnApktfd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08298194C9A
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 09:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722332659; cv=none; b=LQbf4bT0B2ICZtpORISSRwy1NugRQnwknwjcXTVEg9cNZFf+a+wjvYm7zalDcgG6006EOD9XmPFMH+slN4c5k8Hl+K5my20NSQHMgPYp9aTFPj/yOMk25n5dByqa+VSgkPICMvbGf6TxFatneQnK9qNXmTazFtvU+TdJejXm5y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722332659; c=relaxed/simple;
	bh=ESqJoCxU4CRU2p6P+jC4s15izFuCh9+Q2OCDqriORxA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fxyjkwvxE00q6K903rQg84osm7VU+qAeHkCvXmyEL218U1XuKq+1Fj4fL5YUZSvz44Soir8k6KgqrF/OGbck0d2YFkkUZYahhMO7IFEUJSkPNbS2pawArOGUySchMJmnnVjNHaPHVS/a5Qj1nNAVVv4sGNorz128gIktb78qc88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=MnApktfd; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2eeb1ba040aso75210741fa.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 02:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1722332655; x=1722937455; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5X+3I4mAhhgELVJxXkRcesSsn8t1Uglvy6fHEbHplYo=;
        b=MnApktfd02MWlFKhtAewciT+hpAPye7RlMr7uhalosDfY6PWqnGsTXtuKltL+saA4D
         otwu2fNQ+iCuJaYOjSms2INbwlewVm9i5nyG+OHAKyncbGmw7on4bw/VJl55hGzwC/kP
         OqtfJAO8iyyUtQ22TJrgCxEFJHZuzv9HtsOvurQkOiYqStFUh5IpyoqdoQXWX2/+RoK2
         FkGRaJ/4miirakXCSwhZK5FnsjN1He+ammKJlYOk/4fqf40OSlDKGMGiSP5k1IZIdyOW
         d6lyi+Dh1tQP0dkMxvkZ0nOJzijScnOX6lz3YDQ9yN9aTAenEoWBHsJPI1LTshGb3s/M
         tNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722332655; x=1722937455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5X+3I4mAhhgELVJxXkRcesSsn8t1Uglvy6fHEbHplYo=;
        b=A5duX2uKRidriNuhm/si7e7YY5jGKPpxHoCxlnK4o3QPY8nv62jgOp6DrrSLAthrNK
         GXiqjp2G0+3PAC+bkZENa92PnmGf78h92g36NdxWs5Xp31wgyBDUdIcyVkKyZ2N45Gmc
         0lTSGS0rWBZN4aqabtLpEyS1tGEJ6rrbpwa9ihboJYuNYpSb8BJqS9CBUk17UqmuQOM9
         eR9btPgnGkG4t5qylo8Urxl+gLhqeH4quQy+TNj0XC6tTrgPe22B1eHVk85xtva7IBRB
         ZbWVPgnggqVXW/dnz8TNIGcLv0pN7nkPCJ9PRtKE+nd44wy/Qd4v+tdl77eXIi9uQ/vw
         AWtg==
X-Forwarded-Encrypted: i=1; AJvYcCUzj8jUG+R4AWH+WniCnhOW//e/vghtqxI1HPCT3Rnp3TEUTQs5qL6ALgVDOPODUtmeCsLh9W93YqTjXvorxau5g2h8PHyQMYJTEw==
X-Gm-Message-State: AOJu0Yyew706fXkYysBZ9jePpVJCisIG8mzmq2TNrUw4d9C3NB+lr/54
	fRqbAIczwQnVpqSDP93O+FGQkhTmUoDJ8cB0+y+k3DE+Wa9zwvSJ80WSppZAY0c=
X-Google-Smtp-Source: AGHT+IFGitPFeg1TtD5PxVR6e9euX4p9+GtT4nUgoRZzzijx1d+UmVOFUGYjkijvYVa4yae+Rk4Ibg==
X-Received: by 2002:a2e:88c1:0:b0:2ec:2d75:509c with SMTP id 38308e7fff4ca-2f12ee69f13mr63361281fa.46.1722332654704;
        Tue, 30 Jul 2024 02:44:14 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42805730bd0sm211904295e9.10.2024.07.30.02.44.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 02:44:14 -0700 (PDT)
Message-ID: <996d24d0-0541-4784-945d-fbadbb66e128@freebox.fr>
Date: Tue, 30 Jul 2024 11:44:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
To: Maxime Ripard <mripard@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
 <e55d0f0e-a104-4790-b832-120dbddd93ad@freebox.fr>
 <20240715-stirring-purple-toad-7de58c@houat>
 <c302bc47-6492-44af-86a1-3ff6a815e314@freebox.fr>
 <20240730-eminent-venomous-condor-8ef421@houat>
 <CAA8EJprQJJ2AuB99RFU+d074PV+NHMPwjFWn_auju7HYQQ8R7w@mail.gmail.com>
 <20240730-miniature-wonderful-okapi-01aa0f@houat>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240730-miniature-wonderful-okapi-01aa0f@houat>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/07/2024 11:30, Maxime Ripard wrote:
> On Tue, Jul 30, 2024 at 11:46:24AM GMT, Dmitry Baryshkov wrote:
>> On Tue, 30 Jul 2024 at 11:27, Maxime Ripard <mripard@kernel.org> wrote:
>>> On Wed, Jul 24, 2024 at 07:59:21PM GMT, Marc Gonzalez wrote:
>>>> On 15/07/2024 16:40, Maxime Ripard wrote:
>>>>> On Thu, Jul 04, 2024 at 07:04:41PM GMT, Marc Gonzalez wrote:
>>>>>> On 01/07/2024 15:50, Maxime Ripard wrote:
>>>>>>
>>>>>>> The i2c register access (and the whole behaviour of the device) is
>>>>>>> constrained on the I2C_EN pin status, and you can't read it from the
>>>>>>> device, so it's also something we need to have in the DT.
>>>>>>
>>>>>> I think the purpose of the I2C_EN pin might have been misunderstood.
>>>>>>
>>>>>> I2C_EN is not meant to be toggled, ever, by anyone from this planet.
>>>>>
>>>>> Toggled, probably not. Connected to a GPIO and the kernel has to assert
>>>>> a level at boot, I've seen worse hardware design already.
>>>>>
>>>>>> I2C_EN is a layout-time setting, decided by a board manufacturer:
>>>>>>
>>>>>> - If the TDP158 is fully configured once-and-for-all at layout-time,
>>>>>> then no I2C bus is required, and I2C_EN is pulled down forever.
>>>>>>
>>>>>> - If the board manufacturer wants to keep open the possibility
>>>>>> to adjust some parameters at run-time, then they must connect
>>>>>> the device to an I2C bus, and I2C_EN is pulled up forever.
>>>>>
>>>>> How do you express both cases in your current binding?
>>>>
>>>> It's not that I'm ignoring your question.
>>>>
>>>> It's that I don't understand what you're asking.
>>>
>>> And that's fine, you just need to say so.
>>>
>>> Generally speaking, you're focusing on the driver. The driver is not the
>>> issue here. You can do whatever you want in the driver for all I care,
>>> we can change that later on as we wish.
>>>
>>> The binding however cannot change, so it *has* to ideally cover all
>>> possible situations the hardware can be used in, or at a minimum leave
>>> the door open to support those without a compatibility breakage.
>>>
>>> That's why I've been asking those questions, because so far the only
>>> thing you've claimed is that "I can't test the driver for anything
>>> else", but, again, whether there's a driver or not, or if it's
>>> functional, is completely missing the point.
>>>
>>>> SITUATION 1
>>>> tdp158 is pin strapped.
>>>> Device node is child of root node.
>>>> Properties in proposed binding are valid (regulators and power-on pin)
>>>> Can be supported via module_platform_driver.
>>>>
>>>> SITUATION 2
>>>> tdp158 is sitting on I2C bus.
>>>> Device node is child of i2c bus node.
>>>> (robh said missing reg prop would be flagged by the compiler)
>>>> Properties in proposed binding are valid (regulators and power-on pin)
>>>> Supported via module_i2c_driver.
>>>>
>>>> If some settings-specific properties are added later, like skew,
>>>> they would only be valid for the I2C programmable mode, obviously.
>>>
>>> I think there's a couple more combinations:
>>>
>>>   - The device is connected on an I2C bus, but I2C_EN is tied low
>>
>> No, this is not possible. I2C pins are repurposed if I2C_EN is low.
>> You can not call that an i2c bus anymore.
>>
>>>   - The device is connected on an I2C bus, but I2C_EN is connected to a
>>>     GPIO and the kernel needs to assert its state at boot.
>>
>> This is a pretty strange configuration.  The I2C_EN pin isn't supposed
>> to be toggled dynamically. Anyway, if that happens, I'd use pinctrl /
>> hog to control the pin.
> 
> ACK. I still believe it would be valuable, but I don't really want to be
> part of that conversation anymore. Marc, do whatever you want.

OK.

I'll send the v4 sitting in my queue.

Regards


