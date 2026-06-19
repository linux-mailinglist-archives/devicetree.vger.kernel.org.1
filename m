Return-Path: <devicetree+bounces-313920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FTdzCMpyNWqlwgYAu9opvQ
	(envelope-from <devicetree+bounces-313920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:48:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6C16A721F
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:48:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lCreRhUP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313920-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313920-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBCC230B9C6A
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D9E3C062D;
	Fri, 19 Jun 2026 16:42:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84BB3BFAF7
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 16:42:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781887355; cv=none; b=DPsrhyF/QpvDXWzvWEatoxBzxUz7sRqHAhDhc8X0XlWNwqqNJgW0W6/1EnPrfCubk5+cL8hXOIgrb++JGkiWzyVMY+aOtOc3DnaZPRiBPUvspc85Xa/cFRY8M95+7UD/J0M9v0+T3gvrkzYi6qJdvz/xZ+9NrvV1JsAh0D9KZFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781887355; c=relaxed/simple;
	bh=lGqfVqHp7IgOCm986NUub13iFYVxwSczQ/I5pqbghkw=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=YPpUBwJIpfBjxqSa00ipO2u4sSVJ5wKWOBSeMHqzIXo1huELsGEPZFWFxTAZuYNIMmde8A0+8jAB5vd+jkdyIMv/3KgZVW0zhSCgSBUeotKp3hWdZm+XBnQgE7xAH8aZoz5LGfRmyNu7ftJXLp55BLErgaUltQFfugMgzOso0gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lCreRhUP; arc=none smtp.client-ip=209.85.221.175
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-59d4aa96ef2so1505728e0c.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 09:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781887353; x=1782492153; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELZL/C7i8kxA2LaFSzCmmxgMq2wx5Z7M2LGJVxqtl+c=;
        b=lCreRhUPzagKcqEsaOttBoKjADYn1NVL5Mtd5MI52uBy9J8zp19/YlcXq1iBxqrk8/
         FwkaCjlB4Q0n9EVXt9IoojBNI4/V9gnqmVC43dEU/dN9HAI3Nzc07OMAL3VHbdwaSZNu
         PtjPDzGk05XuozAerzp3s5xfp9pPmtDk+my+uIGECbPS8sd/BMolIAMwOI8qjyf1vxsw
         +uT9bVj+4sBOY6X2RU0mh1Gq1mx3FCqt6H+8CU21UTow35/BZ3NschMZggB7UeVBat+g
         tsn0gtBPCir6fs2tX1+7BZszXTuCFtLmyv9ZX30jvQkYoXIM7C3s8sZZLi66VDjZWlcK
         K91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781887353; x=1782492153;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ELZL/C7i8kxA2LaFSzCmmxgMq2wx5Z7M2LGJVxqtl+c=;
        b=FRLcqsy0jfsj1GFyAMBzoSol32Qa5gdswgqRHxsUsONSUnMxLz4y5b8O5HXmCTLZr7
         xsEyvyv3kOgP4k/lYD4Qn85xez1sctFzMxFoYX3eRMQK2IOb+A+iIIKspuJ7eNxUtxVF
         9qTXC+QgmYpsdnf2GvkhZZAmlzvyBDimP69NEjNo585HdDHuDR/wLcgdTyrRXTE4EGxd
         MRk6/FJLC7ISH6iCEU8REnZmpfLjCP7Xh8+xhi+u6DjQbDiGOq39hakW+dYMBM3ZXZk4
         pX8mzDeZWaIzsSChaW9V8eH94PApiXSPNif3HTBzGWQgS4S9iOtonleN9LtidkvyJITO
         6MqQ==
X-Forwarded-Encrypted: i=1; AFNElJ+L210TouG+3dho9Orpab0S5QhCJbaTtDG4Ynk9oiGSXaNk89VWlmKrCJHR9xbvM/M+tgApA+nm/xQf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2hCFNVC6KmSnn8ALenEaFd8VJ3VR+wwQ/IO5EbEnNd8MsW2M8
	06+IWdhHoN3Bl36zP0bDOavek7wfGtIPTvFOx1fJqZUFdRQXpIWB6wQY
X-Gm-Gg: AfdE7cne/hJCPgPAsJkGmT9Q+orCv/e9HO9ewQK5ZYNTsTCpn2wLD0HQpeXtFGbjeke
	H5pss/VVLEb10QcwyAesUYSLy6nQXTfMjXNOiwLNSUnXpQ4/32MdIbGT65ySWqwqSZYiEQnPiBB
	dnKdxI8TgbppJYpBZiXLOKwTvtpc4RatDcglMU8HHe61setALRM6GSSEA5sVjO2VBIO8Lw71h4C
	zUA5XqdwAeWnxL/AMN0DpUvwKm0tOecD5h3b4IHBNwCDH+YHtmz/gfD46MmaXo43rkMRBSDUzDb
	U+7XtupcJUV0D6pcMxgVEzg9OkogHbWsoQkfrlEzTkvzuJdO3+a+NY0Gzw1Ui147fCvjl6STiya
	OfN4k5+OO7RRl1EclfNtX0zfCfmcBDXwD8KfWpacMP8ldmfJw9Ge9rhU+EXWRxf3RVlLMk3T0b8
	U0AVQ=
X-Received: by 2002:a05:6122:7cf:b0:5a0:3d17:f939 with SMTP id 71dfb90a1353d-5bbebbd1400mr2477614e0c.9.1781887352797;
        Fri, 19 Jun 2026 09:42:32 -0700 (PDT)
Received: from localhost ([2800:bf0:82:11a2:7ac4:1f2:947b:2b6])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bbfb7d30besm151445e0c.2.2026.06.19.09.42.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2026 09:42:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 19 Jun 2026 11:42:25 -0500
Message-Id: <DJD6CHX9XQT1.2WS9V7TOWJUIT@gmail.com>
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFC 1/3] dt-bindings: iio: adc: Add reference-source
 property
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260618-new-channel-props-v1-0-963c1b5cf40a@gmail.com>
 <20260618-new-channel-props-v1-1-963c1b5cf40a@gmail.com>
 <736962f9-50b9-4884-88b1-94bfd7cd8abf@baylibre.com>
In-Reply-To: <736962f9-50b9-4884-88b1-94bfd7cd8abf@baylibre.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313920-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E6C16A721F

On Fri Jun 19, 2026 at 9:24 AM -05, David Lechner wrote:
> On 6/18/26 7:33 PM, Kurt Borja wrote:
>> Some ADCs have configurable voltage reference sources for each channel.
>>=20
>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Docume=
ntation/devicetree/bindings/iio/adc/adc.yaml
>> index b9bc02b5b07a4c..c74c2084fdb68c 100644
>> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
>> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
>> @@ -73,6 +73,16 @@ properties:
>>        device design and can interact with other characteristics such as
>>        settling time.
>> =20
>> +  reference-source:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    maxItems: 2
>> +    minItems: 1
>> +    description:
>> +      Indicates the voltage reference source or sources for this channe=
l.
>> +
>> +      This array describes either a single reference source or a positi=
ve and
>> +      negative reference sources.
>
> Do you actually know of any devices that allow independently selecting
> the positive and negative sources? I don't think I've ever seen anything
> like that.

The ADS1262 allows it, check the REFMUX register. Only ADC1 allows it
though, ADC2 has a single reference select.

Maybe I can get away with only one for both ADCs without restricting too
much.

> Also, this should be string, not uint32.

Sure!

>
>> +
>>  anyOf:
>>    - oneOf:
>>        - required:
>>=20

--=20
Thanks,
 ~ Kurt

