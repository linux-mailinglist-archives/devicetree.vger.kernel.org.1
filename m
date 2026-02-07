Return-Path: <devicetree+bounces-263637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMFDB62Eh2nzYwQAu9opvQ
	(envelope-from <devicetree+bounces-263637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 19:30:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD12106D9E
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 19:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F04453019BB1
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 18:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E69C73358B1;
	Sat,  7 Feb 2026 18:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RXzyOrB+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1894D253B73
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 18:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770489000; cv=none; b=j8RcKQIAxTIWlIPX7Aw83quav61FFcwVOXJWRGkg8vAXQzWF64MOJBNNwMKypic4cbTd9U7tgykfXBexo9keJedKD33Lgz4Q79QwPq/9zJq7H71+9BjrsRnyqJpMMJo0c+Peq+q377tpxJhdZ7obYKTRZ3ROJOdZC4schMIB9XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770489000; c=relaxed/simple;
	bh=uh7byIWYb33iGmTL/H3fo9DQqCmVUzHqkr5paC+gcr8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=OXTPo+diu12pj1YEWsWldQY+GGh+idged2JF+2RWh6lp6Uzsn49Rwu174h2SAK3V1Xj0vPoVVznISN+oEvNhYX8DEChvOx+cpuenWbZ1ifEZQbBwSdlop04La3A9aSxuB4IYGLn4+p4TuuKUYX6T3+9fdLDVxDdqckIB3lItnt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RXzyOrB+; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-45f126d4794so2135511b6e.1
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 10:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770488999; x=1771093799; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qFRUlZH5q2I0e9gz1CToCErzc9pGDkWhvEbaw5FlmCA=;
        b=RXzyOrB+DfCYb3LafFNRQ6J/lrqylxFnBqrBGQ6+InPuJX9rHTn1Eh9QVaJgar3aDM
         BFE9QosNICEkLAf+mMWKonVYI4BfVdSiWNYXQmEEjUQi79pMJtg1PGKgD4Cn0x+3uZgB
         BXQXmD5Va3sxIegpeFp912Hi8JHzU+tAJxonWDpCs/WmATfSVZAEct1YcDbDoH9akJ37
         gY77G5cPIkxnW5clpHLK0WG+RgwQmRLoHOBOrUSPlg/zodk93UzWR+SCLmLctVWjXcOB
         VIRj/53o+wjI5FNykjxmG5PkhHHlb9fmikvRKar3JTMFsfybV9Kbtufu+G0bqxPYZd8V
         zM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770488999; x=1771093799;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qFRUlZH5q2I0e9gz1CToCErzc9pGDkWhvEbaw5FlmCA=;
        b=Ob2w7XIfLVMsYqiZ0mY1Tfffc8kMiRk0k1hGdj3H9NuSptBBD6zZ4rmWylVRRDcIy/
         c82uYajzHKvnhBcM6U6fapAnVWWHqSXE83KYPEcaV/4sYa7t6VWrJcwwZx8TDO9vmdJ+
         MV6WGZC7tjQ5+BCs10lAIB+lF/7e6/cNPF5A/wcost6q6nXBr71o/aID5uWVfQ3kOgBy
         +aJhHCnglQPT9d2+v4N2fbMO2ZxFkDYosnmbd5HLtivYkQthmjd23rfyq6vvnN7DiJ8f
         qw86kQXgdTzy2XUQBB2ymIOlBbGLKIpaTc/jxezSUVXyVnBYRtdSmcDCs9xesZ3rpluC
         Au5A==
X-Forwarded-Encrypted: i=1; AJvYcCVNyKKbdVCk7vr4crOM+ffsQJdn1sfULOxUAvtla9rHDH3plSpdmQsYUwISNte7PlMzS5DUWlmgRCJP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4d06hGX8IIWTQo6zF7HJiDhAsWoK6gNlCcIMqE3ZxVILYjKMY
	5LBC16sIpmVUgx0zpDkKKlCpkCB8dZTsCf4QhuIRkHBYuwuSS3bIW+AFcxCnTqkiMRuYIHFO/5W
	VcMVP
X-Gm-Gg: AZuq6aK1VF+XV1TAe1dpbaV2RWFH8dGmafZJZwhAsluwEQEWArizkmwlT5QLN6tr6kU
	RXzqWhXGHyl27ySKVFt9ix8eF0dJMl9LajaAMrXHpaRM2OPhjTue9Y6MnBlIeyrVG5FqyfS056S
	gjF3ZF3bd0MqwdoP6xRCCRxhgdHo/ZRyErXjoqFQlKUNh7up3BrHS9UBwOYh8OfG55aR8Xzfvha
	UVzJjYbJbOXvLp1SbSQPeBiSjQptWgv0IqUMT3YFuGsH//3fiTI/r0vGaYi6DycbdDpiQofVV5R
	0KsYP1ddz4DH+eNmy5oj9dOlU9ZVb4tR9DQTk6s5Vj5HhgsRsysS7GOERjhlKiSCjraAuo3EklN
	quI2ewWBA1I4bxfd+Z1b4SEbWyhIz8U8ewLYUYy2v0l+DYZofNppiUsC7w50DEcoPF53rtknjvq
	8uJuIxptGi+AoMyXQYCzWBuBXQOaEaGDS/pSH4DC8Q28tbmYbU6/h4Odd0EA==
X-Received: by 2002:a05:6820:1808:b0:662:fa52:9302 with SMTP id 006d021491bc7-66d0a093d47mr2896617eaf.23.1770488998988;
        Sat, 07 Feb 2026 10:29:58 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:74a6:843b:f33:21ae? ([2600:8803:e7e4:500:74a6:843b:f33:21ae])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-66fdf303607sm122595eaf.14.2026.02.07.10.29.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Feb 2026 10:29:58 -0800 (PST)
Message-ID: <fbddf502-c6e3-4bf9-aaff-baee2aa83ef4@baylibre.com>
Date: Sat, 7 Feb 2026 12:29:57 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] iio: adc: ad4080: add support for AD4880
 dual-channel ADC
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, Mark Brown
 <broonie@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
 <8685e3e53667e82c7cdfd66ee6fb1ec3d3c009cd.1770393792.git.antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <8685e3e53667e82c7cdfd66ee6fb1ec3d3c009cd.1770393792.git.antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263637-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.988];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AAD12106D9E
X-Rspamd-Action: no action

On 2/6/26 10:07 AM, Antoniu Miclaus wrote:
> Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC with
> integrated fully differential amplifiers (FDA).
> 
> The AD4880 has two independent ADC channels, each with its own SPI
> configuration interface. The driver uses spi_new_ancillary_device() to
> create an additional SPI device for the second channel, allowing both
> channels to share the same SPI bus with different chip selects.
> 
Reviewed-by: David Lechner <dlechner@baylibre.com>


