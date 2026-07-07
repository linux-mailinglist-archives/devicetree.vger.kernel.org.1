Return-Path: <devicetree+bounces-321644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kvo+LLVYTGrejQEAu9opvQ
	(envelope-from <devicetree+bounces-321644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 03:39:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7B716A2A
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 03:39:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Qy87WceC;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321644-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-321644-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 212043027701
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 01:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2418F30CDB6;
	Tue,  7 Jul 2026 01:38:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C63830B51E
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 01:38:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783388337; cv=none; b=dp0piEX+wDHUZ3KaQ8fKz+l+/vInd4IlRnFRki6RnyFHm+H4ST6i20CNaqSkXdcyhNlvqpo65Kso9wqoBAvtM+Ff1sYQUkNwzMsZoOm9V2GcbuM30V9A9yWcq81qcLGuHtJU+FfbDt42QEpyYO/FACir75PwiQ0q3BmMk4j7OM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783388337; c=relaxed/simple;
	bh=GWqzWiq+j0RxHQzZhZDV6By8omBIwJBlTOY3h8xOhoo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Sl4Lzy4WilgKpRrAQJcJkHYS6iAivjAsDjxyyx8bsYrO+3Dowce1Cer+E9VWQ04YWRj8UN9fR8k6aI8QCkoMJyycGoPQDfaZs8TmORakzkdfvIE0U2lSnEFHNRvQIvJD5rsE8OSEzvRut6YW+Omjki5MUrys+p+0BG1w9OkLgls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qy87WceC; arc=none smtp.client-ip=209.85.221.175
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-59d07df448bso3342284e0c.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 18:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783388334; x=1783993134; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1LriMcSNJ5pcK00Rw56VbtN5AdDBaoG9VSgFiEqdgUk=;
        b=Qy87WceCbs+O9UDgYBNHcByygLc88G1jalNXMOOoS9SZIFvtoSbIbK2HagIJ65ikVu
         LL8QML5aZIDzIgrIFE5rQ2/xuAMKD71N8u7i9fYGT2LIl6MmUGJCYmbsSy3LtPMA7jln
         2VsJy0xCaw3JgBkFDQIAenBrINm+GbjwW8GXjyAnU1LJnZLSIudFwgpb0Nr12iMdjum0
         ukReE0spUVc/zK9gCVFUaBT//u5EpJvk0zB2UdoWYJCYPPjODpqrhL1ZFbWd0dczsFN4
         39natcpHLPPV60dIZTgUHn5O12K6Ox7/wTVAXfZNxweKCNmnoUcoC6Awp2WJjcHn0dkS
         vmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783388334; x=1783993134;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1LriMcSNJ5pcK00Rw56VbtN5AdDBaoG9VSgFiEqdgUk=;
        b=iIkI8F80WrA+2Tz3eNo7kENijl+drBvPU7tZ0joeLn86swlS541PG1oqUsbluJmRgc
         zgSPCqZqJIbGNAuuczAxHKCQkI2nAtb+6xAzXNDU9mSN++ZbHhAkPDaWJSkWzEKSpGDv
         B8mh7B/bosYFFK7U6OZfeqUFdQIvFRuAMlWvny5ZohqyDykQAClzOgUF9s6mUg0SaAlK
         JGJZq1mBu7JqcUZY3JWKtuL0nYMPd/ljCHXEZPtp3prlGRh+E8ckjxSi3gh2ramfT+DP
         CtalKFdWkamaMv2wqaDDIF1Zmn9NwkJ+rzDw/byIYhSs9yWVNgITBrSQ4N56rYIcEucy
         pisA==
X-Forwarded-Encrypted: i=1; AHgh+RqiMHFOhQKhzkJTV/FvdYmzv+W2pRdk4dFMJRqmwEAo8dngVy+Dxj5tCQjqLBgg71YgdpH4IlcWOu28@vger.kernel.org
X-Gm-Message-State: AOJu0YzbQz2OEshNFnktFCL6Z8f2tNIk3IU8WAPJylWoibubpglRs7o4
	LhhTfh9T8Z08mlpGXRH7JalIJEarHAqZSJSjNmuvoyuD1IWAbYq9DU6gOxvevQ==
X-Gm-Gg: AfdE7clhjmVRdt8TU+bQmaHeANtKgi2dGKPZyyHKlz4/bWKRPPiN8OKkmZto3/ElWAx
	iVM6KQN+MBFLyImztoS1bkREN66T59oIi7+SOk4g2cl3Gs6ktaQ+vwfCdPu3+CbKdvPguUbJCWL
	Y0mT4paU1bBNjAmGvAuG224yTp0kW03u3DOY+e39M7DuN3sJ8ELUi7okdaZcL18sqbH4IszwlLN
	Pu8gloikURoWqXV9CCdNAyZj0xKcfb+3c/xYFgUQflxrEGDNzHSJ1FTHQxbX5ZM4E7J/DhRcmP1
	ey90hPy65blatdQ6orLAeCIxacvzi2K4GWCxY7Fd9r132OJJZikImXzRDWL52XhzL+4krpvyzgR
	BMu7cbMn5Os6yRdna6rR1n9oqMPxNB0UL98YZPFkxRk2oPgwdWfyk0ye22jy6afkh8Yd/TNrh71
	g0lUQ=
X-Received: by 2002:a05:6122:3d4b:b0:5bb:d233:70bd with SMTP id 71dfb90a1353d-5be8974163emr1912443e0c.2.1783388334524;
        Mon, 06 Jul 2026 18:38:54 -0700 (PDT)
Received: from localhost ([2800:bf0:82:11a2:7ac4:1f2:947b:2b6])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5be02934c13sm5894170e0c.3.2026.07.06.18.38.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 18:38:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 06 Jul 2026 20:38:45 -0500
Message-Id: <DJRYEEGVFY2A.2115GKK5BG36M@gmail.com>
Cc: "Kurt Borja" <kuurtb@gmail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy
 Shevchenko" <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 5/7] iio: adc: ti-ads1262: Add conversion delay
 support
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Jonathan Cameron" <jic23@kernel.org>, "David Lechner"
 <dlechner@baylibre.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
 <20260628-ads126x-v2-5-4b1b231325ba@gmail.com>
 <20260630015027.3afdfc3a@jic23-huawei>
 <DJMK3NCDCHL8.1EHG93D5O7ROZ@gmail.com>
 <d8fbab77-6cb4-435d-aac9-0d72cd4a59bc@baylibre.com>
 <20260701012026.29f18bf4@jic23-huawei>
 <8dd4bb6b-a83d-4584-8893-b56b8aaed973@baylibre.com>
 <20260706182317.64cb0a4c@jic23-huawei>
In-Reply-To: <20260706182317.64cb0a4c@jic23-huawei>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321644-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,analog.com,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 16D7B716A2A

On Mon Jul 6, 2026 at 12:23 PM -05, Jonathan Cameron wrote:
> On Mon, 6 Jul 2026 11:19:40 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
>> On 6/30/26 7:20 PM, Jonathan Cameron wrote:
>> > On Tue, 30 Jun 2026 13:44:49 -0500
>> > David Lechner <dlechner@baylibre.com> wrote:
>> >  =20
>> >> On 6/30/26 12:23 PM, Kurt Borja wrote: =20
>> >>> On Mon Jun 29, 2026 at 7:50 PM -05, Jonathan Cameron wrote:   =20
>> >>>> On Sun, 28 Jun 2026 00:36:06 -0500
>> >>>> Kurt Borja <kuurtb@gmail.com> wrote:
>> >>>>   =20
>> >>>>> Expose the programmable conversion start delay as a per-channel
>> >>>>> IIO_CHAN_INFO_CONVDELAY attribute.   =20
>> >>>> Coversion delay was always a somewhere weird bit of ABI.
>> >>>> What are the delays relative to in this case?
>> >>>> Is this a device that does simultaneous sampling?  Pictures
>> >>>> suggest otherwise, and convdelay is currently only defined
>> >>>> in that case.  We might be able to extend it but it needs
>> >>>> some thought.   =20
>> >>>
>> >>> The chip has a configurable internal conversion delay to allow for
>> >>> external settling effects. See datasheet section 9.4.3 if you'd like=
 a
>> >>> bit more details.   =20
>> >>
>> >> Since this depends on external components, it sounds like it belongs
>> >> in the devicetree. I have the same feature in the chip I am working
>> >> on and was just looking at this and plan to add it to the ti,ads112c1=
4
>> >> devicetree patch.
>> >>
>> >> This delay only applies to a "new conversion", i.e. when certain conf=
ig
>> >> registers change, and not every conversion, so isn't like the convdel=
ay
>> >> attribute. =20
>> >=20
>> > See settling-time-us in adc.yaml.  I'd forgotten we had that ;) =20
>>=20
>> I got some more feedback on this and this may indeed be something we
>> want to tune at runtime after all.
>>=20
>> I'm not really sure where it fits in though. On AD112C14 that I am worki=
ng
>> on, the DELAY register value adds a delay (for settling time) in additio=
n
>> to some other intrinsic delays. I'm pretty sure ADS1262 is similar.

It is! there is a fixed 52 usecs delay after starting conversions.

>>=20
>> So one question is do we want a usespace control to be the total delay
>> or just the additional delay?
>>=20
>
> Total I think.
>
>> And when the delay takes effect depends on other things. Normally the
>> delay only happens before the first sample after any other parameters
>> change. If we read the same channel again with the same config, then
>> there won't be any added delay. But if input chopping is enabled, then
>> this delay happens on every conversion.
>
> Hmm. That is awkward.  I guess the best we could do is either to document
> it as 'may be skipped if channel setup is unchanged either via explicit
> channel or parameter change, or via chopping'.  I kind of think of choppi=
ng
> as advanced channel sequencing - inX-inY being switched to inY-inX with a=
 scale
> *=3D -1.

Thinking about it this way, shouldn't there be userspace control for the
chopping stuff too? Something like in_voltageY_chop_type, similar to the
filter type.

>
>>=20
>> I'm a bit on the fence of if we should extend the definition of convdela=
y
>> for this or if we should propose a new settling time attribute. I'll hav=
e
>> to think about it some more.
> Smells different enough that we shouldn't smash the two together.
>>=20
>> Maybe something like in_voltageY_calibsettlingtime?
>
> calib might be reasonable if it was a tweak to a fixed settling time
> and like other calib stuff would not necessarily have any scaling.
>
> If it's the whole thing and in seconds then in_voltageY_settlingtime=20
> should be enough I think.

+1 for this. in_voltageY_settlingdelay might work too, as both our
datasheets call it "delay".

>
> Jonathan
>
>>=20
>> >  =20
>> >> =20
>> >>>
>> >>> But you're right, I should at least also edit the ABI description of
>> >>> this attribute. We can postpone this discussion for a future series.
>> >>>    =20
>> >>>>
>> >>>> Jonathan   =20
>> >>>    =20
>> >> =20
>> >  =20
>>=20

--=20
Thanks,
 ~ Kurt

