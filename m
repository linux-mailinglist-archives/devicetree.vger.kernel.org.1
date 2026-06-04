Return-Path: <devicetree+bounces-306667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BnVNIq0pIWq1/wAAu9opvQ
	(envelope-from <devicetree+bounces-306667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:30:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDA063DA35
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:30:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=dMdEvho4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306667-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306667-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7B67530080BE
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2E43CE0A8;
	Thu,  4 Jun 2026 07:28:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57B39DBCC;
	Thu,  4 Jun 2026 07:28:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780558117; cv=none; b=Dqe32y9mz0Iw636tTu79xDkJiVKDg0dKFwykuWhLopQ+TzNQuvdQsuqQQi94SeUFVoreg78wr/4q8c8h83VAbZcDDsTfdJML8t4+4hraorJ/cHM47jtCVD72Y/hlSe/Uko6qE/+r06FmJy3Gvsni5IPCHrT+ZuT2sDOWputqgpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780558117; c=relaxed/simple;
	bh=N3FYJH0Na6n0IvoTQRLh82Jz6KolB+LqBxz9CxTQz94=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=hVn1U90s0bLKaQMaihAWuIfF5TfGBl+ghYsM9HVoSkrGc12JSWHGjmAbPZREG/G8cUFBaxrQkKlBWaohl8GlSmSfE91LEfRjRow8Cw4lgZAbAFLha+friT3ipKGjFXk6sgx00PbwdZPeIWZQqIy2T86f9T6FdaMyheNs/XW9SDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dMdEvho4; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 02051C6344A;
	Thu,  4 Jun 2026 07:28:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D1AD45FEF7;
	Thu,  4 Jun 2026 07:28:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 456D4106A1395;
	Thu,  4 Jun 2026 09:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780558113; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=N3FYJH0Na6n0IvoTQRLh82Jz6KolB+LqBxz9CxTQz94=;
	b=dMdEvho48GdK6q0uOpDC6L/F42yGqD6zMP7d3/DWu1YG2xKyP41yvy8Ls25V2u26R+R6mw
	Ll8krPj+hKwrsNoDpMuj6gqO1kVC+8FcKaFegFHR63i2FrG67i9r6U8z8dRxVmTqI13OQA
	NX2h+kXu06x/b60IjPtlrP5XOA2ctB2D1VbJrrCyv+UqChU71mwngXqLITHqc0KydvPqmL
	cbnLanbbpXYvPYaGr97h/TB2WNJjKlhWQgdfl1rKPz0RdVX3ZtPAm+UGv36GIz2XtI32oW
	GfA4m28YL1V5ltQLEpS1UbcvdoPPjQ7phMVD5k/7mEnV5IG5CEJjfLEZJXDryg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Santhosh Kumar K <s-k6@ti.com>,  broonie@kernel.org,
  krzk+dt@kernel.org,  conor+dt@kernel.org,  richard@nod.at,
  vigneshr@ti.com,  pratyush@kernel.org,  mwalle@kernel.org,
  takahiro.kuwano@infineon.com,  linux-spi@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-mtd@lists.infradead.org,  praneeth@ti.com,  u-kumar1@ti.com,
  a-dutta@ti.com
Subject: Re: [PATCH v3 02/13] spi: dt-bindings: cdns,qspi-nor: add PHY
 tuning pattern partition property
In-Reply-To: <CAL_JsqJwxgcFOB=kE7bVQYDn740-w4RppMF5W-3Ne9=9qV9OrQ@mail.gmail.com>
	(Rob Herring's message of "Wed, 3 Jun 2026 12:38:46 -0500")
References: <20260527175527.2247679-1-s-k6@ti.com>
	<20260527175527.2247679-3-s-k6@ti.com>
	<20260602164945.GA475455-robh@kernel.org> <87zf1by5oc.fsf@bootlin.com>
	<CAL_JsqJwxgcFOB=kE7bVQYDn740-w4RppMF5W-3Ne9=9qV9OrQ@mail.gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 04 Jun 2026 09:28:29 +0200
Message-ID: <87cxy6ydb6.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306667-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:s-k6@ti.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,bootlin.com:from_mime,bootlin.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BBDA063DA35

On 03/06/2026 at 12:38:46 -05, Rob Herring <robh@kernel.org> wrote:

> On Wed, Jun 3, 2026 at 11:01=E2=80=AFAM Miquel Raynal <miquel.raynal@boot=
lin.com> wrote:
>>
>> Hello,
>>
>> On 02/06/2026 at 11:49:45 -05, Rob Herring <robh@kernel.org> wrote:
>>
>> > On Wed, May 27, 2026 at 11:25:16PM +0530, Santhosh Kumar K wrote:
>> >> PHY tuning requires a known data pattern to be readable from flash.
>> >> When no partition is explicitly identified, the controller must search
>> >> all available partitions to locate the pattern by label, which adds
>> >> overhead and relies on label naming conventions outside the
>> >> controller's control.
>> >
>> > I agree 'label' is not the best choice. Software should not care what
>> > 'label' contains. It should really be 'compatible' instead.
>>
>> But compatible does not seem relevant in this case, right? We are just
>> flagging the location of "some useful data for the controller".
>
> compatible is what tells us what a region contains and how to use it.
> That seems exactly what we need to define here.

We usually talk about "programming model" when it comes to compatible,
here we just need to point at an offset which is in no way different
(from a hardware standpoint) than the other offsets. I honestly feel
like a phandle property would be simpler, also because compatibles in
MTD are already quite complex to manage and I would prefer not to add
more complexity into the parsing logic.

>> >> Add cdns,phy-pattern-partition, a phandle property that allows the DT
>> >> author to directly reference the flash partition holding the PHY tuni=
ng
>> >> pattern. The controller uses this partition during calibration, avoid=
ing
>> >> the partition search entirely.
>> >
>> > Do you have any data that this approach being "direct" is faster? In
>> > fact, it might be worse. Instead of searching just the limited number =
of
>> > partition subnodes, you now search the entire tree for a matching
>> > phandle value. We do have phandle caching, so that might save you
>> > here.
>>
>> True, but besides performance considerations, I personally do not find
>> elegant using a partition name/label, but maybe that's just personal
>> taste :-)
>
> I agree. That's true for all the partition nodes with only node name
> or label to go on. We should fix that at the source. However, you
> already have to support using label,

Hum, no? There is downstream support for labels in TI kernels, but we
explicitly asked Santhosh to drop it for mainline inclusion. His commit
message may be a bit misleading on this regard because he is mentioning
labels like if we were already using them, despite the fact that we are
not.

> so anything else is supporting a
> 2nd way whether it is compatible or a phandle property. Is it really
> worth it here?
>
> Rob

Thanks,
Miqu=C3=A8l

