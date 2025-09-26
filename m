Return-Path: <devicetree+bounces-221694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6A4BA2056
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 02:03:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC89F564847
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 00:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A01A634;
	Fri, 26 Sep 2025 00:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="FYCus1px"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5233138DD8
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758845003; cv=none; b=P+MMRBr+lwfeV6U9+j80Wgap1PGPbJbavNXh/B2E6wwFitBMklG+c/LPZzcr3lRhP5YaU5QqFt3YgSAAepx/J9qBBdwvTbVypEL1vWN948VqC/hqukuLS2WEPAsC819qA8htvF9yMZH6a5UwJOuVu1lFkY4WjQnNifSabux+akc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758845003; c=relaxed/simple;
	bh=9mHFEfQYv/5KqDpKkLAaumQRTiCYWeL5W2te1oLXQ10=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ImDs9mfrqjHsEkPqDdwobLRBZJzszJk5WnS213D/KjpLD5W3btzBBnqVolm+zoSx2juQCpWBuBX/0zHOMYyOOXQJcQ8G3WXcRQoFe6Dc3THbm0Hgy75atkY/W2gGBOcYWk0Ddue8bXaMZEiskqF2GGoNJPbLywCSvFpTt2Hi2i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=FYCus1px; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1758844996;
	bh=/mW/nMqfIINnTqRPHIbmcypX5XTwPU5MVHd9Yju9OeY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=FYCus1pxhNLWLD/s3NS2zTUyXoADRdH2hShYJBRBfargpAOJpnBB4SjkFx96o2w8i
	 CmuumwgXmE4O7bdW8BZvI1qk3BtyC1zICoEm34d5ItCtrMF0q7xThq0Sh0u4Z/icSp
	 1fij/JVX/FxqsvJQonnitwj0InMJ1Arzn3YQir+V+mOZoooe3OKIbK9DXCOwchqwyx
	 X3RmnHlyLz0FjOpiXOYy+a2b0BvnAX8stH84qWwHNPZzm298MSkGrCUKJW7g3SojEh
	 V6Bj6SrqdarzH8dI7igYL03t4cTV49jA+WKn4JjPJ9WDaY/MDS5VVD89B4NIcX73VO
	 HKu/8v8QjDSmg==
Received: from [192.168.68.113] (unknown [180.150.112.213])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id BE2BC64743;
	Fri, 26 Sep 2025 08:03:15 +0800 (AWST)
Message-ID: <6d117ac3297628ee6e315894460d348647b68c7f.camel@codeconstruct.com.au>
Subject: Re: [PATCH v7 6/7] ARM: dts: aspeed: Add Balcones system
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org
Date: Fri, 26 Sep 2025 09:33:11 +0930
In-Reply-To: <20250922175804.31679-7-eajames@linux.ibm.com>
References: <20250922175804.31679-1-eajames@linux.ibm.com>
	 <20250922175804.31679-7-eajames@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-09-22 at 12:58 -0500, Eddie James wrote:
> The Balcones system is similar to Bonnell but with a POWER11 processor.
> Like POWER10, the POWER11 is a dual-chip module, so a dual chip FSI
> tree is needed. Therefore, split up the quad chip FSI tree.
>=20
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> =C2=A0.../dts/aspeed/aspeed-bmc-ibm-balcones.dts=C2=A0=C2=A0=C2=A0 | 609 =
++++++++++++++

Looking at Balcones specifically, there's still an immediate concern:

   /home/andrew/src/kernel.org/linux/origin/build.arm.aspeed_g5/arch/arm/bo=
ot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: pressure-sensor@76 (infineon,dps=
310): '#io-channel-cells' does not match any of the regexes: '^pinctrl-[0-9=
]+$'
           from schema $id: http://devicetree.org/schemas/trivial-devices.y=
aml#

On the whole though it's much cleaner than other IBM devicetrees, just
the DTSI warnings remain. I'd appreciate it if you have some time for
cleanups to Rainier, Everest and Bonnell, the number of warnings is
really quite large :(

Andrew

