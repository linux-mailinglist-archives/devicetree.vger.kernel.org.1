Return-Path: <devicetree+bounces-309377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K6KsBIbIKGpDJgMAu9opvQ
	(envelope-from <devicetree+bounces-309377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 04:14:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 882766656AF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 04:14:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TeNULo+x;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309377-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309377-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D5536303FEEA
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 02:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C83F298991;
	Wed, 10 Jun 2026 02:14:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEBA3FBA7
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 02:14:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781057666; cv=none; b=WT0umgL8ji1yfkWHXtBkf7nM3tGZWB0EQPXtt58iI4ParoApf3QUf3ASRXoHAu5VRcuHZDUgO67WjY0/UfPnU4M0Lp+KqlBU1VlC6exywrK2Zk8EKgGJ3dil5R0D4CWEJzr5xOXgtyzkQsXY9CJhEKAXh3XmPrzTD02SsHU9k9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781057666; c=relaxed/simple;
	bh=oEUF13re047Hnc0C7a0zhG/Dw9pyrW9E+7/wCn4fdhA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dgNekDq1UU/Firg+E2HwnWf8ZH9zCStLEe/QMpgyQAZIVOqL4GBPIjBPqEVX/wY0mvsQOEX1C7ZVRfNQ1CdBzhM2fsq17mp/m/UnJ9bAcGv2HRGVfPJ5aRP469qZMqWHQ5WdwS/ItkPlggkQEi3kIHyIjskT/amHOlLtT/tWQqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeNULo+x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A41A1F00893;
	Wed, 10 Jun 2026 02:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781057665;
	bh=e1TQyt/cxynxFiOwDWVMcLV7a/sWHQ3O8A/mq9bYLxw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TeNULo+xg3SRlp7Sv1GsN0ykyElfgkfyPpwPwHYq5chzSosmiJ3sjg7GAYFxSgWyQ
	 0JvP7oBJkwDEhSDaFHtdAVwnhEH4KNLimMixVEYCUx14SU69SZWPeFV1eVsOpgmq7M
	 SqTY5bzNaf1Cw8EgiWDvFx6x9qW4BWQQvJ7zyh/pUqv3HZXls+4gffgf85MVYDyi2a
	 DitZBPmsbXxDwPpEqWko4eO3hb5ieH17PRtaY3FMyI36k67K2soBK0+YjQMNJ9aOuL
	 xHXPXoCvDc7KhtyW1NNQHvlTfanJxLt1aE1WrQr6OaZROiswcQpRYID1oeNvTyodOe
	 ylOAsOr4ULy/w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] iio: pressure: ms5637: Add variant specific
 temperature compensation
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis Adamian" <adamianlouis@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610020458.104818-3-adamianlouis@gmail.com>
References: <20260610020458.104818-3-adamianlouis@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 02:14:25 +0000
Message-Id: <20260610021425.8A41A1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309377-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:adamianlouis@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 882766656AF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Explicit cast to 64-bit in modulo operation causes build failure on=
 32-bit architectures.
--

commit 5b2cfee8f94f3621de42a9388dafb2dae478fda9
Author: Louis Adamian <adamianlouis@gmail.com>

iio: pressure: ms5637: Add variant specific temperature compensation

This commit adds variant-specific temperature compensation and pressure
scaling for ms5637, ms5803, and ms5837 sensors. It extracts the compensation
constants into a per-device structure to handle differences across the
sensor variants.

> diff --git a/drivers/iio/pressure/ms5637.c b/drivers/iio/pressure/ms5637.c
> index 03945a4fc7188..36bda9694b4c4 100644
> --- a/drivers/iio/pressure/ms5637.c
> +++ b/drivers/iio/pressure/ms5637.c
[ ... ]
> @@ -73,8 +74,10 @@ static int ms5637_read_raw(struct iio_dev *indio_dev,
> =20
>  			return IIO_VAL_INT;
>  		case IIO_PRESSURE:	/* in kPa */
> -			*val =3D pressure / 1000;
> -			*val2 =3D (pressure % 1000) * 1000;
> +			*val =3D pressure / dev_data->comp_consts->press_scale;
> +			*val2 =3D (pressure %
> +				 (s64)dev_data->comp_consts->press_scale) *
> +				(1000000 / dev_data->comp_consts->press_scale);

[Severity: Low]
Does casting this modulo divisor to a 64-bit integer cause a build failure
on 32-bit architectures?

Since pressure is an unsigned int and press_scale is a u32, the s64 cast
promotes the modulo operation to 64-bit. On 32-bit platforms, this typically
results in an undefined reference to __moddi3 because the kernel does not
link libgcc.

Since the modulo result easily fits within a 32-bit integer, can this s64
cast be removed to prevent breaking 32-bit compile targets?

> =20
>  			return IIO_VAL_INT_PLUS_MICRO;
>  		default:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610020458.1048=
18-1-adamianlouis@gmail.com?part=3D2

