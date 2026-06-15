Return-Path: <devicetree+bounces-311685-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I9KUFtucL2odDQUAu9opvQ
	(envelope-from <devicetree+bounces-311685-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:34:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FAC683DB9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:34:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RNToIshC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311685-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311685-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7822301C3D1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 658D430649C;
	Mon, 15 Jun 2026 06:32:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4F730648A
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:32:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781505171; cv=none; b=Q9XN0p3jsDhoc24Gxc7yYt+OBImzODjHpibbF6otDOSDI3YZLwuqGV91uweoDfoq9G8Ae4bAUrRlVDOsdhrZm39W5ekVZCvbHBryMQfO24d58HdisUwIqPY1+COxNPu4fn5vqCxt4S9pKyBqGWS+1o6DjcZSwBRp9y7wi2aSzU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781505171; c=relaxed/simple;
	bh=i7VluU/3qkhYqgv7iDvWcuIMGbZZwZtOnNpKKgjpkmc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UrBIr6kqL8xQRVajxC7xbrxtdSH3+3KG4/9QWnTU2dzEaW9GzQ8jjV1xTmiwa39h0WTEfyCTBPKp0opgj8Gkmw5PzE/CEQPh8dLffvJoZLJcReIWv3q2Sn3hVoZJKLsKMr1dFpGnNJib7MfGHs8ROxh+FgZcLAsB1mYLtlOkxDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNToIshC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C97A1F000E9;
	Mon, 15 Jun 2026 06:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781505170;
	bh=x4rTlq7L6SbF4qGk/fgIEJ2sItYkyhjCZzBoumx0bH0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RNToIshCn3l3Ms8X+OEn48UhAFfAHsoUOCQZV9sdGFJV86RpiokPrbA6KomzUPUty
	 +LXVDdXCsHB1FxJPUqeJg82zobttUewvl/41GZdGPNn3L9FruwId4DIB0LZ8BW/CbF
	 PXHpvlbXzzFyNbecaVxwVoFimZ4aei0Uyxtull4aMG9LTSnZrIEJU6e0/9LnfZi7bO
	 zUAweMMwoyCa6JTY+pjYB1qrpOjJJ9Z2jkSxLH0xUiEupnnHnvz1aMVuipJsXNuSYc
	 0vpFyL1MpoUqG5HaCWfUSRllRk8nyP5lETAgpmKEJL8bPWnUaAS5Yp5VwMrDH9yjZ/
	 cEk3a8A9Q+bMA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] iio: ABI: add DAC 10kohm_to_gnd powerdown mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kim Seer Paller" <kimseer.paller@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615-iio-ad3532r-support-v2-2-84a0af8b83fa@analog.com>
References: <20260615-iio-ad3532r-support-v2-2-84a0af8b83fa@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 06:32:49 +0000
Message-Id: <20260615063250.0C97A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311685-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,analog.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91FAC683DB9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Duplicate field initialization in the `ad3530r_chip` structure.
--

commit 2528c529a11e7b49d5cde3c0238451d59c5f698b
Author: Kim Seer Paller <kimseer.paller@analog.com>

iio: dac: ad3530r: Refactor setup to table-driven register bank approach

Replace direct register calls in ad3530r_setup() with per-chip register
address arrays and bank helpers. Convert sw_ldac_trig_reg from a static
register address to a function pointer for per-bank LDAC trigger register
selection.

> diff --git a/drivers/iio/dac/ad3530r.c b/drivers/iio/dac/ad3530r.c
> index d9db3226ecd64..e4346bc729ba5 100644
> --- a/drivers/iio/dac/ad3530r.c
> +++ b/drivers/iio/dac/ad3530r.c
[ ... ]
> @@ -344,7 +387,14 @@ static const struct ad3530r_chip_info ad3530r_chip =
=3D {
>  	.name =3D "ad3530r",
>  	.channels =3D ad3530r_channels,
>  	.num_channels =3D ARRAY_SIZE(ad3530r_channels),
> -	.sw_ldac_trig_reg =3D AD3530R_SW_LDAC_TRIG_A,
> +	.sw_ldac_trig_reg =3D ad3530r_trigger_sw_ldac_reg,
> +	.input_ch_reg =3D ad3530r_input_ch_reg,
> +	.interface_config_a =3D ad3530r_if_config,
> +	.output_control =3D ad3530r_out_ctrl,
> +	.reference_control =3D ad3530r_ref_ctrl,
> +	.op_mode =3D ad3530r_op_mode,
> +	.num_banks =3D ARRAY_SIZE(ad3530r_if_config),
> +	.num_op_mode_regs =3D ARRAY_SIZE(ad3530r_op_mode),
>  	.input_ch_reg =3D ad3530r_input_ch_reg,
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

[Severity: Low]
Is this duplicate initialization intended? It looks like .input_ch_reg is
initialized twice in the ad3530r_chip structure, once in the newly added
lines and again here.

>  	.internal_ref_support =3D true,
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-iio-ad3532=
r-support-v2-0-84a0af8b83fa@analog.com?part=3D2

