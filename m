Return-Path: <devicetree+bounces-297121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I3zJ6HiBGrPQAIAu9opvQ
	(envelope-from <devicetree+bounces-297121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:44:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8A153A9FB
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:44:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E1C5301E3EE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F741382F1A;
	Wed, 13 May 2026 20:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="INiy8UQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0868236F8EB
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 20:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778705053; cv=none; b=guFdsGZR3dtalhrbF1bk9HDcMjs4SWMfqnTyOHr1BzGGguINxa+KXnJw4k3sTDatIObU5Wle/lTl6I4mXQSqRpULoSY4mHMFsbA+2ZeYDlYurhmCQIvFFCCkm7m+pIFJZDWG61LoALQx0fknxgI2pXH+u/iZ8mWKcpdPvm2P1VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778705053; c=relaxed/simple;
	bh=utb8PxUAQ21IQGDkeCLP3Nrl6lFjdmkAk949vvRVAE0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=EHEoqNxbET1pkIKOw9CqgRkzfHWd6InhrXy6xzDr5ECeXcyRnwHdNhz28Uqalg+vCI3c2GftkhVzEux2FiLnknbb8x8apSoTGdD3VsC42pYPWg43p50Mbg1tBpXiTvqsxQIZuWro101CZ2Trhf3mXGDj4gPsP2KfEybs9dWAIpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=INiy8UQR; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c801b30188dso3212074a12.3
        for <devicetree@vger.kernel.org>; Wed, 13 May 2026 13:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778705051; x=1779309851; darn=vger.kernel.org;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MCVwevTrbyLjyeQl3sspspHpkcp4yNudK5glbIfDxdM=;
        b=INiy8UQR1f7J//L6PbQVdxQ2uRzGWCLC4OUrT4s3RUjn2KfCyClCwJUmSc4keTpxKw
         TiD4t7tfGBnasffm3habMD1fHcU/56v+mVGvEptA38HhCsWze0mVRGHn3YEYZlZ+mlXD
         tdznfWuMNSJBtfxC94RQvmGhNK6H2nzeyeyl6vEwDQh36PDf53G2nKv+KDCY42gStcR0
         djXzysVCxTn76Wn6Hkoy+UFpl4hBd4dmkdrQfLaByvACwx5xYD73mbdDubrvEtBhmIU6
         rFr8RtKIq6cU7b3/IVWao7iKc2n1Tpw+iBN9UHqODinwLYBxdutQ7iCfGhZe/U6Ka5+n
         ic2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778705051; x=1779309851;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MCVwevTrbyLjyeQl3sspspHpkcp4yNudK5glbIfDxdM=;
        b=bOYSnN/QYI2aUTtPJRjgWnTwbAs6Fn2BpaWuTwVnoUG3dH64B7Bq9gSSg21vWr++o5
         6ohSwHZneSurS1KZOU3nQnuzlCUJTonge39N+NYYqsxy93l5mcm4dBD+qQBuVLXmGjrk
         VzGSI/h4TufGyD3xSW8+MT/uaFUZ5ID6pEhnplu+Zayf1/Ky4JAU3IuBIDbX7/8GPsU7
         H8tTRsQ/pxZB5MrKfgNnNY09KQXc1ja+1Fbp34A4MB5yrtAvxBku4/mo1ix9q2YzQyR4
         LDXemSelD7WnXIG3qr2eY00JhR/DD+Y9wr2+4Z2tIGOmCtIK40th9LVyA5DBkPBmfVhZ
         raVw==
X-Forwarded-Encrypted: i=1; AFNElJ+zwpkRWzf1aIEXNJ6CXAyo+8KcD1xiu99bVkC3Jnd5qoqBlTcpTph+3f/SGD05bdeXEUPb6da2sr7N@vger.kernel.org
X-Gm-Message-State: AOJu0YxD6YIMKIJe4ZTaCpNswCbiUb3BNASgPqJy15z1NAfWDXxINmGl
	29G1InOO6sdJrGEIZRbNyckrvVrPq4aLfTAlMgL9935Fb3Qpfe1dMfVV
X-Gm-Gg: Acq92OHDtjzjExHKVxfisnU8taK20bJay0JGRE5GuUu0GD7oXTh4VzHVtvmJWAmVKCD
	Y9K/0rSmmnbvXr6Z9oc1aitXEb3ChsmpS2wVifrhLxpJ45/PU+4MSnARALExxgKOaqGWUNaOPXg
	ox+aLd3Ah3ERnSCwXJWONnemYVnQk52lfkxPzBywqAmLv9t6Jpk8jk+GFtW0SxvGQ86e/fZEjlr
	JDPC2HMy11gtalB5eDm7ZJEhlvoC/ogwrXt2t1f4MRTRvcpsgowsGvdfDmgamIokg9YC47NzVTD
	0FsQ7cSAQfFTl9Oicxkc5jhUPHragtGXbxPo1LA5Y6FaQHHt/XBbeePINSX48ksJawduiVInDjP
	T7R3crz9ehegw25z7GiGfGHZTngULw6n0dwU3yUa3HzfRtl7BBhnLTYKewj/5782Nolh8a4jpOC
	gRAXuca/NtcD0D6dCqDUuU1fyHv6Bms7JK5A==
X-Received: by 2002:a05:6a20:9188:b0:3a2:d79c:4159 with SMTP id adf61e73a8af0-3af82786dd4mr5739325637.32.1778705051152;
        Wed, 13 May 2026 13:44:11 -0700 (PDT)
Received: from localhost ([203.99.159.227])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f196660f9sm485790b3a.10.2026.05.13.13.44.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2026 13:44:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 14 May 2026 09:44:00 +1300
Message-Id: <DIHUBAWF7RQ4.205UNZAU31THF@gmail.com>
Subject: Re: [PATCH v2 2/4] iio: light: veml6030: fix channel type when
 pushing events
Cc: "Jonathan Cameron" <jic23@kernel.org>, "Lars-Peter Clausen"
 <lars@metafoo.de>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Rishi Gupta"
 <gupt21@gmail.com>, "David Lechner" <dlechner@baylibre.com>,
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, "Matti Vaittinen" <mazziesaccount@gmail.com>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
To: "Andy Shevchenko" <andriy.shevchenko@intel.com>
From: "Javier Carrasco" <javier.carrasco.cruz@gmail.com>
X-Mailer: aerc 0.20.1-4-g02324e9d9cab
References: <20260513-veml6031x00-v2-0-4703ca661a1d@gmail.com>
 <20260513-veml6031x00-v2-2-4703ca661a1d@gmail.com>
 <agS5Xu8ORtEwuwOB@ashevche-desk.local>
 <DIHR47ZGCUOK.2CNX05W0I8F6F@gmail.com>
 <agTY71MPPJ1b7qLC@ashevche-desk.local>
In-Reply-To: <agTY71MPPJ1b7qLC@ashevche-desk.local>
X-Rspamd-Queue-Id: 0A8A153A9FB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297121-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,gmail.com,baylibre.com,analog.com,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[javiercarrascocruz@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Thu May 14, 2026 at 9:02 AM +13, Andy Shevchenko wrote:
> On Thu, May 14, 2026 at 07:13:41AM +1300, Javier Carrasco wrote:
>> On Thu May 14, 2026 at 6:48 AM +13, Andy Shevchenko wrote:
>> > On Wed, May 13, 2026 at 05:49:42PM +1300, Javier Carrasco wrote:
>> >> The events are registered for IIO_LIGHT and not for IIO_INTENSITY.
>> >> Use the correct channel type.
>> >
>> >> This bug was introduced in the first version of the driver.
>> >
>> > Unneeded detail, if it's a bug, use Fixes tag.
>>
>> >> When at it, fix minor checkpatch code style warning (alignment).
>
> ...
>
>> >> -	iio_push_event(indio_dev, IIO_UNMOD_EVENT_CODE(IIO_INTENSITY,
>> >> -					0, IIO_EV_TYPE_THRESH, evtdir),
>> >> -					iio_get_time_ns(indio_dev));
>> >> +	iio_push_event(indio_dev, IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
>> >> +						       0,
>> >> +						       IIO_EV_TYPE_THRESH,
>> >> +						       evtdir),
>> >> +			iio_get_time_ns(indio_dev));
>> >
>> > AFAICS the indentation is still broken. Why not doing like this:
>> >
>> > 	iio_push_event(indio_dev,
>> > 		       IIO_UNMOD_EVENT_CODE(IIO_LIGHT, 0, IIO_EV_TYPE_THRESH, evtdir=
),
>> > 		       iio_get_time_ns(indio_dev));
>>
>> Thank you for your feedback. According to checkpatch.pl, both variants
>> are fine. Mine takes into account the indentation within
>> IIO_UNMOD_EVENT_CODE(),
>
> And still have broken indentation with the last parameter. So it's not fi=
ne.
>

I am sorry to insist on this, but I beg to differ. The last paramter
(iio_get_time_ns()) is properly aligned as an argument of
iio_push_event() and not IIO_UNMOD_EVENT_CODE(). That is exactly my
point: with my indentation it is clear that iio_get_time_ns() is an
argument of iio_push_event() and not IIO_UNMOD_EVENT_CODE() because of
the alignment. Moreove, my proposed alignment (which again, is fine with
checkpatch --strict and the original one for example wasn't) is
consistent with many usages of iio_push_event() in existing drivers. I
just checked that there are dozens like mine, being the majority when it
comes to this kind of indentation.


>> and yours only accounts for the indentation for
>> the arguments of iio_push_event(). Moreover, your suggestion goes beyond
>> 80 characters and mine does not,
>
> When it's about readability the 80 characters is not a strict limit.
>
>> so I would prefer sticking to mine if
>> possible.
>
> I recommend to reconsider. Mine has no indentation issues, the only subtl=
e
> "problem" is 86 character line. And looking at the result I find mine bet=
ter
> to read (hence the exception may apply and we are fine with the length of
> the line).
>
>> As I said, it passes checkpatch --strict without warnings
>> in both cases.
>
>> I will send a new version adding the Fixes tag and removing the comment.
>
> Make it the first patch as the currently first one does not sound like a =
fix
> to me.

Ok, I will make this one the first patch of a smaller series with the
right Fixes tag added to it and removed from the other patch that
affects veml6030. I will split the new driver in smaller chunks and send
it as a dedicated series but continuing with the current versioning.

Best regards,
Javier

