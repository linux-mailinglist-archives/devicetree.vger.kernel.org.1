Return-Path: <devicetree+bounces-314547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ff6KDIuQOWqkvAcAu9opvQ
	(envelope-from <devicetree+bounces-314547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 21:44:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC3C6B21FF
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 21:44:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=UARiWpDK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314547-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314547-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 103DD302067C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 19:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ADDF34B1AD;
	Mon, 22 Jun 2026 19:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D53349CFD
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 19:44:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782157447; cv=none; b=K4ha64xe90fg6KjPboGxjlkd0G1Vx5j7VhTu6uplJPBIMZZxUWJ/nNz0k3JyUENY3cUMEy5ZMjjdnBOBDjc/uph4/0V3ZxzmPiOY4NqGY+B2CuBTqwYtO0n0+pm35wCo2A+ChtdNfyD1vX1t7ewT6u38x36AXZru7kJ9XY5UWPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782157447; c=relaxed/simple;
	bh=TptxrxtfJDI5ow9MorrAqtjc1IA8BO4i9BvtrQy1U2w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=skJt1muSdYjwa6eJDA2DruXpvTUwAZbWDLSXG3pslxxTOXxGsq8DtbKh4TBWvmta0EQXR7icF12gttUU/zUki+40v5HAGUOAJQRRNUZgi5OD4/9indPTMSn6NVxc4DXOExlwXkSeLPnEu8WsIEYLmRA3iH7nUWq5dVjI9ydMX3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=UARiWpDK; arc=none smtp.client-ip=209.85.161.53
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-6a0eb989530so1144741eaf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 12:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782157445; x=1782762245; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hlALyJbt2TnvwNlzlsye6XsRVOhuhk64FjUlN2vstwA=;
        b=UARiWpDKNUsYko3l+DoVUCj3aJYqLApGdfvvH/H7X5ePkMsRg67zY6GQuNciq9coKM
         6VFoIp9zbvZQUag07q3NIwTu+uOiFGG8phqGq3lCnb0NNcta5meoT4PdPcFucEwcl21T
         C1YX8c0TaoLQQsywUeB2v6BfOKA3ci0lVXhtVrr0x/KskA29LXW8boC/ZdTY82aZn+7t
         GyuzKplkstfLXDTybkcjzdPS+EvnmJ5hByJ6PCRghgkM5+Yfr1QTcQBb/kMx313Pg41U
         Fm2MwyZZcHAG3D+NMJeQGwInEOdk4wGQ2B9AgG4sPiMhQohoKJwd2z3UrIQmSSRDKlsU
         odGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782157445; x=1782762245;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hlALyJbt2TnvwNlzlsye6XsRVOhuhk64FjUlN2vstwA=;
        b=e2ugttJW1ZGd/QfDyruYS5qnYRFSn/Fg2JTp/PC4LdwWH5ZMTEAmEL0HQOFnzMdzOf
         cN5JiaymAGCoSZqzs/kjIKwK0FTbS/kQrFYYi18iK11J6FjPfINiEzuj4uRqu7b9V77l
         45jG8RJ80Uqlnbh5DYTpY+i0DAbw/XujgQ0CYJCa0Z9qqeCxQFrj5bryoe9qWvPJPj/n
         hk0CnAgiKIw4IwohpiHgQL7jL/z9b0es7uyONQQxbM3JCVukSxoKwmkQYuk7NjLO1N7c
         C4ksGZCsdkiXA0UwSww6XXLZv5ZWDGThmbiA+pCzZozFINkRAntJoc03ZBqn0Uhx6nPS
         fpZw==
X-Forwarded-Encrypted: i=1; AFNElJ/ba0lYfvt4qpbuwu1QEb5hjFBt7TTkHndtxKQImFH0zJbDnDZtfAZT3OwcnsA85T8Mg498fAD5I7YG@vger.kernel.org
X-Gm-Message-State: AOJu0YycoWir2D/W0ByYqeQQ2pXVKxiPlPux+tCelQAmpnRFa7M0zgSq
	frETobMbXzwi4jQRK7yg038oS7hd5rG3QySzjc5m7EU2DfSWnMO7G/YnHCWji0NDNsQTFWtKrBD
	Ygm+s7vw=
X-Gm-Gg: AfdE7cmUM5nlrqhy55CRdlLuOZXI6S3kszQveJPP0olL0EEz1MJfk8HlYZGQkVHjakE
	ANNro8nWeM5bBvZ+3eHSIy331eNu9477GoIIFTYxrn8P8feR6ejam0TI65U44NgW0IUha0PZrPT
	t43rq1RQOLG0tTxOXwhyNze2hgnE9fgj3E6Bj9QgGwM7wee/LHg7KdoTAf87DW4gWVvfe3Fcc/K
	GrLZkzZb3VLvsq0/XYKcazBtQBZVrwjSEQ7RYTziesVDibDpkoOZ4X60+dYCWXPcwdsvPFP2FEP
	xxFLPITMh6DAa8M1x7Ejrzy4cz/7sFD2nLhvjYaimbeA2Ap7oKC374yI1+vuZ3logEUOgTItPCL
	vAtJUd8R4hAf0/AQeylB99gW6AGNs0N5JDAD7FNVNbmTRIZjdzfbTopzz2FkKpCV9oUs19s4Itm
	IJlhZ5fY3ii/yPFe+m0jvKVr+dP4mAFgFrfQzRoTU6iApRWtgVIqDCt8TnF8CVO88=
X-Received: by 2002:a05:6820:198f:b0:694:6acf:a420 with SMTP id 006d021491bc7-6a0d88787fcmr13052242eaf.15.1782157445333;
        Mon, 22 Jun 2026 12:44:05 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6526:8577:6be9:cb7b? ([2600:8803:e7e4:500:6526:8577:6be9:cb7b])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4472f0475e3sm6668016fac.16.2026.06.22.12.44.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2026 12:44:04 -0700 (PDT)
Message-ID: <de5dc05e-f2d5-4a09-a4fe-9d78c77c0649@baylibre.com>
Date: Mon, 22 Jun 2026 14:44:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 3/3] dt-bindings: iio: adc: Add burn-out current
 properties
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260622-new-channel-props-v2-0-aafd5369f253@gmail.com>
 <20260622-new-channel-props-v2-3-aafd5369f253@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260622-new-channel-props-v2-3-aafd5369f253@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314547-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAC3C6B21FF

On 6/22/26 2:30 PM, Kurt Borja wrote:
> Some ADCs incorporate burn-out current sources that provide current to
> the channel's input pins for open-circuit or short-circuit detection.
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> index 160a8cfa9842a86..9240f569d4ab7af 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> @@ -105,6 +105,12 @@ properties:
>        This array describes the current configuration of the excitation current
>        sources or the single matched current for all sources.
>  
> +  burn-out-current-microamp:

This also needs to be nanoamp.

> +    maxItems: 1
> +    description:
> +      Burn-out current sources provide current to the channel's input pins for
> +      open-circuit or short-circuit detection.
> +
>  anyOf:
>    - oneOf:
>        - required:
> 


