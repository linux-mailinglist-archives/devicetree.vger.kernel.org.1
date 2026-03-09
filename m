Return-Path: <devicetree+bounces-273036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LUTNDX5rmnZKgIAu9opvQ
	(envelope-from <devicetree+bounces-273036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:45:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1E023CF4E
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:45:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFCFC3167B07
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 16:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E243B8D4D;
	Mon,  9 Mar 2026 16:35:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AAD3BFE21;
	Mon,  9 Mar 2026 16:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773074153; cv=none; b=MHEpcIxfkV4D/OczRmEajFcfy7rCNH+W+uZ3k3sR7PwRQi/ufTXHInQkGZD3QXrGjhYgKxJN7HCZQ6+5Nfy8Ztmzu7BJlC8LbVhJGmVZZhve0YGahrOw5MLl4UXkWupiSmXKVlyUvvN1ZpXMM163jVGO8Oyu5ZdqHP6CPZqcDlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773074153; c=relaxed/simple;
	bh=XekIMjXls9H6e/uXxie1OKc3G8psKgWFjkrqkyF0jPA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=G6xvMVlCo9baixoJX4XLezP2xyQwShlzwqGAQlqX/eYU312N4G6soGIxHgBJza97qCJc8EuOJ1JF/hOk/kvxVQkId9YuvWjzVIN+mhGu1EQagav3BqmEp38yoEf9FQQ2o6OrFxwTxdMehvMgv7W/5xo1K8xh1QDXx+W70O13XHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iscas.ac.cn
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.103.14])
	by APP-05 (Coremail) with SMTP id zQCowACnOQ3B9q5pY3H5CQ--.47818S2;
	Tue, 10 Mar 2026 00:35:14 +0800 (CST)
Message-ID: <301a33fc27bd01bb50d57779c2f9eb51a4fafaa5.camel@iscas.ac.cn>
Subject: Re: [PATCH v7 3/8] drm: verisilicon: add a driver for Verisilicon
 display controllers
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, Andrzej Hajda	
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman	 <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst	
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring	 <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley	 <conor+dt@kernel.org>, Drew
 Fustini <fustini@kernel.org>, Guo Ren	 <guoren@kernel.org>, Fu Wei
 <wefu@redhat.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Dmitry Baryshkov
 <lumag@kernel.org>,  Michal Wilczynski <m.wilczynski@samsung.com>, Han Gao
 <gaohan@iscas.ac.cn>, Yao Zi <ziyao@disroot.org>, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Date: Tue, 10 Mar 2026 00:35:13 +0800
In-Reply-To: <DGY9GWWLXGNX.265MMEXXCG8YA@bootlin.com>
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
	 <20260129023922.1527729-4-zhengxingda@iscas.ac.cn>
	 <DGY9GWWLXGNX.265MMEXXCG8YA@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-CM-TRANSID:zQCowACnOQ3B9q5pY3H5CQ--.47818S2
X-Coremail-Antispam: 1UD129KBjvJXoW3Jw45CF17Xr45Xr4UuF4fGrg_yoWxKryfpF
	s2qay5KFs8XFWfu3yUZr4jyFyYv3yDGFs0grWUZryFvF9agF9rWr4DAr1DuF18CF4UCF1a
	yr1Utr4S9rn8AFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvGb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26rWj6s0DM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_Gr0_Cr1l84ACjcxK6I
	8E87Iv6xkF7I0E14v26r4UJVWxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xv
	F2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r
	4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwACI402YVCY1x02628vn2kIc2xK
	xwCY1x0262kKe7AKxVW8ZVWrXwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJV
	W8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF
	1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6x
	IIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY
	6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa
	73UjIFyTuYvjxUkl19UUUUU
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/
X-Rspamd-Queue-Id: 1F1E023CF4E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[iscas.ac.cn];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[bootlin.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273036-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhengxingda@iscas.ac.cn,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.095];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,iscas.ac.cn:mid,iscas.ac.cn:email,bootlin.com:url,suse.de:email,icenowy.me:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

=E5=9C=A8 2026-03-09=E4=B8=80=E7=9A=84 13:47 +0100=EF=BC=8CLuca Ceresoli=E5=
=86=99=E9=81=93=EF=BC=9A
> Hello Icenowy Zheng,
>=20
> On Thu Jan 29, 2026 at 3:39 AM CET, Icenowy Zheng wrote:
> > From: Icenowy Zheng <uwu@icenowy.me>
> >=20
> > This is a from-scratch driver targeting Verisilicon DC-series
> > display
> > controllers, which feature self-identification functionality like
> > their
> > GC-series GPUs.
> >=20
> > Only DC8200 is being supported now, and only the main framebuffer
> > is set
> > up (as the DRM primary plane). Support for more DC models and more
> > features is my further targets.
> >=20
> > As the display controller is delivered to SoC vendors as a whole
> > part,
> > this driver does not use component framework and extra bridges
> > inside a
> > SoC is expected to be implemented as dedicated bridges (this driver
> > properly supports bridge chaining).
> >=20
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > Tested-by: Han Gao <gaohan@iscas.ac.cn>
> > Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
> > Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>=20
> I have reviewed the bridge part of this patch and have a few remarks,
> see
> below.
>=20
> [...]
>=20
> > +++ b/drivers/gpu/drm/verisilicon/vs_bridge.c
> > @@ -0,0 +1,371 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2025 Icenowy Zheng <uwu@icenowy.me>
> > + */
> > +
> > +#include <linux/of.h>
> > +#include <linux/regmap.h>
> > +
> > +#include <uapi/linux/media-bus-format.h>
> > +
> > +#include <drm/drm_atomic.h>
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_bridge.h>
> > +#include <drm/drm_bridge_connector.h>
> > +#include <drm/drm_connector.h>
> > +#include <drm/drm_encoder.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_print.h>
> > +#include <drm/drm_simple_kms_helper.h>
> > +
> > +#include "vs_bridge.h"
> > +#include "vs_bridge_regs.h"
> > +#include "vs_crtc.h"
> > +#include "vs_dc.h"
> > +
> > +static int vs_bridge_attach(struct drm_bridge *bridge,
> > +			=C2=A0=C2=A0=C2=A0 struct drm_encoder *encoder,
> > +			=C2=A0=C2=A0=C2=A0 enum drm_bridge_attach_flags flags)
> > +{
> > +	struct vs_bridge *vbridge =3D
> > drm_bridge_to_vs_bridge(bridge);
> > +
> > +	return drm_bridge_attach(encoder, vbridge->next_bridge,
> > +				 bridge, flags);
> > +}
> > +
> > +struct vsdc_dp_format {
> > +	u32 linux_fmt;
> > +	bool is_yuv;
> > +	u32 vsdc_fmt;
> > +};
>=20
> Moving the bool after the two 'u32's would be better for packing and
> spatial locality (especially in case more fields are added in the
> future).

Yes this seems to sound right, but doing such rework sounds quite big
and unnecessary after it's applied...

>=20
> > +
> > +static struct vsdc_dp_format vsdc_dp_supported_fmts[] =3D {
> > +	/* default to RGB888 */
> > +	{ MEDIA_BUS_FMT_FIXED, false,
> > VSDC_DISP_DP_CONFIG_FMT_RGB888 },
> > +	{ MEDIA_BUS_FMT_RGB888_1X24, false,
> > VSDC_DISP_DP_CONFIG_FMT_RGB888 },
> > +	{ MEDIA_BUS_FMT_RGB565_1X16, false,
> > VSDC_DISP_DP_CONFIG_FMT_RGB565 },
> > +	{ MEDIA_BUS_FMT_RGB666_1X18, false,
> > VSDC_DISP_DP_CONFIG_FMT_RGB666 },
> > +	{ MEDIA_BUS_FMT_RGB101010_1X30,
> > +	=C2=A0 false, VSDC_DISP_DP_CONFIG_FMT_RGB101010 },
>=20
> You can put up to 100 chars per line and avoid the newline here to
> make
> this table more readable. Same below.

Ah I prefer to keep 80 CPL when I can, and the `coding-style.rst`
document still suggests 80.

>=20
> > +	{ MEDIA_BUS_FMT_UYVY8_1X16, true,
> > VSDC_DISP_DP_CONFIG_YUV_FMT_UYVY8 },
> > +	{ MEDIA_BUS_FMT_UYVY10_1X20, true,
> > VSDC_DISP_DP_CONFIG_YUV_FMT_UYVY10 },
> > +	{ MEDIA_BUS_FMT_YUV8_1X24, true,
> > VSDC_DISP_DP_CONFIG_YUV_FMT_YUV8 },
> > +	{ MEDIA_BUS_FMT_YUV10_1X30, true,
> > VSDC_DISP_DP_CONFIG_YUV_FMT_YUV10 },
> > +	{ MEDIA_BUS_FMT_UYYVYY8_0_5X24,
> > +	=C2=A0 true, VSDC_DISP_DP_CONFIG_YUV_FMT_UYYVYY8 },
> > +	{ MEDIA_BUS_FMT_UYYVYY10_0_5X30,
> > +	=C2=A0 true, VSDC_DISP_DP_CONFIG_YUV_FMT_UYYVYY10 },
> > +};
> > +
>=20
> [...]
>=20
> > +struct vs_bridge *vs_bridge_init(struct drm_device *drm_dev,
> > +				 struct vs_crtc *crtc)
> > +{
> > +	unsigned int output =3D crtc->id;
> > +	struct vs_bridge *bridge;
>=20
> In common practice a variable named 'bridge' is used to point to a
> 'struct
> drm_bridge', so it feels weird when it is used for another type. Can
> you
> rename to 'vbridge' or 'vsbridge' or similar, to clarify it's the
> "Verisilicon bridge"?

This sounds right.

BTW where is such kind of common practice documented?

>=20
> This is after all what you did in vs_bridge_attach() above, where the
> ambiguity of the 'bridge' name used for a driver-specific struct is
> evident.
>=20
> > +	struct drm_bridge *next;
> > +	enum vs_bridge_output_interface intf;
> > +	const struct drm_bridge_funcs *bridge_funcs;
> > +	int ret, enctype;
> > +
> > +	intf =3D vs_bridge_detect_output_interface(drm_dev->dev-
> > >of_node,
> > +						 output);
> > +	if (intf =3D=3D -ENODEV) {
> > +		drm_dbg(drm_dev, "Skipping output %u\n", output);
> > +		return NULL;
> > +	}
> > +
> > +	next =3D devm_drm_of_get_bridge(drm_dev->dev, drm_dev->dev-
> > >of_node,
> > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 output, intf);
> > +	if (IS_ERR(next)) {
> > +		ret =3D PTR_ERR(next);
> > +		if (ret !=3D -EPROBE_DEFER)
> > +			drm_err(drm_dev,
> > +				"Cannot get downstream bridge of
> > output %u\n",
> > +				output);
>=20
> 100 chars per line are allowed, so this could fit on a single line
> being
> nicer to read. This applies to a lot places in this driver, of
> logging
> calls in particular. I understand this would be annoying to change on
> an
> already reviewed patch and at v7 so up to you, but it would be good
> to keep
> it in mind for the future.
>=20
> > +		return ERR_PTR(ret);
> > +	}
> > +
> > +	if (intf =3D=3D VSDC_OUTPUT_INTERFACE_DPI)
> > +		bridge_funcs =3D &vs_dpi_bridge_funcs;
> > +	else
> > +		bridge_funcs =3D &vs_dp_bridge_funcs;
> > +
> > +	bridge =3D devm_drm_bridge_alloc(drm_dev->dev, struct
> > vs_bridge, base,
> > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bridge_funcs);
>=20
> The 'struct drm_bridge' field embedded in a driver-specific struct is
> conventionally called 'bridge', so renaming it from 'base' to
> 'bridge'
> would make it more consistent with other drivers. That would go in
> sync
> with the coding convention I mentioned above: 'bridge' for struct
> drm_bridge, <XYZ>bridge or just <XYZZ> for a custom driver struct
> embedding
> a bridge.

Ah, all subclasses in this driver call the base class `base`, and I
still wonder how such convention is documented.

>=20
> > +	if (IS_ERR(bridge))
> > +		return ERR_PTR(PTR_ERR(bridge));
> > +
> > +	bridge->crtc =3D crtc;
> > +	bridge->intf =3D intf;
> > +	bridge->next_bridge =3D next;
>=20
> There is now a next_bridge field in struct drm_bridge, which handles
> the
> bridge lifetime in a safer way and more simply [0], so you could use
> it:

Glad to hear such a field exists now. Will more code about next_bridge
lifetime management being shared?

Thanks,
Icenowy

>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bridge->base.next_bridge =3D next;
>=20
> Or, after the renames I suggested above:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vbridge->bridge.next_bridge =3D next=
;
>=20
> [0]
> https://elixir.bootlin.com/linux/v7.0-rc2/source/include/drm/drm_bridge.h=
#L1269-L1278
>=20
> Luca
>=20
> --
> Luca Ceresoli, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com


