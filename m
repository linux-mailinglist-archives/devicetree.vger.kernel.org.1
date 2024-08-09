Return-Path: <devicetree+bounces-92378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A71294CF1E
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 13:00:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AA551F2211A
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 11:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB9FA192B66;
	Fri,  9 Aug 2024 11:00:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6891922FF
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 11:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723201226; cv=none; b=tKLXn5aDwHyriYp56YpJ+0j5ZfZW//yXrpaoNEKI7etm1LSjPblLusAyeDFl8TBzu/WMqm4w17PERvb3e46E8sKrSvTm0gRV55PvXk86BukQWefDM8JzL3EH+kV2C+wlpLJ3ut2m1UkC02f7Y1mfkRt1hbK+2WwtykiDGlaZ0JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723201226; c=relaxed/simple;
	bh=3/UkxXXnrlVW372FTUNjxvG1D/bdGnXMdlP3Ydhyhew=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=uW8fnPZkqu/1jDlbct3nmKulB0XygTzNWlldTK/MrcsvQ0cOify3lvQOVIR8VLUsQiOexnBJyuE6h8+EHJ6inZwzLYjzw0yJOQGXeXaFZ/cAP9ynhHbjoOE/oOE/iSc3K4QWXitprPdzWcosIV4OFWv5SBESVZAHA/VGa+zCeZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1scNLx-0003B9-00; Fri, 09 Aug 2024 13:00:13 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1scNLw-005eDl-CX; Fri, 09 Aug 2024 13:00:12 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1scNLw-000ART-0u;
	Fri, 09 Aug 2024 13:00:12 +0200
Message-ID: <88b4657ae81f860c8d23bdc855b79e58d4146616.camel@pengutronix.de>
Subject: Re: [PATCH v3 11/12] drm/imx: parallel-display: switch to
 imx_legacy_bridge / drm_bridge_connector
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
Date: Fri, 09 Aug 2024 13:00:12 +0200
In-Reply-To: <20240602-drm-imx-cleanup-v3-11-e549e2a43100@linaro.org>
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
	 <20240602-drm-imx-cleanup-v3-11-e549e2a43100@linaro.org>
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
> Use the imx_legacy bridge driver instead of handlign display modes via
> the connector node.
>=20
> All existing usecases already support attaching using
> the DRM_BRIDGE_ATTACH_NO_CONNECTOR flag, while the imx_legacy bridge
> doesn't support creating connector at all. Switch to
> drm_bridge_connector at the same time.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

