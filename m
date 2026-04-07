Return-Path: <devicetree+bounces-285378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HedL9oo1WnB1gcAu9opvQ
	(envelope-from <devicetree+bounces-285378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 17:55:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F4C3B15DB
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 17:55:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DC803026776
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 15:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682873CE497;
	Tue,  7 Apr 2026 15:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="EZCC+bZk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A1E3C6A27;
	Tue,  7 Apr 2026 15:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775576800; cv=none; b=U1m/eBO/Y1gqyCovgjLf+b61Sz6cVvhKZ7a1Waf/UR/G2sxeYF887we0QHLRwj7PMKYbDzsFH3K5VjnGetZE4gYdmgNOFbMlhnGMR7+x42aX+nqNk+LQplP5UdfqEK/dw6FzMyYiF2yJwugXGcvlS+RnW4JQ/JX8VS9p9A+54V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775576800; c=relaxed/simple;
	bh=CUeyn+KT2IfAF2Z286PBqcMn8YSvSsd9KV1WNimIlg8=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To:
	 References:In-Reply-To; b=nFsBorUOH3nKMxgUdTUAE+EQv3qf/nabT71nz8WWMD2yDa3VCiPHxHg54HXZFPvC7lzGl9I413zSTOyXANpnoJG+uTQkTTE8r2VS2DGFg+lOhaOmBuZhYDQ3yHawBlT4dVWzdWlHE7aVUS+SVAXzPwY8emSDOcBtXC4aYo0ghYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=EZCC+bZk; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 68B4BC5B18D;
	Tue,  7 Apr 2026 15:47:03 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6A241603C7;
	Tue,  7 Apr 2026 15:46:29 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C6F1B10450100;
	Tue,  7 Apr 2026 17:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775576788; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=kXDjfKQNj28Im7bJaSBn1QDitehpBDWVDEOonldAWl8=;
	b=EZCC+bZkhn+Hq0FS02lQqvAWcrV54LER3VCEeenHsI3xy/2AVXCuJkpNj2+EY8R4c/Sy0x
	bWQT39gyoynJzpDXwAS+CLffDWdlTdcMaz4U4H0+awd6PzokKyBWfJx8JPLssYV85/J0Xo
	F4FfzNRLT7ya3WvC6uSMfQXRRevPT7FPo6a7Yrn+ADSMwWM/l85mdg++/zg0oHCzdoSQpr
	u/COq4ubhU1Id6wEZ9lSlqRyQzp41MA1fFE3Q/nVLqSQteE8MIpVt+D7e/ojk0zSo5XSrT
	GxJjm6p0dPMSYUyrQPAXDdHD/YytkNdRwyzWdqR6onz1E7xiVmnzKaPgVNA+4A==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 07 Apr 2026 17:46:24 +0200
Message-Id: <DHN1FU9M67IT.3MKUA8VO3MHI5@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [RFC PATCH 10/15] fdtdump: Handle unknown tags
Cc: "David Gibson" <david@gibson.dropbear.id.au>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Ayush Singh" <ayush@beagleboard.org>, "Geert
 Uytterhoeven" <geert@linux-m68k.org>,
 <devicetree-compiler@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree-spec@vger.kernel.org>, "Hui Pu"
 <hui.pu@gehealthcare.com>, "Ian Ray" <ian.ray@gehealthcare.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>
To: "Herve Codina" <herve.codina@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260210173349.636766-1-herve.codina@bootlin.com>
 <20260210173349.636766-11-herve.codina@bootlin.com>
 <DHHX0MU38SMV.1NAWHIZ7STHW4@bootlin.com>
 <20260407160345.5adad916@bootlin.com>
In-Reply-To: <20260407160345.5adad916@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285378-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid,bootlin.com:email,bootlin.com:url]
X-Rspamd-Queue-Id: 22F4C3B15DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Apr 7, 2026 at 4:03 PM CEST, Herve Codina wrote:
> Hi Luca,
>
> On Wed, 01 Apr 2026 17:15:09 +0200
> "Luca Ceresoli" <luca.ceresoli@bootlin.com> wrote:
>
>> On Tue Feb 10, 2026 at 6:33 PM CET, Herve Codina wrote:
>> > The structured tag value definition introduced recently gives the
>> > ability to ignore unknown tags without any error when they are read.
>> >
>> > Handle those structured tag.
>>
>> How? This sentence is vague, what about:
>>
>>   Allow dumping the unknown tags or not based on a command line flag.
>
> Hum indeed but I don't fully agree with your proposal.
>
> The patch adds support for structured tag in fdtdump and introduce the '-=
u'
> option to dump unknown tags which can be safely ignored.
>
> What do you think about:
>
>     The structured tag value definition introduced recently gives the
>     ability to ignore unknown tags without any error when they are read.
>
>     Add support for those structured tags in fdtdump and introduce a
>     command line option to dump unknown tags that should be ignored.

Looks way better now, thanks!

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

