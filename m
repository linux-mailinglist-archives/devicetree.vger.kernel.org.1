Return-Path: <devicetree+bounces-264082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBg2DSUSimk0GgAAu9opvQ
	(envelope-from <devicetree+bounces-264082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:58:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D62112C67
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:58:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA30D300EF81
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 16:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B773815F4;
	Mon,  9 Feb 2026 16:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UAgG+6C/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75C11E4BE
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 16:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770656149; cv=none; b=htx1Wrol058FAYAVRseajYt2tcWsfCrtpmeJw/vNHT9uZT789eEtjBXWh84Iwu7lFe4fGqM+B4TITuusx2UugXSbwQboTIqEJnz66qVlYHvqqE5CS4vgAT6Nxc3+QwWjcRVzJlPROFREBfKZCvBQ6vrzRO0Tp40+jJeUm1l2By0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770656149; c=relaxed/simple;
	bh=C6tasADN5Zy4LTHvjtgXxFe5oYISAgv942oMxFWySH8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aoxqtQzLLXyUxgoBJZ/16V/iaDTJ505sTY2H1HchPw9vhnlJe1ii5ZzVa1VYML2fV370Y+wzSru8Y7/vBLAKec+at0xkTZRkjyJM21OU+wr2L1nn2lH9ZtS8q8z4PCK0mrJSmJeo39CKisxu0U+S0T16QqdtEHFlhiC5pJZ7BFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UAgG+6C/; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2b7da62b487so1708393eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770656148; x=1771260948; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=5n/uvlmQbme5YL0r1P1286e1hsovfly6boJPiumGT6w=;
        b=UAgG+6C/pXFcU4JkxvZIZp1xOba38GLaP11H9WbY5jTz2PoL44LOR+sIpAKnwMlnxo
         MrrkC0FTw728d4u8Dxbll6aDFQPufEoeOnrhSbavEhnG7DZ9w+YkDNhPGx+2c7gKNBA3
         /VIvBLMqTjdUQuKd5cQs46Rm73dv6LfnlBq4ayKDuSLtH1/YGOdq2jg63qxwuziMT7CX
         TU16+ZJRdOkyRjW7P2xhPguGd+ZoxOmWVaTwOmIeLG6gzP/s6TI8lkBUWmZtbBd4zYfs
         7/WDa4a2af2lB3W6mGH40WRkj9+Ig+auL9gg9omxP6dqnvlKnjnOk/ylFGjwh3fq8ePr
         9KjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770656148; x=1771260948;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5n/uvlmQbme5YL0r1P1286e1hsovfly6boJPiumGT6w=;
        b=K2B4wfdYAkI5L0mPNNmDcUEiWmP2ilbotASK/f5NxwPI8koPpWN3Xvn8hgnZ5qOm8c
         AJUw+kRlo29giNYyVHYlsc5kgPg/6ia/CNU5Z/3tayyYpaPAXS8hGOKb++v24KlHnGFA
         phMKZ/24cMQu8pntVr+gYunRdGK+psTEp/e7o2XkhjNPkPEK2UlB9qD6GLN3iR54L+Fe
         1AMGhbrBEVH4zRtb3TvStfNUodImS8clMSMxeE8e41y5m6ycdut530e/VyVPtsR6wY/w
         J5pPHomHmO57UpISNAHSrtYR9CkqBaB6n2VzFn5YzOTEAb/e2X4LGA+TR8DbrPZqxRa3
         /g+A==
X-Forwarded-Encrypted: i=1; AJvYcCWwO2kAHvpV4Ik18h71he1NmDsgwhbSfVGiQYT7Xesdd+W6M9o75oMib7kmrWqiU985Ivo+yiTRVOqF@vger.kernel.org
X-Gm-Message-State: AOJu0YwtO0recHfJS5YVVXoPeCtmeIGwRP3BekM8AtxfB6XCKX4WYOXA
	PWA6OWA3VMeaNzDk9caIy6n9JVFdm+U1C94Ubc1goZNzSEBcCEttf772
X-Gm-Gg: AZuq6aKCk9HCnigMvrC12HIv9WS7gYfHx9HE4WmvK0Xsjnt8tbq0PscOsw+YN25RzH6
	EHkNAQ3WvTJK7ZRO+RSPB4WTDbldKe0R76/RDPwEyNrVZ6RrzhSIPDSaoYiCnvfkUXVgt3APEig
	haqPu29CHBqck9EExrXQ816Eu2VO68gyeUVn9OF0SVodLA6uob0o7b1pM6+iN/h2sPCda0MzYw0
	zJXTk4Zj1zcK752ZS1fN0ngOVhAUyPuRrkRyFOsclaASV2XdZJ42LEdAxtS2y9zV59oNS6dREFP
	iWMQXCRob75lHxCywGSXxLozJ5zbmJ34h/TSHl0eQMgh4cUqH9WPkvB8C2QE2gbvG1nyqRQRbQP
	XjDALBzQGm07AKCuHU9uQmmteYshsjpjazftRLfcjS3/0am9xhy/at5LxSxGMPas73rPBkOt9FQ
	PwmHB9fLZ596uRTnMm2PZCaKyimT2aygazh5PTMGinQ0KzQ5OVoKJBrxI+C9zg
X-Received: by 2002:a05:7300:e426:b0:2b6:fc4b:3c8b with SMTP id 5a478bee46e88-2b8563d9406mr5041624eec.4.1770656148033;
        Mon, 09 Feb 2026 08:55:48 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba6baef3aasm3491754eec.25.2026.02.09.08.55.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 08:55:47 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <382cd55d-a278-4952-a31f-64f08f334124@roeck-us.net>
Date: Mon, 9 Feb 2026 08:55:46 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: watchdog: ti,rti-wdt: Add
 ti,am62l-rti-wdt compatible
To: Judith Mendez <jm@ti.com>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Tero Kristo <kristo@kernel.org>, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew Davis <afd@ti.com>
References: <20260206234255.380530-1-jm@ti.com>
 <20260206234255.380530-2-jm@ti.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260206234255.380530-2-jm@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-264082-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,roeck-us.net:mid,roeck-us.net:email,ti.com:url,ti.com:email]
X-Rspamd-Queue-Id: 88D62112C67
X-Rspamd-Action: no action

On 2/6/26 15:42, Judith Mendez wrote:
> Add a new compatible ti,am62l-rti-wdt for AM62L SoC [0].
> 
> [0] https://www.ti.com/product/AM62L
> Signed-off-by: Judith Mendez <jm@ti.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changes since v4 RESEND:
> - Fix commit message capitalization issues
> ---
>   Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> index 62ddc284a524c..2966e5bfb6c09 100644
> --- a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> @@ -23,6 +23,7 @@ allOf:
>   properties:
>     compatible:
>       enum:
> +      - ti,am62l-rti-wdt
>         - ti,j7-rti-wdt
>   
>     reg:


