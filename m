Return-Path: <devicetree+bounces-273447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMkjHw3yr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:27:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 881762495C1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 80D8F3024843
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03A1F43E4AB;
	Tue, 10 Mar 2026 10:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="X5YVj3Bs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534AA44D023
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773138361; cv=none; b=qZ+AqytuO3lpt+JDjsEIcQUCZbam/fe3jcFObz8qP5RqN8vo5uS5lD3dphxjqXe3aKdx83sT7FuZ4jQHQseTpsRK8ECpPSpcIcT39GDaalbgsxlElKXLmiRJqx8CzIYsR51nMM1vnNo1i1hJGpcMGlcX3TL3s5FWxAM5IWfCzOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773138361; c=relaxed/simple;
	bh=DIxVevTPy4e7j9SnZSIMDSZ15z8aJ4FXIUBTZAILeDI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=uo65ZnbpR/AZskhSyylzcrouUFSYmepNvOGbpjAoEuz37VSoWuAnwoh7WweEL+JYPMYLyaKXzogo9Tn0sMcp4hXOhM19/y08liYSanmbvYNlciPztATMd/Ebq68vxT2mcRMyZmgfGYEt0580h9+Eh/7PS0KLHexaHgBN+6vmTRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=X5YVj3Bs; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id AA4B34E42568;
	Tue, 10 Mar 2026 10:25:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7B58E60002;
	Tue, 10 Mar 2026 10:25:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8F4A410369AAA;
	Tue, 10 Mar 2026 11:25:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773138351; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=nk14u7MxuVGH3IXCBDHPoTIp85NK3FE7BltrimnfOOk=;
	b=X5YVj3BsGK084AynP8+E6oyih5gqoqcdue/c3CwFV6MFxV44e5SAdOKcG3s2rqMWV3Hq1o
	Jctg0Kx2qZZJmkOIkuuUoHQU57LqlPHWFfFNOCSNhaM8PeDctipuFwHbElEDSS15ArJjOn
	o/5mFUfXeFEkSTi6KKlYa8xilMHDIm/z6Jaqutxhde0kgHuyMQoh5LG/nzD1bQhBszU8EW
	auxo4bkPv8ydWNk56SVYijfsn9tXaMLL4Zf3q88P3IrHBFAdN+eKxKzchB2b+iRXe/qQx7
	jGMLomyGXtsUKWIAn6DDARb/dtDqwtHQY2tnJXOq+mccxIqRN5r7BYKUKFUZAQ==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 10 Mar 2026 11:25:45 +0100
Message-Id: <DGZ132GP5IU3.1299QBUOW9D0X@bootlin.com>
Cc: "Philipp Zabel" <p.zabel@pengutronix.de>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Michal Wilczynski" <m.wilczynski@samsung.com>, "Han
 Gao" <gaohan@iscas.ac.cn>, "Yao Zi" <ziyao@disroot.org>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Drew Fustini" <fustini@kernel.org>, "Guo
 Ren" <guoren@kernel.org>, "Fu Wei" <wefu@redhat.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v7 3/8] drm: verisilicon: add a driver for Verisilicon
 display controllers
X-Mailer: aerc 0.20.1
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
 <20260129023922.1527729-4-zhengxingda@iscas.ac.cn>
 <DGY9GWWLXGNX.265MMEXXCG8YA@bootlin.com>
 <301a33fc27bd01bb50d57779c2f9eb51a4fafaa5.camel@iscas.ac.cn>
In-Reply-To: <301a33fc27bd01bb50d57779c2f9eb51a4fafaa5.camel@iscas.ac.cn>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 881762495C1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273447-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iscas.ac.cn,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:url,bootlin.com:mid]
X-Rspamd-Action: no action

Hello Icenowy,

On Mon Mar 9, 2026 at 5:35 PM CET, Icenowy Zheng wrote:

>> > +struct vsdc_dp_format {
>> > +	u32 linux_fmt;
>> > +	bool is_yuv;
>> > +	u32 vsdc_fmt;
>> > +};
>>
>> Moving the bool after the two 'u32's would be better for packing and
>> spatial locality (especially in case more fields are added in the
>> future).
>
> Yes this seems to sound right, but doing such rework sounds quite big
> and unnecessary after it's applied...

Ugh, apologies, I sent my reply without noticing this patch had been
applied already. Anyway, as Thomas pointed out, you can still do this
change as a separate patch ifi you want. Or just not do anything, this can
be done later in case new fields are added. Without new fields the
reordering would not produce much benefit anyway.

>> > +static struct vsdc_dp_format vsdc_dp_supported_fmts[] =3D {
>> > +	/* default to RGB888 */
>> > +	{ MEDIA_BUS_FMT_FIXED, false,
>> > VSDC_DISP_DP_CONFIG_FMT_RGB888 },
>> > +	{ MEDIA_BUS_FMT_RGB888_1X24, false,
>> > VSDC_DISP_DP_CONFIG_FMT_RGB888 },
>> > +	{ MEDIA_BUS_FMT_RGB565_1X16, false,
>> > VSDC_DISP_DP_CONFIG_FMT_RGB565 },
>> > +	{ MEDIA_BUS_FMT_RGB666_1X18, false,
>> > VSDC_DISP_DP_CONFIG_FMT_RGB666 },
>> > +	{ MEDIA_BUS_FMT_RGB101010_1X30,
>> > +	=C2=A0 false, VSDC_DISP_DP_CONFIG_FMT_RGB101010 },
>>
>> You can put up to 100 chars per line and avoid the newline here to
>> make
>> this table more readable. Same below.
>
> Ah I prefer to keep 80 CPL when I can, and the `coding-style.rst`
> document still suggests 80.

coding-style.rst seems very vague  about that, but checkpatch is clear:

  my $max_line_length =3D 100;

(https://elixir.bootlin.com/linux/v6.19.6/source/scripts/checkpatch.pl#L60)

Anyway, non need to send a patch now that it's committed for this,
definitely. Again, sorry for the noise on an already applied patch.

>> > +struct vs_bridge *vs_bridge_init(struct drm_device *drm_dev,
>> > +				 struct vs_crtc *crtc)
>> > +{
>> > +	unsigned int output =3D crtc->id;
>> > +	struct vs_bridge *bridge;
>>
>> In common practice a variable named 'bridge' is used to point to a
>> 'struct
>> drm_bridge', so it feels weird when it is used for another type. Can
>> you
>> rename to 'vbridge' or 'vsbridge' or similar, to clarify it's the
>> "Verisilicon bridge"?
>
> This sounds right.
>
> BTW where is such kind of common practice documented?

As it often happens, in the code, I'm afraid.

I've been touching a lot of DRM bridge and related code recently as part of
the bridge hotplug work I'm doing, and I gathered an overall view of the
current common practice as well as which conventions are more readable than
others.

>> > +		return ERR_PTR(ret);
>> > +	}
>> > +
>> > +	if (intf =3D=3D VSDC_OUTPUT_INTERFACE_DPI)
>> > +		bridge_funcs =3D &vs_dpi_bridge_funcs;
>> > +	else
>> > +		bridge_funcs =3D &vs_dp_bridge_funcs;
>> > +
>> > +	bridge =3D devm_drm_bridge_alloc(drm_dev->dev, struct
>> > vs_bridge, base,
>> > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bridge_funcs);
>>
>> The 'struct drm_bridge' field embedded in a driver-specific struct is
>> conventionally called 'bridge', so renaming it from 'base' to
>> 'bridge'
>> would make it more consistent with other drivers. That would go in
>> sync
>> with the coding convention I mentioned above: 'bridge' for struct
>> drm_bridge, <XYZ>bridge or just <XYZZ> for a custom driver struct
>> embedding
>> a bridge.
>
> Ah, all subclasses in this driver call the base class `base`, and I
> still wonder how such convention is documented.

It's a gain the common practice in the code:

$ git grep -h -E '[[:space:]]struct drm_bridge \*[[:alnum:]_]*;' -- drivers=
/gpu/drm/ | \
  sed 's/^[[:space:]]*//' | grep -v panel_bridge | sort | uniq -c | sort -n=
r
     92 struct drm_bridge *bridge;
     27 struct drm_bridge *next_bridge;
      3 struct drm_bridge *companion;
      2 struct drm_bridge *next;
      2 struct drm_bridge *iter;
      1 struct drm_bridge *tmp_bridge;
      1 struct drm_bridge *out_bridge;
      1 struct drm_bridge *ext_bridge;
      1 struct drm_bridge *drm_bridge;
[...]

So 'bridge' is by far the most common, and 'base' does never appear.

>> There is now a next_bridge field in struct drm_bridge, which handles
>> the
>> bridge lifetime in a safer way and more simply [0], so you could use
>> it:
>
> Glad to hear such a field exists now. Will more code about next_bridge
> lifetime management being shared?

Not sure exactly what you mean here. If you are asking how next_bridge
works: it's very simple, all being in the declaration [0] (where I
explained it to the best I could in the comment) and its usage in the
destruction callback when the last reference is put [1].

[0] https://elixir.bootlin.com/linux/v7.0-rc3/source/include/drm/drm_bridge=
.h
[1] https://elixir.bootlin.com/linux/v7.0-rc3/source/drivers/gpu/drm/drm_br=
idge.c#L267

Best regards,
Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

