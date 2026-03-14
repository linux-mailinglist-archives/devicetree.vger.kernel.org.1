Return-Path: <devicetree+bounces-275750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AP9tBqK8tWlD4QAAu9opvQ
	(envelope-from <devicetree+bounces-275750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 20:53:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA15528EAEB
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 20:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E5B1303AAB0
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 19:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B76E37F8A2;
	Sat, 14 Mar 2026 19:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="flEhqgR4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3180D37F736
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 19:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773517916; cv=none; b=JSMmKn0DYFZSUtkuvhcDDEye3hOG54MybNDUKp0JPf/OXGtJsgalZovgO8m0YY6lA46GZ7uoV53s1lJ2uxmUigol+oNESd7LS8t6UUGGCrX4SSrkg84IKcvetYwRknOeR45t1331olfJ2JgNYKjuLSndIp4h9euDmfksg8KyTNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773517916; c=relaxed/simple;
	bh=PN/ebOVkl3Ch2oEl48DSbiQkNWOJst/IpNNfFU9a8WU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c/4PceeI+LGM9urD27Mi9s06rwoFNDHpbuwA5I50Jf9rfECThhSkdHq0Q/oSAT7KjWdUqhEwXdSuxS86uBg6/h+hX1mbRnyEt2LtpYUB96//Pb758xq9F3lh0ubed33THNAy97kZ9G4MYuCqpquUKC+QQaR19rhcqh55Oqu9yVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=flEhqgR4; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-4670bcc40d7so1240848b6e.2
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 12:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773517912; x=1774122712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D8F1aqi6Qy869M29EukxOGNGMVc3+0t8hXdBRfmiktU=;
        b=flEhqgR4mKUaS/olngJFGDWd7v8oKAo/r6t+CEfnMQiKnG5qCpDOL995SiGRCr0zBK
         sKxyTS3Ub3Iv7xo3TC7eHJa/MAR9afA9ED0Tglx2nhiyoXafAS4Cihpk0mccsb35QWo4
         LFfkpEmMu3X1qPnNXkgUvkm1zYqgmvEjWZB9ADQWnXaf49MCtBYJdMCjntroQJ5+83Av
         djvi2uf/U2gZGvAHigYZGPYafgsofKJZ34BsgR+blnB71FYqZNonOWFdpmuhd1IdvxLC
         6JKOTTTUNrwp6H6br5xZcdhMmLBgL+nF5TWXAoHdkzrjRQ01oqtPS6J0Hz5Fj4EO9a9L
         A4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773517912; x=1774122712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D8F1aqi6Qy869M29EukxOGNGMVc3+0t8hXdBRfmiktU=;
        b=YQCOz9qef3V3S7nvviR1D0jz0lmxF1+IkcER0wAsJsrN7pF5c1w7H5ljhz0rD6uQ6o
         p4T3RIPY4anDmbvrgai32fhgGuv638afNpUL5ir7cN0y57+mlpRUw1XAHX3BdnhEG3cR
         8gKAVoWqhwTyvC6P2vJumiUoRRNYTXpC7klMsaf88SF+x3imqLeiUtLt42YZIoRPYurp
         gMWqG+JFSK64qja+8BgyqV5R6kqunu33nJYZ5LHcO0R1tQEebsMl+o5KyEBY2dg4I6g+
         4AgJ4weuJGTc+FdA8NqG6A0GKSW/El+OL6lfC+XG9Ovf0SwhFhzCByE7oBTl8EK3jJWH
         ZDZA==
X-Forwarded-Encrypted: i=1; AJvYcCU2xx7Pew0lxGCwZ4SuQzNzPZtclPr2d+Reh/agPHvzlpX34HTWWZsEJK63JVQTzYOpTznXcoFNPqC+@vger.kernel.org
X-Gm-Message-State: AOJu0YzxeJieEVj8vZ6KdANctG00rUoQjG+wiLG5am8iTRyITbpoVp+K
	r+hHjx2eQ9To1S73yRhlnImBzy1D+IdutSGVPBjlJPKdfeQ4w8MlWG+Rc4qm4viY9JbuYTi77Rg
	1sbSh
X-Gm-Gg: ATEYQzzXEFuJARSCxkXaO7sPtJDL0L5VC7Hd5ZdJqSh2Vc11c85AGtp+YpoIpLLOmwa
	Cgs0arWkq1pJUK+znJbedaK5L5LuqiQNpnG8nyw2TEmt8qYFCtBPAHZhYOEpYMas6ox+ykMpeKH
	oZ7vVkC/tjauUl6BOf5BNnD9ZRb4GnIuGHrHSuNFcf62BxsHZQ0qpj55G1DIshGDcAO+TBgalSb
	6c0BfVIlIIARUOQyeRA09ym/RLyMxounOlUPfILjkkBmLoEjd1H5fDz3KEOywsd6v5fek6wUFO1
	kL4I8acsUqYrkAj0V8Y8OK1+iUbFPLvOgBs0Oa3sP1YeHYo1+EqPblsMjkuFUXjxqC10+dyX3SP
	TQ+xvzF3CyfcL/593LvLD+C+d2WGyBhOF/FSCbUdk6KFD71v8D5oc5Fnuk8AwHTbht+kkLAZzEk
	YYA+3bAGJgJeVKccSwKlLfU5elrlx74vAPyiZIhFPeaZP6B2hEO0G6oJRWPzTOaUVGUgN4Hjn5k
	g==
X-Received: by 2002:a05:6830:828d:b0:7c7:63b6:89d3 with SMTP id 46e09a7af769-7d782510f72mr5089963a34.19.1773517912188;
        Sat, 14 Mar 2026 12:51:52 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:14a9:db6c:e65a:4287? ([2600:8803:e7e4:500:14a9:db6c:e65a:4287])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d76aebc9d3sm9157746a34.24.2026.03.14.12.51.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 12:51:51 -0700 (PDT)
Message-ID: <cde8cef8-1bfa-47e0-8ebb-6c295f31f497@baylibre.com>
Date: Sat, 14 Mar 2026 14:51:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] iio: light: vcnl4000: replace mutex_init with
 devm_mutex_init
To: Erikas Bitovtas <xerikasxx@gmail.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
 <20260314-vcnl4000-regulators-v3-3-3c4a48d30676@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260314-vcnl4000-regulators-v3-3-3c4a48d30676@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275750-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,pmeerw.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: AA15528EAEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 11:06 AM, Erikas Bitovtas wrote:
> Replace mutex_init used across driver with its device-managed
> counterpart, so all assigned mutexes get destroyed.
> 

...

> @@ -1985,6 +1993,7 @@ static int vcnl4000_probe(struct i2c_client *client)
>  	const struct i2c_device_id *id = i2c_client_get_device_id(client);
>  	struct vcnl4000_data *data;
>  	struct iio_dev *indio_dev;
> +	struct device *dev = &client->dev;

Purely cosmetic, but I would have put this two lines up (right after
*id) to keep assignments and longer lines together.

No need to v4 though, everything else look good.

>  	int ret;
>  
>  	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));

