Return-Path: <devicetree+bounces-109413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE409965D8
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:48:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA7F21C2219A
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F350A18DF68;
	Wed,  9 Oct 2024 09:48:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDD228EF
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 09:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728467320; cv=none; b=scOhAMLVEA+u++CLvdSdUyh7oQ/+qOmDl57G7y2ut58FC28gtQXRbeC6+qSdHVY7fAY3tvguWI8lFWezRdbHftb+OQOpb6UlCfMInrJTu0iRiIITmm088DfmhISF7HmuwoEx7vsCCEFEfMGadgi9DxB/4z6OQ+Ai75s+0tjJhTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728467320; c=relaxed/simple;
	bh=eEYE+PvPuJAfcRqN/4j7lRC9I2Pi+wV0D/qMtoDrXQo=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Pg/QbKxKi+INbmgxDOG8W3u8qhW/ZrVK4mkIv/7FgvL2Bm4u6qRU7l2sHSbIqMSMu13S8dbej/Vx9cRtz0WInVuhMFAPBqO7rw9DoFAFSWGzZ5cgoM9Ts0W2Xo2k9V3Q/gXNL1NIOIl/QE0ygAS/bSsjfSic3pqrGwuPXBel9TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1syTIh-0004Zh-WB; Wed, 09 Oct 2024 11:48:12 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1syTIe-000ZhO-F9; Wed, 09 Oct 2024 11:48:08 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1syTIe-00061T-1G;
	Wed, 09 Oct 2024 11:48:08 +0200
Message-ID: <cc7faea42df6281a24360090d99cef8f99aa7736.camel@pengutronix.de>
Subject: Re: [PATCH v5 3/3] clk: aspeed: add AST2700 clock driver.
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ryan Chen <ryan_chen@aspeedtech.com>, dmitry.baryshkov@linaro.org, 
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org,  conor+dt@kernel.org, joel@jms.id.au,
 andrew@codeconstruct.com.au,  linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-aspeed@lists.ozlabs.org
Date: Wed, 09 Oct 2024 11:48:08 +0200
In-Reply-To: <20241009060521.2971168-4-ryan_chen@aspeedtech.com>
References: <20241009060521.2971168-1-ryan_chen@aspeedtech.com>
	 <20241009060521.2971168-4-ryan_chen@aspeedtech.com>
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

On Mi, 2024-10-09 at 14:05 +0800, Ryan Chen wrote:
> Add AST2700 clock controller driver and also use axiliary
> device framework register the reset controller driver.
> Due to clock and reset using the same register region.
>=20
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  drivers/clk/Kconfig       |    8 +
>  drivers/clk/Makefile      |    1 +
>  drivers/clk/clk-ast2700.c | 1554 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 1563 insertions(+)
>  create mode 100644 drivers/clk/clk-ast2700.c
>=20
[...]
> diff --git a/drivers/clk/clk-ast2700.c b/drivers/clk/clk-ast2700.c
> new file mode 100644
> index 000000000000..ef1f939b1c9f
> --- /dev/null
> +++ b/drivers/clk/clk-ast2700.c
> @@ -0,0 +1,1554 @@
[...]
> +static void aspeed_reset_unregister_adev(void *_adev)
> +{
> +	struct auxiliary_device *adev =3D _adev;
> +
> +	auxiliary_device_delete(adev);
> +	auxiliary_device_uninit(adev);
> +}
> +
> +static void aspeed_reset_adev_release(struct device *dev)
> +{
> +	struct auxiliary_device *adev =3D to_auxiliary_dev(dev);
> +
> +	kfree(adev);
> +}
> +
> +static int aspeed_reset_controller_register(struct device *clk_dev,
> +					    void __iomem *base, const char *adev_name)
> +{
> +	struct auxiliary_device *adev;
> +	int ret;
> +
> +	adev =3D kzalloc(sizeof(*adev), GFP_KERNEL);
> +	if (!adev)
> +		return -ENOMEM;
> +
> +	adev->name =3D adev_name;
> +	adev->dev.parent =3D clk_dev;
> +	adev->dev.release =3D aspeed_reset_adev_release;
> +	adev->id =3D 666u;
> +
> +	ret =3D auxiliary_device_init(adev);
> +	if (ret) {
> +		kfree(adev);
> +		return ret;
> +	}
> +
> +	ret =3D auxiliary_device_add(adev);
> +	if (ret) {
> +		auxiliary_device_uninit(adev);
> +		return ret;
> +	}
> +
> +	adev->dev.platform_data =3D (__force void *)base;
> +
> +	return devm_add_action_or_reset(clk_dev, aspeed_reset_unregister_adev, =
adev);
> +}

Should this be moved into reset-aspeed.c?

regards
Philipp

