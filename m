Return-Path: <devicetree+bounces-191005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B792AED791
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 10:41:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 381AF3B7650
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 08:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E91B2238D42;
	Mon, 30 Jun 2025 08:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bEdOZ2Qb"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8D923F40A
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 08:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751272854; cv=none; b=SbX6lDmuuwNpqJeABY7Fll9M03UregkuwOMHTLG/Loj+Ud+nUBkpVyahSHIxTIB72pb5OmWZacVyflwnzP+id4QtNncH0w1V8mXdDhTw0NPCdv+D+DYQVdKdiWAp74WIlx50vRjSSknn6/PxEMNjWYGivpTTRJ5WhVpbIrqLT50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751272854; c=relaxed/simple;
	bh=TtvZmKcu5ULV30hDwJa7QtVvX83gJrgmBcIfmoYQekA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mg5Zhy8BncG0PS17l39O+BYP9ALvFr46pogns9WzebP7QqLKO0iAJlNoPTBPgiBXDFBQyLUFMymbdQjhWdgzbP3y5es1+TwP8ZMinycOR/Gs3BlakuERUal9V6yH6OwyslFBAPx9BrdTtJZ/Qtb+LRnaxP+bj9pHOhJpWsxG1io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bEdOZ2Qb; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751272851;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GbzS3/7wOLVYMQM7fq09DAq/NtYuBLxSJ0uQz6yllZw=;
	b=bEdOZ2QbURuCrL0henTaYx9k0jVwKM/+YJB/lPFgGN0LpbG3GDA6r3JJaD52cHOuneYS1j
	zqXHf7CmZlxRnpBqy5JAZPqwtfE0rX6hwmRV/KYa7X8tIlOJL8zvqtIcZ+pMANQnEEcMDN
	8pPic97UcCtiMwnJRa83XF5E9Z3dxKg=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-306-gDmnHxZHMhK6L_Ei6w_bWA-1; Mon, 30 Jun 2025 04:40:50 -0400
X-MC-Unique: gDmnHxZHMhK6L_Ei6w_bWA-1
X-Mimecast-MFC-AGG-ID: gDmnHxZHMhK6L_Ei6w_bWA_1751272849
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-adf58589c90so458645266b.0
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 01:40:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751272849; x=1751877649;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GbzS3/7wOLVYMQM7fq09DAq/NtYuBLxSJ0uQz6yllZw=;
        b=LCUn2w9KxK0ERXnLQvRP6k22D8Y1gGna4bra+1h5mNV8pFYHVZs+O8gAzdSkV8UIwt
         omyCg4FrwdsOB1//fV9gCd7Eg8u2JGvR2dip4iRShRbFM3Qy12avm95UFu27yaeILtwm
         h/kkEdDWOuq64GakDeXfs/trgn473jW5d3v8FtAaXcbbsi+c+MWMe3GEyozgrD+oiHFs
         4+hpJpNf7+Bfv8yHTC2EJACU7pkZc4VPleUCDwFEIJQqfCnOwq/RqbaZZZZx2hWDu2xz
         7UVP+YU2m2y5DcfJjST89PUlthegjrLH4pahkX6KIl1Xox7saghyzFZ0Nht0m7ck+1+k
         Ezkg==
X-Forwarded-Encrypted: i=1; AJvYcCXxHEpb2Qgcnv3Y3ngNSQL2vwWTj+NRW/fG2NLQ8wjHYSR+ykYpa6Sxwv5JBv+3233S5laiFl3blol/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+I2dZqznUK6/QT6gIthjTn+H8/knau4Tw+PJCVXoWdseY3EPg
	EE3iVzvfTiAkBJq3OlWvEioh1WChLhGnby//wePDHzZikQzop/Kn1ZBql45PMDedblAZf6n3bRb
	QfKqSMTogSgS0XdX4BoPQPBpIInYXcFizZsIxOyQsfzRClt9TqXyoa2YBEKidBTA=
X-Gm-Gg: ASbGncuDRRl2OCtX4h5CQETOtg1d4/zsdx74zbLGAs69fW6IefYHaHBXroBVAhFQqXE
	k/Q8blNOVg1FeRvdV7etjrVYXlOe3DA4F93wzEObZL/d13U99RlWivShmDPujjFhnL9o5de6KtW
	WIkrvDJLgjZhEtUTG9Y15xo32zxTZWEhJVtI1UVTW0EJoT3o3Q8ITDFB5AcLeAPFDk0+urnknCZ
	42EKDdm+1aFBCaputeuJu4j7hfYc2P1jVTlZBtys4BQ1SyzFzyYz6QsD/UpUXXdTIouqCEsQi4o
	VcudlgelLECAK5xCKTjoUpm7XQtckVIKKTnzAL80pGGsGLnD7+FY0YLEqljyYispjvsApAFzTxP
	WBQZ12GXD2BW0XxabxgIpBGXInQAvU5mMYMeX4+DoPmTQTLWIK2iYxhChT+mtEbgVCen9ONI3aA
	==
X-Received: by 2002:a17:907:3c91:b0:ae3:61ea:31b1 with SMTP id a640c23a62f3a-ae361ea3303mr1065073066b.12.1751272848986;
        Mon, 30 Jun 2025 01:40:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/y7vOHMHZ5AF4xuBNceBfPbSy8M7ATw5UKXH09WWku0rRQgHald4Jy38PCYx58QuWLBfH7g==
X-Received: by 2002:a17:907:3c91:b0:ae3:61ea:31b1 with SMTP id a640c23a62f3a-ae361ea3303mr1065069566b.12.1751272848439;
        Mon, 30 Jun 2025 01:40:48 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae362cbf19asm547457166b.128.2025.06.30.01.40.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 01:40:47 -0700 (PDT)
Message-ID: <e534d496-6ce0-46c8-835d-94b3346446a7@redhat.com>
Date: Mon, 30 Jun 2025 10:40:46 +0200
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
 <8a3ad930-bfb1-4531-9d34-fdf7d437f352@redhat.com>
 <85521ded-734d-48e8-8f76-c57739102ded@kernel.org>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <85521ded-734d-48e8-8f76-c57739102ded@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 30-Jun-25 10:24 AM, Krzysztof Kozlowski wrote:
> On 29/06/2025 14:07, Hans de Goede wrote:
>> Hi Krzysztof,
>>
>> On 28-Jun-25 1:49 PM, Krzysztof Kozlowski wrote:
>>> On 27/06/2025 11:48, Luca Weiss wrote:
>>>> Hi Krzysztof,
>>>>
>>>> On Fri Jun 27, 2025 at 10:08 AM CEST, Krzysztof Kozlowski wrote:
>>>>> On Mon, Jun 23, 2025 at 08:44:45AM +0200, Luca Weiss wrote:
>>>>>> Document the interconnects property which is a list of interconnect
>>>>>> paths that is used by the framebuffer and therefore needs to be kept
>>>>>> alive when the framebuffer is being used.
>>>>>>
>>>>>> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
>>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>>> ---
>>>>>>  Documentation/devicetree/bindings/display/simple-framebuffer.yaml | 3 +++
>>>>>>  1 file changed, 3 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>>> index 296500f9da05e296dbbeec50ba5186b6b30aaffc..f0fa0ef23d91043dfb2b220c654b80e2e80850cd 100644
>>>>>> --- a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>>>>>> @@ -79,6 +79,9 @@ properties:
>>>>>>    power-domains:
>>>>>>      description: List of power domains used by the framebuffer.
>>>>>>  
>>>>>> +  interconnects:
>>>>>> +    description: List of interconnect paths used by the framebuffer.
>>>>>> +
>>>>>
>>>>> maxItems: 1, or this is not a simple FB anymore. Anything which needs
>>>>> some sort of resources in unknown way is not simple anymore. You need
>>>>> device specific bindings.
>>>>
>>>> The bindings support an arbitrary number of clocks, regulators,
>>>> power-domains. Why should I artificially limit the interconnects to only
>>>> one?
>>>
>>> And IMO they should not. Bindings are not supposed to be generic.
>>
>> The simplefb binding is a binding to allow keeping the firmware, e.g.
>> uboot setup framebuffer alive to e.g. show a boot splash until
>> the native display-engine drive loads. Needing display-engine
>> specific bindings totally contradicts the whole goal of 
> 
> No, it does not. DT is well designed for that through expressing
> compatibility. I did not say you cannot have generic fallback for simple
> use case.
> 
> But this (and previous patchset) grows this into generic binding ONLY
> and that is not correct.

I think that it is important here to notice that this is not
a generic fallback binding, this is not and will never be
intended to replace have a proper binding for
the display-engine.

This is just a way to give the kernel access to the firmware
setup framebuffer to e.g. show a bootsplash but also fatal
kernel errors until the real display-engine driver loads.

Note sometimes the whole framebuffer memory is not touched
at all and the sole reason for having a driver attach to
the simplefb node early on is just to keep the resources
needed to keep the panel lit up around (on) until the real
display-engine driver comes along to claim those resources.

This avoids the display going black if the display-engine
driver only binds after the kernel starts turning off
unused resources, this typically happens when the display-engine
driver is a module.

>> It is generic by nature and I really do not see how clocks and
>> regulators are any different then interconnects here.
> 
> Yeah, they are also wrong. I already commented on this.
> 
>>
>> Note that we had a huge discussion about adding clock
>> and regulators to simplefb many years ago with pretty
>> much the same arguments against doing so. In the end it was
>> decided to add regulator and clocks support to the simplefb
>> bindings and non of the feared problems with e.g. ordening
>> of turning things on happened.
>>
>> A big part of this is that the claiming of clks / regulators /
>> interconnects by the simplefb driver is there to keep things on,
>> so it happens before the kernel starts tuning off unused resources
>> IOW everything is already up and running and this really is about
>> avoiding turning things off.
> 
> No one asks to drop them from the driver. I only want specific front
> compatible which will list and constrain the properties. It is not
> contradictory to your statements, U-boot support, driver support. I
> really do not see ANY argument why this cannot follow standard DT rules.

So what you are saying is that you want something like:

framebuffer0: framebuffer@1d385000 {
	compatible = "qcom.simple-framebuffer-sm8650-mdss", "simple-framebuffer";
}

and that the binding for qcom.simple-framebuffer-sm8650-mdss
can then list interconnects ?

Regards,

Hans





