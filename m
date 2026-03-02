Return-Path: <devicetree+bounces-270078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aORiAEmopWngCwAAu9opvQ
	(envelope-from <devicetree+bounces-270078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:10:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2ED1DB7E9
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:09:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4151530221D6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F05CD3E714D;
	Mon,  2 Mar 2026 15:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G3h/JPJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7AA1401483
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772463706; cv=none; b=KhT8/QQrTJuqpGDeEFXNuobwijFfqwr4avO7I6xgjelCIjsAu1YZGRTycwWcfawMpb4E2wI0nCJzsQoi7pJzU7awifDQYo1N2OKjey9g0M767xXPGYdA58CoDhmLGlTGSQ1Hg5x0xoc7dfWMlioX3ibEinoc6puwB1/ONbC3+LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772463706; c=relaxed/simple;
	bh=mKs/oQ0Rnsuj5cP+O1Gpy55Hcjn0bN/KHfaqqoU3m0U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lzySDmGoyf+h0zdUaePAWgIgsub6KHc5TyHoVAJ8j9sSodcN0QdZhq/ix3DySZC+aaUrLqgGCTV3B1lD/i/J4afp7pkvwQ7r1IV3Yl/WsDHzJFbhkWYcSIL5OBZnje3fk683L3doq0jDcLY0dhoUlFD82i3dtLSeExuiQEcR9Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G3h/JPJH; arc=none smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-12758ce1e8dso5341263c88.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772463704; x=1773068504; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1vG0eUB+BXVNy5l5QbQ3naGo0+KpxvXNf2LpxhkuGQ8=;
        b=G3h/JPJH2X8Fs3IvXmMWaLK+sGkh1a9TB/231jwkZxkxn6X7FPYiT9x8zSqPXbZnkX
         w6GDYelIPoTafBOX+V2wQ25ssE6k5pUK7YhD8Yrmmm+SPfL0JBsONvsIwtvaREFfM02Y
         nHwiRtYqASdeOscYK7XaWR9GnGXzrevL6rqgzCjYJbrcS6VUQeX9vxWBnbJ0oD1cC8EQ
         RGk+aVTxvE0MAoiz1tVOF1UIv0X/0rYf5P9l82UdM8GVEz8nY0RzOKl9X/gEkoJZl6Lf
         SNrW21GMWigpy0Rn79+1PInd3hu4SnmgAyIaJ+qXdKvUwOhAvbRedG+fIYckuhATxPaB
         imkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772463704; x=1773068504;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1vG0eUB+BXVNy5l5QbQ3naGo0+KpxvXNf2LpxhkuGQ8=;
        b=vMP60H1LUCkyh0OcmyIBXpQhLrrnLYLy0cz4Eyrk9YOjEDlhPSjvDuiCAJcR62ydkL
         FSGjXbKcqTSbi7r2DvOMCKDYu/Dv6nSsjZVFcBm8vLHz6zWm/YfFA4Zwb6FqPT5cGgkL
         OItCTsTg36dCHglFAZ4cJ5mBbu/P6rVKtoMB/Cmc8MwMiLoy5XH2tTPhlUQOq+ylhCKm
         3zePdft0IRd8fcy6EZoCN2YOdj+CFS/23CozMpvZDD9csF6GfKHpzqcmB8m3lLX4iv7+
         hxaHJPXDSdMZFoESQxlbmA4fEtc0V8b+HX2+5Kn3qu8b2d5dWelSpMuO+9BNZ23ei+P9
         OCgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhPlDMFsrVx0YPdSB1NEDb4SGpsczW4fdIdCufSsml9hTgDcrrDiZo5/RCXa5ydxX6F27KUdBmIdF8@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs/Oipd+nhJEqIcJNXy1vAVOmKIt8tfu0miou6qMP/TQwAgKS0
	KyNnE94NeNf4pW24CdZGT6tXYoeOrSDdyKXkX11NHD6XA4NaHgFptSau
X-Gm-Gg: ATEYQzwMmFu+1IUI1KGqaXccTuxJntUprHAGom6iOJJiE7gSs6/ywJ1RdkeoeLd0fRQ
	ZrvbVOFFaM0AfPIYi84pVUKGnQlfGxC6UrU3hRU1RsaZI22GZOA2kNKB8fl75oo093ByEW1M+eO
	1A+K1sME1jOYkDlvqK0Tg3acIvajtDKgjJNJtMV3wUrmuE5PXx3JyL6LHSDpXO205OWd7anVJN4
	Oxxwcdrv52dwn7Zi/zuh8Eg0SRDCxAadAU/NqqoG3ysbWiFMnsqwcX6BiUHIzDdkNe51IX18Vag
	opEOfAhZz4l+NsCIDHypXAxklY0eXWuS1gfoDyDPBuGog58NwML9TKP33K1Hfpde0wpLWA7hbvq
	yrMYUgFVpU8YERum4qOkUp6n+9u3SEE+306jywwG0hxoY3VlezghiKnRZgetRwuHqvClLP5TQoG
	Q0wyU/ui/mu5oXXwnQKNQCy5nvM+34PtTvkmB/sOqs2yEthRlmb1GDSPbnO0JRxRG94Flsf3Bo
X-Received: by 2002:a05:7022:523:b0:124:9acd:3b15 with SMTP id a92af1059eb24-1278fd71cadmr5654701c88.39.1772463702082;
        Mon, 02 Mar 2026 07:01:42 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12789a43a18sm17528376c88.13.2026.03.02.07.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 07:01:41 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <f124b200-09e3-4e73-a100-f47007732e8f@roeck-us.net>
Date: Mon, 2 Mar 2026 07:01:38 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] dt-bindings: watchdog: Drop SMARC-sAM67 support
To: Michael Walle <mwalle@kernel.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Srinivas Kandagatla <srini@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-doc@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260302122540.1377444-1-mwalle@kernel.org>
 <20260302122540.1377444-7-mwalle@kernel.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260302122540.1377444-7-mwalle@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0C2ED1DB7E9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270078-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,roeck-us.net:mid,roeck-us.net:email,microchip.com:email]
X-Rspamd-Action: no action

On 3/2/26 04:24, Michael Walle wrote:
> I was just informed that this product is discontinued (without being
> ever released to the market). Pull the plug and let's not waste any more
> maintainers time and revert commit 354f31e9d2a3 ("dt-bindings: watchdog:
> Add SMARC-sAM67 support").
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   .../devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml | 7 +------
>   1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml b/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
> index 0821ba0e84a3..872a8471ef65 100644
> --- a/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
> @@ -18,12 +18,7 @@ allOf:
>   
>   properties:
>     compatible:
> -    oneOf:
> -      - items:
> -          - enum:
> -              - kontron,sa67mcu-wdt
> -          - const: kontron,sl28cpld-wdt
> -      - const: kontron,sl28cpld-wdt
> +    const: kontron,sl28cpld-wdt
>   
>     reg:
>       maxItems: 1


