Return-Path: <devicetree+bounces-265078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mL9FF8nNjWn87AAAu9opvQ
	(envelope-from <devicetree+bounces-265078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:55:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC0812D9FB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:55:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CAF0306809E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 148F635B13D;
	Thu, 12 Feb 2026 12:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="QbzF9AnV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919D935B136;
	Thu, 12 Feb 2026 12:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770900934; cv=none; b=pgBSMGATmhGMbYRZxfzlh7oWLH+TCSu8Q3pO5uYZrWdRsGsGt+Pncyd495RFTj9WMiRvpTfmFccdELXoCvfEHX0lbfmp8h36CaFjCMgHbAbMBjvqGlkZY77A0QkwBKFAGd1Cd9Z736fPuNflrxCc+HirP8xDEJZoFzKfGmkZN/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770900934; c=relaxed/simple;
	bh=ZYUfg9IUcgRG8xYMOhkK38+v+A+PEda94EvJZMMhZFg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=WPHT92r3Gg6Nx/864A82lOOG+QHsjB7+bR5f87aMKjCNcXcaQ6l3fQLO1xZE+pGmRvjVPjWD5HA6p5XktIb6vA74VWQeq8m11+kDvbQcedTn6Lc09bjHrUFomdCgZIdvAEMXQlQPbdlt8jININHGScyFyrEPJjoHZvLwMDd0UKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=QbzF9AnV; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id EA73CC23DA6;
	Thu, 12 Feb 2026 12:55:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BA1F7606CA;
	Thu, 12 Feb 2026 12:55:29 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6A630119708B8;
	Thu, 12 Feb 2026 13:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770900928; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=BMPMAwMYqQ+DI8Ds4Z6rKLFfzIVUJJ2dJif7/RBD8oM=;
	b=QbzF9AnVvDC59V1wOBN8pTDC7nakFCw23N+yQJD0Lqmjaw1ZBPUDK+zaT7F2viH4Wuwcoj
	nPGsE9TCLsMOjqB4iBzzzLkvWgxlqS8Zbwd/0X1iqmE+FcPCKMCJsuUEiuKwkdQ8DvlFB+
	1WbmMqWFSiILEqk6UTDf/VQQ8WaDeCUg2B37Wbe9yOyb6ywpI+caMOdSvAE/gV7hl64Yom
	R3ICAFwWKGVSBIL9fHqdDrbKJonFG3y4G8sQcN9XGV8Y9tKPsusVqvRtcP0vzEfiyAH3QR
	MeO2PwPzZjxQ+lbVIJKVWeSWqKQxdAAKbJ1Rl+EOOE/5Q5y+JdkXK9qfAywurg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Michael Walle" <mwalle@kernel.org>
Cc: "Santhosh Kumar K" <s-k6@ti.com>,  <broonie@kernel.org>,
  <robh@kernel.org>,  <krzk+dt@kernel.org>,  <conor+dt@kernel.org>,
  <richard@nod.at>,  <vigneshr@ti.com>,  <tudor.ambarus@linaro.org>,
  <pratyush@kernel.org>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-mtd@lists.infradead.org>,  <praneeth@ti.com>,  <u-kumar1@ti.com>,
  <p-mantena@ti.com>,  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 09/12] spi: cadence-quadspi: add PHY tuning
 infrastructure
In-Reply-To: <DGCXTWSCAH6R.22SIL82AUVGYI@kernel.org> (Michael Walle's message
	of "Thu, 12 Feb 2026 12:14:05 +0100")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-10-s-k6@ti.com>
	<DGAC4N62UZQQ.3R7TLX87PECU3@kernel.org> <87qzqqxml7.fsf@bootlin.com>
	<DGCXTWSCAH6R.22SIL82AUVGYI@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 12 Feb 2026 13:55:22 +0100
Message-ID: <87fr76xgsl.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-265078-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: ABC0812D9FB
X-Rspamd-Action: no action

Hello,

>>>> +	for_each_child_of_node(partition_np, part_np) {
>>>> +		if (of_property_read_string(part_np, "label", &label) ||
>>>> +		    !strstr(label, "phypattern"))
>>>> +			continue;
>>>
>>> There was already a review comment on the last version. Moving this
>>> into the driver doesn't make it any better. In fact this might
>>> create a (bad) precedent for future drivers.
>>
>> I remember complaining about it but not if there was a solution
>> foreseen. In SPI NAND the solution has been found: the pattern is in the
>> driver and we load it into cache before PHY tuning. But for SPI NOR I
>> understood this wasn't possible. What would be an alternative?
>
> I'm not complaining about using a partition for the pattern but
> about the hardcoded name of it.
>
> It was proposed to use at least a device tree phandle to point to a
> partition (or so).

Ah, yes indeed, thanks for clarifying this up (again) for me. I also
agree the hardcoded name is not ideal.

Thanks,
Miqu=C3=A8l

