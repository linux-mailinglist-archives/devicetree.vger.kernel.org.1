Return-Path: <devicetree+bounces-320255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +35RAAjhR2r4gwAAu9opvQ
	(envelope-from <devicetree+bounces-320255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 18:19:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBBB704325
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 18:19:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=Nvvw3IFW;
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320255-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320255-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53639304500D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 16:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2A282F5487;
	Fri,  3 Jul 2026 16:13:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10DA220F2A;
	Fri,  3 Jul 2026 16:13:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783095185; cv=none; b=n53MxU1Gdt0OPwdkhml42ea96SXAZhPiPMD9CazQ2l+H0+qGkMiScjQelZF/zreOy2Tw/rfmj8OgDbWGwyrCn1uRjqeG/3V2Bt0dg3QyhKjQ5woYC/VXgfFy9RvzyfISNhcyezR4mryPXlAE+3eoSZWbyBHzpaN2DBpsX3S6fsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783095185; c=relaxed/simple;
	bh=sEs4rY7eHqvNO9iNPud7g4FzDBOXrr28xDXC3lthqhM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bG4ZmvyQfkc26VCUfrAA1RePmxhjA5sYxvXHVwHmQGTTIA22zRQ3KeXC7UPFJa/zMPStklHxcHAN+Cs7hLTPm4H5i9blkFh9U+9wat25V8e3aQBu2l6f4a4m6cSbLdjoppdEoIya9LNfEk5gwurJZfGVFfNxGHuVAK2ldkFAUNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Nvvw3IFW; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=sEs4rY7eHqvNO9iNPud7g4FzDBOXrr28xDXC3lthqhM=; b=Nvvw3IFWR+JVGJVmxPzeEJSXsb
	5aMY2F1V9t+poqC7mKWF2rFowHP+iGLhSVv3M21edc0tutACoaqePA2o7KuyiHQXfpKkq0HTHeD3+
	y1zh48ybvfK/BXuQudhUtfPm2CXIThJlqDRxfP7rBkq627HZ2K2VDdyF2iF34xEW9MDohn7z6C8Da
	KqmyvcIpVUrMlJFk2x84W/n7fMzNd1YjqO+sd83EyJJaEXgfcsqx4u/NWhYQDWnwSS2W3Gpbkgjog
	iHRtxclyuNNsCK9iLyoTzH7qzAeD0YeFu0kESBaGSxSJEnAId7/u1uwb9SyOk4s1fcAPhDaGi2MTU
	GaqHM7fg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Brian Mayer <bleemayer@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: add HYM8563 RTC to Radxa CM5 IO board
Date: Fri, 03 Jul 2026 18:12:47 +0200
Message-ID: <2960762.AiC22s8V5E@diego>
In-Reply-To:
 <CAB3eKoDcp=rVGDpvAHEeVLG3rHFw2E1XXxCe2QaApX0aLkyXyA@mail.gmail.com>
References:
 <CAB3eKoDcp=rVGDpvAHEeVLG3rHFw2E1XXxCe2QaApX0aLkyXyA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bleemayer@gmail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-320255-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sntech.de:from_mime,sntech.de:dkim,diego:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3DBBB704325

Hi Brian,

Am Donnerstag, 2. Juli 2026, 21:09:20 Mitteleurop=C3=A4ische Sommerzeit sch=
rieb Brian Mayer:
> Hi kernel team.
>=20
> I was testing building the kernel for my radxa cm5+io shield, and it turns
> out there is no rtc in the DTS, so I got it from the radxa files.
> This is my first email to you, please help me correct it if something is
> off the standards.
>=20
> The commit attached does the trick. I used AI to assist me in this in
> case you're
> wondering.

Generally, please don't post patches as attachments.
=46or review comments it es expected to be able to comment
inline in the patch.
Ideally use git-send-email or b4 for sending patches.

=46or AI assisted changes, there is an Assisted-by: tag [0]

Please drop the Tested-by tag ... as you're sending in the patch and
your signed-off-by is on it, it is expected that you tested that change :-)=
 .


Patch contents:
Please use names found in the schematics ... the pin is named
 rtc_int_l there ... so the pinctrl entry should be "rtc_int_l: rtc-int-l {=
 "...

This allows easier lookups when going from DT to schematics and back.


Thanks
Heiko


[0] https://docs.kernel.org/process/coding-assistants.html



