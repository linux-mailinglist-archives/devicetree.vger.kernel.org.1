Return-Path: <devicetree+bounces-57255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4F489CC23
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 21:00:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6047B2342B
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 19:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2D6144D2F;
	Mon,  8 Apr 2024 19:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="khSkZkZh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9B4144D03
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 19:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712602827; cv=none; b=amXebn5js1fNf56Vwa408q4blTY3Bf8nq/hYyzvkkypy2afvoIK/cF5txyUHAYGgrK5OBjduFUxWlsM6P/bEvIolnCZ9PU8rcSuZzoYYjlCHIgl8882dghTMArFBOBRIBwnn5VblkFZY5pUZ+8yQPW9Q+xb7voudCzd5B8bflDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712602827; c=relaxed/simple;
	bh=MmTPLttEIByz3LcD95QHq50+7IMTnEiOpGvyK2OjXoU=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=JxPO3V1UFtAqfZdk51E+v9fnRYKIWfWQxyHd/dciRL35joHEkgWJnQHIVnlIyHCkKmdU+AMVlrwqnsuzJNvKtXioWbw9jGRNRaSgCV2VWESfzLzuGBW3a59L3k7NlqkCArws4epMCqHl0CY7NLhYIarGWJYithEMB2rUNCTJhN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=khSkZkZh; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-415515178ceso31141265e9.0
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 12:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712602823; x=1713207623; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=H+B+dIHSb8yRhnSvIGZyYqGXJXmpVr8yjlKl3yu6l4I=;
        b=khSkZkZht7W5D7HHEZ02e6lzCmKDIDWCOV8BlisozybXgkVco/nvHkS1U/+k4x0O4o
         wr3i0U5WLnmCjHELVFKs0dfn4Uw/oNA/KBKbrWWGBr4IJAv1iHePvf8gWk/V5WrawvwK
         QAUTHOHq/EOmThUtKy18w1cIi/j0iV/BjbGPbFz2XHzR/pRVY5Rut1V2eihT9aTt9clP
         RjNDIRp9Pkexs3Mvm8QEFcCORJ4Zyejoaj2qK07EdwH6a4JXI3XKvQck1CJ+H/8kZ6qy
         rLlveklq2C+hNMD/qQkL+NezsOrPUr2qHn7HuzKAjUW5k8OUmHy3+tM0izKvNP0hi92L
         Tn0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712602823; x=1713207623;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H+B+dIHSb8yRhnSvIGZyYqGXJXmpVr8yjlKl3yu6l4I=;
        b=HcarIyqCKXERAbKVk5B4ohYGTwX6Y9LZwOLVqP/BLhQ9GkHAuQI7IHCjtXxem6RpYa
         vmPdyw16eMrhFj9v3RVeAky3iCEAX0H61Dw3QlRmnecz5A+4ruPr2hjcvdHG9Mw8rtjQ
         +oYxnhtxHN/+Dg09xWevnw4i1MLnZAtRc05AEHW+lBdQzYJqGJ/IOX5cxSbNQOX+b3v/
         luAMFTmkqVLGbvl/om1UGyUu/iV4MZSoOJm7x+pbFpOWOWm3V+4uBB8VqTX690ztCwqo
         JMBeOcWASdbA0nyQylH6JoeT6fsW2NTeFCT/4F00oqqiyakRbVu8AAaRbxVPmeRDCX1q
         Hv8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWeZ0WoVuLLZVLw71LSio8h8CIM6OU1X4appca9bcd4OzLYEGC45rTVH2ZyBqlT+54lhqWMQmVwIpFslkMTQoz4iPYe/uXlJc7ZMA==
X-Gm-Message-State: AOJu0YzEQw/HCTgJC/MsrGGfqAVl4vLaedd0awiuXhRMI3f4cuSiOBAp
	tlyT0fe3qGIRwOUCPEyVWdJt3HOTmPY1u+SG9e9qZjONrkKqNz4mOEhQP2ubPBE=
X-Google-Smtp-Source: AGHT+IGP2XX1WCI1/h92HKpEVxqSPYGzlO2h896WkQD9sJo7lY2DOrCu08c0YYaiv8QAmxpQYmTAyg==
X-Received: by 2002:a05:600c:1c8a:b0:415:666e:9438 with SMTP id k10-20020a05600c1c8a00b00415666e9438mr7600760wms.3.1712602822639;
        Mon, 08 Apr 2024 12:00:22 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:90bc:1f0d:aae2:3c66])
        by smtp.gmail.com with ESMTPSA id j22-20020a05600c1c1600b004165315d885sm7177799wms.11.2024.04.08.12.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 12:00:22 -0700 (PDT)
References: <20240408164947.30717-1-ddrokosov@salutedevices.com>
 <20240408164947.30717-3-ddrokosov@salutedevices.com>
 <1j1q7fpv1n.fsf@starbuckisacylon.baylibre.com>
 <20240408184041.3jcav5tabxiblpn4@CAB-WSD-L081021>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>, neil.armstrong@linaro.org,
 lgirdwood@gmail.com, broonie@kernel.org, conor+dt@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, perex@perex.cz,
 tiwai@suse.com, khilman@baylibre.com, martin.blumenstingl@googlemail.com,
 kernel@salutedevices.com, rockosov@gmail.com,
 linux-amlogic@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 2/2] ASoC: meson: implement link-name optional
 property in meson card utils
Date: Mon, 08 Apr 2024 20:53:42 +0200
In-reply-to: <20240408184041.3jcav5tabxiblpn4@CAB-WSD-L081021>
Message-ID: <1jo7ajof22.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Mon 08 Apr 2024 at 21:40, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:

> On Mon, Apr 08, 2024 at 08:15:54PM +0200, Jerome Brunet wrote:
>> 
>> On Mon 08 Apr 2024 at 19:49, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:
>> 
>> > The 'link-name' property presents an optional DT feature that empowers
>> > users to customize the name associated with the DAI link and PCM stream.
>> > This functionality reflects the approach often employed in Qualcomm
>> > audio cards, providing enhanced flexibility in DAI naming conventions
>> > for improved system integration and userspace experience.
>> >
>> > It allows userspace program to easy determine PCM stream purpose, e.g.:
>> >     ~ # cat /proc/asound/pcm
>> >     00-00: speaker (*) :  : playback 1
>> >     00-01: mics (*) :  : capture 1
>> >     00-02: loopback (*) :  : capture 1
>> 
>> The example above is exactly what you should not do with link names, at
>> least with the amlogic audio system.
>> 
>> Userspace pcm, otherwise known as DPCM frontend, are merely that:
>> frontends. What they do is entirely defined by the routing defined by
>> the userspace (amixer and friends)
>> 
>> So naming the interface in DT (the FW describing the HW) after what the
>> the userspace SW could possibly set later on is wrong.
>> 
>> Bottom line: I have mixed feeling about this change. It could allow all
>> sort of bad names to be set.
>> 
>> The only way it could make sense HW wise is if the only allowed names
>> where (fr|to)ddr_[abcd], which could help maps the interface and the
>> kcontrol.
>> 
>> Such restriction should be documented in the binding doc.
>> 
>
> The link-name is an optional parameter. Yes, you are right, it can be
> routed in a way that it no longer functions as a speaker in most cases.
> However, if you plan to use your board's dt for common purposes, you
> should not change the common names for DAI links. But if you know that
> you have a static setup for speakers, microphones, loopback, or other
> references (you 100% know it, because you are HW developer of this
> board), why not help the user understand the PCM device assignment in
> the easiest way?
>
> Ultimately, it is the responsibility of the DT board developer to define
> specific DAIs and name them based on their own knowledge about HW and
> understanding of the board's usage purposes.

Speaker and mics are NOT statically tied to a frontend. They are tied to a
codec (... possibly). The routing from the frontend to the backend is
dynamic, even while streaming.

So defining FW names based on usage in wrong.
As Mark pointed out as well, DT is not the place for this.

>
>> >
>> > The previous naming approach using auto-generated fe or be strings
>> > continues to be utilized as a fallback.
>> >
>> > Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
>> > ---
>> >  sound/soc/meson/meson-card-utils.c | 12 ++++++++----
>> >  1 file changed, 8 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/sound/soc/meson/meson-card-utils.c b/sound/soc/meson/meson-card-utils.c
>> > index ed6c7e2f609c..7bae72905a9b 100644
>> > --- a/sound/soc/meson/meson-card-utils.c
>> > +++ b/sound/soc/meson/meson-card-utils.c
>> > @@ -94,10 +94,14 @@ static int meson_card_set_link_name(struct snd_soc_card *card,
>> >  				    struct device_node *node,
>> >  				    const char *prefix)
>> >  {
>> > -	char *name = devm_kasprintf(card->dev, GFP_KERNEL, "%s.%s",
>> > -				    prefix, node->full_name);
>> > -	if (!name)
>> > -		return -ENOMEM;
>> > +	const char *name;
>> > +
>> > +	if (of_property_read_string(node, "link-name", &name)) {
>> > +		name = devm_kasprintf(card->dev, GFP_KERNEL, "%s.%s",
>> > +				      prefix, node->full_name);
>> > +		if (!name)
>> > +			return -ENOMEM;
>> > +	}
>> >  
>> >  	link->name = name;
>> >  	link->stream_name = name;
>> 
>> 
>> -- 
>> Jerome


-- 
Jerome

