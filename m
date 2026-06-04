Return-Path: <devicetree+bounces-307054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3cQqFq/kIWo4QQEAu9opvQ
	(envelope-from <devicetree+bounces-307054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:48:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB29643778
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:48:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AssVGOtl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307054-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307054-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36EA2301AB9C
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 20:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35053F54DA;
	Thu,  4 Jun 2026 20:45:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41983DFC8F
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 20:45:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780605909; cv=none; b=mTQtVU0q4tRMHh/dYs1WHWIWLfGmw9W4F3W1TwmmOIvxUNgcKtdon9h9gchBKhCdDyNmwUWIbS1Ej2o0R0jWmFGjfv/yhj6cnq/6rwKzmftnPdIV8gMkfPlv8QM4Gh9A/R3JVNIg2wB38fmdAluWPcGbk3xRegVx3AnUrX3KHFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780605909; c=relaxed/simple;
	bh=fnxuFjsk27LRLgBJedoJGhu5j+HJTdT4KydJw+zNHKk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mpLrftgG+I0IBKKOXxmx2fPx0HjKpldX5pd6OZioAy3asqYNea5ygSqdX3TW/AbO72IQrrn03p141PR4f+m3MhHXdPkAc74ybad/oH1BMu1l5+43Q1pv9+CK8vCRcP15Cd0hFEyHF4CI3YNlf0VaOji+hXj6uBClHhAKAg6U31A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AssVGOtl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 126881F00893;
	Thu,  4 Jun 2026 20:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780605908;
	bh=stowl0EbPDcRMLkEbV+ANGMYqP7KCxS179Gq/4jGXEk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AssVGOtlXrtCr+prEpnB82WpAuhMVfjQW6tL6AeCyE+vAoLOdf3TAU/y+UNcnaZwL
	 rt9aNiuVaMMPVTwc2+cSlmdtf0XFG59mq3q7sPc+fDdsgMg2Q/IClnMHKD0zLk5qGC
	 X81AspE3XdWvGMKeDbFtQ0UKfLBK4jjmIjQrgnEBJiu5yH2kjnvj2yuIHMJBSOANh9
	 3rX10iyJVARu8bN3HiXwc4nMyx6M9qcfU1z6vKrVZksrSdLUG3TwNm+scFW00vVl5y
	 parGokw/Ybr5GkPeM+0k+syymvNBCgw3VCD1VPl3fgHun2vvMNt7xI1RGMoJX6HiYY
	 83ui+D8V+TsvA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V10 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260604201832.60656-4-macroalpha82@gmail.com>
References: <20260604201832.60656-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 20:45:07 +0000
Message-Id: <20260604204508.126881F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307054-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AAB29643778

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The driver state structure `st` is never saved to the device's drv=
data, leading to a guaranteed NULL pointer dereference in PM callbacks.
- [Low] Redundant error code argument in `dev_err_probe()` format string.
--

commit d1ce5988d50518ee3fa99e6870abfe673fb42169
Author: Chris Morgan <macromorgan@hotmail.com>

    iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
   =20
    Add the core component of a new inv_icm42607 driver. This includes
    a few setup functions and the full register definition in the
    header file.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_core.c
> new file mode 100644
> index 0000000000000..74d4cb03f7b86
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

[ ... ]

> +int inv_icm42607_core_probe(struct regmap *regmap,
> +			    const struct inv_icm42607_hw *hw,
> +			    inv_icm42607_bus_setup bus_setup)
> +{
> +	struct device *dev =3D regmap_get_device(regmap);
> +	struct inv_icm42607_state *st;
> +	int ret;
> +
> +	st =3D devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
> +	if (!st)
> +		return -ENOMEM;
> +
> +	ret =3D devm_mutex_init(dev, &st->lock);
> +	if (ret)
> +		return ret;
> +
> +	st->hw =3D hw;
> +	st->map =3D regmap;
> +
> +	ret =3D iio_read_mount_matrix(dev, &st->orientation);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to retrieve mounting matrix %d\n", ret);

[Severity: Low]
This isn't a bug, but is it necessary to include the %d format specifier and
ret argument in this dev_err_probe() call?

The dev_err_probe() API natively prefixes the log message with the provided
error code, so passing it as an explicit format argument might result in the
error code being printed twice.

> +
> +	ret =3D devm_regulator_get_enable(dev, "vdd");
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Failed to get vdd regulator\n");

[ ... ]

> +	/* Setup chip registers (includes WHOAMI check, reset check, bus setup)=
 */
> +	ret =3D inv_icm42607_setup(st, bus_setup);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}

[Severity: High]
Should this code save the driver state structure to the device's drvdata?

Because runtime PM is enabled at the end of the driver series,
inv_icm42607_runtime_suspend() will automatically trigger after the
autosuspend delay.

It calls dev_get_drvdata(dev) to retrieve the state structure, which will
return NULL since it was never set here.

Could this lead to a NULL pointer dereference shortly after initialization
when the PM callbacks try to access the state structure?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604201832.6065=
6-1-macroalpha82@gmail.com?part=3D3

