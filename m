Return-Path: <devicetree+bounces-263112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP7fMPTVhGlo5gMAu9opvQ
	(envelope-from <devicetree+bounces-263112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:40:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66519F60A9
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DB2F300E713
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B77612F39C1;
	Thu,  5 Feb 2026 17:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="rtfsTAen"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702002F1FCA
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770312922; cv=none; b=fqpQzam/PaN3NoQmvv0JGBg5NRXoVzA2/DhPWXP6TjWHjyhk31Uhf7tDqnBKp1V7lHeyZVazovOvvPC6j0OnpQU531V+Ie/vkMQ+a27vK8xHiD60s6TWRWXEgmA0fGH8Tr/gHHpNxoOtWrqnFh/ebdKeuPDnhCMYTenmaeAYovE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770312922; c=relaxed/simple;
	bh=+DywpNSvBSMV4T8US+IhZjsrvljfq+PtPs0r1ouiLPc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mIkakouNVI4yQzarKlm4l+u5Qp+EaCGdb6zlibMmkjJEJcC1TWm/vB7v4yTNwKnpUJKpszNRW8BZDyg2IyPJMKcOGHF692DTzbYskQjrGABKb9TcnEF/4VXbs84+u36KcCnF42peVO/wdMuV1p0g73ayvJBlKY47E0Sf03yUOkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=rtfsTAen; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id DB05F4E42332;
	Thu,  5 Feb 2026 17:35:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A5C4D6074D;
	Thu,  5 Feb 2026 17:35:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 50207102F1B6D;
	Thu,  5 Feb 2026 18:35:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770312919; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Vld0CwrTKp6gj1x5sj0jTt+NLXnGpu7Rmrhf+jvx4m4=;
	b=rtfsTAenHQxdtnbs/RJ8tmRBjLsIr69L+ANIHf5cP4qgDq+GKxpHTJ0UZEMQ5gD3lnIHrZ
	RwOnNudt2li4HsN+pjrOiHIPgLW/h/kqsbzi8U740YhVVDR0YqsGWSLZIdfuB/HtVDKcl7
	LhMfmqzxmSbg7sNs/vtqJ2VDBuMABWGEqy2AwgpS/+fgs3yjYBS1reRS+RtonXxxODzAiR
	1twssWyIG/Fw6zXZ/W3eZf+sQtb7uRE7ZmEoSLFx/Ltt69dj/lGdCwDpI4Hb5RF3f+biXl
	QbHMZJnydx1Wd1p5Y/mrHqAsow0fN82We/4Q7jUlsudwejY7LTGHfW/k3j7ptw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 03/12] mtd: spinand: perform controller tuning
 during probe
In-Reply-To: <20260113141617.1905039-4-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Tue, 13 Jan 2026 19:46:08 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-4-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 18:35:15 +0100
Message-ID: <87tsvvgkks.fsf@bootlin.com>
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
	TAGGED_FROM(0.00)[bounces-263112-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,bootlin.com:mid,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 66519F60A9
X-Rspamd-Action: no action

Hi Santhosh,

On 13/01/2026 at 19:46:08 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> SPI controllers may need tuning for reliable high-speed operation.
> Without it, controllers use conservative timing that limits performance.
>
> Call spi_mem_execute_tuning() during probe to optimize timing for
> the device's read and write operations. Failures are non-fatal as
> controllers fall back to default timing.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
> ---
>  drivers/mtd/nand/spi/core.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
> index 0346916b032b..2a45d1047736 100644
> --- a/drivers/mtd/nand/spi/core.c
> +++ b/drivers/mtd/nand/spi/core.c
> @@ -1658,6 +1658,7 @@ static int spinand_probe(struct spi_mem *mem)
>  {
>  	struct spinand_device *spinand;
>  	struct mtd_info *mtd;
> +	struct spi_mem_op read_op, write_op;
>  	int ret;
>=20=20
>  	spinand =3D devm_kzalloc(&mem->spi->dev, sizeof(*spinand),
> @@ -1676,6 +1677,19 @@ static int spinand_probe(struct spi_mem *mem)
>  	if (ret)
>  		return ret;
>=20=20
> +	read_op =3D *spinand->op_templates.read_cache;
> +	write_op =3D *spinand->op_templates.write_cache;

These will become:

 +	read_op =3D *spinand->op_templates->read_cache;
 +	write_op =3D *spinand->op_templates->write_cache;

after rebasing on nand/next or next -rc1.

> +
> +	ret =3D spi_mem_execute_tuning(mem, &read_op, &write_op);
> +	if (ret && ret !=3D -EOPNOTSUPP) {
> +		dev_warn(&mem->spi->dev, "Failed to execute PHY tuning: %d\n",
> +			 ret);
> +		/*
> +		 * Tuning failure is non-fatal; the controller falls back to
> +		 * default timing, reducing speed but ensuring operation.
> +		 */
> +	}

Can we move the comment before spi_mem_execute_timing()? Then no more
brackets needed and it will be easier to read (imo).

LGTM otherwise.

Thanks,
Miqu=C3=A8l

