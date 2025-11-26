Return-Path: <devicetree+bounces-242304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CC18CC890AC
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2077534669D
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2806A2F747D;
	Wed, 26 Nov 2025 09:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="GuoOtMI5"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C4E18A94C;
	Wed, 26 Nov 2025 09:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764150149; cv=pass; b=oF0TiC934DLHzYUprptYaiEi8xm+QKxQKXr7xaBgH9sMFh3Thf8AZkaLLCKdC4Bq9jPVs9nR/880SwtcNQSZmjWY9UDUJb1JnSnr/2VHWro2SoExNlEFQzCjAL06wqNM0hmT0/w2XZhNXGeLQDneqejuAcw/TXvdueWo6yTLr6I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764150149; c=relaxed/simple;
	bh=HCrXWcCJcuxzIq0iHhld0Os9jJmomNGWdXQFSCiiukQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=f5gxsjtpUW8Wqfwe4XQbJ/SvDBqwxtSnixm6p+YhexL6BayVTps7h+vBXXxW/8Yo9R+sq3x3g/R3Htzih2fILAukMDbWOHLuR8UqP7lcFcPaqicXrAq7ZTUxRRRL0tn9WO+3cKvJGeLOUX+P90+IwY5X7gaa/+AxfH5PfVznvxk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=GuoOtMI5; arc=pass smtp.client-ip=136.143.184.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1764150109; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fQBxAXM9o4uD7mKSWOWobL1/ZdnY+XQbfKv1vZ6rTRPzjKDaHeZrpkSXPAta7rI9UYfGQfYaiHGcm4zZzsrJUbe/YSv/5/XIoWELyYGcOmBNRhNSlBMXdzGVs7ID9Fwlm/Gmk670rXZs1jAA7w8NAEfUsWFf7lN/oVTsDlYTkQA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1764150109; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=HCrXWcCJcuxzIq0iHhld0Os9jJmomNGWdXQFSCiiukQ=; 
	b=Qu4Gvhj4dSxRhdg16XEqh7T7j0fa2PB0tz1AJgQr0Iwk/5pTheiSzmGdIPnfuafXccBrNls+KYdd/rq9EEY9loOUdD0EjMZ2Wn/WsNTvAcWu4KSMbuUrxu2rveia68Kyf5hRFWjIkSv3iI5CIHtssCyjxAhq7TLoQrIS6Xtf/lg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764150109;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=HCrXWcCJcuxzIq0iHhld0Os9jJmomNGWdXQFSCiiukQ=;
	b=GuoOtMI51ArFwAwWNXFwtknkxYHunWqeynp9ETTHYp93VhUqA9PlnMkRwE+ZPI70
	Jqj886oyv3UKkPNNm+Bdd+QUpH152ZDSKh1X4CVwc0RY/gSkMb7JgkMcniXFlTjPETi
	miDWY/w0OktfRSomKQBXXwS0vv/NRpMETejhKD7ZbNFaCr+j/J6ROTSEoZ61vvXVZ5O
	yuDeCAQhkg5E0spxe0MSeK27T+pRSRGgqIs4bJIvv9EhFlrwEQfZIOof7ji/eMGJQXW
	c4j7Zpwu9UH6htZENs6EeD6v/lcKR+6w/5yeHVt5xHOP7By+Fmz+T0+vOLH5CwZ6dMB
	1w86gnl0JA==
Received: by mx.zohomail.com with SMTPS id 1764150105282785.1586241129531;
	Wed, 26 Nov 2025 01:41:45 -0800 (PST)
Message-ID: <001154b743b9f8364e96b3ebf791ef9920bbfa03.camel@icenowy.me>
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
Date: Wed, 26 Nov 2025 17:41:35 +0800
In-Reply-To: <b57207ab-a69e-4dad-98ca-f4923cebdf81@kernel.org>
References: <20251126045233.218286-1-zhengxingda@iscas.ac.cn>
	 <20251126045233.218286-3-zhengxingda@iscas.ac.cn>
	 <20251126-gifted-zircon-ibex-a9f1d8@kuoka>
	 <e2b72b8ef4c2911c4ea44a80f42182bbc78d5626.camel@icenowy.me>
	 <b57207ab-a69e-4dad-98ca-f4923cebdf81@kernel.org>
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

=E5=9C=A8 2025-11-26=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 10:37 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On 26/11/2025 09:57, Icenowy Zheng wrote:
> > =E5=9C=A8 2025-11-26=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 09:51 +0100=EF=
=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> > > On Wed, Nov 26, 2025 at 12:52:26PM +0800, Icenowy Zheng wrote:
> > > > From: Icenowy Zheng <uwu@icenowy.me>
> > > >=20
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
> > > >=20
> > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > > > ---
> > >=20
> > > You already received review on this. Don't send the same. Read
> > > the
> > > review.
> >=20
> > Please see the sender (mail header From) of this time.
>=20
> This improved. I am speaking about the rest of review.

Well this is why this is a v3 resend, not v4.

I will address these issues in v4.

>=20
> Best regards,
> Krzysztof


