Return-Path: <devicetree+bounces-299767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FOxKBcEDGojTwUAu9opvQ
	(envelope-from <devicetree+bounces-299767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:32:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA3257825B
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:32:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3D525302AE32
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59CF5382F0A;
	Tue, 19 May 2026 06:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s73cesPc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3732637CD5C
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 06:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779171909; cv=none; b=ic1trhVzrbEwlT8+wV6NXQ39JSQF1uxaxDl0M6lm5aApfv2sLtQ2a2GdzoNefskmhfs1RymIZH4BATdgTVAvu0HCZHW28Ib/Yf0riPbzkIkRAy9/LPNwG7ihgQM/fQLcCVCyZph4dLUALp3B9uZl4f5rjOOrrDN1nLqXN1Hu06U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779171909; c=relaxed/simple;
	bh=Iz3yYT7+05lk/diU2ygXiNeRiCLFV7qv26avU8tyxcI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GGdL1Myubm0V88CzbHr2AI2NHnOT20e6Oa5/1HpoD+W+8FaeygvqdiFIKbuD/pxMeQe0HExDe74FZNImLzNcosKW9wTqT6Qty+C4uerNUI+xfTPTDt2g63pY4nfqR9DdOSsIfi/fVrNxmERlPG+UDHdg54m/DIELzcchrIUL4go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s73cesPc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85D53C2BCB3;
	Tue, 19 May 2026 06:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171908;
	bh=Iz3yYT7+05lk/diU2ygXiNeRiCLFV7qv26avU8tyxcI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=s73cesPcjrS34WSKUlrgs/+kT67zbqq6ruhr2oBB1cNT540iIo2wmW3a+7vBsawUJ
	 ZrKv5azQEHGdoMufCj6y1PIlYzsaOJ2d4Z1q1xuAk19qZ5TcNJEhubvF3en9gcgVnY
	 LKKPCeWZcV6lMBPV5aO7412b73dw6RBn8K+H8LE1Lasvbh6wGobIATYdcuwFBqfs75
	 pPISbUI8UElQg4jGGIOtyHq3Nx5TE7+2qysnGa9sYOrJ4QCnj7aPUc/56gReQoKBMa
	 PhZPi+S2kO/M1XU/1Sr5NEqvilphk4+oBSYSZDMyIV0KUP2FdwP8DThDu9SNINOSJ3
	 b3enccdb69arQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] drm/verisilicon: add model ID constants and DCU
 Lite chip identity
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260519055114.1886525-3-a0987203069@gmail.com>
References: <20260519055114.1886525-3-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 06:25:08 +0000
Message-Id: <20260519062508.85D53C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299767-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: AEA3257825B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Specific chip identities in the `vs_chip_identities[]` array are p=
ermanently shadowed by an earlier wildcard entry, making them unreachable.
- [High] Missing error checks on `regmap_read()` cause uninitialized stack =
variables to be used in hardware matching.
--

commit d87a3d0928c8de1f7d370f6130d55b01b2660eb9
Author: Joey Lu <a0987203069@gmail.com>

drm/verisilicon: add model ID constants and DCU Lite chip identity

This commit introduces symbolic constants for model IDs to replace magic
numbers and adds the DCU Lite chip identity to vs_chip_identities[]. It also
adds register-level macros for forthcoming DCU Lite support.

> diff --git a/drivers/gpu/drm/verisilicon/vs_hwdb.c b/drivers/gpu/drm/veri=
silicon/vs_hwdb.c
> index 09336af0900ae..a25c4b16181d6 100644
> --- a/drivers/gpu/drm/verisilicon/vs_hwdb.c
> +++ b/drivers/gpu/drm/verisilicon/vs_hwdb.c
> @@ -90,7 +90,7 @@ static const struct vs_formats vs_formats_with_yuv444 =
=3D {
> =20
>  static struct vs_chip_identity vs_chip_identities[] =3D {
>  	{
> -		.model =3D 0x8200,
> +		.model =3D VSDC_MODEL_DC8200,
>  		.revision =3D 0x5720,
>  		.customer_id =3D ~0U,

This isn't a bug introduced by this patch, but does this first entry with
.customer_id =3D ~0U permanently shadow the later entries for the same model
and revision?

The loop in vs_fill_chip_identity() evaluates these sequentially and returns
on the first match. Since ~0U acts as a wildcard, it appears the later
specific entries for revision 0x5720 (like customer 0x310 which enables
YUV444) will never be reached.

[ ... ]

> @@ -114,13 +114,21 @@ static struct vs_chip_identity vs_chip_identities[]=
 =3D {
>  		.formats =3D &vs_formats_with_yuv444,
>  	},
>  	{
> -		.model =3D 0x8200,
> +		.model =3D VSDC_MODEL_DC8200,
>  		.revision =3D 0x5720,
>  		.customer_id =3D 0x311,
> =20
>  		.display_count =3D 2,
>  		.formats =3D &vs_formats_no_yuv444,
>  	},
> +	{
> +		.model =3D VSDC_MODEL_DCU_LITE,
> +		.revision =3D 0x5560,
> +		.customer_id =3D 0x305,
> +
> +		.display_count =3D 1,
> +		.formats =3D &vs_formats_no_yuv444,
> +	},
>  };
> =20
>  int vs_fill_chip_identity(struct regmap *regs,
>  			  struct vs_chip_identity *ident)

Also not introduced by this patch, but looking at the rest of
vs_fill_chip_identity() just below this array, do we need to check the retu=
rn
values of the regmap_read() calls?

It looks like the model, revision, and customer_id variables are declared on
the stack without initialization:

    u32 model;
    u32 revision;
    u32 customer_id;

    regmap_read(regs, VSDC_TOP_CHIP_MODEL, &model);
    regmap_read(regs, VSDC_TOP_CHIP_REV, &revision);
    regmap_read(regs, VSDC_TOP_CHIP_CUSTOMER_ID, &customer_id);

If regmap_read() fails (e.g., due to an unclocked device or hardware
timeout), it would leave these variables uninitialized.

Could this lead to undefined behavior when they are evaluated in the
vs_chip_identities loop condition, potentially matching a random hardware
profile?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519055114.1886=
525-1-a0987203069@gmail.com?part=3D2

