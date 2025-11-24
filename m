Return-Path: <devicetree+bounces-241752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9F7C81F44
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 18:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A2D2D4E55C9
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 17:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F3E12C028C;
	Mon, 24 Nov 2025 17:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="bUM4wSpa"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o15.zoho.com (sender3-op-o15.zoho.com [136.143.184.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8FF23C4FA;
	Mon, 24 Nov 2025 17:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764006218; cv=pass; b=SxkJd8Wj3E7jxBwe0xXfp2WcdMJegTuDUpFOYIgLasHWtDbppyIoeRXqv5JZcCHE8jYK3oQ6ldaEa2MT4amYRHQPj8BY9GJdBSrwruKZ0yGlAg5XZHZecwa5UBod7ydNwdBjmohrEAqJYgJ+34g7f3H/pnh9z/Vww3XuLxUQLgo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764006218; c=relaxed/simple;
	bh=yHr20q7gZmlTABXvQBRAafWej6u9u+HA61XCNH7omz8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UGPX/XFW5OdqNdQ27nLdkVylpyfD4ITgBglu2NSOPFdgfMp6ZWeb4VIAGUOKEvsrYNXMpZHvuEPRD9bvUFEJfhbA08YBb+t97QG+5aaI2lD6Q/n8+rOn8sH0yFhqN8UDdGTGY4Pg2WYX1IR1Q1Xd6/auzc9HrTmCUbOjbmNppM4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=bUM4wSpa; arc=pass smtp.client-ip=136.143.184.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1764006172; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mRcQ5ve7JHZHinstf9NI2Oj36spdkoBiQzNiEcGdBBjdZ86V2mfBVZEWDFczaRGnMEvPE1oJW0pluSaWkt59CpnjujmiyYWgHh9fR6yVHcUYc9V3CMp8RaOmxRlF9MRBHwryTq5lBww1LDX9xTYVwt5e+MIKxMN20xDh6GpYUtw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1764006172; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=yHr20q7gZmlTABXvQBRAafWej6u9u+HA61XCNH7omz8=; 
	b=baFxRBuUVTDioclaCIGhUX48wGAmFUYVSBbGGhkQ7trMtubU2EkTRg4Vh5/WxqTEjj3nCeAgH2m/3rdbiM6socREZcKA9sFNNLW2l36qqqT8ADuPnvClw0Il4uQc2issZYtk/oj+eyDboP7JbRz3SbhjQPtF2dzdqRZ5QGmm5bc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764006172;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=yHr20q7gZmlTABXvQBRAafWej6u9u+HA61XCNH7omz8=;
	b=bUM4wSpao8IwcIBLAsnlh+VQiF6ZdfyOs1a4mlAFAh+2RXMmh6zPsyZEjEU0crZD
	4L6oahLGTkkjji5UMRujwKTU4YQcKZW5vJoIuScQOSR+nGrw9hn1+gBS8Nd2M1XNZqn
	TEBnSmNaO8R9lG1hcua83TyNOCKlkuJpS7PxmiPBT0Hfw+sZ8oZGzajlSzIbKpvntQ0
	2u5wgOz+NecxFhAJOz+EIqjvJm+pEympFizvUGj97Hn287baDkzPDDAj2QKJbPuzfgs
	L+CV+OarPZq91gseemZ9Nf4G0JyDmqeRDhi0kPcr/TOQvCiXdgd+ajUoKfMIuFwMwsJ
	bM1dP5C5ng==
Received: by mx.zohomail.com with SMTPS id 1764006170521583.7022266150989;
	Mon, 24 Nov 2025 09:42:50 -0800 (PST)
Message-ID: <920b6864f30777640ebaceee1808e96978e6161a.camel@icenowy.me>
Subject: Re: [PATCH v3 2/9] dt-bindings: display: add verisilicon,dc
From: Icenowy Zheng <uwu@icenowy.me>
To: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Drew Fustini <fustini@kernel.org>, Guo Ren
 <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Michal Wilczynski
 <m.wilczynski@samsung.com>, Han Gao <rabenda.cn@gmail.com>, Yao Zi
 <ziyao@disroot.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org
Date: Tue, 25 Nov 2025 01:42:41 +0800
In-Reply-To: <ee1e4f94-ff9a-4227-b705-74a7eb806ff0@kernel.org>
References: <20251124105226.2860845-1-uwu@icenowy.me>
	 <20251124105226.2860845-3-uwu@icenowy.me>
	 <d4cfe8bb-5ca2-40a9-bfe0-96e7ded5586c@kernel.org>
	 <f7bbb57180866a0674fc1d72d4bd3279c7b1c1e9.camel@icenowy.me>
	 <c26dabfb-c4af-428b-a1d4-d626f37ff559@kernel.org>
	 <f944f0b28f62233b1874e0f00c0a130d71845417.camel@icenowy.me>
	 <6ceb41bc-0597-4ea5-84be-51f53e3bc2d8@kernel.org>
	 <20251124-said-overvalue-8a8f49d6c99d@spud>
	 <477bbcbe-17d9-40ae-be10-be4fd107687e@kernel.org>
	 <20251124-pulp-pound-a2b6d749dcfc@spud>
	 <390caea1-bc75-4cde-bd6d-9bc15a12f32d@kernel.org>
	 <a8089e458bdf6fbad45cd6be838b4cf75396918f.camel@icenowy.me>
	 <ee1e4f94-ff9a-4227-b705-74a7eb806ff0@kernel.org>
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

=E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 18:40 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On 24/11/2025 16:25, Icenowy Zheng wrote:
> > =E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 13:31 +0100=EF=
=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> > > On 24/11/2025 13:20, Conor Dooley wrote:
> > > > On Mon, Nov 24, 2025 at 01:08:00PM +0100, Krzysztof Kozlowski
> > > > wrote:
> > > > > On 24/11/2025 13:05, Conor Dooley wrote:
> > > > > >=20
> > > > > > I don't really get what the fuss is with the dual signoff,
> > > > > > what's the
> > > > > > point having both when they represent the same person?
> > > > > > Pretty
> > > > > > sure it
> > > > > > was you (Krzysztof) and Arnd that told me not to both doing
> > > > > > the
> > > > > > double
> > > > > > signoff.
> > > > >=20
> > > > > I do not object having or not having dual signed off HERE.
> > > > >=20
> > > > > I never said that. Just like I never said "From" has to be
> > > > > changed.
> > > >=20
> > > > I didn't say you objected to both being there. *I* am saying
> > > > that
> > > > it is
> > >=20
> > > Ah, sure. Yes, if both identities work I would propose to skip
> > > second
> > > SoB. But I also stopped objecting of having two identities
> > > listed, as
> > > long as they are correct.
> >=20
> > Well it's unfortunate that some policy now requires me to list the
> > second identity.
>=20
> No policy asked you...

Local policy here, sigh...

>=20
> >=20
> > Should I resend the whole patchset with the ISCAS mail?
>=20
> You can, it probably would solve the issue, unless you change the
> author, but why you cannot do what I asked at the beginning - set
> correct order of SoBs, so the @icenowy.me being the last?

Well because previous revisions of the patch comes with only
@icenowy.me SoB, and I think SoB is append-only...

>=20
>=20
> Best regards,
> Krzysztof


