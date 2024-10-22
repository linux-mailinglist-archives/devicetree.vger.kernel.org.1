Return-Path: <devicetree+bounces-113989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A856C9A98D2
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 07:45:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C91261C21E24
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 05:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F96E139579;
	Tue, 22 Oct 2024 05:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CljLVCBW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EDD12CDBF;
	Tue, 22 Oct 2024 05:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729575898; cv=none; b=Buqg3vLzCbD9koc87J05JRvGNbUeC7sjmaIxG+k/EAJTEJKFOjTa50MiXPzrlfbKa3Hljl7CC0xJ7fVCyuehXYb+v4F0xIcEWu+NGPKG7Dw9c2B5TIYQS2p6ZCb8zZuycanIKEtoo8j0iWQAZDNrEiNegU1D1UDPqssc2OBzVgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729575898; c=relaxed/simple;
	bh=fwAB4lN4ySrOldfC1ebFo4dTdh5jfFE8TRdPDvEge3c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BA5LIpv8ZvmrxUZfIHNZ07qybCjcoZGZb0dZQnqR60Q2Lyf6PhuhXYS5/QB4WFj3xWeF2YiIyYbcd8mkVnPPW1zoTjfO0YnPiSkM5G0DhZ9HGY58uspwi7nDakZi5t+6VfGgE5QFZL5cFO5i/aGMbJh98OkFJvN/ne4UYBpkJwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CljLVCBW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31C3BC4CEC3;
	Tue, 22 Oct 2024 05:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575897;
	bh=fwAB4lN4ySrOldfC1ebFo4dTdh5jfFE8TRdPDvEge3c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CljLVCBW6toX501JM+W1HWb2ASiYzOPDhD/rRsnvm8K34UG3L+yaqi01WA/z50xhM
	 kiW/qPCE2Eb03IeWidN8/x1fDherJd5Cme0SNchukqpmJ9P0G1BX/IKwrsaB11Ia7d
	 Ximv4EwHSc+EKTK+kyO+SagGOQ9iXAJN2PTTwVvTcUFZFidTv03YMk2xO53tbA0apt
	 v0ayYAhO4kEP42Y/IILYSy9o4QSJCw0GpL5C5dAH/h2+K3s2f02RFtVdxtUqUV4N04
	 eMTs6m0Vts6swSoN0zPtI/rLsZ0Im4irMhll5A30f3U5rh+3zD1eSWK3bQ5eIqcb1y
	 sSXxgLpGQXNyg==
Message-ID: <abe77aed-c777-4892-9fce-aaad508700f6@kernel.org>
Date: Tue, 22 Oct 2024 07:44:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 05/10] media: platform: mediatek: add isp_7x camsys
 unit
To: Shu-hsiang Yang <Shu-hsiang.Yang@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Konig <christian.koenig@amd.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com, yaya.chang@mediatek.com,
 teddy.chen@mediatek.com, hidenorik@chromium.org, yunkec@chromium.org,
 shun-yi.wang@mediatek.com
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
 <20241009111551.27052-6-Shu-hsiang.Yang@mediatek.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzSVLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGVBBMBCgA/AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJgPO8PBQkUX63hAAoJEBuTQ307
 QWKbBn8P+QFxwl7pDsAKR1InemMAmuykCHl+XgC0LDqrsWhAH5TYeTVXGSyDsuZjHvj+FRP+
 gZaEIYSw2Yf0e91U9HXo3RYhEwSmxUQ4Fjhc9qAwGKVPQf6YuQ5yy6pzI8brcKmHHOGrB3tP
 /MODPt81M1zpograAC2WTDzkICfHKj8LpXp45PylD99J9q0Y+gb04CG5/wXs+1hJy/dz0tYy
 iua4nCuSRbxnSHKBS5vvjosWWjWQXsRKd+zzXp6kfRHHpzJkhRwF6ArXi4XnQ+REnoTfM5Fk
 VmVmSQ3yFKKePEzoIriT1b2sXO0g5QXOAvFqB65LZjXG9jGJoVG6ZJrUV1MVK8vamKoVbUEe
 0NlLl/tX96HLowHHoKhxEsbFzGzKiFLh7hyboTpy2whdonkDxpnv/H8wE9M3VW/fPgnL2nPe
 xaBLqyHxy9hA9JrZvxg3IQ61x7rtBWBUQPmEaK0azW+l3ysiNpBhISkZrsW3ZUdknWu87nh6
 eTB7mR7xBcVxnomxWwJI4B0wuMwCPdgbV6YDUKCuSgRMUEiVry10xd9KLypR9Vfyn1AhROrq
 AubRPVeJBf9zR5UW1trJNfwVt3XmbHX50HCcHdEdCKiT9O+FiEcahIaWh9lihvO0ci0TtVGZ
 MCEtaCE80Q3Ma9RdHYB3uVF930jwquplFLNF+IBCn5JRzsFNBFVDXDQBEADNkrQYSREUL4D3
 Gws46JEoZ9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLue
 MNsWLJBvBaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6ei
 OMheesVS5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wA
 GldWsRxbf3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA
 6z6lBZn0WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9
 YegxWKvXXHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt
 91pFzBSOIpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gU
 BLHFTg2hYnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/
 JoFzZ4B0p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu
 4vXVFBYIGmpyNPYzRm0QPwARAQABwsF8BBgBCgAmAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtB
 YpsFAmA872oFCRRflLYACgkQG5NDfTtBYpvScw/9GrqBrVLuJoJ52qBBKUBDo4E+5fU1bjt0
 Gv0nh/hNJuecuRY6aemU6HOPNc2t8QHMSvwbSF+Vp9ZkOvrM36yUOufctoqON+wXrliEY0J4
 ksR89ZILRRAold9Mh0YDqEJc1HmuxYLJ7lnbLYH1oui8bLbMBM8S2Uo9RKqV2GROLi44enVt
 vdrDvo+CxKj2K+d4cleCNiz5qbTxPUW/cgkwG0lJc4I4sso7l4XMDKn95c7JtNsuzqKvhEVS
 oic5by3fbUnuI0cemeizF4QdtX2uQxrP7RwHFBd+YUia7zCcz0//rv6FZmAxWZGy5arNl6Vm
 lQqNo7/Poh8WWfRS+xegBxc6hBXahpyUKphAKYkah+m+I0QToCfnGKnPqyYIMDEHCS/RfqA5
 t8F+O56+oyLBAeWX7XcmyM6TGeVfb+OZVMJnZzK0s2VYAuI0Rl87FBFYgULdgqKV7R7WHzwD
 uZwJCLykjad45hsWcOGk3OcaAGQS6NDlfhM6O9aYNwGL6tGt/6BkRikNOs7VDEa4/HlbaSJo
 7FgndGw1kWmkeL6oQh7wBvYll2buKod4qYntmNKEicoHGU+x91Gcan8mCoqhJkbqrL7+nXG2
 5Q/GS5M9RFWS+nYyJh+c3OcfKqVcZQNANItt7+ULzdNJuhvTRRdC3g9hmCEuNSr+CLMdnRBY fv0=
In-Reply-To: <20241009111551.27052-6-Shu-hsiang.Yang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/10/2024 13:15, Shu-hsiang Yang wrote:
> Introduces the top media device driver for the MediaTek ISP7X CAMSYS.
> The driver maintains the camera system, including sub-device management,
> DMA operations, and integration with the V4L2 framework. It handles
> request stream data, buffer management, and MediaTek-specific features,
> and pipeline management, streaming control, error handling mechanism.
> Additionally, it aggregates sub-drivers for the camera interface, raw
> and yuv pipelines.
> 
> Signed-off-by: Shu-hsiang Yang <Shu-hsiang.Yang@mediatek.com>

...

> +
> +static int mtk_cam_probe(struct platform_device *pdev)
> +{
> +	struct mtk_cam_device *cam_dev;
> +	struct device *dev = &pdev->dev;
> +	struct resource *res;
> +	int ret;
> +	unsigned int i;
> +
> +	dev_dbg(dev, "camsys | start %s\n", __func__);

NAK. Same issues.

> +
> +	/* initialize structure */
> +	cam_dev = devm_kzalloc(dev, sizeof(*cam_dev), GFP_KERNEL);
> +	if (!cam_dev)
> +		return -ENOMEM;
> +
> +	if (dma_set_mask_and_coherent(dev, DMA_BIT_MASK(34))) {
> +		dev_err(dev, "%s: No suitable DMA available\n", __func__);
> +		return -EIO;
> +	}
> +
> +	if (!dev->dma_parms) {
> +		dev->dma_parms =
> +			devm_kzalloc(dev, sizeof(*dev->dma_parms), GFP_KERNEL);
> +		if (!dev->dma_parms)
> +			return -ENOMEM;
> +	}
> +
> +	dma_set_max_seg_size(dev, UINT_MAX);
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		dev_err(dev, "failed to get mem\n");
> +		return -ENODEV;
> +	}
> +
> +	cam_dev->base = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(cam_dev->base)) {
> +		dev_err(dev, "failed to map register base\n");
> +		return PTR_ERR(cam_dev->base);
> +	}
> +
> +	cam_dev->dev = dev;
> +	dev_set_drvdata(dev, cam_dev);
> +
> +	cam_dev->composer_cnt = 0;
> +	cam_dev->num_seninf_devices = 0;
> +
> +	cam_dev->max_stream_num = MTKCAM_SUBDEV_MAX;
> +	cam_dev->ctxs = devm_kcalloc(dev, cam_dev->max_stream_num,
> +				     sizeof(*cam_dev->ctxs), GFP_KERNEL);
> +	if (!cam_dev->ctxs)
> +		return -ENOMEM;
> +
> +	cam_dev->streaming_ctx = 0;
> +	for (i = 0; i < cam_dev->max_stream_num; i++)
> +		mtk_cam_ctx_init(cam_dev->ctxs + i, cam_dev, i);
> +
> +	cam_dev->running_job_count = 0;
> +	spin_lock_init(&cam_dev->pending_job_lock);
> +	spin_lock_init(&cam_dev->running_job_lock);
> +	INIT_LIST_HEAD(&cam_dev->pending_job_list);
> +	INIT_LIST_HEAD(&cam_dev->running_job_list);
> +
> +	cam_dev->dma_processing_count = 0;
> +	spin_lock_init(&cam_dev->dma_pending_lock);
> +	spin_lock_init(&cam_dev->dma_processing_lock);
> +	INIT_LIST_HEAD(&cam_dev->dma_pending);
> +	INIT_LIST_HEAD(&cam_dev->dma_processing);
> +
> +	mutex_init(&cam_dev->queue_lock);
> +
> +	pm_runtime_enable(dev);
> +
> +	ret = mtk_cam_of_rproc(cam_dev, pdev);
> +	if (ret)
> +		goto fail_destroy_mutex;
> +
> +	ret = register_sub_drivers(dev);
> +	if (ret) {
> +		dev_err(dev, "fail to register_sub_drivers\n");
> +		goto fail_destroy_mutex;
> +	}
> +
> +	/* register mtk_cam as all isp subdev async parent */
> +	cam_dev->notifier.ops = &mtk_cam_async_nf_ops;
> +	v4l2_async_nf_init(&cam_dev->notifier, &cam_dev->v4l2_dev);
> +	ret = mtk_cam_async_subdev_add(dev); /* wait all isp sub drivers */
> +	if (ret) {
> +		dev_err(dev, "%s failed mtk_cam_async_subdev_add\n", __func__);
> +		goto fail_unregister_sub_drivers;
> +	}
> +
> +	ret = v4l2_async_nf_register(&cam_dev->notifier);
> +	if (ret) {
> +		dev_err(dev, "%s async_nf_register ret:%d\n", __func__, ret);
> +		v4l2_async_nf_cleanup(&cam_dev->notifier);
> +		goto fail_unregister_sub_drivers;
> +	}
> +
> +	ret = mtk_cam_debug_fs_init(cam_dev);
> +	if (ret < 0)
> +		goto fail_unregister_async_nf;
> +
> +	dev_info(dev, "camsys | [%s] success\n", __func__);

NAK. Same issues.

> +
> +	return 0;
> +
> +fail_unregister_async_nf:
> +	v4l2_async_nf_unregister(&cam_dev->notifier);
> +
> +fail_unregister_sub_drivers:
> +	unregister_sub_drivers(dev);
> +
> +fail_destroy_mutex:
> +	mutex_destroy(&cam_dev->queue_lock);
> +
> +	return ret;
> +}
> +
> +static void mtk_cam_remove(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mtk_cam_device *cam_dev = dev_get_drvdata(dev);
> +
> +	pm_runtime_disable(dev);
> +
> +	mtk_cam_debug_fs_deinit(cam_dev);
> +
> +	v4l2_async_nf_unregister(&cam_dev->notifier);
> +
> +	unregister_sub_drivers(dev);
> +
> +	mutex_destroy(&cam_dev->queue_lock);
> +}
> +
> +static const struct dev_pm_ops mtk_cam_pm_ops = {
> +	SET_RUNTIME_PM_OPS(mtk_cam_runtime_suspend, mtk_cam_runtime_resume,
> +			   NULL)
> +};
> +
> +static struct platform_driver mtk_cam_driver = {
> +	.probe   = mtk_cam_probe,
> +	.remove  = mtk_cam_remove,
> +	.driver  = {
> +		.name  = "mtk-cam",
> +		.of_match_table = of_match_ptr(mtk_cam_of_ids),

Same issues as in previous patch.

All my comments apply to all your patches in this thread.

> +		.pm     = &mtk_cam_pm_ops,
> +	}
> +};



Best regards,
Krzysztof


