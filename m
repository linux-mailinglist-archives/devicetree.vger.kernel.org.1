Return-Path: <devicetree+bounces-269574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOkMJGT1ommG8QQAu9opvQ
	(envelope-from <devicetree+bounces-269574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:02:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD391C36C9
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 89049300D752
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D62A2EC0A5;
	Sat, 28 Feb 2026 14:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Xv8tl3Dj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31BE2116E0
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772287326; cv=none; b=S51HCx5E54gHj9guMswl3P/D7mgnYft/ZpmCnvJYWmO1YIjG6XcaEniL6q8Dl2tu5GK1MyLkGqHdrtlepe1WDXTs3EDdCDwkB0hvjf0NBkGjX24mGWIWQKhxxqp7vJlCIZUrQxte6865/c2SascmLurgp0p+EsSFI8JYdJqdAPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772287326; c=relaxed/simple;
	bh=8lygiRQl7FY7kXwyjax2H5VFNAoaDwEKoACxyphEGq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C6nvTy2SOShBUk6QF3XGSiakmPDl2FWZc0FI0C3Iokz0Z9bEK9Sk0i9DFEE2GkUD0xHVG9vxqTpFaZmF+xFYdwFuUwzWyTSlMJ3NRj/VLJdfRWgmRTf5n75aLoPqoyDhWp7dbFXxcqC+CEChKxv84kv7w6AbJ6dwg0/i6ZWBKL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Xv8tl3Dj; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48371bb515eso43414575e9.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772287323; x=1772892123; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WlFw9E7/7safVoQdTcstXfBKsD2ksjVuQBYYKWaTUKU=;
        b=Xv8tl3DjcaOUb+5ycKH3JbB8CjXz2IvrNBuVpUhTYKL8LrDkaBu9/JL8W9f/4BlJH9
         lBUXcuScXzdzda02lFVdvD/MaVRExtTx4zG49XBcU7UT3tB9JQFBievK8BkU+3E4V3Wy
         O22f3vj3fdHoO6xVkXtoRFRlTGCzkHg0MJmfWWzFbyrH09DTJM+lw5VqiyehDo9YntSU
         EbUMu6mRSf5mEVLf5QjAUMAJJrfuUR8gOF5G1W4z7T8U96PiK1kK+yUJ5FkLCfTEe51Q
         XxDuhGDiddDeqzNSwFqT5vROr5Vs3tHlN21drswkeAn9he1FmupZpPnjjq/7QmDgq7Aa
         /ZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772287323; x=1772892123;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WlFw9E7/7safVoQdTcstXfBKsD2ksjVuQBYYKWaTUKU=;
        b=w7JNw8J/zHKNnsFqGgfSfJai3MG5coQLqbnapoiKJiynnx9rtTECmOclWm6JeeXdF2
         h5JDNB29Explfc0CeHSM6LwrSwF5CUm8OvSyhtU7gi9fy16e9gUxKRleg7ZrYcz+aedH
         AicKL9FrKblnB4saGpaLM9np6qbha9x4DW7S2nbDe8egF7/7cXJ18ar8OU+0POYsd48g
         LQKOAitVHUmStbraTjrwXPUqEmNiMlba9bBb2CSYy0xr/LdJWSD7ipa+XGnccGByRzf/
         Ly7LkIiIiopZDd/UDO0JPkfq4RF8aadMlC5z7uBR3nscf5AsjlIAMIWPADX6IFMrkIPq
         1G7A==
X-Forwarded-Encrypted: i=1; AJvYcCUS3p1KGC/O1+OJ3mJd3cMaoA91aRzX9G2+He/PlLQuCc2BQWRDI78ATKV7PtHXcWvPOGoCnUj5mNGM@vger.kernel.org
X-Gm-Message-State: AOJu0YyOK9OR2jNPsm5gpBaq4VSi3/zD0tfNstr5M/4zN6ZlM6OiLxzr
	wv49yH/0OWJuWEXc3a/hKjqbmMULI7cAWQXGuiyGh3fjECegDNIfvwUFbIRWG8nKCFs=
X-Gm-Gg: ATEYQzysdLG/LY+5n0jlmZeDX3LQePxvS9fch1bptlSh46J7y8I7IJB5gqwqtv18JPJ
	bflDPCvtn/nQ3aHcGO6wwIVGKEqygHPJsWbHMaHd/dPYZDRBY8rD/1f9MehE0uXyEgiLleLd3/0
	K/ZPR92r+CxVQwTXIPxvbOqnRhQnTVKXtcdj6p+GFpJ1zHR9O+sIGQxM4ZJXSWC3elUykoD/cdU
	wE9uqD9O3tq3FMsFNRXtcOG5FnCxkiXl70biRFcPMqUuxQBJHwTIm0Y6FyZumByWfkZyQJH+ypY
	EyC5V/mC4OgYt+1YS6NqWq92BZVPNMxvPyWuNodngzPACpbNbB49O9q8ZIIUqIUjLB8qfnNXtlA
	oylfOS+WHv/mcULMqHaL4+OOsBj8YfK8yQVTWjSDmRflOk9MnAk/csJDrFoZPsyDaiVxOKcmCDO
	yY6qkndpnZvkujShYjDZn7NiPTwfIlfA==
X-Received: by 2002:a05:600c:4748:b0:483:c35d:367f with SMTP id 5b1f17b1804b1-483c9c0ba58mr107075855e9.21.1772287323090;
        Sat, 28 Feb 2026 06:02:03 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcb318fsm133468375e9.6.2026.02.28.06.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 06:02:02 -0800 (PST)
Message-ID: <26f0d6e3-f62c-4a4e-8e35-37f2e5317087@tuxon.dev>
Date: Sat, 28 Feb 2026 16:02:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] ARM: configs: at91: sama7: enable config for atmel
 maxtouch
To: Manikandan Muralidharan <manikandan.m@microchip.com>,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 linux@armlinux.org.uk, ebiggers@google.com, martin.petersen@oracle.com,
 ardb@kernel.org, tytso@mit.edu, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: Romain Sioen <romain.sioen@microchip.com>
References: <20260225085430.480052-1-manikandan.m@microchip.com>
 <20260225085430.480052-6-manikandan.m@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260225085430.480052-6-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269574-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[microchip.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,armlinux.org.uk,google.com,oracle.com,mit.edu,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,tuxon.dev:email,microchip.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5BD391C36C9
X-Rspamd-Action: no action



On 2/25/26 10:54, Manikandan Muralidharan wrote:
> From: Romain Sioen <romain.sioen@microchip.com>
> 
> Add config support to enable maxtouch capacitive touchscreen
> 
> Signed-off-by: Romain Sioen <romain.sioen@microchip.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


