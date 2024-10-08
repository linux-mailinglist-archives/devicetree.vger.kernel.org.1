Return-Path: <devicetree+bounces-109049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3B0995051
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 15:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30945B2571F
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 13:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557281DF743;
	Tue,  8 Oct 2024 13:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v2PDlCkB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880B41DF732
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 13:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728394730; cv=none; b=bCic9IcibyKzy1t9JLDl2mglSeH9HOAAc/c2cJ3snK0y7LZvQeOqlyxgsbOlKUIdu5hJZNuN9E2p8N0VfjBzjALI0oyPT8kdZ6zzyyZ6zRQXscTl9VivilIQKo4SDwR4xll9K0GfLnMqeIiKnLiO6nZxsgh2gU8cx5mVaEQwajE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728394730; c=relaxed/simple;
	bh=h+FjKSkkOXseefD4pbrvKcFY0aGc+YhwyzAc773RAps=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gP5gVsgogQch/yQnKmMoOdKS07TUeoA8+xFpoiQxWR4e95+G/N7dsmbkNIwBqXR8fLPIkZN2DLk3BNsQ+vKwmzXfyVhnefwokZcxqkdJZSv5l41XaH+/Mu4Z89la7kKuV9o8F8E9TLLYEjT6Mme/B24ClJqGgBD4ApJU07wRshw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v2PDlCkB; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a993f6916daso425707566b.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 06:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728394727; x=1728999527; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1siymOtXY5RHDnbOyW0As7IZtlkLe8owsnuwCtFRgx4=;
        b=v2PDlCkBw4/J5Zg0ZhbtBSvq1oR2ITjT2w8NBdVYEnEa2qrPRjAX/Ed7RRTwr4Hx6U
         euxSf5e+r9C84FiFxU4LxS8FpZRFfD247Bmwm0IpaSOA606+o5/Z9C0PlVyGxDRV8kFw
         EaLrnqKEisQNiYESnBgjiwfuejlIKx5AhQ98Y1yrfNiRBeVtPdgWu/Ei+GYggn4uYL+E
         ER1pYXWEqKnIc2cbEdhcPvzK+xLsMiFQekRRM87a2kvuagkcR6z+b9fj57elRLcgx9BS
         5ZNL5oJQSM10AWq0smKB1drNHJp9Zd+a6T2+tcw/uKiTLkoJB1mZ7/j9KDFYSEuEENQy
         7nTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728394727; x=1728999527;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1siymOtXY5RHDnbOyW0As7IZtlkLe8owsnuwCtFRgx4=;
        b=aAu/Dr5j3mAQAqWdLIUEDqzj7e6jk/Hi8+xr7J0VOnITIhQZNAYMvxs7R8VYjcWuLO
         rhD5hvNdIVU4jcSH5xskgl2GlHGY/BKFJIdqim5mSe1LCWd+zDQRacDgxxlgClu+uSMJ
         Sm1wrouSRv+Q7wzZoK9jt/j128d66rFRcmfVQ5YSxAZzkQ/2F7Q7BGpKfn0DZGFWua2q
         QoTpwtMcVXaK9USKo3x3jDtQaA7PkLxoFHp9xA0+//Am0EIOG3PzJeauymkVIogXmYye
         xTj8H8OX4LPn1bZ2MOV/00529HlDZ2bAkupzxE8Ea9nzjxGwA5a3D/Ux2TK5o3k2YPAn
         QoCA==
X-Forwarded-Encrypted: i=1; AJvYcCVt5MkQxyUO7pD1ym6J3YFKWsSMI0LBGY4ePeG4qjSPEBmbJdRbETfjpgvBjUhlGbU/IyD6s0+hhOgP@vger.kernel.org
X-Gm-Message-State: AOJu0YyfQflRxPhwbufhJopf7sxXCFdAJVhBngAAXtW641A6a/VvuV4h
	eWb3rp4lMb5ueF8qNxvA2Q58mN9V4+Z+ePukWNrbFDSgw25Qqmyyr1aMkBP0erI=
X-Google-Smtp-Source: AGHT+IH4YpDN7VAUNE5oAu5/pa6AiXE3xvfRMd3SCbzEXaCCV5t2GOBgv+8KJoyJjDYgqXkdiRMMAA==
X-Received: by 2002:a17:906:6a28:b0:a99:3893:d861 with SMTP id a640c23a62f3a-a993894079cmr1146699466b.50.1728394726799;
        Tue, 08 Oct 2024 06:38:46 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a993a3a1badsm462549066b.161.2024.10.08.06.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 06:38:46 -0700 (PDT)
Message-ID: <289430fc-a49d-471f-8287-ebf7275a625b@linaro.org>
Date: Tue, 8 Oct 2024 14:38:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix
 interrupt types
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
 <20240923072827.3772504-2-vladimir.zapolskiy@linaro.org>
 <datahu33nmsser2p4fb2hyncsujtkwaca377ivwmpc6yj2naut@2sjsbebfm3gf>
 <3f87e855-8779-4df3-8f26-e3d2b611d3e9@linaro.org>
 <313667a6-afcd-44cb-a6f6-0d550e8f68a0@linaro.org>
 <4bf490cb-228d-4f01-a956-cacbafa94e2a@linaro.org>
 <27f39cda-932c-4b79-84d4-be78d266ebdf@linaro.org>
 <8aa5135b-386a-42bf-923b-6ff999694da8@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <8aa5135b-386a-42bf-923b-6ff999694da8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/2024 13:01, Krzysztof Kozlowski wrote:
> On 08/10/2024 13:50, Bryan O'Donoghue wrote:
>> On 08/10/2024 12:37, Vladimir Zapolskiy wrote:
>>>
>>> I don't have access to datasheets or hardware of sc8280xp powered board,
>>> someone may either verify, if CAMSS level high type interrupts are
>>> supported/working at all or not (obviously its current presence in dts is
>>> insufficient), or check the SoC datasheet.
>>
>> I've tested both as was submitted and your change.
>>
>> I _always_ test my patches. I'm not sure there's a datasheet which
>> spells this out to be honest.
> 
> Datasheet, HPG, interrupt list in the IP catalog. They all might provide
> some hints, e.g. recommendation.
> 
>>
>> Rising or High can both be justified, its really down to how your
>> interrupt controller latches the state change. However I personally am
>> fine with the change you've provided because I trust it fixes an error
>> for you.
> 
> That's a GIC, right? So most of the GIC interrupts are level high.
> 
> I can easily imagine that 10 years ago one engineer made mistake and
> wrote camss downstream DTS with edge and this kept going, because
> "99.999% it works" and no one will ever hit that 0.001%. And if it is
> hit, we blame something else because debugging is very difficult.
> 
> If this entire patchset is based on downstream driver code, not
> datasheets, then it should be clearly explained in commit msg, not just
> "The expected type is...".
> 
> Why? Because "the expected type" means datasheet or some hardware
> engineer says it, not driver.
> 
> Best regards,
> Krzysztof
> 

Yes, true its entirely possible - likely even that copy/paste is the 
dejure method.

Lets have a poke around the qcom documentation and see if we can come up 
with a definitive answer rooted in the spec.

+1

---
bod

