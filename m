Return-Path: <devicetree+bounces-246435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 23873CBCCD6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD23B3016B9F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 07:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2A832D7F3;
	Mon, 15 Dec 2025 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="RlXU+Blr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F6432D426
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765783943; cv=pass; b=u2f7k0Z/Sh2p+j5KMpYDhQXge4Thqk9WbV9oD1BSGfNC09vghDNofYrwAyjoSimAlnqlSCQTUUXHYnoyqFN2Y+fV8aAP6w4A6HiPbyNC8tWTc/G7V8AJtECc6sOGMC/j+xzUwoqKwO97Jne2Ij7BkJDFP9hdoTG7D1Z/4nd4+1k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765783943; c=relaxed/simple;
	bh=LxwfukKEtaEzF6hRFU4Ia46NIWYQyy6ZORVSfsThYJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FaNO8ZPefyCBeNItFV0IFSKS+CfEyKkqQHbBzHngZ4VXoTWZDfvlH39oHurxUVhKF+opOhls2iVxqF8q2jSp5A9VEUvifkwU13+1tNZwrR06JwrYBmXvd13sJGc66JMhDMbHGPB8eViDCWsj0BiLWSkx1w4dDvXu0U3f8S1BBAY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=RlXU+Blr; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=M/3NQ1ZFlz91mAO+kwIn+vkLcFkrkUM1n9uVSSYrHYk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765783914;
 b=feRQ6BFRm7Sgn/FKF3xK7uilwhBX/x/sQ321Rv/U9FUPnc2HiySOpSUt/RnJu7dJrYwS6ZlJ
 qriZLDwfZRo7YC99PC8jbH+fH1+0//BpwkJAjIHhJ/EqoPFYJ2dfAkpcpPtv53tI0EvIORKHjPT
 nkVu4pge2vPp+ghQT+44ZCheOyr4plPeRImbMoOQ/Wojma1533l5OF0rJtVncv5OQA8YQ7kTpKd
 T5HTvTgEAcSoFakWLRBukm9+vuWscJeE1w87n0H81CMYOytcBCGIUkYFn5/Uf4cP6N4oziM3F++
 ccOSmFb4Lo/hUz0J03L4sQuqDdIwpPvkBv2Ah8pOubm2g==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765783914;
 b=PHnDMhPBmoViDJYc7rJiD98pnqfPqvIASTqoHWlbVI0X1gywd6CYeBYf8UcGwxqQfE4FFnj3
 6i1b5i75ZgukZiregS2f5KxaBIyiY9yznicesmRqG0LbmYSUfNhVAHpkUUbSvwP6ZXRxg8VlbDd
 uXK4G6jocPYrAx0OvgPj5EEG1PzABFDGBogsY+SkCFnaa2Kv50DSDNxtiLkIwi6/VRi4w5KqtM5
 CNeGMwJOo4DA7P8rLm099XW8Os7r0aMHflJWUJH190Z5Tq1RGMPEY9oEAJ/Cm2Ln/c4ziwuZ8+X
 KPApa7dTQ6hsCxyPWN9TciSCJc0UexWR8ovWhFtK/skOg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Mon, 15 Dec 2025 08:31:54 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 55309220CD2;
	Mon, 15 Dec 2025 08:31:48 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 1/2] dt-bindings: power: fsl,imx-gpc: Document address-cells
Date: Mon, 15 Dec 2025 08:31:47 +0100
Message-ID: <12807757.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <aTxKqPqGdiHllLo6@lizhi-Precision-Tower-5810>
References:
 <20251212085902.103507-1-alexander.stein@ew.tq-group.com>
 <aTxKqPqGdiHllLo6@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5957622.DvuYhMxLoT";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4dVBZs00wwz1kNkWZ
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:fbd490092935c18b4ac3a78bf74f2ef7
X-cloud-security:scantime:1.933
DKIM-Signature: a=rsa-sha256;
 bh=M/3NQ1ZFlz91mAO+kwIn+vkLcFkrkUM1n9uVSSYrHYk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765783913; v=1;
 b=RlXU+BlrltVu5mFLAoM1IDZAkLvSiqrnNBpSyndDZ3UUAJepeXJjSZZyf/8pqGH01ZNAZqBe
 lsoZi0VAFTrtUNA6ch5nLEMi7t5bg/1RYvL3feQY1T61JyXFvcdu6asGqVvQx7qW/K8MD66nd/k
 +6dN9Pl0ZbyztDeDXJU+VihHgl+CMcTxOWc/gKAowm1OunaJzyCeSyq1c4omPGkA69pwGqtIEgz
 R9DSrAbwtahveXlXGpqeHTVTDbWtgO9CVtbyT305mUceadTjGw0ceSuxyhewSmwfuRbVCu5M/sL
 UW5u+OMRFNZgQMVoKuhei8YZeInO9koXOs/dmT+VI8WZw==

--nextPart5957622.DvuYhMxLoT
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.li@nxp.com>
Date: Mon, 15 Dec 2025 08:31:47 +0100
Message-ID: <12807757.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <aTxKqPqGdiHllLo6@lizhi-Precision-Tower-5810>
MIME-Version: 1.0

Hi,

Am Freitag, 12. Dezember 2025, 18:02:32 CET schrieb Frank Li:
> On Fri, Dec 12, 2025 at 09:58:59AM +0100, Alexander Stein wrote:
> > The GPC power controller is an interrupt controllers and can be referen=
ced
> > in interrupt-map properties, e.g. PCIe controller, thus the node should
> > have address-cells property.
> >
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>=20
> Strange, there are not #address-cells property for gic if there are not
> ITS node. gic is widely used.
>=20
> Does gic node also missed #address-cells?

Yes and no.
Yes: see commit faf183a02ed6b ("arm64: dts: imx8mp: Add default GIC address=
 cells")
No: AFAICS this is only necessary if an interrupt-controller is referenced
from within interrupt-map. But on imx6qdl.dtsi 'intc' (GIC) is not used tha=
t way.

Best regards,
Alexander

>=20
> Frank
>=20
> > ---
> >  Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml b=
/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
> > index 9de3fe73c1eb6..d49a5130b87c7 100644
> > --- a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
> > +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
> > @@ -38,6 +38,9 @@ properties:
> >    reg:
> >      maxItems: 1
> >
> > +  "#address-cells":
> > +    const: 0
> > +
> >    interrupts:
> >      maxItems: 1
> >
> > --
> > 2.43.0
> >
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/
--nextPart5957622.DvuYhMxLoT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEByESxqszIvkmWRwbaS+g2M0Z/iUFAmk/uWMACgkQaS+g2M0Z
/iVnFQgAtjzww7A+HPJWD5saX8fzUaqaTzrhRCNP2SsX9ckRMLEBGbKr6E63A/2c
Bu2V3Z5tl0ICUOp9Av2WYKt0OcBOUNTn/mkFDNimQmNEreAj/03AVtiSc9ttg3l2
1ceKi5iEoZk3F3ndOaPrYVvr1Nn3fdtnJzg+VAuAMi5oHLUrz5orL8MVSeH99xSZ
YvTZoMwnITg0+84bwfDykq84sszqZqnHQD9JiCJjElJOOyUvbdQshTU5BV3IGSPP
TGH/6eg0nxo47gT9auWk7VL8uVmYDVWvWf6C5hEAqwJ7WY8R7Gz78CFEuf4d8xzv
0i8/vBDEL3ye3nFT4lYFAje/rlLZbQ==
=oPa7
-----END PGP SIGNATURE-----

--nextPart5957622.DvuYhMxLoT--




