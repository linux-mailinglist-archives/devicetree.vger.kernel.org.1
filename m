Return-Path: <devicetree+bounces-317988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E2/DBSP6Q2qgmgoAu9opvQ
	(envelope-from <devicetree+bounces-317988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:17:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DDF6E6D38
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:17:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Xb0avsC8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317988-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317988-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2C9693004680
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F823DCD9B;
	Tue, 30 Jun 2026 17:17:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A7B3806B5
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 17:17:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782839835; cv=none; b=T/NJfSNtwWFWS30dEj9ALcC6ueEZxrvW+X/NqH3D6sdDg5lVPjC5Q4c548aQ0fGaXpzdB4JoT90GCbhwSww/NCci7O6hZt5juzXbG1XefYkzZcE40rOqfXh1YLjkAzi/gvWiITPMqoXevLd+LbCNdauZXRc/33cflOgGz4a1GRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782839835; c=relaxed/simple;
	bh=kcKTxLx8cg84Be3WriXq6zjc1QipNRUBwqHADcvNn3Q=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=GcHmJLBJMpO3q0y+MKAeONuahaCHeH/JE8Z8GlPGiEbfNPVUwj9kqNO4XxxkmR3sf1IKE+ULBEw/55FaudM8k2AD8CuPJxEEptQMt9vEjmB54oYCGT577+XNrZQ3H8c5slxgl2/TEuAgh7IyNGbARDtduUOkLX84doh/pZctPWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xb0avsC8; arc=none smtp.client-ip=209.85.221.177
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-59e23d70dfaso1409935e0c.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 10:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782839833; x=1783444633; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tNos9pi0N+a/DhRm0VZ1MwDPwAUJhbz6pqtZ1iuOWS8=;
        b=Xb0avsC8+S4iv1mX1MNGC/56V3oapiakGKKA9lLIlRBpw8nBF7Dr+a4t7mIPe9s6BY
         nYTIrehhEaJxxsS3j5f8MTU7ZsaiZMEaDJVexnnwSJ2KGEhSd9InN4IKpIa8pqALeJF+
         WnsUGDct4s11XxsQPoqwARP5ziweJtWnEPQx2z0/F9tT6bCPcNoLY/1wWaH952O549F0
         X+BhFItaHo1ENuOZzb6XjCw4HozzwJLzAG7TZipd7TBFzpjF4yqGIttWzxBm+VINT+SL
         OZJp+hXxXgqJUTZapSyeynRjHR3ZIiZDf49KzMYLzMPjkiJ5BvP/NMMcncgYLTzxU4hi
         z7GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782839833; x=1783444633;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tNos9pi0N+a/DhRm0VZ1MwDPwAUJhbz6pqtZ1iuOWS8=;
        b=SA2//RFilhSfsQw6DLFL7bJMbhHCK3BYcQDkGGoMhS5uCPzaYzRobkJd/N6GrBGzzg
         hjRcanRlWOJbFgYc31uvQ6kiL39U2soO1iZxLOjaHABu/OSxZeA5ARUwdqR85yA5ofhV
         /QIOWzKx4oS17JPPyWV9wRGnPmlN6gmO8OhyYGCJ74LyewTFxas3Ec8EbaQo2MCVOn3H
         c01vjFx8xO4Pj/rIs5pX28wT+C4gxYeHJZlZAc1X0OH+cpKq0g50dVx9Oz8KH4XQDiRd
         +jH3Q8sKkQXBIQcsbmUEaMV+vIw1Meaaf7bW2UdFMxMfpuhdL/In7J2HtZgGx9wMlAuQ
         0mWw==
X-Forwarded-Encrypted: i=1; AHgh+Rp+Hqfg6/9Fm3KGbDwgkHCEojPMjvTdPCsxmfjOLDKr0FF5EW8M3CM012MZT7wgjqUiBy4zFT2MgotR@vger.kernel.org
X-Gm-Message-State: AOJu0YxmsBVFaDu0jXEseNK7H4lL2yaEZDuZcKUZwOYkOJ1JC9m3VWrZ
	uzSbVmHCuOizDm/NtPYYCw0ot1BUvDwcQHP7M5biyNoqLKyLoK0qDtSv
X-Gm-Gg: AfdE7cmielulV73G/xYgj4t2gYJyHaV876zwUlYk0VtFuU0sWAxficq4Ieztu1I4n+K
	MqXfCZFHekeOa8ZPJDLk3HhRv7pQ8IT/3bp9ZgiwCX6pGxAWtw3hjNbtEYern3araaAYhRBE6Yz
	hwkuvI79hQxwUalZyECu5gbg4rFCoZ8BjwNOINFE3i0lipTwrqq3ACSZ7hrUPfEWBdJo5le4TmZ
	fRjmrttH2XwK23MWLr5VnZqD9/MSkisXS3xGoZ6QbxR8ncGjuGA84auGmPRT/GCL+cCf1TqZGUd
	eW5h3b9XfBCNbJ1KDRWfsYPjmJ+VQjtvBEkAcFcraSMqodIH/hJd8L+OZy2ePsN9oitkL+RT5Id
	AUV9QqsV53IJrX3E346BTyUZntTuvbeKxa/Qokuy6NYoIeezuCXeQHOK20LCHxtKGgCltBDlkM8
	TTmRw=
X-Received: by 2002:a05:6122:8016:b0:5bd:c441:a823 with SMTP id 71dfb90a1353d-5bdc441b11amr988081e0c.6.1782839833216;
        Tue, 30 Jun 2026 10:17:13 -0700 (PDT)
Received: from localhost ([2800:bf0:82:11a2:7ac4:1f2:947b:2b6])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bdc1846eb0sm1760954e0c.4.2026.06.30.10.17.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 10:17:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 30 Jun 2026 12:17:05 -0500
Message-Id: <DJMJZ199MYOB.1T11CAYXWSEQG@gmail.com>
Cc: "Kurt Borja" <kuurtb@gmail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy
 Shevchenko" <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/7] iio: adc: Add ti-ads1262 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Jonathan Cameron" <jic23@kernel.org>, "David Lechner"
 <dlechner@baylibre.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
 <20260628-ads126x-v2-2-4b1b231325ba@gmail.com>
 <0d7a5a3b-dc11-472f-a09a-44df887d5147@baylibre.com>
 <DJKY6WN6KS2R.2ZF2TTJU7LBE3@gmail.com>
 <dba5ef4d-57e3-4016-842c-dad6990d7207@baylibre.com>
 <20260630013255.3ed41e28@jic23-huawei>
In-Reply-To: <20260630013255.3ed41e28@jic23-huawei>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317988-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,analog.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13DDF6E6D38

On Mon Jun 29, 2026 at 7:32 PM -05, Jonathan Cameron wrote:
> On Mon, 29 Jun 2026 09:38:13 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
>> On 6/28/26 3:00 PM, Kurt Borja wrote:
>> > On Sun Jun 28, 2026 at 12:15 PM -05, David Lechner wrote: =20
>> >> On 6/28/26 12:36 AM, Kurt Borja wrote: =20
>> >>> Add the ti-ads1262 driver with initial support for the primary ADC
>> >>> (ADC1). The ADS1263 auxiliary ADC (ADC2) is handled by a separate dr=
iver
>> >>> and interoperability considerations were taken into account.
>> >>> =20
>>=20
>> ...
>>=20
>> >>> +static int ads1262_read_raw(struct iio_dev *indio_dev,
>> >>> +			    struct iio_chan_spec const *chan, int *val,
>> >>> +			    int *val2, long mask)
>> >>> +{
>> >>> +	struct ads1262 *st =3D iio_priv(indio_dev);
>> >>> +	struct ads1262_channel *chan_data =3D &st->channels[chan->scan_ind=
ex];
>> >>> +	u8 realbits =3D chan->scan_type.realbits;
>> >>> +	__be32 raw;
>> >>> +	int ret;
>> >>> +
>> >>> +	switch (mask) {
>> >>> +	case IIO_CHAN_INFO_RAW:
>> >>> +		ret =3D ads1262_channel_read(st, chan_data, &raw);
>> >>> +		if (ret)
>> >>> +			return ret;
>> >>> +		*val =3D sign_extend32(be32_to_cpu(raw), realbits - 1);
>> >>> +
>> >>> +		return IIO_VAL_INT;
>> >>> +
>> >>> +	case IIO_CHAN_INFO_SCALE: {
>> >>> +		guard(mutex)(&st->chan_lock);
>> >>> +
>> >>> +		ret =3D ads1262_channel_get_scale(st, chan, val, val2);
>> >>> +		if (ret)
>> >>> +			return ret;
>> >>> +
>> >>> +		return IIO_VAL_INT_PLUS_NANO;
>> >>> +	}
>> >>> +
>> >>> +	case IIO_CHAN_INFO_HARDWAREGAIN: { =20
>> >>
>> >> There is only one other ADC that uses "hardwaregain". Usually, we jus=
t make
>> >> scale writeable to control the gain. I don't remember what the rules =
for
>> >> that attribute are. Using it for in_voltage is not documented in the =
ABI. =20
>> >=20
>> > I went with hardwaregain because the scale loses too many significant
>> > digits at high gain. With the internal reference and gain =3D 1, the s=
cale
>> > is at 0.000001164; then at gain =3D 32, the scale is at 0.000000036.
>> >=20
>> > In this case I expect users to just calculate the scale themselves bas=
ed
>> > on the hardwaregain. Is this acceptable? If not I'll go with
>> > scale_available. =20
>>=20
>> I'm pretty sure there is a series floating around that has proposed
>> adding new fixed-point IIO_VAL_* types that could be another solution.
>> We'll see what Jonathan says about this too.
>
> Yup. That series should allow for easy representation of very small value=
s.
>
> It's in my testing branch already (see iio.git on kernel.org)
> and IIO_VAL_DECIMAL64_PICO for most extreme case.
>
> HARDWAREGAIN doesn't seem appropriate here, so please do the really
> small scales instead.

IIO_VAL_DECIMAL64_PICO is just what I needed. I'll go for that, thanks!

>
> Thanks,
>
> Jonathan

--=20
Thanks,
 ~ Kurt

