Return-Path: <devicetree+bounces-318354-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /XWbJvDyRGo63woAu9opvQ
	(envelope-from <devicetree+bounces-318354-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:58:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1186EC73D
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:58:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Dls+X2GR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318354-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318354-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DAAC3012267
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 10:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0BA142E006;
	Wed,  1 Jul 2026 10:57:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F0F3BB102
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 10:57:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782903433; cv=none; b=TdoE+PUBHD9vC5MJ0z0Q4ZtV6W+5F1MGNCAVX/bDcoraVJA2T7V5CuavVZL+Doj3jtTJKEmeamKbxliHgwrzajSqPNHZlYmwiVkVUx/byXS7BLY7+urhW0GmB5CmuN9V6tgtmiln4nLpkIaliRF84EvmcRGhzzcwnOzT+CrUuXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782903433; c=relaxed/simple;
	bh=RyDjfIfFxu4w0JNE7bHpdPPm0w1XLNjxhRx6CSky4/s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=O6ebht5OIEjfXIjm3YzHfhw3VYhRXxYIle4GT5NksW1bCcic73imkK2FxnKHjFSIdI0V1XbYSuKAtTpOgnVAR0Mr/fV7Z17IiQ9Ys+aIckqeUGEDQR0rCFRHneBW+beibvk2r6d1v8PDvuNS6UPeqWERy2+dQnb/W7ZS3IW0zr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dls+X2GR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A59BE1F000E9;
	Wed,  1 Jul 2026 10:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782903429;
	bh=ZGLts+3bOniJYL1S9gZlAlhyvwtZ03zc77vQOgGNi5c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dls+X2GRSZPiT/O5TdMAlEimrDlUvedSk3v7UJNWbzQ9Jtqz1SJpw94InwA1MYbkQ
	 p4aErzC0tI3E9y36TZU5uI67RNlUb4p29Dw9MV5blLdb8WoIzumsqFhWrqWrUwygnc
	 tKKJW2GcYGvknDf64tnFZbDSyUML2a3SYHYclRYoNHgTCWKCep58AX2CqDemOn8/Uw
	 wFQqGu1Jm9NQIc1cLRbNmsRvcDGfVgDuD4Z9pawnz1K7hvNT5zVRdZfKh4k4aZNNX3
	 KdMhEvq+vdvMfU4DnShGaEXLiuOHuFAD/jdnp9RTBSuyg45KsKyzwTchdKRocdc9nq
	 QkwHZZJfDR9yg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 2/2] net: pse-pd: add Realtek/Broadcom PSE
 MCU driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jonas Jelonek" <jelonek.jonas@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260630105651.756058-3-jelonek.jonas@gmail.com>
References: <20260630105651.756058-1-jelonek.jonas@gmail.com>
 <20260630105651.756058-3-jelonek.jonas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 10:57:09 +0000
Message-Id: <20260701105709.A59BE1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318354-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jelonek.jonas@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:jelonekjonas@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF1186EC73D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Premature probe failure due to unhandled -EBADMSG during MCU dis=
covery.
--

commit f15f1883adfcb0dd6df322e408ed55d0bfd48ac7
Author: Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: net: pse-pd: add Realtek/Broadcom PSE MCU driver

This commit adds a driver for the microcontroller fronting Realtek and
Broadcom PSE chips over I2C or UART. It abstracts the underlying protocol
dialects behind shared core logic and transport modules.

> diff --git a/drivers/net/pse-pd/realtek-pse-mcu-core.c b/drivers/net/pse-=
pd/realtek-pse-mcu-core.c
> new file mode 100644
> index 0000000000000..11a0abece37bd
> --- /dev/null
> +++ b/drivers/net/pse-pd/realtek-pse-mcu-core.c
[ ... ]
> +static int rtpse_mcu_discover(struct rtpse_mcu_ctrl *pse, struct rtpse_m=
cu_info *info)
> +{
> +	struct rtpse_mcu_ext_config ext_config;
> +	unsigned long deadline;
> +	int ret;
> +
> +	/*
> +	 * The MCU may not answer on the bus yet right after power-up or
> +	 * enable-gpios assertion: depending on the transport it either stays
> +	 * silent (-ETIMEDOUT) or does not ACK its address at all (-ENXIO /
> +	 * -EREMOTEIO). Retry within a bounded wall-time window so a slow boot
> +	 * still probes, while a genuinely unresponsive MCU fails with its real
> +	 * error instead of deferring forever and masking it.
> +	 */
> +	deadline =3D jiffies + msecs_to_jiffies(RTPSE_MCU_BOOT_TIMEOUT_MS);
> +	do {
> +		ret =3D rtpse_mcu_get_info(pse, info);
> +		if (ret !=3D -ETIMEDOUT && ret !=3D -ENXIO && ret !=3D -EREMOTEIO &&
> +		    ret !=3D -EAGAIN)
> +			break;

[Severity: Medium]
Will this prematurely abort the probe if the MCU emits transient garbage
during its boot sequence?

Looking at rtpse_mcu_do_xfer(), it returns -EBADMSG if there is a checksum
mismatch, or if the MCU responds with RTPSE_MCU_OPCODE_BAD_CSUM. If a parti=
ally
booted MCU produces invalid bytes on the bus during this startup window,
rtpse_mcu_discover() will immediately break out of the retry loop and fail
the probe since -EBADMSG is not in the allowed list of retry errors.

> +		msleep(RTPSE_MCU_BOOT_RETRY_MS);
> +	} while (time_before(jiffies, deadline));

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630105651.7560=
58-1-jelonek.jonas@gmail.com?part=3D2

