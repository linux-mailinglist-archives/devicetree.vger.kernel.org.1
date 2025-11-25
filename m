Return-Path: <devicetree+bounces-241880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E337C83E11
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 49757341AD1
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E3A2D3231;
	Tue, 25 Nov 2025 08:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="fTmIb4Ah"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283D3137C52;
	Tue, 25 Nov 2025 08:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764057735; cv=pass; b=WiyIDpbGJheiNahpcDlO7vzp7EV2eFkbFUajmf8S//Fc/HB0i9Owwd970mLu2F5Gp6UZUOxivjuzZX1ubtNkgni1I1zPwqIKYiSDLz1Q5gz4cBImn2GbU68P0ZqK46P57A5L6oA1njkbhkH7UH8qDGml9yFCd/vb1nEuxQJIQA4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764057735; c=relaxed/simple;
	bh=dNu1Q9j8paX7KuRXYdJHSK/CvB3o9koatthHjbPyQZ0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PhgsRtckVf8ZpoGAdOyXhqsi9it3ue8Mj4Qqyn1NWuUblWx7bYBau9qBy3L/6xaCO1r+Cm61bcbOTiw/THSF5w5XF+CecFmDi6MN0Lsm40gI9ZjGCSQEVx7k/t1N638R2F752qRzRP+kGovNoahaGyqOseho8K11+YFwYGF5Avc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=fTmIb4Ah; arc=pass smtp.client-ip=136.143.184.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1764057713; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lA9ZLipFr65F2u+DlZUYR/6ABCel3n59hm0sehjb/EZfebJheHBWCjwjDZD4vb9vazYElibktltxT2ev4vWfPYMgTkawYNnJ3tvDtvPtH/K/sqS6xkSlg6FN39MQme70r5hjDUYmwJoTLc/U1KGrhXdOZ9dPgfBaYNu3+zmD1hY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1764057713; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=dNu1Q9j8paX7KuRXYdJHSK/CvB3o9koatthHjbPyQZ0=; 
	b=b2mX9exKxA4bG2e1U1YqCP563s0ByItb6u79jgyUyWAYGF0+67a5VPvXDqtcMob/rUnAlV36fPfnZsZKnkWyUR652sDCSmMXT914gYucJzRBah4M7HHygXflPU7PyTmi/AcwEyhEU27/4yjBCrIVr8abw2v2XST55NAo3DkwxWo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764057713;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=dNu1Q9j8paX7KuRXYdJHSK/CvB3o9koatthHjbPyQZ0=;
	b=fTmIb4AhD2LZwtcCA6w3FJEjsk0nqaTcjcc00GawwqPDcxg1pDIJK8c1+/h7j/3G
	VZjIeEMedSiohkUgv26hlDY4uiulcoIKBg0KtF1vvSlAq5LxSYNPg6kT1Rn0CfgX9uC
	A2rNXrV0cnPvBf0JMkRuia+0fwi2CMg7e5FmxEGOHDgX11yOqx6gCbF9JfoivwdxBi0
	L57xCJSfQtYh58S9AM+jMMlmek84EMvlMPmIOsVDQw3cUmDaSEY056/dytsamj2mMPX
	jPRMPx4h+bwbhxhF4WHqPPCTGg79mgSdNdPmeuw81MxRKwx+wPwxVCDeujZwlNvcCeI
	EmfKicyifQ==
Received: by mx.zohomail.com with SMTPS id 1764057707789534.7662587743201;
	Tue, 25 Nov 2025 00:01:47 -0800 (PST)
Message-ID: <0a2104faee332ee143b5499c18aea3625971156c.camel@icenowy.me>
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
Date: Tue, 25 Nov 2025 16:01:40 +0800
In-Reply-To: <489e9d44-fac6-4aa8-b094-ef20196e392b@kernel.org>
References: <20251123225059.49665-1-e@freeshell.de>
	 <20251123225059.49665-2-e@freeshell.de>
	 <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
	 <20251124-state-campsite-3e7788a495c1@spud>
	 <0e851ca0-1f56-437d-ae14-094c114d3b77@freeshell.de>
	 <dc48fa76-0a08-4c9d-a3d7-724eb255aff8@kernel.org>
	 <ff1f0e6b95150896136ab31ce13e0a2c7a3a5fe3.camel@icenowy.me>
	 <489e9d44-fac6-4aa8-b094-ef20196e392b@kernel.org>
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

=E5=9C=A8 2025-11-25=E6=98=9F=E6=9C=9F=E4=BA=8C=E7=9A=84 08:48 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On 25/11/2025 08:33, Icenowy Zheng wrote:
> > =E5=9C=A8 2025-11-25=E6=98=9F=E6=9C=9F=E4=BA=8C=E7=9A=84 08:28 +0100=EF=
=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> > > On 24/11/2025 22:59, E Shattow wrote:
> > > >=20
> > > > On 11/24/25 05:22, Conor Dooley wrote:
> > > > > On Mon, Nov 24, 2025 at 08:28:10AM +0100, Krzysztof Kozlowski
> > > > > wrote:
> > > > > > On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
> > > > > > > From: Icenowy Zheng <uwu@icenowy.me>
> > > > > > >=20
> > > > > > > Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based
> > > > > > > board.
> > > > > > >=20
> > > > > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > > > > Signed-off-by: E Shattow <e@freeshell.de>
> > > > > >=20
> > > > > > <form letter>
> > > > > > This is a friendly reminder during the review process.
> > > > > >=20
> > > > > > It looks like you received a tag and forgot to add it.
> > > > >=20
> > > > > It's from me, don't resubmit just to add it since it'll be me
> > > > > applying
> > > > > anyway.
> > > > >=20
> > > >=20
> > > > Hi Conor,
> > > >=20
> > > > Okay. Yes I'd dropped the tag since the commit message is
> > > > appreciably
> > > > different, and you would be handling it again anyways. Thanks!
> > > > And
> > > > thank
> > > > you Krzysztof for the reminder -E
> > >=20
> > >=20
> > > And where did you explain that you dropped the tag because of
> > > that?
> > > Please read the form letter carefully.
> >=20
> > Well I think there's no clear definition of "the patch has changed
> > substantially" here.
> >=20
> > E may think for this such-short patch, the commit message weighs a
> > lot
> > and the change to it is significant to the patch (e.g. making the
> > patch
> > not clear enough).
>=20
> You still did not bother to read what we expect. I do not discuss if
> this changed significantly or not, although it is obvious that it did
> not change and tag should have been retained.
>=20
> Look again:
> <QUOTE>
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/s=
ubmitting-patches.rst#L577
>=20
> If a tag was not added on purpose, please state why and what changed.
> </QUOTE>
>=20
> Where did you explain that?

Sure, I agree that explaination of this should be delivered.

>=20
>=20
> Best regards,
> Krzysztof


