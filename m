Return-Path: <devicetree+bounces-262338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOnbLrUlgmnPPgMAu9opvQ
	(envelope-from <devicetree+bounces-262338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:43:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 376F9DC280
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:43:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A69C30BE902
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 16:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 999D13D301B;
	Tue,  3 Feb 2026 16:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qapDFiCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3075F3D300E
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 16:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770136614; cv=none; b=KK8mVlsTjUoCIhW2s71SimiWsI62Q0KYji/VR8/gJk5CXXrsxwayR0wWV66Ltj7ke883s3Y8k6alLZNgjsyCezUIcpwxQwXs44ahD9kDpUarTOzfhUesIr2Uy6/k1LgcdFDJX4GHkzcEDLnu9J990rnG3aI5pm8GgraIWXwfpeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770136614; c=relaxed/simple;
	bh=DmlvpbzDEq4IPSeR2r7sL20gZAslDIjjLsNOaO5v9XE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C2l0uPbH2my93oAK9pDjMFIGUC6hQ+st9wO+PI8d7uhjSqJe4fx91om+Qn62t8zcZjq/dGVk+5Q4bpeZGpzW5zxxM1o9OFUia5grOyImEk0yFGVo9WE2UyEq1Q4lUMdDa8U/aA7vyTLGpAgH5CBJ6AyfL9w7vwVSF/OLlXV/VJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qapDFiCL; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-3f9ebb269c3so2808380fac.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770136611; x=1770741411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DhiJ2nzhxoH58/LPSL3akF68TqoZ8tdv8BmXMofsceo=;
        b=qapDFiCLn28srBWgtOrErna+DeSYdTC4UsTktUpYxxZLvjQ+fWqBzQc89fCDRzfJB1
         vV6kHWf7ah+aEemr7ZII9Irfqez+0KwQH84vBIG/5wumYre6MirCFz5JSdQZKK4hkYO1
         caC16hyALKnWchpkHnhzaXrYfLK0xD5hq2am+zL3jMvQEua5fhJejzmnLevLcp/VrDec
         iPu2Ui14cngqxgAAo9KWN7G9j78gRTXBrEloO8T5ge8hTjQvOkVpU2cbk/eVJMGXbWV4
         iAmWd+JSZEDwXhqa+HIbcYSflr/c6S2654Ow1IzS2a+qD3tk+6GzkfRlLe7ltY48GOPT
         RMbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770136611; x=1770741411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DhiJ2nzhxoH58/LPSL3akF68TqoZ8tdv8BmXMofsceo=;
        b=ouBVgcasW2wQ7BGid4gVaqMND7Da3N8Kiocyc/ZlUNmnx3KMewlbRapoQlc9IGfItH
         XwXvO3/jvjot4JYlzIUVBautN1U0yIoztduRxqmWz3h07eRnCiQzxrISSjaMz6oC3C8+
         6dK/SxxN4EpDtuiZXDFzpbwqVJ4VYkHpwvEjwtyGlutP/b0pjP3E6XzICxUkoTueJUy6
         O6GAggsdhmFOrLWeWJUGF2ZwKC/+WDAc/2X7PLEN9s4vwdX/DKgqrNgtTt6qbMIDSfQY
         Vzm8eroZ3yH+Ld/oYoToZmL2QeKRyQwx1tdDmZ0J/W4aI9uF2SMz9AEmXqgsGeZ0zMmf
         ejCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWl3wP7bUVcH/82moRD8NtJZsuvKyVYcLAe1p5OAutB9JTtFShrKhjj0jsbRUxEDDaFZpa2WAdJaVkq@vger.kernel.org
X-Gm-Message-State: AOJu0YzgvwArjdhcuauaU0NZ75S9J/eQz86IUJx8bfkX02THJDWSiIj+
	4vPbq4RC8SbvviIrdT1nYhS6DEUnCiutxNLUpscjOgX7QFJEaa1w9VKyvTvO6HFVvUI=
X-Gm-Gg: AZuq6aK1xHwwGGO9eB9y87gunajLA7FPgyTNwgogBxe7LGlr57lcubirh037tXwx1CB
	Y+vQQ/QEjOoG0uE38VrEE9PnYVEu5MfYHx3mLXnCFmHpxXnAa+FX9mRsHZZynXt1JdxEBMaYeWj
	FY+iNt7GR+ZlqoiAHG25mMgIeXkcb1xkSNM8M2+OVfIORtwPaPYe68whh+4raruMWUnVRf4L4Rr
	tGnTsnHt8o+E8djE1RlFT+ko/BM0Ko+AHlsvZ8RJDStZL1CQ+O7MRJ/KAhFKQrDNUdvOywGfp29
	RNtf2elx3nvhWvbx3+jx55C9jqq/0z3skRQW8sQIXlTGcNYviOW7BlotyhKACvcEP+qz1K3LXOx
	ECYx0qFE1u0+OiEq4AWJ0xgWdP9DwflZTf/d4oeNuYhjLnmDxHWX0ZnDiBgjEl+ELHjgiNEAu+R
	/kSYfxwqot8NUe0xpvlFMdx5OX8VUKmi+Hm8Lof5YRfWnBlcld+3rNK7M=
X-Received: by 2002:a05:6870:3512:b0:3ec:48d5:5a50 with SMTP id 586e51a60fabf-409a6adfcf5mr7572564fac.19.1770136611130;
        Tue, 03 Feb 2026 08:36:51 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8e13:880:992:e796? ([2600:8803:e7e4:500:8e13:880:992:e796])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-409570f63b4sm14278713fac.3.2026.02.03.08.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 08:36:50 -0800 (PST)
Message-ID: <0b001503-5882-446c-a0df-642a9f75e7e3@baylibre.com>
Date: Tue, 3 Feb 2026 10:36:49 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
To: Erikas Bitovtas <xerikasxx@gmail.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
 <20260201-cm36686-v1-2-4949a2a9ba63@gmail.com>
 <eb922433-3951-409a-a397-b48efef57b7b@baylibre.com>
 <b133521f-434d-4972-82a3-6e7978e557bd@gmail.com>
 <086d6b35-8c19-4e92-9cd1-557b98991d35@baylibre.com>
 <372c9172-ea01-4a3a-b737-3f7f14519791@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <372c9172-ea01-4a3a-b737-3f7f14519791@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262338-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,capellamicro.com];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 376F9DC280
X-Rspamd-Action: no action

On 2/3/26 9:41 AM, Erikas Bitovtas wrote:
>> Pro tip: when you reply, trim out the not relevant parts like this.
> 
> Noted.
>> We could start with hard-coding the als_trans_ratio in this driver for the
>> scale (and write comments explaining where it came from and what we know
>> and don't know). Then at least we would have a scale. And if anyone needs
>> something more accurate and reverse-engineers it we could fix it up later
>> with a DT property or something like that.
>>
> 
> In arch/arm/boot/dts/qcom/libra/common-proximity.dtsi Xiaomi sets this property
> to 16, and they set integration time in their driver to 160ms. Maybe
> als_trans_ratio has something to do with integration time? 

I assume you have the hardware and can do a test to confirm this. :-)

> In that case, we can
> calculate the scale from a formula, like this:
> scale = cm36686_als_it_times[index][1] / 10000 * 40000
> val = scale / 1000000
> val2 = scale % 1000000
> This would allow us to preserve lux value when changing integration time.


