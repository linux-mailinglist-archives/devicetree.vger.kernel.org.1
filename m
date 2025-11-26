Return-Path: <devicetree+bounces-242276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CE0C88CEE
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FAA53B70FC
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8713E30E856;
	Wed, 26 Nov 2025 08:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="B4dNaGew"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03762561AA;
	Wed, 26 Nov 2025 08:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764147485; cv=pass; b=TvjdpAk6VuiLMiU0B+pRqbINn9BG8DDuSZhxurCSvE2WGwYu9qnw2y0A00c/CObpRgh0ghVG1eKqibXa9PuVopIiWT7d/TkjYh3y694QMzDi97tPEWiMNOMLMivsgzkCA3YIQzSagG/Jbh9gSzlB0mSAnVwYDq6NuJr6+72kp4c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764147485; c=relaxed/simple;
	bh=vjRZmnhqtqpfKrBi5Q+r59FbrMRkIRC2v3OLJ/v0sWc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=TWiM3piXOGsbE6fNg+fGFt1451FS4Wlq0G38PlrELa9dOlau6Bbe4bE7q1Q7pW9GzHnVuE+o2YQC7PJR0ijzAfXaV57WMKZVXEu6FRJZ+eT2PSz8NNk3pFW9OeyEFo5inLxblRePavcTWqLuvAGLJPgLJg+npN0Aabg1gnKqkV8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=B4dNaGew; arc=pass smtp.client-ip=136.143.184.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1764147438; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=JcI9g0P8uUthq8kwFB86RLLnZ2Vl0mmgpzPBdPOtxjuqutgFgmREVT3G8qkwHkL6vC/DYxpO+fK1EFSBkpAtZ2dHPxsfUvpmOBYETUZzT99NI3lba6wmsErp2hDmCQko6DMpsgKhG7oZSDIOppRqu3J5Ya2gorBedgwOIEZVJVw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1764147438; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=vjRZmnhqtqpfKrBi5Q+r59FbrMRkIRC2v3OLJ/v0sWc=; 
	b=PV/A6MLuzpM2oGtL6xt7ONONRY4/AsZSUWPqaKjdOsta0I6Ra3bmSVxMxU06L7NIO45N+5JmBNGVdg/oi86XtLl4kzLqGk35Yi8IBsY3Qjl6mwx7Tw7BX4YOKZUnbFaxzbf/76YAoguAPAdaDG0QPf47bExD0L53eqq1uSflSBc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764147438;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=vjRZmnhqtqpfKrBi5Q+r59FbrMRkIRC2v3OLJ/v0sWc=;
	b=B4dNaGewZpT048lvXVnnDC+SyFZsl9cky/QgG8UJw5tsblBoeIFRpxJCUnAtUQ93
	cvb6exVJXXpoGv7DG/IF2L35XfLEF05j+VPdbgApEnt+AZhhrvj1aaNj7Zh4fiUKoJN
	5NgoDKN8QXKd8AtHWoJRYXleMiR0amZTDqOqSSxFgLXJH0Q8+QRzvrqA0V3Ns4tIm1r
	khBRadtUsCaDdIuN0wnPYIfesA5C5BpPvYuk3ZY+IYq7h1dsQFgM8QRurgago8RutQS
	fwVwIg6FzbmtH5gkBeij7BKdZ9xeOglK5cYQzWJ19Ay3U3O0bHqz7qZ3Nm8g2QnSuaf
	3yx/IDR08A==
Received: by mx.zohomail.com with SMTPS id 1764147434759601.659033320605;
	Wed, 26 Nov 2025 00:57:14 -0800 (PST)
Message-ID: <e2b72b8ef4c2911c4ea44a80f42182bbc78d5626.camel@icenowy.me>
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
Date: Wed, 26 Nov 2025 16:57:04 +0800
In-Reply-To: <20251126-gifted-zircon-ibex-a9f1d8@kuoka>
References: <20251126045233.218286-1-zhengxingda@iscas.ac.cn>
	 <20251126045233.218286-3-zhengxingda@iscas.ac.cn>
	 <20251126-gifted-zircon-ibex-a9f1d8@kuoka>
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

=E5=9C=A8 2025-11-26=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 09:51 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On Wed, Nov 26, 2025 at 12:52:26PM +0800, Icenowy Zheng wrote:
> > From: Icenowy Zheng <uwu@icenowy.me>
> >=20
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
> >=20
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > ---
>=20
> You already received review on this. Don't send the same. Read the
> review.

Please see the sender (mail header From) of this time.

>=20
> NAK
>=20
> Best regards,
> Krzysztof
>=20


