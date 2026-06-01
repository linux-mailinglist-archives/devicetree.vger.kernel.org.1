Return-Path: <devicetree+bounces-305137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAnEFXNzHWp8bAkAu9opvQ
	(envelope-from <devicetree+bounces-305137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 13:56:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA36561EB0A
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 13:56:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF6F0300A27E
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 11:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0190F371072;
	Mon,  1 Jun 2026 11:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="GF2oyKWg"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF2C36B061;
	Mon,  1 Jun 2026 11:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780314989; cv=pass; b=eY2ngvMHDThFCs/BTzfMdmh60+Y5+7x7tlaKCauZrnNn9/JKaPB8luOjf2YeG9LRE0x8XKAPt/Acz8B3gCBDWZO7i4PqtPc4jUnvoAhXwfVxl/ZqahA/THgAimKp8KmPigUvm7bjAlKer5rpXron6dbida2wZSmz0y9g/xlvTMo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780314989; c=relaxed/simple;
	bh=qv/9LqBg1EWAsENMiXtbqdMh6zS7Nl7EX/bWFaLIF6s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fcy6LI3n2g2V3R+N37pMeTP5AiC/GexYWfXD3HXk3z7uJumph89GPu5rFGUmXHDNEeVxak49gmO8C9+dlq54LX31F2oNdp0xKnIPRJJVoowdNPNzOockYjEYb93YcwwQfxa8mR58OOgpXDDiM1n7Zc+SbB++ndWdSuBx1WaHO4M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=GF2oyKWg; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1780314945; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=FNRftmKnS7T4TSB+t9muQC7THXzDRm3zS59CpQmQXcfR+lD+sjK+3tcrJhNzULSvMP9iFe6zhia6Er7/3D0+ORHk/jkvrq6OqgErsItAuS0JGYtsajOfUPlgChS+89Yd/E67QrR6yXLqLSKOa5NKv55NaBJaHuYMpv0Sij0NibY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1780314945; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NhicfsH5K90NxOsrnACheuqKG+2D1PbU+GtDXc1tNpE=; 
	b=UPvYofb/4uqXxIKz930hU65li2WDA/0umEcWJiCaq63BDNRizgQKDD4r4gKELhgFKIDeyOoI8TsXRqenSrhWTEvcTJIbA+DJt9dTGtNa1N9Lfxj2nAwF++/+9V0cQLkLjNbFt5autS3UbHwhMPXwmjq3lEJMp+ySzHYS6K5IIqk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1780314945;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=NhicfsH5K90NxOsrnACheuqKG+2D1PbU+GtDXc1tNpE=;
	b=GF2oyKWgegPpU7BqIuuEq9O1/RNy2sKIo3tJI+XAAgmkFH1teZa2kBFt1ewppfhY
	FTcXN9GE3Q9TuTAr4N8+B4lGE+E+w6nImJl+d38IyBttQEPH3y4roDTwGUaGPd51cu9
	lRud7zprKpvKYfeeGSa6Z2/17tVg9IWskRJAhg+o=
Received: by mx.zohomail.com with SMTPS id 178031494377259.66847238214382;
	Mon, 1 Jun 2026 04:55:43 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 04019181D80; Mon, 01 Jun 2026 13:55:36 +0200 (CEST)
Date: Mon, 1 Jun 2026 13:55:36 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	nicolas.frattaroli@collabora.com, cristian.ciocaltea@collabora.com, 
	dmitry.baryshkov@oss.qualcomm.com, luca.ceresoli@bootlin.com, dianders@chromium.org, 
	m.szyprowski@samsung.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: display: bridge: analogix-dp: Add
 data-lanes support for endpoint
Message-ID: <ah1y8hRl9M40YNfF@venus>
References: <20260529040530.741336-1-damon.ding@rock-chips.com>
 <20260529040530.741336-2-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l4yu2mk2qw7tpdei"
Content-Disposition: inline
In-Reply-To: <20260529040530.741336-2-damon.ding@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.2.1.5.2/280.300.36
X-ZohoMailClient: External
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305137-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,rock-chips.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,collabora.com:email,collabora.com:dkim]
X-Rspamd-Queue-Id: DA36561EB0A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--l4yu2mk2qw7tpdei
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 1/3] dt-bindings: display: bridge: analogix-dp: Add
 data-lanes support for endpoint
MIME-Version: 1.0

Hi,

On Fri, May 29, 2026 at 12:05:28PM +0800, Damon Ding wrote:
> Add data-lanes property support to the port@1 endpoint for physical
> lane mapping configuration.
>=20
> Lane mapping is mainly used for below scenarios:
> 1. Correct PCB lane swap and differential line routing crossover
>    without hardware changes;
> 2. Adapt mismatched lane pin definitions between SoC and eDP panel;
> 3. Support multiple panel hardware variants on the same board
>    by configuring data-lanes in device tree only.
>=20
> Additionally, add data-lanes setting in Rockchip eDP DT node example
> to show actual lane mapping usage.
>=20
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>=20
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

> Changes in v2:
> - Add lane mapping application scenarios in commit message.
> - Remove redundant deprecated property 'data-lanes' for eDP node.
> - Update port@1 $ref to /schemas/graph.yaml#/$defs/port-base.
>=20
> Changes in v3:
> - Squash data-lanes adjustment of Rockchip eDP DT example into this
>   commit.
> - Add unevaluatedProperties: false to both the port@1 and endpoint
>   nodes.
> ---
>  .../bindings/display/bridge/analogix,dp.yaml  | 19 ++++++++++++++-----
>  .../rockchip/rockchip,analogix-dp.yaml        |  1 +
>  2 files changed, 15 insertions(+), 5 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,dp=
=2Eyaml b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
> index 62f0521b0924..ecf206871cdd 100644
> --- a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
> @@ -42,13 +42,22 @@ properties:
>      properties:
>        port@0:
>          $ref: /schemas/graph.yaml#/properties/port
> -        description:
> -          Input node to receive pixel data.
> +        description: Input node to receive pixel data.
> =20
>        port@1:
> -        $ref: /schemas/graph.yaml#/properties/port
> -        description:
> -          Port node with one endpoint connected to a dp-connector node.
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: Port node with one endpoint connected to sink devic=
e node.
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  enum: [ 0, 1, 2, 3 ]
> =20
>      required:
>        - port@0
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,analogix-dp.yaml
> index d99b23b88cc5..f690ee393fdb 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> @@ -117,6 +117,7 @@ examples:
>            reg =3D <1>;
> =20
>            edp_out_panel: endpoint {
> +            data-lanes =3D <0 1>;
>              remote-endpoint =3D <&panel_in_edp>;
>            };
>          };
> --=20
> 2.34.1
>=20

--l4yu2mk2qw7tpdei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmodczQACgkQ2O7X88g7
+prqbg//W/6q4iL4Z+96KG17dC3Romdv0RIDL4hqiVccAYjIRdOxOyCXB/3Zvt1K
v76++g9tq+K89vejb04n5m0qNsnQshLsMqpD9yS4naPQg7wIQMuGsra87qAkhozF
lFeImUWIMSS/2dbagApnsatXBrQOkXTky+zkyBNmTe71txgkB401J/MUlBJyz70w
9NUjYAR6bb+8I5WDJUaTbkvu8zjEsAYMQ8PW59+D3aFkn2n/bLHqBqRQDSFyP28T
J1GZqwZhSCp3dO2PLLzs4M8tAyowz498gApB8zLo9/yG57U4yBzdrrskbx9MVYUn
/kZMFRzbUbaqwqwwWcVjb/C19iMS5T3iTNLfbenJ7v8HHoOHDRqFXEeoMI1FdCKM
piUuysqVp/Ub7omiD2myBAPwJ8wuEAaUaKV/bcmC76oU7yX2iCB8xZFkbKuEvVB9
UFEpje/F4gWwP3tK+uoqRLDoQ7pxpcCg81WBWKnCNRqavfD/OfalFth4W9ClaUSQ
UjNqx7xF5o2zrxUd5BxTuiNnJjalo3olhcD3c3nVSgdvvHQOdpU4iAp91nAU7whm
U+9eq0CE326GKt+hQSdKH3GbqqxUSf6tQ/KypdlFIhPunpzUoARdE1HrwIYbyO5O
GJ2sUtue3CQZ3nl0/SyuZIJB1jEGMBA5sigFw6TvOZrilwm4GyI=
=I06R
-----END PGP SIGNATURE-----

--l4yu2mk2qw7tpdei--

