Return-Path: <devicetree+bounces-249760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9615FCDEBD5
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 14:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 869D03006A6B
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 13:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FDF0321457;
	Fri, 26 Dec 2025 13:28:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp81.cstnet.cn [159.226.251.81])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8623218ADD;
	Fri, 26 Dec 2025 13:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766755739; cv=none; b=gHR1/jXYNVTEPhgrzm8XRfzisYJNlWbfgHyNZSBVqbzuVB805AUa9Yp3wLwBhY06zaKBbjNyZgFcAkx5ZLSSR9LcMHPfCY444LHr1/h6YwWBi0FsiuusmqOVN2mJj6kUWaj3LwfFcpTuaqdPhfJmyxFVklOB0OxRt11KI7QpmLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766755739; c=relaxed/simple;
	bh=A+VcHot3KT8AK/Od3eDwFTTE29eLr7Bk2439rcOpVEU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PgUvqrYIIWi0cKOn4sO0/CaX54vfUXeqVTy8bq7c8CVgOTUQMdneJ5AZISktacjswzf6FIdHFoLYKKA5hP18Gsi4CeOGmhR9PewTC+vdfuxD1+WbnbM0Nxc1fvRmObRUp9i8eGFlD4gx3l8xiO2O6GvuKQIxdvogzX0MtytulMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iscas.ac.cn
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.103.54])
	by APP-03 (Coremail) with SMTP id rQCowABnaL9ZjU5pk4sYAg--.1008S2;
	Fri, 26 Dec 2025 21:27:55 +0800 (CST)
Message-ID: <0eba66980024d001d4ff6d0aed6f2f3e356abf3a.camel@iscas.ac.cn>
Subject: Re: [PATCH v4 5/9] drm/bridge: add a driver for T-Head TH1520 HDMI
 controller
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Andy Yan <andyshrk@163.com>
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
 <m.wilczynski@samsung.com>, devicetree@vger.kernel.org, Yao Zi
 <ziyao@disroot.org>,  linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Han Gao <rabenda.cn@gmail.com>,
 linux-riscv@lists.infradead.org
Date: Fri, 26 Dec 2025 21:27:53 +0800
In-Reply-To: <2183e580.8b98.19b5531263f.Coremail.andyshrk@163.com>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
	 <20251224161205.1132149-6-zhengxingda@iscas.ac.cn>
	 <2183e580.8b98.19b5531263f.Coremail.andyshrk@163.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-CM-TRANSID:rQCowABnaL9ZjU5pk4sYAg--.1008S2
X-Coremail-Antispam: 1UD129KBjvJXoW7CFWkXw18Gry7Ar4DAFyftFb_yoW8Ar4rpF
	WxJFW3trykGFsagry2vr1rWryYyaykJw45Grn7t3WIvw13CF10qrZrZF90gFykWr4xZr1a
	yr1Yqr17uF1DAaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvvb7Iv0xC_Cr1lb4IE77IF4wAFF20E14v26rWj6s0DM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I
	8E87Iv6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1l
	c7CjxVAaw2AFwI0_GFv_Wryl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr
	1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE
	14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7
	IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E
	87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73Uj
	IFyTuYvjxUVhL0UUUUU
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/

=E5=9C=A8 2025-12-25=E6=98=9F=E6=9C=9F=E5=9B=9B=E7=9A=84 19:07 +0800=EF=BC=
=8CAndy Yan=E5=86=99=E9=81=93=EF=BC=9A
>=20
>=20
> Hello Icenowy:
>=20
> At 2025-12-25 00:12:01, "Icenowy Zheng" <zhengxingda@iscas.ac.cn>
> wrote:
> > From: Icenowy Zheng <uwu@icenowy.me>
> >=20
> > T-Head TH1520 SoC contains a Synopsys DesignWare HDMI controller
> > (paired
> > with DesignWare HDMI TX PHY Gen2) that takes the "DP" output from
> > the
> > display controller.
> >=20
> > Add a driver for this controller utilizing the common DesignWare
> > HDMI
> > code in the kernel.
> >=20
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > ---
> > No changes in v3, v4.
> >=20
> > Changes in v2:
> > - Created a new function to set PHY parameters and refactored the
> > =C2=A0control flow of the configure_phy callback.
> >=20
> > MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > drivers/gpu/drm/bridge/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0 10 ++
> > drivers/gpu/drm/bridge/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > drivers/gpu/drm/bridge/th1520-dw-hdmi.c | 173
> > ++++++++++++++++++++++++
> > 4 files changed, 185 insertions(+)
> > create mode 100644 drivers/gpu/drm/bridge/th1520-dw-hdmi.c
>=20
>=20
> As this is a Synopsys DesignWare based IP, maybe it's better to put
> it under=C2=A0=C2=A0 "drivers/gpu/drm/bridge/synopsys/"
> Or just create a dir for thead, I think there will come other display
> related drivers for thead in the future.

It's not proper to place vendor glues to synopsys/ .

As for T-Head, they stopped their embedded SoC business (sold to
another company) and now they only makes data-center chips, there
should be no T-Head display drivers in the future.

>=20
>=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D 8< =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


