Return-Path: <devicetree+bounces-242337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9B3C894E8
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:30:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 99F0235508E
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95AFC302150;
	Wed, 26 Nov 2025 10:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="gQJLVGM5"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8712FD1C2;
	Wed, 26 Nov 2025 10:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764153051; cv=pass; b=Mqk+5jy4ywZgBtj5qhQlbjUdX2qyNlOPNkgqa2iUKc198SyfHy6TO+oLQuVKzWeULU82/3qqTqSLBLqfUf0JyScnK+t46OBAhUaKqjnSvSe4T5qRHMH17AWF+15kPiNl4edqv540ZpoU7GfHDeTN0QNsPVOkpgJyHNGMrto1uOk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764153051; c=relaxed/simple;
	bh=OZ1kY2bT7sS9us9BszB6jmltZJNEl+rlI8OBwV7dowU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=K4pURo4XRybOiVfXTJMpF7EWuyVzc/QNFTVLKGgAB6+Ka+9H2drGW/4ZD60zUe0oonOFxmYyp3x6krqc8zbBSBjECxSeVjsBDIPCT+SilChbbsoDKdxmHFtboZUmD+1Cm9sNWHF/1XQY/CN6xXe39MFJu8J4+0tkjQOsTiWY/9I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=gQJLVGM5; arc=pass smtp.client-ip=136.143.184.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1764153018; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OYYleQ1k8FWw+W+ZYN7Th12qLWrGuaSfrt9ASCg2UMQTVfqeBdioQZoI2qDwBv/RfTay3fB2D6omNnrRARnDPBlPxMvr8ADfBodhUYabJT4hTey0+DXELcVG7a14ZkcvTlJ6bvIG6UDfozNrHTDb0CHweLiU9bAQAiWpP/qeaGU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1764153018; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=OZ1kY2bT7sS9us9BszB6jmltZJNEl+rlI8OBwV7dowU=; 
	b=TrOhDWPOFBihGFp8aZqsy7aBs/igik26WLcVtKykIK8bbsKhLrVgljs8a3pXy4ht3sKwZoLjpHkIlIoHJwk39H0XGIYQmefTTM2cYNOGe9luZR5S0D3aQdBGIwoLxbxI5zOVmEfsG1a59f4R+p8on+jUuArx6MqltcvJ4A1tGyE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764153018;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=OZ1kY2bT7sS9us9BszB6jmltZJNEl+rlI8OBwV7dowU=;
	b=gQJLVGM5K4IVz/UDpuaE6WmPBJlgEEqRIjQ7cMXJ738wErZ8cxxDJeTB69MXDktu
	GPQadH4E1Q2Li/JMhlagAnZlTglbkX3PDMGTSBj4+mnNMR8K2Y5BipNKZd1hty8Brjz
	MyixYz8YTwBeeMWnsYwkGImD9tIqzLArzre1bISkNVScNNQP8FxjGkgU14xlvWEX9ic
	nfUEHCfM08cE8+indN0yvXhmJNDdKh76DEkCBZRCcks9+3X8dW1PboK+87+0GnttS/h
	9q99gLSFjti7fTgvWe6h2KBVJ3eLriD/gHeDCb5hv0ZBLeu9flcsgtTqySGoV2YfjVF
	WuYUZvsWHQ==
Received: by mx.zohomail.com with SMTPS id 1764153015474257.540340363018;
	Wed, 26 Nov 2025 02:30:15 -0800 (PST)
Message-ID: <cc033a17a099c18451b0716e3ceb44229280068f.camel@icenowy.me>
Subject: Re: [PATCH RESEND v3 2/9] dt-bindings: display: add verisilicon,dc
From: Icenowy Zheng <uwu@icenowy.me>
To: Krzysztof Kozlowski <krzk@kernel.org>
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
Date: Wed, 26 Nov 2025 18:30:05 +0800
In-Reply-To: <86c4b848-a94a-4ccb-80a1-59a5c91e8cce@kernel.org>
References: <20251126045233.218286-1-zhengxingda@iscas.ac.cn>
	 <20251126045233.218286-3-zhengxingda@iscas.ac.cn>
	 <20251126-gifted-zircon-ibex-a9f1d8@kuoka>
	 <e2b72b8ef4c2911c4ea44a80f42182bbc78d5626.camel@icenowy.me>
	 <b57207ab-a69e-4dad-98ca-f4923cebdf81@kernel.org>
	 <001154b743b9f8364e96b3ebf791ef9920bbfa03.camel@icenowy.me>
	 <86c4b848-a94a-4ccb-80a1-59a5c91e8cce@kernel.org>
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

=E5=9C=A8 2025-11-26=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 11:28 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On 26/11/2025 10:41, Icenowy Zheng wrote:
> > =E5=9C=A8 2025-11-26=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 10:37 +0100=EF=
=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> > > On 26/11/2025 09:57, Icenowy Zheng wrote:
> > > > =E5=9C=A8 2025-11-26=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 09:51 +010=
0=EF=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> > > > > On Wed, Nov 26, 2025 at 12:52:26PM +0800, Icenowy Zheng
> > > > > wrote:
> > > > > > From: Icenowy Zheng <uwu@icenowy.me>
> > > > > >=20
> > > > > > Verisilicon has a series of display controllers prefixed
> > > > > > with
> > > > > > DC
> > > > > > and
> > > > > > with self-identification facility like their GC series
> > > > > > GPUs.
> > > > > >=20
> > > > > > Add a device tree binding for it.
> > > > > >=20
> > > > > > Depends on the specific DC model, it can have either one or
> > > > > > two
> > > > > > display
> > > > > > outputs, and each display output could be set to DPI signal
> > > > > > or
> > > > > > "DP"
> > > > > > signal (which seems to be some plain parallel bus to HDMI
> > > > > > controllers).
> > > > > >=20
> > > > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > > > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > > > > > ---
> > > > >=20
> > > > > You already received review on this. Don't send the same.
> > > > > Read
> > > > > the
> > > > > review.
> > > >=20
> > > > Please see the sender (mail header From) of this time.
> > >=20
> > > This improved. I am speaking about the rest of review.
> >=20
> > Well this is why this is a v3 resend, not v4.
> >=20
> > I will address these issues in v4.
>=20
> You received review. Do not ever make a resend ignoring the review,
> even
> if only parts. Make a posting after addressing COMPLETE review.
>=20
> Otherwise this hides the original review and no one will ever find
> it.
> It also is quite disrespectful to my time spent on that review.

Well okay, sorry because I didn't notice the review before...

>=20
> Best regards,
> Krzysztof


