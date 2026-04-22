Return-Path: <devicetree+bounces-289314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uE7lE/qB6GnJLAIAu9opvQ
	(envelope-from <devicetree+bounces-289314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 10:08:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0B844343F
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 10:08:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A830430263CF
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 08:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 226A138838C;
	Wed, 22 Apr 2026 08:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="M/Ss/FQB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB50382376
	for <devicetree@vger.kernel.org>; Wed, 22 Apr 2026 08:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776845301; cv=none; b=ff+d7US/o5r19TvI5jKekpUwIVioWLTc4qPts0rMxO6kyskNzQzbwWK+YhkbQkgHK5zSr/V2UUMVlq0C61FU9O2gTvSX1w8Az7BIu/pP4DBFRuM3/CtMCn5oKDYNs4g8xcsLDKRdOo70myNbyljAzG9ZEfoLDIXlJF4BkDzew6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776845301; c=relaxed/simple;
	bh=f4NTEKOb0TYPzwx83555aZf8ormuUaXr6ZqLdxM4fGQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=utrsVpzT6uoxi9wFRNi1+iJQVlwvt/LCkvyFE7u2BurwsijRtYkzTlnqwrMJjshHJMskW00DhaDDQho0hoqRwNj4iAJiophYucYTBF/AtfiTzli6MNIaO71PUnIn6/iaoaNHZ94oC6gl70ZBdgPD4mG/R/p+AO1UrmBRc+SrgJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=M/Ss/FQB; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 145144E42AAD;
	Wed, 22 Apr 2026 08:08:17 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DD026600DD;
	Wed, 22 Apr 2026 08:08:16 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 50A3210460A3E;
	Wed, 22 Apr 2026 10:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776845296; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Ok/jDao3QWG80+zWCp1k65124isQJzzQbc2D1YJo5sA=;
	b=M/Ss/FQBq/QU57FoaB+yrUWa8nP1Z4ZxnvQO2psZ7Wbhqswl57GHd27JnXUpvuyqAMzUMi
	9NuBBXAv51qpepXszjoSlQbbOWwzCGzvy0pos0FO2fCVICOMjktJHE1zJQwCrxD7z8ZTUb
	FECM0gD/gh285SVjsm9QygsHvBgj+MPfFIBxsx58hOqYbsz6BCksKqtoo4NcweibazK/r8
	RovbaHM1aIY/dZREHsuzsCCG9NNykN7WNEJummlJB3av+Hk6CVvy7ghFooWYNPFyd3jdja
	QgQF5dBZmxeiNyUzBP4nkJ63w1lrD0KJMkPa7vv3d0hTLASfvdZ9+9OauI0vVg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Cheng Ming Lin <linchengming884@gmail.com>
Cc: richard@nod.at,  vigneshr@ti.com,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  alvinzhou@mxic.com.tw,  Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: Re: [PATCH v9 2/3] mtd: spi-nand: Add support for randomizer
In-Reply-To: <20260422070203.698716-3-linchengming884@gmail.com> (Cheng Ming
	Lin's message of "Wed, 22 Apr 2026 15:02:02 +0800")
References: <20260422070203.698716-1-linchengming884@gmail.com>
	<20260422070203.698716-3-linchengming884@gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 22 Apr 2026 10:08:10 +0200
Message-ID: <87a4uv5set.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-289314-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BE0B844343F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Cheng Ming,

> +static int spinand_randomizer_init(struct spinand_device *spinand)
> +{
> +	struct device_node *np =3D spinand->spimem->spi->dev.of_node;
> +	u32 rand_val;
> +	int ret;
> +
> +	if (!spinand->set_randomizer)
> +		return 0;
> +
> +	ret =3D of_property_read_u32(np, "nand-randomizer", &rand_val);
> +	if (ret)
> +		return 0;
> +
> +	return spinand->set_randomizer(spinand, rand_val =3D=3D 1);

You do not need the "=3D=3D 1" part. rand_val is cast into a boolean, so any
non zero value will be taken understood as an "enable" and zero will be
treated as "disable", which is fine.

The rest looks fine.

Thanks,
Miqu=C3=A8l

