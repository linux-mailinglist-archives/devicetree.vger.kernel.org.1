Return-Path: <devicetree+bounces-322305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DSQ8EgdNTWp2xwEAu9opvQ
	(envelope-from <devicetree+bounces-322305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:01:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE2171ECD0
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:01:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=VW6kuO7v;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322305-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322305-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11501303433A
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 19:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE4FD35B645;
	Tue,  7 Jul 2026 19:01:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509CB392836
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 19:01:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783450865; cv=none; b=L8y8LSktvVlrml5NwSAlt9jQoWzbRwLaRyniI8TTdWumf5q7Pvpc3jskL9BgiCFs8kXVfOVIGGrHdQQvOQJiFXjTN5IpjRIpfjm360m2U5uxNoKXeozePx9CTykaBQKMi/soESXCI8354HoxPnWQbDxFsVe/ck0owHU73+CcwCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783450865; c=relaxed/simple;
	bh=IwcMHfwnLLFVSsitBehmP/d9zkapDiPSC74fJVhWDKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MduiWqaF1eNfeYc2/6sgaKXPq9dynpQJ1Yx2Jnh15MA76KE/RxrZGdeE4RsjsJwLoODsrW49XS88HCeHHo5FWCmFQJ2LkGlJWVSC/iUshQ8FRa9jGvQpm3vLzK3ugzVNUwRsk1V5cQXZ8LccZxEhwcRpYUai5Q60s75nljZ85WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VW6kuO7v; arc=none smtp.client-ip=209.85.128.54
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-493c52cde9eso44382725e9.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 12:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783450863; x=1784055663; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9U+Mm7+UlibCZMW00t912Atja0ya4M2ty/S6lVSlezQ=;
        b=VW6kuO7vIsosZGAPrZvJUoT+aOdwmwXLQF4BP9aXD+/MNZapccZic9rAIk3JzjzgJu
         HYs+2Y69Ps+YM81PTyVPEb8dLiOsTouN+NJL8P8dFzgJPbQZENYIX24NKPmKT8Sf9Gyq
         jFP/Xj/t/JjKZ0v/XdC4lwbZSS7gXfxPS3G3uWKUrf44yezxOsPwYWWjbzTThtprmgUw
         h9GzS4TqR7UyYIeMdZRIZpwDr/oKRTpas9mi6/UaJpaSp7Uh+VSfDmg+xCwBtI1PaF98
         oJXcmf/EM7VSDtZb6XAuaT5DvoFdgzycit1O7wNRpAwqVyILoLddczUnzkiZt/XUu+Nr
         PMkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783450863; x=1784055663;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9U+Mm7+UlibCZMW00t912Atja0ya4M2ty/S6lVSlezQ=;
        b=mblJiQxjk8LqUNIp6cNtY8ZRCkw+IH7tSHeDksiwRJ41wgoazDw57yfUCGYy60ZxFo
         AyEDqxeYWBrTg7mfw4ywehGIWYUJjhlSUwkfQmIFbDr0MyDvZqVCVmeJvKoqs6jqufJ/
         +TjGceczgg5/nNlYXHHGjfOIAFBlMEgMFbIBfYVZCyjHeh1spFZn3v+NvJy2NUawGYYF
         jqZ/nJm8efBVwYv6ZQlEtNndQCy58/JIwbWbDH5nRUhM3BmsSVwMGUnVsVTqT+DTh03r
         LsZcmYBEytJus6q9EgJ9Jdyk1jZ+GqhJoOe21b2qTIdzgchQs7DBBdcsy6WJ0mZxzaBP
         XrMQ==
X-Forwarded-Encrypted: i=1; AHgh+RpS+tV7kehiFtYOVrXxCCfuyoQvhVJT2x/XJH3nNUYZaw1c/zLO3MhD12FrQoscMA+KKGp1wWzIpvAt@vger.kernel.org
X-Gm-Message-State: AOJu0YxnJblCuZnRdpd1VtEnMtzyWKdxchxTx0lKQVeAPhEAEbX/sE9V
	QRgHJl4JUGgCbyVJBfTt2fzm7V5bUrjjRfEvhaXnSkXQhkCR67ohtp1r
X-Gm-Gg: AfdE7clGmORlZ0TVys48SZpjAbcvulM0yNWVMSiSTtoE3xr8m8U6FHpbVIJFv7dXSzp
	qgj/d5cxusbWMEVzEU40ZcJZmziiXwY5EvbZ4qGNMF6jnfQxtW6+459hP/bLnrNrZsPFOd6HLlO
	on6fPRN/qtPzrrRWWh9mN2lxWyS8uCe0hAxgElb53D1/HE4mVtQeoPfbug9o31JmVkD0y4yFSp5
	jZy74sKxWY6cjRKo/Kge/LZ1NMc5rf4VOVwG70j8j2MQ4mab2UlGcAu7QPsczD1RQxqLjl05Kh4
	a0vUBHz0vXiDzeqn/Klil8LvIreA9lMfbuQ9L5O72C1WyTWGMO6aRPseCyciqQUQvBVDXlk2APE
	AIEkF1dKkYN+pdQrzCK5bvKNx7zStowuEoMcNfLXhELmCeMjBO7sSq4qn6WQXZGbTij6xK2AmFt
	zbq/+4UQfDtgdad0iKlX9QwrKp
X-Received: by 2002:a05:600c:8b6c:b0:492:4a50:41fe with SMTP id 5b1f17b1804b1-493df092ac5mr73198175e9.22.1783450862462;
        Tue, 07 Jul 2026 12:01:02 -0700 (PDT)
Received: from [192.168.1.10] ([95.43.220.235])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493e0f5bc78sm90260455e9.14.2026.07.07.12.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 12:01:01 -0700 (PDT)
Message-ID: <81a7e0f6-8731-4bae-b06c-932f5c57d4dc@gmail.com>
Date: Tue, 7 Jul 2026 22:01:00 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add chrg_det
 interrupt
To: Conor.Dooley@microchip.com, conor@kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, aaro.koskinen@iki.fi,
 andreas@kemnade.info, khilman@baylibre.com, rogerq@kernel.org,
 tony@atomide.com, linusw@kernel.org, brgl@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
 <20260706-visitor-calorie-b805ac5af970@spud>
 <2b192691-54d8-4449-a18c-b87266c6c73c@gmail.com>
 <dad556ba-5965-42a0-b78a-2d417b2f6837@microchip.com>
Content-Language: en-GB
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
In-Reply-To: <dad556ba-5965-42a0-b78a-2d417b2f6837@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322305-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:Conor.Dooley@microchip.com,m:conor@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:aaro.koskinen@iki.fi,m:andreas@kemnade.info,m:khilman@baylibre.com,m:rogerq@kernel.org,m:tony@atomide.com,m:linusw@kernel.org,m:brgl@kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ivogdimitrov75@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivogdimitrov75@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CAE2171ECD0



On 7.07.26 г. 12:58 ч., Conor.Dooley@microchip.com wrote:
> On 06/07/2026 22:25, Ivaylo Dimitrov wrote:
>>
>> Hi,
>>
>> On 6.07.26 г. 20:14 ч., Conor Dooley wrote:
>>> On Sun, Jul 05, 2026 at 01:11:02PM +0300, Ivaylo Dimitrov wrote:
>>>> The CPCAP USB PHY driver uses the CPCAP charger detection interrupt
>>>> for DCP detection.
>>>
>>> This is not currently true, the driver does not look for this interrupt
>>> at the time of this patch.
>>>
>>
>> Right, this is bad wording caused by the fact that initially the driver
>> patch came before the binding patch.
>>
>>>> Update the binding and example DTS to use the corresponding
>>>> "chrg_det" interrupt name.
>>>
>>> Sounds to me like this new interrupt is optional, since until now it has
>>> not been needed? The patch however makes it mandatory. I think your
>>> driver patch also makes it mandatory, which will break older
>>> devicetrees.
>>>
>>
>> Oh, it is indeed not needed for proper DCP/SDP detection, after some
>> experiments I was able to teach the driver to do proper detection by
>> using current interrupts only.
>>
>>> What makes this ABI break okay?
>>>
>>
>> Will send new series with schema/DT patches dropped.
> 
> I think the devicetree patches are fine, provided you add
> a minItems of N-1 so that the new interrupt is optional.
> Dropping them would mean that the documentation for this device
> remains incomplete since that interrupt does exist.
> 

Ok, will add that change in the next version, however, I will still
change the driver patch to not use chrg_det interrupt.

Thanks and Regards,
Ivo

> Cheers,
> Conor.
> 

