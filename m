Return-Path: <devicetree+bounces-287667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJjQB06r32ntXgAAu9opvQ
	(envelope-from <devicetree+bounces-287667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 17:14:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 14272405C05
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 17:14:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F3B02302FB70
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 15:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DFC03D75B7;
	Wed, 15 Apr 2026 15:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAEkVqHW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0957A3CA4AB;
	Wed, 15 Apr 2026 15:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776265864; cv=none; b=GurX7edEnAX4d3XBIJEVOKebmsn0VvUJDR2HrgZIm3zYk7zffjo+t05BkUjseNNccF2RNZYWaK4g5WH9e3iFycshWkykeWd1xDdcdoHcruk+TMeYLpzTybsi1BwbMaiMKTgl+emzPxJZ4T5+5az74rmx9Zhra9gS+oreOv64RvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776265864; c=relaxed/simple;
	bh=+oW66S9iTPf+DjWP4/3R62ZAPXefkeA/w7M50i/1pCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DQJcHir/DNiSeoRR8F3dcUzM7huHuQryKyh1IaE4+HW9lXllHb4NQx6tiG5vw2Op9QVm2KDfhqbskFW+cZhi6CJFxOTrbMmqaDVQrEpntqDPYO62Fi0bSJzc3WQuVWM0hKJK6nN6i0sVsaSL5CMYrV67IZvnATZZl/UP2h4D/7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAEkVqHW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 506AEC19424;
	Wed, 15 Apr 2026 15:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776265863;
	bh=+oW66S9iTPf+DjWP4/3R62ZAPXefkeA/w7M50i/1pCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DAEkVqHWfZJO/HGwHZI8JT6iF29PV9+Ol8j6ILWF/U2h4+77GUgsJHHX4dpgw1KKb
	 wdXI3YROj3dA7OvFI9dRIQOSkgb1BzQ7vqumiY+/ms0a3405vOULDU9khzIPmRzB2t
	 2GCtac8RMMIRn09eW7k8wgh1wKiorozpYxwRultaEcUC0FBvkxkhknSHR7rP5uoFr/
	 ZjCWd5roEDrNm5+woZweYER1dLjdzVeV2l+QIu/1Es1nd46xXg+wvskjXkU6vjdzgN
	 YdzZgVJM2a4vd3slRaSmV5VI6jsNHwAAIsleablQBVcE9ccw68XffwhJAmmCNoXKTS
	 TmBFrdpcKoY9w==
Date: Wed, 15 Apr 2026 16:10:59 +0100
From: Conor Dooley <conor@kernel.org>
To: jian.hu@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: amlogic: clk-measure: Add A1
 and T7 compatible
Message-ID: <20260415-clerk-juggle-986fc332451a@spud>
References: <20260415-clkmsr_a1_t7-v2-0-02b6314427e6@amlogic.com>
 <20260415-clkmsr_a1_t7-v2-1-02b6314427e6@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="S2RzMzVYXQiNue92"
Content-Disposition: inline
In-Reply-To: <20260415-clkmsr_a1_t7-v2-1-02b6314427e6@amlogic.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287667-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,amlogic.com:email]
X-Rspamd-Queue-Id: 14272405C05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--S2RzMzVYXQiNue92
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2026 at 04:33:41PM +0800, Jian Hu via B4 Relay wrote:
> From: Jian Hu <jian.hu@amlogic.com>
>=20
> Add the Amlogic A1 and T7 compatible for the clk-measurer IP.
>=20
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>

In the future, please note why fallback compatibles are not suitable in
patches like this.
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable
> ---
>  .../devicetree/bindings/soc/amlogic/amlogic,meson-gx-clk-measure.yaml   =
| 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-=
gx-clk-measure.yaml b/Documentation/devicetree/bindings/soc/amlogic/amlogic=
,meson-gx-clk-measure.yaml
> index 39d4637c2d08..b1200e6940ac 100644
> --- a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-clk-=
measure.yaml
> +++ b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-clk-=
measure.yaml
> @@ -24,6 +24,8 @@ properties:
>        - amlogic,meson-sm1-clk-measure
>        - amlogic,c3-clk-measure
>        - amlogic,s4-clk-measure
> +      - amlogic,a1-clk-measure
> +      - amlogic,t7-clk-measure
> =20
>    reg:
>      maxItems: 1
>=20
> --=20
> 2.47.1
>=20
>=20

--S2RzMzVYXQiNue92
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCad+qggAKCRB4tDGHoIJi
0rm9AQDRmlygY1FIas9dunBFzqaN1S0RjyEx3WgzWgAJHA+UQAD/RuOZzIqvbtOj
rv/4/XvbxNUIPH2QkKG9Sy+ZPQwHKwo=
=n0nL
-----END PGP SIGNATURE-----

--S2RzMzVYXQiNue92--

