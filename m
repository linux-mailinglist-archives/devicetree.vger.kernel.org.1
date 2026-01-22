Return-Path: <devicetree+bounces-258232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJwZMW3VcWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:44:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 35748629E8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A26526C859A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8ED3D3481;
	Thu, 22 Jan 2026 07:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="E+/jIas7"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807AF37B41B;
	Thu, 22 Jan 2026 07:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067505; cv=pass; b=W/9kdze27i3IwMR260FCMkp2dvF7p0ALq0b8cvSEJyp7ALzoutUhd1N6oiKQnJmMCtAlw7D8oG9HxkqHe7hKgyIGAfr0TaJA2H+QGxHJhMTlo9P1IWYvkl6jQeyNBy6UQHWAi8HODGfdWizxInoSaPBKNNrhvvVtICoscpfKEBs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067505; c=relaxed/simple;
	bh=27t/D+au2E5C7LW4H+D00miBeJuLJZVdStU+4BuYmh4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=A4KP7G6aHcVLyz+2l5ce9L4PfPLuxHtfGpxBdoAEZvGaFXRGJZHygZEogfd3JJDl+zxvqMqqAfjO8rD3VpqjJX2q2LVVUhKmOOuRxcoWZaZwr+lhxiY/4Wad4q4+5kNhqUkVuU73NKTs7JHAGqQtQgwMACJmM8+BCzAkl3vELJk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=E+/jIas7; arc=pass smtp.client-ip=136.143.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1769067460; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=IUEuA7iixpF8g6ihu8V8QGi6kaYgpTSlcHr9jxQn95IhlcvR+ybd1ACfxTbavWTBhlLI1Die9W8M0iY4Q+IbERFuXWDutDMBfW3FCM6TfzI+Odop3ALe/dvZzFg2uSP9go1XT8ondylOifQPWF8nMm++AR5J96/UnIz8IVqnNT4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769067460; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=27t/D+au2E5C7LW4H+D00miBeJuLJZVdStU+4BuYmh4=; 
	b=eaDyfkKxPxRVa7wKWqTtOcFUdn1p2i/yyyZhYw0prb8NP+UyuEK4KONMzasLMwN9v/1OA5hFPt0peSHh8Fbfibo7jLPuxjSP5vyHt1V2gM+IFXJ6sK2qhu91rWdZkdjsU9B5KT9vtexBp5GtB9trqzsbOYOjBbLQIuhkd21o3hg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769067460;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=27t/D+au2E5C7LW4H+D00miBeJuLJZVdStU+4BuYmh4=;
	b=E+/jIas7Qh4p+m3shDjLivdA1NgpOR9fsh0txKMDmdekAFcI/OsLfNSKNJskPDta
	k7B6xtQG4Afm0gWd8AAJoUsWnXXwJlRhzPv6alDhFVqTKj6nVam/WqxLR0XcMcnzhxS
	F799VRlpXCnjfuR7iVsxs8JzXKU4hFcN+UK1qlZERlcpEr3Wtk+xLeoPXxv5THrLD+P
	v9CqdepE/9dZSN1XK8n/vEVD4B3R+njPjvC7d2Y6we0QqOrlyjviXvf0j8y0O9zjdsd
	KMe3Yuk6xQT1w/7vkvGpOWmqexzOLTuTG2EIWyJLztnOq9ulCveKaGCrGEL20K8r/6Y
	mdY8291CkQ==
Received: by mx.zohomail.com with SMTPS id 176906745890729.598189028159595;
	Wed, 21 Jan 2026 23:37:38 -0800 (PST)
Message-ID: <bf129af81c999b9b0760036ed2755e0c3da3e9c1.camel@icenowy.me>
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
Date: Thu, 22 Jan 2026 15:37:28 +0800
In-Reply-To: <f49d5e01-1e01-4393-9ba3-2079006984ae@suse.de>
References: <20260116043746.336328-1-zhengxingda@iscas.ac.cn>
	 <20260116043746.336328-4-zhengxingda@iscas.ac.cn>
	 <56e1974c-0fe6-4bdb-918d-fcf6a8b866c1@suse.de>
	 <4afa6f3110790c701c5e24901e9e66560cf21ad0.camel@icenowy.me>
	 <f49d5e01-1e01-4393-9ba3-2079006984ae@suse.de>
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
	TAGGED_FROM(0.00)[bounces-258232-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 35748629E8
X-Rspamd-Action: no action

=E5=9C=A8 2026-01-22=E6=98=9F=E6=9C=9F=E5=9B=9B=E7=9A=84 08:31 +0100=EF=BC=
=8CThomas Zimmermann=E5=86=99=E9=81=93=EF=BC=9A
> Hi
>=20
> Am 22.01.26 um 08:06 schrieb Icenowy Zheng:
> > =E5=9C=A8 2026-01-21=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 13:56 +0100=EF=
=BC=8CThomas Zimmermann=E5=86=99=E9=81=93=EF=BC=9A
> >=20
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D 8< =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > > +
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (irqs)
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0pr_warn("Unknown Verisilicon DC interrupt 0x%x
> > > > fired!\n", irqs);
> > > I'd avoid pr_warn() here. This can fill your logs quickly.
> > Then is pr_warn_once() okay?
>=20
> Yeah, warn_once should be fine.
>=20
> >=20
> > > > +
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return IRQ_HANDLED;
> > > > +}
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D 8< =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Maybe consider returning IRQ_NONE if the (irq) tests succeeds.

Well, the IRQs are read from the device's register, and the read
operation automatically ACKs the IRQ, so it sounds more appropriate to
always return IRQ_HANDLED.

(Well maybe this function should be made return void, and returning
IRQ_HANDLED should be done in the caller of this function,
vs_dc_irq_handler() )

Thanks,
Icenowy

