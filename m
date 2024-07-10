Return-Path: <devicetree+bounces-84645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B1092CFE0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 12:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7CC81C23A60
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A72012DDBF;
	Wed, 10 Jul 2024 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="wR10+CUe"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5615FB9B
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720608833; cv=none; b=HxMV0Z8zoUACyP28m8fhnbk9Fxrq917DIZm09MLiKVuRSKxZM1YJmwzJD6VruV3rhbrwBoUXRRwE5kASWRTt9S0gfhIBkBTMBUZ18TkrpMyqVgw3IzELu4uuhHpPGZAW/Mrsh+hqhoANzYRfo46d3MR46mE24pz5UKq77GY3G2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720608833; c=relaxed/simple;
	bh=z3S7iXuvLdKmwJNJBgkyyYhXrPNxTJM16i+VsLjTiV0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DOcG/VxHsk5S26qSUQu/4kWLKRwvk4bIyZTXbkLPNe5BolNVNoIF92m+bbKT5K1H0bvKW613rMJHDm8zS+/dH3sHKwsdQSv1tvLkf65P5LNYBVBUX+ta099QYrKVrxyBZgkNRNk8rZn1W6QbTAwIQ1S0SMLJdp+dcmHjn1qGVdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=wR10+CUe; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720608828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=hrZZahlO9mODR/RGTCTpadzOI8zSbHkN5HJudXp5+wA=;
	b=wR10+CUeh1G/YqcLWsWs+wu8dAlFiABJ1xFHvrmmtauBxH80hF3q9qbV2Qw+nA4KhPGJ+J
	YngWeC4gb+G39V1CgsdQMYE4uiC64h3LJVeunSvHiGQqAbDm4FxA77p8acz5hfFB2URao7
	CS9nbx0ryLQ2SXcOwsvMWElUjozNQ0Ai3Ke80htocg1UCId7fnRyEZG89COWtNR4qKpe49
	eyg1bIHH8KEEnmQ6U/yxPtT2yfAEyWIBm+qW5l59vmA69TUNjRoM8jCJYEQdwpL0OsGKnh
	CYnDgvzVJsAEVNpYV2IzZjgZjEh3+IrB+XEsvuId43mj0fs14+eXdwVHKWDXTA==
X-Envelope-To: p.puschmann@pironex.com
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org,
 Philipp Puschmann <p.puschmann@pironex.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi for
 RK356x
Date: Wed, 10 Jul 2024 12:53:36 +0200
Message-ID: <18705891.xBnrSCm06O@bagend>
Organization: Connecting Knowledge
In-Reply-To: <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
References:
 <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2410067.Ga172O2onJ";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2410067.Ga172O2onJ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
Date: Wed, 10 Jul 2024 12:53:36 +0200
Message-ID: <18705891.xBnrSCm06O@bagend>
Organization: Connecting Knowledge
In-Reply-To: <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
MIME-Version: 1.0

Hi Philipp,

On Wednesday, 10 July 2024 12:20:20 CEST Philipp Puschmann wrote:
> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
> > On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
> >> DMA names are required by of_dma_request_slave_channel function that is
> >> called during uart probe. So to enable DMA for uarts add the names as in
> >> the RK3568 TRM.
> > 
> > Setting it on channels without flow control apparently causes issues. See
> > 
> > https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@
> > cknow.org/
> Ah is see. The only problem that i have is to enable/disable dmas by having
> or not having dma-names properties, where the latter case is followed by
> kernel error messages. That is very counterintuitive.

I forgot to link to my follow up patch where I added the property to
some other Pine64 devices and added a cover letter inviting others to
add it to other boards too if that seemed appropriate:
https://lore.kernel.org/linux-rockchip/20240705163004.29678-2-didi.debian@cknow.org/

Maybe this applies to 'your' board too?

> Maybe a explicit boolean like dma-broken would be better. That could be
> set on dtsi level as default and deleted on board dts if wanted.

That seems to invert the logic, which I believe was considered
the 'wrong' solution:

From https://lore.kernel.org/linux-rockchip/18284546.sWSEgdgrri@diego/
> > > Enabling dma globally can cause some interesting issues, 
> > > have you tested this fully?

Maybe there is a better solution; possibly others will respond too.

> With such a boolean we could also prevent the misleading
> "dma-names property of" error message and
> replace it with a hint that dma is disabled on purpose.

Given that you're now at least the 4th person trying this, I guess
a hint 'somewhere' would be beneficial.
I do not know if the error message itself would be considered misleading
and if something should be done about that.

Cheers,
  Diederik

> >> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
> >> ---
> >> 
> >>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
> >>  1 file changed, 10 insertions(+)
> >> 
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index
> >> d8543b5557ee..4ae40661ca6a
> >> 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
> >> 
> >>  		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
> >>  		clock-names = "baudclk", "apb_pclk";
> >>  		dmas = <&dmac0 0>, <&dmac0 1>;
> >> 
> >> +		dma-names = "tx", "rx";
> >> 
> >>  		pinctrl-0 = <&uart0_xfer>;
> >>  		pinctrl-names = "default";
> >>  		reg-io-width = <4>;
> >> 
> >> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
> >> 
> >>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
> >>  		clock-names = "baudclk", "apb_pclk";
> >>  		dmas = <&dmac0 2>, <&dmac0 3>;
> >> 
> >> +		dma-names = "tx", "rx";
> >> 
> >>  		pinctrl-0 = <&uart1m0_xfer>;
> >>  		pinctrl-names = "default";
> >>  		reg-io-width = <4>;
> >> 
> >> ...


--nextPart2410067.Ga172O2onJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZo5oMAAKCRDXblvOeH7b
bmGoAQC1Ou//DJUMV1dx5LWCq4RXL2V3lrMo06IwIqmJHTl4ZAD9HLVblwDEpbkp
vfPu47lbOfgXiCzgq5osIraQlnRkcw4=
=8R71
-----END PGP SIGNATURE-----

--nextPart2410067.Ga172O2onJ--




