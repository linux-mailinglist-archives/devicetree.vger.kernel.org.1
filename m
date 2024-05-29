Return-Path: <devicetree+bounces-70541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1238D3A20
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 16:59:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAF51B241F7
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BA315ADAA;
	Wed, 29 May 2024 14:59:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446FBD27E
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 14:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716994784; cv=none; b=HxjMDbAa8chUz31EOqJVsFz2V7LrwrdRn+mNMUcS59Vx0QLgyXdWss8snKWOOvbZe796ZiASAgNrZfhDUN4XzUbgHMNLbsHZqa5T7v9Y9YEHSI9sXySdRzVZWGFDegj4fmJYSysPvioUZxB+Uo6lTfzBErckl7r2qsvJAo/ct3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716994784; c=relaxed/simple;
	bh=DmCpfKCYn9/oqZtK1VCClsxj7fkxnFmXcv5mMqHRi70=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=aSEDbGyFoMJ83XMQNmof2tXcxNUyEM+0o62a7pzN9tZtUHALJUDgcX60SXw0nPCY7KrQEi7K637h9dL7GvW24nlzvfkb9+IP27D8pc6RHn3fOe0E4ovhl9Ye5HDl/GMxvitVNAuULzkJzXvEq1ntIhbDjMH1tHprYnCj8E+h3q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKm4-0003Zc-SC; Wed, 29 May 2024 16:59:32 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKm3-003TeA-Ui; Wed, 29 May 2024 16:59:31 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKm3-000Ddz-2o;
	Wed, 29 May 2024 16:59:31 +0200
Message-ID: <1c92e3e7f10af4beb3d5d87e19f3d556b56dc67e.camel@pengutronix.de>
Subject: Re: [PATCH v2 03/12] drm/imx: cleanup the imx-drm header
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
Date: Wed, 29 May 2024 16:59:31 +0200
In-Reply-To: <20240331-drm-imx-cleanup-v2-3-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
	 <20240331-drm-imx-cleanup-v2-3-d81c1d1c1026@linaro.org>
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

On So, 2024-03-31 at 23:29 +0300, Dmitry Baryshkov wrote:
> Drop unused defines and obsolete prototypes from the imx-drm.h header.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

