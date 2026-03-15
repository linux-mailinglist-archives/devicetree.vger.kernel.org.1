Return-Path: <devicetree+bounces-275838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id y2xjEHUFt2mKLgEAu9opvQ
	(envelope-from <devicetree+bounces-275838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 20:16:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90847292353
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 20:16:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DEAE300EABC
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 19:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BA4F37AA88;
	Sun, 15 Mar 2026 19:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DxvjKQs8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757D221D89
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 19:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773602162; cv=none; b=FR2tSv63ciEHX9Uq6omQDn41apOhiJglYpBIwZvYYX4RxWJ0PGxGTT9Xf0C3SCahnOtj/5iden40DBpqF4qNT5h/JFd/6ed+8W0tFcsrXnlcHJkWBPYEm4dRSMMB0vNQ8KUqmpC0reCUTb4IUkWfB+do/9Da3inue6WfyKdnOhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773602162; c=relaxed/simple;
	bh=a6zCJ7W8/2j3GTCTCY6FAyHidVZVuKayQ1N0RO9KOEo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vk2UjxNsNmyNsQbIlwFE4xsYTqof4GbPBKMDWdLcpTvMnBuNyr5Wqx3sdSZvzCbrhtJzwpbRjVWQLYVo3jDw/UVirrTuNC5tZlwKnJ0p3yza4jWGeN4DreqXruBMpNXHKDt7wxeXD8fMZcChOR4XJ8hfD3RI5Gs7qGeY5UJCjjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DxvjKQs8; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b97ba4c2be2so31541866b.1
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 12:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773602159; x=1774206959; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j24q+WEEaIIpTAaLp22q5B3jSJrQk0EvfwD9aUHG8bI=;
        b=DxvjKQs8kWy2u73OGxFvaR8tCE3IMk0ePE9vqxw+/7XaS9NXNB6JcuMm8TNqiGffmE
         +23cB11lX47Lw9mkCj433edZ698dowY9OD2NUX3y3hJ+NwzYB7w+CeOBQFWVDGXSCxur
         QLROn93dVOC8k6Dy7D+3zCpaatwExWf+h00rsMqKbMTeyqwNbB9twOOfKaXPCADsDCe7
         enIEJFbjQMmK+iSymqPtkqn9BwxIMrpsNfzHQggWQ8NvIQlUOgIxw2v+qNiplciUbXYC
         AJNU6jfWtUFGTPbZdKcAdTD4CSdeLC52EEUXt6Ed+X/RBGgB1PkB2d+7DZl7WjXe7I0k
         R9Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773602159; x=1774206959;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j24q+WEEaIIpTAaLp22q5B3jSJrQk0EvfwD9aUHG8bI=;
        b=Fn+FaydXxrzs6Ny6jjdFJ4odzgJASXZyoZstf4ApvppeQpwLtpXEdWnNi6a+pA2fBq
         jBSNeXPCRCPIDo+h0U1eJwIRlLIKaXSH8vsFAnwugsS9eMeqZS3NtAtkDFZut2APFGpe
         SenaqqMl9HQ6UNKmLwSIXL0T2YOnzLTsixYbA3sp82ydG6EsohBBMYsFZzvaDtyWLjR3
         LBzG7ho9h++MX0AFgsKzkklD/3byUOXvwWmmKKsSydWv6gZ3r2AfKqcPASbGfKqcdn/O
         918h19lQzH1tP7F5Vug8VE2Ldr1h0fjgdQWoB0crebvZk2Kev/WurJmSklAdDirFnC6f
         dMWw==
X-Forwarded-Encrypted: i=1; AJvYcCWaUNJI8w/FtdoXdYLU/gU0NaVV3u2LvJ35DTMP1YITFuTCx/m98xHSiJilhUT9w+Wqdq6h1LZ4ZmaM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1UrTf07COcYwr7So2HPOval5Lw3RQ6IhI9npvRJhTIJRj7Ln3
	O0i/Oh6IstWnbv4+LPhCdCKdrw8smmOC/igHz8DHro+yIox3FhVKV9e8
X-Gm-Gg: ATEYQzyOBFZzampATQcZWT4d6xmKnjUWKF9q498QiMafAn9pL3LIcs25e91wBJ5F6iX
	sDb+TXqvm8+w7rrjD9Fr4RQCLR+COAQvP5fS/UhDNGZJwy57QxReT4y8IRb04R5aBOYh0XHEnug
	mXRDvNJ538i7vETHrS3ixNwZvv+KZIz2z0guHMT4BvnM/eUQQ0f5LDD6Kbhcl33+ux5vpKe5Xb8
	JnffqAEIttsO2Ww3dJIeiQJ5sWHvU+gTagRLw6imcqphvIhew8ojoDz8SeFC1Ng5Htr3SZVVLG/
	OpIeFKMRzJPN4a9b4ligSG3A/5FvzkbVF5XDNxGTjWhXvQACL8iUoM39OpDRLIv4mthkofCPXaV
	eZ2Y9APvKNS8/CqriqbveYWNSiddjRq+DuP5JV4XdaXqVtPuguCVlFXdgCtZAZ4j/mfrinz5iEQ
	V5bzoNRsqEMY0UhNUfGcsftrY25w==
X-Received: by 2002:a17:906:4a9a:b0:b97:f3:1231 with SMTP id a640c23a62f3a-b97653525a2mr439485666b.57.1773602158949;
        Sun, 15 Mar 2026 12:15:58 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb1d20sm421911166b.41.2026.03.15.12.15.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2026 12:15:58 -0700 (PDT)
Message-ID: <706a349f-63e5-4f47-9f77-c84db1058f5e@gmail.com>
Date: Sun, 15 Mar 2026 21:15:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] iio: light: vcnl4000: remove error messages for
 trigger and irq
To: Jonathan Cameron <jic23@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
 <20260314-vcnl4000-regulators-v3-5-3c4a48d30676@gmail.com>
 <20260315183127.59036e25@jic23-huawei>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <20260315183127.59036e25@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275838-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 90847292353
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/15/26 8:31 PM, Jonathan Cameron wrote:
> On Sat, 14 Mar 2026 18:06:34 +0200
> Erikas Bitovtas <xerikasxx@gmail.com> wrote:
> 
>> The error code is available in the log after return. Remove duplicate
>> error messages to reduce noise in dmesg.
>>
>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>> ---
>>  drivers/iio/light/vcnl4000.c | 9 ++-------
>>  1 file changed, 2 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
>> index e501db7249d7..c8bb1826b916 100644
>> --- a/drivers/iio/light/vcnl4000.c
>> +++ b/drivers/iio/light/vcnl4000.c
>> @@ -2041,11 +2041,8 @@ static int vcnl4000_probe(struct i2c_client *client)
>>  						      NULL,
>>  						      data->chip_spec->trig_buffer_func,
>>  						      data->chip_spec->buffer_setup_ops);
>> -		if (ret < 0) {
>> -			dev_err(&client->dev,
>> -				"unable to setup iio triggered buffer\n");
> 
> Is this one a duplicate? I don't recall us being particular verbose
> in terms of error messages in iio_triggered_buffer_setup_ext() which is
> where that ends up coming from.  I think there is only one path
> where it can return anything other than -ENOMEM and that one is a duplicate
> registration check (so fair to not print).  So perhaps all this patch
> needs is a comment on what errors can surface from this call and why
> it is therefore not worth printing anything.
> 

I do not see anything being printed on iio_triggered_buffer_setup_ext(),
so I guess this is not a duplicate. The function can return -EADDRINUSE
if a buffer is already assigned, to prevent cleanup function being
called on a buffer that wasn't allocated.
I will add this print back if necessary in v4.


