Return-Path: <devicetree+bounces-241867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA17C83BBF
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ADD2E34B093
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 07:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B000F277C9D;
	Tue, 25 Nov 2025 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="aZvCGmY+"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C701718EB0;
	Tue, 25 Nov 2025 07:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764056073; cv=pass; b=YjuZwmdwMtBcjXXp6KAFaPTEX40DtrD8Z55PmlAt9dPplOXODlR2mhhCtWBCSIBK+Y1SGPdBKcingcRLhRaQuC3nipi1Mii16kjjjxU4sHiNAMFEpclGqpcph/97uFRO+kongfNExsaNpNZF8PJvaV90O8iQ6SJYXd7fy8Bbhe0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764056073; c=relaxed/simple;
	bh=VhxW/aH83Wbs1YIQrF8h2VKL0WHJNFnb6XQ0X84LpmU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lM25rmG/+H1EFee2R7KyiptmyLGyb8b2SCLmASEjLLmb/WigwLyLuCEy+YGGdpx47EA6/wfSTDrCyw26xxQbYZJuSEPP2UG62HqoIetNyMjvCYTBP+ZO9TD8D0tiAzNmXAxsoqIRqbr2r9hAcbXTQBo0hbWKalbEFu6TKQ15moQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=aZvCGmY+; arc=pass smtp.client-ip=136.143.184.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1764056045; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=io7FGzkr9UJTn7mfg7AXgQtapqXhkODcvdWAoCa0MkiCHMmizcR0TcoOphanBaAR++I5xoEOMdzDkr7H2V6KmjeeR/k9kjNLaWzZeXE16COA8mXSOVjq50texMO17Q7grqLNBP4w8aYA4aQj1tMrjxDT5B9UJYSOgwDPr9kStRQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1764056045; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VhxW/aH83Wbs1YIQrF8h2VKL0WHJNFnb6XQ0X84LpmU=; 
	b=ip0jgTdN7iV4GH++e2Z4skAyrG5XHf4uIDu9c5kMDArTItrv6tOuw3ZIFb8FBKnbpPtwiyr2vWOo6iefsnq+dlOWg+6nuSUM/xPM2wQXD3kWYQg+q4mhrvgs4lG1lMcGxp0K2Z+Y3lYqSnerwpZvF+sjuvbQGfEfsLaxn8HY3n4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764056045;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=VhxW/aH83Wbs1YIQrF8h2VKL0WHJNFnb6XQ0X84LpmU=;
	b=aZvCGmY+/XLiqKhBAs8zhOVVKsqW4/bxprVhYzFNBSNgE8rCqrtDM2rzCLkOL1gn
	5FgD/V+gOI2EabKYweic+TDFWeGmCoEFUNYk26rNOBCDCUN662ytwAPedyyqE2rh+Km
	yzZeV7mVV7HLYKjthfih/Qm6+eEM7VKSyvL8FwlwFphoifengAR7/aKJMe7c92Vmtty
	+g2qBP6FVbMRfj3L6L6UTgjpKJ3wt8Ot9+zifgBQyFZaAiFcgeK81oOH/icD1SNkwez
	rPreQNGQzS6veWC2gl670FYrLZvtn9tUro7f112xqgHxjJ0uDkgXYq+ekeCIVURxP7Q
	WxngIx1XNw==
Received: by mx.zohomail.com with SMTPS id 176405604352736.10638278907402;
	Mon, 24 Nov 2025 23:34:03 -0800 (PST)
Message-ID: <ff1f0e6b95150896136ab31ce13e0a2c7a3a5fe3.camel@icenowy.me>
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: starfive: add
 xunlong,orangepi-rv
From: Icenowy Zheng <uwu@icenowy.me>
To: Krzysztof Kozlowski <krzk@kernel.org>, E Shattow <e@freeshell.de>, Conor
	Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, Palmer
 Dabbelt <palmer@dabbelt.com>,  Albert Ou <aou@eecs.berkeley.edu>, Alexandre
 Ghiti <alex@ghiti.fr>, Michael Zhu <michael.zhu@starfivetech.com>, Drew
 Fustini <drew@beagleboard.org>,  linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org,  devicetree@vger.kernel.org
Date: Tue, 25 Nov 2025 15:33:56 +0800
In-Reply-To: <dc48fa76-0a08-4c9d-a3d7-724eb255aff8@kernel.org>
References: <20251123225059.49665-1-e@freeshell.de>
	 <20251123225059.49665-2-e@freeshell.de>
	 <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
	 <20251124-state-campsite-3e7788a495c1@spud>
	 <0e851ca0-1f56-437d-ae14-094c114d3b77@freeshell.de>
	 <dc48fa76-0a08-4c9d-a3d7-724eb255aff8@kernel.org>
Organization: Anthon Open-Source Community
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External

=E5=9C=A8 2025-11-25=E6=98=9F=E6=9C=9F=E4=BA=8C=E7=9A=84 08:28 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On 24/11/2025 22:59, E Shattow wrote:
> >=20
> > On 11/24/25 05:22, Conor Dooley wrote:
> > > On Mon, Nov 24, 2025 at 08:28:10AM +0100, Krzysztof Kozlowski
> > > wrote:
> > > > On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
> > > > > From: Icenowy Zheng <uwu@icenowy.me>
> > > > >=20
> > > > > Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based
> > > > > board.
> > > > >=20
> > > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > > Signed-off-by: E Shattow <e@freeshell.de>
> > > >=20
> > > > <form letter>
> > > > This is a friendly reminder during the review process.
> > > >=20
> > > > It looks like you received a tag and forgot to add it.
> > >=20
> > > It's from me, don't resubmit just to add it since it'll be me
> > > applying
> > > anyway.
> > >=20
> >=20
> > Hi Conor,
> >=20
> > Okay. Yes I'd dropped the tag since the commit message is
> > appreciably
> > different, and you would be handling it again anyways. Thanks! And
> > thank
> > you Krzysztof for the reminder -E
>=20
>=20
> And where did you explain that you dropped the tag because of that?
> Please read the form letter carefully.

Well I think there's no clear definition of "the patch has changed
substantially" here.

E may think for this such-short patch, the commit message weighs a lot
and the change to it is significant to the patch (e.g. making the patch
not clear enough).

>=20
> Best regards,
> Krzysztof


