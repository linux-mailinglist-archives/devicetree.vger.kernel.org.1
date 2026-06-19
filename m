Return-Path: <devicetree+bounces-313824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dx0WBkFRNWr7sgYAu9opvQ
	(envelope-from <devicetree+bounces-313824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:25:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 643926A665A
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:25:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=meW2LVjF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313824-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313824-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FC43300B9F3
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5E1395ADE;
	Fri, 19 Jun 2026 14:24:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F10B3947AC
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 14:24:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781879099; cv=none; b=oy+1mNvwJ9Vpyr5P8u5Gr9FxazdAoqs8AYANqdiyGU8tUvI+4o0TwNKLaYkko9NxzxKOWBUijC/Q2Hi0gAs1mP7JCk//wQGTDgifpxaulFs2fnHW1q7kDgyle/GkB6DIZ+ubQAfkMzWTI+Zi5gYtUnvLYkSMXFQE2XNO7v5R7L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781879099; c=relaxed/simple;
	bh=pGCla/vvf3lJsUCV9oSk/dYHXQS9yOlxHQdvLssuW40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jZMswEKSo95NCxJxdywPOXgQ/daLxKOpT8LVVsAQatmTGJGdbVz+HHdkFq2bVKRY/4+xN9O+EHNKLv3Y3UvIAGweXpjP6JoVNAHa/ZxOIzNv/QfRB8oJmR1+m96u+NgY4zSoy8TdSVZ2QyYbHm8iL/s/0tTk9gZopi+2casFaPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=meW2LVjF; arc=none smtp.client-ip=209.85.160.43
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-4472500e25fso153695fac.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 07:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781879097; x=1782483897; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=26PmlAB+sYAYcUZ9jY2wJzqTIoNsm0ptg9G8UNT6ht8=;
        b=meW2LVjFmK3RVTIRdoU/KQlI369U2S8gd42Lrw5PZV6M0sL52OtjzYjNHN+DVN3Fsx
         3pFTJJKAi+UQvZs2FEDJdpIIv7UKCWS5k6EVBbWZQX/K8F+j84xvs/k8zaqlUKuMOl5B
         P4Rjk1WTl7d57UgYYEJPUQmvqbYLa+7RJ6SG5TmxxrnOG9yA6qpbbvZGtfjpxOnjAXPB
         MjjyTShfVsHYqIuhLKd9p164sz6ilCrUU1BGBOZ3whlBpJYQ92iKo7FfBWx/Jkxl6eEl
         40dfuWr8FJ5nxqOAqKT8ET9JYbSjz3T4++DP776xFj9OvTw6fW3+L21fHNx6JkYdtSkU
         v6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781879097; x=1782483897;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=26PmlAB+sYAYcUZ9jY2wJzqTIoNsm0ptg9G8UNT6ht8=;
        b=LzmsSoQkSiuk3RTV19dF7jcjEJ0CibhVzYQKKQEh3hOk7Lra6i8KlTZrktcl34Aj31
         0JWftE3msiFj62pJmgztIXm8VDUCxAWvZ8nX/yg1jd5eqKiuSdgRw80nnj336YBlDZ8i
         g1WSCM5XV4mPN5kNyHrRYQhMlGUCXSzrOVERBgeZFNEEhhzQTP+cIRQUlem1ZwiZU8G+
         pJAqYDN0yac722D5pjEyjUzh+V6i9o3tZzpYZsVNW6vhEPdRyUAphYGcyECucRbkQmxw
         FX44+bVOJZwmy5NZe25HPthuR2mv3gYHFk409VzfInigkeTebrjMrFIB6O4S/09eVilF
         kGkg==
X-Forwarded-Encrypted: i=1; AFNElJ+oHwMR9uTKvSkrLOGewRmzfK/rJYjgOxN4yPo7AOpOl4OUI4NX7cHlgxcshPrHD3CyX3ehb/Qggnm0@vger.kernel.org
X-Gm-Message-State: AOJu0YzQieesvYnnRdXul5k+N35V3aMwise8VLQpVp59+YtJ3tVPGgm/
	gR5ZNLYoEpPk4U/DzW2nxl7TVQeuRfN6G4pycY9xjS4ZQ0/NzjlhdxID/xNRX5QOH9c=
X-Gm-Gg: AfdE7ck6FOT/cqYmeSfoVbgIb8thqlV2KA7DHdUtxpZUYjvAbgDzvKVafhl227VUCzm
	3F9ILOlwpQbD8wsObjcxg8urBeQd0Zx3YhCk+5dAa90JqDTjxqJiWvENq0bUOSiVO9xMTUaDuQy
	NR61OgJIsuY/HOBsm9LM3t4gafESbeI9e0UFkJ7stS1578mqhc1dBjegh4aeR1/DCxW0uw+OJLh
	49Py4D5cDeEl50+bjU6KrbEf8xqEu5skqeTyUN/1t7uhZFOE0TN5IaxRHk4XWDCUefnaGDZOzir
	qpDL4oweYA2L52Oos3LUxJtjDFfM/OJSigsBB6K/a+7+WQuQSStiwqJXi0VmIXt2vC8P7/qB29O
	7Zz1QilwcfeB9O7O/o3C0wTlU5m9AOMmd+QySwtt0zJYVKX/1WEeLR9LbYKBpLFBdkCEI7mUSO/
	YLwFKnYsJqUhAvsDawxORrnaMsApmiprl9eBOE2crp9dCT+Lc26Nhz/E/Y7Q==
X-Received: by 2002:a05:6870:21d4:b0:42f:d844:7d0b with SMTP id 586e51a60fabf-44706ef4944mr3031655fac.6.1781879097453;
        Fri, 19 Jun 2026 07:24:57 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:dd8:d93b:3cde:c07? ([2600:8803:e7e4:500:dd8:d93b:3cde:c07])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4470a3091e5sm2351865fac.11.2026.06.19.07.24.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2026 07:24:56 -0700 (PDT)
Message-ID: <736962f9-50b9-4884-88b1-94bfd7cd8abf@baylibre.com>
Date: Fri, 19 Jun 2026 09:24:56 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] dt-bindings: iio: adc: Add reference-source
 property
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260618-new-channel-props-v1-0-963c1b5cf40a@gmail.com>
 <20260618-new-channel-props-v1-1-963c1b5cf40a@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260618-new-channel-props-v1-1-963c1b5cf40a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313824-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 643926A665A

On 6/18/26 7:33 PM, Kurt Borja wrote:
> Some ADCs have configurable voltage reference sources for each channel.
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> index b9bc02b5b07a4c..c74c2084fdb68c 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> @@ -73,6 +73,16 @@ properties:
>        device design and can interact with other characteristics such as
>        settling time.
>  
> +  reference-source:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    maxItems: 2
> +    minItems: 1
> +    description:
> +      Indicates the voltage reference source or sources for this channel.
> +
> +      This array describes either a single reference source or a positive and
> +      negative reference sources.

Do you actually know of any devices that allow independently selecting
the positive and negative sources? I don't think I've ever seen anything
like that.

Also, this should be string, not uint32.

> +
>  anyOf:
>    - oneOf:
>        - required:
> 


