Return-Path: <devicetree+bounces-143968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 201D8A2C608
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:49:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2EAE16BC16
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 160832500CF;
	Fri,  7 Feb 2025 14:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YKUUK84u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFBB2500C0
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738939566; cv=none; b=Rrc383y1s5tcpdGjrGcQhWqx3lf1EAxsuG/e0NgEzuMnkLzFjoSj6Y0b2EQpx5fCZzHMbuJGVvNEKJ/778B0caKGFPzu9lqLLtsUVLRfU6CvWP8k98B80PBiprDnHNJHf4Nemu1fMLK/OhHdIgRaKR/IbipXVixfJNRq2rQePjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738939566; c=relaxed/simple;
	bh=fjBdQlRTPF9VM4NEq5Qg/Bh3wS/MhMuEtA2QuNxPKNw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GcdNSl8fsgXTDlUl3n5twCsVIFfFVR8EJ1lwee0r3DfT3WILIu8X2hnoMl2i4TIKbzODKtI4w3UezdFa24OdJd/K68kV3iU9/GBusmdR+1W+np/HefXtYsWa3ylrvaMNsOzVtsNAOl/QyzgzXWcaVnCyRMeMQLRir/9SFreMQKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YKUUK84u; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-38dcb7d6b69so323230f8f.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 06:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738939562; x=1739544362; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hv90/4Ii7oHU4TLhsDR0XOWXVnCVpBGLvijyzK1ZPiM=;
        b=YKUUK84umwKI1ZJIBgZPtFXziL+aWE9vgJ0zyMDwBCafWCSAkIDpNVa52sURTVLoC2
         LHNapYaPy0jMxcGJUjVayaH8YEGfvirdkpqiBDtMieVtO0QmtdimRvQYBhlonQnxumYx
         LerDIheP4kkM4w900YcOuh3mNJ/uaA6WsQc5MtJ6o/2eCj6mSmTJTkO4GTauDN1vdoYv
         ns2Pa6L5Y59EDWBgddtG80Uv+jCS++WpYVpZYJxkbPRCfGWfShpo1yu3w7jgEK38uhl0
         DNoZXb/Sa2zubZFyfdGXZzzl16r8sdmi7FjmeQyAfBcdRYmgjP/pve9JOu+WAhGsVZYN
         Tu7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738939562; x=1739544362;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hv90/4Ii7oHU4TLhsDR0XOWXVnCVpBGLvijyzK1ZPiM=;
        b=Tj8y0swU1TF4xW5MsBonxof/J/l8zfdr93i5FcyBQ7lcwnWh5F3UzIsAWB07ZhanTP
         rt1iB/x8dir5nqsy07GLr8JMAsYLxnrL//ydgJ28w+L5raN/VlFszCrlr7yA16Ggy89z
         22SNyNj6p5/8Nqw1X/0+g4fUnmTMzHD0Fjq1P4kEYafLi4XxzkH7p3uQGI200izDCdqC
         2svvXJHzx1JzV3Dn0rCMqsIAwH8XdqBl74dsZZuF3wuzO9bDb+JqiswKHIzMJ6I9VuPe
         Hu5+Lxtl4qyX+FgXfPJJ2L1BI8fnViuDyiM1AzgA7BQZ54s+/xexlCVoM4kBW0Lj6w+l
         79bg==
X-Forwarded-Encrypted: i=1; AJvYcCWtV5TiZ4e6/DHLZed9p1XRKyZq+Gsr3w/JV5iVR+rbp47nv3t+nkUTtWGAx70JpElmmtUruVGTdxnN@vger.kernel.org
X-Gm-Message-State: AOJu0YwYvOCFhPECgdXEGAN9VD6qhtdnJ43tF8oNbgdRHcEzhhXx60Ri
	+9CSI/YFlbUUadKavUug8Rirma9mEcilzQOgndtjBtr9HGWDkx56zzh250yUmOg=
X-Gm-Gg: ASbGncvykohWbiTUblfx0FmWb6LL+A1k157DdAy38T+28Uxwa9tf5a2v6R9CrVL1tot
	R6uv/M2jFcWY3crqwC5uo/Mrpehflsmq+mk6pfP4zICQNwx1Wtf3FPPDYMAkJ2ckxtCun/KYDuK
	pok6uhVdwUvHByqzI1TE0CW7TIVrTljEV0TMj4Nedtr2gD1TicfcITXKHvWnkSKWpMil8PaMeTN
	OAv2vykOTe8lLrSreS2rNCs0AjjzHpT0xh3umsx8l9bzPlvjDPXBt7hNo15qGgmAWxPY1Gl9xq8
	fqqTfgIcezn1zS84gcN5LA2QwnJUs59fFrHDx1SJVZoHqanaQQ1eP83mkkDwL+g=
X-Google-Smtp-Source: AGHT+IHFc+CaRU85moSCDGrb/7WzOtXGy8Znz1lNZW2tGN9O7ngj6L2f+YkxFTgGpjCIR2UBQc+Nww==
X-Received: by 2002:a05:6000:188b:b0:38d:c58f:4ceb with SMTP id ffacd0b85a97d-38dc9374960mr2633679f8f.43.1738939561733;
        Fri, 07 Feb 2025 06:46:01 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8? ([2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc5839877sm3206265f8f.3.2025.02.07.06.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 06:46:01 -0800 (PST)
Message-ID: <18fd9544-f9ef-4f58-9a8a-026737c26b94@baylibre.com>
Date: Fri, 7 Feb 2025 15:45:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 21/34] drm/mediatek: mtk_hdmi: Move CEC device parsing
 in new function
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 dmitry.baryshkov@linaro.org, lewis.liao@mediatek.com,
 ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com,
 jason-jh.lin@mediatek.com
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
 <20250113145232.227674-22-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20250113145232.227674-22-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 13/01/2025 15:52, AngeloGioacchino Del Regno wrote:
> Move the CEC device parsing logic to a new function called
> mtk_hdmi_get_cec_dev(), and move the parsing action to the end
> of mtk_hdmi_dt_parse_pdata(), allowing to remove gotos in this
> function, reducing code size and improving readability.

Why CEC device parsing logic isn't done mtk_cec.c driver ? Then add "mtk_cec_get_dev" function to 
mtk_cec.c too. Finally, call this new function in mtk_hdmi_probe after mtk_hdmi_dt_parse_pdata().

> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_hdmi.c | 84 ++++++++++++++---------------
>   1 file changed, 40 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> index 48c37294dcbb..eb285ec394a3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> @@ -1367,24 +1367,16 @@ static const struct drm_bridge_funcs mtk_hdmi_bridge_funcs = {
>   	.edid_read = mtk_hdmi_bridge_edid_read,
>   };
>   
> -static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
> -				   struct platform_device *pdev)
> +static int mtk_hdmi_get_cec_dev(struct mtk_hdmi *hdmi, struct device *dev, struct device_node *np)
>   {
> -	struct device *dev = &pdev->dev;
> -	struct device_node *np = dev->of_node;
> -	struct device_node *remote, *i2c_np;
>   	struct platform_device *cec_pdev;
> -	struct regmap *regmap;
> +	struct device_node *cec_np;
>   	int ret;
>   
> -	ret = mtk_hdmi_get_all_clk(hdmi, np);
> -	if (ret)
> -		return dev_err_probe(dev, ret, "Failed to get clocks\n");
> -
>   	/* The CEC module handles HDMI hotplug detection */
>   	cec_np = of_get_compatible_child(np->parent, "mediatek,mt8173-cec");

If it's done in mtk_cec.c, the hardcoded compatible string method will be replaced by of_match_table 
(mtk_cec_of_ids), which is scalable and consistent.

>   	if (!cec_np)
> -		return dev_err_probe(dev, -EINVAL, "Failed to find CEC node\n");
> +		return dev_err_probe(dev, -ENOTSUPP, "Failed to find CEC node\n");
>   
>   	cec_pdev = of_find_device_by_node(cec_np);
>   	if (!cec_pdev) {
> @@ -1393,65 +1385,69 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
>   		return -EPROBE_DEFER;
>   	}
>   	of_node_put(cec_np);
> -	hdmi->cec_dev = &cec_pdev->dev;
>   
>   	/*
>   	 * The mediatek,syscon-hdmi property contains a phandle link to the
>   	 * MMSYS_CONFIG device and the register offset of the HDMI_SYS_CFG
>   	 * registers it contains.
>   	 */
> -	regmap = syscon_regmap_lookup_by_phandle(np, "mediatek,syscon-hdmi");
> -	ret = of_property_read_u32_index(np, "mediatek,syscon-hdmi", 1,
> -					 &hdmi->sys_offset);
> -	if (IS_ERR(regmap))
> -		ret = PTR_ERR(regmap);
> -	if (ret) {
> -		dev_err_probe(dev, ret,
> -			      "Failed to get system configuration registers\n");
> -		goto put_device;
> -	}
> -	hdmi->sys_regmap = regmap;
> +	hdmi->sys_regmap = syscon_regmap_lookup_by_phandle(np, "mediatek,syscon-hdmi");
> +	if (IS_ERR(hdmi->sys_regmap))
> +		return PTR_ERR(hdmi->sys_regmap);
> +
> +	ret = of_property_read_u32_index(np, "mediatek,syscon-hdmi", 1, &hdmi->sys_offset);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Failed to get system configuration registers\n");
> +
> +	hdmi->cec_dev = &cec_pdev->dev;
> +	return 0;
> +}
> +
> +static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
> +				   struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	struct device_node *remote, *i2c_np;
> +	int ret;
> +
> +	ret = mtk_hdmi_get_all_clk(hdmi, np);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get clocks\n");
>   
>   	hdmi->regs = device_node_to_regmap(dev->of_node);
> -	if (IS_ERR(hdmi->regs)) {
> -		ret = PTR_ERR(hdmi->regs);
> -		goto put_device;
> -	}
> +	if (IS_ERR(hdmi->regs))
> +		return PTR_ERR(hdmi->regs);
>   
>   	remote = of_graph_get_remote_node(np, 1, 0);
> -	if (!remote) {
> -		ret = -EINVAL;
> -		goto put_device;
> -	}
> +	if (!remote)
> +		return -EINVAL;
>   
>   	if (!of_device_is_compatible(remote, "hdmi-connector")) {
>   		hdmi->next_bridge = of_drm_find_bridge(remote);
>   		if (!hdmi->next_bridge) {
>   			dev_err(dev, "Waiting for external bridge\n");
>   			of_node_put(remote);
> -			ret = -EPROBE_DEFER;
> -			goto put_device;
> +			return -EPROBE_DEFER;
>   		}
>   	}
>   
>   	i2c_np = of_parse_phandle(remote, "ddc-i2c-bus", 0);
>   	of_node_put(remote);
> -	if (!i2c_np) {
> -		ret = dev_err_probe(dev, -EINVAL, "No ddc-i2c-bus in connector\n");
> -		goto put_device;
> -	}
> +	if (!i2c_np)
> +		return dev_err_probe(dev, -EINVAL, "No ddc-i2c-bus in connector\n");
>   
>   	hdmi->ddc_adpt = of_find_i2c_adapter_by_node(i2c_np);
>   	of_node_put(i2c_np);
> -	if (!hdmi->ddc_adpt) {
> -		ret = dev_err_probe(dev, -EINVAL, "Failed to get ddc i2c adapter by node\n");
> -		goto put_device;
> -	}
> +	if (!hdmi->ddc_adpt)
> +		return dev_err_probe(dev, -EINVAL, "Failed to get ddc i2c adapter by node\n");
> +
> +	ret = mtk_hdmi_get_cec_dev(hdmi, dev, np);
> +	if (ret)
> +		return ret;
>   
>   	return 0;
> -put_device:
> -	put_device(hdmi->cec_dev);
> -	return ret;
>   }
>   
>   /*

-- 
Regards,
Alexandre

