Return-Path: <devicetree+bounces-305813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gYWcDgw0H2rEigAAu9opvQ
	(envelope-from <devicetree+bounces-305813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 21:50:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4E16318A4
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 21:50:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=XgLezGzW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305813-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305813-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9BB130485FD
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 19:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199E6279DAF;
	Tue,  2 Jun 2026 19:48:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BB921A434;
	Tue,  2 Jun 2026 19:48:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780429736; cv=none; b=Q6rcrkAM/mzC2P52IqawydlG2UiBxOers7Uog701qtRxJ1Ja10ZecrRKfiQO0LB3dxmmLk7G3BaIaUeuLMGwFq/vKyhhg+YTkPOINwSANv/SiMlfyQFzemxfRP/DPfhXA2vJI5Mzd3CvyBm0tlHFxhy5ZJ8UZFjtmebxvwfDzpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780429736; c=relaxed/simple;
	bh=eI2SY4vAWBUcVI4Itia0BmwBL3S8+RC/4OG0UhuQZT8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Vl6tOvPW1Rgj0NFhZb3MsgOdtbhjWDCoIVx5iUsac5PsHvP8e7aIw9rAIHZrxSwTKzKiL80IVLW3l187WLwEXIOsOQbFsmM4Yjg1S+hPj4pE2ijlaDCLrvZUkUZVPhdrbipt+1buF9xpBJW49l0GAZ3I+HAkWFBt2q4IydiQJWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=XgLezGzW; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HenCZbg2uScNOk5ldzqOmgfKvZAoY5QZcekhLhVnths=; b=XgLezGzWa4cupGlPwOHDrGp6+a
	anmGz58rjZwST/QbDnD6luLY6rIiojNIK4QmJzMxOhdmP9MM3GOFLiOApS0XbbN/qS93ScW9LHsZd
	qFoxthq9wziBXEFVHnDHyf4spCfl/Xbf7jiSq/xR6cs2aYUNBryzRI2BYr+5H9vIMoMXcLqS8LnFM
	u1I7t9cJUkB/U0iH3vcPnUb6Q6zZbPaGEFUepK0KB15PX030sm55TVbB2NiJx9z1YeIMf10nYM7qr
	fQn4zBKkKgdwr1a+Uu1eRgTeaZ4K0MwoKhUDR2QAvUWobjAHBYFz9onUD8ye01qgXQLUIXK2bBYVV
	cpd8ObhA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Damon Ding <damon.ding@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Alexey Charkov <alchark@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v2 02/12] drm/rockchip: dw_dp: Release core resources
Date: Tue, 02 Jun 2026 21:48:35 +0200
Message-ID: <27595863.kmuVQn2iE0@phil>
In-Reply-To:
 <20260501-synopsys-dw-dp-improvements-v2-2-d7e7f6bac77f@collabora.com>
References:
 <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
 <20260501-synopsys-dw-dp-improvements-v2-2-d7e7f6bac77f@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:andy.yan@rock-chips.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:dmitry.baryshkov@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:sebastian.reichel@collabora.com,m:cristian.ciocaltea@collabora.com,m:damon.ding@rock-chips.com,m:lumag@kernel.org,m:alchark@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:kernel@collabora.com,m:linux-arm-kernel@lists.infradead.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305813-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[rock-chips.com,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,oss.qualcomm.com,bootlin.com,collabora.com];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,rock-chips.com,kernel.org,gmail.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[sntech.de:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:email,sntech.de:from_mime,sntech.de:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA4E16318A4

Am Freitag, 1. Mai 2026, 00:20:29 Mitteleurop=C3=A4ische Sommerzeit schrieb=
 Sebastian Reichel:
> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>=20
> Core resources such as the DisplayPort AUX channel get initialized and
> registered during dw_dp_bind(), but are never unregistered, which may
> lead to memory leaks and/or use-after-free:
>=20
> [  224.661371] BUG: KASAN: slab-use-after-free in device_is_dependent+0xe=
0/0x2b0
> [  224.662015] Read of size 8 at addr ffff00011aee8550 by task modprobe/6=
58
> [  224.662612]
> [  224.662752] CPU: 7 UID: 0 PID: 658 Comm: modprobe Not tainted 7.0.0-rc=
2-next-20260305 #14 PREEMPT
> [  224.662759] Hardware name: Radxa ROCK 5B (DT)
> [  224.662762] Call trace:
> [  224.662764]  show_stack+0x20/0x38 (C)
> [  224.662772]  dump_stack_lvl+0x6c/0x98
> [  224.662777]  print_report+0x160/0x4b8
> [  224.662783]  kasan_report+0xb4/0xe0
> [  224.662790]  __asan_report_load8_noabort+0x20/0x30
> [  224.662796]  device_is_dependent+0xe0/0x2b0
> [  224.662802]  device_is_dependent+0x108/0x2b0
> [  224.662808]  device_link_add+0x1f8/0x10b0
> [  224.662813]  devm_of_phy_get_by_index+0x120/0x200
> [  224.662819]  dw_dp_bind+0x34c/0xb10 [dw_dp]
> [  224.662830]  dw_dp_rockchip_bind+0x194/0x250 [rockchipdrm]
> [  224.662864]  component_bind_all+0x3a8/0x720
> [  224.662869]  rockchip_drm_bind+0x120/0x390 [rockchipdrm]
> [  224.662899]  try_to_bring_up_aggregate_device+0x76c/0x838
> [  224.662904]  component_master_add_with_match+0x1f4/0x230
> [  224.662909]  rockchip_drm_platform_probe+0x420/0x538 [rockchipdrm]
> [  224.662939]  platform_probe+0xe8/0x168
> [  224.662945]  really_probe+0x340/0x828
> [  224.662950]  __driver_probe_device+0x2e0/0x350
> [  224.662954]  driver_probe_device+0x80/0x140
> [  224.662959]  __driver_attach+0x398/0x460
> [  224.662964]  bus_for_each_dev+0xe0/0x198
> [  224.662968]  driver_attach+0x50/0x68
> [  224.662972]  bus_add_driver+0x2a0/0x4c0
> [  224.662977]  driver_register+0x294/0x360
> [  224.662982]  __platform_driver_register+0x7c/0x98
> [  224.662987]  rockchip_drm_init+0xc4/0xff8 [rockchipdrm]
>=20
> Since a previous commit exported dw_dp_unbind() function in DW DP core
> library to take care of the necessary cleanup, use this in the
> component's unbind() callback, as well as in its bind() error path.
>=20
> Fixes: d68ba7bac955 ("drm/rockchip: Add RK3588 DPTX output support")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

picked the same one from Cristian's series



