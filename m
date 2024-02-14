Return-Path: <devicetree+bounces-41606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3F98546B4
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 10:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7ACD828A735
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 09:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02F9B168BC;
	Wed, 14 Feb 2024 09:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="J5C6w7kD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6C679DF
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 09:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707904614; cv=none; b=kYVnWk8z/NmClR1EA9GQydr2D34OfZd6g292S3/MkUPyggPjUI6UyrnU7YBiW9D+n/aKHwsyARChA6VFjgS1SdnpegTaN4h9Xefizo6tF7Ek+rnsmefbbLVYagQoCvqN+POBwtgMUcRdsyAhTD1fZ3U0QgW0xr/9668VVOfvovM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707904614; c=relaxed/simple;
	bh=Y+Lh9AV3mUmiTKejBIFChwSSb6V5f7Sy27BLX3cfKKI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LeIFdQ7F6bHHN8a/pkFhAvV4nFSHMIi+kg2ePcyZkkEVfbanTIujOzAROvr3hAb4zwCm17en7HRGC2Hq3gmgUbB4Uk+1s69oRh/Mv/0ZxdIgnh4Lqt2fXlZUEFZWygU5w9CCj4JrUtj/HqYMAEC2Y8fXw7dYI5vrWXKJNWkZ02I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=J5C6w7kD; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707904611; x=1739440611;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=p01ow5ep8fwBVxzZbzIDQJc3KANZTUhx4PNf1N4cNa8=;
  b=J5C6w7kDVb1DlqQBq3HQ5kvxBUpJvuL/5PqSRxyaWB+ZSiJjDp0zDelh
   6iawXJUF9GFnURTO4VjE0k75BN9XlpYXaVxEVioAWzYVGWOKcIY6fZ6x+
   kkwEQeXtqdUgAAyMdsx80W69DUVA7seH9tWZPBbtOzezDEsR2v7ziPQ1q
   gRr2S+2ZGkTDrMbDSk+hfa48ev5UozGqHhft4TURXHjAWXIqXl5W7wKY2
   lvRWQPpy9Ujd1uR9Ias/claaKWuGPkZxpnbnEjdZLV77NMqqxp0eML94P
   paTE3gcUhheaddCbbPpiQXXgJy4cK37KKd8aChWMfinuHmW1HemHaAcmK
   g==;
X-IronPort-AV: E=Sophos;i="6.06,159,1705359600"; 
   d="scan'208";a="35399440"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Feb 2024 10:56:43 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EFAB0280075;
	Wed, 14 Feb 2024 10:56:42 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 1/1] arm64: dts: freescale: tqma9352: Update I2C eeprom compatible
Date: Wed, 14 Feb 2024 10:56:44 +0100
Message-ID: <4899550.31r3eYUQgx@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240212223501.GA2674720-robh@kernel.org>
References: <20240110100526.478771-1-alexander.stein@ew.tq-group.com> <20240212223501.GA2674720-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Rob,

thanks for the feedback.

Am Montag, 12. Februar 2024, 23:35:01 CET schrieb Rob Herring:
> On Wed, Jan 10, 2024 at 11:05:26AM +0100, Alexander Stein wrote:
> > Now that there is a dedicated compatible for the idendification page use
> > that instead. This also allows the removal the size and pagesize
> > properties.
>=20
> This commit message fails to answer Why?

The original DT entry using the regular "atmel,24c64" compatible is just a=
=20
workaround. The size and pagesize properties are added to match that dedica=
ted=20
memory block.

> And fails to mention the ABI break.

Can you elaborate the ABI break?

>=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >=20
> >  arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
> > b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi index
> > f6e422dc2663e..9d2328c185c90 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
> > @@ -122,10 +122,8 @@ eeprom1: eeprom@57 {
> >=20
> >  	/* protectable identification memory (part of M24C64-D @57) */
> >  	eeprom@5f {
> >=20
> > -		compatible =3D "st,24c64", "atmel,24c64";
> > +		compatible =3D "atmel,24c64d-wl";
>=20
> This compatible is not documented. Please add it to schema.

It already is. Please refer to commit 0997ff1fc1436 ("dt-bindings: at24: ad=
d=20
ST M24C64-D Additional Write lockable page").

Thanks,
Alexander

> >  		reg =3D <0x5f>;
> >=20
> > -		size =3D <32>;
> > -		pagesize =3D <32>;
> >=20
> >  		vcc-supply =3D <&reg_v3v3>;
> >  =09
> >  	};


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



