Return-Path: <devicetree+bounces-308177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /No8JSuWJmqkZAIAu9opvQ
	(envelope-from <devicetree+bounces-308177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 12:15:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2CF654ED7
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 12:15:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308177-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308177-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD1983046D48
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 10:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5870E3B810D;
	Mon,  8 Jun 2026 10:07:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0543B840F;
	Mon,  8 Jun 2026 10:07:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780913231; cv=none; b=tIUaEfaQ+LOs7fke4zgahFQJGEOcyd4lyXJM3FmnE5OO9hP9p0ZX+pP2/RLVDA3MfZG9S3Z+Vb2lI9yKPVsnulx+066QuiR9daMfkyP1uJRFvbxOigEf/yWjw9enKVz59/wiCd1XCQHGD9jA9K2CN3jNasMrXXaIeoN4zXBBl4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780913231; c=relaxed/simple;
	bh=+HbJwOEW0QCy42W9svlezN/Kd5alAYEExDdvVmqS3hw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JOGikb3d95XiInq//n27t6+HFcHAdSalputValAGAXUSoKjEVpF4Rc004Vi5Gh50+vQWol3ftDy4Rl3aCnn9U+gk29fwnUBLzjPp/yadfWX/BBRH0qq18NkPLMMQtOTXNL9rUnwgyfPPmV6GCUi5HA4Jdj3PpU3MADPuD3pIfdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.25
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.101.15])
	by APP-05 (Coremail) with SMTP id zQCowAC3F9szlCZqCWuyEg--.3647S2;
	Mon, 08 Jun 2026 18:06:44 +0800 (CST)
Message-ID: <340c213ca47dabb8bc3d260311e2fd4818bd8001.camel@iscas.ac.cn>
Subject: Re: [PATCH v3 3/5] drm/verisilicon: introduce per-variant hardware
 ops table
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Joey Lu <a0987203069@gmail.com>, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, 	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ychuang3@nuvoton.com, schung@nuvoton.com, yclu4@nuvoton.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Mon, 08 Jun 2026 18:06:43 +0800
In-Reply-To: <98eb7772-257f-4fa7-8e9b-51a635cb12dd@gmail.com>
References: <20260608023237.305036-1-a0987203069@gmail.com>
	 <20260608023237.305036-4-a0987203069@gmail.com>
	 <399cd127b56b4a2fb3161865a681606e04e6b2c6.camel@iscas.ac.cn>
	 <98eb7772-257f-4fa7-8e9b-51a635cb12dd@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-CM-TRANSID:zQCowAC3F9szlCZqCWuyEg--.3647S2
X-Coremail-Antispam: 1UD129KBjvJXoWxJFWUXrWDtF4xAF1DJr4xWFg_yoWrGFW8pr
	1qkFy8Kr4rXrykJFy8tryvqFsxWw1xKw1Igr1UGa9Yqr1DtrnIgFW0qr93uF4kXrZ7G3Wf
	Xw4SyanIvrWrAwUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvvb7Iv0xC_tr1lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I
	8E87Iv6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1l
	c7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr
	1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE
	14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7
	IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E
	87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73Uj
	IFyTuYvjxU2wIDUUUUU
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[iscas.ac.cn];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:yclu4@nuvoton.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[zhengxingda@iscas.ac.cn,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-308177-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhengxingda@iscas.ac.cn,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,iscas.ac.cn:from_mime,iscas.ac.cn:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB2CF654ED7

=E5=9C=A8 2026-06-08=E4=B8=80=E7=9A=84 17:45 +0800=EF=BC=8CJoey Lu=E5=86=99=
=E9=81=93=EF=BC=9A
> > > diff --git a/drivers/gpu/drm/verisilicon/vs_primary_plane.c
> > > b/drivers/gpu/drm/verisilicon/vs_primary_plane.c
> > > index 1f2be41ae496..75bc36a078f7 100644
> > > --- a/drivers/gpu/drm/verisilicon/vs_primary_plane.c
> > > +++ b/drivers/gpu/drm/verisilicon/vs_primary_plane.c
> > > @@ -53,12 +53,6 @@ static int
> > > vs_primary_plane_atomic_check(struct
> > > drm_plane *plane,
> > > =C2=A0=C2=A0	return 0;
> > > =C2=A0=C2=A0}
> > > =C2=A0=20
> > > -static void vs_primary_plane_commit(struct vs_dc *dc, unsigned
> > > int
> > > output)
> > > -{
> > > -	regmap_set_bits(dc->regs, VSDC_FB_CONFIG_EX(output),
> > > -			VSDC_FB_CONFIG_EX_COMMIT);
> > > -}
> > > -
> > > =C2=A0=C2=A0static void vs_primary_plane_atomic_enable(struct drm_pla=
ne
> > > *plane,
> > > =C2=A0=C2=A0					=C2=A0=C2=A0 struct
> > > drm_atomic_commit
> > > *atomic_state)
> > > =C2=A0=C2=A0{
> > > @@ -69,13 +63,8 @@ static void
> > > vs_primary_plane_atomic_enable(struct
> > > drm_plane *plane,
> > > =C2=A0=C2=A0	unsigned int output =3D vcrtc->id;
> > > =C2=A0=C2=A0	struct vs_dc *dc =3D vcrtc->dc;
> > > =C2=A0=20
> > > -	regmap_set_bits(dc->regs, VSDC_FB_CONFIG_EX(output),
> > > -			VSDC_FB_CONFIG_EX_FB_EN);
> > > -	regmap_update_bits(dc->regs, VSDC_FB_CONFIG_EX(output),
> > > -			=C2=A0=C2=A0 VSDC_FB_CONFIG_EX_DISPLAY_ID_MASK,
> > > -			=C2=A0=C2=A0
> > > VSDC_FB_CONFIG_EX_DISPLAY_ID(output));
> > > -
> > > -	vs_primary_plane_commit(dc, output);
> > > +	if (dc->funcs->plane_enable_ex)
> > > +		dc->funcs->plane_enable_ex(dc, output);
> > Please note that all theae codes are for primary planes, maybe the
> > helper should be named mentioning primary. Overlay planes will need
> > a
> > different codepath because they change different registers.
> >=20
> > Thanks,
> > Icenowy
> Understood. To avoid confusion, I will rename `plane_enable_ex`,=20
> `plane_disable_ex`, and `plane_update_ex` to `primary_plane_enable`,=20
> `primary_plane_disable`, and `primary_plane_update` in `vs_dc_funcs`,
> `vs_dc8200.c`, and `vs_primary_plane.c`.

Maybe keep the `_ex` here as some operations is still on the common
codepath?

Thanks,
Icenowy

> > > =C2=A0=C2=A0}
> > > =C2=A0=20
> > > =C2=A0=C2=A0static void vs_primary_plane_atomic_disable(struct drm_pl=
ane
> > > *plane,
> > > @@ -88,10 +77,8 @@ static void
> > > vs_primary_plane_atomic_disable(struct
> > > drm_plane *plane,
> > > =C2=A0=C2=A0	unsigned int output =3D vcrtc->id;
> > > =C2=A0=C2=A0	struct vs_dc *dc =3D vcrtc->dc;
> > > =C2=A0=20
> > > -	regmap_set_bits(dc->regs, VSDC_FB_CONFIG_EX(output),
> > > -			VSDC_FB_CONFIG_EX_FB_EN);
> > > -
> > > -	vs_primary_plane_commit(dc, output);
> > > +	if (dc->funcs->plane_disable_ex)
> > > +		dc->funcs->plane_disable_ex(dc, output);
> > > =C2=A0=C2=A0}
> > > =C2=A0=20
> > > =C2=A0=C2=A0static void vs_primary_plane_atomic_update(struct drm_pla=
ne
> > > *plane,
> > > @@ -133,18 +120,11 @@ static void
> > > vs_primary_plane_atomic_update(struct drm_plane *plane,
> > > =C2=A0=C2=A0	regmap_write(dc->regs, VSDC_FB_STRIDE(output),
> > > =C2=A0=C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0 fb->pitches[0]);
> > > =C2=A0=20
> > > -	regmap_write(dc->regs, VSDC_FB_TOP_LEFT(output),
> > > -		=C2=A0=C2=A0=C2=A0=C2=A0 VSDC_MAKE_PLANE_POS(state->crtc_x, state-
> > > > crtc_y));
> > > -	regmap_write(dc->regs, VSDC_FB_BOTTOM_RIGHT(output),
> > > -		=C2=A0=C2=A0=C2=A0=C2=A0 VSDC_MAKE_PLANE_POS(state->crtc_x + state=
-
> > > > crtc_w,
> > > -					 state->crtc_y + state-
> > > > crtc_h));
> > > =C2=A0=C2=A0	regmap_write(dc->regs, VSDC_FB_SIZE(output),
> > > =C2=A0=C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0 VSDC_MAKE_PLANE_SIZE(state->cr=
tc_w, state-
> > > > crtc_h));
> > > =C2=A0=20
> > > -	regmap_write(dc->regs, VSDC_FB_BLEND_CONFIG(output),
> > > -		=C2=A0=C2=A0=C2=A0=C2=A0 VSDC_FB_BLEND_CONFIG_BLEND_DISABLE);
> > > -
> > > -	vs_primary_plane_commit(dc, output);
> > > +	if (dc->funcs->plane_update_ex)
> > > +		dc->funcs->plane_update_ex(dc, output, state);
> > > =C2=A0=C2=A0}
> > > =C2=A0=20
> > > =C2=A0=C2=A0static const struct drm_plane_helper_funcs
> > > vs_primary_plane_helper_funcs =3D {


