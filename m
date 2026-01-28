Return-Path: <devicetree+bounces-260546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMqeDFNCemmr4wEAu9opvQ
	(envelope-from <devicetree+bounces-260546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:07:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 027F3A68A0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 46C1930177A3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B218313E23;
	Wed, 28 Jan 2026 16:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLw6q2hy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087B830FC35;
	Wed, 28 Jan 2026 16:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769618655; cv=none; b=oVrF8uMg/38dvzqJeZ1l2hZF+Y1++4tGPCf5CK5+HNSfIj8RME/UC05JODaex4tN9M7pyzy0vOTYPjhUDomR3LRHuW66yP3+gPr6kLOzBS3xAe+ocGQafS46I68CPxAAOW6ALEnz1Iz6keYUXm87ZtQS1TH2hhqBGnfNUYyHAsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769618655; c=relaxed/simple;
	bh=5DovOnZ0d/vD+FS6LMq5cjmgNxGlH48eoVz7AsPLaZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sEMkfcf04ttIs+CoAxfUrChstaVX1fvLOFXgmVVFlf4H/2lrVd5IU2eMYsRWtTYq6khwShL+++yUpGI+9Jy6TqN2cf9dliH4kp1ltIWHwdAUMoC3SmyKQZYB8B4qdkqRPBozMKPd84VCDKjH37LrzYP0NNrdYo8bE2i9XJt5R9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLw6q2hy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 588A3C4CEF1;
	Wed, 28 Jan 2026 16:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769618654;
	bh=5DovOnZ0d/vD+FS6LMq5cjmgNxGlH48eoVz7AsPLaZ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aLw6q2hyyMhczgJtKVG4ZScIVWCKyS5DAyL6vgAcQs55C1JogC0jJnjvyKORQtuC/
	 VGhIiNae5eDve+hzCyVjMMOgCU7oA0yeQ8erSWGAbX4+6jnlvhnjxuUFytlfhQLhNL
	 tLjjzhy0j1YDw5X4GjVpw858EBVl3KgRMmO9whyrWsbim32i2V7oVgHx6pzgRS5mxh
	 nCD6Sfdu4O0qwfeS5jsvYxIkeexgGWOE5Lw8VYDaV68NAxaIj6W8s090YSr0n7CBpH
	 61sjaOavOOr4Wt/TIchmolOHBAcA/26Nm+iik0sCysfrzEGvSz1CguM+gfZjwfBBIy
	 OvSayE1rGmaUA==
Date: Wed, 28 Jan 2026 08:44:12 -0800
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Han Gao <gaohan@iscas.ac.cn>
Subject: Re: [PATCH v6 3/9] drm: verisilicon: add a driver for Verisilicon
 display controllers
Message-ID: <aXo83Ob9LpeHd2SC@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-4-zhengxingda@iscas.ac.cn>
 <6ea016d6-42a4-4d83-89fd-eee918a834ef@suse.de>
 <7301d5f80c7f247d4a2f82c242b3d8b8ad69f5e1.camel@icenowy.me>
 <064dd2b7-415b-4794-8867-73bdd7ac17df@suse.de>
 <4e340eb246e4e725754ed2097260c1a1acd8fe71.camel@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e340eb246e4e725754ed2097260c1a1acd8fe71.camel@icenowy.me>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260546-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,iscas.ac.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,icenowy.me:email,iscas.ac.cn:email,samsung.com:email]
X-Rspamd-Queue-Id: 027F3A68A0
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 12:03:01AM +0800, Icenowy Zheng wrote:
> 在 2026-01-28星期三的 09:54 +0100，Thomas Zimmermann写道：
> > Hi
> > 
> > Am 28.01.26 um 09:39 schrieb Icenowy Zheng:
> > > 在 2026-01-28星期三的 08:58 +0100，Thomas Zimmermann写道：
> > > > Hi
> > > > 
> > > > Am 23.01.26 um 10:28 schrieb Icenowy Zheng:
> > > > > From: Icenowy Zheng <uwu@icenowy.me>
> > > > > 
> > > > > This is a from-scratch driver targeting Verisilicon DC-series
> > > > > display
> > > > > controllers, which feature self-identification functionality
> > > > > like
> > > > > their
> > > > > GC-series GPUs.
> > > > > 
> > > > > Only DC8200 is being supported now, and only the main
> > > > > framebuffer
> > > > > is set
> > > > > up (as the DRM primary plane). Support for more DC models and
> > > > > more
> > > > > features is my further targets.
> > > > > 
> > > > > As the display controller is delivered to SoC vendors as a
> > > > > whole
> > > > > part,
> > > > > this driver does not use component framework and extra bridges
> > > > > inside a
> > > > > SoC is expected to be implemented as dedicated bridges (this
> > > > > driver
> > > > > properly supports bridge chaining).
> > > > > 
> > > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > > > > Tested-by: Han Gao <gaohan@iscas.ac.cn>
> > > > > Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
> > > > Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> > > > 
> > > > I only briefly looked over this revision, as v5 already seemed
> > > > quite
> > > > good. If you want to do a follow-up patch, see my other reply to
> > > > v5
> > > > on
> > > > storing hardware formats in the plane state.
> > > Well the kernel test robot found a small Kconfig problem in this
> > > revision -- DRM_DISPLAY_HELPER should be selected.
> > > 
> > > Maybe I'm going to send a v7 to address this.
> > > 
> > > Should I also make derived plane state a change in v7, or leave it
> > > as a
> > > follow-up?
> > 
> > That would require another round of review, I guess. Better leave it
> > for 
> > a separate series.
> > 
> > > 
> > > By the way, I think PATCH 1-5 should go through drm-misc tree, am I
> > > right? Who's going to pick it if going through drm-misc?
> > 
> > I can do that. In v7, you can merge patch 8 (MAINTAINERS) into patch
> > 3, 
> > so that it goes in as well.
> 
> Well then who should pick patch 9, the mailmap change?
> 
> I remember there is some tree for this kind of "trivial changes", but I
> forgot any detail about this.
> 
> > 
> > Patches 6 and 7 are small, so I can also take them into drm-misc if
> > they 
> > riscv maintainers are OK with that.
> 
> Well, I think there might be other TH1520 DT bits merged by Drew
> Fustini in this cycle?
> 
> Drew, can you read this? (I heard from Han Gao that his mail failed to
> get delivered to Drew). If you can read this, could you confirm that
> whether you want to merge DT patches?

Sorry for not giving a tag for the dts patches earlier. I'll do that
now. W=1 dtbs_check looks clean.

The dts patches should probably go through the thead-dt-for-next tree.
There were no other dts patches for the merge window so I had not
planned to send a thead-dt-for-next pull request for 6.20. Normally I
try to send the PR to Arnd by rc5.

I'm excited about this series so maybe there is still a possibility. If
the drivers changes are going into next now, then I could apply the dts
changes to thead-dt-for-next and ask the SoC maintainer team if it is
possible to accept a late dts PR. There is still the possibility of a
couple next releases before rc8 this weekend. The extra week for 6.19
might make this feasible.

Thanks,
Drew

