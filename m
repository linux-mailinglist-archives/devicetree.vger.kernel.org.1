Return-Path: <devicetree+bounces-143419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2FAA29B72
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 21:52:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E6B8188958A
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 20:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DFA8213E6F;
	Wed,  5 Feb 2025 20:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="K02Ardb6"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817D01EE7B3
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 20:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738788742; cv=none; b=XYbDYR56I1+0P9CYP75T1KxLpHqKQe9A6n8HRP5XBZaKWodtg8usf0G3CmiPQRKnU8/aAXMuola9e6lhgLNLE/SNUh9UIW95v/MpkaP4h3jaKkded/XUrZj2+A4YWSw8NTyyjpWvUWcDKNj901AwYddqKX72VCcg80SGdO8nYnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738788742; c=relaxed/simple;
	bh=2p5iqQbFFHwdIoUxP8vTGSY8kb0UxKvU34sou0nq2G8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pp4/yvd1GfWrjMMCMr0Mr7oa7hvIz/zNVkmGD70dVhIqnO22ItPpVu+fl5vCckqeFdFC3j0iu3WCsrKXVSGx79ricCPBiwR7upaN0MzHM609s3tZ0gSCPReUvmOKHJ/LCqOlGjClsAgKD4XcFYKpkRph10C8bmhFT1vrF3oHOTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=K02Ardb6; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738788739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XTbIzhwV3ZjAl5OwLbJohLrJDizqbdTCfNzNYP89Ar4=;
	b=K02Ardb6Hw+LHhRRfXY7EqlBC9Xwe0N8R87VSVDzJzElusff9GSU2T5ZOLt7k5qSG6iyVI
	qfjuzPY5lQF0Xy8FSZO+ZgMhSEIOqnB5TCpkq7sqNbYSOY0c6cGjQKZMQ+vjCWMn6mlleR
	Lf8heaMVBScxHtVVwPp7mw8LHQj4b7Y=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-187-cdSDDC4jOEq4DXmmVDhIRA-1; Wed, 05 Feb 2025 15:52:17 -0500
X-MC-Unique: cdSDDC4jOEq4DXmmVDhIRA-1
X-Mimecast-MFC-AGG-ID: cdSDDC4jOEq4DXmmVDhIRA
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-38639b4f19cso97347f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 12:52:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738788736; x=1739393536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XTbIzhwV3ZjAl5OwLbJohLrJDizqbdTCfNzNYP89Ar4=;
        b=e2a36IOdIazhV7Cbgp6NmgXpQYCyxMvL9NLhQt5u2zZxYzvdcpgoJs0EKvmfgq4Zsk
         jJDBMJJtmtBTw+mVNOphJ49dqoN2UlcoDrJ5j266I/BQcHHt5ET6LeLs6BJSHolLfsIS
         BlyUYKgxUSGK/H5w2oV58xYJhb1Ddv9Vp+QKqicgkOCg2IsptlWPpZviaJcz5V+ath0D
         bYVv4vT4DULIrR/7MvhAnZVbv6nkM+CY2Y48lOBlCVitNRHJmu3mS+czMIt99OVGb1UD
         6D6cu2NW7DSZrn8UUm+9n/7BsfuQ0LeT1d4HS1AJKF+vtOctqS8BgFFDcHIDbI/v20mM
         PESw==
X-Forwarded-Encrypted: i=1; AJvYcCVP9TL7fnU1+pKhjZQPdpt7onqj8wIyD0BPH/Yu8Bjwbra1cjmrdfZcwSlLYrVC1w7Tc2Qo/t5PvT1i@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7WQ+Zr/vRPMwoY2Bh5OsIWGUyAbN+b0DNVmf/+h9WGrmgJ0k4
	MEV7umeBKjjkUuXWGmOCZKKzi2FuPWHIpmvStB3soQ30dHg2wduK066uUuongIEQ/arBglmOzF9
	X0vWTWaXI+wMWbLhYAK/st9Fg7B8913GBHZjajoAdhANi+RHVr3AOPtBAC0Y=
X-Gm-Gg: ASbGnct6OH6xz11Gw9RhreWi+HQTSH54S4rH8PHz3OwCNaab2OkM8hqtNMGIvyAw0ys
	DE2DubfhqtecNOel7jElBlixB1QGYZVXBSaCy6jIVXmp/pqfKwAj0BCTjYq3+19pVyPB3zHbqV0
	zRXFVs5kHC+ZeTfZVTKOkQwZ3DVMypvzynFqistnSc3U2+Alz6Nev/4pG3filKC9zzevF8181Qr
	Crf/k0+xlWuXiAjgu9Oan0KJJ7nMm3dfOkvcNFIb1eFi/Jzr/3cfZ4sgBjlIWZNzNuNQtJUvZKi
	WwAS/KG1O2usqMzZk3Fb8w1+EbUILsmAO/Dl+3Rohn6ng17ijDrX
X-Received: by 2002:a5d:47cb:0:b0:38d:adcd:a083 with SMTP id ffacd0b85a97d-38db49004bamr3522250f8f.42.1738788736428;
        Wed, 05 Feb 2025 12:52:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFM8eo/awV4xrN7DNOWWlAj/RbtCWXcBZTqZRKq5/GMKRr+GILL69JKkMFHkF5J39xi9HCwvA==
X-Received: by 2002:a5d:47cb:0:b0:38d:adcd:a083 with SMTP id ffacd0b85a97d-38db49004bamr3522229f8f.42.1738788735924;
        Wed, 05 Feb 2025 12:52:15 -0800 (PST)
Received: from localhost (net-93-146-37-148.cust.vodafonedsl.it. [93.146.37.148])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c102f7dsm20073668f8f.30.2025.02.05.12.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 12:52:15 -0800 (PST)
Date: Wed, 5 Feb 2025 21:52:14 +0100
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Conor Dooley <conor@kernel.org>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Felix Fietkau <nbd@nbd.name>, Sean Wang <sean.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH net-next 09/13] dt-bindings: net: airoha: Add airoha,npu
 phandle property
Message-ID: <Z6PPfnYV57NmWV6N@lore-desk>
References: <20250205-airoha-en7581-flowtable-offload-v1-0-d362cfa97b01@kernel.org>
 <20250205-airoha-en7581-flowtable-offload-v1-9-d362cfa97b01@kernel.org>
 <20250205-cleaver-evaluator-648c8f0b99bb@spud>
 <Z6O8-dUrLNmvnW1u@lore-desk>
 <20250205-disagree-motive-517efca2b90c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TdZwv0UXFrq47/Kl"
Content-Disposition: inline
In-Reply-To: <20250205-disagree-motive-517efca2b90c@spud>


--TdZwv0UXFrq47/Kl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Wed, Feb 05, 2025 at 08:33:13PM +0100, Lorenzo Bianconi wrote:
> > > On Wed, Feb 05, 2025 at 07:21:28PM +0100, Lorenzo Bianconi wrote:
> > > > Introduce the airoha,npu property for the npu syscon node available=
 on
> > > > EN7581 SoC. The airoha Network Processor Unit (NPU) is used to offl=
oad
> > > > network traffic forwarded between Packet Switch Engine (PSE) ports.
> > > >=20
> > > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > ---
> > > >  Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml | 8 +=
+++++++
> > > >  1 file changed, 8 insertions(+)
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/net/airoha,en7581-et=
h.yaml b/Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml
> > > > index c578637c5826db4bf470a4d01ac6f3133976ae1a..6388afff64e990a2023=
0b0c4e58534aa61f984da 100644
> > > > --- a/Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml
> > > > +++ b/Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml
> > > > @@ -63,6 +63,12 @@ properties:
> > > >    "#size-cells":
> > > >      const: 0
> > > > =20
> > > > +  airoha,npu:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > +    description:
> > > > +      Phandle to the syscon node used to configure the NPU module
> > > > +      used for traffic offloading.
> > >=20
> > > Why do you need a phandle for this, instead of a lookup by compatible?
> > > Do you have multiple instances of this ethernet controller on the
> > > device, that each need to look up a different npu?
> >=20
> > actually not, but looking up via the compatible string has been naked by
> > Krzysztof on a different series [0].
>=20
> Hmm, I disagree with adding phandles that are not needed. I don't agree
> that there's no reuse, if you can treat the phandle identically on a new
> device, in all likelihood, that node should have a fallback to the
> existing one.

honestly I do not have a strong opinion about it, I am fine both ways.

>=20
> That said, the bigger problem in what you link is the ABI break caused by
> requiring the presence of a new node. I'd NAK that patch too.

there is no PCIe support in dts for this device upstream yet, so I guess th=
ere
is no ABI break, right?

Regards,
Lorenzo

>=20
> >=20
> > Regards,
> > Lorenzo
> >=20
> > [0] https://patchwork.kernel.org/project/linux-pci/patch/20250115-en758=
1-pcie-pbus-csr-v1-2-40d8fcb9360f@kernel.org/
> >=20
> > >=20
> > > > +
> > > >  patternProperties:
> > > >    "^ethernet@[1-4]$":
> > > >      type: object
> > > > @@ -132,6 +138,8 @@ examples:
> > > >                       <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
> > > >                       <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> > > > =20
> > > > +        airoha,npu =3D <&npu>;
> > > > +
> > > >          #address-cells =3D <1>;
> > > >          #size-cells =3D <0>;
> > > > =20
> > > >=20
> > > > --=20
> > > > 2.48.1
> > > >=20
> >=20
> >=20
>=20
>=20



--TdZwv0UXFrq47/Kl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZ6PPfgAKCRA6cBh0uS2t
rK1jAQCoE/zFHyySfuiJYIFTCuCPIfmrdKBiqfqc+4K/Y8PULQD/Wjs5AX8by6zR
MX1/3RRgW7eVpvl15xDcvLxNAoGm9w0=
=dcMi
-----END PGP SIGNATURE-----

--TdZwv0UXFrq47/Kl--


