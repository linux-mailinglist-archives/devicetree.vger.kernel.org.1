Return-Path: <devicetree+bounces-92374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA68794CF15
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 13:00:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67CF92833FC
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 11:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606891917FA;
	Fri,  9 Aug 2024 11:00:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B847A18CBF8
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 11:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723201222; cv=none; b=VuNsrQkbdC6hK7iuRLeEMkMtqG06PHG4PwKRzRdG9YiIDAJ7Uqwdj4TVQ+ra3m7jHMyR4XKgtWLZHZAtfAdMaGWqdp9RReY/oRJJw4jKg3Berfz4uRg3Bg1kZlAA442KYbQy/APZUmLj+hl46iUv7yjlomOysPepPIih/m8lL7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723201222; c=relaxed/simple;
	bh=0JOGpuNqXzOTD6WolQYyDA6A/dGLryHplgnyL3pJ7vg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mOtmVSBl86AuMy5cQm/szp+adxPOgqbnOIn/rtLkmUrb7S6S6DFILyLwvgUgY39H4hgJrK7fHWzTYSTglx/FbW3beAusiQ/vdokY7ZeO5jSb3VuVcD0wG0IVOqVk9EyrbU+BBSpdqDl/yXDNiJIH7gZ4ABySeAQeSjtmtABMNVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1scNLo-00030o-HG; Fri, 09 Aug 2024 13:00:04 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1scNLn-005eDV-Eu; Fri, 09 Aug 2024 13:00:03 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1scNLn-000AQ5-1B;
	Fri, 09 Aug 2024 13:00:03 +0200
Message-ID: <b89f0ed8ebfb4fb953db0635f7d56ac5debbbc12.camel@pengutronix.de>
Subject: Re: [PATCH v3 07/12] drm/imx: ldb: switch to drm_panel_bridge
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Date: Fri, 09 Aug 2024 13:00:03 +0200
In-Reply-To: <20240602-drm-imx-cleanup-v3-7-e549e2a43100@linaro.org>
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
	 <20240602-drm-imx-cleanup-v3-7-e549e2a43100@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On So, 2024-06-02 at 15:04 +0300, Dmitry Baryshkov wrote:
> Defer panel handling to drm_panel_bridge, unifying codepaths for the
> panel and bridge cases. The MFD_SYSCON symbol is moved to select to
> prevent Kconfig symbol loops.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

