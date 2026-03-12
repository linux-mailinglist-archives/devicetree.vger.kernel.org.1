Return-Path: <devicetree+bounces-274741-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MD7DIyD+smmQRQAAu9opvQ
	(envelope-from <devicetree+bounces-274741-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:55:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C14276E0B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05939307EFE0
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD5B3FE662;
	Thu, 12 Mar 2026 17:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOEVFbXi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7D13FD154;
	Thu, 12 Mar 2026 17:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773338059; cv=none; b=OVSXX450ebEtEMNky1c1NVW5RbmtonxAn7OSdnw66Qr8c6d9ayTiHetsQin31CLOg5RyvCBgrr4v5asV0cD2ppsYdv4vzLwBSuiszHS1Rrob2bGr/C+KRFJkrXO2YEjomNsI/IERvKt9+LtYaaCOhl6m1ooDaZ2BBDgq8an5R6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773338059; c=relaxed/simple;
	bh=iHA+mfGwcVcD2Rn+abYlORqPhdvUyx65/E0KTynstd8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fc5S9g8D0fqvCsEkxbJoLs2EBBauJt+8tzFa2thGBQEWmSGV+sDB3aD5StVTW4ozOxvFnncV38A80oJu52VetbhlbpLVgrecESR+EYpeq1iwWk3AcK+8G3pLfa5Dc8gMB6VG7/o8nw3/e/YxTwcOh3gqze3Cgj5/soKBVCqrTq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOEVFbXi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1AD6C4CEF7;
	Thu, 12 Mar 2026 17:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773338059;
	bh=iHA+mfGwcVcD2Rn+abYlORqPhdvUyx65/E0KTynstd8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rOEVFbXiY/K5m0CDM5tKQKPBkcX7HpGKp8xiiCbSemrsuGJV1RTQ9NGfgKVDhEb9b
	 Jeb6B7I2Udw3jyhNtSrQ97wkJhXwWkOoyil9kyEuV5yhROOk08rtbsqIOe19Ab/mDL
	 jWgcKBEEthr5uC8XaJY2A0K3J7rDt7IUllNSjrbeJKPd9q/TH4yWCKvtFSNMvZL1xQ
	 QbmFd2Pjaee1qqX0a/PIUfi9Q2opQiXeOlvbcf+9geYUKwI1w2LlnwPphPRCuIh9nP
	 mCfrEA0YlAzKQjKp73p2g7o4cLVet/nRYdwEfP/xR8uGLfSNYUxDcXW2mVeh58ekZo
	 dXH6y1nCpVSYw==
Date: Thu, 12 Mar 2026 17:54:15 +0000
From: Conor Dooley <conor@kernel.org>
To: xianwei.zhao@amlogic.com
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: amlogic: Document A4 A5 and T7 PWM
Message-ID: <20260312-perfume-afternoon-da62000ff87c@spud>
References: <20260312-pwm_binding-v1-1-515cb65add98@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="90r8pBONFMd7ikMz"
Content-Disposition: inline
In-Reply-To: <20260312-pwm_binding-v1-1-515cb65add98@amlogic.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-274741-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F3C14276E0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--90r8pBONFMd7ikMz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 12, 2026 at 03:10:28AM +0000, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>=20
> Document amlogic,a4-pwm amlogic,a5-pwm and amlogic,t7-pwm
> compatible, which falls back to the meson-s4-pwm group.
>=20
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> After the clock module is merged, the PWM node will be submitted
> together with the nodes of other modules. For now, we submit the
> PWM DT binding first.

I dunno what you mean by this.
Are you talking about submitting the dts user of these compatibles?

patch is
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

pw-bot: not-applicable

>  Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml b/Doc=
umentation/devicetree/bindings/pwm/pwm-amlogic.yaml
> index cc3ebd4deeb6..c337d85da40f 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
> +++ b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
> @@ -39,7 +39,10 @@ properties:
>            - amlogic,meson-s4-pwm
>        - items:
>            - enum:
> +              - amlogic,a4-pwm
> +              - amlogic,a5-pwm
>                - amlogic,c3-pwm
> +              - amlogic,t7-pwm
>                - amlogic,meson-a1-pwm
>            - const: amlogic,meson-s4-pwm
>        - items:
>=20
> ---
> base-commit: e3194dfb772304a1b7ca3bcfccacefec3468b7bf
> change-id: 20260312-pwm_binding-ae847cd0c70f
>=20
> Best regards,
> --=20
> Xianwei Zhao <xianwei.zhao@amlogic.com>
>=20
>=20

--90r8pBONFMd7ikMz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabL9xwAKCRB4tDGHoIJi
0klwAP9XxUiVZqCnyB6nSdN1wWR2JQvNI/1gg74vr2SOUf6iyAD5ATAWXUCMOWRQ
w+YIlDBXtCDpFqOhLZseMtG+Emaytgs=
=c0tV
-----END PGP SIGNATURE-----

--90r8pBONFMd7ikMz--

