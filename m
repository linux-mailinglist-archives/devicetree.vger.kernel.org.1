Return-Path: <devicetree+bounces-112758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 576649A3735
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 09:32:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DEF61F22AFF
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 07:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFCE8185B5F;
	Fri, 18 Oct 2024 07:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="GBEeRAb1";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="M2Cewint"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89DA16D4E6;
	Fri, 18 Oct 2024 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729236758; cv=none; b=qf0a/Ip17zTzxPzbXPGzqCKqmbYsfZJzKaKZ3PcOtZ8DwSsBpzSmqBjtDjvgyuNBWGVYuByy8UcQO7kkFjiZh1KRNuNaK+0mZptOCoDkcAby7bqHUFFtYXmI/34iLVMnIFZQAF8eguH4/c0MJL3c1vS1w3+GFpGWB7Ci/VIWW50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729236758; c=relaxed/simple;
	bh=rnX3urMY7eauJPF3vIsiRxe1XtHNowUicZLjrD2H758=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n5Lhz2q/hN5TICxEhc82xlbHgj/QmLTIiIsvli/YoZ/FNC0CN0Wshu7cOmzz0N+JjJtdg5N3BQQ/B+vHaQETvLL4bB8/ZvOBR+4+QVckeq22sToxdvF9Y7MLO9y2WbnE8eYIKvQe7JwQPxWaYV7DxEL9YcG0ZeqewzCZETcCphU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=GBEeRAb1; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=M2Cewint reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1729236754; x=1760772754;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=iD4e3E6WAb3v3t3LKPK8kagukMfYt9x+P4AkPaprOXM=;
  b=GBEeRAb184gDhi3Z8p2Mu6PxgxW0/J0Etiw9KD8xH7kkGMXuLIPB7zS4
   7qyv6VIE8c82KOmEhRkXek3y40Rq0pDUtccKEotCYYCy5XXv563iH3kbt
   DDfaeeLr95k0/3HOqVcZLRl29IigQc0Hltzvlp1AU2qzc8R8IkdCGtpHh
   I9VDHNlGISIx39hWfoaNKa3DnRSdEXwjraZtbww7gDU3ZKJfXlWYXUggW
   PhGGshdxLsA8xRoMFrf2Vb1xaX+hwDBg55NjudmIQwHVCAJvw6EuDjQHw
   Wsy6XCXr2TNCbJVdBUM2Ta5gZ2UD2qAmVUo6odKKrLczHH6WCfDdAuodC
   g==;
X-CSE-ConnectionGUID: 5s2JibW8TkKhBDmm3SSLwg==
X-CSE-MsgGUID: dPcjoGrGROOj/ycT4Q4aVw==
X-IronPort-AV: E=Sophos;i="6.11,213,1725314400"; 
   d="scan'208";a="39534799"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 18 Oct 2024 09:32:31 +0200
X-CheckPoint: {67120F0F-B-236878CD-F32272AF}
X-MAIL-CPID: 9916A76D1D510FFF75EFD12B72D979C2_2
X-Control-Analysis: str=0001.0A682F1B.67120F0F.00A7,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C735B17031A;
	Fri, 18 Oct 2024 09:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1729236746;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=iD4e3E6WAb3v3t3LKPK8kagukMfYt9x+P4AkPaprOXM=;
	b=M2CewintWs1uqCXwnMPUcVGIgkNZwGx05Xj/m43DnyXgqZOPCN2RQrUa55HHdXP/wMOzXU
	dMrwvNEJVLtiTcJdKSNSo+dJGuWtcimQoFMGSqaIh9pUekPd/a3ul7jtbWSu9GnaKCBMwp
	DDG3rd4DE1jvGaA2OO/Ff17o/XuDEOtlbUqf99Xz4xrkHCkLw9p++mm5LVrQd2ona9hunw
	kB+16dDFE+uZF+7dU+v1iAbGV6WnR5RFvUsFUcr7HeDbZfU9JtyhuvO6rxXGuMpy2dj1y2
	VyDSh+LhZEz4RBCtvZcX/TVkgstDPntK8nNDApeoajNaj9yaRnN9ZlHteOEM3g==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, marex@denx.de, stefan@agner.ch, dmitry.baryshkov@linaro.org, Liu Ying <victor.liu@nxp.com>
Subject: Re: [PATCH 4/5] drm/bridge: imx8mp-hdmi-tx: Set output_port to 1
Date: Fri, 18 Oct 2024 09:32:22 +0200
Message-ID: <46745071.fMDQidcC6G@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20241018064813.2750016-5-victor.liu@nxp.com>
References: <20241018064813.2750016-1-victor.liu@nxp.com> <20241018064813.2750016-5-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi,

Am Freitag, 18. Oktober 2024, 08:48:12 CEST schrieb Liu Ying:
> Set DW HDMI platform data's output_port to 1 in imx8mp_dw_hdmi_probe()
> so that dw_hdmi_probe() called by imx8mp_dw_hdmi_probe() can tell the
> DW HDMI bridge core driver about the output port we are using, hence
> the next bridge can be found in dw_hdmi_parse_dt() according to the port
> index, and furthermore the next bridge can be attached to bridge chain in
> dw_hdmi_bridge_attach() when the DRM_BRIDGE_ATTACH_NO_CONNECTOR flag is
> set.  The output_port value aligns to the value used by devicetree.
> This is a preparation for making the i.MX8MP LCDIF driver use
> drm_bridge_connector which requires the DRM_BRIDGE_ATTACH_NO_CONNECTOR
> flag.
>=20
> Signed-off-by: Liu Ying <victor.liu@nxp.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c b/drivers/gpu/dr=
m/bridge/imx/imx8mp-hdmi-tx.c
> index 8fcc6d18f4ab..54a53f96929a 100644
> --- a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
> +++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
> @@ -96,6 +96,7 @@ static int imx8mp_dw_hdmi_probe(struct platform_device =
*pdev)
>  		return dev_err_probe(dev, PTR_ERR(hdmi->pixclk),
>  				     "Unable to get pixel clock\n");
> =20
> +	plat_data->output_port =3D 1;
>  	plat_data->mode_valid =3D imx8mp_hdmi_mode_valid;
>  	plat_data->phy_ops =3D &imx8mp_hdmi_phy_ops;
>  	plat_data->phy_name =3D "SAMSUNG HDMI TX PHY";
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



