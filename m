Return-Path: <devicetree+bounces-305638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uzR7LGzOHmphVQAAu9opvQ
	(envelope-from <devicetree+bounces-305638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:37:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E70C62E13E
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:37:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=IzdBcF7K;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305638-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305638-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9EECC3026497
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DCB53D7A03;
	Tue,  2 Jun 2026 12:36:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1074C3D75CD
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:36:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780403795; cv=none; b=dac0z4o3BJtF4PPOKlfCpIE1GikcsS1UG3h/yJ7tPwW2elxBe8Nbo21aILXT/PHZH7JGADmdOZEemZJx9QWpIjS2XRDiAEz01fXOu0gFM0bhaUv39/eYPpyuDoUfz4soqN7O9dojwdemHXf+KEmc+725dq2/19wZFjo62XdO9Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780403795; c=relaxed/simple;
	bh=SRPRaAh+bKL/wfIfWcgbiLpj4JaAtntWVoPHMgKJ5hk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mgBBiWE8F8lZVSuz5NwErAz6xlHl6KqY9iJfrMZvaauXRYCMqC9gF3Ucdz1QYQcvsXt8QxYRdhPUyqC0Eue95YSJVrAm81kKtyDaQi/SA3x+5Ew3j4vB+bFFx5cH019jBhzwDQ/d1/jhKovwtyue//IW0PzG4G+acRRA/lLFRDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=IzdBcF7K; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id DE735C6220A;
	Tue,  2 Jun 2026 12:36:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 43069603BC;
	Tue,  2 Jun 2026 12:36:23 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5CE99108883E7;
	Tue,  2 Jun 2026 14:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780403782; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=SRPRaAh+bKL/wfIfWcgbiLpj4JaAtntWVoPHMgKJ5hk=;
	b=IzdBcF7KMuSb7rZ5XB+aZYiM0E5ckcEKMIFaaFmESlAG2XXd/oPBYuAePWkIA+1XVt8AnE
	Uaae1GYa00ns3rwjBIIHI8NNiSRjpJ/HlnFxpC3VQjR21RTIaezCw4oUPpdI0Vb4S8sBE+
	9YG3xXTIGSm/2KP05PNUZNU5X1zOOayandiof2fO57ZKW4Cna75LUsxYSzHOF4SSldoRgs
	XZMzpGuHNAMXLxwgIKqtuZPCl1GVYEweyOfHNkDN699VQawnNiUZabi3YJ79OVIGpwCqRZ
	PDPoMjuKitoxIWOn2lQn18DJxCtPkpODwqQcIjYPub9VBM+0aypiC4umizGmHQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,  <broonie@kernel.org>,
  <robh@kernel.org>,  <krzk+dt@kernel.org>,  <conor+dt@kernel.org>,
  <richard@nod.at>,  <vigneshr@ti.com>,  <pratyush@kernel.org>,
  <mwalle@kernel.org>,  <takahiro.kuwano@infineon.com>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <a-dutta@ti.com>
Subject: Re: [PATCH v3 02/13] spi: dt-bindings: cdns,qspi-nor: add PHY
 tuning pattern partition property
In-Reply-To: <4a570d36-dda6-4f3d-9c16-d3e57ac55f1c@ti.com> (Santhosh Kumar
	K.'s message of "Tue, 2 Jun 2026 12:00:36 +0530")
References: <20260527175527.2247679-1-s-k6@ti.com>
	<20260527175527.2247679-3-s-k6@ti.com>
	<20260530-original-peccary-of-cubism-af68ed@quoll>
	<2f091813-fa28-407f-892d-bbbbe3cac4e4@ti.com>
	<063fe976-9a28-4670-90df-921fbc1c3a8c@kernel.org>
	<20260601-stirring-tested-mayfly-e97c14@quoll>
	<4a570d36-dda6-4f3d-9c16-d3e57ac55f1c@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Tue, 02 Jun 2026 14:36:17 +0200
Message-ID: <87mrxd15mm.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305638-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:krzk@kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:from_mime,bootlin.com:dkim,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E70C62E13E

Hello,

>>>>> I also have doubts that this is per-device property. Your commit msg
>>>>> suggests it is per controller.
>>>>
>>>> This is a per-device property. It is consumed by the controller driver
>>>> only to locate and retrieve the offset of the PHY pattern partition
>>>
>>> So with two devices on a bus, you need two separate partitions for tuni=
ng?
>
> Each SPI NOR flash device needs a partition to store PHY tuning
> pattern.

If I may try to explain a bit what is behind, the read tuning procedure
is about reading data from the spi memory cache (some kind of internal
SRAM) over and over again, while tuning the controller parameters until
we get the best stability (the controller driver knows the pattern it
must get). While SPI NAND chips have "write to cache" opcodes that could
be used to load the pattern into the chip without any actual read from
the memory array, this is not possible with SPI NOR devices which do not
have such capability. Since we want to keep this training procedure
memory agnostic (and also somewhat simple), we shall expect one pattern
per memory.

Thanks,
Miqu=C3=A8l

