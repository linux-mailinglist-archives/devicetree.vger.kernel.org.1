Return-Path: <devicetree+bounces-143420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 498B0A29B80
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 21:55:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A4F418853D4
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 20:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7996221A42C;
	Wed,  5 Feb 2025 20:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="W/qPpydq"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9A9217645
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 20:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738788891; cv=none; b=XZpRkrK+kjL4bmxtUQOw6PMr+tmRZthgaWD/U7s2RT4Z6DWFSuR/lQuBS9mdtsDlHgfqS0cLGEbuFVXRwTzssrHOy7VfwPCPQXUw0B/SHH5sleyuAmLMPWpfnCsQ/Dg6O4AEAQORn4sSicgI20Mu7ljv7fF3Ab+yb7nXIVnMBmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738788891; c=relaxed/simple;
	bh=i/w1cEGC36ogQof8pFCgKEYbTLjR2GIWiZHyACWkKIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s8SmHhHVDYPvuy1MmyBAkGsk/NgMKxoUP2bsTjQWohomm+JwlRkyY0vRP2EwefPsUTJ1cHSeq/PUWDFrD3szB6FIyHlLM4LfODQ0o/keCA8jd5eV6h3sR4oCPRoPdNvCvoW2WiPGwazge7vlhTg0/VkKfReF0JfuhC4WcDjUr0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=W/qPpydq; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738788888;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b2E6EqCjJdTc9pXlLAPxEAvaCluiUsLvN+c2bM+BtDc=;
	b=W/qPpydq4G6wkKcVdp9Szbm0PWP+pJ3ewA3QrHuV02wsHrog2/54PN2SVJoh3UDf8OINp/
	pM1zyfc60+dx2LhRxDPXfYjGNJSxhbCStbs1MyKvrSqzlHqZMsk8XjtJBqEdTozv1Vw/7g
	yrkUYSrc15ueYuNuFmgIIb6b87Fa378=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-428-gT7P-SnrMsCj1srCc5kd1Q-1; Wed, 05 Feb 2025 15:54:46 -0500
X-MC-Unique: gT7P-SnrMsCj1srCc5kd1Q-1
X-Mimecast-MFC-AGG-ID: gT7P-SnrMsCj1srCc5kd1Q
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b9f0bc7123so38053885a.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 12:54:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738788886; x=1739393686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b2E6EqCjJdTc9pXlLAPxEAvaCluiUsLvN+c2bM+BtDc=;
        b=nJ3ZyRg1OYL8WsFXIKgsVKeGGdfPkdj5jxms8uLAg7a5tgnWPTZ9QzlAH/IeYk1F/w
         IeDWNDx3WAaeWa72gboviTJQ1nSQMcBo9g006JBbhqAdj8ifMd+wONPfMQH1DRc5YB0q
         OV5MsAkXPrzgePuLs3xo56E+iLfcLY2fMSznKWbGk/Qkla9G0qkWSrUf0HLuKEV5Ag5K
         ezsfSkVsIAIQBqMqj7xuhKy1VfOAcqDLZR8LFVWSI8rAdCIvpfE6MMArqs0xOeTFe+kn
         Brq5Di7wbKXMF4jNYAsGYx+aqvPYP3qGFSIgbQeKK9VfgYUtYgEti9UnlkpYEk687V07
         xRxg==
X-Forwarded-Encrypted: i=1; AJvYcCUzLpfWMtjNAKHFmBM7HcbtT6RRaZBW9DTCuj9jBFaVvEukCXr+WOiRLcery21rzVmOZ8XeIJcMzIFx@vger.kernel.org
X-Gm-Message-State: AOJu0YyC4K9XcbFWqR1693yunALLbOw+BoxWBrTfwaQ/cpEUkDSJ2ndP
	zRR2k8IcPnfSLKnTqrLr+zaLFRwqdTRdnmEKXBLtYe9vf5syPT+MpDzjwIcSTBMM3Hzn6a/jJz1
	Wh/CbjD5B5JH0HmQ5w5iUBAofRorzgJmthuuDJp4vB/o/ClHMCErIq9W1u+8=
X-Gm-Gg: ASbGnctPfdp6tZlqsoay42zYcINXQESIlV1wEbAk+imxcblI2XvCiVidQd96Ex4Fqr3
	aYar469/rRfSiqCbL9Xd/QYdJFgVrAgZkZ3cjX6apV6nwWLHy8hdyq7DWQfmFVJx6rwlwKx6kF7
	pKrP8RE6S5xpvqzj4xnzUAJ6dKjNv0vEvJVhCgIFwhyJ8WDu/Sy19750MRWOiEVvp4RCGDJZ8YI
	O2VwbtOKh5E4vnJt+MJ40WsoHWE0rssGDhIBirSt8UxS3MlMIY03Z5SSgXu6WTuwCKspLCofLEE
	HatajJ4KQEYgIYNhNLJljXZxFxcLiE0mHBx0fAItkFAidYc9FBwk
X-Received: by 2002:a05:620a:480d:b0:7b6:ece3:827f with SMTP id af79cd13be357-7c039f98778mr611211585a.2.1738788885690;
        Wed, 05 Feb 2025 12:54:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqvgtKVpsc+rS7SVSnttPiL04IrBDNEZqrwmOlro+8yw3ItpHBVE54BhNmqAJuuXIVYJEoqg==
X-Received: by 2002:a05:620a:480d:b0:7b6:ece3:827f with SMTP id af79cd13be357-7c039f98778mr611209185a.2.1738788885351;
        Wed, 05 Feb 2025 12:54:45 -0800 (PST)
Received: from localhost (net-93-146-37-148.cust.vodafonedsl.it. [93.146.37.148])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c00a90cbe0sm789268385a.102.2025.02.05.12.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 12:54:44 -0800 (PST)
Date: Wed, 5 Feb 2025 21:54:43 +0100
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
Message-ID: <Z6PQEzvvCdDKQSnl@lore-desk>
References: <20250205-airoha-en7581-flowtable-offload-v1-0-d362cfa97b01@kernel.org>
 <20250205-airoha-en7581-flowtable-offload-v1-9-d362cfa97b01@kernel.org>
 <20250205-cleaver-evaluator-648c8f0b99bb@spud>
 <Z6O8-dUrLNmvnW1u@lore-desk>
 <20250205-disagree-motive-517efca2b90c@spud>
 <20250205-patronage-finisher-bbfbdb5b7dbc@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nVc7ncatnUQ3E5G5"
Content-Disposition: inline
In-Reply-To: <20250205-patronage-finisher-bbfbdb5b7dbc@spud>


--nVc7ncatnUQ3E5G5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Wed, Feb 05, 2025 at 08:01:26PM +0000, Conor Dooley wrote:
> > On Wed, Feb 05, 2025 at 08:33:13PM +0100, Lorenzo Bianconi wrote:
> > > > On Wed, Feb 05, 2025 at 07:21:28PM +0100, Lorenzo Bianconi wrote:
> > > > > Introduce the airoha,npu property for the npu syscon node availab=
le on
> > > > > EN7581 SoC. The airoha Network Processor Unit (NPU) is used to of=
fload
> > > > > network traffic forwarded between Packet Switch Engine (PSE) port=
s.
> > > > >=20
> > > > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml | 8=
 ++++++++
> > > > >  1 file changed, 8 insertions(+)
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/net/airoha,en7581-=
eth.yaml b/Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml
> > > > > index c578637c5826db4bf470a4d01ac6f3133976ae1a..6388afff64e990a20=
230b0c4e58534aa61f984da 100644
> > > > > --- a/Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml
> > > > > +++ b/Documentation/devicetree/bindings/net/airoha,en7581-eth.yaml
> > > > > @@ -63,6 +63,12 @@ properties:
> > > > >    "#size-cells":
> > > > >      const: 0
> > > > > =20
> > > > > +  airoha,npu:
> > > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > > +    description:
> > > > > +      Phandle to the syscon node used to configure the NPU module
> > > > > +      used for traffic offloading.
> > > >=20
> > > > Why do you need a phandle for this, instead of a lookup by compatib=
le?
> > > > Do you have multiple instances of this ethernet controller on the
> > > > device, that each need to look up a different npu?
> > >=20
> > > actually not, but looking up via the compatible string has been naked=
 by
> > > Krzysztof on a different series [0].
> >=20
> > Hmm, I disagree with adding phandles that are not needed. I don't agree
> > that there's no reuse, if you can treat the phandle identically on a new
> > device, in all likelihood, that node should have a fallback to the
> > existing one.
>=20
> Also, where is the binding for this npu? It looks like a brand-new
> module that you're adding a driver for in this series and a phandle to
> the node for here but I see no binding for it.

The driver loads the NPU node just as syscon so I have not added the binding
for it to the series. I will add it in v2.

Regards,
Lorenzo

>=20
> >=20
> > That said, the bigger problem in what you link is the ABI break caused =
by
> > requiring the presence of a new node. I'd NAK that patch too.
> >=20
> > >=20
> > > Regards,
> > > Lorenzo
> > >=20
> > > [0] https://patchwork.kernel.org/project/linux-pci/patch/20250115-en7=
581-pcie-pbus-csr-v1-2-40d8fcb9360f@kernel.org/
> > >=20
> > > >=20
> > > > > +
> > > > >  patternProperties:
> > > > >    "^ethernet@[1-4]$":
> > > > >      type: object
> > > > > @@ -132,6 +138,8 @@ examples:
> > > > >                       <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
> > > > >                       <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> > > > > =20
> > > > > +        airoha,npu =3D <&npu>;
> > > > > +
> > > > >          #address-cells =3D <1>;
> > > > >          #size-cells =3D <0>;
> > > > > =20
> > > > >=20
> > > > > --=20
> > > > > 2.48.1
> > > > >=20
> > >=20
> > >=20
> >=20
> >=20
>=20
>=20



--nVc7ncatnUQ3E5G5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZ6PQEwAKCRA6cBh0uS2t
rIFNAQDYK7XMZyacl2c7uItRM6rmAPpzk3U9AIBiEJn5pKJd0AEAl5e/LTt29oKb
lI44AdZkjYncKBrhc7jzCjrBpodudwo=
=GbHn
-----END PGP SIGNATURE-----

--nVc7ncatnUQ3E5G5--


