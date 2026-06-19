Return-Path: <devicetree+bounces-313829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AAULKVpSNWrgswYAu9opvQ
	(envelope-from <devicetree+bounces-313829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:29:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4B06A66B8
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:29:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b="bDH130/O";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313829-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313829-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 997C73037172
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3747D398911;
	Fri, 19 Jun 2026 14:28:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C97266576
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 14:28:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781879325; cv=none; b=A9FzeSAsCJHrMIUxkQRtrqrLhetWLBsjQl78drNUcCbvjvJcUIwE04vS5qzBDfJuCuDVhVv3IcUGJPtikfBUjtpmxy/NHYlcphc4wLmv+DWU9KU18F8+icONq+dpaEW26MdGUJcLNrlH4V9Otpo8PZeO4nrG2s4xO3GKxn8czbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781879325; c=relaxed/simple;
	bh=BYZvNYrhCRRVi7+9/Vp1XV84hbYw0obk8I3Nq/z0MdA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pDjNVdCuDukGZAaoSw7bcO4SuSE4i4yU1Kj7cym7OcIO+rJ29Vmx7GvV32Zs97Dp0jwPnnz5+Owid13WGABh0c8HLfiBnDPrY38yGqavbKETyRlZBBBN80Yp4f68jEJOqm0D6zbKS3u9psxdpuMKq8J5EueQb49o66M7FRptN2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=bDH130/O; arc=none smtp.client-ip=209.85.161.42
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-6a0e4f0342aso192570eaf.3
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 07:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781879322; x=1782484122; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gAirWMVH8yFynNlBYDyfsHiH9Wt1aHuKQoVM4l8pDRo=;
        b=bDH130/OOtVS/8nqrbTaAIg6pXo2FYsspJ+cya7o+JKeQzfBjQQ2GKS3izm0Y/vQX/
         M9jmYc31Hvq7O59WwwcMcNgNNq4eWwMGL2oAKJlz1plDMCmLgbvXdbbY+wHf80z+yoNh
         xpA2qU4IhlAnGZVFI0hFJlSOAF2ATYsWa+aNojcMIDi42DgE99WQBAvBotir9esF6RHF
         MwbOK760DWXjkr/qHbUua29zn03O70WqVSWhbvfAlz+bo8Rknjy//wgD38TNvAjYmary
         +cJnus+ZV5EokUQavuiugxyXi9i5zcTxrlnScawreJngCqewknJSkKglX6nJm89LK5Tu
         WCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781879322; x=1782484122;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gAirWMVH8yFynNlBYDyfsHiH9Wt1aHuKQoVM4l8pDRo=;
        b=JOHIIiHv7Xcoln0Fd8lWqZsKdAuLBvwBf9vF7JtRSCW+fdOUBfzl3nAcrPKM3Sw3A4
         okdd7fQfPsKOnMwXFtMlaceJNnPc73j8MAlz3F6lpvLw8NVfcgfs9r6b7sG0QsUArJ02
         mFoVy2Ix85ykt48ucGSS6lAzU1jmCSGuKOMcuq+O9L76tJk6Dd80fsnAHaUXjY6qdo1Y
         mDFjvNfaRZ2YHczxW39g8zmPPZgeb11V6tuCXtl0Zwa3OkdUO6mA+hwdR05l8qYbRkGp
         J2dWvovMfn2LAo49dsVTwcZIZyW2JGlSKCt9p85waBx+V8hg5bRZ16QKF0TTWj4H+/en
         X82g==
X-Forwarded-Encrypted: i=1; AFNElJ+w8PeImyZfIW9QriuQiQNv0iNlYcHjldF7JhuZRXmNcKDYbgzLJtUS+L68iM/h+Y1lPnqzUGXB/S3P@vger.kernel.org
X-Gm-Message-State: AOJu0YxuSO4FNgiRyRPYVvksE5aD8yorDOyv7nNhPYx+4gIqc+z3Nt88
	5YbvDW/WSVVoS/WvDN9VOzNZMdVibv+lU7WbnBFovFVSTOVwGdwTD/g5o+78QzgHMyY=
X-Gm-Gg: AfdE7clH5fakLUfmrn+zN2YWioOSq3pE9Gk41KXO+fc7kn7gLzP3/21JYhAXlX/0JTA
	FT+orpp8DV8PYj0Vnwq0rD/4d2gqtMQtsEPIgaKlwv7weQmYQH09zsWJfw6bTXjxrh4PWu3/r/0
	Wqnb/K5PkyDGU/sLiC0cynj68F7d7cDRTjF+p9+d/yF64ASLOGW5Dj58JzLWv1tWlInEwZYhL5m
	Dv/Ln8uz5kKtB/g86M/TwtL6fEWTuxlqa+TdKziqfi9CkWueorm90G1ED50QR3CDaPMtcjxN8LA
	NXv6cdd58tsJNAy3PhYurseFDY6RU+gG19LdVdf11Vx9Qe5Cvsri5OL/Z/HLba9xKpYhQZ9aw2H
	5iSjPV7udUQbi1da7cPG5Hjm/zI1MfcKyn960ccH+EsJ28b6SMjRjfK8sindjxa6n7acuM4ZSWD
	6kaB2DMtDqGhcwnRDkal6eBoFZM/DmWLwXTNcPPwWU5rq6ZF+o+JwzQ3zV6A==
X-Received: by 2002:a05:6820:134a:b0:696:1a85:586b with SMTP id 006d021491bc7-6a0d8cd4635mr2866882eaf.35.1781879321803;
        Fri, 19 Jun 2026 07:28:41 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:dd8:d93b:3cde:c07? ([2600:8803:e7e4:500:dd8:d93b:3cde:c07])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4470a42d901sm2533106fac.17.2026.06.19.07.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2026 07:28:41 -0700 (PDT)
Message-ID: <0831356f-76ff-4eed-befa-7a35ffce921d@baylibre.com>
Date: Fri, 19 Jun 2026 09:28:40 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] dt-bindings: iio: adc: Add burn-out current
 properties
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260618-new-channel-props-v1-0-963c1b5cf40a@gmail.com>
 <20260618-new-channel-props-v1-3-963c1b5cf40a@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260618-new-channel-props-v1-3-963c1b5cf40a@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-313829-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 0D4B06A66B8

On 6/18/26 7:33 PM, Kurt Borja wrote:
> Some ADCs incorporate burn-out current sources that provide current to
> the channel's input pins for open-circuit or short-circuit detection.
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> index 106b1e317411d5..6b63aac9ac04dd 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> @@ -106,6 +106,20 @@ properties:
>        This array describes the current configuration of the excitation current
>        sources or the single matched current for all sources.
>  
> +  burn-out-current-microamp:
> +    description:
> +      Burn-out current sources provide current to the channel's input pins for
> +      open-circuit or short-circuit detection.
> +
> +  burn-out-current-polarity:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description:
> +      Burn-out current sources provide current to the channel's input pins for
> +      open-circuit or short-circuit detection.
> +    enum:
> +      - pull-up
> +      - pull-down
> +
>  anyOf:
>    - oneOf:
>        - required:
> 

This doesn't really work with chips that just have and enable bit to
enable or disable the feature.

