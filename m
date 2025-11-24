Return-Path: <devicetree+bounces-241626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F41F3C80258
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:14:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 260A64E4847
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD512FC897;
	Mon, 24 Nov 2025 11:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="B0sWsxM/"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585F82FCBE3;
	Mon, 24 Nov 2025 11:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982830; cv=pass; b=cNE34ruDUYgIsHy1x6P/urBa7htbgBDd3YUKIEw6rPHOC26gzAGSEI3es9/1mCY9v8vbPYLUMxu56zavc/7TBqdFjQLnw9W6zRWwjgn70f7+aB2UA73zy+cXw1SA2CY1C/T064imSaVWqjKxpXnuWkKYCwsfP5vxf5kYPPZ4X4M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982830; c=relaxed/simple;
	bh=kQ085CdL/cJtJYr9M6H5J/53z45mKWu6dK2xiNId5tk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HAUZlaMbRh3/LqeAb3vDid/URFGv/jr47xnDJD8s1XcCUi/nevEe5o3McezSMWKs+Ltf+8rfZksD3ViepzMj1o4RYkRuHLyMaJm71YFv4RORGvCjVHL/lu4gEywRjSgwQH3laEt5Yw26rXSPOMgNgCuF41IvnZp+PCl3P7VNbRA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=B0sWsxM/; arc=pass smtp.client-ip=136.143.184.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763982799; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RXGG0wCXRZGCfnQpgXH0Vx2WyGF6c+U5heQ+bWZ3q8Co5IXMzXrW4Uxxyxwfp6V5TizMEc/YXEOWg6hU9fNFUetJPRnzRnFQIhct9hMQb1kiRsTsKTeLL5M7ppv6HyBqP8gUcOeOqvVN+okredYDssoeOmojnjdC94aQQNnq4Ig=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763982799; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=kQ085CdL/cJtJYr9M6H5J/53z45mKWu6dK2xiNId5tk=; 
	b=VXWiLCSBRdi6gflVB8NgPxyNcDQznN1btwvqYESjn6jz185SMNDRnIFFKZUTEPm0OcyAbkaHjbW7Wl/4A7INVV77fl9Ty3IeWCoUoAFvQZI7ybKwUXdX5chYk4agUCicwTT9L5QGDFOowIxYIxud0d96wX20WfAseLirkJMTGyk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763982799;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=kQ085CdL/cJtJYr9M6H5J/53z45mKWu6dK2xiNId5tk=;
	b=B0sWsxM/aVwxTiYJV9XdMFQIAvRtdS0pGiTePgWC50Lo5oK4HkV3BNVE3f11DBLd
	FZGvmJ9NCvnvn4c1nape5lWE979Ax1zDs9u3EPAD4r9YLdBNJxcFCI85VGFP6JvEOzb
	xdCPag1Zi4uug6JaqF/bZwKPbkO7RqpApURhXWIWXV7igS/CwKiB37C8xUqikWhqXH+
	7UzSzjenu2IFM0LNe1vasnAnB7mtDmMtcV+kOzMnWDOpskipbQz4gtmwGe6J2ObIWwd
	2LSb2VbiN7H3LsCWc/fOdGmE7I3z/wQiZ+TOp5sDvJ9UyrWPEz5kdlDdxagYDaieKxp
	b8D5K/m9Mg==
Received: by mx.zohomail.com with SMTPS id 1763982796648406.6136890367899;
	Mon, 24 Nov 2025 03:13:16 -0800 (PST)
Message-ID: <f944f0b28f62233b1874e0f00c0a130d71845417.camel@icenowy.me>
Subject: Re: [PATCH v3 2/9] dt-bindings: display: add verisilicon,dc
From: Icenowy Zheng <uwu@icenowy.me>
To: Krzysztof Kozlowski <krzk@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Drew
 Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei
 <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner
 <heiko@sntech.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>,  Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Michal
 Wilczynski <m.wilczynski@samsung.com>
Cc: Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Date: Mon, 24 Nov 2025 19:13:08 +0800
In-Reply-To: <c26dabfb-c4af-428b-a1d4-d626f37ff559@kernel.org>
References: <20251124105226.2860845-1-uwu@icenowy.me>
	 <20251124105226.2860845-3-uwu@icenowy.me>
	 <d4cfe8bb-5ca2-40a9-bfe0-96e7ded5586c@kernel.org>
	 <f7bbb57180866a0674fc1d72d4bd3279c7b1c1e9.camel@icenowy.me>
	 <c26dabfb-c4af-428b-a1d4-d626f37ff559@kernel.org>
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

=E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 12:09 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On 24/11/2025 12:04, Icenowy Zheng wrote:
> > =E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 12:01 +0100=EF=
=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> > > On 24/11/2025 11:52, Icenowy Zheng wrote:
> > > > Verisilicon has a series of display controllers prefixed with
> > > > DC
> > > > and
> > > > with self-identification facility like their GC series GPUs.
> > > >=20
> > > > Add a device tree binding for it.
> > > >=20
> > > > Depends on the specific DC model, it can have either one or two
> > > > display
> > > > outputs, and each display output could be set to DPI signal or
> > > > "DP"
> > > > signal (which seems to be some plain parallel bus to HDMI
> > > > controllers).
> > > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > >=20
> > > Wrong DCO chain order. You send it as icenowy.me, so this must be
> > > last
> > > SoB. This identity is the last one certifying DCO. Please kindly
> > > read
> > > submitting patches, so you know what you are certifying here.
> >=20
> > Well I mapped the @iscas.ac.cn mail to the @icenowy.me one in the
> > last
> > patch.
> >=20
> > Or maybe I should make it the first patch?
>=20
> .mailmap has effect on b4 and git send-email, so maybe that's the
> answer. The problem is that:
> 1. This email has sender address @icenowy.me
> 2. It's SoB is not the last one.

Well, I think a patch that is already sent shouldn't have the From
field changing when bumping revision, and a patch modified by one
identity should have the modifying one's SoB added.

So here I am using the @icenowy.me mail (which can represent the
@iscas.ac.cn mail according to the mailmap) to send the patch that is
processed by @iscas.ac.cn mail.

Sending the patch with @iscas.ac.cn mail needs some extra setup
(because of some weird security requirement).

>=20
> This needs to be fixed. The order of patches for me does not matter,
> I
> don't think it would fix the issue here either.
>=20
> Anyway, please trim your responses, so I will not have to scroll
> through
> lines of code to find that you did not respond there.
>=20
>=20
>=20
> Best regards,
> Krzysztof


