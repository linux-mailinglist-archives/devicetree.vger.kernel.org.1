Return-Path: <devicetree+bounces-313828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tViZLRpSNWq0swYAu9opvQ
	(envelope-from <devicetree+bounces-313828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:28:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E250A6A669E
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:28:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=eB9DqW22;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313828-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313828-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EBFA304BD8C
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E10C4398911;
	Fri, 19 Jun 2026 14:27:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB44397B1C
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 14:27:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781879233; cv=none; b=m6k8yhq1tkzjLm+vLd/p+L0wrC1e+aZfAzfaxdZdK+6wgP/AFwfZl2OTEGmrPdsnxgpbfl0nEFP3ltJ50ErAlEQQ5zzW95ypcGpx3WDHmEDZMQ5FH4WbO0PynZRJpyyKeW4tMm9MA+LPdIlVxHo+r7JF35FB+zKs+YlbLMNIp60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781879233; c=relaxed/simple;
	bh=tsZcS1Ql5O0PIy+kzQJ4rmy5aAwuUe8HeUYy8fIOpZI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ijI7WwDMcsaghl+GzdstfQL8qN1auZj0OcAj1Q1npk9nZW5HzR+RwzX4gZ7Z/6YuqFSWWX9kwQ2fGZfDaMmm7kW/Y6x6+/ZOEpiA1rB91cwteYlxIHhAdOTLH/O9D0fgVxHvCl2wePM0GYN2dck4AGno+tHhiIZ7fOgkG+vq9KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=eB9DqW22; arc=none smtp.client-ip=209.85.210.50
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7e6cdd78fe6so1204072a34.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 07:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781879231; x=1782484031; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1j0UgJOZIv8fQVrRLhrenC7+Pv2Rmi7dw33auXSxlrA=;
        b=eB9DqW22xMMl2M9atWWa5RyFMuy6xbhWHUr6EgUWCirWCvJYQuePVj4Q419qTEm5Bn
         fNVnL+DQ0K1vN6uN6YJtwibcaooSpDiFnSDeUpfEf2YEB/SWSysuiNMQqL8qw+QM3rPq
         hjOCr72T5prolSR7rDUSmq9KwqF4o0Fba+tTLZVYdBtARSUo5RyVF3dWugoqWuQJSADC
         rcAuTBxJRGuQ1XIJ8kZ5vE3t3DGY3zTdesgmPq1E5SDr2RWDIPWZTI/9xIenRd/YIjmr
         NsNED22QZgNAV8JybGTMu2YHBJJgG/bak7LtxRZcfA4BWfPxgmxRNVqJyb2p2miteZV1
         bwkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781879231; x=1782484031;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1j0UgJOZIv8fQVrRLhrenC7+Pv2Rmi7dw33auXSxlrA=;
        b=I9V1bxQ8+JITFNsqy9Zms4afZ1kQIHHyiuCC9bwfSycJodA+1T6uXYptMCXvJ1cBLa
         7FANwvEnHG73x1Er+WI4ByOgjHuyZLNpe9LbQZu/AASP5PdcGyt9p6f1SFk4AWdQuoN6
         UcvvayTl4tAS5u/BbajMUsBcJ4XJLD2va++LT1wOgIpMJxtqcz12Bovt4Nz8jFOBasVA
         EzBtZj+gFstFoAezUshDZFoR9iZZMNBgc9x64dcquTnplKClgzuA2jIntWTd1V3+c8Js
         QJKJM5OS7+M93y+A9/+sRPWu4yrrzd2zZPze9PODBEwwCMvqPizM1NUTW+2Zrw1l7BGr
         PVUg==
X-Forwarded-Encrypted: i=1; AFNElJ/5DZ/5KtICyykUGvwhKMmquRT9eCXtDXeY5ga2GUwwLhdB8RabCY1mkHHjOYlvxdy1YEC1cbds85ZU@vger.kernel.org
X-Gm-Message-State: AOJu0YxsYYbcDMStjZViuLOwOOteinvxHD35D9+vZ4tWh022/Ity1BUz
	x6go9kxf0b3qPRFQIId27cqm8+Vr7U+0BzMggrS36oJanKkgY/8PgIHnyaBvlwwV9m8=
X-Gm-Gg: AfdE7cmcwI4OsDnENX49sND6/dZx6s1O1LakeFu6v6WUpc7ZvG3WdsBz6KWBUIJpZLN
	kkUVSgBsJy8Qy/h3VRk3mb6C70ifJAzRhM70NBwBlo2/4s+pwzVo8YsDQ24KsLBhcLX8bTua4Y6
	X1Yz1D7SFmanj+moqDM1u9cXo662WV6HhzhyBbPWT3agfob1wbaSzXtBbW+F7tKoIeLznimjjC7
	lRWnZ3CzSWCscT3k//S6B/IWLX3UnNe/dpPL+BK4JK6dIftlQZdW3UPMYjMbn4Ln31+BQYvw6EK
	S1BTBU5BzIyBB5NcuVjr7s6eZZagg42U3SqWgS9YqEIJA+KG6f+ebWbHnCHDq+WO0ctDAaEJX+M
	GqQWZ6cuKVBmDjgmgEO+B3F/GloSCb0ohdne3W9xgRz3DvAL1L+//a8o5jBCo0OXI/USlBo4TJO
	HjVcNI+inexIoL89RcegNoTHgaNFyox1iW8ljuNJQNLyU/hUi959dqUC/E+baQRHFazrUm
X-Received: by 2002:a05:6830:6504:b0:7d7:4fc7:21a with SMTP id 46e09a7af769-7e92d85d7aemr2596343a34.13.1781879231361;
        Fri, 19 Jun 2026 07:27:11 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:dd8:d93b:3cde:c07? ([2600:8803:e7e4:500:dd8:d93b:3cde:c07])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e92ecfcc9csm1932228a34.21.2026.06.19.07.27.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2026 07:27:11 -0700 (PDT)
Message-ID: <073b0a89-65af-4a21-837d-851d35e3e294@baylibre.com>
Date: Fri, 19 Jun 2026 09:27:10 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/3] dt-bindings: iio: adc: Add excitation current
 sources properties
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260618-new-channel-props-v1-0-963c1b5cf40a@gmail.com>
 <20260618-new-channel-props-v1-2-963c1b5cf40a@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260618-new-channel-props-v1-2-963c1b5cf40a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313828-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: E250A6A669E

On 6/18/26 7:33 PM, Kurt Borja wrote:
> Some ADCs incorporate current sources that provide excitation current to
> resistive temperature devices (RTDs), thermistors diodes and other
> resistive sensors that require constant current biasing.
> 
> The maxItems constraint of 16 is arbitrary but should be big enough for
> most devices.

I wouldn't put an arbitrary limit here. The bindings that include it
can extend it to add a limit that makes sense instead.

> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> index c74c2084fdb68c..106b1e317411d5 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> @@ -83,6 +83,29 @@ properties:
>        This array describes either a single reference source or a positive and
>        negative reference sources.
>  
> +  excitation-channels:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    maxItems: 16
> +    minItems: 1
> +    description:
> +      Excitation current sources provide current to resistive temperature
> +      devices (RTDs), thermistors diodes and other resistive sensors that
> +      require constant current biasing.
> +
> +      This array describes the mux configuration of the excitation current
> +      sources.
> +
> +  excitation-current-microamp:
> +    maxItems: 16
> +    minItems: 1
> +    description:
> +      Excitation current sources provide current to resistive temperature
> +      devices (RTDs), thermistors diodes and other resistive sensors that
> +      require constant current biasing.
> +
> +      This array describes the current configuration of the excitation current
> +      sources or the single matched current for all sources.
> +
>  anyOf:
>    - oneOf:
>        - required:
> 


