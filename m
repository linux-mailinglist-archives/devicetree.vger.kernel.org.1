Return-Path: <devicetree+bounces-247516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE463CC84DB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:56:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A6303301DC2A
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157A03563CC;
	Wed, 17 Dec 2025 14:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="H0lesXem"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D58934CFB9;
	Wed, 17 Dec 2025 14:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765981601; cv=none; b=E9lw88AJA3EQFpc0aNGf1SM5iIW5I3tEF2ovSigeL7WmfypxU82pJrPZg4eQ9hIML5sFsU8xGsIZFAOD4Qy0atFzxi8nqlKx4sm77XNTsNwFVTIPCtqMXiCi1EHPLGMsxLCw7+2K3V+c2hMs6onarwBXYWoBUqTBCfxyjMjOXlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765981601; c=relaxed/simple;
	bh=0mr/E9voX2iYTt9HH8L6uc1WX/QSZOxrGrnEiRAjEPQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=I+Xp2FBDiXk6oBeKvJ5D2eRXrAv2IoTj1YFvRUMSy17r9c3OhzcVfbg35qgG4/ueWQpNuCs06jDDnswdGDRYp6nw56h7jKLirdvswGE3oz1VXIrnnUMoXjLWuu5tlausBSOECrTGmlN05xOF/8vuBftU+9aA7Rj33uqkYzP/3RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=H0lesXem; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 7A00CC1A59E;
	Wed, 17 Dec 2025 14:26:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0BF366072F;
	Wed, 17 Dec 2025 14:26:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 97F4A102F0ADF;
	Wed, 17 Dec 2025 15:26:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765981597; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=0mr/E9voX2iYTt9HH8L6uc1WX/QSZOxrGrnEiRAjEPQ=;
	b=H0lesXemvkDdxGV4MXkYIgxoiCWHb+cudYjehjVdPltlnl68jjoDsiZblP3vPbEgcSHFyI
	l2nshDFYtymhU4g9zKRDU5qFtqLry8VyZhfjbgt+blws/+i8W/iV5xaUV9qm57/INCeMCo
	xQB811PTB7LN4z0vlgRgrgWAlkeuwu7r1ckceP4mFQkc8h8YvpdiNujdP13G4kHzOmNV+S
	9dnAW0+2/BgmI4vWojUzB0BZuFC3wdsqvTASAtN903taLncGIJZexQr37h1Rj9LXUfBQUp
	eMlCGFzJFIsmpwzOPQvjoW9t3AMoHbbFcyaiXHQJEPLL3jjwD3FDkdjQ/T9gcw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 17 Dec 2025 15:26:33 +0100
Message-Id: <DF0K882BFGXR.24HWWIISN3RVS@bootlin.com>
Cc: "Markus Schneider-Pargmann" <msp@baylibre.com>, "Bajjuri Praneeth"
 <praneeth@ti.com>, "Louis Chauvet" <louis.chauvet@bootlin.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>, "Miguel Gazquez"
 <miguel.gazquez@bootlin.com>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>
To: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>, "Jyri Sarha"
 <jyri.sarha@iki.fi>, "Tomi Valkeinen" <tomi.valkeinen@ideasonboard.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Russell King"
 <linux@armlinux.org.uk>, "Bartosz Golaszewski" <brgl@bgdev.pl>, "Tony
 Lindgren" <tony@atomide.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>,
 "Neil Armstrong" <neil.armstrong@linaro.org>, "Robert Foss"
 <rfoss@kernel.org>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
 "Jonas Karlman" <jonas@kwiboo.se>, "Jernej Skrabec"
 <jernej.skrabec@gmail.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v2 18/20] drm/bridge: tda998x: Remove useless
 tda998x_connector_destroy wrapper
X-Mailer: aerc 0.20.1
References: <20251211-feature_tilcdc-v2-0-f48bac3cd33e@bootlin.com>
 <20251211-feature_tilcdc-v2-18-f48bac3cd33e@bootlin.com>
In-Reply-To: <20251211-feature_tilcdc-v2-18-f48bac3cd33e@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3

On Thu Dec 11, 2025 at 5:39 PM CET, Kory Maincent (TI.com) wrote:
> Use directly drm_connector_cleanup in the destroy ops instead of having
> a custom function that does nothing more.
>
> Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

