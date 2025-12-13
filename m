Return-Path: <devicetree+bounces-246256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DF7CBB119
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 17:06:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49C6C30341FE
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 16:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29FC22D94A2;
	Sat, 13 Dec 2025 16:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="nHwyAcsh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557412D7D30
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 16:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765641974; cv=none; b=g6zPZgIgHuy1k9+wLNYvrN6RIFq+FJkeH9jc74ToAUecHbihDxJNEFyWnBfjrhX+fqgaTNvmlSLrFZLxJJIdMqmOAIMSMetxT1YyaDidoSTIBGAAxRyw03XBDeVATAcxpYHUzY0NjXFhI3ESIduDQJ+LoOaJy7R4ab3dY3VcbZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765641974; c=relaxed/simple;
	bh=SDBBsrOncCdhgc12xDN/LseHzXKKbpQBb1EXHphs6Mo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QYxgCfxm8Ow94YDlRPQy0XStR8pqFgO2t7n5zaeu5g2+dudC8eNv2nUGnzKDL2KLP9o1C0JabR4p4Jg4FQmdDJqJUl/+wb+lWv9eTfbM2p/c/3jSZBpspJn0W28v77asZqHKGZDMvUrxDKMo0Kuk4NKZZtFq6hxXqaRaFWWJDOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=nHwyAcsh; arc=none smtp.client-ip=209.85.222.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-8bb6a27d3edso98617685a.3
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 08:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1765641969; x=1766246769; darn=vger.kernel.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=VPP688dkTW0pL33s++cls2GPRs92VKLeZx8QSakYhjw=;
        b=nHwyAcshlBi8Bzt+Efw6xyCHl2WGJgyupsI5kmAZuasEPoKmrimQJlMXl0zMhIA7rT
         BuCgCZHgVfSMYyZqiCW9Jg60CyWAQsCx/QW9aZTgIw5939ylx52r7b1zeuJq2ikv15Rh
         phRZlJhhEcUBgst8jyGsHak/Kuow0SdRShINWWtmWP5VgKJHrakHYPrnubJB6E/kGQSc
         EbMyMybo3fq2wUYYL3fW5ZK0QuxzPO8hOITj1xrHt/vfjSR6ubCpeeB8Xcs0gEARVlMy
         wYyFfscO9518bXNJp2O2K3tMsZuU14Zx+/tjPoudtUixCMpAZAdhpiKAbuhO8uwrExS7
         WK5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765641969; x=1766246769;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VPP688dkTW0pL33s++cls2GPRs92VKLeZx8QSakYhjw=;
        b=XMXRPlqsyxIQoLxA+s7gVp3Bv7hUaoVXibvGOHCzvDWKtTZGzlzMdx6H1piYwrb3aD
         XJN5TUWtWqueOeanw6a53Ere+2OLzk5IN+8ylzpq9PHFwC9fq4s+0mKE28CKcpZ6xWQ8
         C3DFiX/DI8u2fyPaS++7DaKX9jnQIApO0EwxRZ2/Q3JI+m5A+uGPl5pdXOXq1UflzWd1
         yxhTdsbIgrC70oSibLJNlj8eNi9aJexWwfr+qX5mJH36Vd6k8uLgEO3SdwFQ8QIcEV0/
         ApgmElJUmuWcJAkHXlPhvp0bdS33uvrDOEwe/dKEKL2Qxx8NZSSmXA2nnSooOpO+YjP4
         j2Xg==
X-Forwarded-Encrypted: i=1; AJvYcCX2LBWkb55Ir6XuQWAGzIDFyvjO4z8cj2R0x/JEfnmSj+FAR8MJ0OaMYQ9n5Fo6u4G+42z2IsJL2893@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1+gq5E00Jd+kclf0UMjyE3MqRd3owJhsyWCd0IMz8i5+S6CPq
	3tAVgi3DtYSyKZb9ROdOewYao88cOht5MGn9Hb91jfUMYfdncvoSJGAp1MZEnaJ/FtsT3am6EGY
	QgEQ7dNE0RA==
X-Gm-Gg: AY/fxX5ctX52yt0cF6fSyJexBAAp4Xq61fOySJpk5s3IJDC3F9OjzfXRtiwFth6SqEt
	7zE44iMvsgMKSnd+vVo1ZO2pupns5zptYGaqT0S2YvP6imWaL2WUINiHu5S/HexnVoG8W6fOmdP
	RXa/Qq1txo11meTpxzA4hqH30B/z3yyW9XpWMcKRf7fb/5reU2VUEXEyoxCQd5HYANN5V6hCWNC
	8zNpxdaBmJUHmIxRFGBPLXi2GqlrKBhcDhTb3FWB/BZq+e27izKqW+CFvW5tDpA8Wl2neZcK+l/
	+M9u0BRm9P1wd3OWYydOli/mbmAKoSbWQw4STz4ZWH6Zk7d8bGieQBmIRHCpyNJnlYDFMxsEHeC
	m0IItFfiuQqM32GoI/9EdDTzgRWRLAd7T/1ES4vrkR63uHfCZiB42L5ZrLyNTc9LTGl/kgEroos
	LlXd2cgBcaBRQexK0psEGFegWrTMQ=
X-Google-Smtp-Source: AGHT+IFX0cCXQ5IRNzHT17H3NzX8e6Y84Qxyxfw84gjFiOrjw0D+kziSjLK1yzotuVdbuj1rszNj0Q==
X-Received: by 2002:a05:620a:7113:b0:8b2:ef70:64e9 with SMTP id af79cd13be357-8bb3a277a37mr787319785a.51.1765641969456;
        Sat, 13 Dec 2025 08:06:09 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::5ac? ([2606:6d00:17:7b4b::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab544b5d3sm711674185a.4.2025.12.13.08.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 08:06:08 -0800 (PST)
Message-ID: <99ff7a97287988b8e74f84e1fa55cd6e1524323b.camel@ndufresne.ca>
Subject: Re: [PATCH RESEND v6 2/4] dt-bindings: media: allegro: Add al300
 decoder IPs
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: yassine.ouaissa@allegrodvt.com, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Michal Simek	
 <michal.simek@amd.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Conor
 Dooley	 <conor.dooley@microchip.com>
Date: Sat, 13 Dec 2025 11:06:06 -0500
In-Reply-To: <20251208-allegro_dvt_al300_dec_driver-v6-2-128956555677@allegrodvt.com>
References: 
	<20251208-allegro_dvt_al300_dec_driver-v6-0-128956555677@allegrodvt.com>
	 <20251208-allegro_dvt_al300_dec_driver-v6-2-128956555677@allegrodvt.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-9PpgWgu1SmrVxZIESce8"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-9PpgWgu1SmrVxZIESce8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le lundi 08 d=C3=A9cembre 2025 =C3=A0 16:49 +0100, Yassine Ouaissa via B4 R=
elay a =C3=A9crit=C2=A0:
> From: Yassine Ouaissa <yassine.ouaissa@allegrodvt.com>
>=20
> Add a schema for the allegro gen3 video decoder.
>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Yassine Ouaissa <yassine.ouaissa@allegrodvt.com>

You didn't apply any changes following Micheal review in this oen either. C=
ouple
of reminder below.

> ---
> =C2=A0.../bindings/media/allegro,al300-vdec.yaml=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 76 ++++++++++++++++++++++
> =C2=A0MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +
> =C2=A02 files changed, 78 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/media/allegro,al300-vdec.y=
aml b/Documentation/devicetree/bindings/media/allegro,al300-vdec.yaml
> new file mode 100644
> index 000000000000..12e86c306d55
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allegro,al300-vdec.yaml
> @@ -0,0 +1,76 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/allegro,al300-vdec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allegro DVT Video IP Decoder Gen 3
> +
> +maintainers:
> +=C2=A0 - Yassine OUAISSA <yassine.ouaissa@allegrodvt.com>
> +
> +description:
> +=C2=A0 The al300-vdec represents the gen 3 of Allegro DVT IP video
> +=C2=A0 decoding technology, offering significant advancements over its
> +=C2=A0 predecessors. This new decoder features enhanced processing capab=
ilities
> +=C2=A0 with improved throughput and reduced latency.
> +
> +=C2=A0 Communication between the host driver software and the MCU is imp=
lemented
> +=C2=A0 through a specialized mailbox interface mechanism. This mailbox s=
ystem
> +=C2=A0 provides a structured channel for exchanging commands, parameters=
, and
> +=C2=A0 status information between the host CPU and the MCU controlling t=
he codec
> +=C2=A0 engines.

Need to drop the marketing. In 10y from now, this won't be new anymore.

> +
> +properties:
> +=C2=A0 compatible:
> +=C2=A0=C2=A0=C2=A0 const: allegro,al300-vdec
> +
> +=C2=A0 reg:
> +=C2=A0=C2=A0=C2=A0 maxItems: 2
> +
> +=C2=A0 reg-names:
> +=C2=A0=C2=A0=C2=A0 items:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: top
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: apb
> +
> +=C2=A0 interrupts:
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> +
> +=C2=A0 clocks:
> +=C2=A0=C2=A0=C2=A0 description: MCU core clock
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> +
> +=C2=A0 memory-region:
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> +
> +=C2=A0 firmware-name:
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> +
> +required:
> +=C2=A0 - compatible
> +=C2=A0 - reg
> +=C2=A0 - reg-names
> +=C2=A0 - interrupts
> +=C2=A0 - clocks
> +
> +additionalProperties: False
> +
> +examples:
> +=C2=A0 - |
> +=C2=A0=C2=A0=C2=A0 #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +=C2=A0=C2=A0=C2=A0 axi {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #address-cells =3D <2>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #size-cells =3D <2>;
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 video-decoder@a0120000 {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compa=
tible =3D "allegro,al300-vdec";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg =
=3D <0x00 0xa0120000 0x00 0x10000>, /*VDEC_TOP*/
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x01 0x80000000 0x00 0x8000>;=C2=A0 /*MCU_A=
PB*/
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg-n=
ames =3D "top", "apb";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inter=
rupts =3D <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock=
s =3D <&mcu_core_clk>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memor=
y-region =3D <&vdec_mem>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 firmw=
are-name =3D "al300_vdec.fw";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
> +=C2=A0=C2=A0=C2=A0 };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index dc56841fa5e5..67dfc2ee1725 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -837,7 +837,9 @@ M:	Michael Tretter <m.tretter@pengutronix.de>
> =C2=A0R:	Pengutronix Kernel Team <kernel@pengutronix.de>
> =C2=A0L:	linux-media@vger.kernel.org
> =C2=A0S:	Maintained
> +F:	Documentation/devicetree/bindings/media/allegro,al300-vdec.yaml
> =C2=A0F:	Documentation/devicetree/bindings/media/allegro,al5e.yaml
> +F:	drivers/media/platform/allegro-dvt/al300
> =C2=A0F:	drivers/media/platform/allegro-dvt/zynqmp

As I said earlier, I'd like to see Micheal/PTX as maintainer for
drivers/media/platform/allegro-dvt for now, and you with only the AL300. Th=
ey
have a lot more experience.

Nicolas

> =C2=A0
> =C2=A0ALLIED VISION ALVIUM CAMERA DRIVER

--=-9PpgWgu1SmrVxZIESce8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaT2O7gAKCRDZQZRRKWBy
9IEmAQDV/IIbEHPFgtPkIUcAdJW738DFPdZq0iZ+IicsY+Bk8wD/QlFzZSlnpyKS
xnn+pqyzWfvBl9CISKfBn+ebKaWQnw0=
=XdBA
-----END PGP SIGNATURE-----

--=-9PpgWgu1SmrVxZIESce8--

