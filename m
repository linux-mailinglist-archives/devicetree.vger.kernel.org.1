Return-Path: <devicetree+bounces-190823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3529BAECC66
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 14:12:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71055189627F
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 12:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F15218E96;
	Sun, 29 Jun 2025 12:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TRWq39Fq"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFDA1C862C
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 12:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751199153; cv=none; b=GS8bKTMD2vT+VevXhkkZg0qEVkl9BYiOMBa0TFK9LW11UU34tpGY++BDcRDJnw8UwYXildcTp9MUkPTcBYflDLRwbCa8Aq8ek4rRIgvOJorTR4NCDUMqlkjqn9ehnZsNtQNP0fArYUEpPVN4V/9mN+9q+Fg+5Q/nW2Q93bhJ36E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751199153; c=relaxed/simple;
	bh=Bd4ZFb5mI/vt0MlkmiVCP1yVrwm4sXAQYCfiPh8N3BA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l5W4q0Q1t5/XHtcugCQ/g+4UA+1bbWtcbJFXnBiX14/qUiAWRfGuLmxW0li0Yg9x66ye4gdmVjpwdXZKSjR1MAZS4/3NjTqSjDBR+kW9b24zjK2usC0ErzRJbXkuwqMdO0cIiIx6/T2sQ5sDtoqH5S8jtD+F/CF+RBqNWSO+f/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TRWq39Fq; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751199150;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y61uksNXY3bfxfbmhRvj/wWi6127GwpvTiXCWAuJy7Y=;
	b=TRWq39Fqizx5UxRwRA6M/+r5o0dIoWPRb9rTBHx4EQ5XIytK9ssgio8msw3M943Y9cp08A
	L3O3zBTx8HmBie7NCl6rlPnnDwu1kqu1p1rpUARdKl65Y0Fv0vJISUW1iFWYXaKj5x/PZK
	1pnKvse+GqXeAXDq0oiyhSWUirsibSQ=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-606-Rr2w7yuBOiqCTLJaxKxpTw-1; Sun, 29 Jun 2025 08:08:02 -0400
X-MC-Unique: Rr2w7yuBOiqCTLJaxKxpTw-1
X-Mimecast-MFC-AGG-ID: Rr2w7yuBOiqCTLJaxKxpTw_1751198881
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-acb66d17be4so232308366b.2
        for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 05:08:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751198881; x=1751803681;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y61uksNXY3bfxfbmhRvj/wWi6127GwpvTiXCWAuJy7Y=;
        b=AFsbudQ4fsDq0y1BYNXt5dw2EEpgNlPzcWHpLKAhNtgfQc6m53orlnAt5lK1OYy6qt
         KwqtAKFnhoWsFZhX3EA4Wa9WKZy9oAbpS8oGtnIaP9poioanddxvVM5bpVGFzfRszW6J
         hJjRAegPw+YqtEdBrgYrcU3iCrjCPBFNwEuYI1bHWS7ZbXL5GYGOxdpQThnqkL5JPq1I
         t52fC1RoAIxfvU3GoNDlrvXdyPXBHOIFoeySNGYw9n/8rB04i/2Yv+5fUAIdp5M3FPMI
         hThJGDA0hhXGkmo90LS1+NKQ+kg+KirfeAcGvHoGeN2vK8ew1Y9VJxdMOlbtoqmbfbIR
         0Bjg==
X-Forwarded-Encrypted: i=1; AJvYcCWNGMVHyKHAiPYcYS96JPBAvEdF6tyzb1mYoll3SsIz+Y7iUfHYA+gTjheYIREXSs4U8HOlqxByvlJ5@vger.kernel.org
X-Gm-Message-State: AOJu0Yzob9tNh/AAS+K6q2PLPSkU3zEMOtAtUvpSu13aXI9PnVYslbhq
	3KnimC10Un9os9+zybe0rOHldb4a3n3VvZbq6BFaXJh9AxxRVLyIzPMiAwME3UUuDwP8Nv62GVj
	ir9Z9JnjvmBsTG3ConGQbXux4l/DEgDHCbD7XcFcUNkGjDFrS3jtsVFzLI/byEbI=
X-Gm-Gg: ASbGnctFFkVDpC59PJnTi8f6FMgTcYfFfJ+tzgjnpaegTCF1GR82k07DPEHMmvujZfM
	cUeUrMQOpfUgNg6baRXfPLFBNeB9uuKt9Z7UTpZAwmeBpL/xzDgYVAvBxLoybCELQAhwGbSN+r4
	BNikx1MSwPTNm8dSNg788ZX87SUbL9TGNqR0p9vXaG3v2EaD1SHQXQZsFVLDh6Q7hM4mr1FhJig
	Lko8PI3ib42Vll4Wc5lgcEUSnIWTKUyZa+V/dshlwl4qxxZDj6aW3KFm7JLBkzn+ziK6xBbfYSC
	HnCIyWA9tHXY5KqoqnM+SQH8m7LNJhh0j7MIYOdwuJKhvuXEKHG634I7VnBKhIo3QzoWdY5AOE3
	PDPulOl8ALu7yOyLEVJYxxgPzRz63r82JJtbwrAQ03WTMC4SgJ+n/Lul7YvNgfEEwoIzJmmhmlQ
	==
X-Received: by 2002:a17:907:7207:b0:ae3:6b52:f7dd with SMTP id a640c23a62f3a-ae36b52f88amr514353466b.46.1751198881148;
        Sun, 29 Jun 2025 05:08:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IET079+lNS2Zrgoqy9+whMR/tx3pQQ8PudfiWv0ZLtWOTerBzl2nFJIzCBrV1Me9yEUFQUboA==
X-Received: by 2002:a17:907:7207:b0:ae3:6b52:f7dd with SMTP id a640c23a62f3a-ae36b52f88amr514350466b.46.1751198880619;
        Sun, 29 Jun 2025 05:08:00 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bc2dsm490353166b.136.2025.06.29.05.07.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jun 2025 05:07:59 -0700 (PDT)
Message-ID: <8a3ad930-bfb1-4531-9d34-fdf7d437f352@redhat.com>
Date: Sun, 29 Jun 2025 14:07:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: display: simple-framebuffer: Add
 interconnects property
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Luca Weiss <luca.weiss@fairphone.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Javier Martinez Canillas <javierm@redhat.com>, Helge Deller <deller@gmx.de>,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-1-f69b86cd3d7d@fairphone.com>
 <20250627-mysterious-optimistic-bird-acaafb@krzk-bin>
 <DAX7ZB27SBPV.2Y0I09TVSF3TT@fairphone.com>
 <1129bc60-f9cb-40be-9869-8ffa3b3c9748@kernel.org>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <1129bc60-f9cb-40be-9869-8ffa3b3c9748@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 28-Jun-25 1:49 PM, Krzysztof Kozlowski wrote:
> On 27/06/2025 11:48, Luca Weiss wrote:
>> Hi Krzysztof,
>>
>> On Fri Jun 27, 2025 at 10:08 AM CEST, Krzysztof Kozlowski wrote:
>>> On Mon, Jun 23, 2025 at 08:44:45AM +0200, Luca Weiss wrote:
>>>> Document the interconnects property which is a list of interconnect
>>>> paths that is used by the framebuffer and therefore needs to be kept
>>>> alive when the framebuffer is being used.
>>>>
>>>> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/display/simple-framebuffer.yaml | 3 +++
>>>>  1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>> index 296500f9da05e296dbbeec50ba5186b6b30aaffc..f0fa0ef23d91043dfb2b220c654b80e2e80850cd 100644
>>>> --- a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>> @@ -79,6 +79,9 @@ properties:
>>>>    power-domains:
>>>>      description: List of power domains used by the framebuffer.
>>>>  
>>>> +  interconnects:
>>>> +    description: List of interconnect paths used by the framebuffer.
>>>> +
>>>
>>> maxItems: 1, or this is not a simple FB anymore. Anything which needs
>>> some sort of resources in unknown way is not simple anymore. You need
>>> device specific bindings.
>>
>> The bindings support an arbitrary number of clocks, regulators,
>> power-domains. Why should I artificially limit the interconnects to only
>> one?
> 
> And IMO they should not. Bindings are not supposed to be generic.

The simplefb binding is a binding to allow keeping the firmware, e.g.
uboot setup framebuffer alive to e.g. show a boot splash until
the native display-engine drive loads. Needing display-engine
specific bindings totally contradicts the whole goal of 

It is generic by nature and I really do not see how clocks and
regulators are any different then interconnects here.

Note that we had a huge discussion about adding clock
and regulators to simplefb many years ago with pretty
much the same arguments against doing so. In the end it was
decided to add regulator and clocks support to the simplefb
bindings and non of the feared problems with e.g. ordening
of turning things on happened.

A big part of this is that the claiming of clks / regulators /
interconnects by the simplefb driver is there to keep things on,
so it happens before the kernel starts tuning off unused resources
IOW everything is already up and running and this really is about
avoiding turning things off.

Regards,

Hans




