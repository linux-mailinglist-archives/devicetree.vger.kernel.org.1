Return-Path: <devicetree+bounces-257591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOLvDrfeb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:59:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B05C64AEAE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 72F399C34A7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86C8837A49D;
	Tue, 20 Jan 2026 19:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rkh4Z6W0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292C633D6F9;
	Tue, 20 Jan 2026 19:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768938391; cv=none; b=TaP+EAlBil9MdLVrr4YTeCilMGRNkQoToWijvmNQVuPRkAZ+772xSAOr3opZ7V7zI6BPUgCs5CvfaKSDz4uMjOAK9ktTvMUrz2W9oDO1PytZZsaZ5kcX/kgjx62hqOVVZLXGptemfit7y8EDfkxCmkrr03S+3J2FgKaj1NMw8PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768938391; c=relaxed/simple;
	bh=N/YewaSGeWXLrt9+OHn3+fYnvIByfFrUXO4MAEV8gPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KueK0/83gfCYH6/+u0Tp1yWjB+GkXYxLmIxV63F5iX4jBsoX66lAJsFNRX5Tyw+9X1KsPaksjtLoyIOWO+3Ak3DhIYKSzk1l/hOYVSHL/BjCjJYVR5UvOkpFeqeGK0XnsCQhzGTLmEzqDg9niAa1U7XBL0YUEdFnOpa3AxJbYM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rkh4Z6W0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09302C16AAE;
	Tue, 20 Jan 2026 19:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768938390;
	bh=N/YewaSGeWXLrt9+OHn3+fYnvIByfFrUXO4MAEV8gPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rkh4Z6W0hFAW4nFrtuQgKvsh05h7ieSU0XLiPskM01UDAtxBEcZqZPOjOzSj4i7bo
	 mGC2rdb3rHSm9iGy04ATgEpl1LwKChNvpkTpqVToPBxAyKUS8nt51SNF1WUoNXQZ8f
	 ABoj3S6jSODGgWTNInI2yztbO+dgVeO1VyhB1y4nrJbNBTpLNxr02HORUkoEs9imZQ
	 89ReUrR9xKXAqEEK5U6kclVSzqr6SA834S3XvXkRJdWNbyEAUWXoUcTt+gCNc9d1j7
	 vt+3lYNMxEMG6EkBF3wYVXnOTP2/M/8ZJaOyBKNvKNtqFUEj35FCFyqgUqAmK4vv4Z
	 TkdDjrx2jFP5Q==
Date: Tue, 20 Jan 2026 19:46:26 +0000
From: Conor Dooley <conor@kernel.org>
To: tzeyee.ng@altera.com
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: altera: document Stratix 10 eMMC
 compatible
Message-ID: <20260120-factsheet-jurist-ddacd788d23c@spud>
References: <cover.1768916730.git.tzeyee.ng@altera.com>
 <cbfe8eb6547b6fcd815712ad637e061229ed63cd.1768916730.git.tzeyee.ng@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0Aq/T299ZWMeKoSk"
Content-Disposition: inline
In-Reply-To: <cbfe8eb6547b6fcd815712ad637e061229ed63cd.1768916730.git.tzeyee.ng@altera.com>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257591-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: B05C64AEAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--0Aq/T299ZWMeKoSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 20, 2026 at 05:54:45AM -0800, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
>=20
> Stratix 10 devkit support a separate eMMC daughter card. Document
> Stratix 10 eMMC daughter board compatible.

This makes it seem like stratix10-socdk should be a fallback for this
emmc device, if the new compatible only describes the combination
device.

>=20
> Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
> ---
>  Documentation/devicetree/bindings/arm/altera.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Document=
ation/devicetree/bindings/arm/altera.yaml
> index db61537b7115..2a8bc85e9be9 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -78,6 +78,7 @@ properties:
>          items:
>            - enum:
>                - altr,socfpga-stratix10-socdk
> +              - altr,socfpga-stratix10-socdk-emmc
>                - altr,socfpga-stratix10-swvp
>            - const: altr,socfpga-stratix10
> =20
> --=20
> 2.25.1
>=20

--0Aq/T299ZWMeKoSk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaW/bkgAKCRB4tDGHoIJi
0qkHAQDkz+OUbj+ty1iPQ+jB+CdAwwXt97nQIHF4CbYcm+ZuWQD/ZZECnJF5v/Gi
DLabMbyKqrwA65kZK0hW381fZ4CySQY=
=/x+l
-----END PGP SIGNATURE-----

--0Aq/T299ZWMeKoSk--

