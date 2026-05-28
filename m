Return-Path: <devicetree+bounces-303735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4E6+F6oBGGp+ZQgAu9opvQ
	(envelope-from <devicetree+bounces-303735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 10:49:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D01515EEF07
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 10:49:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0350300D45C
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 08:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F104C38228A;
	Thu, 28 May 2026 08:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Q1vg9MXi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B794379EEA;
	Thu, 28 May 2026 08:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779957827; cv=none; b=nQAQ42PkGdanj2p3givKmZxcE4VQBmyuTYYmAVnJay1PC0cnI4IqWnNBfqFBjjX3siDZ4VRQNrAUnrBLyi92eBQbhTcn3Gfpps7RPhZ6HcwiufXMT2mU1UN4uAcOt9MYlHobbBRAWqZRZWnJZddJWkPzmc+a8ajeK7X4BjttrBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779957827; c=relaxed/simple;
	bh=a1ysJLaD2QN0qgYSp6PqreaAJnIDCyBjCSaovNNCeWU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=f2txvbwsTPDiq34oQAUVMagSb4AsnqO7rNjLzR7NiEY3GRwwtmK5r7651KiZFX7hJb2mRE1aNo7PmmJ3Qtj17IpTAHlGDJsq6g5Mnr8rzaIlxSkn/Bnj1X8l9TKzf8illCArvenyZndNL2u7OhkWIPu7IsszUZwmnEMCC9gn+zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Q1vg9MXi; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id A7CC34E42D77;
	Thu, 28 May 2026 08:43:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7649760495;
	Thu, 28 May 2026 08:43:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8AE091088877F;
	Thu, 28 May 2026 10:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1779957822; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=h2kVHQEqX8g0aaw1EzvwKkX3jQo/8qRPm2UDvNjcGhQ=;
	b=Q1vg9MXiwaqWlUytakMIDHNo0oEZfTUlBWYXTEB5TftXYDK9PWsLRHNycUUastAkwdKagw
	OVp7GTGOkprytXhS9bp5nhq4IHs7nGO2qVm6UopaIfS5OOA7S47e1CNyEtkeksU/s7ew3b
	PbYmNdcg9PaZxHHQmWhSHAJigkwE0/hmvAcFcj9WpiXhb13/aGX59dMTvMYewOaq0bM+x3
	4iSESBCJSpVWRXd4r0epMahnry335EwmEH6kv4veg6/Thb3GJneED+ppd5QG1jMB87MK1G
	k6NQWTqIvKIwMjzefeiAOBrPuKWKXt++0GLW9qdRmoQ9YlkTapmEKCd6XFmwpA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <takahiro.kuwano@infineon.com>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-mtd@lists.infradead.org>,  <praneeth@ti.com>,  <u-kumar1@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [PATCH v3 04/13] spi: spi-mem: add spi_mem_apply_base_freq_cap()
In-Reply-To: <20260527175527.2247679-5-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Wed, 27 May 2026 23:25:18 +0530")
References: <20260527175527.2247679-1-s-k6@ti.com>
	<20260527175527.2247679-5-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 28 May 2026 10:43:39 +0200
Message-ID: <87fr3bhqkk.fsf@bootlin.com>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303735-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D01515EEF07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Santhosh,

> --- a/drivers/spi/spi-mem.c
> +++ b/drivers/spi/spi-mem.c
> @@ -398,7 +398,11 @@ int spi_mem_exec_op(struct spi_mem *mem, const struc=
t spi_mem_op *op)
>  	u8 *tmpbuf;
>  	int ret;
>=20=20
> -	/* Make sure the operation frequency is correct before going futher */
> +	/*
> +	 * Ops not configured for maximum speed are limited to the conservative
> +	 * base speed; spi_mem_adjust_op_freq() then caps to the device maximum.
> +	 */
> +	spi_mem_apply_base_freq_cap(mem, (struct spi_mem_op *)op);
>  	spi_mem_adjust_op_freq(mem, (struct spi_mem_op *)op);

There are many more spi_mem_adjust_op_freq() calls in the core where we wou=
ld
not apply the base frequency. Aren't we missing these places? Wouldn't it
be more appropriate to call spi_mem_apply_base_freq_cap() at the beginning
of spi_mem_adjust_op_freq() ?

Thanks,
Miqu=C3=A8l

