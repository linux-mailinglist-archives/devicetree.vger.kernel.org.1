Return-Path: <devicetree+bounces-307604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wGMUBXuwI2qxxAEAu9opvQ
	(envelope-from <devicetree+bounces-307604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:30:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6251464C93F
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:30:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="A/31TB+m";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307604-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307604-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 489273022DF9
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 05:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40A1C2F7EFA;
	Sat,  6 Jun 2026 05:30:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113152F8EB7
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 05:30:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780723832; cv=none; b=jKQuPx/4ia7yVeEYmo5HAzmEyWn0w2CNUWGzMKnypQ6QDpv+Qw9ON/7R/Fuys+5n3vX/9U4IrCtx5jSryOR0cSUkUuuQ5jSwr+IHd7f+41e+MWVQqJOeIMfhJb9IMPGrdDPkuPgxrxAnFc1Fb/q3AqiYCA5rff5KjPB2FT8IVdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780723832; c=relaxed/simple;
	bh=VpX8QN7Pkj8xAsqJ0Pne920IKUiH5xrsMNKEc0V+PAA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aKKphVWK6jocy0mXDOUZbokIPQsVTM+GnLBYX9vGOjiIAeyzdnsDLMUz2qYBCDZxv/fE4KuzjmlTLgynhvvoJntOH52qn4rlMk6brLlrZCZIO6M6sWRS0Q+yXK05igSBSpwHV0hA/qWqk8iEwqy8EK/ffNgiVrZHq9g4wE+ZtdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/31TB+m; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FD211F00893;
	Sat,  6 Jun 2026 05:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780723830;
	bh=iN+FJihJdN54Q0tlUM9/mZAZK9Dygn/lV6UL/GW2seg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A/31TB+mYduoAqc2rNlYRmKdj3hELy+8SfvJHOX9AxBoemgOyjVvTsf1+EGowjcYN
	 YqHNifF3dCb6/Ss77nyCEd4SGB6BZviePP9NA3V+xXGANJZrxeZx04U5EpJ0pN6noU
	 Yd8qcrpdkJ6eLRqWDky7ypqJ4ni8mJ6MwLfoixb7Esef44lJ+XgtIQ1PQqFzIOxKGT
	 F4+xD2+XJ89y90m5hZHvHUYf5Ya5GIeLCuspBKYejdWKKqzgdDHnH7yPJ6yKDZC65t
	 5guRiThv+en8ze2Dmf1pYA/Ns1dhCt8oahczec55UemtMNDbDDUlR0+l7lRmTcMYHK
	 7z8R3e8QfsN9g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/5] iio: adc: versal-sysmon: add oversampling
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260606051707.535281-6-salih.erim@amd.com>
References: <20260606051707.535281-6-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 05:30:29 +0000
Message-Id: <20260606053030.6FD211F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307604-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,amd.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6251464C93F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Hardware state desync for oversampling ratios.
- [Medium] Inconsistent IIO ABI for temperature oversampling due to misuse =
of info_mask_shared_by_type.
--

commit a087d8379a588d07c739e642f022da0f04e19054
Author: Salih Erim <salih.erim@amd.com>

iio: adc: versal-sysmon: add oversampling support

This commit adds oversampling support to the versal-sysmon driver, enabling
averaging of 2, 4, 8, or 16 samples. It exposes the configuration through t=
he
IIO oversampling_ratio attribute, shared by channel type.

> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versa=
l-sysmon-core.c
> index e87974c641a16..8a8ca4506cbaa 100644
> --- a/drivers/iio/adc/versal-sysmon-core.c
> +++ b/drivers/iio/adc/versal-sysmon-core.c
[ ... ]
> @@ -842,7 +970,10 @@ static int sysmon_parse_fw(struct iio_dev *indio_dev=
, struct device *dev,
>  				   ((reg - 1) * SYSMON_REG_STRIDE),
>  			.info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW),
>  			.info_mask_shared_by_type =3D
> -				BIT(IIO_CHAN_INFO_SCALE),
> +				BIT(IIO_CHAN_INFO_SCALE) |
> +				BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
> +			.info_mask_shared_by_type_available =3D
> +				BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
>  			.datasheet_name =3D label,
>  		};
>  	}

[Severity: Medium]
Will this lead to an inconsistent IIO ABI for temperature oversampling?

The patch adds BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) to
info_mask_shared_by_type for dynamically allocated satellite temperature
sensors, but it appears to be omitted for static core temperature sensors.

In IIO, shared_by_type creates a single attribute (in_temp_oversampling_rat=
io)
that userspace expects to apply to all channels of that type.

If the hardware's SYSMON_CONFIG_TEMP_SAT_OSR and 64-bit enable mask only af=
fect
satellite sensors, using shared_by_type might violate IIO ABI by falsely
advertising oversampling for the core sensor when satellites are present.

Conversely, if the configuration affects all temperature sensors, omitting =
the
mask from the core sensors means systems without satellites cannot configure
oversampling, as the attribute will not be created.

[ ... ]
> @@ -890,6 +1021,8 @@ int sysmon_core_probe(struct device *dev, struct reg=
map *regmap)
> =20
>  	sysmon =3D iio_priv(indio_dev);
>  	sysmon->regmap =3D regmap;
> +	sysmon->temp_oversampling =3D 1;
> +	sysmon->supply_oversampling =3D 1;

[Severity: Medium]
Could this result in a hardware state desynchronization for the oversampling
ratios?

The software cache is unconditionally initialized to 1 without reading the
current hardware state from SYSMON_CONFIG or explicitly writing the default
value to the hardware registers.

If the device was previously configured with a different oversampling ratio=
 by
a bootloader, firmware, or a prior kernel, the hardware will operate at that
ratio while the driver incorrectly reports 1 to userspace via read_raw.

Should the driver read the current state during probe or explicitly write 1
to the registers?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606051707.5352=
81-1-salih.erim@amd.com?part=3D5

