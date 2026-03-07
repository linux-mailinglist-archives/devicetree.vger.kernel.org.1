Return-Path: <devicetree+bounces-272511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIq3LMxrrGlqpgEAu9opvQ
	(envelope-from <devicetree+bounces-272511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 19:17:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1721722D2F4
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 19:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFBB6301ABA4
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 18:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D6F37186B;
	Sat,  7 Mar 2026 18:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2oaBkZ8+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC4C30AD00
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 18:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772907451; cv=none; b=Rt7M7J06Vl/R7JC02y77yMx4q9l6N2HT/4SaDtzanNvA4fpCP/kdtZ1TuWtXjO0wOCyQhRsfqCJZw7lg56QFTrHOtkmNsG7sAByLwQSIjSvPWD3jg2x6N6cIiRMDeH/fFFRA3meHTm3ALigba09KdFfRfRXQ37qtH/xuHb3x3vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772907451; c=relaxed/simple;
	bh=Ibbbri2MB7GhFcfgPa6chiXmHO3dxSvWIz4uDCK1P+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=H7rI/5hMeltw+/LhgxAgGM3d08WHAGIHySCB4aIhZhznDdoIYpJQ7yIEHlExipDgHTECO7gGe0v5vXjpyfqgTvhi6DKdeIaup+HjES+PhSl6b6kyHVz0xXg6N53ufjqzOvkB7D0ZL32rOzMmxGLSg2ltf0ft/lTObq0HXc3ziIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2oaBkZ8+; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-67ba8095a87so243565eaf.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 10:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772907449; x=1773512249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xquXLJiyzhbEgf4b5MNljCoNXck7pIYC/7+CH0404uE=;
        b=2oaBkZ8+sDREnc3IGpntm+BFuer0jtOXHCI+maQx9ts/a285QEckT/MGTRpGUmohSL
         LiLjvscHReBcbqVh62LEMIkV4vGl01hHfYmDc1mUT04D7z1f2cJ1lhgzVTTQjQoLqq2N
         7MfWt7q9l+yLvcERTpga0zszeXFYfIOLlP4K6pGj4zhLhyBWwu4qT3RN+scJ9BhdFUi4
         /6T2Nc8BvhStwY/oHmnezL5zf61WBmY9LBfwEBPA1ktQE8zgIZX0p2NbnqPe10EMRasf
         m9iEFYqAKSFnGUv9MFkIhSBxm7rnI5SubD5CLpegMZjmVYBgcusdETRFeDslfPsuPQA0
         JNww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772907449; x=1773512249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xquXLJiyzhbEgf4b5MNljCoNXck7pIYC/7+CH0404uE=;
        b=iXW4hzs6iBTdeOsZDWowu6GkIWkE8Nf48JHI27yhvNnXnWqVbP6fFAQKYrqEiRiTW2
         5L5+YKPWrVUiEa5MouC8eZA5Vf8g8HjWObaTJVXWiveDsT8RPYFogMxnw5837/cVrsew
         7H2QTPJ9hX8WzaXd5EKR4xLJrJ7ruHUdDuFI3nPJ/Lw5XlSL1WcdkvO63NpbJShBmyhF
         BljdQajiTaFDorz2zO0EqDSz2O+QtwlJ9aiERa0syFFJ/HNyyIIoFMJbT9YkytG60Cko
         dk6tUGuebDmFfgvLcwnuf4VXZ+Ko1lkvcOchuoZd+YQZMuapygxskLgv7BCiKbUHYEFK
         6N0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXBf0/cmI8S9F9RhLhI9VTJqENeqxCqK1lKDqxb43+QFoWg0DRdy8AUXIvosqLJjH2Vj05dXgQRCjFx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0Sp3wnL+z6B4YF0x3Ed4S7OpMz3NCXGp9aX2tHltAw4L0quV4
	acaF0IBCu/ojj+jAmaao0/lHXxadmvqgrFr+eqklEm00CnC39tic8gh5Xd4wQxWqkls=
X-Gm-Gg: ATEYQzwXtV8YfFk8cCCSysslHMfRmRrCQj8rDi8RszURo5l24egVdK2gfxuvTwDuquG
	JJmWCG+Re+TtdUR6rP4mxEwxQa20HUhMzAXisY7f5Gx6z1iXhzYt8PWK3/upHig4Gs7414Ne+Ki
	/IooMuuyK1axxIuBGweMKYMkPLL0TDRPYz+4rs13fitVgwvyWfUYptGl8vO5j1NWjhZn6W0SkkQ
	QppyH2ZkiZWP6+FOIdXpNzeV/pL8UYhMPl2Btfwbq+AiOzFy51WVda1LX/U5acUdpnjSWm3qI8a
	AL5DiZTRiZWNJ5elAB+c8ATJv+IlZysRjcSuZ6pMlGKcwKrqhOxN4bL3+OosBGX+ZROfhTsa6m8
	AbDfmSHQ5bdEUAoHTb+hK6wSnfU0IM1NSeUs263OfuMd7FoC8FssmgVn/+8PGQXZaEWFpciEWhK
	cDeQaS5OsjueYT6wCicQgAdIOY08IxZXL7AkeXJb+ho8F7U/ZZdlmp9C05G5Bl+JHYtyt6h4nTh
	g==
X-Received: by 2002:a05:6820:4911:b0:67b:abfa:e154 with SMTP id 006d021491bc7-67babfae1eamr246402eaf.29.1772907448774;
        Sat, 07 Mar 2026 10:17:28 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cccf:5174:fa72:c520? ([2600:8803:e7e4:500:cccf:5174:fa72:c520])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67b9d4711eesm2843371eaf.8.2026.03.07.10.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 10:17:28 -0800 (PST)
Message-ID: <19142d29-89ec-48a8-8445-5e3e441c1b8d@baylibre.com>
Date: Sat, 7 Mar 2026 12:17:26 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] iio: backend: add devm_iio_backend_get_by_index()
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260305113756.47243-1-antoniu.miclaus@analog.com>
 <20260305113756.47243-3-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260305113756.47243-3-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1721722D2F4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272511-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action

On 3/5/26 5:37 AM, Antoniu Miclaus wrote:
> Add a new function to get an IIO backend by its index in the
> io-backends device tree property. This is useful for multi-channel
> devices that have multiple backends, where looking up by index is
> more straightforward than using named backends.
> 

Reviewed-by: David Lechner <dlechner@baylibre.com>


