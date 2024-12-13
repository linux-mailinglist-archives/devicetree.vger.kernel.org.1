Return-Path: <devicetree+bounces-130729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E92D39F0BB5
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:55:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1D47164C97
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A271C1DF72E;
	Fri, 13 Dec 2024 11:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="trhYqVBU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1EB1DF27B
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734090904; cv=none; b=LAXi1xDUCpfTu+Rv/ZZJh19c0/slGgTJwY9J4HBNrZzPkfv/bM3cBl0gL6AKU7YdcQX1QjkJmGNdGQ1D1O0Y8GYFImqS8KOfTE6emDHTLgN4oGp7TalaKHRWyHtKs5u+fUuChWlMo2NJ6PGgO8XiK58YuBwipXPi1MmL/0QRieI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734090904; c=relaxed/simple;
	bh=cm5icUi+sGrOEhIGQ1zzIb3GehhAkBun86ehhroxOkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dBJ8VNJfhvE23lFu0MyEOm8pcqNKzLAa5Zfqwgpp6hI9moDhN0fjdSE/qKwW4h/gEwj+NLLKryq0VgTTdHMH/esVZ7PYBJdxn9WAUz9yX8UTsZUcwFDrpHIV7jYKnppzWNj2xhHowYUq60+Yd3FppS7dl0nYxS9+j3AsUvEWo0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=trhYqVBU; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30224cee64dso737551fa.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734090901; x=1734695701; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2F3dU7OsF77ENdouZE5VjBEoGAwdDiEqe/G1nbxNLpk=;
        b=trhYqVBUkmMfN2kG1osEhNbww1Gu7a3EV34B339p4IRX8ZlczOWUX0peFPbWNbX1ia
         zLR32uEdDx099B852sbHC1XztZFJF3shiqZSXKexo5xEGmCDfbF0EuWTg5kibrpPrmw1
         /EuVvxB2JmIhtBqY5fB4u0x6JdiK8o0umlnHGztn0qZMB1bLCaQ5BaaTw6xKoFXi/+p1
         +2VR+Xy0m0IgVsWFNxdytgiLi44Bhuod1BY9V+PZ10WLEYPlWOjB1E5DKqbvf5YAVvdY
         8+sw572STWXXcIACzgyO/uWPrrHLnU4B2M+W78Y8t0cngh7DWoxFnFDpHHfHJK8G/fC6
         azOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734090901; x=1734695701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2F3dU7OsF77ENdouZE5VjBEoGAwdDiEqe/G1nbxNLpk=;
        b=d61MtrwhQyUzSUKsUFnp4/eHAu8fjvSfPjQB7lz8tMBTuVD6wx6VkQxWP6CCk/GsGm
         AUWky/NEC9WJxgFXkrhVXcV+oR7XGhJ8Y7luZJJUKeIR4zJOduZyeBRscq8YYRiR9+gH
         z5ufxR4CiZmEO4ul1sSw1sPE5zdBy/yEbIpV2KU4dcsqAfIMPiYTLcV72fQL4CRQctcd
         uJsLfgQ5OsQZ2jEQWDNMmD07A3ao8+mYWX9/f/3zf0NpgG8ieng5daemMhYS0oafqhSk
         NCfgkcH/rSskxDhEMQ7O6L6LnHkO/1ZKDE242osf1fw2kTg9o2Ga5YkYWDoQ7mpl7R8D
         P2jQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkL7TUxFOD1v5z9grgqqMMh3TLBzC7g/f8iOwIxhDYKFSodYgatZTkKRteYziTPR9P+PJJ2lpY6sGv@vger.kernel.org
X-Gm-Message-State: AOJu0YzkYl9dcQGXe+01HHR69xN1aFdWCnsfb29KnE/we1AfNLZQONz1
	g3JgikLo2aG7fypPiUwOu94SR+v7OXbrgzL220HS3e2OSo6cokz3WFKeBkUflBU=
X-Gm-Gg: ASbGncs/NW+d0X/0fTkBbdzL3RHVzDCJTHO44dAr7YwqU9b1JAx+dXi5o3JG+kJtkV/
	zdtYWusUjqG5xh+o1sV8XO9njXmonNQaKQXEFupoF06Ayqwk574XRMPhEY0DzGAULojP+HdtA/t
	muMLxPVLuJoeiD/Tit9F/bOkHXk6p7ZGrDhmelU0ea2Bg+N6iMuWJeU2CRxu8r+ZkCw6EkEW5lr
	lKcCAO0jvCCIenf57a5w53osylEmgRCLmEbsnz7vgbGYtl1ldPmR/A40FZFbl8adcrujHY++R+Y
	n+j6Yt2naGbTZkCDgQJwDF3NzK7V/09S8wU=
X-Google-Smtp-Source: AGHT+IEw9CbAiCn1zybvAh6eWtC/7CZTeXbl9zppPNXp3e2y976kH/LkaKh1sfGg5XjVH3qSYyz7kw==
X-Received: by 2002:a2e:b954:0:b0:2ff:bdef:88b5 with SMTP id 38308e7fff4ca-302544ca4b6mr2241771fa.12.1734090900693;
        Fri, 13 Dec 2024 03:55:00 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-302292959c0sm13482671fa.94.2024.12.13.03.54.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:55:00 -0800 (PST)
Message-ID: <244ab38d-762f-4860-b38e-51b08389ee6a@linaro.org>
Date: Fri, 13 Dec 2024 13:54:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] media: dt-bindings: media: camss: Restrict bus-type
 property
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Barnabas Czeman <barnabas.czeman@mainlining.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Caleb Connolly <caleb.connolly@linaro.org>, David Heidelberg
 <david@ixit.cz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
 <20241209-camss-dphy-v1-1-5f1b6f25ed92@fairphone.com>
 <nqggstwkytqxpxy3iuhkl6tup5elf45lqi3qlgyv6eaizvnfdr@2uy57umdzqfa>
 <e4bd515a-eb98-4ea1-8d73-4ba5e7c9b66e@linaro.org>
 <D6AJ9U23ANWI.1DLHNPU5A6HQ4@fairphone.com>
 <d7e3076e-5b32-4ab8-afe8-f52458769f23@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <d7e3076e-5b32-4ab8-afe8-f52458769f23@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/24 13:34, Bryan O'Donoghue wrote:
> On 13/12/2024 11:24, Luca Weiss wrote:
>> On Fri Dec 13, 2024 at 11:50 AM CET, Vladimir Zapolskiy wrote:
>>> On 12/13/24 11:34, Krzysztof Kozlowski wrote:
>>>> On Mon, Dec 09, 2024 at 01:01:05PM +0100, Luca Weiss wrote:
>>>>> The CSIPHY of Qualcomm SoCs support both D-PHY and C-PHY standards for
>>>>> CSI-2, but not any others so restrict the bus-type property describing
>>>>> this to the supported values.
>>>>>
>>>>> The only exception here is MSM8916 which only supports D-PHY. C-PHY was
>>>>> introduced with newer SoCs.
>>>>>
>>>>> Do note, that currently the Linux driver only supports D-PHY.
>>>>>
>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>> ---
>>>>>     .../bindings/media/qcom,msm8916-camss.yaml         |  8 ++++++
>>>>>     .../bindings/media/qcom,msm8953-camss.yaml         | 15 +++++++++++
>>>>>     .../bindings/media/qcom,msm8996-camss.yaml         | 20 +++++++++++++++
>>>>>     .../bindings/media/qcom,sc8280xp-camss.yaml        | 20 +++++++++++++++
>>>>>     .../bindings/media/qcom,sdm660-camss.yaml          | 20 +++++++++++++++
>>>>>     .../bindings/media/qcom,sdm845-camss.yaml          | 20 +++++++++++++++
>>>>>     .../bindings/media/qcom,sm8250-camss.yaml          | 30 ++++++++++++++++++++++
>>>>>     7 files changed, 133 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
>>>>> index 9cc0a968a401836814560c1af3ee84d946500b4f..3de2a3d2b5b761106975aab65ff614b2ef579ef5 100644
>>>>> --- a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
>>>>> +++ b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
>>>>> @@ -94,6 +94,10 @@ properties:
>>>>>                     minItems: 1
>>>>>                     maxItems: 4
>>>>>     
>>>>> +              bus-type:
>>>>> +                enum:
>>>>> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
>>>>> +
>>>>>                 required:
>>>>>                   - data-lanes
>>>>>     
>>>>> @@ -113,6 +117,10 @@ properties:
>>>>>                     minItems: 1
>>>>>                     maxItems: 4
>>>>>     
>>>>> +              bus-type:
>>>>> +                enum:
>>>>> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
>>>>> +
>>>
>>> But is it really needed to specify the single supported bus-type?
>>>
>>> I believe it is not, at least it's not ever done for other media devices
>>> like sensors.
>>
>> Through video-interfaces.yaml 'bus-type' is already allowed but not
>> restricted to the values that actually make any sense on such hardware,
>> so in my opinion this makes sense to have here.
> This is additive not prescriptive.
> 
> New additions should include this bus-type number as we will need it
> when we add CPHY support and the subsequently move to the PHY API for
> CAMSS PHYs.

This particular reason is invalid IMO, since dtb changes are not relied on
drivers and shall be kept agnostic.

The open question is if it is really needed to specify non-variable
bus-type property. As I've said it's not done for other media devices,
so that's at least the established policy on practice.

--
Best wishes,
Vladimir

