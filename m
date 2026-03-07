Return-Path: <devicetree+bounces-272449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AMsApo3rGkbnAEAu9opvQ
	(envelope-from <devicetree+bounces-272449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:35:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E49BC22C307
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3895D30197F6
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 14:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26EEF38B7BF;
	Sat,  7 Mar 2026 14:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Y14Oq9+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21E029D277
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 14:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772894100; cv=none; b=ZDCeobP68zzGWqP9GYty5bcT6FuVgI2NrOIEwQfmSU+kV9qFnbIvi65pGdUxwAlNV+q/AtYFC3+NDEnql05QlYe+H6B2ih2Ymze0cB1WlfSeU9g42ymclxD8DAPltOu5t+l1Z/OgUBHkOfOws90SBPqUVIwJiJwy+DUb5icMCso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772894100; c=relaxed/simple;
	bh=czvae7Y2DqbGKa1pcgPTVPhXFUgp21xFm1ENo5L6riI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AW+zltyzKqHIvAFzyBkEu1449DiPCW87rLlj4PV9oWoGt0etT7Hktna8aU/ufAK7A1E78JPc+v9+oxeFb2jhtJEgVmovQPrft8DoErDHuqAXUJ6bD5oQm4G71ZIVIibGuAMEJ6PUV+D2hO7/GYPV0K+EELtReL93NdV6wAfuB7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Y14Oq9+V; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso95113275e9.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 06:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772894097; x=1773498897; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7FeSeMVGmiBmUUh+28J1mJpe3obybhw9+jiCLpL1n1Q=;
        b=Y14Oq9+V9kNs2SfAGCJI9xvpOczBcKOgxC49Q3E/2Vw+ZUQl14jHLoNEWWDoSY9s/F
         wPmiO3fch1fAN96Grl/gGMGhLQztCYJT6GIEEj/nax133TOTyeN/cx0DtZy8rR3zPZV6
         mLirg5ABZ6b9rlz4+pnbl5ijGPKptfe3P41kmMCR7HkIytiD9plbEylWtdKM8UDoNiCy
         /rNPcI47VKesKuA6TLJNGN6sOuPt9xYZWIGBZ/uSC4rXBgAM3tVAOIaLlHlIFLtCH0ys
         pbJiiM/O+cVfORChFigjdUAR9QeOaLt3RAL9S2Ha73ZLS6NsjkUa+XvR+QWbpuhCA7ky
         g3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772894097; x=1773498897;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7FeSeMVGmiBmUUh+28J1mJpe3obybhw9+jiCLpL1n1Q=;
        b=t3jSTGEPaszQC0/g3cYgkHzQhHEnoY7uCTp+WfpUEzHnxaa7Xv+0ySQ+/blG0XrMFQ
         aBG4Xsizqv8zAhq5Hf/qDFB5IdkIKAafHL1nsiErZ+7rtuK3uXizsshOqkZ+Nniq3Fy6
         eIxg1sp9BoRhF+B/dNQSOfdxdd9RHo3tx0evpjcqhdBVC/Z1MhtQtDP72aDqr0HFqn2/
         DRArdEywb3FJTziVSwUw24Q0tzIYA/FpzqKMu/FKirHXzVR1lmdTwN34BjtS3Gy5vzcv
         BJdVNEYtcYrmmd0AmC8iNSa853Ze3b4UdEVB0J3IC67Hvw2+sc/MJidO0KXPAjF1GjyR
         SkaQ==
X-Gm-Message-State: AOJu0YyxC0EhIUB2Kx5N65/TlkC0BSZGxn/SGGcSR9sBTwRUtGI1WGHv
	E0DalWFqZA7ky/YginjfnuWCyqkoQ7LNpqdR4jVGDNkDROF7QJfSXeHgirrxmR5EYao=
X-Gm-Gg: ATEYQzzJvjHTgAZ+pAkbu+6DnMUvfqYjrD7YDEN8VXzYRiUUwk3II84wIF+rXReL20r
	O7TFsV5bw1eu1GgEeofNeAAIzYyP3nAEDu7y29LWMhN69tBK8ZMp+ns9B7df3/jdAjQw02XYIRv
	0ndohY6miZAhu01LS+aqn+y7V2Dh4+tuSsUQwL08TqnIgRFKJ1MYxe1wqDrzQPTVFYr92vIi8QF
	qJpS5jh4vEc7B/kXCKAW4Lap5MSp8UDsE+zRvCgRRN/mvBXuXpFtmfsTvYwtUTp8iP5F4VksQ32
	VKZIarbgdzkXqJuienBUNU5e7BJrYpQE+JWZL3ir8CuOHwJ+BazqrKhrUXgWLf4X8a/OkSlKkLF
	ibz+MS30mC4gtBEBorzsUt2NUNNP9aE2XbzEEmpPeBGCICAHyFozSXiqHkYV53Cc47fgO+T+uwX
	B/YhG4rZ2DXLcTw1AYslBNgQ+VyNFln9lIOWeph2qg
X-Received: by 2002:a05:600c:a12:b0:477:6d96:b3c8 with SMTP id 5b1f17b1804b1-485269648fcmr86295495e9.23.1772894097126;
        Sat, 07 Mar 2026 06:34:57 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527686bcesm186927115e9.7.2026.03.07.06.34.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 06:34:56 -0800 (PST)
Message-ID: <3477d2c1-31b9-4b97-8633-df02ddf71e08@tuxon.dev>
Date: Sat, 7 Mar 2026 16:34:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] dt-bindings: arm: atmel,at91rm9200-sdramc: convert
 to DT schema
To: Akhila YS <akhilayalmati@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
 <20260227-arm-microchip-v4-5-7e2ae1c5b5d6@gmail.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227-arm-microchip-v4-5-7e2ae1c5b5d6@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E49BC22C307
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272449-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,microchip.com,bootlin.com];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.974];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:dkim,tuxon.dev:email,tuxon.dev:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action


On 2/27/26 17:14, Akhila YS wrote:
> Convert RAMC SDRAM/DDR controller binding to YAML format.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

