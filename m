Return-Path: <devicetree+bounces-312369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 19OlJIMKMWrnagUAu9opvQ
	(envelope-from <devicetree+bounces-312369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:34:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EA868D32A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:34:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=frmIXn+y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312369-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312369-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 88F9A300C0F3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F22413D8C;
	Tue, 16 Jun 2026 08:34:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3E83CC310
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 08:34:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781598848; cv=none; b=MAvhqxeIHfCPW3hGla7fHCFBQ97UxGK4U6g/XqHg1RxpOKuZVroOAT5XWZ2GHqSWEs8ua/W9kjNXi8Hy2Bwkq6glbg73VrtiN65at+YmZ/9ifYzjUpca2FQ2GgA9/jo11491XMrwbAmVGSw82hCXk1xzfKG7afUVDjFl7Fcd2KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781598848; c=relaxed/simple;
	bh=Cp8S7jFDzZz381IouAyHE2JbCtE38hMVMnp8eJjj1Tw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=O+C6HKGRm4g7TKQ7aIf7xS1LKT5CMxZbx9Xz5Kcb0PrcOqr7bD7mTkAo6R8v3WYvnTcH7dM3GfYurw+MU1shmUHZOPCwB3d3xoj0XoZgDOpyqmvGLEVm5qy+IPj25Wmngm4/ppeLF2EcGp5ERBAW9MITBCKkRNcpjuHmQLLOByQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frmIXn+y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 987B21F000E9;
	Tue, 16 Jun 2026 08:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781598846;
	bh=on8rChG0OpK7Rm5zEKjU0JvcGw6KdqHyDjTyeCfvzBU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=frmIXn+y+VjVbai3SDztLTRgVi8tsPcA0JCEvHDcw+kbgjMFoOLB2k5rOFG8Mp6CZ
	 bcFqigAC2TcIKqYDgJ6F/z0OeiSrsdCOylIkGUEgU4LDYktdQz4AG08MfbMqyuE2o/
	 TRNHuoXUj3e0F5Yj7X60p0NW2AzHKTOT5FwgGyAOoMe+9HOP634qwSk0fhHDDPliZe
	 O3AQkMBdXJt+aiMX4t88s8iCUou7lZCRx5sBPsEsdYYNboXRTjmItN8lV/aCBGxrLw
	 Wgiu39b0vWIyQe2q4UnhLsJbHdUhJ9FCX/cKGCXltVIVEBwQuGNNNeevoCws59ifJw
	 9KsSmxsszdO2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 12/12] iio: dac: ad5686: add gain control support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616-ad5686-new-features-v3-12-f829fb7e9262@analog.com>
References: <20260616-ad5686-new-features-v3-12-f829fb7e9262@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 08:34:06 +0000
Message-Id: <20260616083406.987B21F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312369-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,analog.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20EA868D32A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The GAIN GPIO is unconditionally requested as driven low, causin=
g a potential DAC output glitch during probe.
--

commit 2f56ef5391a1b46c707191ed6f4562758e4e5acc
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: dac: ad5686: add gain control support

This commit adds gain control support to the AD5686 DAC driver. It handles
gain multiplication either via an external hardware GAIN pin or through
internal control register bits, initializing the default scale based on
device properties.

> diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
> index 6ae788f665b4d..c186213a46f6d 100644
> --- a/drivers/iio/dac/ad5686.c
> +++ b/drivers/iio/dac/ad5686.c
[ ... ]
> @@ -579,6 +681,14 @@ int ad5686_probe(struct device *dev,
>  		return dev_err_probe(dev, PTR_ERR(st->ldac_gpio),
>  				     "Failed to get LDAC GPIO\n");
> =20
> +	st->gain_gpio =3D devm_gpiod_get_optional(dev, "gain", GPIOD_OUT_LOW);
> +	if (IS_ERR(st->gain_gpio))
> +		return dev_err_probe(dev, PTR_ERR(st->gain_gpio),
> +				     "Failed to get GAIN GPIO\n");
> +
> +	st->double_scale =3D device_property_read_bool(dev, "adi,range-double");

[Severity: Medium]
Could this cause an unwanted glitch on the analog output during probe?

If the system is warm-booted and the DAC is already outputting voltage with
a 2x gain, unconditionally forcing the gain pin low here will abruptly halve
the output voltage before the device is reset or the pin is corrected later=
 in
the probe sequence.

Would it be safer to read the adi,range-double property before requesting t=
he
GPIO, so that the pin can be initialized to its correct target state without
the temporary drop to 1x gain?

> +	ad5686_init_scale_avail(st);
> +
>  	reset_control_assert(rstc);
>  	fsleep(1); /* reset pulse: comfortably bigger than the spec */
>  	reset_control_deassert(rstc);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-ad5686-new=
-features-v3-0-f829fb7e9262@analog.com?part=3D12

