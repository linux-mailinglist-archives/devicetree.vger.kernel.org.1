Return-Path: <devicetree+bounces-248135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0C2CCF0F7
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F02393011ED1
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EAA52EBB90;
	Fri, 19 Dec 2025 08:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="lUMQ2vYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701922E7F3E
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766134586; cv=pass; b=giUyXrEm/HNjavJmnUCKcGqOKmqU5pI/SyfrEVFoR7c52MdBrq7HVYHMBpM+7zXeAAt5nFmVpV0PoCx1GIQzkUuBSWcVpskfV1VkII+eKqHfcT8DxoRP3k0VWJ2CJ5pixE/mYiMpC5uCdUCE236C9WeJtHo/3JlXM3AcchaBorQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766134586; c=relaxed/simple;
	bh=p3q8028oGlh4nUIcsvZ5k6M9thwqXIeyBKTiW1fadvs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NExtCGsOLqG+inlswXOBA4pB+QJhx+1puEvoriVeWLI4UztGs+qL0qLSCS0X2pxo4O0SU2UYTzyP1eQDOEzdqOq4reBOpJvqlQKW/wYslWp7ncpj18chVJR9CluVOh+5kqO8EaDar9a8easiVbkME24oDJBO3MOR5Ji1PwcFf9g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=lUMQ2vYU; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Lj43oXTOV6UJEnGkyony8860gGIeke9NpD8hIRJrkD4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766134540;
 b=dUrIDWNl8W8wLkbIpl9Ly3pfaURsLTaxVCfbCBUi/UEXPLMELvHzVxPDhQ7RqU7lbORD4jzd
 LaRgcSRQgfV2CLQIe/IdcOqRwsQzgfA845yE2SreDaC2b24FvlDvfaSnuMSbu1vWnddQce2wMeL
 s6kKfsmav2aYdBxD48zUdMlgTeVKDFLeRiqPjm+oPVHDgRsWS9XebMGQS4hwKDi5fcxCRvkvphc
 MksFUKiLArHJs3wuWVRmmjk8oPBG0zhAYvDgRq+Oww3D6xK+3B+nl6htqhDk25/zVs99ELJ2F5z
 jaIFSqMdLxwkz+ttzQ9U8IIJ+SdzOW2dN+xbyEWkP1OVQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766134540;
 b=VeOxm+NEEIArzWQ9DXUJ50+4PotZPZBEUBjVF4YrOwNCGjQlFk3X/+E9ifWFRSdRuAJpNI5S
 v5vl6tlYt//LVtq+dusaJjg4b4p+n37GvBcGht64Tk+rQxxocG5JktdTbXKqCrHOPl4Iw0q28LV
 HEmagY6kWBtf0PBpV2Z0hyirA07JsS2jitLdjOhnJ3Fmt3scr+K9l5Ljb3CYFEqIN7ZctuiyRgC
 /GWZTNUaoUIf66sTus5Vjt1fbH6Ti8MT+yZBwiv6sKZsCOOWwWect25RhxfULqFKFsRIjwq1qY/
 /xNOPFd1TG9wKY28FaPiZr6sS3yTf3l4KtMlWs+k84H2g==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Fri, 19 Dec 2025 09:55:40 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D2D14A4134F;
	Fri, 19 Dec 2025 09:55:32 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>,
 Roger Quadros <rogerq@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Marek Vasut <marex@denx.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-usb@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject:
 Re: [PATCH 2/6] dt-bindings: usb: cdns,usb3: support USB devices in DT
Date: Fri, 19 Dec 2025 09:55:31 +0100
Message-ID: <4732491.5fSG56mABF@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251218152058.1521806-3-alexander.stein@ew.tq-group.com>
References:
 <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
 <20251218152058.1521806-3-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart7530110.MhkbZ0Pkbq";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4dXhFf09TXz4MPFj
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:fc1b38920f4cdcdd93076212dbcb4bf0
X-cloud-security:scantime:2.397
DKIM-Signature: a=rsa-sha256;
 bh=Lj43oXTOV6UJEnGkyony8860gGIeke9NpD8hIRJrkD4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766134539; v=1;
 b=lUMQ2vYU9R1kQEOa5jDg4phHfMa/SWwRQOLbpCK+KlrtRoqwZY5K/dkVU50t08zlOv0DhEwN
 pog1wWsLzxQ8eHzX1lBMphmzsE6s5itdRnJgeGowkt0ANe3nYqCSQ6cwmN6aRR2tVtKH2jE1+b+
 thj0vxXJ57XCumBnkua799ESb0mBCVLHw0obZ+8ZzBgBjkEglVv/ipbAYaeUuYuxKtyHmOO3sFV
 SsqagPA4yXvxcj6+r4++2qdZ/oM4B9D8TEvunkJUbwMTqfyJrp5Sr30wImsUTCFb7u9KgCj+XY9
 lKj44on0lD7g24v/pVfB/LHZuw9LoJKyaKivlP6ScJ7OQ==

--nextPart7530110.MhkbZ0Pkbq
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Alexander Stein <alexander.stein@ew.tq-group.com>
Date: Fri, 19 Dec 2025 09:55:31 +0100
Message-ID: <4732491.5fSG56mABF@steina-w>
Organization: TQ-Systems GmbH
MIME-Version: 1.0

Am Donnerstag, 18. Dezember 2025, 16:20:49 CET schrieb Alexander Stein:
> Reference usb-hxci.yaml in host mode in order to support on-board USB
> hubs.
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  Documentation/devicetree/bindings/usb/cdns,usb3.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/usb/cdns,usb3.yaml b/Docum=
entation/devicetree/bindings/usb/cdns,usb3.yaml
> index f454ddd9bbaa6..1f7f0adc3b1ed 100644
> --- a/Documentation/devicetree/bindings/usb/cdns,usb3.yaml
> +++ b/Documentation/devicetree/bindings/usb/cdns,usb3.yaml
> @@ -85,6 +85,17 @@ required:
> =20
>  allOf:
>    - $ref: usb-drd.yaml#
> +  - if:
> +      properties:
> +        dr_mode:
> +          const: peripheral
> +
> +      required:
> +        - dr_mode
> +    then:
> +      $ref: usb.yaml#
> +    else:
> +      $ref: usb-xhci.yaml#
> =20
>  unevaluatedProperties: false
> =20
>=20

This one is actually independent of the rest in this series and can be
picked on it's own, especially as I won't be able to work on the board
support until February. I just wanted to give some context / usage.

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/
--nextPart7530110.MhkbZ0Pkbq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEByESxqszIvkmWRwbaS+g2M0Z/iUFAmlFEwMACgkQaS+g2M0Z
/iUbXAgAhl79VULQpYWRy4jkIxMY+8oVkk+teNBcCC5xgQy+udpq222+0AUAuHMt
bTeVvx5CZg4BTRrKkhWp+8uESiqCMmddsGZU/5VYApPaiymyWDQGJqx2JbmpJbWU
2bYnSnvzY5pT3ETFlIpmxDchfAqhj/m961P82Tz+fqPDd/PQQvYdrntnp45JUwyo
2JisUxSCi/K+hBveATGMjO2hB5rQGhSccTOiE5VBa7PuEo7Jh8nHl0HRtEabNAUK
QdC+6TE2aj7V4Xq+sCzGNDgMkFPRV2W9gndo6NslrDR9o7QJOzNuk+pMCtVpeAMv
yBGSEMscs3ucjqkcdiJF97ui1BcEHw==
=tHiP
-----END PGP SIGNATURE-----

--nextPart7530110.MhkbZ0Pkbq--




