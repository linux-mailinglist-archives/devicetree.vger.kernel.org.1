Return-Path: <devicetree+bounces-326953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TBwXLKd7V2pBPAEAu9opvQ
	(envelope-from <devicetree+bounces-326953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:23:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E60375E0BB
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:23:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=CAJgIwGS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326953-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326953-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3A0BB304C81F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09C8C4611C4;
	Wed, 15 Jul 2026 12:22:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244106.protonmail.ch (mail-244106.protonmail.ch [109.224.244.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BDB4657F3
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:22:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118126; cv=none; b=ZoDg5XF2LZynsCKPV04TXm+n1VOBS8GDaEttOxJEgYcigAhv5aqyGjn4yaGWtDp3UzcOwvrheCEN4UdFGvafyTdP6TWZnvLCNNzq0jTnjUaOcmmylalY5Mu5nWtoTjlofeiyIXs7OLbqAVZAUfBjOfY/jFrCU/c2g1arezey7uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118126; c=relaxed/simple;
	bh=c8+buBaJGMSrDnJBI//Ou5Zwaqm0ew1TsCZe1gWdAVo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=r5ZB2PBr4zH/NEkerBmCR3kn1waDg1YyqCjIT2yB7zJyg/xnPyvdPGUIhTXJetPuJhk6h5/H9rw+tcxTjjdjqnfnFnH1d/VUwwokwtW0K0hiswhQMVuz6Lk1PXjJU5VI3eb43X/Ntl28hp86jzv4Jup0I2H2RS3vcp6EDyg4Y0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=CAJgIwGS; arc=none smtp.client-ip=109.224.244.106
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784118119; x=1784377319;
	bh=3N1Zqjfndfoh12O8JfCwnA/9yzVp6g+jHv5eU99EtmA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=CAJgIwGS/Syw5IE9bu1FBrKhDoOGIsnkwVasP1WmCvgZ4a2zrOtAVS2gdXrvZgmy3
	 Er6JjZK5BUPx0qk6XcKuGJ12p0U7TC0DmuSZVjVW+A5GzWSwrmGkoWb4A39hkHm20l
	 O5crc6m/IievaoOeew2rWipHvW6E25+UYRKDLWSztXMIGGACcBBY5r/sFBP6kA//h0
	 xDu3QtV0AZf4slYFevxkuXqD0C4TcvBrmDZMSRD7z96ICzQ23iaGd4Ni5CWSi3+Bab
	 MtAWYDrIFoiBLZmrkIcTxeGm2auyOfLeuM9BsWmKk2vMCT803ZX70S0vstx9iWSq6z
	 1Iy+e2BmK4gcw==
X-Pm-Submission-Id: 4h0Zzn3hYNz2ScPx
From: Esben Haabendal <esben@geanix.com>
To: "Joshua Crofts" <joshua.crofts1@gmail.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>,  "Lars-Peter Clausen"
 <lars@metafoo.de>,  "Rob Herring" <robh@kernel.org>,  "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,  "Conor Dooley" <conor+dt@kernel.org>,
  "Martin Kepplinger" <martink@posteo.de>,  "Sean Nyekjaer"
 <sean@geanix.com>,  "David Lechner" <dlechner@baylibre.com>,  Nuno
 =?utf-8?Q?S=C3=A1?=
 <nuno.sa@analog.com>,  "Andy Shevchenko" <andy@kernel.org>,  "Martin
 Kepplinger" <martin.kepplinger@theobroma-systems.com>,
  <linux-iio@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] iio: accel: mma8452: Allow open drain interrupt pin
 configuration
In-Reply-To: <20260715134053.000012d4@gmail.com> (Joshua Crofts's message of
	"Wed, 15 Jul 2026 13:40:53 +0200")
References: <20260715-mma8452-open-drain-v1-0-b1dd2a440c60@geanix.com>
	<20260715-mma8452-open-drain-v1-2-b1dd2a440c60@geanix.com>
	<PLKuTyVcES-o-CEsU7WA3Ir7-phI9WLM9PJ5UErJeahWgus8heVF4GPky0SC-EpaHLv54lZya37ivhub3W9kNQ==@protonmail.internalid>
	<20260715104542.0000433d@gmail.com> <87pl0oo5iq.fsf@geanix.com>
	<0RfJ6kNIpjdTDIh2uWC-FK3HRObOpQWqSWRm6hTgOFq6_wdHDyRfpatKMsvApvfFc0r-ye6piEWG888mBhp3yw==@protonmail.internalid>
	<20260715134053.000012d4@gmail.com>
Date: Wed, 15 Jul 2026 14:21:56 +0200
Message-ID: <87bjc8o32z.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326953-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:jic23@kernel.org,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:martink@posteo.de,m:sean@geanix.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:martin.kepplinger@theobroma-systems.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E60375E0BB

"Joshua Crofts" <joshua.crofts1@gmail.com> writes:

> On Wed, 15 Jul 2026 13:29:17 +0200
> Esben Haabendal <esben@geanix.com> wrote:
>
> ...
>
>> >> diff --git a/drivers/iio/accel/mma8452.c b/drivers/iio/accel/mma8452.c
>> >> index 7d683686dd9d..a20c02ce0b9c 100644
>> >> --- a/drivers/iio/accel/mma8452.c
>> >> +++ b/drivers/iio/accel/mma8452.c
>> >> @@ -81,6 +81,8 @@
>> >>  #define  MMA8452_CTRL_REG2_RST			BIT(6)
>> >>  #define  MMA8452_CTRL_REG2_MODS_SHIFT		3
>> >>  #define  MMA8452_CTRL_REG2_MODS_MASK		0x1b
>> >> +#define MMA8452_CTRL_REG3			0x2c
>> >> +#define  MMA8452_CTRL_REG3_PP_OD		BIT(0)
>> >
>> > I know that the defines are completely incorrectly aligned, but please
>> > ensure that at least all the defines in this block are aligned.
>> >
>> > Also, consider sending a patch which aligns all the other defines.
>>
>> How are they incorrectly aligned?
>> The all look perfectly fine here (visual tabs space set to 8).
>> Should I convert all the tabs used for alignment to spaces?
>>
>> AFAICS, I have added the defines with same alignment as the other
>> defines in that block. I believe the misalignment is only a visual
>> artifact caused by the diff format.
>
> Ah, I meant it as currently the defines look like this:
>
> #define MMA8452_WHO_AM_I			0x0d
> #define MMA8452_DATA_CFG			0x0e
> #define  MMA8452_DATA_CFG_FS_MASK		GENMASK(1, 0)
> #define  MMA8452_DATA_CFG_FS_2G			0
>
> but instead should look like this:
>
> #define MMA8452_WHO_AM_I			0x0d
> #define MMA8452_DATA_CFG			0x0e
> #define MMA8452_DATA_CFG_FS_MASK		GENMASK(1, 0)
> #define MMA8452_DATA_CFG_FS_2G			0
>
> I'm not sure if this was intentional or not in the original implementation.

Ah okay. I assumed it was intentional, hinting at the hierarchy of the
defines.
Should I flatten that, or is it okay to leave it as it is?
For what it is worth, I like the current format :)

/Esben

