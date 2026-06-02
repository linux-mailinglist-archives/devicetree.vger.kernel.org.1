Return-Path: <devicetree+bounces-305641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4Ae+Bx/RHmq2VQAAu9opvQ
	(envelope-from <devicetree+bounces-305641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:48:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADE662E250
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:48:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="N/bT/NPL";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305641-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305641-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1985E304E0D4
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BAD23D6462;
	Tue,  2 Jun 2026 12:40:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074EB3CBE8F
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:40:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780404053; cv=none; b=t9nWfnxaE/I7Z8lnyMoXx8d4qErb+jTNE6YqP1el8ZXrH/bXRrlGtqkdhLqQ+GkcACmU5lYouel3F2KSlC4taAMxlzirvLCfiX3bRFXb8ezeGfhwWgbnUBNukgLswN0kZxu4jGPXt4Sv+Y+w/NhOEXpqmuJGchF3xE7i0TU9GG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780404053; c=relaxed/simple;
	bh=lVzbY7ZQf4ZHAgWFWTG/ATbgM/HylQrcyBz+MPl+tvs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=aBjzE9Pymp1D3YbHYb9CSYGP3eA2Q6oVA1VWghpEtSf5mkUPLXTEKIVeisp9rE3O8aUktHoq/DGmRAF4ILjyxwnKHaAJuSgu7BozW32cn7rPCaebwrceNYf4WGkEtdgUdsELl2AYlesT+2RozXZDmFLVn9s1eigrxKxtw4M1C/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N/bT/NPL; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-490b43e2b95so1159655e9.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 05:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780404050; x=1781008850; darn=vger.kernel.org;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FC/oGgXfgkM39LoHP/4Q+MJLr6VB9M/zzchAiEgk6p4=;
        b=N/bT/NPLUQyZi+np95fDIj+5bXx9Uv7+Au/LhN3pE/xq5Bj8MVB7yzqOyYRALuRFWB
         MVyw2qaAZiXespPUwXu0odgPs/iyuwcCewRhHXITyAh6BpncNr4Yv9d5YMcRcSpiNNrg
         y6SRVMYMq3C4mbgoyaEAYR+9MVEbxjMbUUomTZ9lTO7Jsf+q4UILlB/yz3wWAfYcbSIi
         4BIoftv6JMD+jhX1ZyGuzUPr9IUDtNxRcJGTb1MVguuSWALkLdBX7vx7dIGaf5ZbGi/t
         YY5rwNVroWsJ6pqaaewkWzXdlbZOZWF5DymIzVfLwqrfelShlQEf/LU4K/novsIAZfsu
         ir1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780404050; x=1781008850;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FC/oGgXfgkM39LoHP/4Q+MJLr6VB9M/zzchAiEgk6p4=;
        b=DizBdzF3TrCrsjnPbW9RcJBFRq3DwVkzLV0fi9CtsTFiJLkiylAbD065zxOD9ins0E
         FSVzWLbkaGGYz3pBGaa7tgZF8ywWPhDQZRnT1QBt4f0ELj8bQTrIojr/7bbjckifwCf+
         lwV71jOVX32sjxWf7UKEvJi2Zqz4gtXbxmZJSSyzZhe78zg24jz5KaHGbcr5XdgzS/IM
         rIQRJoS486o/FDjoicSU6VS1vlxxBDdi6zArCcmS8kjmWuZGgS4LBQNbMXDH0C0VirNz
         7gCbHQUg5H0ZgYSmSeBLHYQ4AUPWMeVSuEOqq/stGjXdjAh5YAOXRslWOxNLa1USO6lF
         r45g==
X-Forwarded-Encrypted: i=1; AFNElJ8l0CriUz8dydIElHcSQ4k+JP9dYMbfxbyYT1Y6uNZiISvtlSRe6Bjjd7RBelCntTfYj9Heq9vx2kb5@vger.kernel.org
X-Gm-Message-State: AOJu0YwVXkTxF9scfiAv0nqfPT+WQPbUGgRotN6SQqlZhZPg01Nwub0b
	2zECWc7xJwea4+yrIdRtCzowfn0vLMMs+ixCH++aNpICrtExQcyrXAjy
X-Gm-Gg: Acq92OE+fKjaLnzZEKRbkG8Woeq63UGi1FEsf23ZDkCTB38ckPQjOmAJilQlc/KPSOo
	VYUocU6hFo/jhUf6YfwI5h/M+ax6/myZpFvgZbBVsp57FMMScFjqTd6GSS4KI0mR37a9MAXEDTU
	HyTsFr6YWjZdTXbJSBZrOBaXm39J3qcZ5qP16D1MkJtjwSyaymjU4e1fZ4SX9skhSgvh/dCK0PL
	9XAnfU6qWspBTnGUPj7R64BiFuagkUL6o/FxpYpTtp+Fodv2uvNwNS0ZgKDMUg5OEzTv2tiQgrK
	VjZiu7xBiee+m9DL8A9DKQp9nhRLwFvb0Rmxg1JY9hB8Z+9TXxjGKYCZ1Ro/ejpwC+CiJsBNu4H
	PnUi732/YSXjDEOhHsaGS5te0a6xMKI0NfIeWiwJutMPr2yIFGoPuYW4fbdcjqr3SXRyDkdY1aL
	Y0Jr9uKxBL/wqa5BBiVDXubBG/IEv5Gn4CWURllrtDKSEwrAw=
X-Received: by 2002:a05:600c:a11:b0:490:b0f1:c27e with SMTP id 5b1f17b1804b1-490b0f1ce6dmr64690285e9.24.1780404050209;
        Tue, 02 Jun 2026 05:40:50 -0700 (PDT)
Received: from localhost ([2001:4bb8:152:df59:3b69:56ea:a39b:adb4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490af60e03esm59078855e9.2.2026.06.02.05.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 05:40:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 02 Jun 2026 14:40:47 +0200
Message-Id: <DIYKK894ZZW5.26RO6S0GL2201@gmail.com>
Subject: Re: [PATCH v4 2/4] iio: light: add support for veml6031x00 ALS
 series
Cc: "Andy Shevchenko" <andriy.shevchenko@intel.com>, "Lars-Peter Clausen"
 <lars@metafoo.de>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Rishi Gupta"
 <gupt21@gmail.com>, "David Lechner" <dlechner@baylibre.com>,
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, "Matti Vaittinen" <mazziesaccount@gmail.com>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
To: "Jonathan Cameron" <jic23@kernel.org>, "Javier Carrasco"
 <javier.carrasco.cruz@gmail.com>
From: "Javier Carrasco" <javier.carrasco.cruz@gmail.com>
X-Mailer: aerc 0.21.0-143-g2f3a2e260c09
References: <20260531-veml6031x00-v4-0-e64f7fdce38d@gmail.com>
 <20260531-veml6031x00-v4-2-e64f7fdce38d@gmail.com>
 <ah6p-f2RCW8VcuDR@ashevche-desk.local>
 <DIYI40YK6CSX.2P4017PHVJHCT@gmail.com>
 <20260602133806.53590943@jic23-huawei>
In-Reply-To: <20260602133806.53590943@jic23-huawei>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305641-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gupt21@gmail.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:mazziesaccount@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:javier.carrasco.cruz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:javiercarrascocruz@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[javiercarrascocruz@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[javiercarrascocruz@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,metafoo.de,kernel.org,gmail.com,baylibre.com,analog.com,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6ADE662E250

On Tue Jun 2, 2026 at 2:38 PM CEST, Jonathan Cameron wrote:
>> >> +/*
>> >> + * The gain selector encodes (PD_D4 << 2) | GAIN to identify each ga=
in setting.
>> >> + * Gains are multiplied by 8 to work with integers. The values in th=
e iio-gts
>> >> + * tables don't need corrections because the maximum value of the sc=
ale refers
>> >> + * to GAIN =3D x1, and the rest of the values are obtained from the =
resulting
>> >> + * linear function.
>> >> + * TODO: add support for MILLI_GAIN_X165 and MILLI_GAIN_X660
>> >> + */
>> >> +#define VEML6031X00_SEL_MILLI_GAIN_X125  0x07
>> >> +#define VEML6031X00_SEL_MILLI_GAIN_X250  0x04
>> >> +#define VEML6031X00_SEL_MILLI_GAIN_X500  0x03
>> >> +#define VEML6031X00_SEL_MILLI_GAIN_X1000 0x00
>> >> +#define VEML6031X00_SEL_MILLI_GAIN_X2000 0x01
>> >
>> > Not sure if these one-time use definitions improve or not the readabil=
ity
>> > of the code. Up to Jonathan.
>> >
>>
>> I prefer these definitions, and a similar pattern is used in multiple
>> drivers in IIO, but I have no strong feelings about it.
>
> Looking again at this, what do the numbers in the defines actually mean?
> Seems a bit odd to have the base gain of 1 being called X125.
> Maybe a comment on that would be useful.  I don't mind either way
> on defines for this but if that number is useful to have I'd rather
> have a define than a comment on each line.
>

I thought that MILLI_GAIN was already documenting what x125 is: 0.125 =3D
125 milli. More than the base gain of 1, it is the lowest gain you can
configure.

>>
>> >> +static const struct iio_gain_sel_pair veml6031x00_gain_sel[] =3D {
>> >> +	GAIN_SCALE_GAIN(1, VEML6031X00_SEL_MILLI_GAIN_X125),
>> >> +	GAIN_SCALE_GAIN(2, VEML6031X00_SEL_MILLI_GAIN_X250),
>> >> +	GAIN_SCALE_GAIN(4, VEML6031X00_SEL_MILLI_GAIN_X500),
>> >> +	GAIN_SCALE_GAIN(8, VEML6031X00_SEL_MILLI_GAIN_X1000),
>> >> +	GAIN_SCALE_GAIN(16, VEML6031X00_SEL_MILLI_GAIN_X2000),
>> >> +};
>> >
>> > ...



