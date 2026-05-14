Return-Path: <devicetree+bounces-297745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UE/oIk0PBmoEegIAu9opvQ
	(envelope-from <devicetree+bounces-297745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:07:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 000CC545A9C
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:07:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 877DC300F535
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2E6533986F;
	Thu, 14 May 2026 18:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wh5bwybi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0684325704;
	Thu, 14 May 2026 18:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778782021; cv=none; b=phhFJHkWCDKtf0qaHDcKPvMeF6T9G1n/4OTuWby+O3/GP1/cyo//5JAzjUPkeqpeKUIOTUDNfYNhQwhtNG/0N/8lTHLRXsV56DonRb+8cYCTDRNS2Jt4b8dKMXaeIAwktvpbEcXHEORJhAn4J1usxUXQ4kERqb1emnHfsgZqq8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778782021; c=relaxed/simple;
	bh=ZJhDvmaNEP1ySX2XrRgUq2t9T2ZNXHWBA7mglE4QaNs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eQWRhXKwWo3MrOFn5u4b5dXN4pJJKMHpBS4Zq+VSI8txk3j8nUgJxfewBAv41FhssR9swou04mKgbuNjs2mA3PGzYQ/slGfDcA5wEwB9iyPQ0Tv4SGh0qkWUHm1zXzXcH0x9tZ8Q8ZHs92lBCjlhDvFGVz16r43y1W05In/DlI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wh5bwybi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98A05C2BCB3;
	Thu, 14 May 2026 18:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778782021;
	bh=ZJhDvmaNEP1ySX2XrRgUq2t9T2ZNXHWBA7mglE4QaNs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wh5bwybi1QPNyvNi3hFQ1/ZJnAsKgvnQpQO38MT+AXZ7iFU4+O++iUmpyUyRRIwwB
	 jJ5tZCknJoAeyl/NI1y/QzinPuC5dGRuvK1gb0AncPhLjfJz9KdRamy3jDdRurjuzA
	 Jnj0krRWE0tqVls5+v4ONDtKJsh23y3Z7hS2JN+Sep9M3IzorTMP011rHy4ptCO7oc
	 8OxC9ja3PfY9VLZ9LeGabPIInLXMD0dVhSRWoSYbY1j/n5ums78FFuzzqlLCYkdKiX
	 +S7yOLVLHllpWrBi3IOQWxiK8yOBLGcovB/xjb6JP1E/lbt9sJvUtwqo5Yi6tKhgxn
	 STEpGoTWbqPrw==
Date: Thu, 14 May 2026 19:06:56 +0100
From: Conor Dooley <conor@kernel.org>
To: webgeek1234@gmail.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add Chipone ICNA
 35xx OLED driver bindings
Message-ID: <20260514-ambush-salvation-ce6616190390@spud>
References: <20260514-icna35xx-v2-0-45acd1dfa566@gmail.com>
 <20260514-icna35xx-v2-1-45acd1dfa566@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2GlSKCpp1lgwMr3n"
Content-Disposition: inline
In-Reply-To: <20260514-icna35xx-v2-1-45acd1dfa566@gmail.com>
X-Rspamd-Queue-Id: 000CC545A9C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297745-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Action: no action


--2GlSKCpp1lgwMr3n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 14, 2026 at 12:24:49PM -0500, Aaron Kling via B4 Relay wrote:
> From: Aaron Kling <webgeek1234@gmail.com>
>=20
> The Chipone ICNA35xx series of DDICs are high refresh, low power
> MIPI-DSI drivers for OLED panels. The icna3512 is used by the Ayn Odin 2
> Portal and the icna3520 is used by the Ayn Thor top panel and the Ayn
> Odin 3.
>=20
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  .../bindings/display/panel/chipone,icna35xx.yaml   | 79 ++++++++++++++++=
++++++
>  1 file changed, 79 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/chipone,icna=
35xx.yaml b/Documentation/devicetree/bindings/display/panel/chipone,icna35x=
x.yaml
> new file mode 100644
> index 00000000000000..6464d8d0cf86d5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/chipone,icna35xx.ya=
ml

Filename matching a compatible please.

> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/chipone,icna35xx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Chipone ICNA35xx display drivers
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +description:
> +  The Chipone ICNA35xx are a series of DDICs connected
> +  using a MIPI-DSI video interface.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - ayaneo,pocketds-panel-top
> +              - ayntec,odin2portal-panel
> +          - const: chipone,icna3512
> +
> +      - items:
> +          - enum:
> +              - ayntec,odin3-panel
> +              - ayntec,thor-panel-top
> +          - const: chipone,icna3520

Commit message should state why these ddics are not compatible with one
another.

Rest of this seems okay.

pw-bot: changes-requested

Thanks,
Conor.

--2GlSKCpp1lgwMr3n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagYPQAAKCRB4tDGHoIJi
0qhTAQDuWpG815w2psYFuRBAqW6QCw0uwketZvhj1aQkpAzUmAEA07sYOL9/Ytzo
9JO/9/41YAeuQ1TpbaG+Em0qhu8CBQo=
=yJu9
-----END PGP SIGNATURE-----

--2GlSKCpp1lgwMr3n--

