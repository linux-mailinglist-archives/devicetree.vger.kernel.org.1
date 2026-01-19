Return-Path: <devicetree+bounces-256973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 35974D3B063
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 17:21:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 575B0304BC96
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A54C82C0F6F;
	Mon, 19 Jan 2026 16:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="pUPvqtSe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731D12FFDF4;
	Mon, 19 Jan 2026 16:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768839532; cv=none; b=k3yyHuEh6utjrOtYbiQ7KQQv4kAKWYtF5DnHV5ETf24e/3EKc61u5HwP9qVcpCFquWUHpwZLxwWgKAgC3dbLdauk1D6x4RJXV1i/245+5X2fbGGdO1n8ooFG0YMW3a9jdgaO6nETV8vdltrICPNa5C0guDP4QOk/Yp2BbHSxxD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768839532; c=relaxed/simple;
	bh=jyMZSl/pz+/Y/5Zw2mKUdp5jMPp9YfQaPG4GQk8Hw00=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=EO21pPQsm0GlyAk664jUYdbxCpCpkErz5WBjavwHi424vq+ayWqlgUwg2Pa5X6RJms+wi9YWAepnTvHIl2b6pXpAu6Fi1yswjl3Yvw9r8HAGJ/qEnObRe1AQf8A8MH+XN/NYZlP9YrOd+7+nUPKjpAcfhmzQoa6kO1hH0PQzKU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=pUPvqtSe; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 00C671A297C;
	Mon, 19 Jan 2026 16:18:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C872B60731;
	Mon, 19 Jan 2026 16:18:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4DE0810B6B16B;
	Mon, 19 Jan 2026 17:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768839515; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=6IzZqITfxZfsqLMD97cOvLx/oTz7z6A1f/3WBHICk0E=;
	b=pUPvqtSehbxN1xcBr3URpoIUzPLIdZF4ymZLMVtPVq6B+npB/nl1peqzjW3p39QZBEKAE2
	ZTWfkjRz630zT7QEuHuWw2cfvECsBSs9Pj/ZV2ugWXo+B6s+yGT7iPREPZsY2MnbKOgp53
	n2jtpnm8kiqsDutFGsV/2AGTFsIHYaDnCPmV0NIqYzWsJZ4JXmZgpaUEPPSnbnbLl04XXD
	MQlO0OsfnbeuYn5h4REjHALwDvQFmhBbnccS1LSclOWP2Wtiv0B/Mk9BU3+DdNc/SOVaDM
	ia8XbpAeNL3OQd4VA64W43PEkX+DE7zbyYinOHy4P4oJkFNgwmB+Y05Q1YW4Dw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 19 Jan 2026 17:18:31 +0100
Message-Id: <DFSP9XSQ9Q4F.3W0523ABWR97X@bootlin.com>
Subject: Re: [PATCH v4 16/25] drm/tilcdc: Modernize driver initialization
 and cleanup paths
Cc: "Markus Schneider-Pargmann" <msp@baylibre.com>, "Bajjuri Praneeth"
 <praneeth@ti.com>, "Louis Chauvet" <louis.chauvet@bootlin.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>, "Miguel Gazquez"
 <miguel.gazquez@bootlin.com>, "Herve Codina" <herve.codina@bootlin.com>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>
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
X-Mailer: aerc 0.20.1
References: <20260116-feature_tilcdc-v4-0-2c1c22143087@bootlin.com>
 <20260116-feature_tilcdc-v4-16-2c1c22143087@bootlin.com>
In-Reply-To: <20260116-feature_tilcdc-v4-16-2c1c22143087@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3

On Fri Jan 16, 2026 at 6:02 PM CET, Kory Maincent (TI.com) wrote:
> Refactor the driver initialization to use modern DRM managed resource
> APIs, simplifying the code.
>
> The tilcdc_init and tilcdc_fini wrapper functions are removed since they
> served no purpose after the component framework was eliminated. Their
> logic is integrated directly into probe and remove.
>
> Key changes:
> - Use devm_drm_dev_alloc() instead of drm_dev_alloc().
> - Use drmm_mode_config_init() instead of drm_mode_config_init().
> - Align the remove path with the probe error path to ensure consistent
>   cleanup ordering in both success and failure cases.
> - Adjust platform_set_drvdata() to store the private structure instead
>   of the drm_device, matching the new allocation pattern.
>
> These changes reduce error-prone code while maintaining the same
> functional behavior.
>
> Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

