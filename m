Return-Path: <devicetree+bounces-258220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHC6Hs7McWl1MQAAu9opvQ
	(envelope-from <devicetree+bounces-258220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:07:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B866267F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BBEB54FDD9F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DBBD33CE9B;
	Thu, 22 Jan 2026 07:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="gYxR8J3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69B347DF95;
	Thu, 22 Jan 2026 07:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769065651; cv=pass; b=PoThZKlFtfZtzkBV98OWeF7slPVLIQlUce871B256VebFAiZrozYRrPOlH7auQ9sQ2DNOQRn7TzGJ3+T8V8S+he2LPDYkPhIWLjiSkxBScu4o9sHQ9Q7kVNopTxrtw4HEMKFWeEvnAcQs5KcGqpw13NGyF2AqCbFdHGPV2DiUDw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769065651; c=relaxed/simple;
	bh=RZug1mfLC3nxslvF30V6GeULbXoaXErlTBlHkWNlrgs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UY4Xc9xG0w65MvtHhlrVCPzSQs4XYvGxueFcGonmZd4xZ8KUTYgYCEHC6ajEx9LOCDHRWAFBvo4VwHiIocY4OekZ+Y1xQnSPdQrAkD3kHH0tBziZXnJFM4xCmVIk7OdeGuaFZWYYbwmMSV1iHdegkQlstmW1g+QR63z3sdNTZjk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=gYxR8J3Z; arc=pass smtp.client-ip=136.143.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1769065589; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=D61q3dsYQwezCD6edk+ndSn3iwSn5gdWuJjY8DAy/4phJTk8YebrJA+yUQjyM4ZBabUwtMTlrC0Cs74bZ2wu0IqKZkKj4BZWw9Xr8L3QYLW/mKie2+O6fq8fmM1+GpMG8HSN3YRcB7AsPfDxs6AKkiV7e4DZ4vCg4OnnwqQCDMw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769065589; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=RZug1mfLC3nxslvF30V6GeULbXoaXErlTBlHkWNlrgs=; 
	b=WzBvf39bJTDAmX1CIEbZNDEJXLf9Ff7+mCHvllfyE0xWybKeli234KOXobwnjW3wvtjBCnfbPEZXf8w54XWMNFs5Oce4kWH29Bdz9kdtS//7T13nx6VXRA77S2+S/zWqjP9vS8WcQsBjynDl4lMBW9LyhuypXnPu8Q/j4E0JeNM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769065589;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=RZug1mfLC3nxslvF30V6GeULbXoaXErlTBlHkWNlrgs=;
	b=gYxR8J3ZwNLgUgfiV5YtWfHLUog2Stjlmugzb9AvQ4suVKxUD9yfnndRdXKTECyQ
	a3Pi0VVZ7iXErEUAuSO10v2iBuZlK3xjaBHl2E58fLe7tTx5u0HT0RxIq5rm3an5F0h
	xae+AeON3o0UmWAMR/WoI92ozOy7hLGRCLUN4lYpYpy+C9jXCeBzw1q5dER6MCbktBg
	TU3aVfepJ7spwi7iK2aYeLA9CA3Nv60/2TuKQgWN49HGFpyI/pjJ7d0quWf7MODH2oN
	F4JeqCQzJLv1hQbzBmmRouwJX5vDBJSf9tNeU9JCtH/RO33Wh7bzMPPKiQXbU33iM4R
	rc5+MguZKQ==
Received: by mx.zohomail.com with SMTPS id 1769065587973762.0478077895314;
	Wed, 21 Jan 2026 23:06:27 -0800 (PST)
Message-ID: <4afa6f3110790c701c5e24901e9e66560cf21ad0.camel@icenowy.me>
Subject: Re: [PATCH v5 3/9] drm: verisilicon: add a driver for Verisilicon
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
Date: Thu, 22 Jan 2026 15:06:14 +0800
In-Reply-To: <56e1974c-0fe6-4bdb-918d-fcf6a8b866c1@suse.de>
References: <20260116043746.336328-1-zhengxingda@iscas.ac.cn>
	 <20260116043746.336328-4-zhengxingda@iscas.ac.cn>
	 <56e1974c-0fe6-4bdb-918d-fcf6a8b866c1@suse.de>
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
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[icenowy.me:s=zmail2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258220-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,samsung.com,bootlin.com,gmail.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,iscas.ac.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[icenowy.me:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uwu@icenowy.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[icenowy.me,none];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,icenowy.me:mid,icenowy.me:dkim]
X-Rspamd-Queue-Id: F0B866267F
X-Rspamd-Action: no action

=E5=9C=A8 2026-01-21=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 13:56 +0100=EF=BC=
=8CThomas Zimmermann=E5=86=99=E9=81=93=EF=BC=9A

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D 8< =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (irqs)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pr_warn("Unknown Verisilicon DC interrupt 0x%x
> > fired!\n", irqs);
>=20
> I'd avoid pr_warn() here. This can fill your logs quickly.

Then is pr_warn_once() okay?

>=20
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return IRQ_HANDLED;
> > +}

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D 8< =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

> >=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Fixup framebuffer address=
 for src coordinates */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dma_addr +=3D (state->src.x1=
 >> 16) * bpp;
>=20
> bpp is deprecated and should be avoided in new code. You can compute
> the=20
> offset with drm_format_min_pitch():
>=20
> drm_format_min_pitch(fb->format, 0, state->src.x1 >> 16 )

Well it seems quite difficult to track what's deprecated in the DRM
subsystem, is there anything like a bulletin?


Thanks,
Icenowy

