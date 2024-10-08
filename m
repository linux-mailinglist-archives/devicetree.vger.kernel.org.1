Return-Path: <devicetree+bounces-108860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5173D994226
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:38:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 077161F27AFC
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F50D1EF083;
	Tue,  8 Oct 2024 08:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UXFn/1l5"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9851EC009;
	Tue,  8 Oct 2024 08:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728374602; cv=none; b=N71mDXHdesO12xTHcsbGB8zXY9zOkxXj6aYUkYpqpMjtzr1czpqgTkjTYN61GsbrZkXH4GBB6D186o7KjH7oZMz0FoVSfOutJi7vJneEZntFfZHgenWXPHRtX5u3HdCFC+ttI2C5cVc6khHUNz07yXYb5CbqNvA+Ycd7xdbYG/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728374602; c=relaxed/simple;
	bh=vI3/QpGLijP3lgg8molroYOGIic0OJm068MghYiL394=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VzAFLySaU7kIU+fx3f22wj+/B+0nO+TxYYk7o7V3jTXrke2nzXeh+++5CTMBTacEPSBake0+Dl/KxGHdL2j7a90JHWDy+QkT+UC2xcithrsk5u6bUVhJJIT6p2jY/2ZOuxbjEQaA9nX+9021wkJtxyP7BTDvgNQw1UKVhofX8GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=UXFn/1l5; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1728374592;
	bh=vI3/QpGLijP3lgg8molroYOGIic0OJm068MghYiL394=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UXFn/1l5X4W/04BUR8iMmktW0EsO1Z/EeDFPdaVL8mBdgzwrNVEphLonh8JIcWcGE
	 vciN/K0E7+ym4cUJhp89z/qAaeEuAGhysIpz0ynXbzzR93oiNWMOWzYxUzBwuKTF5n
	 Au1pOX13R4hmUJfcG17jll6KVj0xXYAJNfSRKAiJmUl37qaQGTAjWcg1ZR4GFX+l40
	 +MmCnoiyDwWXxl6oKSMUxqU2xbPmPSwIsE8DIwGIDyurQmIzyHkG/Tct5TF+gGS4Ml
	 YcLViB1RUVBTP4An4UXXLjUAxBLnL4mZiQ9abWsPCA26XCJdCMXBvzbBfyKtLClfD0
	 V/beVyITIrCYw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5152217E1091;
	Tue,  8 Oct 2024 10:03:11 +0200 (CEST)
Message-ID: <6415a3a1-f00d-428e-b607-ae27ac63c11a@collabora.com>
Date: Tue, 8 Oct 2024 10:03:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/3] drm/mediatek: Implement OF graphs support for
 display paths
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "sui.jingfeng@linux.dev" <sui.jingfeng@linux.dev>,
 "wenst@chromium.org" <wenst@chromium.org>,
 Sjoerd Simons <sjoerd@collabora.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 =?UTF-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>,
 "mripard@kernel.org" <mripard@kernel.org>,
 =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
 "michael@walle.cc" <michael@walle.cc>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?UTF-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?= <Yu-chang.Lee@mediatek.com>,
 "mwalle@kernel.org" <mwalle@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Alexandre Mergnat <amergnat@baylibre.com>
References: <20241007093114.35332-1-angelogioacchino.delregno@collabora.com>
 <20241007093114.35332-4-angelogioacchino.delregno@collabora.com>
 <a7fd78a9fb858552e48339bc4bf3d3423d428f3b.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <a7fd78a9fb858552e48339bc4bf3d3423d428f3b.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 08/10/24 09:41, CK Hu (胡俊光) ha scritto:
> Hi, Angelo:
> 
> On Mon, 2024-10-07 at 11:31 +0200, AngeloGioacchino Del Regno wrote:
>> It is impossible to add each and every possible DDP path combination
>> for each and every possible combination of SoC and board: right now,
>> this driver hardcodes configuration for 10 SoCs and this is going to
>> grow larger and larger, and with new hacks like the introduction of
>> mtk_drm_route which is anyway not enough for all final routes as the
>> DSI cannot be connected to MERGE if it's not a dual-DSI, or enabling
>> DSC preventively doesn't work if the display doesn't support it, or
>> others.
>>
>> Since practically all display IPs in MediaTek SoCs support being
>> interconnected with different instances of other, or the same, IPs
>> or with different IPs and in different combinations, the final DDP
>> pipeline is effectively a board specific configuration.
>>
>> Implement OF graphs support to the mediatek-drm drivers, allowing to
>> stop hardcoding the paths, and preventing this driver to get a huge
>> amount of arrays for each board and SoC combination, also paving the
>> way to share the same mtk_mmsys_driver_data between multiple SoCs,
>> making it more straightforward to add support for new chips.
>>
>> Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
>> Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
>> Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>
>> Tested-by: Michael Walle <mwalle@kernel.org> # on kontron-sbc-i1200
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
> 
> [snip]
> 
>> +
>> +bool mtk_ovl_adaptor_is_comp_present(struct device_node *node)
>> +{
>> +	enum mtk_ovl_adaptor_comp_type type;
>> +	int ret;
>> +
>> +	ret = ovl_adaptor_of_get_ddp_comp_type(node, &type);
>> +	if (ret)
>> +		return false;
>> +
>> +	if (type >= OVL_ADAPTOR_TYPE_NUM)
>> +		return false;
>> +
>> +	/*
>> +	 * In the context of mediatek-drm, ETHDR, MDP_RDMA and Padding are
>> +	 * used exclusively by OVL Adaptor: if this component is not one of
>> +	 * those, it's likely not an OVL Adaptor path.
>> +	 */
>> +	return type == OVL_ADAPTOR_TYPE_ETHDR ||
>> +	       type == OVL_ADAPTOR_TYPE_MDP_RDMA ||
>> +	       type == OVL_ADAPTOR_TYPE_PADDING;
>> +}
>> +
> 
> [snip]
> 
>> +
>> +static int mtk_drm_of_get_ddp_ep_cid(struct device_node *node,
>> +				     int output_port, enum mtk_crtc_path crtc_path,
>> +				     struct device_node **next, unsigned int *cid)
>> +{
>> +	struct device_node *ep_dev_node, *ep_out;
>> +	enum mtk_ddp_comp_type comp_type;
>> +	int ret;
>> +
>> +	ep_out = of_graph_get_endpoint_by_regs(node, output_port, crtc_path);
>> +	if (!ep_out)
>> +		return -ENOENT;
>> +
>> +	ep_dev_node = of_graph_get_remote_port_parent(ep_out);
>> +	of_node_put(ep_out);
>> +	if (!ep_dev_node)
>> +		return -EINVAL;
>> +
>> +	/*
>> +	 * Pass the next node pointer regardless of failures in the later code
>> +	 * so that if this function is called in a loop it will walk through all
>> +	 * of the subsequent endpoints anyway.
>> +	 */
>> +	*next = ep_dev_node;
>> +
>> +	if (!of_device_is_available(ep_dev_node))
>> +		return -ENODEV;
>> +
>> +	ret = mtk_drm_of_get_ddp_comp_type(ep_dev_node, &comp_type);
>> +	if (ret) {
>> +		if (mtk_ovl_adaptor_is_comp_present(ep_dev_node)) {
>> +			*cid = (unsigned int)DDP_COMPONENT_DRM_OVL_ADAPTOR;
>> +			return 0;
>> +		}
>> +		return ret;
>> +	}
>> +
>> +	ret = mtk_ddp_comp_get_id(ep_dev_node, comp_type);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	/* All ok! Pass the Component ID to the caller. */
>> +	*cid = (unsigned int)ret;
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * mtk_drm_of_ddp_path_build_one - Build a Display HW Pipeline for a CRTC Path
>> + * @dev:          The mediatek-drm device
>> + * @cpath:        CRTC Path relative to a VDO or MMSYS
>> + * @out_path:     Pointer to an array that will contain the new pipeline
>> + * @out_path_len: Number of entries in the pipeline array
>> + *
>> + * MediaTek SoCs can use different DDP hardware pipelines (or paths) depending
>> + * on the board-specific desired display configuration; this function walks
>> + * through all of the output endpoints starting from a VDO or MMSYS hardware
>> + * instance and builds the right pipeline as specified in device trees.
>> + *
>> + * Return:
>> + * * %0       - Display HW Pipeline successfully built and validated
>> + * * %-ENOENT - Display pipeline was not specified in device tree
>> + * * %-EINVAL - Display pipeline built but validation failed
>> + * * %-ENOMEM - Failure to allocate pipeline array to pass to the caller
>> + */
>> +static int mtk_drm_of_ddp_path_build_one(struct device *dev, enum mtk_crtc_path cpath,
>> +					 const unsigned int **out_path,
>> +					 unsigned int *out_path_len)
>> +{
>> +	struct device_node *next, *prev, *vdo = dev->parent->of_node;
>> +	unsigned int temp_path[DDP_COMPONENT_DRM_ID_MAX] = { 0 };
>> +	unsigned int *final_ddp_path;
>> +	unsigned short int idx = 0;
>> +	bool ovl_adaptor_comp_added = false;
>> +	int ret;
>> +
>> +	/* Get the first entry for the temp_path array */
>> +	ret = mtk_drm_of_get_ddp_ep_cid(vdo, 0, cpath, &next, &temp_path[idx]);
>> +	if (ret) {
>> +		if (next && temp_path[idx] == DDP_COMPONENT_DRM_OVL_ADAPTOR) {
>> +			dev_dbg(dev, "Adding OVL Adaptor for %pOF\n", next);
>> +			ovl_adaptor_comp_added = true;
>> +		} else {
>> +			if (next)
>> +				dev_err(dev, "Invalid component %pOF\n", next);
>> +			else
>> +				dev_err(dev, "Cannot find first endpoint for path %d\n", cpath);
>> +
>> +			return ret;
>> +		}
>> +	}
>> +	idx++;
>> +
>> +	/*
>> +	 * Walk through port outputs until we reach the last valid mediatek-drm component.
>> +	 * To be valid, this must end with an "invalid" component that is a display node.
>> +	 */
>> +	do {
>> +		prev = next;
>> +		ret = mtk_drm_of_get_ddp_ep_cid(next, 1, cpath, &next, &temp_path[idx]);
>> +		of_node_put(prev);
>> +		if (ret) {
>> +			of_node_put(next);
>> +			break;
>> +		}
>> +
>> +		/*
>> +		 * If this is an OVL adaptor exclusive component and one of those
>> +		 * was already added, don't add another instance of the generic
>> +		 * DDP_COMPONENT_OVL_ADAPTOR, as this is used only to decide whether
>> +		 * to probe that component master driver of which only one instance
>> +		 * is needed and possible.
>> +		 */
>> +		if (temp_path[idx] == DDP_COMPONENT_DRM_OVL_ADAPTOR) {
>> +			if (!ovl_adaptor_comp_added)
>> +				ovl_adaptor_comp_added = true;
>> +			else
>> +				idx--;
>> +		}
>> +	} while (++idx < DDP_COMPONENT_DRM_ID_MAX);
> 
> For the mt8195 external display path, the OF graph is
> 
> mdp_rdma (0 ~ 7) -> padding (0 ~ 7) -> merge (1 ~ 4) -> ethdr -> merge5
> 
> and this function would generate the path as
> 
> ovl_adaptor -> merge (1 ~ 4) -> merge 5
> 
> This is not what I expect.
> Is any thing wrong with me?
> 

I mean no offense, really, but your reply here is a contradiction...

In [1], you explained what the path for the external display should look like
and said that the graph in DT should generate a path which, in the driver, shall
look like the current mt8195_mtk_ddp_ext[] hardcoded array.

In [2], you repeated that you "just want the path to be like mt8195_mtk_ddp_ext[]".

Now you're saying that this is not what you expect.
I don't understand your intention.

[1]: 
https://lore.kernel.org/all/58ee09aeb5a224dbc8faee236ed1a77ce3fbd011.camel@mediatek.com/

[2]: 
https://lore.kernel.org/all/04f1506b23b41c775e0735b5b3189b4118500715.camel@mediatek.com/

Regards,
Angelo

> 
>> +
>> +	/*
>> +	 * The device component might not be enabled: in that case, don't
>> +	 * check the last entry and just report that the device is missing.
>> +	 */
>> +	if (ret == -ENODEV)
>> +		return ret;
>> +
>> +	/* If the last entry is not a final display output, the configuration is wrong */
>> +	switch (temp_path[idx - 1]) {
>> +	case DDP_COMPONENT_DP_INTF0:
>> +	case DDP_COMPONENT_DP_INTF1:
>> +	case DDP_COMPONENT_DPI0:
>> +	case DDP_COMPONENT_DPI1:
>> +	case DDP_COMPONENT_DSI0:
>> +	case DDP_COMPONENT_DSI1:
>> +	case DDP_COMPONENT_DSI2:
>> +	case DDP_COMPONENT_DSI3:
>> +		break;
>> +	default:
>> +		dev_err(dev, "Invalid display hw pipeline. Last component: %d (ret=%d)\n",
>> +			temp_path[idx - 1], ret);
>> +		return -EINVAL;
>> +	}
>> +
>> +	final_ddp_path = devm_kmemdup(dev, temp_path, idx * sizeof(temp_path[0]), GFP_KERNEL);
>> +	if (!final_ddp_path)
>> +		return -ENOMEM;
>> +
>> +	dev_dbg(dev, "Display HW Pipeline built with %d components.\n", idx);
>> +
>> +	/* Pipeline built! */
>> +	*out_path = final_ddp_path;
>> +	*out_path_len = idx;
>> +
>> +	return 0;
>> +}
>> +



