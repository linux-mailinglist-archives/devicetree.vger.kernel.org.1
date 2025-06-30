Return-Path: <devicetree+bounces-190960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B01EFAED58A
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 09:27:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07958170825
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 07:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C431B19A2A3;
	Mon, 30 Jun 2025 07:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NNhtJxpa"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC17322126D
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 07:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751268411; cv=none; b=Dd+L0im1P0o8UzvrE8IuSHFRXD3zoWiL8ruke8nwSwdI2oKcOgDO9hfhGgj5rt+EXGaYapwFMlVqyTiCdH1EHxwv74Qm/ZOfp3MOvRLMjWDGdSeBflYRkg9EV7edo2fyHf3La4eMLwtzzfXwi/vaMCSrNwD5BBYRVhaxg+dYwHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751268411; c=relaxed/simple;
	bh=iG84TmxuoF/PkJnPMzDfD22eivVFil9XKJMSFRAT+0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hPXgpfcQ5A2SpTYVOJFZjdMxaTgeO4+fb44vOK+Ag2TigaX6L6RQ3oNMtkcsu5lMPixOPxVLf6LRJuTZO75nPVxHbZPhApZjcD11vGVLC3vLn3yLOOQmHOTnaiEyWLJpYrnABE/a6fhNiSlGY9FwsCtEME/WVf27myFGUEOOB2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NNhtJxpa; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751268408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PliJmn1HXur6pMQoL8rB2hExixfTgf4evesy0cgfaZA=;
	b=NNhtJxpa82awkZ/wURDlKmNU5A1nLbzMRbzzNbm3sOkbKoA7PMHLSUCcLJwDy1oedzkGDG
	pJH5jPDCQWBitrbmRW7rzLYiDUed/wloRdWZzZdpu5UGqO1e7dRroVAO7t8ec+CuVqvF93
	mqZBm6qit4dS+jXrG5nmU4bAWBZUqtM=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-226-Y7XGXC5JMaqHgfRChM9Y1A-1; Mon, 30 Jun 2025 03:26:46 -0400
X-MC-Unique: Y7XGXC5JMaqHgfRChM9Y1A-1
X-Mimecast-MFC-AGG-ID: Y7XGXC5JMaqHgfRChM9Y1A_1751268405
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-6097b0f5aceso1802539a12.3
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 00:26:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751268405; x=1751873205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PliJmn1HXur6pMQoL8rB2hExixfTgf4evesy0cgfaZA=;
        b=BaSmiqZwQOT8ZaZX1F3evLaucVClyMzAaHGRzKs72HxO36A+tHzOReNs/hXVCco3Fy
         jVzIJmK14pyymBzDusaO3guff/zYeui3F6xzqWqb4W3wjn7ktGOtebCSHd7Ts4bDIGJd
         K7sR6F1WlTXoy+CD6fsw45xdTxYWq7gNONCy7oCQXH88JYgbvoTH3Jpt6wNEpbUGQLCN
         kAQHB2oF4MhQqEDAYJsOQhcbpqBTVGfE8aFLR0xaa9tzWw+vKDFzv7hB3tDNUC3own0K
         /jFSHUJ5Z5Dsliw3zZB8Lxrxdu+iLrhIeW6Db8md6npzI+LnZ+06uYFzS0Gm3edh+4iM
         Y+dQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+yhlQjynRL5XJ36KC8FMHmfRhn6AZxn0WCoh2mgQujJAjqXl+EyaUESJqyQBxd/712G8yzchHrutp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6WqQaaWhfz3mvl8nlqn2Sthpq5UCujsrtrRHHJMolWI1K2R+Z
	po/hY6xe4RbQ0G2APq8IR5mAXhxhYlj5osb0j/4IRC06LEMobshZU3C3M3C1lyNyzbg8iUfQ7Wh
	UBf4OTwx0qHq7URro9NUker6yRFLzzoi/cK13HfBD7kysqfKU8vzPsXe7w+09cRU=
X-Gm-Gg: ASbGncsBW4zQxaYoCKAxAA/LLkT/sXmm7ArCS0oM/WFiILNcrDyy/81v72lJlbIT+0p
	J2NzdKgsBhQlRLM1YMaRZPP2lD0zDn5hVfXWqFYAqPtjx4T3sEm7u76OIkCD2FmzcC2pXV8ySvY
	w33Ln2R1ILVnUr4p+ruHNs1PuqKlUY77NXKwmTV37JXnoPA7v3dVVi3MQVSpQlkct26DZm33YAq
	KWcqy4tAeOMwtzhUX+6BLE6943PWGN0DcqeR9XdPsd5Srz85Ght5jPtwhxExDYp4plhObq2G96u
	jQjO7RlevVlIMpdL+BDia84tzGDTyTfK7dq4P+SYhzCJTLQqtdhEdHw+uhyi22d8Qj3GJ1VFGac
	mmrxBiZ0pqtS6lG4CgKBbEWR/eTitab+lqaOdGcxh8O5oAUCKOtjNdw5IiyptOdJhMGowushxsA
	==
X-Received: by 2002:a17:907:9611:b0:ade:4593:d7cd with SMTP id a640c23a62f3a-ae34fd7dba9mr1214867566b.13.1751268404581;
        Mon, 30 Jun 2025 00:26:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiYh3llMDXU4xGZ9swkyEgz9p+asDK16qOjNtV3Z/UlrkO6eBkaLFQvar4Jfxyj+guT7BUfw==
X-Received: by 2002:a17:907:9611:b0:ade:4593:d7cd with SMTP id a640c23a62f3a-ae34fd7dba9mr1214864766b.13.1751268404067;
        Mon, 30 Jun 2025 00:26:44 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353639bf1sm624173066b.32.2025.06.30.00.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 00:26:43 -0700 (PDT)
Message-ID: <72aab355-263c-4f63-8818-3d76bd3f6826@redhat.com>
Date: Mon, 30 Jun 2025 09:26:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: display: simple-framebuffer: Add
 interconnects property
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzk@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Javier Martinez Canillas <javierm@redhat.com>,
 Helge Deller <deller@gmx.de>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-1-f69b86cd3d7d@fairphone.com>
 <20250627-mysterious-optimistic-bird-acaafb@krzk-bin>
 <d8d85415-efc4-4a11-842e-23272cae29f7@suse.de>
 <b94b752c-d7f7-41d6-ac79-d21427f20964@kernel.org>
 <f15a775d-d82f-4ac9-9d88-159ffcf7e81c@suse.de>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <f15a775d-d82f-4ac9-9d88-159ffcf7e81c@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

On 30-Jun-25 8:34 AM, Thomas Zimmermann wrote:
> Hi
> 
> Am 28.06.25 um 13:50 schrieb Krzysztof Kozlowski:
>> On 27/06/2025 13:34, Thomas Zimmermann wrote:
>>> Hi
>>>
>>> Am 27.06.25 um 10:08 schrieb Krzysztof Kozlowski:
>>>> On Mon, Jun 23, 2025 at 08:44:45AM +0200, Luca Weiss wrote:
>>>>> Document the interconnects property which is a list of interconnect
>>>>> paths that is used by the framebuffer and therefore needs to be kept
>>>>> alive when the framebuffer is being used.
>>>>>
>>>>> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>> ---
>>>>>    Documentation/devicetree/bindings/display/simple-framebuffer.yaml | 3 +++
>>>>>    1 file changed, 3 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>> index 296500f9da05e296dbbeec50ba5186b6b30aaffc..f0fa0ef23d91043dfb2b220c654b80e2e80850cd 100644
>>>>> --- a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>> +++ b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>> @@ -79,6 +79,9 @@ properties:
>>>>>      power-domains:
>>>>>        description: List of power domains used by the framebuffer.
>>>>>    +  interconnects:
>>>>> +    description: List of interconnect paths used by the framebuffer.
>>>>> +
>>>> maxItems: 1, or this is not a simple FB anymore. Anything which needs
>>>> some sort of resources in unknown way is not simple anymore. You need
>>>> device specific bindings.
>>> In this context, 'simple' means that this device cannot change display
>>> modes or do graphics acceleration. The hardware itself is not
>>> necessarily simple. As Javier pointed out, it's initialized by firmware
>> If hardware is not simple, then it needs specific bindings.
>>
>>> on the actual hardware. Think of 'VGA-for-ARM'. We need these resources
>>> to keep the display working.
>> I don't claim you do not need these resources. I claim device is not
>> simple thus does not suit rules for generic bindings. Generic bindings
>> are in general not allowed and we have them only for very, very simple
>> devices.
>>
>> You say this is not simple device, so there you go - specific binding
>> for this complex (not-simple) device.
> 
> No, I didn't. I said that the device is simple. I did not say that the device's hardware is simple. Sounds nonsensical, but makes sense here. The simple-framebuffer is just the range of display memory that the firmware configured for printing boot-up messages. We use it for the kernel's output as well.  Being generic and simple is the exact raison d'etre for simple-framebuffer.  (The display property points to the actual hardware, but we don't need it.)

I believe part of the problem here is the simple part of the simplefb
name in hindsight that is a mistake and we should have called the thing
firmware-framebuffer since its goal is to pass along a firmware setup
framebuffer to the OS for displaying stuff.

As for the argument for having a firmware-framebuffer not being allowed
because framebuffers are to complex to have a generic binding, that
ship has long sailed since we already have the simplefb binding.

And since we already have the binding I do not find this not being
simple a valid technical argument. That is an argument to allow
having a generic binding at all or to not have it at all, but here
we already have the binding and this is just about evolving the binding
with changing hw needs.

And again this reminds me very much of the whole clocks / regulators
addition to simplefb discussion we had over a decade ago. Back then
we had a huge thread, almost a flamefest with in my memory over
a 100 emails and back then the only argument against adding them
was also "it is not simple", which IMHO really is a non argument for
an already existing binding. Certainly it is not a good technical
argument.

During the last decade, after clocks and regulators were added to
the binding. simplefb has been used successfully on millions (billions?)
handover the firmware framebuffer to the OS for bootsplash use,
replacing various vendor hacks for this. Disallowing the addition of
interconnect support to the simplefb binding will only result in
various vendor hacks appearing in vendor kernels for this, which
I believe is something which we should try to avoid.

So as the maintainer of the simplefb kernel driver for over a decade
I strongly advice the DT maintainers to accept this bindings patch
and from my my side this still is:

Reviewed-by: Hans de Goede <hansg@kernel.org>

Regards,

Hans



