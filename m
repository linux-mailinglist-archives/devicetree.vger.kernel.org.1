Return-Path: <devicetree+bounces-191044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D23AED9C0
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 12:25:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81D721899171
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 10:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2911254846;
	Mon, 30 Jun 2025 10:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Nr+pTFSY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCBD1E2858
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 10:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751279131; cv=none; b=jZjtTh04mEzthWTva9OetlsD7qDyyjSgWaFMWM1l2A1Vx5QAYKVVh065xP0meSBvPTHR1cdRVd9EBZ4PsyrxxvEvSKNLG4OXwQWXE1fbmzlvxLNkyzBXsazGdGpuUesoTEcGZ17pA+x+tUy6kllxBTPB/Mv46zDuGR7e+g56I1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751279131; c=relaxed/simple;
	bh=q1THjVn1VpIgW56NWxwaDH7UQqOVPhom8dNRs+AxCHE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mkfc8JUmg9BK7JJ0QWeuZc9JJ5Z7IJAi6Q0g3teKhjTW51Z+7W344gacjTJ5SkXOM983+BNy+qjs9Hrzs7cjFXXcJuJIUIRN6EhY+KhRXQU6GgvnSqG8OPuh4FI7and0RLW3bKJY30GVC1BlRd9aLysrMMs7Cj+6BJJ8kv6c+KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Nr+pTFSY; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751279128;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9A7R1NMgwmGs+rq/3fZEJMO/E+9JHfs2TTptrHFa6kI=;
	b=Nr+pTFSYzdHUL3knnel3W9KkYjk+kzqRYbHqFIVR1kOaWWMfsCW0U8vbbf/ZRgM+VRLmMw
	0CmlrhCGjbb5RHkIbysea8bQ9YZtr39pz0MIFKI9/wamW9TNwt49h56Ul/xenY4nOv/RsW
	DfExMbG86bNpZ/dGWGfd0lVNEqYtmm0=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-557-W7FGfC_cMSGVHCK_HV1etg-1; Mon, 30 Jun 2025 06:10:58 -0400
X-MC-Unique: W7FGfC_cMSGVHCK_HV1etg-1
X-Mimecast-MFC-AGG-ID: W7FGfC_cMSGVHCK_HV1etg_1751278257
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-ae0b629918eso182315866b.0
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 03:10:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751278257; x=1751883057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9A7R1NMgwmGs+rq/3fZEJMO/E+9JHfs2TTptrHFa6kI=;
        b=d/rVHvg2FJBp+PcmXTeE7p+4X8Z7RPoFdVQyRu88QG+UcUjlgGYdsL6NcUxazAATZc
         74QEMkwoWPp33SgSvIAnQNBrY8ZhrKB606NjVi75H76Wd2UZFBWScNg6NvHRze2TQCgu
         kh/ChmjubeW3vrYMwi0pL+wOLzqI+Nf1hk5GkdHMxv2qIv172BA7wMcEmTc6Y4AnD4TP
         VOA2wwkeYDaLKo7LbBmprnihrQdnvIuydOsPGsoyLpbay4gr8kAyggTH6UG0nix8AO2G
         FOm4YL34zvMPEfZfnpfuo56CQ61ya444OfmYQ0yf+HZFUkRgI05lZBi6aIU3BsfYB7Me
         SetQ==
X-Forwarded-Encrypted: i=1; AJvYcCUj6jDR8Mj2V7Y2TU9rMMdO91XCeah6KUFRaXjKvgZBvQKGKcGV+Y11qQe7b8L7xR61rzCPN8ODzq+7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3HsqcsduZme2eVRrqiRdY5NhVf5RvHWLJ8gXz8paVpzktsTmj
	W587KZQiWEtqbsSAUwOTVYNHPTMXG8hfL7yKG1mYmPRUGuhdEsRu+/kGPv4uFlVZ+elx613hOaP
	OJrHQmCfSL/DkbJ8/MrCoZiwIyi2Twv6iehYlFn+uKor5yiO5SeZr+tU6JlI4JsA=
X-Gm-Gg: ASbGncs21eksKEYhgG9cygcTfrsJqNgz41+5HaSpWHpkkPZ+o60OacuWCK6UiLVBS15
	I/ziv6q9uiyyn3f1XPRwF/6EecxZdprtr36ckXwct01yksQxNu+QKlRtnTz0TQYrocPp3+3AFGI
	az/rTF7h/5B5cBxmCEX2g/5188YRtpwgDWI5y4ibC3kiQtXs6LNs8Cbvsk1NqV/Sbpcg/X1brsk
	aAdrvkEbwzHSecv4DC25f5kkB+fZh+6C45KryQTyUtivoyVVUsEqFQn7tCodKfUrfbQ0nyIr2fY
	71s6vhUtgEoxYx1Nm3fIlMmBNnluqZvL9EjiayB90IaWgDlcPOJR5uUsdqg+fedKaHON6sU3MUa
	/aN2g8rN2pD3CbtxetSL/RxbAxfoISeCpNFp3Z6dMEEsy8HLjx6OCixWIChUkG1/E1VlXlMoWQw
	==
X-Received: by 2002:a17:907:2d90:b0:ae0:cde3:4bbd with SMTP id a640c23a62f3a-ae350105a64mr1132307466b.44.1751278256885;
        Mon, 30 Jun 2025 03:10:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8QLpRvbfPVUFa7p0t3e8hsAtXsONL5FPVYF4A4uxvUKJ0kZK4E7910YTHu2a3V2kjkojunQ==
X-Received: by 2002:a17:907:2d90:b0:ae0:cde3:4bbd with SMTP id a640c23a62f3a-ae350105a64mr1132304666b.44.1751278256380;
        Mon, 30 Jun 2025 03:10:56 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bbf2sm633581266b.129.2025.06.30.03.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 03:10:55 -0700 (PDT)
Message-ID: <484bb47b-3e20-41fa-a4e4-f8fe2369d7df@redhat.com>
Date: Mon, 30 Jun 2025 12:10:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: display: simple-framebuffer: Add
 interconnects property
To: Krzysztof Kozlowski <krzk@kernel.org>, Maxime Ripard <mripard@kernel.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Javier Martinez Canillas <javierm@redhat.com>,
 Helge Deller <deller@gmx.de>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-1-f69b86cd3d7d@fairphone.com>
 <20250627-mysterious-optimistic-bird-acaafb@krzk-bin>
 <DAX7ZB27SBPV.2Y0I09TVSF3TT@fairphone.com>
 <1129bc60-f9cb-40be-9869-8ffa3b3c9748@kernel.org>
 <8a3ad930-bfb1-4531-9d34-fdf7d437f352@redhat.com>
 <85521ded-734d-48e8-8f76-c57739102ded@kernel.org>
 <20250630-stirring-kiwi-of-adventure-8f22ba@houat>
 <b9f010ca-1564-4a3a-b004-ef179d5c90a6@kernel.org>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <b9f010ca-1564-4a3a-b004-ef179d5c90a6@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 30-Jun-25 11:36 AM, Krzysztof Kozlowski wrote:
> On 30/06/2025 10:38, Maxime Ripard wrote:
>> On Mon, Jun 30, 2025 at 10:24:06AM +0200, Krzysztof Kozlowski wrote:
>>> On 29/06/2025 14:07, Hans de Goede wrote:
>>>> Hi Krzysztof,
>>>>
>>>> On 28-Jun-25 1:49 PM, Krzysztof Kozlowski wrote:
>>>>> On 27/06/2025 11:48, Luca Weiss wrote:
>>>>>> Hi Krzysztof,
>>>>>>
>>>>>> On Fri Jun 27, 2025 at 10:08 AM CEST, Krzysztof Kozlowski wrote:
>>>>>>> On Mon, Jun 23, 2025 at 08:44:45AM +0200, Luca Weiss wrote:
>>>>>>>> Document the interconnects property which is a list of interconnect
>>>>>>>> paths that is used by the framebuffer and therefore needs to be kept
>>>>>>>> alive when the framebuffer is being used.
>>>>>>>>
>>>>>>>> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
>>>>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>>>>> ---
>>>>>>>>  Documentation/devicetree/bindings/display/simple-framebuffer.yaml | 3 +++
>>>>>>>>  1 file changed, 3 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>>>>> index 296500f9da05e296dbbeec50ba5186b6b30aaffc..f0fa0ef23d91043dfb2b220c654b80e2e80850cd 100644
>>>>>>>> --- a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>>>>> +++ b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>>>>> @@ -79,6 +79,9 @@ properties:
>>>>>>>>    power-domains:
>>>>>>>>      description: List of power domains used by the framebuffer.
>>>>>>>>  
>>>>>>>> +  interconnects:
>>>>>>>> +    description: List of interconnect paths used by the framebuffer.
>>>>>>>> +
>>>>>>>
>>>>>>> maxItems: 1, or this is not a simple FB anymore. Anything which needs
>>>>>>> some sort of resources in unknown way is not simple anymore. You need
>>>>>>> device specific bindings.
>>>>>>
>>>>>> The bindings support an arbitrary number of clocks, regulators,
>>>>>> power-domains. Why should I artificially limit the interconnects to only
>>>>>> one?
>>>>>
>>>>> And IMO they should not. Bindings are not supposed to be generic.
>>>>
>>>> The simplefb binding is a binding to allow keeping the firmware, e.g.
>>>> uboot setup framebuffer alive to e.g. show a boot splash until
>>>> the native display-engine drive loads. Needing display-engine
>>>> specific bindings totally contradicts the whole goal of 
>>>
>>> No, it does not. DT is well designed for that through expressing
>>> compatibility. I did not say you cannot have generic fallback for simple
>>> use case.
>>>
>>> But this (and previous patchset) grows this into generic binding ONLY
>>> and that is not correct.
>>
>> Can we have a proper definition of what a correct device tree binding is
>> then?
>>
>> It's a bit surprising to have *that* discussion over a binding that is
>> now well older than a decade now, and while there is definitely some
>> generic bindings in ePAPR/DT spec, like the CPU ones.
> 
> Hm? In ARM world at least they are specific, e.g. they have specific
> compatibles.
> 
>>
>> If you don't consider that spec to be correct DT bindings, please
>> provide a definition of what that is, and / or reasonable alternatives.
>>
>> Also, no, a device specific binding isn't reasonable here, because we
>> *don't* have a device. From a technical standpoint, the firmware creates
> 
> You touch internal parts of the SoC and you list very specific SoC
> parts. Interconnect is internal part of the SoC and only specific
> devices are using it.
> 
> You define here generic SW construct for something which is opposite of
> generic: the interconnect connecting two specific, unique components of
> one, given SoC.
> 
>> the framebuffer, Linux just uses it. Just like you don't have a
>> device/platform specific compatible for PSCI, SCPI, et al.
> 
> They follow some sort of spec and still they do not reference chosen
> SoC-design-specific properties.

It does not look like this discussion is going anywhere,
despite 2 drm subsystem maintainers and the simplefb
maintainer telling you that this is what is necessary
and also that we believe this is the right thing todo.

IOW despite 3 domain experts telling you we want this,
you keep coming up with vague, not really technical
argument about this not being generic / simple enough.

Looking at this from a driver pov interconnects are just
another resource we need to avoid from turning off.

And this is simple and generic, the actual display-engine
drivers are very complex and when powering things up
this needs to be done in a very specific order with
specific delays. That is hw-specific. The simplefb/simpledrm
code does not need any of this knowledge everything is
already setup. The simple* drivers just needs to claim all
listed resources in an arbitrary order and without any delays
as someone who has written many many drivers this is
about as simple and generic as it can get.

But as mentioned it looks like this discussion is going
anywhere. Is there some sort of arbitration / appeal
process which we can use when DT-maintainers block
a binding which has been acked and is seen as necessary
by the subsystem maintainers of the subsystem for which
the bindings are ?

Regards,

Hans



