Return-Path: <devicetree+bounces-327128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PrzIJqKcV2qRXwAAu9opvQ
	(envelope-from <devicetree+bounces-327128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:43:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2CF75F842
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:43:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=ljbkJQYP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327128-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-327128-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9EAAE303BEDA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A47C37BE6F;
	Wed, 15 Jul 2026 14:25:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106111.protonmail.ch (mail-106111.protonmail.ch [79.135.106.111])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F284372B2B
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 14:25:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784125535; cv=none; b=IYxRgESAh+aerjTQa6G9MpC+G/VgMeRtmGhe0pkfdpXmpusqbsJ8WuTcaHS5QTJxEFdLzyjigbP5TdHCBZS8/AOots7lfc/3uy/MZd44MgY9cwEhMuQzTVvOA+KzDSUR5gFBSK+5bWlB9DelQ88JsAPdWjG3WosqfYSJrbCUj6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784125535; c=relaxed/simple;
	bh=GeDIbgRlS6fUdbHKGckyqDNBmPLZ9jcqValoYs8kUdA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KOceQv3PGa4Uc9GaAm/AZm2GRTTD6ZjNmkXthMNALCyPBOYkYvZzxXn5HOMQV6tKQooCVyn6pDbFDglKOCUJoyCpYTRU8Qe4VYPVyktTsBKdL1Tb9wqor3Vy/Axkl9GmObS5xI+vhx2UWr5+mro4y6STPlQf7yzOdSZPplZfOWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=ljbkJQYP; arc=none smtp.client-ip=79.135.106.111
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784125527; x=1784384727;
	bh=fmOsYysRo/2GaRHkitPrIZI9ffCTiu0UYR2lmYlNZUo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ljbkJQYP+exDy5BAHGvDzdBoIG/IlFxEvX8A7cHCTMSkGvgz+kX5K2+dBbuCvfWpa
	 zmGNZoW3p7RiroHBbBl+OIgcsgj/jf1vWcpp3jua0Fz4Mek7ALl04sJaGBGNVp75NT
	 CXV5jRXqU6nW7MU/nU7DHkxFmMVsVPQBCjGt7/bCBWSRDjI9Wg+HIFUAcURCpJKdT3
	 Tlbcm25RF7WGPq7yNoumsOT2PoB1UvadacdG5eXhr7wu1YEH/2tR7+JKwUwrtmVOaw
	 rGQiY9MBVkvSutkSGyIAgx02+Xe0Yqp3TN6NXgxqOEirTs37rz3p//i1NEo92qROuM
	 /j34YGKBISrvA==
X-Pm-Submission-Id: 4h0dk9633pz2ScmM
From: Esben Haabendal <esben@geanix.com>
To: "Andy Shevchenko" <andriy.shevchenko@intel.com>
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
In-Reply-To: <aleQVYrK9YBoLqGl@ashevche-desk.local> (Andy Shevchenko's message
	of "Wed, 15 Jul 2026 16:51:17 +0300")
References: <20260715-mma8452-open-drain-v1-0-b1dd2a440c60@geanix.com>
	<20260715-mma8452-open-drain-v1-2-b1dd2a440c60@geanix.com>
	<cA7m1VgJxkr39GAxpnMPw9PVIKX2TR8Ju4Q0m6L2SxS_jJNITfZ6AA5LOeMIK0jGFXaUptY1_vPhDd_imWw5FQ==@protonmail.internalid>
	<aldH3vtk_eKh6oCC@ashevche-desk.local> <87ldbco582.fsf@geanix.com>
	<Tu8Mavh-mfl8Vv75Oab3vrghtEbTXiYPZ4qhj6RZv8xe5nWKP4lG1KSuJXEQfyKeio7zv9myLbmifMjFTl8juA==@protonmail.internalid>
	<aleQVYrK9YBoLqGl@ashevche-desk.local>
Date: Wed, 15 Jul 2026 16:25:20 +0200
Message-ID: <874ii0misv.fsf@geanix.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-327128-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:martink@posteo.de,m:sean@geanix.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:martin.kepplinger@theobroma-systems.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:email,geanix.com:dkim,geanix.com:mid,geanix.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F2CF75F842
X-Rspamd-Action: no action

"Andy Shevchenko" <andriy.shevchenko@intel.com> writes:

> On Wed, Jul 15, 2026 at 01:35:41PM +0200, Esben Haabendal wrote:
>> "Andy Shevchenko" <andriy.shevchenko@intel.com> writes:
>> > On Wed, Jul 15, 2026 at 10:07:39AM +0200, Esben Haabendal wrote:
>
> ...
>
>> >>  	if (client->irq) {
>> >>  		ret = request_threaded_irq(client->irq, NULL, mma8452_interrupt,
>> >> -					   IRQF_TRIGGER_LOW | IRQF_ONESHOT,
>> >> +					   IRQF_TRIGGER_LOW | IRQF_ONESHOT |
>> >> +					   data->open_drain ? IRQF_SHARED : 0,
>> >>  					   client->name, indio_dev);
>> >
>> > Why do we care?
>>
>> Care about what exactly?
>
> About exclusivity of the interrupt.

Ok.

>> We need to add IRQF_SHARED flag in order to allow shared interrupt, and
>> we should not add it when using (the default) push-pull mode.
>
> Why not? How would it make any difference from SW perspective?

Not adding the IRQF_SHARED flag prevents use with shared interrupts. I
think we are on the same page on that.

Unconditional adding IRQF_SHARED flag would allow configurations where
other devices share interrupt line with mma8452 compatible chip
configured with push-pull, resulting in broken or unpredictable results.
I don't see why we should not care about that.

> Yes, I understand the HW case.
>
>> > The (hidden) problem this will have in the future is that the IRQ core
>> > will splat a warning in case that other shared IRQs might be
>> > configured with different flags. Putting that flag conditionally makes
>> > it a mine field for the users. Instead just unconditionally add that
>> > flag and we will get reports as soon as there will be a user that
>> > shares the same interrupt pin with some other devices which drivers do
>> > not use the same settings.
>>
>> If we add the IRQF_SHARED flag unconditionally, it will be set also when
>> push-pull mode is enabled. I don't see how the kernel will be able to
>> notice that that is not going to work. If you have another device that
>> uses IRQF_TRIGGER_LOW|IRF_ONESHOT|IRQF_SHARED, it will not work with the
>> MMA8452 device when configured as push-pull.
>
> Right, and why do we care (again)?

Why we care that the system as a whole (SW on top of HW) will not work?

If we don't care about that, why do we even have this IRQF_SHARED flag?
The only purpose of that is to tell the kernel that this particular
device / interrupt will work with shared interrupt or not.

Isn't that exactly what I do with this change? Nothing more, nothing less.

> It's pure DT/FW/HW issue, not an SW issue.
> Otherwise it will become a carefully placed mine for the poor user who will
> use these flags and try to share an interrupt with the mma8452 device which
> has no set property and uses push-pull mode.

I don't get how you see it like that. Adding IRQF_SHARED unconditionally
would create exactly the mine field you are talking about. Poor users
can specify a system configuration (DT) that tries to use a shared
interrupt line, but configures the mma8452 compatible chip in push-pull.
The poor user will not only be poor, but also unhappy.

By applying the IRQF_SHARED dynamically, the kernel will be able to fail
in a controlled manner instead, making it much less painful to create a
working system configuration (DT)

Going back to your poor user story above, if the poor user tries to
share the interrupt pin with the mma8452 device, it will get an error
(just as it is with the kernel today). The device does not support
shared interrupts. Reading the DT bindings documentation, the user
should be able to find the drive-open-drain property, and add that to
the device-tree to make things work. Maybe even consider if that is
compatible with the hardware being used.

If IRQF_SHARED was set unconditionally, the user would not get an error,
but most likely would get a system where no irq's were raised for the
other chips. I sincerely believe that debugging this is much more
painful than reading device-tree bindings.

> Did I miss anything?

I don't know. Maybe I am missing the obvious here.

/Esben

