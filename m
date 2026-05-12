Return-Path: <devicetree+bounces-296369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNl7HrFfA2r65QEAu9opvQ
	(envelope-from <devicetree+bounces-296369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:13:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0455258CE
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:13:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE497301AA46
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E9F385D81;
	Tue, 12 May 2026 17:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvS8YEWV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128C1385D8B;
	Tue, 12 May 2026 17:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778605970; cv=none; b=rps90ul6/qku6IyuwRywMg37UqNRX03rwk19BfMUpsXRO5CvTKLbbZThcX1GWrgeqXiq9SHeRi6Y8E/ZrWbOeCmHGpKVE202pM8KHf/MLDVFf5iLMDWWtMMrvfZY8LR6sxfD1l5BR4RgJJTrchnv+XjWmrxeMD7WOP/afJjr1Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778605970; c=relaxed/simple;
	bh=XYiPzpLygNAZ8LVk1NLSj512khlrWUZZeRiLupKTurk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E4v9IubBfThjoUqk3TzI9GCBZIt7GJK8L3gyYgwig+keW1SSkGWp1/uoOW4rqTfgZEvdOZpfh0OjZMnvq9I+N4OFxd5dtuAfw+cjSc3R/AYZXKCSwQdmelj3ei6iG5Um1TrkiBhoE/EWMA2vLEeK3sSRDBRd1WuBO9xsHrDhdaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvS8YEWV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D6D8C2BCB0;
	Tue, 12 May 2026 17:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778605969;
	bh=XYiPzpLygNAZ8LVk1NLSj512khlrWUZZeRiLupKTurk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZvS8YEWVS+eRbweKu2UhBuJ39z2K3hW4igeeDM8AAtckOvm32E1MdHYnETwOSvO18
	 o2pz7VoyZwrNwEwjtr+ySDjdYpCnKuAyjW1tvBTJC4O4QKgKNTaeCilTVC6LlXD6T7
	 SsyyPUWo0cxz9t39oMwFI33RD2TLPtKJGmlVwkL9/pUEucRN5q+Ez/Rh2utTLtYf0L
	 MxpwLBAD5bPdiUlXW4BehXIJE+mBbqEvIr4rHOfADgNKElu3L8Wrk3fbiTBymjlRl3
	 MP4cAyJ/6++2YGBFBGyWa1/TchxGY+RjqWguIWSn9Hg3UrDA+MsEviMcver33Z5rdi
	 8A1EovEa8+dPw==
Date: Tue, 12 May 2026 18:12:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	andrzej.hajda@intel.com, neil.armstrong@linaro.org,
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com, cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com, dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com, dianders@chromium.org,
	m.szyprowski@samsung.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 01/10] dt-bindings: display: rockchip: analogix-dp:
 Allow hclk as third clock
Message-ID: <20260512-diabetic-ahead-dd36bc2d8be7@spud>
References: <20260512095644.1946084-1-damon.ding@rock-chips.com>
 <20260512095644.1946084-2-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GCWl3JYbBBSpU2el"
Content-Disposition: inline
In-Reply-To: <20260512095644.1946084-2-damon.ding@rock-chips.com>
X-Rspamd-Queue-Id: 1D0455258CE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296369-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--GCWl3JYbBBSpU2el
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 12, 2026 at 05:56:35PM +0800, Damon Ding wrote:
> RK3588 eDP controller requires HCLK_VO1 (video output bus clock)
> to access the VO1 GRF registers and enable the video datapath.
>=20
> Previously, the clock was enabled implicitly via the 'rockchip,vo-grf'
> phandle reference, which allowed the eDP to work without explicitly
> managing the hclk_vo1 clock. However, this is not safe or explicit.
>=20
> To align with other display controllers (HDMI) on RK3588 and make
> the clock requirement explicit, expand clock-names to support either
> "grf" (for older SoCs) or "hclk" (for RK3588) as the third clock.
>=20
> This makes the clock dependency clear and removes reliance on implicit
> clock enablement from GRF phandle.
>=20
> Fixes: f855146263b1 ("dt-bindings: display: rockchip: analogix-dp: Add su=
pport for RK3588")
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>=20
> ---
>=20
> Changes in v4:
> - Modify the commit msg.
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml       | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,analogix-dp.yaml
> index d99b23b88cc5..d2bc8636b626 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> @@ -26,7 +26,9 @@ properties:
>      items:
>        - const: dp
>        - const: pclk
> -      - const: grf
> +      - enum:
> +          - grf
> +          - hclk

Could you also enforce the correct clock name on a per-compatible basis
please?

pw-bot: changes-requested

Cheers,
Conor.

> =20
>    power-domains:
>      maxItems: 1
> --=20
> 2.34.1
>=20

--GCWl3JYbBBSpU2el
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNfigAKCRB4tDGHoIJi
0tZJAP0W35XvDRqcoYGHpKWuxENPQgO0xXeFFAwEeudPh2923AEAk75EJGRt625l
yCmMZqWmhluPIQKm1SCrwiuqweX4Dw0=
=H1Kk
-----END PGP SIGNATURE-----

--GCWl3JYbBBSpU2el--

