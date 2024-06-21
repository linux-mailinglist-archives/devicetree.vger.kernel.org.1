Return-Path: <devicetree+bounces-78432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDC691244F
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:48:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC23F1C22124
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7308917554C;
	Fri, 21 Jun 2024 11:45:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3154153580
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718970353; cv=none; b=CediS9fe5wcuV6yAaqEC5tWEpc2rmUbYY0V/Smkl+LFfWQZoIupBkvFjENS+mcjzBloWQwV98oYfoOnYZFF7tgRvedkm6B1yGCNxBgP5TOfuSWSHm1h6hJyv+BpZB0d4g5pZG75aTd2YC+oa58ZrTk1S4/kafEdqGjdAs/9KyzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718970353; c=relaxed/simple;
	bh=uWTRWW7B95x3LGJfYoqRdq663wzUpFIq+873sqtjHjA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kaZTdM9Oe5fTBEfayDEpFkSHo46rHD76xURYxDQy+4XA0JRY/MBX6Kr3Ksu3pheXQDcQkEhAzkfRAd5OLbSL/ewDTKmI86VDfpbc3orDc2A8FLVtyBK3k1gDERyKpoHdymrm/HaPx+vjeWuY5EPwfF8CyDOWEwhC/7HTFmj/zbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKchx-00089F-JS; Fri, 21 Jun 2024 13:45:33 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKchu-003vp1-IG; Fri, 21 Jun 2024 13:45:30 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKchu-0008vo-1Y;
	Fri, 21 Jun 2024 13:45:30 +0200
Message-ID: <bd0e85f42ef74f6f927020cbee6879351d1c3e9e.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] mmc: sdhci-of-ma35d1: Add Novoton MA35D1 SDHCI
 driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Shan-Chun Hung <shanchun1218@gmail.com>, ulf.hansson@linaro.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 adrian.hunter@intel.com,  pbrobinson@gmail.com, serghox@gmail.com,
 mcgrof@kernel.org,  prabhakar.mahadev-lad.rj@bp.renesas.com,
 forbidden405@outlook.com,  tmaimon77@gmail.com, andy.shevchenko@gmail.com, 
 linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ychuang3@nuvoton.com, schung@nuvoton.com
Date: Fri, 21 Jun 2024 13:45:30 +0200
In-Reply-To: <20240619054641.277062-3-shanchun1218@gmail.com>
References: <20240619054641.277062-1-shanchun1218@gmail.com>
	 <20240619054641.277062-3-shanchun1218@gmail.com>
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

On Mi, 2024-06-19 at 13:46 +0800, Shan-Chun Hung wrote:
> This adds the SDHCI driver for the MA35 series SoC. It is based upon the
> SDHCI interface, but requires some extra initialization.
>=20
> Signed-off-by: schung <schung@nuvoton.com>
> ---
>  drivers/mmc/host/Kconfig           |  13 ++
>  drivers/mmc/host/Makefile          |   1 +
>  drivers/mmc/host/sdhci-of-ma35d1.c | 297 +++++++++++++++++++++++++++++
>  3 files changed, 311 insertions(+)
>  create mode 100644 drivers/mmc/host/sdhci-of-ma35d1.c
>=20
[...]
> diff --git a/drivers/mmc/host/sdhci-of-ma35d1.c b/drivers/mmc/host/sdhci-=
of-ma35d1.c
> new file mode 100644
> index 000000000000..7714a5ab463d
> --- /dev/null
> +++ b/drivers/mmc/host/sdhci-of-ma35d1.c
> @@ -0,0 +1,297 @@
[...]
> +static int ma35_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct sdhci_pltfm_host *pltfm_host;
> +	struct sdhci_host *host;
> +	struct ma35_priv *priv;
> +	int err;
> +	u32 extra, ctl;
> +
> +	host =3D sdhci_pltfm_init(pdev, &sdhci_ma35_pdata,
> +				sizeof(struct ma35_priv));
> +	if (IS_ERR(host))
> +		return PTR_ERR(host);
> +
> +	/*
> +	 * extra adma table cnt for cross 128M boundary handling.
> +	 */
> +	extra =3D DIV_ROUND_UP_ULL(dma_get_required_mask(&pdev->dev), SZ_128M);
> +	if (extra > SDHCI_MAX_SEGS)
> +		extra =3D SDHCI_MAX_SEGS;
> +	host->adma_table_cnt +=3D extra;
> +	pltfm_host =3D sdhci_priv(host);
> +	priv =3D sdhci_pltfm_priv(pltfm_host);
> +
> +	if (dev->of_node) {
> +		pltfm_host->clk =3D devm_clk_get(&pdev->dev, NULL);
> +		if (IS_ERR(pltfm_host->clk)) {
> +			err =3D PTR_ERR(pltfm_host->clk);
> +			dev_err(&pdev->dev, "failed to get clk: %d\n", err);
> +			goto free_pltfm;
> +		}
> +		err =3D clk_prepare_enable(pltfm_host->clk);
> +		if (err)
> +			goto free_pltfm;
> +	}
> +
> +	err =3D mmc_of_parse(host->mmc);
> +	if (err)
> +		goto err_clk;
> +
> +	priv->rst =3D devm_reset_control_get(&pdev->dev, NULL);

Please use devm_reset_control_get_exclusive() instead.

regards
Philipp

