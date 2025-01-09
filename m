Return-Path: <devicetree+bounces-137007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08014A0739D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:45:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B8A33A5967
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0983F21578B;
	Thu,  9 Jan 2025 10:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="bvc5euk6";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="IC0hv460"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08069201017;
	Thu,  9 Jan 2025 10:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419500; cv=none; b=OHzFbagmIyjtpYOOK7iZ80aUAnOkB0iXnjopCFS0INWK1icSC8bYeh7vAGkvkgrZAU8ohtqeMLkyVG3ENSYZG95VMQbK0hK24hZ9oHpVR3LaX3uTw5uDOwy91n5kI7g5te0YvHrKDgM1Ym02lnRrryjq95SUd3N7wMb/Zsoi4n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419500; c=relaxed/simple;
	bh=q8VZ3l5M9lquCw0IzhQ+wZOduWO2RkpZ/NZDq1k/pvs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c6KjZZjhJEc7Y3YJXLt4f9yq25f/u2sE1BHVGoCHYjAIgRENok4EhQmV7p10PcX/Dfye98tipkLm4ssZMlyZ3aRV4+gTaV0RN4bjPUNuWmRtnN90QTOV8yv/Le3xUKrrieZpm/cHe/26En9DyzPc6/49qYtqq1duIp4kr2bFix0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=bvc5euk6; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=IC0hv460 reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736419497; x=1767955497;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5kJoHDZqRH+55SF3l7PzVgk+vsC8VaaW/Ez5OWQ84XI=;
  b=bvc5euk6N9zdJ+eSAgQQ8jHqiIN4sKqSDT6F0nOxSrT09QNXfgmsvYBF
   hb7sYTv8yOEzS0nZnfeeTrSOieZ547bV6UKYX5zzQCwzATyPvWeMjeeiA
   RJ/iZ5Iw/lIvoG+5YeyLTJGKBBhteIyhjdUbftYTdbKIvUOs88QziXawY
   5FzkWJg0B3YrXpawBR3TyufN/deaaguGF5Y76Z1BLokLcTeQBz08pRFW1
   syJZhEdBR8tqmTF8FBQgYmzD2oj1mkiLvXVoP8JKc241dzKrU1lw4Nyc7
   kfU7PSS0DR3OGC96m1nJnOnXmyTCz9xuwLs2Ldg1LoxDqwSvrg4IgunFB
   Q==;
X-CSE-ConnectionGUID: AaCL6ZttQXWBkoKBtGulJg==
X-CSE-MsgGUID: VmUt5UCMTQCawVDsQwWjsg==
X-IronPort-AV: E=Sophos;i="6.12,301,1728943200"; 
   d="scan'208";a="40947792"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 09 Jan 2025 11:44:54 +0100
X-CheckPoint: {677FA8A6-1D-C6D8D88D-F91F9E6B}
X-MAIL-CPID: 6A77AEDA09DFCD7CF9FA24EE5F8D4062_2
X-Control-Analysis: str=0001.0A682F1A.677FA8A6.00C3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 53864166AC6;
	Thu,  9 Jan 2025 11:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736419490;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5kJoHDZqRH+55SF3l7PzVgk+vsC8VaaW/Ez5OWQ84XI=;
	b=IC0hv4602zENA7rZb7l4rjnRyL9p3NDY07kjnNnnR7ghr6YYbjTRkLxpKr0WZGk6xjt9DD
	xEU8DItTqoyjrl6qQNivk0oUBSLqkhn/Bf5NFMbrw7kCNTkmSAu1KSPXAAjd7fpBW9+gBT
	ObDE5NufNA59hq98wid1meAjtepQwTRV5wJbRhx3b/d6S+r7vfJvL6bLYo8NymbVcSXg66
	VjB9GyzfaWnSag4mAssaU+IliPq+TzDs6Gt7/NfLfKqVswQnrlLOGcdPFxWhirV+h15Lo4
	L5jjFVq4sKs4JlhVi6F1rbX7qfI267IQ/2fuof08TJWHK+KSF88Za/JIXu/edg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Louis Chauvet <louis.chauvet@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery mechanism
Date: Thu, 09 Jan 2025 11:44:46 +0100
Message-ID: <2030207.yKVeVyVuyW@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20250109113834.04299a74@bootlin.com>
References: <20250108101907.410456-1-herve.codina@bootlin.com> <20250108184442.64f38fbc@bootlin.com> <20250109113834.04299a74@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Last-TLS-Session-Version: TLSv1.3

Hi Herve,

Am Donnerstag, 9. Januar 2025, 11:38:34 CET schrieb Herve Codina:
> Hi Alexander,
>=20
> On Wed, 8 Jan 2025 18:44:42 +0100
> Herve Codina <herve.codina@bootlin.com> wrote:
>=20
> > > >  #include <drm/drm_atomic_helper.h>
> > > >  #include <drm/drm_bridge.h>
> > > > +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() needs drm=
_drv_uses_atomic_modeset() */   =20
> > >=20
> > > Shouldn't this include be added to include/drm/drm_modeset_lock.h ins=
tead? =20
> >=20
> > Yes indeed. I will change that in the next iteration.
>=20
> I tried to add '#include <drm/drm_drv.h>' in include/drm/drm_modeset_lock=
=2Eh
> but it breaks the build in several places.
>=20
> First, I cannot add it at the begining of drm_modeset_lock.h.
> The inclusion path leads to:
>   drm_modeset_lock.h
>     drm/drm_drv.h
>       drm/drm_device.h
>         drm/drm_mode_config.h
>            struct drm_mode_config definition
>=20
> The struct drm_mode_config needs the struct drm_modeset_lock defined.
> struct drm_modeset_lock is defined in drm_modeset_lock.h.
>=20
> Even if I don't like to add include files in the middle of a header filer,
> I tried to include drm/drm_drv.h just before the DRM_MODESET_LOCK_ALL_BEG=
IN()
> definition in drm_modeset_lock.h.
>=20
> This also breaks the build in several places. For instance:
>   In file included from ./include/drm/drm_modeset_lock.h:162,
>                    from ./include/drm/drm_mode_config.h:32,
>                    from ./include/drm/drm_device.h:9,
>                    from drivers/gpu/drm/drm_dumb_buffers.c:26:
>   ./include/drm/drm_drv.h: In function =E2=80=98drm_core_check_all_featur=
es=E2=80=99:
>   ./include/drm/drm_drv.h:522:28: error: invalid use of undefined type =
=E2=80=98const struct drm_device=E2=80=99
>     522 |         u32 supported =3D dev->driver->driver_features & dev->d=
river_features;
>         |                            ^~
>=20
> I stop here, go back and choose to keep '#include <drm/drm_drv.h>' in ti-=
sn65dsi83.c
>=20
> Is that ok for you?

Mh, okay. It's up to the DRM maintainer to decide what to do. I just
pointed out it looks weird to me.

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
http://www.tq-group.com/



