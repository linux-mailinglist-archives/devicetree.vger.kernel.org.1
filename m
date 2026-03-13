Return-Path: <devicetree+bounces-275030-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CH0vMmPRs2lHbQAAu9opvQ
	(envelope-from <devicetree+bounces-275030-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:57:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9BE280143
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2100C3128698
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3337D388372;
	Fri, 13 Mar 2026 08:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dsewY0/U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A87A387356;
	Fri, 13 Mar 2026 08:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392161; cv=none; b=DSwagK5ywlmPopXtKlfJ2k1+HRXXHH1W4+R6MSUR6H3gLYK0HxJ2OP+2yUsRA0WsN9194iXt+upnNF/AEhIrd5Dobx+rlOHwH/fLX594/b2mH1vCbv+W8qRMpr/D/nxJ5oyWJz7TXy3qC8Bp1jRhoDt7HYXHTXLicsL2r8UH0RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392161; c=relaxed/simple;
	bh=AhH16TAl+DflE/tnPR0fxrlnshU9aR8/8dZ86lJegjo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QDwu1dO5kQ3M/4/CB7ef6fr6/ihGSQwuineW8DWx3bChpsl9kVin9EpK0qnuEGkxHB2Kk/rwemALm+7fagJalgJX1ceRCF3dneDPbacAdeeTWhpORhYukZMY+YzIuZkOS4DF6P0EbFEl1H1S/ris9iA+E2X6ld8NDjlgmcP3paI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dsewY0/U; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 991104E4266E;
	Fri, 13 Mar 2026 08:55:57 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6912860027;
	Fri, 13 Mar 2026 08:55:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CDB0E10369DC5;
	Fri, 13 Mar 2026 09:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773392156; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=C8G5zc0+/sCb6Br0wkWNI7EkWcFaxuigSoQ2wuJ+Bf4=;
	b=dsewY0/Ug5VCX+Qk1CqJ9I5HVhvACekpGVVBBsU/rLPoJnMqy8OYX0vwJofR5tgILOppXl
	tQ5z/9yRHofMCJyBlEZDx+TBIOoroFNihyrUX6pc3EEgJ3qUIye7A0qN38RYqgLq7Y2T0U
	/2mqWS6zxBc4/xso6RZIoghskfxax4mBrpndKybujufTwy7HUVkGR9ErANKred7NzKXje6
	Mfs2kTpe1VE2drFPGgDii/GZjRqHN3ZD33nDRS75eolAQryWB0QsS7efzejGddBycpxmrv
	mzHfkZaYMtSDIE1uE9ptqVKsyc1SWCdq2beGGjsXTgnSFMSW8+9C+euxkLar0A==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Akhila YS <akhilayalmati@gmail.com>,  Richard Weinberger
 <richard@nod.at>,  Vignesh Raghavendra <vigneshr@ti.com>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  linux-mtd@lists.infradead.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: hisilicon,504-nfc: convert to DT schema
In-Reply-To: <20260312152851.GA3190071-robh@kernel.org> (Rob Herring's message
	of "Thu, 12 Mar 2026 10:28:51 -0500")
References: <20260307-hisi504-1-v1-1-8bf9a186faf2@gmail.com>
	<20260312152851.GA3190071-robh@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Fri, 13 Mar 2026 09:55:53 +0100
Message-ID: <87y0jwjeg6.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,nod.at,ti.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275030-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Queue-Id: 3C9BE280143
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 0
>
> These can be dropped as the child (partitions) doesn't have an
> address.

Well, the child should, because it should be the NAND device (with, as
address, the chip CS) instead of 'partitions'. If the driver in front of
that binding does not support that, please wait for Frank Li's work to
clearly identify the legacy bindings to be merged and reference it in
the top level allOf.

Thanks,
Miqu=C3=A8l

