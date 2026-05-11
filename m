Return-Path: <devicetree+bounces-295809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LAiBwRIAmrBpwEAu9opvQ
	(envelope-from <devicetree+bounces-295809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:20:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E435163EF
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:20:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6220A3032991
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A51A230F958;
	Mon, 11 May 2026 21:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yjn2C9Hf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8302222D7B9
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 21:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778534155; cv=none; b=SixoqrMY+njh2Ee+F7NPFx6ckG6u3BZ5MCsP+Q4UFpTH4SFLTp9/ekdP0sXDHqVykQk+DrUttU98+k5s/gMAGX1vTZWcKKkxwdRDXA9G4NWzsXd4sqbYdk2WJdMMEh51A/wj+ZXhR1qT7Z+oF0kWHRS1UMt6UDR0vhGsSP8ELeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778534155; c=relaxed/simple;
	bh=UVl4yyIioXkujgYNcU/+aNsMlVpywOszcCokKko9v/I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZQHeygxEUEXDsCYaQavnhBxu6HhT+ss34rXYbXD03KCbeCO5EJ6ngG5VHwhHZQ9kcX8QpVhcVHBRydscZpmHHl6NvzqbgTF+lC8cw4b0Zs22+bLY4RmYNMd1tgo8tXehHFny9k+b936UMOykmCJ3c/i15Mssu6Ir2xhECVsgg5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yjn2C9Hf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE893C2BCB0;
	Mon, 11 May 2026 21:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778534155;
	bh=UVl4yyIioXkujgYNcU/+aNsMlVpywOszcCokKko9v/I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Yjn2C9HfLFZ3PrcNOO9XvtnL5l9yTm6t6K5C1cY6FDbzKLKo1zNG+/j6FnEZjJle1
	 Iy/RG/P9dT7ijpmGPZUhWu/A6eQABViCmR8nxnjb5gEnl3Pyn4tUraUcrIesOIFCof
	 4N9sYGKx5gKwtTrTNgO8nEXbRb1uZCXChSlwPVCSfSAvj0B1T75nqPeIXmCwYZEf3I
	 3k7VlWBH55ENVIL5LkRZAK8yYluAwwt72rFUfkjONhNJr2YCmGntbNXyyGyxLkgq5e
	 yw/jDqeK25xqc/LwSFwFJ7M/Mfp61QBNyZSWAywI3XAdVIwKcg+hLW0ZEtF0qOziO3
	 U4atIuLVYlemw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] iio: adc: sun20i-gpadc: add A523 gpadc support
Reply-To: sashiko@lists.linux.dev
To: "Michal Piekos" <michal.piekos@mmpsystems.pl>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260510-sunxi-a523-gpadc-v1-2-4f6b0f4000fb@mmpsystems.pl>
References: <20260510-sunxi-a523-gpadc-v1-2-4f6b0f4000fb@mmpsystems.pl>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 21:15:54 +0000
Message-Id: <20260511211554.CE893C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 77E435163EF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295809-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,mmpsystems.pl:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing validation for 0 clocks returned by devm_clk_bulk_get_all_=
enabled() leading to a kernel panic on register access.
--

commit daf3632321b60ce8511b98ae1ad1e4b009e48e3c
Author: Michal Piekos <michal.piekos@mmpsystems.pl>

iio: adc: sun20i-gpadc: add A523 gpadc support

This commit adds support for the A523 gpadc by switching from a single
clock initialization to using devm_clk_bulk_get_all_enabled() to handle
both the bus and module clocks.

> diff --git a/drivers/iio/adc/sun20i-gpadc-iio.c b/drivers/iio/adc/sun20i-=
gpadc-iio.c
> index 861c14da75add..dd4c7e6e3d76e 100644
> --- a/drivers/iio/adc/sun20i-gpadc-iio.c
> +++ b/drivers/iio/adc/sun20i-gpadc-iio.c
[ ... ]
> @@ -205,9 +205,9 @@ static int sun20i_gpadc_probe(struct platform_device =
*pdev)
>  	if (IS_ERR(info->regs))
>  		return PTR_ERR(info->regs);
> =20
> -	clk =3D devm_clk_get_enabled(dev, NULL);
> -	if (IS_ERR(clk))
> -		return dev_err_probe(dev, PTR_ERR(clk), "failed to enable bus clock\n"=
);
> +	ret =3D devm_clk_bulk_get_all_enabled(dev, &clks);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to enable clocks\n");

If the device tree node lacks clock definitions,
devm_clk_bulk_get_all_enabled() will return 0. Because this error handling
only checks for negative return values, could this allow the driver probe
to proceed with zero clocks enabled?

On Allwinner hardware, accessing the registers of an unclocked IP block
typically triggers a synchronous external abort or bus fault. If ret is 0,
the probe later performs a register write:

sun20i_gpadc_probe() {
    ...
	writel(FIELD_PREP(SUN20I_GPADC_CTRL_ADC_AUTOCALI_EN_MASK, 1) |
	       FIELD_PREP(SUN20I_GPADC_CTRL_WORK_MODE_MASK, SUN20I_GPADC_WORK_MODE=
_SINGLE),
	       info->regs + SUN20I_GPADC_CTRL);
    ...
}

Should we also verify that the number of clocks returned is greater than
zero to prevent a potential panic during the register configuration?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510-sunxi-a523=
-gpadc-v1-0-4f6b0f4000fb@mmpsystems.pl?part=3D2

