Return-Path: <devicetree+bounces-269575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEuMI3f1ommG8QQAu9opvQ
	(envelope-from <devicetree+bounces-269575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:02:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3121C36E0
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F6753079BBA
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D242BE02B;
	Sat, 28 Feb 2026 14:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="MRoVmsVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBD732B99C
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772287348; cv=none; b=ZZj3O5eRvPDihqdGp6lq1qOP958QVofu9hAhVDg38pd8iQ+0D9Ag5MRJzYB6r694n+UUTFhM1aEA8ucsmXwPMhYQItcCDrS91ZlMAJ/HIr7Qna9pFROkNJ4GcDD7Qrnof9TDwhEQiBLPyHapw9HUskt7diD+GiTQhJqCysUvsGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772287348; c=relaxed/simple;
	bh=AbrZpPgotCf/jLX9aFCnN5As/CKWvjrRZvyFcku4Zhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CWiYlEKlyfAPxgil9rUpCQ5XFUhRbi3kWsvxW62FXzLp/m4w96IqCQiCrAqngggVucUzR+RI45/kdM3f4mqtzYBUfD8PQC8l3ZzNNHDzNh+5uA10mINYX7iU/sLUj3cIaDGJ60G+SWEaPrmzyHYxqa3BIDz0W+/X4Vae0gRqk1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=MRoVmsVI; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so34474925e9.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772287345; x=1772892145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sE4wHOtl4QFDYLaI8Z+N6cuSjBv02ee9bfXFs7o+Rlg=;
        b=MRoVmsVIsNyBHLD8LjegxUbtZz7IJzMLDkGdp8sYbzomS03DwnB9Or5OWPBMT8W0uO
         spwMfaaCZjMM//VkVqW/yayb1dRTJjUOlizM0uB3Gaddcdlkm920+6ZbR1Qwq8naICn0
         UjMsdyOa9UEzFNJX4bEl7q0r8gGstxrmVArBYPIum0UomKwhM78gP6VIq/aAvgJCZtnN
         wOrp46RRcLP1VKiW6SWgvKa+Xx30AY5AT6NBxotA0VL70PbsaLOCEs9WwyfgcGcXHRu0
         Do7ImiDlAdmEgxtfxMOKUK00qHejjrKwDwRABRrE52v+gPtLsSwfj5TIpwescp2ThbTG
         itQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772287345; x=1772892145;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sE4wHOtl4QFDYLaI8Z+N6cuSjBv02ee9bfXFs7o+Rlg=;
        b=gMvWodmr/+v+Gjw+2HEIP9ij8zt4wqNsgEk0OfF66WJA3jsRV14vB/PWWB2bgNPbyL
         1P/2Eg1RFMx5U/Ft/LcEeP7CNkjEWL4MsPD0+kfjdRDZm6LqdUCAD81kS/AnsEZMcnJ/
         jUFaJa/XpMX40m/xUdMaYByvHlnyrD6DistXu9ohQq5DdldvEoINUJtoIzERC/V6cYI6
         WHOc1deEtrElakBbd7R+BmYIfwSvs2+UzaktuXlEo6h8Zrj+dbQAkbOOwLc15TFmGkw4
         kj0njSZCPWGflpukK+597NiQzYs6Y8p88Sosf712xbkJT6UmLDRXSGA7ZMaUddz0ublB
         xTcg==
X-Forwarded-Encrypted: i=1; AJvYcCW8Y8g6tD8x6jfEkPYWKulNXVW4Ejkt4MVtb/c0P22WPcVnsfGk451ruD+F5hsAC8RJy3mG0mESz/vA@vger.kernel.org
X-Gm-Message-State: AOJu0YxYvV2oHrWRtVsKT7+T+m8hQv1IFURG/BJ8o7JETLkY3vigz7Ol
	KOQfOX+omTPmyoxUcmDEiFPD0PZ4rU+y1T1ZtLCkphZrrD+YTLzWJwXxo0jI0hzaCLU=
X-Gm-Gg: ATEYQzyJKyVMDouF7yviVMSrpheSdWS0dNRDUFXH6a7f4jaRYJI63MHr4kjH/m1w2l6
	4+yb5KfSb7NnnamZJGft79Su27MflS67007NIeOGarF/qsmApxvhK6yTdEBYBp2VMk61+ckYlGs
	JjhOl6w5NDALbJy2RGof3QgyJIELTddIILh6pb15XHTr8TiedXwy3xA3hFtI0nvt8Fk157gWdoH
	l7qLVraiL4i4jFbyqZjAQaeBhFOIOeUggVPd2Zcou9yHEmWQjsuWJ4ytzMZERhrDoBa6uZc6kgQ
	TJYm4mc18GsL+7aPTdW7AWRnEeX6/MQlDNB8C34PmvNdZicl9OK0ZqHB84N+XBBB6kKzOULcUHt
	gV9Ya6zYb4NohZat+Ao0g/Ddxm1lZyGVN1o4bCrjMeZzi2U/CPlm2i6sf2XekYgI65OyKucZzKQ
	WLiu8mSFzpOqAGaYnLNrHhSWNTXD+Qnw==
X-Received: by 2002:a05:600c:4e94:b0:483:6fc6:1e20 with SMTP id 5b1f17b1804b1-483c9bc0291mr95806085e9.9.1772287345117;
        Sat, 28 Feb 2026 06:02:25 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb789efsm144734705e9.2.2026.02.28.06.02.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 06:02:24 -0800 (PST)
Message-ID: <9b88e1e8-bb9e-4b79-b722-72eb66a9309c@tuxon.dev>
Date: Sat, 28 Feb 2026 16:02:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] ARM: configs: at91: sama7: enable LVDS serializer
 support
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
Cc: Aubin Constans <aubin.constans@microchip.com>
References: <20260225085430.480052-1-manikandan.m@microchip.com>
 <20260225085430.480052-7-manikandan.m@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260225085430.480052-7-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269575-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[microchip.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,armlinux.org.uk,google.com,oracle.com,mit.edu,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,tuxon.dev:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: EA3121C36E0
X-Rspamd-Action: no action



On 2/25/26 10:54, Manikandan Muralidharan wrote:
> From: Aubin Constans <aubin.constans@microchip.com>
> 
> Add config support to enable LVDS serializer
> 
> Signed-off-by: Aubin Constans <aubin.constans@microchip.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


