Return-Path: <devicetree+bounces-124291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F5F9D83FA
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 12:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8EAD168E72
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 11:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5512719CC0A;
	Mon, 25 Nov 2024 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pc9pqGuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5E91632F6
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 11:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732532433; cv=none; b=CmYtnz5etAZngX64q0PTWhbb7hjNecvxhoLrfPmgLlI9yvRpgh7CTtWkKS/pmZRvIkw31OI6S1hVrMgvVSBBJ456ukx21IvpvurYBrutMAS7C7wtXQxLLS4Bb+mNNmv7COV6vwOmU0S3n+3vdZF3uyQOq82VXyPZslNRnZ1IwHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732532433; c=relaxed/simple;
	bh=Rm/ejqpbiyF2SgjXin0SEqQJiFppkMzcs7cI/oAJwT8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JCcfvtOdL2JVAcNPV/GUYdBEEP8s0gHFiej8ES10uZye56fhcHP9ajCl6+DfwAYmMWaR7GkMwRMEXbq8fBZkwTdRhj40yREE/Alut4NFoK1QRIbbTa/UdF/CHQrGb+fR7wvGMMb19Ja+5+C5K8ZJraCk5LQO144LaeYBdyiMxEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pc9pqGuD; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-382435f561cso444862f8f.2
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 03:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732532429; x=1733137229; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aBVlGgVoB1GD3Ff15dY4z90PQuaYdbBMRBniOSvzmH4=;
        b=pc9pqGuDLPLC52lExU5GhSFZ+UfgIWxpvUb8S/EeRXTPUtxvrHfsYFuKjCYPzkvG6S
         GKfn6HEX1T55oIJjuWGXBih03IPgf0sBLV+ghRD4D1JQNDAfP9aVYCy582mz1m0CS9oR
         2MnhNwl6pJ3Br8fTdnYixzECi/hWTuUM9s71yIYImowO8w6okOqfxnHjQSeAmhSDd9Wm
         rkZ8qNbVlOTaGAQI3+hjeI5hKoqqSz4eeiGZMTiQzjRkyS8k+d30QT/BYMY88xAvKOf5
         pH5vPaguHM/yg5wS9u90+tQcEopXF6y9xC0cpJjK9O8y6aYUbr44RyUd22JqdHMSBzPe
         tp3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732532429; x=1733137229;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aBVlGgVoB1GD3Ff15dY4z90PQuaYdbBMRBniOSvzmH4=;
        b=Jgbd/JJTT6Zy2Z3HT+zs699dSfGvq5KUY+oNwqUVSgeo5Oskp1cpv1iy9l8SXNuLR6
         1cynf4tGJ5ofsuDtzkC0vwVg1xIRXTf15fWVOlBhni38VtT8+om1dxXYkBnYGMKV0B03
         uYcUIpofISbeBXBhrlZZEL/C6xKM26/rBy0sCYEsfeS5uycqUaTUokSAxtIF+fwP+D5F
         Eybl0wx3BNAXb2W2yQRX4/vR6/e+YmQiDrY178OyaEkN5FczUFtWyoVQn6dIcgWe1B8E
         yrZQ7/MRGA49trZ0x5p/yrt/JHE5P58iIbNore4hToX9p6WMyKCW8D+KxK/rLW6iF2Lk
         bSpg==
X-Forwarded-Encrypted: i=1; AJvYcCXC7haU/s2WGFcwNMAaih80XcJCsrw9dNwBPFDZ1PTtxUeBdvbOqpccW2BlxUKt1afKl8ZS0KTRGxy8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa6a2aBGY3deZTYugZRLV6YZmqyMRpbOdBvsgPFb/hBHic0yRq
	O77qK+E4lfW7ATg3WwQtHcZWob+2ovhIDJiayKuKV1EWRAp/coGm5xYitZVvJEU=
X-Gm-Gg: ASbGncvTS11NdI8oX9izga17Mmjn7R5VALXcMfwPn+DO021R2Jmtv88k75aApZBT7PZ
	SW39qOMSNE9CTHHemTn6hIqMinMQZL7TmuZcke0qg3x88qchJHAHiu1Ob3CZ4aQiJGFpLX8lvhJ
	ZbhuZ4db74JLALsOl4tvUggaAgFmkhborkW3SwCgmrBFfFVBt3A3HTe7J+Q9v6u/Ye2sl4hWyCS
	Y48CY5XHGb9lwqJXH3NL01re1eVBlkybk/pUDXWNhFudALBGtb1NNAY+vffh7Q4FPvSRA==
X-Google-Smtp-Source: AGHT+IFUOoiDVP1g0KgoJMmxiwXdZi0HGXhADzXfLN2+zVPqFk3IbnsxYKyrMdLBWwZGCB4qT8YcqA==
X-Received: by 2002:a05:6000:178e:b0:382:4b5e:5244 with SMTP id ffacd0b85a97d-38260b68fbfmr3580881f8f.7.1732532429139;
        Mon, 25 Nov 2024 03:00:29 -0800 (PST)
Received: from [192.168.1.20] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fad6470sm10047630f8f.11.2024.11.25.03.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 03:00:27 -0800 (PST)
Message-ID: <19ba4910-f909-41b4-ba62-c904bc37d41d@linaro.org>
Date: Mon, 25 Nov 2024 12:00:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [GIT PULL] Devicetree updates for v6.13
To: Chen-Yu Tsai <wenst@chromium.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Sasha Levin <sashal@kernel.org>, Rob Herring <robh@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>
References: <20241118210730.GA3331421-robh@kernel.org>
 <Z0NUdoG17EwuCigT@sashalap> <c25e6a80-f6dc-4ef9-a90d-0fa09cbbc217@linaro.org>
 <Z0NbeyTwxo-M4Lgi@sashalap>
 <936bf452-3d1f-4940-9a91-69efcdc6985e@collabora.com>
 <CAGXv+5FLkZbZVHNkfRWuT+OioZ0TG=u2WfaFCx-jZFi73QHnVg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAGXv+5FLkZbZVHNkfRWuT+OioZ0TG=u2WfaFCx-jZFi73QHnVg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 25/11/2024 11:34, Chen-Yu Tsai wrote:
> On Mon, Nov 25, 2024 at 5:48 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
>>
>> Il 24/11/24 17:59, Sasha Levin ha scritto:
>>> On Sun, Nov 24, 2024 at 05:47:33PM +0100, Krzysztof Kozlowski wrote:
>>>> On 24/11/2024 17:29, Sasha Levin wrote:
>>>>> Hi Rob,
>>>>>
>>>>> On Mon, Nov 18, 2024 at 03:07:30PM -0600, Rob Herring wrote:
>>>>>>      of: WARN on deprecated #address-cells/#size-cells handling
>>>>>
>>>>> With the commit above, I've started seeing boot warnings on a few
>>>>
>>>> And same boards do not report problems on the next?
>>>
>>> Looks like they do. I haven't checked it previously, but I see that we
>>> have similar warnings on a few boards that KernelCI is testing -next on.
>>>
>>
>> That's... horrendous.
>>
>> I hope that we can get a proper fix with a bootloader update on these (now very
>> old) devices... Adding a Google engineer to the loop so that he can follow up
>> internally.
> 
> AFAIK that's unlikely going to happen given the resources needed from
> the ODMs for a firmware re-qualification. Or we would have fixed the GIC
> bug in ATF and had pseudo-NMI.
> 
> Some of the firmware code involved is 10 years old, so even the RK3399
> Chromebooks, which no longer have support, could suffer from this as
> well.
> 
>> The alternative would be to hack-in a firmware node to mt8183-kukui.dtsi, but....
>> ...ugh. That'd be indeed a hack for the sole purpose of fixing a bootloader that
>> is acting in a broken way, and I don't like that at all (...and I'm sure I'm not
>> alone!).
> 

Then we should add it to the exception list. Let me take a look at this.

Best regards,
Krzysztof

