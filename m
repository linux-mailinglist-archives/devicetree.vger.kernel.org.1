Return-Path: <devicetree+bounces-327040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6bzxDouOV2q3WwAAu9opvQ
	(envelope-from <devicetree+bounces-327040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:43:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D15875ED2D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:43:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=THXCv1Pq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327040-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-327040-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 05354304C789
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E017A2877E8;
	Wed, 15 Jul 2026 13:32:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43170.protonmail.ch (mail-43170.protonmail.ch [185.70.43.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CBD29BD8C
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 13:32:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784122360; cv=none; b=X+kR/c8KA/42G/ZvRdehKZxf+GJ8ZV/WeNm2CHemJNnSRke3/ewPUG7osAksbAwRcDfunyLTphBcfDkYY6K9CI/itQaMWLy6b+an0hDrxA6+4SyTOgSdzXYBxZ2UtBZDDoKVEffuXvlefYtK+6yjow+OZQc6zA+y4p2CohhGwTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784122360; c=relaxed/simple;
	bh=W8CO2KxXvI9NYWsBJxzXoHxL1JMJwIwl/nfFG3GfYRs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tO2he0P5A6gQEOyV5dO/0i0ts78QtrZJe2XTCTrp5/ALDKMFnP4HNA5CRXrmNtPpNOu1nSAnUEeS5VN1/A29ILvXn7LW9HiYfhHee7ziHPjFAoTVxwfu5YvksKTom1Myk8DhJSk6mZsITCeuiq84es8Ypn4DOQ7aDRCr4qZgo0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=THXCv1Pq; arc=none smtp.client-ip=185.70.43.170
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784122357; x=1784381557;
	bh=cZMyF7lKN/fVrjH0IISFT/Q0aua/g9KR2me/3HTTkB4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=THXCv1PqP+wN0+z4mzJVbKT6lJkjEvhgEyDnfOabCVL4SdBUBgKZDz255A1rm6mq6
	 iO4pHK99JY59bQ2GSPt/LS8GgWHbubd1KaDfEOWTyVHy/uVR1BqTjTliyi2tLJU/vw
	 /30rdvj5jeJEfHPjOE8azfbh581qsqC1lreEmQrAvFl2fVelBLQ9TGlaPjQj9sisPF
	 DNxWoHbYT67XycUFKdIEqL6Q7VqXBjp3SduvjO2kXsYRJu0qQLwtQgLZQVXMmUGQsD
	 yFD3kSA6OA3IRNiHux6avVRP8DFMifc4iRFHWkVhPsV44P09HU7nE52K4idP9NqAaF
	 dXCuPVGz5KgxA==
X-Pm-Submission-Id: 4h0cYC2N19z1DDXd
From: Esben Haabendal <esben@geanix.com>
To: "Joshua Crofts" <joshua.crofts1@gmail.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>,  "David Lechner"
 <dlechner@baylibre.com>,  Nuno =?utf-8?Q?S=C3=A1?= <nuno.sa@analog.com>,
  "Andy Shevchenko"
 <andy@kernel.org>,  "Rob Herring" <robh@kernel.org>,  "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,  "Conor Dooley" <conor+dt@kernel.org>,
  "Nikita Travkin" <nikita@trvn.ru>,  <linux-iio@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/4] iio: light: ltr501: Power down chip if request
 irq fails
In-Reply-To: <20260715145944.00001de5@gmail.com> (Joshua Crofts's message of
	"Wed, 15 Jul 2026 14:59:44 +0200")
References: <20260715-liteon-ltr329-v2-0-d18af55edab5@geanix.com>
	<20260715-liteon-ltr329-v2-4-d18af55edab5@geanix.com>
	<6-wUX5EiSYvh9vD_ssjPFzgUU5Zufzt16ne6vtLlfMmSVNXcH0PfzmPA-0l9gRPnGufaUTd4coEpWEknDRlbqA==@protonmail.internalid>
	<20260715145944.00001de5@gmail.com>
Date: Wed, 15 Jul 2026 15:32:30 +0200
Message-ID: <87tsq0ml8x.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-327040-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nikita@trvn.ru,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[geanix.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,geanix.com:dkim,geanix.com:email,geanix.com:mid,geanix.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D15875ED2D
X-Rspamd-Action: no action

"Joshua Crofts" <joshua.crofts1@gmail.com> writes:

> On Wed, 15 Jul 2026 14:27:26 +0200
> Esben Haabendal <esben@geanix.com> wrote:
>
>> In case request irq failed, we were leaving the chip powered instead of
>
> devm_request_threaded_irq(), please mention functions and structs by their
> full name to prevent ambiguity.

Ok.

>> powering it down again.
>
> + a very short explanation of what you did, 1 sentence

I will do what I can.

>> Signed-off-by: Esben Haabendal <esben@geanix.com>
>> ---
>>  drivers/iio/light/ltr501.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
>> index 379e57ac5f5b..9d4de798e5ab 100644
>> --- a/drivers/iio/light/ltr501.c
>> +++ b/drivers/iio/light/ltr501.c
>> @@ -1571,7 +1571,7 @@ static int ltr501_probe(struct i2c_client *client)
>>  		if (ret) {
>>  			dev_err(&client->dev, "request irq (%d) failed\n",
>>  				client->irq);
>
> While you're at it, you can remove the dev_err() call as devm_request_threaded_irq
> already calls dev_err_probe on failure, creating duplicate messages.

Consider it done.

>
>> -			return ret;
>> +			goto powerdown_on_error;
>>  		}
>>  	} else {
>>  		indio_dev->info = data->chip_info->info_no_irq;
>>
>
> --

/Esben

