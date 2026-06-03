Return-Path: <devicetree+bounces-306410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p09mEjxaIGos1wAAu9opvQ
	(envelope-from <devicetree+bounces-306410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:45:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4F9639E2D
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:45:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=2mSyo6ob;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306410-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306410-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E90F43168372
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 16:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 455E43DFC60;
	Wed,  3 Jun 2026 16:01:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FD63DE441;
	Wed,  3 Jun 2026 16:01:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780502477; cv=none; b=EyigOCl2MtpytLI2bajYt+DlN5UVKwzYEcqSF5GiKf95SLDn6dbnU1J/3fefzbCt7Ia4mt+Ama+UxUxm5/c5Q4lbqld01gTsWT6QVoOWY/jkhrVULWXL6TpyVSszKEvkcl0OxysXBT7ElB/Lmt023/C4VF6Qz62nJwlES9bUnrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780502477; c=relaxed/simple;
	bh=BsbNWYH2izjNOlDmI6SDg0Mqw8LEsK+UeDW79yunUl8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=gYWX3yKX0QSoifqMUD4xKEUulvJyFRGlY+omzsHR6ifs2jr/WAPcInG+ibN84HpSGduAXJ9lU1KeqncfuawBNMlZoJZhscxLLtFhMqcqNtOSZ/AIAnFY+GFhZCSF8t5j5P6TqwcOBceBv1bBe72XVGORm1iilMOcBxlGjSesuZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=2mSyo6ob; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D62944E40115;
	Wed,  3 Jun 2026 16:01:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A1B675FA0A;
	Wed,  3 Jun 2026 16:01:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5AF7410888CCD;
	Wed,  3 Jun 2026 18:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780502472; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=BsbNWYH2izjNOlDmI6SDg0Mqw8LEsK+UeDW79yunUl8=;
	b=2mSyo6ob2XjgIYSC6YCVIviauScosz4++r4o2nlrcqQmCtc37rKKI/nelCWMCXnv7L5gwv
	kzg9BeDuf4FNeNKQPGgcMjGdrcz+6XdgWB+ALzXsfqlvu47abJSsUOA/BQ23IxpHUK4skv
	wDlqudx4SA6+bPFD02rtBT3LxbHaT86ovWvv5Ne8w48KiA6sa2bHAcCrAmUtAj4DsOMCBg
	SV0D9313Gthd0PjoA5TbUVXlLNvtxaQO4LszmbeY4APM6KvwVcRj4kreiL/Vgp+Fn4IwQ5
	jhfX1+NJ06sOhFQ67Mx/we1is+1MPU6dM2U76t7+lxy2kHxLS3uK3vOKOP5JAQ==
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
In-Reply-To: <20260602164945.GA475455-robh@kernel.org> (Rob Herring's message
	of "Tue, 2 Jun 2026 11:49:45 -0500")
References: <20260527175527.2247679-1-s-k6@ti.com>
	<20260527175527.2247679-3-s-k6@ti.com>
	<20260602164945.GA475455-robh@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 03 Jun 2026 18:01:07 +0200
Message-ID: <87zf1by5oc.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306410-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:s-k6@ti.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:from_mime,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C4F9639E2D

Hello,

On 02/06/2026 at 11:49:45 -05, Rob Herring <robh@kernel.org> wrote:

> On Wed, May 27, 2026 at 11:25:16PM +0530, Santhosh Kumar K wrote:
>> PHY tuning requires a known data pattern to be readable from flash.
>> When no partition is explicitly identified, the controller must search
>> all available partitions to locate the pattern by label, which adds
>> overhead and relies on label naming conventions outside the
>> controller's control.
>
> I agree 'label' is not the best choice. Software should not care what=20
> 'label' contains. It should really be 'compatible' instead.

But compatible does not seem relevant in this case, right? We are just
flagging the location of "some useful data for the controller".

>> Add cdns,phy-pattern-partition, a phandle property that allows the DT
>> author to directly reference the flash partition holding the PHY tuning
>> pattern. The controller uses this partition during calibration, avoiding
>> the partition search entirely.
>
> Do you have any data that this approach being "direct" is faster? In=20
> fact, it might be worse. Instead of searching just the limited number of=
=20
> partition subnodes, you now search the entire tree for a matching=20
> phandle value. We do have phandle caching, so that might save you
> here.

True, but besides performance considerations, I personally do not find
elegant using a partition name/label, but maybe that's just personal
taste :-)

Thanks,
Miqu=C3=A8l

