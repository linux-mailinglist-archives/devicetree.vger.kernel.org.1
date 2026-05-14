Return-Path: <devicetree+bounces-297257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PgIM8YzBWonTQIAu9opvQ
	(envelope-from <devicetree+bounces-297257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:30:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F1853D0C0
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A926A30474F6
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334DF32ABC0;
	Thu, 14 May 2026 02:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7TtMoZj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD42D3EF2;
	Thu, 14 May 2026 02:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778725779; cv=none; b=t5a7NtQhB2M6MgOhwWfAfbb4nlo4VwoVm0imUmPo07UczI60VDZoceI/zbXXr/Zw3DEb/GQB/lDs2VGhdxvzgVrdBF+fSY0myVzV37diJ04kShhPw+zWE/jWYVeloGM8GH2QvcF8IsvMtsNDaayI2hNC1JhJ8lfG1/xrQ61dpc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778725779; c=relaxed/simple;
	bh=UUSAxOI+k3W9IGtr2fELZf9Wm7ZNchPQsmG34mI/Pik=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZTaIWnvlrNh6dHec8QQ73f30wLKuv5GkcvxAF8NRy+mbQ4yeJV66+6bXjZfgtATnI2eZ5ObSP8cevMEsbnn1KF+Sye4e4LetuigoTEec/43zh0LnhnJrI6KHMATAY52EW6Mwx0h4uTtlQ7ZWyf8SxLO/2cxY9HLXZaC9iEPBOLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7TtMoZj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5889BC19425;
	Thu, 14 May 2026 02:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778725778;
	bh=UUSAxOI+k3W9IGtr2fELZf9Wm7ZNchPQsmG34mI/Pik=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=E7TtMoZjV9oTmwL687sSBMVHk2tti/Dh/AMHjDl5ni+j18llDi5dMd1/I1E6yZ6dS
	 W03TMH7c3IuC6BlTNtcKetVOLL183+hJVNwsDDbB6pvNAASAHo5kiHgy7oV4rf72ie
	 TSW7ZWMWpmtgwoWvBLh1+JO2bW2eH0gQNfhsb0S6YGe3csfrx+RJay1GuPTucwGV4x
	 GjxaSf3nSSHHPqZfDxxMq9aCXExkGoKW2lA2W8pBiO0CKNcZob8dWDdT1zk2pNqxJl
	 2a5MKIijJgkLKcDbJ/3yslAoi3IdszHQHMbfbz89rrOUlNmIsRLxI1jz6XMiwIRHHD
	 zEDb0cPj+J1lw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] iio: adc: sun20i-gpadc: add A523 gpadc support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michal Piekos" <michal.piekos@mmpsystems.pl>
Cc: robh@kernel.org, linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260513-sunxi-a523-gpadc-v2-2-d5efde151dac@mmpsystems.pl>
References: <20260513-sunxi-a523-gpadc-v2-2-d5efde151dac@mmpsystems.pl>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 02:29:37 +0000
Message-Id: <20260514022938.5889BC19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 32F1853D0C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297257-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mmpsystems.pl:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] If `devm_clk_bulk_get_all_enabled()` returns 0 (meaning no clocks =
are defined in the device tree), the driver aborts the probe early but inco=
rrectly returns 0 (success).
--

commit 6e1c58e982371b9be677bdb51d74117b3577cd6f
Author: Michal Piekos <michal.piekos@mmpsystems.pl>

iio: adc: sun20i-gpadc: add A523 gpadc support

This commit adds support for the A523 gpadc by switching to the bulk clock
API to handle both bus and module clocks.

> diff --git a/drivers/iio/adc/sun20i-gpadc-iio.c b/drivers/iio/adc/sun20i-=
gpadc-iio.c
> index 861c14da75add..3f1f07b3a3856 100644
> --- a/drivers/iio/adc/sun20i-gpadc-iio.c
> +++ b/drivers/iio/adc/sun20i-gpadc-iio.c
[ ... ]
> @@ -205,9 +205,11 @@ static int sun20i_gpadc_probe(struct platform_device=
 *pdev)
>  	if (IS_ERR(info->regs))
>  		return PTR_ERR(info->regs);
> =20
> -	clk =3D devm_clk_get_enabled(dev, NULL);
> -	if (IS_ERR(clk))
> -		return dev_err_probe(dev, PTR_ERR(clk), "failed to enable bus clock\n"=
);
> +	ret =3D devm_clk_bulk_get_all_enabled(dev, &clks);
> +	if (ret <=3D 0)
> +		return dev_err_probe(
> +			dev, ret,
> +			"failed to enable clocks or no clocks defined\n");

When devm_clk_bulk_get_all_enabled() returns 0 (meaning no clocks are defin=
ed),
will this code return 0 from the probe function?

Since dev_err_probe() returns the error code passed to it, returning 0 here
would cause sun20i_gpadc_probe() to succeed while skipping all remaining
initialization like reset deassertion, IRQ registration, and IIO device
registration.

Should ret be explicitly set to a negative error code (like -ENODEV) before
calling dev_err_probe() if ret is 0?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-sunxi-a523=
-gpadc-v2-0-d5efde151dac@mmpsystems.pl?part=3D2

