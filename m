Return-Path: <devicetree+bounces-19211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2577FA0C4
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:19:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 236821C20B92
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1074A2D7B3;
	Mon, 27 Nov 2023 13:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1AD4AA
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 05:19:51 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7bUD-0007pG-Nn; Mon, 27 Nov 2023 14:17:17 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7bUB-00BxG9-Dp; Mon, 27 Nov 2023 14:17:15 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7bUB-000Cxr-18;
	Mon, 27 Nov 2023 14:17:15 +0100
Message-ID: <939b96b8727054729207211f25ff91ccf8328e28.camel@pengutronix.de>
Subject: Re: [PATCH v1 2/2] phy: starfive: Add mipi dphy tx support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Shengyang Chen <shengyang.chen@starfivetech.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	minda.chen@starfivetech.com, changhuang.liang@starfivetech.com, 
	rogerq@kernel.org, geert+renesas@glider.be, keith.zhao@starfivetech.com, 
	linux-kernel@vger.kernel.org
Date: Mon, 27 Nov 2023 14:17:15 +0100
In-Reply-To: <20231117130421.79261-3-shengyang.chen@starfivetech.com>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
	 <20231117130421.79261-3-shengyang.chen@starfivetech.com>
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

On Fr, 2023-11-17 at 21:04 +0800, Shengyang Chen wrote:
> Add mipi dphy tx support for the StarFive JH7110 SoC.
> It is used to transfer DSI data.
>=20
> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
> ---
[...]
> diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c b/drivers/phy/star=
five/phy-jh7110-dphy-tx.c
> new file mode 100644
> index 000000000000..69aa172563e4
> --- /dev/null
> +++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> @@ -0,0 +1,542 @@
[...]
> +static int stf_dphy_probe(struct platform_device *pdev)
> +{
[...]
> +	dphy->topsys =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(dphy->topsys)) {
> +		ret =3D PTR_ERR(dphy->topsys);
> +		return ret;

This could be shortened to:

		return PTR_ERR(dphy->topsys);

> +	}
> +
> +	pm_runtime_enable(&pdev->dev);
> +
> +	dphy->mipitx_0p9 =3D devm_regulator_get(&pdev->dev, "mipi_0p9");
> +	if (IS_ERR(dphy->mipitx_0p9)) {
> +		ret =3D PTR_ERR(dphy->mipitx_0p9);
> +		return ret;

Same as above.

> +	}
> +
> +	dphy->txesc_clk =3D devm_clk_get(&pdev->dev, "dphy_txesc");
> +	if (IS_ERR(dphy->txesc_clk)) {
> +		ret =3D PTR_ERR(dphy->txesc_clk);
> +		dev_err(&pdev->dev, "txesc_clk get error\n");
> +		return ret;

Consider using dev_err_probe():

		return dev_err_probe(&pdev->dev, PTR_ERR(dphy->txesc_clk),
				     "txesc_clk get error\n");

And the same for the error paths below.

> +	}
> +
> +	dphy->sys_rst =3D reset_control_get_exclusive(&pdev->dev, "dphy_sys");

Why not devm_reset_control_get_exclusive()?

> +	if (IS_ERR(dphy->sys_rst)) {
> +		ret =3D PTR_ERR(dphy->sys_rst);
> +		dev_err(&pdev->dev, "sys_rst get error\n");
> +		return ret;
> +	}
> +
> +	dphy->txbytehs_rst =3D reset_control_get_exclusive(&pdev->dev, "dsi_txb=
ytehs");

Same as above.

> +	if (IS_ERR(dphy->txbytehs_rst)) {
> +		dev_err(&pdev->dev, "Failed to get txbytehs_rst\n");
> +		return PTR_ERR(dphy->txbytehs_rst);
> +	}
> +
> +	dphy->phy =3D devm_phy_create(&pdev->dev, NULL, &stf_dphy_ops);
> +	if (IS_ERR(dphy->phy)) {
> +		ret =3D PTR_ERR(dphy->phy);
> +		dev_err(&pdev->dev, "Failed to create phy\n");
> +		return ret;
> +	}
> +	phy_set_drvdata(dphy->phy, dphy);
> +
> +	phy_provider =3D devm_of_phy_provider_register(&pdev->dev, of_phy_simpl=
e_xlate);
> +	if (IS_ERR(phy_provider)) {
> +		ret =3D PTR_ERR(phy_provider);
> +		dev_err(&pdev->dev, "Failed to create phy\n");
> +		return ret;
> +	}
> +
> +	return PTR_ERR_OR_ZERO(phy_provider);

This can not be reached in the error case, so just:

	return 0;

should suffice.


regards
Philipp

