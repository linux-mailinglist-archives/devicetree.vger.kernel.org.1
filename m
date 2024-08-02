Return-Path: <devicetree+bounces-90582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B677945F4A
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 16:19:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD55D1C21A11
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 14:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222CD1E4878;
	Fri,  2 Aug 2024 14:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="NJuqZbOX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta0.migadu.com (out-176.mta0.migadu.com [91.218.175.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823F21E486D
	for <devicetree@vger.kernel.org>; Fri,  2 Aug 2024 14:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722608384; cv=none; b=GRLyS76KgW5sx3TgtQt5NIMaa9cJkzftuNrNTiKjg4fhpLuniMTAhJeU1rEo6ubwNAcDuyo7un2W+wESRfr8Xt4OQdzWi5IndMtv+JhVEGF/gWZLIf7trHfgfgLVQk9mPwNKmE2JSsPrmdyn+HosdG6uq5+1+0R0S86tE0c3/jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722608384; c=relaxed/simple;
	bh=9AwOV1xY/6bcSKEojkWV2tXrTkkDBQgOu11D93FEBVM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b622OBpIk0OkoqoeOq+mNkZW551kdeaojkEKwrbkEcF2NLIlthPO+PdBqUBm3n+QMYHpAPZcAGV8I53UbkIqwopeLpE7fK0FltgCjkiibb0teHFDbQde6+xbFQwXcRChArIjK23Ov8hSJQfbBR+LDVU9hMh2WyOMr64HKYxT30M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=NJuqZbOX; arc=none smtp.client-ip=91.218.175.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1722608378;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NfmldAyPR0XS48riCwB2dyl03w/kFlpZkf4R1WTO7yk=;
	b=NJuqZbOXLW4UblnHStnGE1rVjE2kzlOoGbBtrKYam1IIqQxsI6I/ZPgSRwV11dT6S8h6Yv
	SuUJxaG5YfSEzswIIOIokMgbdqOXNs23+4PZoeZq2m2bc5i1p4a8e6m5W6kIrbgOeffsk5
	zr9BR02pr7O3w21rwS+goSJNcNpHzBvmmc8IzZe6Ws9BoIWrNu/OuBHtCrA12K+VYsTwqS
	WijHz7QRSTvw36HGUJalH0273WEz8uf1bs/cYZ/yVbEHH3HsM5rFnBQpmBf0gg46o8vDp0
	z43sxROcueSczs/UIc8QxzsWPJgtIsi9I4lM8khoBUG5/SaEAyB/LKNW0QkBwA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>,
 "Bjoern A. Zeeb" <bzeeb-lists@lists.zabbadoz.net>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
Date: Fri, 02 Aug 2024 16:19:20 +0200
Message-ID: <30814906.IcDJEyoAGT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
References: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1797573.PpvvgvNjxp";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart1797573.PpvvgvNjxp
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
Date: Fri, 02 Aug 2024 16:19:20 +0200
Message-ID: <30814906.IcDJEyoAGT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
References: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
MIME-Version: 1.0

On Friday, 2 August 2024 15:57:26 CEST Bjoern A. Zeeb wrote:
> Uhm... I am confused now, I copy-pasted the emmc block from this file:
> > https://github.com/friendlyarm/uboot-rockchip/blob/nanopi4-v2017.09/arch/a
> > rm/dts/rk3328-nanopi-r2.dts#L7
> > 
> > The header does not have the "OR MIT" in there, it's just
> > "SPDX-License-Identifier:     GPL-2.0+" which is what I also copied
> > over, together with the (c) part.
> > 
> > The source which I was using is described in the commit message:
> > 
> > The eMMC configuration for the DTS has been extracted and copied from
> > rk3328-nanopi-r2.dts, v2017.09 branch from the friendlyarm/uboot-rockchip
> > repository.
> > 
> > Maybe you looked at a different branch? Shall I still add the "OR
> > MIT" or leave it as in the original file which I copied it from?
> 
> That explains also why there's no sdmmc_ext/sdio bits...
> 
> See here for more:
> https://github.com/friendlyarm/kernel-rockchip/blob/nanopi-r2-v6.1.y/arch/ar
> m64/boot/dts/rockchip/rk3328-nanopi-r2-rev24.dts
> 
> My current believe is that rockchip/rk3328.dtsi needs the additional
>         sdmmc_ext: mmc@ff5f0000

A commit with that was recently accepted:
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v6.12-armsoc/dts64&id=82e3aaae388199a0aff33e5371db307b3274f77a
--nextPart1797573.PpvvgvNjxp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZqzq6AAKCRDXblvOeH7b
biILAP48t26oOx22f21UmUwwHg1k6celldSi0dI+CPz8B7AmMQD7BgbYS2CJGBsK
2++Y+ZsKZRgv6T6/vGPW+gNk40e/8wg=
=6GGj
-----END PGP SIGNATURE-----

--nextPart1797573.PpvvgvNjxp--




