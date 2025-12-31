Return-Path: <devicetree+bounces-250821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ACBCEC12B
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 15:20:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84CA730133A3
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 14:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BACC625A334;
	Wed, 31 Dec 2025 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="13wHxzin"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8603E19F12A;
	Wed, 31 Dec 2025 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767190836; cv=none; b=fWg44tpqkl6TLfPkz3MNMUY9X2g2og3K0JMFDUGlzcPf0DCAJni+uW/nnkv3XcXypD/55acZcbLFDdVjjDj34E+cr/0MMpFGIiB4xyWR9gJ4vbkFcFbkYDVtv/N7DkkZTkoiOvVeAt3x7rb6jDLdCEyoKOB2BsmSjwdMGcGK9IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767190836; c=relaxed/simple;
	bh=Vqw+FMGdsBIhnM6kRP5WMkUgnWBcpk7lg1iTCLyVUYM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=FJQKBHzNS5KGSJo64y1b1imPGBpvcPuM9m1rPsIM1b4x3A5lrQaIOy6ZboL79MJKjzl58+EHifMdImswmtHaEqQZ9M3pnMbakZj/pgoorvDQ9HJe2xbqNOIrwY08EMV082JvoACj7JTghLfk2IM/tRkvJrnVhZdWp5JB5ZOKWQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=13wHxzin; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id A8741C1AE2B;
	Wed, 31 Dec 2025 14:20:06 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 24E1D60744;
	Wed, 31 Dec 2025 14:20:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D1397113B0770;
	Wed, 31 Dec 2025 15:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767190830; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=s/LBclbjVdapialdhCPRdRaESKqlpOnpyxq4+NMgleQ=;
	b=13wHxziny/E58+NBQrqX+3oqwXTJN93YZxWKmfk5Vk+lqAW1vaeCJkJLSB+5n0yxC5C0i6
	peGkD9i2Lg28sPjmOWunBbHe1zqqgF4XTN44q8Uzl7NhT7l6RKxtK9qDxicfDKP/68Zdon
	ju0bXrBWNhg3k9kYcMUK0beztObZRm4JPE3U9sEkhvXyTcuK333O6r8kXtLaEWhYvMQD2u
	6wlC3QxgUhFpBujq2T3zNWeMC8TdZ9bsKGNgxiC4jF48r6qANgMY/1mv3ZyhcuMP8j0bcp
	8785748qfhPRghOe6yvJgSmnhDkzlaOHBtvUyKUu5H4/KFh4FcxTeIH6mHrawQ==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 31 Dec 2025 15:20:19 +0100
Message-Id: <DFCGV315JITK.1TXTXWUOMLMB9@bootlin.com>
Subject: Re: [PATCH v4 3/9] drm: verisilicon: add a driver for Verisilicon
 display controllers
Cc: "Han Gao" <rabenda.cn@gmail.com>, "Yao Zi" <ziyao@disroot.org>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>, "Icenowy
 Zheng" <uwu@icenowy.me>
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Drew Fustini" <fustini@kernel.org>, "Guo
 Ren" <guoren@kernel.org>, "Fu Wei" <wefu@redhat.com>, "Philipp Zabel"
 <p.zabel@pengutronix.de>, "Heiko Stuebner" <heiko@sntech.de>, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Michal
 Wilczynski" <m.wilczynski@samsung.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-4-zhengxingda@iscas.ac.cn>
In-Reply-To: <20251224161205.1132149-4-zhengxingda@iscas.ac.cn>
X-Last-TLS-Session-Version: TLSv1.3

On Wed Dec 24, 2025 at 5:11 PM CET, Icenowy Zheng wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
>
> This is a from-scratch driver targeting Verisilicon DC-series display
> controllers, which feature self-identification functionality like their
> GC-series GPUs.
>
> Only DC8200 is being supported now, and only the main framebuffer is set
> up (as the DRM primary plane). Support for more DC models and more
> features is my further targets.
>
> As the display controller is delivered to SoC vendors as a whole part,
> this driver does not use component framework and extra bridges inside a
> SoC is expected to be implemented as dedicated bridges (this driver
> properly supports bridge chaining).
>
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>

[...]

> +++ b/drivers/gpu/drm/verisilicon/vs_bridge.h

> +struct vs_bridge {
> +	struct drm_bridge base;
> +	struct drm_encoder *enc;
> +	struct drm_connector *conn;
> +
> +	struct vs_crtc *crtc;
> +	struct drm_bridge *next;

It is a common convention to call this 'next_bridge'. This makes it easier
to understand but also to grep and find similar patterns.

For info, we are working to move to 'struct drm_bridge::next_bridge' [0] as
you can see from example patches like [1]. However this currently applies
only to drivers using of_drm_find_bridge(), so it does not affect your
driver.

I'm sorry I have seen your patch only at v4.

[0] https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3fdeae134ba956a=
acbd87d5532c025913c98fc49
[1] https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/8f92a5fcbfe33f8=
6b08f5f74dcc58a41425ea8c0

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

