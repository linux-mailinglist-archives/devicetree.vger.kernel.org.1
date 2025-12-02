Return-Path: <devicetree+bounces-243701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E013C9B5B3
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 12:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C10B4342171
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 11:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0AB43101B6;
	Tue,  2 Dec 2025 11:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="EFg1BuQq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay90-hz2.antispameurope.com (mx-relay90-hz2.antispameurope.com [94.100.136.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B95247289
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 11:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.190
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764676147; cv=pass; b=W4s8XQFzb1AEx7Xtph3crIkX/CzjgVJT8egR0IFDxV33zeT+YSgq1GuQxVxR/FiE+eYMJM5zYgveTJJ3QBuN6kw3gDWp9te1ZFgO2D3RNoFU/kXrh+xLMOnvVPaNup69CIlGLfwT08BBSHte5nu6URnpkEEBAw4wb0k1iLJKLtQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764676147; c=relaxed/simple;
	bh=rOAoEjyVa1jEQA2BYDgvgv+WUqVYhkDMhJXVPZnWjU8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K//MKLjETjzfieOs3XeRjt/qGwvk/+pGrbn+5aeBJBFaRpgSTtyhXDdXPTz8j3wwkODMSF5ToHAVZfiZnrlw7L9xgC35cPesfdxoEuOl8xfpcBDJbAHtHZGtpuHmY9UxG/HJB612/i2oHyTC9jnbvaQEwbRIRN7kPSEXb/N8xhk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=EFg1BuQq; arc=pass smtp.client-ip=94.100.136.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate90-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=cPzBCQ/cVroc4yKwXafobMdff4xUZ/bh1Bgq00vprqk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764676101;
 b=EjA/EcZ9lkB9MhOWczZac4RSttEq43NzS/6YX7+tBQ3k/JoDRTLNw6gCAJkfFGfUNfCyxmKS
 FTUK0DC8KhOtf/JWJQwV32uTBwueYYc4BULTHzPEH0vgXWOCpnHO+7CVwqPxSNLUNEY29hFhsnF
 QbIACn0GmJCj4Q8Kk+04rBsG4CbpVQ5253vUN5ZZnR638GSsjglDO8pv3csBf2OVgetn83P1aZY
 ASl4A3Wvq09RPp6OAXTb2w0uZVF0oVEwSl7UVdvkTHto1yhosECtpQKU4Gm2QrnpDFanK0AToKb
 q+N1YrdB3LiXt9c1GDRHgvrFLCMAb9s0oBuGa+KdvF8zg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764676101;
 b=KeCrQIjPV0ROcGdgjoPhX/RF+zcF6FDC/VfddE+lrRI/bT+LZ9zcnyeccyuUAScZ0lH1FU0+
 hYCfSGjHzLS6TblXNNheQTSj15cuafHvt5wSowLv3UP9H35YKbYJfk3fRdc2nohRDnsHcr8vTjY
 Yp5Y0DIx5IGS+hx8oCi9yz7njZEoB6B/5lIc2SmRk0Wh7EfxdFzLe0n2fOKmQw02J32815S6Hdg
 ud3Fh1E/QMmHRSIvonRoWOfLUq+XUBggUcJ3ZGH9E/9UqyjCIETSoHdssrZHA71fF9xTiJ5zCKo
 n1LJbn16yMeB1LNzJoOll4BxATTjTLk0NvU8SCWG+wf8Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay90-hz2.antispameurope.com;
 Tue, 02 Dec 2025 12:48:21 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id BAAF7A4128F;
	Tue,  2 Dec 2025 12:48:15 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 frank.li@nxp.com, Sherry Sun <sherry.sun@nxp.com>
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
Subject:
 Re: [PATCH] arm64: dts: imx8qm-ss-dma: correct the dma channels of lpuart
Date: Tue, 02 Dec 2025 12:48:15 +0100
Message-ID: <2395053.ElGaqSPkdT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251202111638.3553-1-sherry.sun@nxp.com>
References: <20251202111638.3553-1-sherry.sun@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay90-hz2.antispameurope.com with 4dLJtm3MJzzWycw
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:199991314bca0e7504113f70cfa02bc4
X-cloud-security:scantime:1.766
DKIM-Signature: a=rsa-sha256;
 bh=cPzBCQ/cVroc4yKwXafobMdff4xUZ/bh1Bgq00vprqk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764676101; v=1;
 b=EFg1BuQqAdGkuzbE/qO1LKisuO5q2Zi1JrYMr7DYOQ6bhIIb+MC3NqKf3CT86q837iUJIpqo
 auAEb2/BB/SLosg5SLm7JsUi7GvxoTRXwFhKZ+F7K414SVtpdf8JGCLIjH8rbDuGgAswXax1uQG
 /CMnWou5jb9G0z+kuwwjK2dX5tg7aWxvXZ/Z5loDs7VUF+sE6H61LCz8tr8xuaRCYxBI6CIFVb5
 0CXyekHmlUPoQjtzPYRuU7V3Z/95vlPCXGVsCNQPj4waiiCPADB0RTB61FZwNrNK5/bMSZIYtnn
 8DN1inQ66Y4Gc1rPZAj6FqA9OKw/filPEVgr87qjhSPzQ==

Hi,

Am Dienstag, 2. Dezember 2025, 12:16:38 CET schrieb Sherry Sun:
> The commit 616effc0272b5 ("arm64: dts: imx8: Fix lpuart DMA channel
> order") swap uart rx and tx channel at common imx8-ss-dma.dtsi. But miss
> update imx8qm-ss-dma.dtsi.
>=20
> The commit 5a8e9b022e569 ("arm64: dts: imx8qm-ss-dma: Pass lpuart
> dma-names") just simple add dma-names as binding doc requirement.
>=20
> Correct lpuart0 - lpuart3 dma rx and tx channels, and use defines for
> the FSL_EDMA_RX flag.
>=20
> Fixes: 616effc0272b5 ("arm64: dts: imx8: Fix lpuart DMA channel order")

I'm wondering if this is actually a fix for 5a8e9b022e569 ("arm64: dts:
imx8qm-ss-dma: Pass lpuart dma-names") instead. 616effc0272b5 just
focuses on the common parts. But I don't have a strong opinion here.

Thanks and best regards,
Alexander

> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi b/arch/arm6=
4/boot/dts/freescale/imx8qm-ss-dma.dtsi
> index 5f24850bf322..974e193f8dcb 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> @@ -172,25 +172,25 @@ &flexcan3 {
> =20
>  &lpuart0 {
>  	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> -	dmas =3D <&edma2 13 0 0>, <&edma2 12 0 1>;
> +	dmas =3D <&edma2 12 0 FSL_EDMA_RX>, <&edma2 13 0 0>;
>  	dma-names =3D "rx","tx";
>  };
> =20
>  &lpuart1 {
>  	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> -	dmas =3D <&edma2 15 0 0>, <&edma2 14 0 1>;
> +	dmas =3D <&edma2 14 0 FSL_EDMA_RX>, <&edma2 15 0 0>;
>  	dma-names =3D "rx","tx";
>  };
> =20
>  &lpuart2 {
>  	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> -	dmas =3D <&edma2 17 0 0>, <&edma2 16 0 1>;
> +	dmas =3D <&edma2 16 0 FSL_EDMA_RX>, <&edma2 17 0 0>;
>  	dma-names =3D "rx","tx";
>  };
> =20
>  &lpuart3 {
>  	compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> -	dmas =3D <&edma2 19 0 0>, <&edma2 18 0 1>;
> +	dmas =3D <&edma2 18 0 FSL_EDMA_RX>, <&edma2 19 0 0>;
>  	dma-names =3D "rx","tx";
>  };
> =20
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



