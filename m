Return-Path: <devicetree+bounces-313516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BiGKLg/1M2oJJwYAu9opvQ
	(envelope-from <devicetree+bounces-313516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:39:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CD06A0A20
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:39:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MuN7iesl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313516-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313516-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B494A303FACC
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 13:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 456432F8E85;
	Thu, 18 Jun 2026 13:37:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ADD280A56
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 13:37:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781789871; cv=none; b=M8FLpNIt4tIyuZz4tVe7BDFFbMG6VzRgd+5GVxfUaOLcfEo0S2uGhmvk0YaxSLJiBI8y8v6Ho24QQW0/qiWCOw5/iZWMYrTbH80qFCp0pzpPIKeZqqTbehxUSRHHrQNw3HukdeGHeP7fGviqmot1qGW0NZoE/Ihy26mUyWv5hLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781789871; c=relaxed/simple;
	bh=4+zlDzKksoC6c7xv0Lp9pxfjT2H+zW0xTGg2SkTmApc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mkn0dpVzBWSR2SKq1wW3TxssZIWVopgVi9sPbII6OXpINJahsflC/YyGRbsqC0AVqeTL54Tt/e1h78RljvJQnQj5KNUO6bVvLby6cBvIJPb5//uz8chxCPOLVV9bgMVUaRZAHvUaOgJjT0CDSQeK0cZJBBra9W5j8OqGiJa4mtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuN7iesl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 470C31F000E9;
	Thu, 18 Jun 2026 13:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781789869;
	bh=AUgI9b0a/afZ9GpONd/inMpnrnNwPoRv/96v9jRhWbY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MuN7iesl5Mr8XvKXXXQAosuLbCW1dp8vfQ4hSEG1Z1s2H5qKejnYs5SPL4dCuCmXj
	 +iSc12UZQHBlQpo8IaauAbtEtQ0mZam3PcK8hecUbgyLreSlF8KCtl/XisS4nkJhmb
	 Cn50bb2j4mqqZEDZCVCHjmn+YH4kZdZNYRIUgXtmxpZd+iP45WkE7YBzKV6pepOox1
	 jvFd9mhYbZe5mcnbhR4sduMEZUVLQw/9w/+IncaZdM2C4HZmY4TiFxfFLezPqyTN35
	 GdP33s2kFtOYqRrBUmPOZu6rK1NjZ0oDTDnokNOybvo/I76URD/iJxedIQSC7zf7wE
	 rIQqgdRR1S5lg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 09/16] iio: frequency: ad9910: initial driver
 implementation
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618-ad9910-iio-driver-v6-9-79125ffbe430@analog.com>
References: <20260618-ad9910-iio-driver-v6-0-79125ffbe430@analog.com>
 <20260618-ad9910-iio-driver-v6-9-79125ffbe430@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 13:37:48 +0000
Message-Id: <20260618133749.470C31F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313516-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18CD06A0A20

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Hardware sequencing violation: reference clock and GPIO powerdown =
action are initialized before device regulators, causing backpowering.
--

commit 71fb9226243ea37baeab1cd6841703ff6cde346d
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>
Subject: iio: frequency: ad9910: initial driver implementation

This commit adds the core AD9910 DDS driver infrastructure with single tone
mode support, including SPI register access, profile management via GPIO pi=
ns,
and PLL/DAC configuration from firmware properties.

> diff --git a/drivers/iio/frequency/ad9910.c b/drivers/iio/frequency/ad991=
0.c
> new file mode 100644
> index 0000000000000..95b01295e4a0a
> --- /dev/null
> +++ b/drivers/iio/frequency/ad9910.c
[ ... ]
> +static int ad9910_probe(struct spi_device *spi)
> +{
[ ... ]
> +	st->refclk =3D devm_clk_get_enabled(dev, "ref_clk");
> +	if (IS_ERR(st->refclk))
> +		return dev_err_probe(dev, PTR_ERR(st->refclk),
> +				     "Failed to get reference clock\n");
[ ... ]
> +	st->gpio_pwdown =3D devm_gpiod_get_optional(dev, "powerdown",
> +						  GPIOD_OUT_LOW);
> +	if (IS_ERR(st->gpio_pwdown))
> +		return dev_err_probe(dev, PTR_ERR(st->gpio_pwdown),
> +				     "failed to get powerdown gpio\n");
> +
> +	ret =3D devm_add_action_or_reset(dev, ad9910_hw_powerdown_action, st);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to add hw powerdown action\n");
> +
> +	ret =3D devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(supplies), suppl=
ies);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get regulators\n");

[Severity: High]
Could this initialization order cause the device to be backpowered?

In ad9910_probe(), the reference clock is enabled and the hardware powerdown
cleanup action is registered before the device's regulators are enabled. Th=
is
might drive an active clock signal into the unpowered IC during the probe
sequence.

Additionally, because devres executes cleanup actions in reverse order (LIF=
O),
if a probe failure occurs later or the driver unbinds, the regulators will =
be
turned off first. The powerdown GPIO would then be driven high and the
reference clock would continue to toggle into an unpowered chip until they
are subsequently disabled.

Driving active digital signals into an unpowered CMOS device forward-biases
its internal ESD protection diodes, which can lead to latch-up or permanent
hardware damage. Should the regulators be enabled prior to applying any
clock or active GPIO signals?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-ad9910-iio=
-driver-v6-0-79125ffbe430@analog.com?part=3D9

