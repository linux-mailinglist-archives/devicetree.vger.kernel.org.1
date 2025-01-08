Return-Path: <devicetree+bounces-136823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA439A066B3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 21:58:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2665165E5A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 20:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7CAE203710;
	Wed,  8 Jan 2025 20:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eWqiK79e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F68C2036E2
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 20:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736369912; cv=none; b=mVghxpv+jjM535sTIVZO2B3mEJlMOp3i3jFL3YOAKKP0bKjc2sd04f+vk3zxWzkkYvhOKVEZrOAg9J/+QKzT71WYQfpsTTyIYSwr3w74gNj8Zg8uv4/vl7cUMPKdj/8TzsFCkbT8fH0fAd43koC7e1L5Pstx3QcuwhdLi1JO0cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736369912; c=relaxed/simple;
	bh=30YAjv4MIaGBzWmTzKFmzmTH/8uydbhMcneF+iWGwcg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PaBvueS0lszZ5C9Tm3oTc9PqbYGR92/rYn9h4lOYJLZFRxETEMsCloJfR2HAlDhdJK7VD1d4btpCudGVe9zrMg0WoiY+Td1Nwn5icOiigHA8X6qjPfg3fCw7vRXvDLuvyGdM/0QQgsj0CVELbKJ7fWQXMj+uuLANUBIjtLqt2uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eWqiK79e; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30229d5b21cso1521331fa.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 12:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736369909; x=1736974709; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D041SwdHYWNWMigFkJt4+JIf+crqlqsXgmWSFbexmFE=;
        b=eWqiK79egLROOh93IgJzP21+9V4D3gAXrg+ETnad0d4ThmDQeDxbOjI15WP6HBcX7N
         OESQU+PhF4CqgyJe1yDU3pWiH6Pje6sZ4knxVlcf+Yn12rV0E+ZN+fBptOMYT+9Zklpv
         3Fe5p0p2NcTPcXZ4Rhj3BeBUuZLdslPs/k0XmsFPkf8ZHsvU5rX1Ju4JI2cYkGiYlK9L
         2DtvPa8gdojeypwTM0qF5WuvFTyARXcEU899jHKO1PF0kbwsC56JbCIljvymuEK2zzpJ
         LJXspLxFT59Ja+hhgf8ZNXNCDDo0h8cb95ZVTczwbIx8UglXkIiK7qp0pkE5fJEMuo7z
         1FIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736369909; x=1736974709;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D041SwdHYWNWMigFkJt4+JIf+crqlqsXgmWSFbexmFE=;
        b=s7H+LbUDwnIqaFKDU9a0XBM4vL7N52JBKfFuTGfe/wo6AxFCoIYblk+MNtQ5GEynGH
         HMpmu6DMFh9B5dDR0+3U0PB+IKc7n/8SC00PKEbbrtkB3uCSXj9i/oxgFCJAHEr7OB8u
         Ba+4XOuwDeO7KyeEPjGJKmiqsvRxizYdUF7unt8LYo+B5rhilLF5DokN5dvrkM4+eEBf
         2IsifxeAthYd5On9qVYseITrFQsLjR8cl+ayupRAalfTeAz6LLmpQ8/nc5m8j5cDaR8D
         4dmFOB28cva1BxG2h4tnbgqEDhlrIYCZ5SxXspWm4cXBvMfrLfqlecyS0sbdzstTc2ZC
         bugQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqqJuRLufp56+x7Q/g0IIldpNNQ1j9zPLnGc/3O5fhrpEzg6FrY8n65h+s58duqP++JgdkDLVAXj60@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/0uW9eKXsQa75CuE7JdAxVxVDPsF69X8hgz9ghhzVFANTX055
	oCx1669vBfq9ZidUok5AchDXI5G5PAxAGMMyJuiH11q5gMOW0ldSH+zF7vGOIxVoq+FVbYp9/ZX
	9
X-Gm-Gg: ASbGncv8+ef41r0YM3upyJVA5PMLVfE7wGwRw9xEm/5m1yZoEYEUFINHXXu6GkCxC8y
	Go2aw0vIhp8YdQWrMgAHsWz7PpOky72jfKNgsWhCmHArxjKpjgwBi7sSb7ghR/jGzK2/grbwDML
	PPfHeClQ/FWEwZ3J62A+9gM4gb6iKPkIICkbivHl4Y4CSkxg2FZwQzHr9324aATzrYXOlNPE6M8
	cTcXv0HcMXXcUy/MckZZ5XQx68jshxlJuK8MuvyYNEne1Qt69BEleNgarUskCVRgAd49ctvNFP+
	8Ea6zzO5n8Ql31ONBjYZCPOE92EpWWiqZ9DB
X-Google-Smtp-Source: AGHT+IEHOmBJZvnHUY+VnOmirrNKUoUnyZBed/dBjNDUGMfiiafHMe4J5mjKk5uonUpyQAXGzoSnRw==
X-Received: by 2002:a2e:a781:0:b0:302:1aed:f62a with SMTP id 38308e7fff4ca-305f45a0a1emr11449191fa.21.1736369908167;
        Wed, 08 Jan 2025 12:58:28 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6c632sm63195401fa.21.2025.01.08.12.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 12:58:26 -0800 (PST)
Date: Wed, 8 Jan 2025 22:58:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com, jie.qiu@mediatek.com, 
	junzhi.zhao@mediatek.com, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, lewis.liao@mediatek.com, 
	ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com, jason-jh.lin@mediatek.com
Subject: Re: [PATCH v4 32/34] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
Message-ID: <5qtfugb6jvmf7e2aixwxf2wdeldrfmybpg5xloeqewloj3z7mb@rf4pbiomsic6>
References: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
 <20250108112744.64686-33-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250108112744.64686-33-angelogioacchino.delregno@collabora.com>

On Wed, Jan 08, 2025 at 12:27:42PM +0100, AngeloGioacchino Del Regno wrote:
> Add support for the newer HDMI-TX (Encoder) v2 and DDC v2 IPs
> found in MediaTek's MT8195, MT8188 SoC and their variants, and
> including support for display modes up to 4k60 and for HDMI
> Audio, as per the HDMI 2.0 spec.
> 
> HDCP and CEC functionalities are also supported by this hardware,
> but are not included in this commit and that also poses a slight
> difference between the V2 and V1 controllers in how they handle
> Hotplug Detection (HPD).
> 
> While the v1 controller was using the CEC controller to check
> HDMI cable connection and disconnection, in this driver the v2
> one does not.
> 
> This is due to the fact that on parts with v2 designs, like the
> MT8195 SoC, there is one CEC controller shared between the HDMI
> Transmitter (HDMI-TX) and Receiver (HDMI-RX): before eventually
> adding support to use the CEC HW to wake up the HDMI controllers
> it is necessary to have support for one TX, one RX *and* for both
> at the same time.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/gpu/drm/mediatek/Kconfig            |    8 +
>  drivers/gpu/drm/mediatek/Makefile           |    2 +
>  drivers/gpu/drm/mediatek/mtk_hdmi_common.c  |   10 +
>  drivers/gpu/drm/mediatek/mtk_hdmi_common.h  |    9 +
>  drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c  |  403 ++++++
>  drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h |  263 ++++
>  drivers/gpu/drm/mediatek/mtk_hdmi_v2.c      | 1379 +++++++++++++++++++
>  7 files changed, 2074 insertions(+)
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
> 

[...]

> +
> +static int mtk_hdmi_v2_bridge_atomic_check(struct drm_bridge *bridge,
> +					   struct drm_bridge_state *bridge_state,
> +					   struct drm_crtc_state *crtc_state,
> +					   struct drm_connector_state *conn_state)
> +{
> +	return drm_atomic_helper_connector_hdmi_check(conn_state->connector,
> +						      conn_state->state);
> +}

This is now a part of the drm_bridge_connector and can be dropped from
the bridge driver.

> +
> +static const struct drm_bridge_funcs mtk_v2_hdmi_bridge_funcs = {
> +	.attach = mtk_hdmi_v2_bridge_attach,
> +	.detach = mtk_hdmi_v2_bridge_detach,
> +	.mode_fixup = mtk_hdmi_bridge_mode_fixup,
> +	.mode_set = mtk_hdmi_bridge_mode_set,
> +	.atomic_pre_enable = mtk_hdmi_v2_bridge_pre_enable,
> +	.atomic_enable = mtk_hdmi_v2_bridge_enable,
> +	.atomic_disable = mtk_hdmi_v2_bridge_disable,
> +	.atomic_post_disable = mtk_hdmi_v2_bridge_post_disable,
> +	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> +	.atomic_check = mtk_hdmi_v2_bridge_atomic_check,
> +	.atomic_reset = drm_atomic_helper_bridge_reset,
> +	.detect = mtk_hdmi_v2_bridge_detect,
> +	.edid_read = mtk_hdmi_v2_bridge_edid_read,
> +	.hpd_enable = mtk_hdmi_v2_hpd_enable,
> +	.hpd_disable = mtk_hdmi_v2_hpd_disable,
> +	.hdmi_tmds_char_rate_valid = mtk_hdmi_v2_hdmi_tmds_char_rate_valid,
> +	.hdmi_clear_infoframe = mtk_hdmi_v2_hdmi_clear_infoframe,
> +	.hdmi_write_infoframe = mtk_hdmi_v2_hdmi_write_infoframe,

Note: the HDMI Codec framework has been merged. switching to it can come
as a followup patchset.

> +};
> +
> +/*
> + * HDMI audio codec callbacks
> + */
> +static int mtk_hdmi_v2_audio_hook_plugged_cb(struct device *dev, void *data,
> +					     hdmi_codec_plugged_cb fn,
> +					     struct device *codec_dev)
> +{
> +	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
> +	bool plugged;
> +
> +	if (!hdmi)
> +		return -ENODEV;
> +
> +	mtk_hdmi_audio_set_plugged_cb(hdmi, fn, codec_dev);
> +	plugged = (hdmi->hpd == HDMI_PLUG_IN_AND_SINK_POWER_ON);
> +	mtk_hdmi_v2_handle_plugged_change(hdmi, plugged);
> +
> +	return 0;
> +}
> +
> +static int mtk_hdmi_v2_audio_hw_params(struct device *dev, void *data,
> +				       struct hdmi_codec_daifmt *daifmt,
> +				       struct hdmi_codec_params *params)
> +{
> +	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	if (hdmi->audio_enable) {
> +		mtk_hdmi_audio_params(hdmi, daifmt, params);
> +		mtk_hdmi_v2_aud_output_config(hdmi, &hdmi->mode);
> +	}
> +	return 0;
> +}
> +
> +static int mtk_hdmi_v2_audio_startup(struct device *dev, void *data)
> +{
> +	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	mtk_hdmi_v2_hw_aud_enable(hdmi, true);
> +	hdmi->audio_enable = true;
> +
> +	return 0;
> +}
> +
> +static void mtk_hdmi_v2_audio_shutdown(struct device *dev, void *data)
> +{
> +	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	hdmi->audio_enable = false;
> +	mtk_hdmi_v2_hw_aud_enable(hdmi, false);
> +}
> +
> +static int mtk_hdmi_v2_audio_mute(struct device *dev, void *data, bool enable, int dir)
> +{
> +	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	mtk_hdmi_v2_hw_aud_mute(hdmi, enable);
> +
> +	return 0;
> +}
> +
> +static const struct hdmi_codec_ops mtk_hdmi_v2_audio_codec_ops = {
> +	.hw_params = mtk_hdmi_v2_audio_hw_params,
> +	.audio_startup = mtk_hdmi_v2_audio_startup,
> +	.audio_shutdown = mtk_hdmi_v2_audio_shutdown,
> +	.mute_stream = mtk_hdmi_v2_audio_mute,
> +	.get_eld = mtk_hdmi_audio_get_eld,
> +	.hook_plugged_cb = mtk_hdmi_v2_audio_hook_plugged_cb,
> +};
> +
> +static __maybe_unused int mtk_hdmi_v2_suspend(struct device *dev)
> +{
> +	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	mtk_hdmi_v2_disable(hdmi);
> +
> +	return 0;
> +}
> +
> +static __maybe_unused int mtk_hdmi_v2_resume(struct device *dev)
> +{
> +	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
> +	int ret;
> +
> +	pm_runtime_get_sync(dev);
> +
> +	ret = mtk_hdmi_v2_clk_enable(hdmi);
> +	if (ret)
> +		return ret;
> +
> +	mtk_hdmi_v2_enable_hpd_pord_irq(hdmi, true);
> +
> +	return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(mtk_hdmi_v2_pm_ops, mtk_hdmi_v2_suspend, mtk_hdmi_v2_resume);
> +
> +static const struct mtk_hdmi_ver_conf mtk_hdmi_conf_v2 = {
> +	.bridge_funcs = &mtk_v2_hdmi_bridge_funcs,
> +	.codec_ops = &mtk_hdmi_v2_audio_codec_ops,
> +	.mtk_hdmi_clock_names = mtk_hdmi_v2_clk_names,
> +	.num_clocks = MTK_HDMI_V2_CLK_COUNT
> +};
> +
> +static const struct mtk_hdmi_conf mtk_hdmi_conf_mt8188 = {
> +	.ver_conf = &mtk_hdmi_conf_v2,
> +	.reg_hdmi_tx_cfg = HDMITX_CONFIG_MT8188
> +};
> +
> +static const struct mtk_hdmi_conf mtk_hdmi_conf_mt8195 = {
> +	.ver_conf = &mtk_hdmi_conf_v2,
> +	.reg_hdmi_tx_cfg = HDMITX_CONFIG_MT8195
> +};
> +
> +static int mtk_hdmi_v2_probe(struct platform_device *pdev)
> +{
> +	struct mtk_hdmi *hdmi;
> +	int ret;
> +
> +	hdmi = mtk_hdmi_common_probe(pdev);
> +	if (IS_ERR(hdmi))
> +		return PTR_ERR(hdmi);
> +
> +	hdmi->hpd = HDMI_PLUG_OUT;
> +
> +	/*
> +	 * Disable all HW interrupts at probe stage and install the ISR
> +	 * but keep it disabled, as the rest of the interrupts setup is
> +	 * done in the .bridge_attach() callback, which will enable both
> +	 * the right HW IRQs and the ISR.
> +	 */
> +	mtk_hdmi_v2_hwirq_disable(hdmi);
> +	irq_set_status_flags(hdmi->irq, IRQ_NOAUTOEN);
> +	ret = devm_request_threaded_irq(&pdev->dev, hdmi->irq, mtk_hdmi_v2_isr,
> +					mtk_hdmi_v2_isr_thread,
> +					IRQ_TYPE_LEVEL_HIGH,
> +					dev_name(&pdev->dev), hdmi);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "Cannot request IRQ\n");
> +
> +	ret = devm_pm_runtime_enable(&pdev->dev);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "Cannot enable Runtime PM\n");
> +
> +	return 0;
> +}
> +
> +static void mtk_hdmi_v2_remove(struct platform_device *pdev)
> +{
> +	struct mtk_hdmi *hdmi = platform_get_drvdata(pdev);
> +
> +	pm_runtime_disable(&pdev->dev);

You have devm_pm_runtime_enable(), so this call must go away.

> +	i2c_put_adapter(hdmi->ddc_adpt);
> +}
> +
> +static const struct of_device_id mtk_drm_hdmi_v2_of_ids[] = {
> +	{ .compatible = "mediatek,mt8188-hdmi-tx", .data = &mtk_hdmi_conf_mt8188 },
> +	{ .compatible = "mediatek,mt8195-hdmi-tx", .data = &mtk_hdmi_conf_mt8195 },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, mtk_drm_hdmi_v2_of_ids);
> +
> +static struct platform_driver mtk_hdmi_v2_driver = {
> +	.probe = mtk_hdmi_v2_probe,
> +	.remove = mtk_hdmi_v2_remove,
> +	.driver = {
> +		.name = "mediatek-drm-hdmi-v2",
> +		.of_match_table = mtk_drm_hdmi_v2_of_ids,
> +		.pm = &mtk_hdmi_v2_pm_ops,
> +	},
> +};
> +module_platform_driver(mtk_hdmi_v2_driver);
> +
> +MODULE_AUTHOR("AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>>");
> +MODULE_DESCRIPTION("MediaTek HDMIv2 Driver");
> +MODULE_LICENSE("GPL");
> +MODULE_IMPORT_NS("DRM_MTK_HDMI");
> -- 
> 2.47.0
> 

-- 
With best wishes
Dmitry

