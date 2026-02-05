Return-Path: <devicetree+bounces-263077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KA8A2W8hGnG4wMAu9opvQ
	(envelope-from <devicetree+bounces-263077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:51:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A6FF4C80
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B805D30488E3
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02CD5429803;
	Thu,  5 Feb 2026 15:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="CYgj5HUe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FDE428831
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770306530; cv=none; b=LGb1UNTNG/AMWG/0CBAnq+8X9vi61q+DSPqUxLro3Yc0v5dxkxi7zwv3GixBnPCyEPoNfVg0zMI0aNrcJutAEqIALbPNPi795A4bMGUMV7X3UlXruPLPiwOwnQDQCho65RaMjtCVhoxeg6s+NuMF1/ztei73OV754pZIKyIkMRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770306530; c=relaxed/simple;
	bh=HJPnJ9eu0kyTcLcp33I81raSy+7gG0mEr1aX2nKrlRo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=MIA2atsxV+IbMWxlYCNUhb94HHexQhj9LTA8w2X2l3VjYOH2fHQijDdARIbbjGLSpRYJ6LtKyjZi7h7RrDNiUfaMysIt93Sq0xCaMOLsqslNtlmRKDpXYJ3qxkfIiwpt/fgoqyYo525ZJ5nqTHWjvYEzpU+7IeHfmoHL3x+lThk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=CYgj5HUe; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 1DC844E42423;
	Thu,  5 Feb 2026 15:48:48 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C871C6074D;
	Thu,  5 Feb 2026 15:48:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 46527119A865B;
	Thu,  5 Feb 2026 16:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770306526; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=zrAc5w0PG3JDItEYuR8KISBaKOhhMORkmCkekqY+adU=;
	b=CYgj5HUe+584jFnaZ9D3XtM+DG7J8wB5C0FKdRCHCSLM+vTp+07qP1p0Sv2AlHKQP455uy
	RDUtCdC3DeL0LfxcDY9rgkonWKJk8KftcRWZnDdUQHcBJiSlZVeVsx11xcU4s+WwG91nLH
	og5SndEI0AEQIvdeaHvKZHYB4c4FgCcKRvhWwfrAAq897jhbnhM65C9tWwaqiU/vcCJ7M4
	/YnZB6T8hCHf4oldNZmo2kp91Chc5pEhPCINOn1DDh7tfWfOJk/Hs0idU+W94eopy5aBLH
	1spAT3krtRKSi2KMQr1HEnYCDKsl+kYgDVvdi+GZ+xPnK7nQT5OgdVbyxnpGvQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 00/12] spi: cadence-quadspi: add PHY tuning support
In-Reply-To: <87343ghkek.fsf@bootlin.com> (Miquel Raynal's message of "Wed, 04
	Feb 2026 11:29:07 +0100")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<87343ghkek.fsf@bootlin.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 16:48:42 +0100
Message-ID: <87v7gbdwdh.fsf@bootlin.com>
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
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263077-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 67A6FF4C80
X-Rspamd-Action: no action

Hi Santhosh,

> I am surprised by these numbers, I would expect these to get higher for
> SPI NANDs. I will test the series and report my observations, especially
> since there is also ODDR SPI NAND support now (in nand/next, should be
> part of my upcoming merge request to Linus for 6.19+1);

I just tested the series, here are some numbers I grabbed on TI AM62A7
LP SK with a Winbond W35N02 SPI NAND chip (so in the end very close to
your report):

 +-----------------+-----------+------------+
 | SPI NAND        | no tuning | PHY tuning |
 | Unit: MiB/s     |   25MHz   |   166MHz   |
 |-----------------+-----------+------------|=20=20=20=20=20=20=20=20=20=20=
=20
 | Octal SDR read  |   13.8    |    34.2    |
 |           write |    7.2    |    10.2    |
 |-----------------+-----------+------------|
 | Octal DTR read  |   21.2    |     N/A    |
 |           write |    9.0    |     N/A    |
 +-----------------+-----------+------------+

Please mind I used MiB/s and not MB/s (so kiB / 1024), I don't know
which one you used for measuring, as you marked MB, whereas the most
common unit seems to be MiB.

However PHY tuning failed in Octal DTR mode (your series applied on top
of nand/next) with the following logs, can you have a look?

[    2.261647] spi-nand spi0.0: Winbond SPI NAND was found.
[    2.266956] spi-nand spi0.0: 128 MiB, block size: 256 KiB, page size: 40=
96, OOB size: 128
[    2.285257] cadence-qspi fc40000.spi: PHY tuning failed: -2
[    2.290835] spi-nand spi0.0: Failed to execute PHY tuning: -2

The fallback worked well though, the memory was still usable like
before, which is a very good point.

Thanks,
Miqu=C3=A8l

