Return-Path: <devicetree+bounces-241600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD45C8011A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:05:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 032474E3C18
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A8202FCC12;
	Mon, 24 Nov 2025 11:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="AzYCxT9v"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FADF2F549B;
	Mon, 24 Nov 2025 11:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982292; cv=pass; b=QP2Q06LbO0+sagh/n5OLhV2APNg45Ls4fcZk6hrpiCvv2lDf+1CJWzZsIuMltjTFB7xz1DG/ltrU5PVGjzlgFMzOIqFxqvQNKRV5BEUeI6409PnVT3pQkCWihqNFWlueYFHihCKmk5Zo0TAyFGG3d866zNnJb8Q2YmpqmsVUJSk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982292; c=relaxed/simple;
	bh=D3cbMdsMrEtpzsehF8ze+0hLRetx0a/gTi/Q4jo1cyA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JZVQPHyPivzioF3W+n2/hHP2s2ae59eyjQweD8x/WsoTHktzeJvUdEvInbA6e14TOVDk8RCSHWxiGbTUMf+H8+fH/0jon0wwyxEvcFip9DhawKUAeFO1llmR5vv5SzORcNf6QwnSLSGq8tX/u03Wv+/O5QQGLsr9007CAMN2WMU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=AzYCxT9v; arc=pass smtp.client-ip=136.143.184.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763982257; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dQ80TF4tnXqxyvQz39otZp1qJFKuYSQsWVGKlt4OQaRq0jhfKO4RFcSD8yYwl+hE8iWK7kebriRX6AN+f8jXhFqrDErLCnxkwJSAf18Tn0TGtpGrA1/cQyqfuRDqlihaYRZWcH3qWYgchRPbXLMbhZQhcnOlU5q8gtAQLHJBx74=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763982257; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=D3cbMdsMrEtpzsehF8ze+0hLRetx0a/gTi/Q4jo1cyA=; 
	b=QR23I/6yedKkXsnYfEAntLVmtHhSTmqmKvLUh+OrXQSYkAD5PIAH73bC4UMKU4o67eM+BsyZJZ0/Q/Stzfc49Vdr/7AX9FD0KttxJaPs1tccW2R+dk+XWxmXcNjG+SeKopz9kO7TsFLx+TELaD4+VbmANRPIzs2yA+573ZKpI9A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763982257;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=D3cbMdsMrEtpzsehF8ze+0hLRetx0a/gTi/Q4jo1cyA=;
	b=AzYCxT9vItXc5CVXKohJmJoK9lPWVDhV7Dc3/CSdHRDMA5AHrj9CgxmEjQ5x+AvB
	2aFH+oP3nW0kF031f2F+LQ+hUftlW0TvANSaXZ9AZupM4jS82B254zku8bssR+nqorG
	TGwdJDhAcqSNGe7wjko3GtcLCM4A2M+lSmiEBwK3xYGGDtXdyTvFfamvcemo0RzHJTt
	1DGsDNCfQIZzdHPwNnokGwbdGrX/YAXxq044iHKBwNTopRGHOroLRKbbPKO/IArHEqY
	H9rnOr3iHNMRAUn20NJiGaji9FkczjSI2UwiC40ILLgtYuQeVKS/vBEXEjyX3MJf6n1
	GvvjSXUX2w==
Received: by mx.zohomail.com with SMTPS id 1763982256270972.0326901834951;
	Mon, 24 Nov 2025 03:04:16 -0800 (PST)
Message-ID: <f7bbb57180866a0674fc1d72d4bd3279c7b1c1e9.camel@icenowy.me>
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
Date: Mon, 24 Nov 2025 19:04:07 +0800
In-Reply-To: <d4cfe8bb-5ca2-40a9-bfe0-96e7ded5586c@kernel.org>
References: <20251124105226.2860845-1-uwu@icenowy.me>
	 <20251124105226.2860845-3-uwu@icenowy.me>
	 <d4cfe8bb-5ca2-40a9-bfe0-96e7ded5586c@kernel.org>
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

=E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 12:01 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On 24/11/2025 11:52, Icenowy Zheng wrote:
> > Verisilicon has a series of display controllers prefixed with DC
> > and
> > with self-identification facility like their GC series GPUs.
> >=20
> > Add a device tree binding for it.
> >=20
> > Depends on the specific DC model, it can have either one or two
> > display
> > outputs, and each display output could be set to DPI signal or "DP"
> > signal (which seems to be some plain parallel bus to HDMI
> > controllers).
> > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
>=20
> Wrong DCO chain order. You send it as icenowy.me, so this must be
> last
> SoB. This identity is the last one certifying DCO. Please kindly read
> submitting patches, so you know what you are certifying here.

Well I mapped the @iscas.ac.cn mail to the @icenowy.me one in the last
patch.

Or maybe I should make it the first patch?

>=20
> > ---
> > Changes in v3:
> > - Added SoC-specific compatible string, and arm the binding with
> > clock /
> > =C2=A0 port checking for the specific SoC (with a 2-output DC).
> >=20
> > Changes in v2:
> > - Fixed misspelt "versilicon" in title.
> > - Moved minItems in clock properties to be earlier than items.
> > - Re-aligned multi-line clocks and resets in example.
> >=20
> > =C2=A0.../bindings/display/verisilicon,dc.yaml=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 146
> > ++++++++++++++++++
> > =C2=A01 file changed, 146 insertions(+)
> > =C2=A0create mode 100644
> > Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> >=20
> > diff --git
> > a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> > b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> > new file mode 100644
> > index 0000000000000..522a544498bea
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> > @@ -0,0 +1,146 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/verisilicon,dc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Verisilicon DC-series display controllers
> > +
> > +maintainers:
> > +=C2=A0 - Icenowy Zheng <uwu@icenowy.me>
> > +
> > +properties:
> > +=C2=A0 $nodename:
> > +=C2=A0=C2=A0=C2=A0 pattern: "^display@[0-9a-f]+$"
> > +
> > +=C2=A0 compatible:
> > +=C2=A0=C2=A0=C2=A0 items:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - thead,th1520-=
dc8200
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: verisilicon,dc
>=20
> I do not see any explanation of exception for generic compatibles,
> maybe
> except "self-identification" remark. Rob already pointed this out, so
> be
> explicit in commit msg why you are using a generic compatible.
>=20
> > +
> > +=C2=A0 reg:
> > +=C2=A0=C2=A0=C2=A0 maxItems: 1
> > +
> > +=C2=A0 interrupts:
> > +=C2=A0=C2=A0=C2=A0 maxItems: 1
> > +
> > +=C2=A0 clocks:
> > +=C2=A0=C2=A0=C2=A0 minItems: 4
>=20
> This is not flexible. Device either has or has not these clocks.
>=20
> > +=C2=A0=C2=A0=C2=A0 items:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: DC Core clock
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: DMA AXI bus clock
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: Configuration AHB bus cl=
ock
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: Pixel clock of output 0
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: Pixel clock of output 1
> > +
>=20
>=20
>=20
> Best regards,
> Krzysztof


