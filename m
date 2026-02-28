Return-Path: <devicetree+bounces-269571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDQhKSb1ommG8QQAu9opvQ
	(envelope-from <devicetree+bounces-269571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:01:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 050381C367E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:01:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A09C6304AAC4
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD81529AB1A;
	Sat, 28 Feb 2026 14:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="JiMzBm3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1242116E0
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772287267; cv=none; b=X+iE6p18P1B2YgErsQb18zg895ezFmAtr5LMqdFrCksF9aEfePkTsZnyL0z/HsZC5u0Lj+b44tTvkNaRSBe7hQkv/HuOSmk/dgm+VO7S7gX3IF3ugowgHxrRwi2CU6nZrCUql38+Ftz4jjDJONR0zyjMmAv5kvUf2ey8tdFYrAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772287267; c=relaxed/simple;
	bh=9sWUQIz1OYfqSYBCK7Eycc7MLvZD+LcyURDj15CDYUc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=agbYIWwsChm6q2IabDAEECoZuTQcGo2nTc4A+SjjeVOUCF24PRmSrYGjasoL/2OKWxUGrJeda3/XbLua/fX9WqRsDugCTOVJr9YEmjlPE+Iynz+8eH7YZ4fLM2AJ3mSHxyB+Cruk1kawXrNB1l9o7a0NmnNvTjDBBVN5W7WvsCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=JiMzBm3a; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4398d9a12c6so2308017f8f.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772287265; x=1772892065; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z8ilFU5WuG18swnOUDhw7CL76xSB1EetAmw090m1DI4=;
        b=JiMzBm3al3Jn2M28i2VJR99TNQHdIemOSPMoVg/BbbNWvFbHPQXuhLtK9UcmH+ZWQM
         W85/mKu3lkqqNKLxi6Ha65jBvSd4t+sFqem9oAq8gRLuWVZaDREmKEp0a2ceCVhfVSxg
         1BprmtF2nhdI/NxKwPACs4F46+9PZv3jXek03VWpdb7Z40kXEesI39qDKRvkGC7S6Q2r
         zcfUfYdx3mtD2CmTZQvenSO4JGEZwHSgq5BFixBj6lmwdSs3GPLTVG+BKefCEBuXuGYD
         ucwBC1WCPwDPavEj4Ig6jVKlFz2XDOAfFqvVa9ip7iF6+r2008FV0Oez+xhG0DarGzYj
         Kk2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772287265; x=1772892065;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z8ilFU5WuG18swnOUDhw7CL76xSB1EetAmw090m1DI4=;
        b=CscQkFQNu+gGeV5hP3eAqdPCFXzkfDgbmefvaJjR0vWQgTcgMr5zvCCDhQOv73fyXB
         PQegRMY8ItLUwWjSDNvZmMQG881TijBnDBzIfm+RCf1Lqi97J+J8GITgxMB/umIC8dX7
         ktzjL3ZihpteJQuxf27FHkwiTlkp2VwHzbnxKcRCPIEzEoYHSOY+EBmvVoN+E3jWMXy8
         AA+mV7ryG9nP1pHb/wNDv9tBRD1082c5ncguzRVLGeG2kMigi7tR3y4Scy76XMiuRZnk
         URIByr9b/rCko6ZtC/51aZtd4EA6doOJIa7wXwhTOTivUxt7icxLMFLTLl2AzKBm4ALk
         wzfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq48p69KPrePM/0fA7L1piREcK3opBCNPTua8/1mF3mHcCpfMvkE55d03MsPtn3agV0OM+RbgxwzGO@vger.kernel.org
X-Gm-Message-State: AOJu0YyFbgLrLXzWDbtsQl51kSAGfhrfJkxRC3k4ZhkbotGMkIWJ99+H
	GD6aMxW9Oy64qx13w+PZOHlSn34NU1CeBj/e3wukFL/NJBufqGIpVRiJZVnOW44TcJw=
X-Gm-Gg: ATEYQzwMwNK2ZfdRMCapZVbGCSe7wKQtvXoil7I7CWFwWd+psx5iV8vZpbd8MZDRDe5
	mtPQeTcU/QDBQ2SnZJbw8AaKgceFpzLbut0y2Yj691kAPUT11shJ8+DRXh6v5XNcPwum5oQ3Tm/
	7JwZjx7Cd+dHnwYrfnrjI34SEWnc620vnwgl9wefbaz3WzNdcwlP885ZvtNz4Hs8y8ZAt2aVZP/
	qXe+kRkgukcdUmvQzfRU5qJDRKajqLw5FizSkaQsLLZSsG1Ehobb1raytHn2yl/3yD2lACvCmL/
	OKnBzCdIw60S8hXFCUTFsjwQvCpCr2cKAUJpbOiC67KwTCmCXcHTwGvKICtS2Deubi/z6WbKEDH
	t+kx3SkwE9TY5pCFNEeamJxVEwldmT2HfXZaJgJCDZTsc8yX7/XJZeVwX0r8rOQNugeqB/nT256
	/yFECfzWxyOOsJ7l80mkIfT27Se0r5dQ==
X-Received: by 2002:a05:600c:83c8:b0:47f:f952:d207 with SMTP id 5b1f17b1804b1-483c9bde71amr115364265e9.19.1772287264671;
        Sat, 28 Feb 2026 06:01:04 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd7507adsm310079535e9.9.2026.02.28.06.01.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 06:01:04 -0800 (PST)
Message-ID: <b76b271d-5249-4e84-b10c-f9b364b08b3a@tuxon.dev>
Date: Sat, 28 Feb 2026 16:01:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] ARM: dts: microchip: sama7d65: add LVDS controller
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
Cc: Ryan Wanner <Ryan.Wanner@microchip.com>
References: <20260225085430.480052-1-manikandan.m@microchip.com>
 <20260225085430.480052-4-manikandan.m@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260225085430.480052-4-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269571-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[microchip.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,armlinux.org.uk,google.com,oracle.com,mit.edu,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:mid,tuxon.dev:dkim,tuxon.dev:email]
X-Rspamd-Queue-Id: 050381C367E
X-Rspamd-Action: no action



On 2/25/26 10:54, Manikandan Muralidharan wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add support for LVDS controller node
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


