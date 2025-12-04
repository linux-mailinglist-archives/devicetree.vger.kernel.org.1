Return-Path: <devicetree+bounces-244239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBDFCA2AC2
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 08:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0153D3020CD1
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 07:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7FB307AF7;
	Thu,  4 Dec 2025 07:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="mGQEAr6f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay112-hz1.antispameurope.com (mx-relay112-hz1.antispameurope.com [94.100.132.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93499217F27
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 07:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.104
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764834307; cv=pass; b=QDJofhaeS1edTi7JeJNqfo4jKHSQVQ5YtqCbQTHV5BildCJeoSfVdBFlYXjC50ushL84J8s5pcUrXMvmpA9Rc/b+YhlH1OL8/TOevJUxk64bKaZprfbGwlq0OgcGD65su4bkqk165nKwAINRv+Y6YPmhKyvNIlzKSKdvwLbZG9w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764834307; c=relaxed/simple;
	bh=eej6b0TfxmlBYfjPDhc+XoRDZI1GX55SmDZpmTtfsF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NQNJrOT6kkan5bCwHTeubqsIVewBnc6bcbChQ04rlwL2apUPGsvAXGApi2F/hfkHh5NAhL7rg/RsZExwRw6jtuZA65F5sNq7fY9EiQIaikqnU4FjrSEEU9PLRsNj3XiMNnL4RhjNwYKzjgUP0uxmC2ynGyFUo+PYfijgBxcctIA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=mGQEAr6f; arc=pass smtp.client-ip=94.100.132.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate112-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=nRKpe5m4uI+URjqo+MF4NUpskf9/M3efMzxetxiqdyo=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764834260;
 b=JqNkVhd6GqdlP12RoPKzpyLbmsdtAwt2zAx4bq0y3QUxpnaID3ILgfJBzrppsHt7WB4aICDf
 7WHlSErPwUux1BC963fd95tq1l2g9onTSc5GcRm8McyzKa/FQWLTUCruRPveuyEk4H2jIAuERVf
 OwIJ/45VjwEAKI/Iwmh6ouKYZHCfKUSUY24UDlAoR3rODPq20WLv4aNlzkCWrXsJQztcJj7JIUg
 qLlUOrMfnq8aPRr/6RA5XKbbsSNy88HL3w+nzWioiWoUGH9knnX7vjxosiWa98qq9PuAvV2Vao3
 TO6A8xDFhgZOFCyX5xOcE/TmfqvFnKhgFRGgL87oKBG6w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764834260;
 b=eSaSfjxTGomYqmqLc+cHm7kcdwpRYwsz92GDHM83BQ4UmFVeZ7LwuK64FozECCYeX+FcpDkc
 LZNIlAxEc6EET1FyFm3nKggh4jo7pcJ6JKm06oGHiOUUSQBO/DS72W6b5tyYxfoIXdFg8WYIPmu
 RLyZIut2YDCVQOBFf9OFHhcmlwBEpLywVlF4ooty1Egoob8UVUW5qqqr6NvQ471ySZyVjU+r3Zh
 rScZfBke5rbGkinKgOZ13XuxOMGOeBHTrOPZX/mt1DkN4CzimRUgR85MTKaqEHGNCpfoP9lQzQw
 nSZdfVUqI9C9QCwBPYJmH3+xyIDDd+C9ObsVbdbeyaHeQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay112-hz1.antispameurope.com;
 Thu, 04 Dec 2025 08:44:20 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id ABE6CA4134F;
	Thu,  4 Dec 2025 08:44:13 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 frank.li@nxp.com, Sherry Sun <sherry.sun@nxp.com>
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
Subject:
 Re: [PATCH V2] arm64: dts: imx8qm-ss-dma: correct the dma channels of lpuart
Date: Thu, 04 Dec 2025 08:44:12 +0100
Message-ID: <3023939.e9J7NaK4W3@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251203015956.116364-1-sherry.sun@nxp.com>
References: <20251203015956.116364-1-sherry.sun@nxp.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay112-hz1.antispameurope.com with 4dMRNG3FgKzwTWn
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:073b527d389ddc73e181e67b15c075cb
X-cloud-security:scantime:2.175
DKIM-Signature: a=rsa-sha256;
 bh=nRKpe5m4uI+URjqo+MF4NUpskf9/M3efMzxetxiqdyo=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764834259; v=1;
 b=mGQEAr6fcOIcaZZmQVLa6z8pslSge/Q8Gl4f0RQ/nIvm7sHOhX/0FfhCAlB4rWam0M3Bw2/i
 0unFCE7emTbwJ1oqpAIMmiIY/M1EsizL4H2a4zWJzo3Jotm6u+DvuqLFwgoqsmJH3jt+2vVo5fq
 KU0FfD+N6DMg1fcE0sG45QEr6QvULPMrBRK4qTv/tbf12GRLbRZcU0OOkqdlKebhMvLFJdRPL1U
 RyKeKyjtNTSC+XosbE8wdkhftlfMTkN/0ms9Nd0FsJthgWdW9AsASt565t2dTXTZtbLhndEne5M
 lBBBjVJ8oFnUsqaZ7agpkMeLzXcXvydEYmfSiaoImLO3Q==

Hi,

Am Mittwoch, 3. Dezember 2025, 02:59:56 CET schrieb Sherry Sun:
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
> Fixes: 5a8e9b022e56 ("arm64: dts: imx8qm-ss-dma: Pass lpuart dma-names")
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
> Changes in V2:
> 1. Correct the fixes commit as Frank and Alexander suggested.
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



