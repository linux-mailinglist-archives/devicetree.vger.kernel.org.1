Return-Path: <devicetree+bounces-260515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBrpBm40eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:08:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD82A5224
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2EA9B3052362
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10A443033E0;
	Wed, 28 Jan 2026 16:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="OU8kDing"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-e103.zoho.com (sender4-pp-e103.zoho.com [136.143.188.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5942D1F7B;
	Wed, 28 Jan 2026 16:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.103
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616250; cv=pass; b=c0/NQHVOp3zGetO3pEPQPgKP40NK/Ttzs/O3RHnAmKkajGAb67wFNa2XzF+cZjmZcVUxMX3hFvgsPJsN6iOe0dCYdfQXZHrhhvxcrTqQWUyRAAHz7x2lDMy7bcYO1QNjy8MhBwFfvFtI/CGv/w/LWQ9d0GP0PmgJxmVnw2t8AH0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616250; c=relaxed/simple;
	bh=fncxXrnvzx+rBXB1A07QCoO0pcakz1qEXgNvB3GhOfM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Yy09tutfRwBupBtFyWeUQ7KVSMd3yhyCY1imNWzrsA18J8Ww/T/K/tzLrzEla4z02QDEtKHmqlIY3vH91gDTKzBWNxC+UCcE6peWAbcDdpR/HawjDz8umxkZt8n08IgWoPxRIGgM7QmdKu8Bz9BCDSGWzhVGw/b69W/HQoyrowU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=OU8kDing; arc=pass smtp.client-ip=136.143.188.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1769616197; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KsUYL+x6XTGumAPf4LHWK80bbs53+d3HPLm90Go7sYCj+RwcKPpm0XoDs3KVIhMbGueVtgK5yxNH1I1iE792LJEI11yBVi4jiCxHnP7Za3KWzkomy9Gt+Z9AqyM7o38M69Q+B5db44qgbNWETcsO3S29Smv+0i2D0xuOr4h19cA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769616197; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=fncxXrnvzx+rBXB1A07QCoO0pcakz1qEXgNvB3GhOfM=; 
	b=YDoKEXNSB+QWXuMLMvX1pzHoEXlEo4jWynRjagZQnYsv6fsWJOdn3v2y2vc9bOCVVNl9MeKoGDkFd21jojWZLh+UuVFhUG1fZVNTWjoB247Cyz4UCiPvKRCIPTLCtD0tSirsG21NpM/Kz3PVlSontwDKJ+jIn+B9Ipgc9U02pYY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769616197;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=fncxXrnvzx+rBXB1A07QCoO0pcakz1qEXgNvB3GhOfM=;
	b=OU8kDingy9lLvJ8GxvS478sS/qda/34ammNsRz8DnZB/ohesi3vunzYMUII5r+25
	ZBdt0mFwVXtXj1NhrVrsO4G51gvWz+AXUFS3lsAofulogbsgcXbjEZZdGHwRQzgx5EU
	yFHfzaOSEuHJDabRp7JX1y1ejXwlOBvs1WZSUP8iYGqaKSD+t7+jf3wpBGuUHblEp8f
	ApBzPwJ3tUG+ERH3B0OlP6feb7LAJXKascYy0fiaa5+ghlld8tCxaFMmJpYU/y8j6OS
	/g53PtJ0FOnZJWTSDAUxbuRqXhNir0lKsWpPQ5pDuVrFf7/o1of600i4m0XCYbCOzmP
	Yx6+DIuuIw==
Received: by mx.zohomail.com with SMTPS id 1769616195122188.38127945886322;
	Wed, 28 Jan 2026 08:03:15 -0800 (PST)
Message-ID: <4e340eb246e4e725754ed2097260c1a1acd8fe71.camel@icenowy.me>
Subject: Re: [PATCH v6 3/9] drm: verisilicon: add a driver for Verisilicon
 display controllers
From: Icenowy Zheng <uwu@icenowy.me>
To: Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Drew Fustini <fustini@kernel.org>, Guo Ren
 <guoren@kernel.org>, Fu Wei <wefu@redhat.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Dmitry Baryshkov
 <lumag@kernel.org>,  Michal Wilczynski <m.wilczynski@samsung.com>, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, Han Gao <rabenda.cn@gmail.com>,  Yao
 Zi <ziyao@disroot.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Han Gao <gaohan@iscas.ac.cn>
Date: Thu, 29 Jan 2026 00:03:01 +0800
In-Reply-To: <064dd2b7-415b-4794-8867-73bdd7ac17df@suse.de>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
	 <20260123092830.4046009-4-zhengxingda@iscas.ac.cn>
	 <6ea016d6-42a4-4d83-89fd-eee918a834ef@suse.de>
	 <7301d5f80c7f247d4a2f82c242b3d8b8ad69f5e1.camel@icenowy.me>
	 <064dd2b7-415b-4794-8867-73bdd7ac17df@suse.de>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[icenowy.me,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[icenowy.me:s=zmail2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260515-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,samsung.com,bootlin.com,gmail.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,iscas.ac.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uwu@icenowy.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[icenowy.me:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,suse.de:email,iscas.ac.cn:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,samsung.com:email,icenowy.me:email,icenowy.me:dkim,icenowy.me:mid]
X-Rspamd-Queue-Id: 7FD82A5224
X-Rspamd-Action: no action

=E5=9C=A8 2026-01-28=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 09:54 +0100=EF=BC=
=8CThomas Zimmermann=E5=86=99=E9=81=93=EF=BC=9A
> Hi
>=20
> Am 28.01.26 um 09:39 schrieb Icenowy Zheng:
> > =E5=9C=A8 2026-01-28=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 08:58 +0100=EF=
=BC=8CThomas Zimmermann=E5=86=99=E9=81=93=EF=BC=9A
> > > Hi
> > >=20
> > > Am 23.01.26 um 10:28 schrieb Icenowy Zheng:
> > > > From: Icenowy Zheng <uwu@icenowy.me>
> > > >=20
> > > > This is a from-scratch driver targeting Verisilicon DC-series
> > > > display
> > > > controllers, which feature self-identification functionality
> > > > like
> > > > their
> > > > GC-series GPUs.
> > > >=20
> > > > Only DC8200 is being supported now, and only the main
> > > > framebuffer
> > > > is set
> > > > up (as the DRM primary plane). Support for more DC models and
> > > > more
> > > > features is my further targets.
> > > >=20
> > > > As the display controller is delivered to SoC vendors as a
> > > > whole
> > > > part,
> > > > this driver does not use component framework and extra bridges
> > > > inside a
> > > > SoC is expected to be implemented as dedicated bridges (this
> > > > driver
> > > > properly supports bridge chaining).
> > > >=20
> > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > > > Tested-by: Han Gao <gaohan@iscas.ac.cn>
> > > > Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
> > > Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> > >=20
> > > I only briefly looked over this revision, as v5 already seemed
> > > quite
> > > good. If you want to do a follow-up patch, see my other reply to
> > > v5
> > > on
> > > storing hardware formats in the plane state.
> > Well the kernel test robot found a small Kconfig problem in this
> > revision -- DRM_DISPLAY_HELPER should be selected.
> >=20
> > Maybe I'm going to send a v7 to address this.
> >=20
> > Should I also make derived plane state a change in v7, or leave it
> > as a
> > follow-up?
>=20
> That would require another round of review, I guess. Better leave it
> for=20
> a separate series.
>=20
> >=20
> > By the way, I think PATCH 1-5 should go through drm-misc tree, am I
> > right? Who's going to pick it if going through drm-misc?
>=20
> I can do that. In v7, you can merge patch 8 (MAINTAINERS) into patch
> 3,=20
> so that it goes in as well.

Well then who should pick patch 9, the mailmap change?

I remember there is some tree for this kind of "trivial changes", but I
forgot any detail about this.

>=20
> Patches 6 and 7 are small, so I can also take them into drm-misc if
> they=20
> riscv maintainers are OK with that.

Well, I think there might be other TH1520 DT bits merged by Drew
Fustini in this cycle?

Drew, can you read this? (I heard from Han Gao that his mail failed to
get delivered to Drew). If you can read this, could you confirm that
whether you want to merge DT patches?

Thanks,
Icenowy

>=20
> Best regards
> Thomas
>=20
> >=20
> > > Best regards
> > > Thomas
> > >=20
> > > > ---
> > > > Changes in v6:
> > > > - Sorted Kconfig dependency.
> > > > - Get rid of obsolete uppercase DRM_* printk marcos.
> > > > - Optimization to printk messages (unknown IRQ message is only
> > > > printed
> > > > =C2=A0=C2=A0=C2=A0 once, device recognition message has "Found" add=
ed,
> > > > "Skipping
> > > > output"
> > > > =C2=A0=C2=A0=C2=A0 message priority lowered to debug).
> > > > - Splitted most bridge functions for DPI/DP output.
> > > > - Get rid of custom CRTC atomic_flush, which doesn't do
> > > > anything
> > > > =C2=A0=C2=A0=C2=A0 device-specific.
> > > > - Adapted macro HZ_PER_KHZ and VSDC_DISP_TIMING_VALUE_MAX.
> > > > - Switched to use drm_mode_size_dumb() to align dumb buffer
> > > > pitch.
> > > > - Reordered some function calls in vs_drm_initialize() (
> > > > =C2=A0=C2=A0=C2=A0 aperture_remove_all_conflicting_devices() is now=
 called
> > > > earlier
> > > > and
> > > > =C2=A0=C2=A0=C2=A0 drm_mode_config_reset() is now called later).
> > > > - Splitted out vs_fb_get_dma_addr() and switched to use
> > > > =C2=A0=C2=A0=C2=A0 drm_format_info_min_pitch() to calculate the src=
 X offset
> > > > to the
> > > > =C2=A0=C2=A0=C2=A0 framebuffer address.
> > > > - Splitted out atomic_{en,dis}able for primary plane.
> > > > - Removed an unused pm_runtime.h inclusion because the driver
> > > > now
> > > > does
> > > > =C2=A0=C2=A0=C2=A0 not do runpm.
> > > >=20
> > > > Changes in v5:
> > > > - Switching to drm_atomic_get_new_bridge_state, which seems to
> > > > let
> > > > the
> > > > =C2=A0=C2=A0=C2=A0 driver get rid of the hack of saving bus format =
itself.
> > > > - Add the internal bridge before attaching it.
> > > > - Adapted next_bridge struct field name suggested by Luca
> > > > Ceresoli.
> > > > - Refactored the probe code to not use port count, to allow
> > > > port@0
> > > > being
> > > > =C2=A0=C2=A0=C2=A0 missing.
> > > >=20
> > > > Changes in v4:
> > > > - Switch to drm_* logger when we're handling with struct
> > > > drm_device.
> > > >=20
> > > > Changes in v3:
> > > > - Get rid of drm_atomic_get_existing_crtc_state() which is
> > > > marked
> > > > =C2=A0=C2=A0=C2=A0 deprecated.
> > > >=20
> > > > Changes in v2:
> > > > - Changed some Control flows according to previous reviews.
> > > > - Added missing of_node_put when checking of endpoints for
> > > > output
> > > > type.
> > > > - Switched all userspace-visible modeset objects to be managed
> > > > by
> > > > drmm
> > > > =C2=A0=C2=A0=C2=A0 instead of devm.
> > > > - Utilize devm_drm_bridge_alloc() in internal bridge.
> > > > - Prevented the usage of simple encoder helpers by passing a
> > > > NULL
> > > > funcs pointer.
> > > > - Let devm enable clocks when getting them.
> > > > - Removed explicit `.cache_type =3D REGCACHE_NONE` in regmap
> > > > config.
> > > > - Fixed a debug print using a variable before initialization.
> > > > - Fixed a wrong index when using bulk to handle resets.
> > > > - Added missing configuration for DPI format (currently fixed
> > > > RGB888).
> > > >=20
> > > > =C2=A0=C2=A0 drivers/gpu/drm/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 2 +
> > > > =C2=A0=C2=A0 drivers/gpu/drm/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/Kconfig=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 15 +
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/Makefile=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 5 +
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_bridge.c=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 371
> > > > ++++++++++++++++++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_bridge.h=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 39 ++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_bridge_regs.h=C2=A0 |=
=C2=A0 54 +++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_crtc.c=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 191
> > > > +++++++++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_crtc.h=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 31 ++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_crtc_regs.h=C2=A0=C2=A0=
=C2=A0 |=C2=A0 60 +++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_dc.c=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 207
> > > > ++++++++++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_dc.h=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 38 ++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_dc_top_regs.h=C2=A0 |=
=C2=A0 27 ++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_drm.c=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 182
> > > > +++++++++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_drm.h=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 28 ++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_hwdb.c=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 150 +++++++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_hwdb.h=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 29 ++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_plane.c=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 124 ++++++
> > > > =C2=A0=C2=A0 drivers/gpu/drm/verisilicon/vs_plane.h=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 72 ++++
> > > > =C2=A0=C2=A0 .../gpu/drm/verisilicon/vs_primary_plane.c=C2=A0=C2=A0=
=C2=A0 | 173 ++++++++
> > > > =C2=A0=C2=A0 .../drm/verisilicon/vs_primary_plane_regs.h=C2=A0=C2=
=A0 |=C2=A0 53 +++
> > > > =C2=A0=C2=A0 21 files changed, 1852 insertions(+)
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/Makefil=
e
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_brid=
ge.c
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_brid=
ge.h
> > > > =C2=A0=C2=A0 create mode 100644
> > > > drivers/gpu/drm/verisilicon/vs_bridge_regs.h
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc=
.c
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc=
.h
> > > > =C2=A0=C2=A0 create mode 100644
> > > > drivers/gpu/drm/verisilicon/vs_crtc_regs.h
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
> > > > =C2=A0=C2=A0 create mode 100644
> > > > drivers/gpu/drm/verisilicon/vs_dc_top_regs.h
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.=
c
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.=
h
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb=
.c
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb=
.h
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_plan=
e.c
> > > > =C2=A0=C2=A0 create mode 100644 drivers/gpu/drm/verisilicon/vs_plan=
e.h
> > > > =C2=A0=C2=A0 create mode 100644
> > > > drivers/gpu/drm/verisilicon/vs_primary_plane.c
> > > > =C2=A0=C2=A0 create mode 100644
> > > > drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h
>=20


