Return-Path: <devicetree+bounces-319413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vToCKrdpRmp0TgsAu9opvQ
	(envelope-from <devicetree+bounces-319413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:37:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 173756F86E5
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:37:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=zdN+vbMM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319413-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319413-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E8793045AA4
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 13:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9860C4963BE;
	Thu,  2 Jul 2026 13:35:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107A0274652
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 13:35:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782999347; cv=none; b=e6Dcs7AitkhOL3GI31XAo+WPMXexjoSjPpqM2NMfwc2QUclJjf7sGauhYfLSTRhKjfT/UEp7ZGBZ/dt/Ncelm2afoT2z4K56rvjgFsRBod91QiYrePP9GRiDnnbvBWf/IzlfVw4VXbabVUNBoOlUxE3MLS0J/YghMVPWvhgYlO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782999347; c=relaxed/simple;
	bh=eTs0mhGl/SeBIYNMIXqeKsF9rqOKc8GWF9ed4Q0P7SA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=DkaXDOGybmJck0NorgHXEsjoAqOEwEJwDkVP4RJ0ocN9I6mDTGmpd0nswZxlzqsFegulIkyr2xKnDeFp20GZka+JeOdBuAp98FyupHtg4+OhzcambrYIJwQq9lyoYtVCX2JLfNlfFHa/z30ZiNqcvOOBvMoqvvAnvC7ZYhmhw4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=zdN+vbMM; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 638A41A0DDF;
	Thu,  2 Jul 2026 13:35:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3610F5FF03;
	Thu,  2 Jul 2026 13:35:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 191A5104C956E;
	Thu,  2 Jul 2026 15:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782999343; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=CBdRz6iknUEQ47UfMkZ0PQpUwrts4qpKzRp1pEV7AME=;
	b=zdN+vbMM5MPZgJ+2UNvTPZ0nQf0Y1tOm9dt6c/LG228i69OQuglY4DQzck9+oFL6LWGu2p
	cmBD5tQnTR26dWpfmYVmBa5gXC+4Oy/jDqbn95jmWZNDOCwL3ipXX+zn+A1JB/KGp5qZJ9
	+wW+Unv/8QTNtLMp8NuqbP8DEDB1k6NV+QHxUkjjW2N4tko0fbYBMMRrfLG2B+43ro6zMt
	iSrRiWfbRfJzAbtZMYV20AgmCgm0IfIYsEQ/Q9oQ9ttlwgO0JHJRfv8DNIjvf/8lnIF6gh
	iKXSD0B2Hj1kHz+M2Er7NWFg9N2aYXmt2J59oiY2o1JfPRzLjcSMv8yhog8mXA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <takahiro.kuwano@infineon.com>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-mtd@lists.infradead.org>,  <praneeth@ti.com>,  <u-kumar1@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [PATCH v4 09/16] spi: cadence-quadspi: skip DDR PHY tuning for
 2-byte-address ops (i2383)
In-Reply-To: <20260618073725.84733-10-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Thu, 18 Jun 2026 13:07:18 +0530")
References: <20260618073725.84733-1-s-k6@ti.com>
	<20260618073725.84733-10-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 02 Jul 2026 15:35:40 +0200
Message-ID: <871pdlqztf.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319413-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 173756F86E5

On 18/06/2026 at 13:07:18 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Erratum i2383 on AM654 locks the address phase in PHY DDR mode when a
> 2-byte column address is used. DDR PHY tuning must not be attempted for
> such operations; non-PHY DDR usage is unaffected. [0]
>
> Add CQSPI_NO_2BYTE_ADDR_PHY_DDR quirk and check it in
> cqspi_am654_ospi_execute_tuning(). When the erratum applies, return 0
> with read_op->max_freq cleared.
>
> [0] https://www.ti.com/lit/er/sprz544c/sprz544c.pdf
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
> ---
>  drivers/spi/spi-cadence-quadspi.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-=
quadspi.c
> index 72768292a32b..22df5f3bdb96 100644
> --- a/drivers/spi/spi-cadence-quadspi.c
> +++ b/drivers/spi/spi-cadence-quadspi.c
> @@ -49,6 +49,7 @@ static_assert(CQSPI_MAX_CHIPSELECT <=3D SPI_DEVICE_CS_C=
NT_MAX);
>  #define CQSPI_DISABLE_RUNTIME_PM	BIT(10)
>  #define CQSPI_NO_INDIRECT_MODE		BIT(11)
>  #define CQSPI_HAS_WR_PROTECT		BIT(12)
> +#define CQSPI_NO_2BYTE_ADDR_PHY_DDR	BIT(13)

Can we rename the flag to make it more readable? I would propose:

#define CQSPI_NO_PHY_TUNING_WITH_ODDR_2B_ADDR	BIT(13)

Long, but more self explanatory.

Thanks,
Miqu=C3=A8l

