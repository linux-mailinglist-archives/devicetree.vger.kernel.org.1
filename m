Return-Path: <devicetree+bounces-17970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E5C7F496D
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 15:53:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4946C28133F
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 14:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CCFA4EB3D;
	Wed, 22 Nov 2023 14:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LNjeQbO6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C193FD45
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 06:52:55 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4094301d505so31849805e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 06:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700664774; x=1701269574; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=YU9HkHadrfyg4mO0a1y/iuf4m6/K/aPcwo6FIp9aTrU=;
        b=LNjeQbO6XEpJnv0URVmk9gRaK3f7VNpo/VshEOhyWsqiMpbiukhaxKHwv5o+lZDCIj
         /HzX3U2GCpX1haHUSv/M1CByFH7A28VreU1jBuvsn1g7ICAniS6u0NQnKg6+Yno0POHG
         aKaDNHorv7HZ27A8k9Pnco11QBVs52hqzHhBiM6mx3yugVDXPGgr+zUrvi/0l0CUZhTn
         2BS1nuTT/p5Gv9WkhEJBKeFTyuDw8nZLytChsMQ+Vb+ayUXbPsXrDBXVLII+RBNG3q0R
         VRkjXy2sDf+oS3BS+g8EHS5mJRK+a6bMxFSxtmcalLdpib8CObn0chZP/EUwGJd0sFSg
         SirQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700664774; x=1701269574;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YU9HkHadrfyg4mO0a1y/iuf4m6/K/aPcwo6FIp9aTrU=;
        b=LaC4LPcwigcCIFNXFo+A+fsoFuhn49uCjnfWwL81XovYmdKVTYBklRAialG9i1R0+7
         q6EpuFwDzZ5y8x1yxwTKkchC6WAJQl/VfWqp4RLRGB9H3ZFJujhdQrR71o6MO7C0Gx1t
         lys/2plWuawhAyV5eY3S39c1nP5kZ4Uw5cMj5EEW8x5GarhovYA+ot4bRPGJ0ZtgR0x5
         9MFtuFfwjYNYYnXbyOrtXFTsHC+VPFrJcPfcpeQ/nSXk8iMX8YljkbOalJcQ8I6iXhrS
         3eC8qF9PUvhETTQq0CsISHxOTBXi7nAVfUW2dINW5Qs/uOc4uU9Bqr412217XIxGHpsL
         2KcA==
X-Gm-Message-State: AOJu0Yy68/1D8vRkrMtviuRG2vMkVmBfCTOOosMeIdKxv5AF4V8yuX0f
	r1tMg+KjX9c+JfPeL2PGxZXCew==
X-Google-Smtp-Source: AGHT+IHx6cb/GfkvDHyM6YwX74rQfXlRrRm6+GoJfSrfbdtc0H2GN2fNm9xMYK5e6rHT+aM/JJHyLQ==
X-Received: by 2002:a05:600c:5492:b0:40b:3369:d797 with SMTP id iv18-20020a05600c549200b0040b3369d797mr1244407wmb.21.1700664773964;
        Wed, 22 Nov 2023 06:52:53 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d0a1:9a3c:4f4b:fa20])
        by smtp.gmail.com with ESMTPSA id r5-20020a05600c320500b0040a4cc876e0sm2406529wmp.40.2023.11.22.06.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 06:52:53 -0800 (PST)
References: <20231117125919.1696980-1-jbrunet@baylibre.com>
 <20231117125919.1696980-3-jbrunet@baylibre.com>
 <170040994064.269288.960284011884896046.robh@kernel.org>
 <4608012c-059f-4d6a-914b-e85ad0c32ff0@linaro.org>
 <1j5y1wg3sb.fsf@starbuckisacylon.baylibre.com>
 <2e7a65da-5c1d-4dd4-ac69-7559a53afdf3@linaro.org>
 <1j1qckg21u.fsf@starbuckisacylon.baylibre.com>
 <94e69281-93e1-41cd-9cf5-81cbbc15572c@linaro.org>
User-agent: mu4e 1.10.7; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>, neil.armstrong@linaro.org, Rob
 Herring <robh@kernel.org>, JunYi Zhao <junyi.zhao@amlogic.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, Thierry Reding
 <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-amlogic@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v2 2/6] dt-bindings: pwm: amlogic: add new compatible
 for meson8 pwm type
Date: Wed, 22 Nov 2023 15:34:41 +0100
In-reply-to: <94e69281-93e1-41cd-9cf5-81cbbc15572c@linaro.org>
Message-ID: <1jwmu9et6j.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Wed 22 Nov 2023 at 09:37, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 20/11/2023 11:04, Jerome Brunet wrote:
>>>>>>>    .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 36 +++++++++++++++++--
>>>>>>>    1 file changed, 34 insertions(+), 2 deletions(-)
>>>>>>>
>>>>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>>>>>
>>>>>
>>>>> I'm puzzled, isn't it recommended to have a per-soc compatible now ?
>
> Yes, it is.
>
>>>> I have specifically addressed this matter in the description,
>>>> haven't I ? What good would it do in this case ?
>
> There is nothing about compatible naming in commit msg.

Krzysztof, the whole commit desciption is explanation about why a new
compatible is introduced. I don't understand this comment.

>
>>>
>>> Yes you did but I was asked for the last year+ that all new compatible
>>> should be soc specific (while imprecise, in our care soc family should be ok),
>>> with a possible semi-generic callback with an IP version or a first soc
>>> implementing the IP.
>>>
>>>> Plus the definition of a SoC is very vague. One could argue that
>>>> the content of the list bellow are vaguely defined families. Should we
>>>> add meson8b, gxl, gxm, sm1 ? ... or even the actual SoC reference ?
>>>> This list gets huge for no reason.
>>>
>>> I think in our case soc family is reasonable since they share same silicon
>>> design.
>>>
>>>> We know all existing PWM of this type are the same. We have been using
>>>> them for years. It is not a new support we know nothing about.
>>>>
>>>>>
>>>>> I thought something like:
>>>>> - items:
>>>>>      - enum:
>>>>>          - amlogic,gxbb-pwm
>>>>>          - amlogic,axg-pwm
>>>>>          - amlogic,g12a-pwm
>>>>>      - const: amlogic,pwm-v1
>>>> I'm not sure I understand what you are suggesting here.
>>>> Adding a "amlogic,pwm-v1" for the obsolete compatible ? No amlogic DT
>>>> has that and I'm working to remove this type, so I don't get the point.
>>>>
>>>>>
>>>>> should be preferred instead of a single amlogic,meson8-pwm-v2 ?
>>>> This is named after the first SoC supporting the type.
>>>> Naming it amlogic,pwm-v2 would feel weird with the s4 coming after.
>>>> Plus the doc specifically advise against this type of names.
>>>
>>> The -v2 refers to a pure software/dt implementation versioning and not
>>> an HW version, so I'm puzzled and I requires DT maintainers advice here.
>>>
>>> Yes meson8b is the first "known" platform, even if I'm pretty sure meson6 has
>
> Yes, this should be SoC-based compatible, unless you have clear
> versioning scheme by SoC/IP block vendor. You named it not a HW version,
> which kind of answers to the "unless" case - that's not hardware version.
>

This is specifically the point of the comment in commit description.
We know all the PWMs compatible are the same HW (version) as one found
in the meson8b.

It is certain that adding more compatible, listing all the SoC, will be
useless. I can do it if you insist.

>> 
>> This is not my point. I picked this name because I have to pick a
>> specific device based one. Not because it is actually the first or
>> not. I don't see a problem with meson6 being compatible with
>> meson8-pwm-v2, if that ever comes along.
>
> No, the point is not to use "v2". Use SoC compatibles.

It is a SoC compatible. The second one.

The first one, as explained in the description was describing the driver
more that the HW.

Changing the way clock are passed from DT to the driver would be break
user of the old compatible. So a new compatible is introduced. I believe
this is recommended way to introduce incompatible binding changes.

v2 here denote a new interface version, nothing to do with HW
versioning. I happy to pick something else to denote this.

>
>> 
>> I think the binding here satisfy the rule that it should be specific,
>> and the intent that goes with it:
>> 
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/writing-bindings.rst?h=v6.7-rc2#n42
>> 
>>> the same pwm architecture, this is why "amlogic,pwm-v1" as fallback seems more
>>> reasonable and s4 and later pwm could use the "amlogic,pwm-v2"
>>> fallback.
>> 
>> That is not how understand this:
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/writing-bindings.rst?h=v6.7-rc2#n82
>> 
>
> Again, where the "v2" is defined? Where is any document explaining the
> mapping between version blocks and SoC parts? Why do you list here only
> major version? Blocks almost always have also minor (e.g. v2.0).

Again, v2 does has nothing to do with the HW. Never wrote it was.
The HW remains the same.


>
> Best regards,
> Krzysztof


