Return-Path: <devicetree+bounces-139944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20863A17999
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEE2B3A79AE
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 08:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01EF91BEF97;
	Tue, 21 Jan 2025 08:53:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626241BAED6
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 08:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737449635; cv=none; b=nM9MP8lqq48y9R7bUukAw6Bo5FAA8ToHhJ3Oz+Yp36IM7txyv8nR8xeH8OadTCJ5qW2B/hiLuIr/sBy4MaEai+cuvXRlEsEVZzZAsLJCECV6EvViEMHyE845yJad5qyD8XhFpIwELRMXKnn/si4sN3cZ2/0FqV/YrudL+R6E2jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737449635; c=relaxed/simple;
	bh=SyFnmj3AmXrk2MuJpqnkVusEJB1CUJUvAH6JJ99tne4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=J9whhv9RJHScwsnvoW9uLdefl6bkpNjCfjJqaIoh9sCjeVDu9/PKy/0e1cEyxftpyuIMkFi6OOu8M10ZqKvQVjwXv0P+kuv33idukC5UN6Zz8XlIRHr3M9nYp1K9OBgjMMVK4XWl4y/DBLuhXhAXcFawf0dK74N5613RmovciwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1taA14-00051k-IY; Tue, 21 Jan 2025 09:53:46 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1taA12-0014uC-2o;
	Tue, 21 Jan 2025 09:53:44 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1taA12-00026M-2Z;
	Tue, 21 Jan 2025 09:53:44 +0100
Message-ID: <98d064a635467dcc3937d1ec9c5b1659bd71eb91.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/2] memory: mtk-smi: mt8188: Add SMI reset and clamp
 for MT8188
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Friday Yang <friday.yang@mediatek.com>, Yong Wu <yong.wu@mediatek.com>, 
	Krzysztof Kozlowski
	 <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Date: Tue, 21 Jan 2025 09:53:44 +0100
In-Reply-To: <20250121064934.13482-3-friday.yang@mediatek.com>
References: <20250121064934.13482-1-friday.yang@mediatek.com>
	 <20250121064934.13482-3-friday.yang@mediatek.com>
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

On Di, 2025-01-21 at 14:49 +0800, Friday Yang wrote:
> From: "friday.yang" <friday.yang@mediatek.com>
>=20
> To prevent handling glitch signals during MTCMOS on/off transitions,
> SMI requires clamp and reset operations. Parse the reset settings for
> SMI LARBs and the clamp settings for the SMI Sub-Common. Register
> genpd callback for the SMI LARBs located in image, camera and IPE
> subsystems, and apply reset and clamp operations within the callback.
>=20
> Signed-off-by: Friday Yang <friday.yang@mediatek.com>
> ---
>  drivers/memory/mtk-smi.c | 141 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 137 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
> index 5710348f72f6..aaeb80379ec1 100644
> --- a/drivers/memory/mtk-smi.c
> +++ b/drivers/memory/mtk-smi.c
[...]
> @@ -528,6 +598,53 @@ static int mtk_smi_dts_clk_init(struct device *dev, =
struct mtk_smi *smi,
>  	return ret;
>  }
>=20
> +static int mtk_smi_larb_parse_clamp_optional(struct mtk_smi_larb *larb)
> +{
> +	struct device *dev =3D larb->dev;
> +	const struct mtk_smi_larb_gen *larb_gen =3D larb->larb_gen;
> +	u32 larb_id;
> +	int ret;
> +
> +	/**
> +	 * Only SMI LARBs in camera, image and IPE subsys need to
> +	 * apply clamp and reset operations, others can be skipped.
> +	 */
> +	ret =3D of_property_read_u32(dev->of_node, "mediatek,larb-id", &larb_id=
);
> +	if (ret)
> +		return -EINVAL;
> +	if (!larb_gen->clamp_port || !larb_gen->clamp_port[larb_id])
> +		return 0;
> +
> +	larb->sub_comm_inport =3D larb_gen->clamp_port[larb_id];
> +	larb->sub_comm_syscon =3D syscon_regmap_lookup_by_phandle(dev->of_node,=
 "mediatek,smi");
> +	if (IS_ERR(larb->sub_comm_syscon)) {
> +		larb->sub_comm_syscon =3D NULL;
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Unknown clamp port for larb %d\n", larb_id);
> +	}
> +
> +	return 0;
> +}
> +
> +static int mtk_smi_larb_parse_reset_optional(struct mtk_smi_larb *larb)
> +{
> +	struct device *dev =3D larb->dev;
> +	int ret;
> +
> +	larb->rst_con =3D devm_reset_control_get(dev, "larb");

Please use devm_reset_control_get_exclusive() directly.
Or use devm_reset_control_get_optional_exclusive(), which returns NULL
instead of -ENOENT. That way you can ...

> +	if (IS_ERR(larb->rst_con))
> +		return dev_err_probe(dev, PTR_ERR(larb->rst_con),
> +				     "Failed to get larb reset controller\n");

... suppress this error message in case of -ENOENT and return with:

	if (!larb->rst_con)
		return 0;

here.

> +
> +	larb->nb.notifier_call =3D mtk_smi_genpd_callback;
> +	ret =3D dev_pm_genpd_add_notifier(dev, &larb->nb);
> +	if (ret)
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Failed to add genpd callback %d\n", ret);
> +
> +	return 0;
> +}
> +
>  static int mtk_smi_larb_probe(struct platform_device *pdev)
>  {
>  	struct mtk_smi_larb *larb;
> @@ -538,6 +655,7 @@ static int mtk_smi_larb_probe(struct platform_device =
*pdev)
>  	if (!larb)
>  		return -ENOMEM;
>=20
> +	larb->dev =3D dev;
>  	larb->larb_gen =3D of_device_get_match_data(dev);
>  	larb->base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(larb->base))
> @@ -554,15 +672,24 @@ static int mtk_smi_larb_probe(struct platform_devic=
e *pdev)
>  	if (ret < 0)
>  		return ret;
>=20
> -	pm_runtime_enable(dev);
> +	ret =3D mtk_smi_larb_parse_clamp_optional(larb);
> +	if (ret)
> +		goto err_link_remove;
> +
> +	ret =3D mtk_smi_larb_parse_reset_optional(larb);
> +	if (ret && ret !=3D -ENOENT)

The ret !=3D -ENOENT check could be dropped if you use
devm_reset_control_get_optional_exclusive() above.


regards
Philipp

