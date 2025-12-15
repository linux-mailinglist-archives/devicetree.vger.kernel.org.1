Return-Path: <devicetree+bounces-246811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C393CC007A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:49:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9017A300925A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0CA328B76;
	Mon, 15 Dec 2025 21:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="qtsMobJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D1A30AD11;
	Mon, 15 Dec 2025 21:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765835284; cv=none; b=aeIzjoIdIHgPwi6HG+w43O8TTPvg6MOTthWaKHLKmZ3nhqqnNsLcOPeoTnYmSkdZI1fXsXDJifccJrQAYkFOQmU/+yw8AwsUfxveogvxaoBeCLSC/o4O6/KetqJVABHiTOy1+vUjoohOJesd3Ez4EN3sUjutD0A9DddoyJYDwE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765835284; c=relaxed/simple;
	bh=jGNY3vhgOcACpFtEGs3d2xDYluReNIwWHSPKQTjCp6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ixby0VVtARMtafqZCEUbn55wniPBNyKezZgMGwZeX1ZqdlP+Cjl5D8E8rWzmsUsigbHPHP5HXnrhKBjlCOst54j/C559vTEHDDJq4ibais2gIWho7i7pd4DYGmysCFQyl5wte7YizSRaCcx5CXB/34+uBdfcTK3YpI95FcYjVXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=qtsMobJ8; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OI1MY4kOzgLcU2iIDea7bQ2I0yRp8F1R+dwEE1LToL8=; b=qtsMobJ81loav8R/ZLTl3g8U1R
	L2p+F7xhPDfocdnt+ksIho08Wf/uA8kiKZoc9oe+GmwipM8X4W/cOGhVhXb/TxLCdS44J3cbq3HdL
	wU9DU4mrnDwLovhiHhVDAlziOkk30fvlqhYskGn2HIwN5ExSSokSJRP959789FdLPOf5MInF5i6JA
	fbIlsb6GrPBhrRg0a+9V3ZMz1ut2RGdejRQR89FtifAaFIMNRahTtxwRJRA1gii+Bb+Z+aW+5V6Kw
	DiRYPdNFKgnsMT+CcXTTfeZcDxTX3GMWr0x6C9zKuYQujZ+jAK+i5wS4Y/H1WOhhD4AEyturWb5eC
	oBnGTi2Q==;
Received: from i53875adc.versanet.de ([83.135.90.220] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vVGQ8-0006sg-2B; Mon, 15 Dec 2025 22:47:56 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To:
 Martin =?UTF-8?B?SG9sb3Zza8O9IChQcm9iYWJseSBOb3RoaW5nIHMuci5vLiAp?=
 <mh@probably.group>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
Date: Mon, 15 Dec 2025 22:47:55 +0100
Message-ID: <2080394.PIDvDuAF1L@diego>
In-Reply-To: <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
References:
 <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
 <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Montag, 15. Dezember 2025, 14:51:03 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Heiko Stuebner:
>=20
> On Fri, 12 Dec 2025 17:23:35 +0100, "Martin Holovsk=C3=BD (Probably Nothi=
ng s.r.o. )" wrote:
> > The Radxa Rock 5T board features two RTL8125B 2.5GbE Ethernet controlle=
rs
> > connected via PCIe lanes pcie2x1l0 (fe170000) and pcie2x1l2 (fe190000).
> > Currently only one interface is functional because the PCIe controller
> > nodes lack the necessary reset GPIO configuration.
> >=20
> > Without the reset-gpios property, the RTL8125B PHYs remain in reset sta=
te
> > and are not enumerated by the PCIe bus. This results in only one Ethern=
et
> > interface being detected, or none at all depending on U-Boot initializa=
tion.
> >=20
> > [...]
>=20
> Applied, thanks!
>=20
> [1/1] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
>       commit: 96029ffeccf677b1e4baa98f30909a83a485b6d7
>=20
> I've resorted both the pcie phandles as well as the pinctrl entries
> pcie2-0 comes before pcie2-1 etc :-) .

and dropped again.

Please resend this patch with a proper Signed-off-by line, as stated
by the developers certificate of origin.

Also, what is this probably nothing s.r.o?

Heiko



