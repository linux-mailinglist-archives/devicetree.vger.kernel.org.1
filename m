Return-Path: <devicetree+bounces-1814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1757A87F3
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:13:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B6462829A2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909E53B780;
	Wed, 20 Sep 2023 15:13:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F08D29A1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:13:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44331C433C8;
	Wed, 20 Sep 2023 15:13:21 +0000 (UTC)
Message-ID: <b7aa9a5a-018a-4d78-b001-4ba84acb1e24@xs4all.nl>
Date: Wed, 20 Sep 2023 17:13:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 5/7] media: chips-media: wave5: Add the v4l2 layer
Content-Language: en-US, nl
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nas Chung <nas.chung@chipsnmedia.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Conor Dooley <conor+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Robert Beckett <bob.beckett@collabora.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20230915-wave5_v12_on_media_master-v12-0-92fc66cd685d@collabora.com>
 <20230915-wave5_v12_on_media_master-v12-5-92fc66cd685d@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Autocrypt: addr=hverkuil@xs4all.nl; keydata=
 xsFNBFQ84W0BEAC7EF1iL4s3tY8cRTVkJT/297h0Hz0ypA+ByVM4CdU9sN6ua/YoFlr9k0K4
 BFUlg7JzJoUuRbKxkYb8mmqOe722j7N3HO8+ofnio5cAP5W0WwDpM0kM84BeHU0aPSTsWiGR
 yw55SOK2JBSq7hueotWLfJLobMWhQii0Zd83hGT9SIt9uHaHjgwmtTH7MSTIiaY6N14nw2Ud
 C6Uykc1va0Wqqc2ov5ihgk/2k2SKa02ookQI3e79laOrbZl5BOXNKR9LguuOZdX4XYR3Zi6/
 BsJ7pVCK9xkiVf8svlEl94IHb+sa1KrlgGv3fn5xgzDw8Z222TfFceDL/2EzUyTdWc4GaPMC
 E/c1B4UOle6ZHg02+I8tZicjzj5+yffv1lB5A1btG+AmoZrgf0X2O1B96fqgHx8w9PIpVERN
 YsmkfxvhfP3MO3oHh8UY1OLKdlKamMneCLk2up1Zlli347KMjHAVjBAiy8qOguKF9k7HOjif
 JCLYTkggrRiEiE1xg4tblBNj8WGyKH+u/hwwwBqCd/Px2HvhAsJQ7DwuuB3vBAp845BJYUU3
 06kRihFqbO0vEt4QmcQDcbWINeZ2zX5TK7QQ91ldHdqJn6MhXulPKcM8tCkdD8YNXXKyKqNl
 UVqXnarz8m2JCbHgjEkUlAJCNd6m3pfESLZwSWsLYL49R5yxIwARAQABzSFIYW5zIFZlcmt1
 aWwgPGh2ZXJrdWlsQHhzNGFsbC5ubD7CwZUEEwECACgFAlQ84W0CGwMFCRLMAwAGCwkIBwMC
 BhUIAgkKCwQWAgMBAh4BAheAACEJEL0tYUhmFDtMFiEEBSzee8IVBTtonxvKvS1hSGYUO0wT
 7w//frEmPBAwu3OdvAk9VDkH7X+7RcFpiuUcJxs3Xl6jpaA+SdwtZra6W1uMrs2RW8eXXiq/
 80HXJtYnal1Y8MKUBoUVhT/+5+KcMyfVQK3VFRHnNxCmC9HZV+qdyxAGwIscUd4hSlweuU6L
 6tI7Dls6NzKRSTFbbGNZCRgl8OrF01TBH+CZrcFIoDgpcJA5Pw84mxo+wd2BZjPA4TNyq1od
 +slSRbDqFug1EqQaMVtUOdgaUgdlmjV0+GfBHoyCGedDE0knv+tRb8v5gNgv7M3hJO3Nrl+O
 OJVoiW0G6OWVyq92NNCKJeDy8XCB1yHCKpBd4evO2bkJNV9xcgHtLrVqozqxZAiCRKN1elWF
 1fyG8KNquqItYedUr+wZZacqW+uzpVr9pZmUqpVCk9s92fzTzDZcGAxnyqkaO2QTgdhPJT2m
 wpG2UwIKzzi13tmwakY7OAbXm76bGWVZCO3QTHVnNV8ku9wgeMc/ZGSLUT8hMDZlwEsW7u/D
 qt+NlTKiOIQsSW7u7h3SFm7sMQo03X/taK9PJhS2BhhgnXg8mOa6U+yNaJy+eU0Lf5hEUiDC
 vDOI5x++LD3pdrJVr/6ZB0Qg3/YzZ0dk+phQ+KlP6HyeO4LG662toMbFbeLcBjcC/ceEclII
 90QNEFSZKM6NVloM+NaZRYVO3ApxWkFu+1mrVTXOwU0EVDzhbQEQANzLiI6gHkIhBQKeQaYs
 p2SSqF9c++9LOy5x6nbQ4s0X3oTKaMGfBZuiKkkU6NnHCSa0Az5ScRWLaRGu1PzjgcVwzl5O
 sDawR1BtOG/XoPRNB2351PRp++W8TWo2viYYY0uJHKFHML+ku9q0P+NkdTzFGJLP+hn7x0RT
 DMbhKTHO3H2xJz5TXNE9zTJuIfGAz3ShDpijvzYieY330BzZYfpgvCllDVM5E4XgfF4F/N90
 wWKu50fMA01ufwu+99GEwTFVG2az5T9SXd7vfSgRSkzXy7hcnxj4IhOfM6Ts85/BjMeIpeqy
 TDdsuetBgX9DMMWxMWl7BLeiMzMGrfkJ4tvlof0sVjurXibTibZyfyGR2ricg8iTbHyFaAzX
 2uFVoZaPxrp7udDfQ96sfz0hesF9Zi8d7NnNnMYbUmUtaS083L/l2EDKvCIkhSjd48XF+aO8
 VhrCfbXWpGRaLcY/gxi2TXRYG9xCa7PINgz9SyO34sL6TeFPSZn4bPQV5O1j85Dj4jBecB1k
 z2arzwlWWKMZUbR04HTeAuuvYvCKEMnfW3ABzdonh70QdqJbpQGfAF2p4/iCETKWuqefiOYn
 pR8PqoQA1DYv3t7y9DIN5Jw/8Oj5wOeEybw6vTMB0rrnx+JaXvxeHSlFzHiD6il/ChDDkJ9J
 /ejCHUQIl40wLSDRABEBAAHCwXwEGAECAA8FAlQ84W0CGwwFCRLMAwAAIQkQvS1hSGYUO0wW
 IQQFLN57whUFO2ifG8q9LWFIZhQ7TA1WD/9yxJvQrpf6LcNrr8uMlQWCg2iz2q1LGt1Itkuu
 KaavEF9nqHmoqhSfZeAIKAPn6xuYbGxXDrpN7dXCOH92fscLodZqZtK5FtbLvO572EPfxneY
 UT7JzDc/5LT9cFFugTMOhq1BG62vUm/F6V91+unyp4dRlyryAeqEuISykhvjZCVHk/woaMZv
 c1Dm4Uvkv0Ilelt3Pb9J7zhcx6sm5T7v16VceF96jG61bnJ2GFS+QZerZp3PY27XgtPxRxYj
 AmFUeF486PHx/2Yi4u1rQpIpC5inPxIgR1+ZFvQrAV36SvLFfuMhyCAxV6WBlQc85ArOiQZB
 Wm7L0repwr7zEJFEkdy8C81WRhMdPvHkAIh3RoY1SGcdB7rB3wCzfYkAuCBqaF7Zgfw8xkad
 KEiQTexRbM1sc/I8ACpla3N26SfQwrfg6V7TIoweP0RwDrcf5PVvwSWsRQp2LxFCkwnCXOra
 gYmkrmv0duG1FStpY+IIQn1TOkuXrciTVfZY1cZD0aVxwlxXBnUNZZNslldvXFtndxR0SFat
 sflovhDxKyhFwXOP0Rv8H378/+14TaykknRBIKEc0+lcr+EMOSUR5eg4aURb8Gc3Uc7fgQ6q
 UssTXzHPyj1hAyDpfu8DzAwlh4kKFTodxSsKAjI45SLjadSc94/5Gy8645Y1KgBzBPTH7Q==
In-Reply-To: <20230915-wave5_v12_on_media_master-v12-5-92fc66cd685d@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/09/2023 23:11, Sebastian Fricke wrote:
> From: Nas Chung <nas.chung@chipsnmedia.com>
> 
> Add the decoder and encoder implementing the v4l2
> API. This patch also adds the Makefile and the VIDEO_WAVE_VPU config
> 
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Signed-off-by: Nas Chung <nas.chung@chipsnmedia.com>
> ---
>  drivers/media/platform/chips-media/Kconfig         |    1 +
>  drivers/media/platform/chips-media/Makefile        |    1 +
>  drivers/media/platform/chips-media/wave5/Kconfig   |   12 +
>  drivers/media/platform/chips-media/wave5/Makefile  |   10 +
>  .../platform/chips-media/wave5/wave5-helper.c      |  196 ++
>  .../platform/chips-media/wave5/wave5-helper.h      |   30 +
>  .../platform/chips-media/wave5/wave5-vpu-dec.c     | 1965 ++++++++++++++++++++
>  .../platform/chips-media/wave5/wave5-vpu-enc.c     | 1825 ++++++++++++++++++
>  .../media/platform/chips-media/wave5/wave5-vpu.c   |  331 ++++
>  .../media/platform/chips-media/wave5/wave5-vpu.h   |   83 +
>  10 files changed, 4454 insertions(+)
> 
> diff --git a/drivers/media/platform/chips-media/Kconfig b/drivers/media/platform/chips-media/Kconfig
> index f87a0d693df7..ad350eb6b1fc 100644
> --- a/drivers/media/platform/chips-media/Kconfig
> +++ b/drivers/media/platform/chips-media/Kconfig
> @@ -3,3 +3,4 @@
>  comment "Chips&Media media platform drivers"
>  
>  source "drivers/media/platform/chips-media/coda/Kconfig"
> +source "drivers/media/platform/chips-media/wave5/Kconfig"
> diff --git a/drivers/media/platform/chips-media/Makefile b/drivers/media/platform/chips-media/Makefile
> index 5ee693f651c1..6b5d99de8b54 100644
> --- a/drivers/media/platform/chips-media/Makefile
> +++ b/drivers/media/platform/chips-media/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
>  obj-y += coda/
> +obj-y += wave5/
> diff --git a/drivers/media/platform/chips-media/wave5/Kconfig b/drivers/media/platform/chips-media/wave5/Kconfig
> new file mode 100644
> index 000000000000..a3b949356cd5
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/Kconfig
> @@ -0,0 +1,12 @@
> +# SPDX-License-Identifier: GPL-2.0
> +config VIDEO_WAVE_VPU
> +	tristate "Chips&Media Wave Codec Driver"
> +	depends on VIDEO_DEV
> +	select VIDEOBUF2_DMA_CONTIG
> +	select VIDEOBUF2_VMALLOC
> +	select V4L2_MEM2MEM_DEV
> +	help
> +	  Chips&Media stateful encoder and decoder driver.
> +	  The driver supports HEVC and H264 formats.
> +	  To compile this driver as modules, choose M here: the
> +	  modules will be called wave5.
> diff --git a/drivers/media/platform/chips-media/wave5/Makefile b/drivers/media/platform/chips-media/wave5/Makefile
> new file mode 100644
> index 000000000000..3d738a03bd8e
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/Makefile
> @@ -0,0 +1,10 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_VIDEO_WAVE_VPU) += wave5.o
> +wave5-objs +=  	wave5-hw.o \
> +		wave5-vpuapi.o \
> +		wave5-vdi.o \
> +		wave5-vpu-dec.o \
> +		wave5-vpu.o \
> +		wave5-vpu-enc.o \
> +		wave5-helper.o
> diff --git a/drivers/media/platform/chips-media/wave5/wave5-helper.c b/drivers/media/platform/chips-media/wave5/wave5-helper.c
> new file mode 100644
> index 000000000000..07b6910bbfee
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/wave5-helper.c
> @@ -0,0 +1,196 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Wave5 series multi-standard codec IP - decoder interface
> + *
> + * Copyright (C) 2021 CHIPS&MEDIA INC

2021? Should that be 2021-2023?

> + */
> +
> +#include "wave5-helper.h"
> +
> +const char *state_to_str(enum vpu_instance_state state)
> +{
> +	switch (state) {
> +	case VPU_INST_STATE_NONE:
> +		return "NONE";
> +	case VPU_INST_STATE_OPEN:
> +		return "OPEN";
> +	case VPU_INST_STATE_INIT_SEQ:
> +		return "INIT_SEQ";
> +	case VPU_INST_STATE_PIC_RUN:
> +		return "PIC_RUN";
> +	case VPU_INST_STATE_STOP:
> +		return "STOP";
> +	default:
> +		return "UNKNOWN";
> +	}
> +}
> +
> +void wave5_cleanup_instance(struct vpu_instance *inst)
> +{
> +	int i;
> +
> +	if (list_is_singular(&inst->list))
> +		wave5_vdi_free_sram(inst->dev);
> +
> +	for (i = 0; i < inst->fbc_buf_count; i++)
> +		wave5_vpu_dec_reset_framebuffer(inst, i);
> +
> +	wave5_vdi_free_dma_memory(inst->dev, &inst->bitstream_vbuf);
> +	v4l2_ctrl_handler_free(&inst->v4l2_ctrl_hdl);
> +	if (inst->v4l2_fh.vdev) {
> +		v4l2_fh_del(&inst->v4l2_fh);
> +		v4l2_fh_exit(&inst->v4l2_fh);
> +	}
> +	list_del_init(&inst->list);
> +	kfifo_free(&inst->irq_status);
> +	ida_free(&inst->dev->inst_ida, inst->id);
> +	kfree(inst->codec_info);
> +	kfree(inst);
> +}
> +
> +int wave5_vpu_release_device(struct file *filp,
> +			     int (*close_func)(struct vpu_instance *inst, u32 *fail_res),
> +			     char *name)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(filp->private_data);
> +
> +	v4l2_m2m_ctx_release(inst->v4l2_fh.m2m_ctx);
> +	if (inst->state != VPU_INST_STATE_NONE) {
> +		u32 fail_res;
> +		int ret;
> +
> +		ret = close_func(inst, &fail_res);
> +		if (fail_res == WAVE5_SYSERR_VPU_STILL_RUNNING) {
> +			dev_err(inst->dev->dev, "%s close failed, device is still running\n",
> +				name);
> +			return -EBUSY;
> +		}
> +		if (ret && ret != -EIO) {
> +			dev_err(inst->dev->dev, "%s close, fail: %d\n", name, ret);
> +			return ret;
> +		}
> +	}
> +
> +	wave5_cleanup_instance(inst);
> +
> +	return 0;
> +}
> +
> +int wave5_vpu_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq,
> +			 const struct vb2_ops *ops)
> +{
> +	struct vpu_instance *inst = priv;
> +	int ret;
> +
> +	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
> +	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
> +	src_vq->mem_ops = &vb2_dma_contig_memops;
> +	src_vq->ops = ops;
> +	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
> +	src_vq->buf_struct_size = sizeof(struct vpu_src_buffer);
> +	src_vq->drv_priv = inst;
> +	src_vq->lock = &inst->dev->dev_lock;
> +	src_vq->dev = inst->dev->v4l2_dev.dev;
> +	ret = vb2_queue_init(src_vq);
> +	if (ret)
> +		return ret;
> +
> +	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
> +	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
> +	dst_vq->mem_ops = &vb2_dma_contig_memops;
> +	dst_vq->ops = ops;
> +	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
> +	dst_vq->buf_struct_size = sizeof(struct vpu_src_buffer);
> +	dst_vq->drv_priv = inst;
> +	dst_vq->lock = &inst->dev->dev_lock;
> +	dst_vq->dev = inst->dev->v4l2_dev.dev;
> +	ret = vb2_queue_init(dst_vq);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +int wave5_vpu_subscribe_event(struct v4l2_fh *fh, const struct v4l2_event_subscription *sub)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	bool is_decoder = inst->type == VPU_INST_TYPE_DEC;
> +
> +	dev_dbg(inst->dev->dev, "%s: [%s] type: %u id: %u | flags: %u\n", __func__,
> +		is_decoder ? "decoder" : "encoder", sub->type, sub->id, sub->flags);
> +
> +	switch (sub->type) {
> +	case V4L2_EVENT_EOS:
> +		return v4l2_event_subscribe(fh, sub, 0, NULL);
> +	case V4L2_EVENT_SOURCE_CHANGE:
> +		if (is_decoder)
> +			return v4l2_src_change_event_subscribe(fh, sub);
> +		return -EINVAL;
> +	case V4L2_EVENT_CTRL:
> +		return v4l2_ctrl_subscribe_event(fh, sub);
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +int wave5_vpu_g_fmt_out(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	int i;
> +
> +	f->fmt.pix_mp.width = inst->src_fmt.width;
> +	f->fmt.pix_mp.height = inst->src_fmt.height;
> +	f->fmt.pix_mp.pixelformat = inst->src_fmt.pixelformat;
> +	f->fmt.pix_mp.field = inst->src_fmt.field;
> +	f->fmt.pix_mp.flags = inst->src_fmt.flags;
> +	f->fmt.pix_mp.num_planes = inst->src_fmt.num_planes;
> +	for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
> +		f->fmt.pix_mp.plane_fmt[i].bytesperline = inst->src_fmt.plane_fmt[i].bytesperline;
> +		f->fmt.pix_mp.plane_fmt[i].sizeimage = inst->src_fmt.plane_fmt[i].sizeimage;
> +	}
> +
> +	f->fmt.pix_mp.colorspace = inst->colorspace;
> +	f->fmt.pix_mp.ycbcr_enc = inst->ycbcr_enc;
> +	f->fmt.pix_mp.hsv_enc = inst->hsv_enc;
> +	f->fmt.pix_mp.quantization = inst->quantization;
> +	f->fmt.pix_mp.xfer_func = inst->xfer_func;
> +
> +	return 0;
> +}
> +
> +const struct vpu_format *wave5_find_vpu_fmt(unsigned int v4l2_pix_fmt,
> +					    const struct vpu_format fmt_list[MAX_FMTS])
> +{
> +	unsigned int index;
> +
> +	for (index = 0; index < MAX_FMTS; index++) {
> +		if (fmt_list[index].v4l2_pix_fmt == v4l2_pix_fmt)
> +			return &fmt_list[index];
> +	}
> +
> +	return NULL;
> +}
> +
> +const struct vpu_format *wave5_find_vpu_fmt_by_idx(unsigned int idx,
> +						   const struct vpu_format fmt_list[MAX_FMTS])
> +{
> +	if (idx >= MAX_FMTS)
> +		return NULL;
> +
> +	if (!fmt_list[idx].v4l2_pix_fmt)
> +		return NULL;
> +
> +	return &fmt_list[idx];
> +}
> +
> +enum wave_std wave5_to_vpu_std(unsigned int v4l2_pix_fmt, enum vpu_instance_type type)
> +{
> +	switch (v4l2_pix_fmt) {
> +	case V4L2_PIX_FMT_H264:
> +		return type == VPU_INST_TYPE_DEC ? W_AVC_DEC : W_AVC_ENC;
> +	case V4L2_PIX_FMT_HEVC:
> +		return type == VPU_INST_TYPE_DEC ? W_HEVC_DEC : W_HEVC_ENC;
> +	default:
> +		return STD_UNKNOWN;
> +	}
> +}
> diff --git a/drivers/media/platform/chips-media/wave5/wave5-helper.h b/drivers/media/platform/chips-media/wave5/wave5-helper.h
> new file mode 100644
> index 000000000000..a55d5503f5b2
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/wave5-helper.h
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
> +/*
> + * Wave5 series multi-standard codec IP - basic types
> + *
> + * Copyright (C) 2021 CHIPS&MEDIA INC
> + */
> +
> +#ifndef __WAVE_HELPER_H__
> +#define __WAVE_HELPER_H__
> +
> +#include "wave5-vpu.h"
> +
> +#define FMT_TYPES	2
> +#define MAX_FMTS	12
> +
> +const char *state_to_str(enum vpu_instance_state state);
> +void wave5_cleanup_instance(struct vpu_instance *inst);
> +int wave5_vpu_release_device(struct file *filp,
> +			     int (*close_func)(struct vpu_instance *inst, u32 *fail_res),
> +			     char *name);
> +int wave5_vpu_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq,
> +			 const struct vb2_ops *ops);
> +int wave5_vpu_subscribe_event(struct v4l2_fh *fh, const struct v4l2_event_subscription *sub);
> +int wave5_vpu_g_fmt_out(struct file *file, void *fh, struct v4l2_format *f);
> +const struct vpu_format *wave5_find_vpu_fmt(unsigned int v4l2_pix_fmt,
> +					    const struct vpu_format fmt_list[MAX_FMTS]);
> +const struct vpu_format *wave5_find_vpu_fmt_by_idx(unsigned int idx,
> +						   const struct vpu_format fmt_list[MAX_FMTS]);
> +enum wave_std wave5_to_vpu_std(unsigned int v4l2_pix_fmt, enum vpu_instance_type type);
> +#endif
> diff --git a/drivers/media/platform/chips-media/wave5/wave5-vpu-dec.c b/drivers/media/platform/chips-media/wave5/wave5-vpu-dec.c
> new file mode 100644
> index 000000000000..41257a26504b
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/wave5-vpu-dec.c
> @@ -0,0 +1,1965 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Wave5 series multi-standard codec IP - decoder interface
> + *
> + * Copyright (C) 2021 CHIPS&MEDIA INC
> + */
> +
> +#include "wave5-helper.h"
> +
> +#define VPU_DEC_DEV_NAME "C&M Wave5 VPU decoder"
> +#define VPU_DEC_DRV_NAME "wave5-dec"
> +
> +#define DEFAULT_SRC_SIZE(width, height) ({			\
> +	(width) * (height) / 8 * 3;					\
> +})
> +
> +static const struct vpu_format dec_fmt_list[FMT_TYPES][MAX_FMTS] = {
> +	[VPU_FMT_TYPE_CODEC] = {
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_HEVC,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_H264,
> +			.max_width = 8192,
> +			.min_width = 32,
> +			.max_height = 4320,
> +			.min_height = 32,
> +		},
> +	},
> +	[VPU_FMT_TYPE_RAW] = {
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_YUV420,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV12,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV21,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_YUV422P,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV16,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV61,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_YUV420M,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV12M,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV21M,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_YUV422M,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV16M,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV61M,
> +			.max_width = 8192,
> +			.min_width = 8,
> +			.max_height = 4320,
> +			.min_height = 8,
> +		},
> +	}
> +};
> +
> +/*
> + * Make sure that the state switch is allowed and add logging for debugging
> + * purposes
> + */
> +static int switch_state(struct vpu_instance *inst, enum vpu_instance_state state)
> +{
> +	switch (state) {
> +	case VPU_INST_STATE_NONE:
> +		break;
> +	case VPU_INST_STATE_OPEN:
> +		if (inst->state != VPU_INST_STATE_NONE)
> +			goto invalid_state_switch;
> +		goto valid_state_switch;
> +	case VPU_INST_STATE_INIT_SEQ:
> +		if (inst->state != VPU_INST_STATE_OPEN && inst->state != VPU_INST_STATE_STOP)
> +			goto invalid_state_switch;
> +		goto valid_state_switch;
> +	case VPU_INST_STATE_PIC_RUN:
> +		if (inst->state != VPU_INST_STATE_INIT_SEQ)
> +			goto invalid_state_switch;
> +		goto valid_state_switch;
> +	case VPU_INST_STATE_STOP:
> +		goto valid_state_switch;
> +	};

Spurious ;

Odd, wouldn't checkpatch.pl --strict warn about that?

> +invalid_state_switch:
> +	WARN(1, "Invalid state switch from %s to %s.\n",
> +	     state_to_str(inst->state), state_to_str(state));
> +	return -EINVAL;
> +valid_state_switch:
> +	dev_dbg(inst->dev->dev, "Switch state from %s to %s.\n",
> +		state_to_str(inst->state), state_to_str(state));
> +	inst->state = state;
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_set_eos_on_firmware(struct vpu_instance *inst)
> +{
> +	int ret;
> +
> +	ret = wave5_vpu_dec_update_bitstream_buffer(inst, 0);
> +	if (ret) {
> +		dev_err(inst->dev->dev,
> +			"Setting EOS for the bitstream, fail: %d\n", ret);

Is this an error due to a driver problem, or because a bad bitstream is
fed from userspace? In the first case, dev_err would be right, in the
second dev_dbg would be more appropriate. Bad userspace input should not
spam the kernel log in general.

> +		return ret;
> +	}
> +	return 0;
> +}
> +
> +static bool wave5_last_src_buffer_consumed(struct v4l2_m2m_ctx *m2m_ctx)
> +{
> +	struct vpu_src_buffer *vpu_buf;
> +
> +	if (!m2m_ctx->last_src_buf)
> +		return false;
> +
> +	vpu_buf = wave5_to_vpu_src_buf(m2m_ctx->last_src_buf);
> +	return vpu_buf->consumed;
> +}
> +
> +static void wave5_handle_src_buffer(struct vpu_instance *inst, dma_addr_t rd_ptr)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct v4l2_m2m_buffer *buf, *n;
> +	size_t consumed_bytes = 0;
> +
> +	if (rd_ptr >= inst->last_rd_ptr) {
> +		consumed_bytes = rd_ptr - inst->last_rd_ptr;
> +	} else {
> +		size_t rd_offs = rd_ptr - inst->bitstream_vbuf.daddr;
> +		size_t last_rd_offs = inst->last_rd_ptr - inst->bitstream_vbuf.daddr;
> +
> +		consumed_bytes = rd_offs + (inst->bitstream_vbuf.size - last_rd_offs);
> +	}
> +
> +	inst->last_rd_ptr = rd_ptr;
> +	consumed_bytes += inst->remaining_consumed_bytes;
> +
> +	dev_dbg(inst->dev->dev, "%s: %zu bytes of bitstream was consumed", __func__,
> +		consumed_bytes);
> +
> +	v4l2_m2m_for_each_src_buf_safe(m2m_ctx, buf, n) {
> +		struct vb2_v4l2_buffer *src_buf = &buf->vb;
> +		size_t src_size = vb2_get_plane_payload(&src_buf->vb2_buf, 0);
> +
> +		if (src_size > consumed_bytes)
> +			break;
> +
> +		dev_dbg(inst->dev->dev, "%s: removing src buffer %i",
> +			__func__, src_buf->vb2_buf.index);
> +		src_buf = v4l2_m2m_src_buf_remove(m2m_ctx);
> +		inst->timestamp = src_buf->vb2_buf.timestamp;
> +		v4l2_m2m_buf_done(src_buf, VB2_BUF_STATE_DONE);
> +		consumed_bytes -= src_size;
> +
> +		/* Handle the case the last bitstream buffer has been picked */
> +		if (src_buf == m2m_ctx->last_src_buf) {
> +			int ret;
> +
> +			m2m_ctx->last_src_buf = NULL;
> +			ret = wave5_vpu_dec_set_eos_on_firmware(inst);
> +			if (ret)
> +				dev_warn(inst->dev->dev,
> +					 "Setting EOS for the bitstream, fail: %d\n", ret);
> +			break;
> +		}
> +	}
> +
> +	inst->remaining_consumed_bytes = consumed_bytes;
> +}
> +
> +static void wave5_update_pix_fmt(struct v4l2_pix_format_mplane *pix_mp, unsigned int width,
> +				 unsigned int height)
> +{
> +	switch (pix_mp->pixelformat) {
> +	case V4L2_PIX_FMT_YUV420:
> +	case V4L2_PIX_FMT_NV12:
> +	case V4L2_PIX_FMT_NV21:
> +		pix_mp->width = round_up(width, 32);
> +		pix_mp->height = round_up(height, 16);
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = width * height * 3 / 2;
> +		break;
> +	case V4L2_PIX_FMT_YUV422P:
> +	case V4L2_PIX_FMT_NV16:
> +	case V4L2_PIX_FMT_NV61:
> +		pix_mp->width = round_up(width, 32);
> +		pix_mp->height = round_up(height, 16);
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = width * height * 2;
> +		break;
> +	case V4L2_PIX_FMT_YUV420M:
> +		pix_mp->width = round_up(width, 32);
> +		pix_mp->height = round_up(height, 16);
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = width * height;
> +		pix_mp->plane_fmt[1].bytesperline = round_up(width, 32) / 2;
> +		pix_mp->plane_fmt[1].sizeimage = width * height / 4;
> +		pix_mp->plane_fmt[2].bytesperline = round_up(width, 32) / 2;
> +		pix_mp->plane_fmt[2].sizeimage = width * height / 4;
> +		break;
> +	case V4L2_PIX_FMT_NV12M:
> +	case V4L2_PIX_FMT_NV21M:
> +		pix_mp->width = round_up(width, 32);
> +		pix_mp->height = round_up(height, 16);
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = width * height;
> +		pix_mp->plane_fmt[1].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[1].sizeimage = width * height / 2;
> +		break;
> +	case V4L2_PIX_FMT_YUV422M:
> +		pix_mp->width = round_up(width, 32);
> +		pix_mp->height = round_up(height, 16);
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = width * height;
> +		pix_mp->plane_fmt[1].bytesperline = round_up(width, 32) / 2;
> +		pix_mp->plane_fmt[1].sizeimage = width * height / 2;
> +		pix_mp->plane_fmt[2].bytesperline = round_up(width, 32) / 2;
> +		pix_mp->plane_fmt[2].sizeimage = width * height / 2;
> +		break;
> +	case V4L2_PIX_FMT_NV16M:
> +	case V4L2_PIX_FMT_NV61M:
> +		pix_mp->width = round_up(width, 32);
> +		pix_mp->height = round_up(height, 16);
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = width * height;
> +		pix_mp->plane_fmt[1].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[1].sizeimage = width * height;
> +		break;
> +	default:
> +		pix_mp->width = width;
> +		pix_mp->height = height;
> +		pix_mp->plane_fmt[0].bytesperline = 0;
> +		pix_mp->plane_fmt[0].sizeimage = max(DEFAULT_SRC_SIZE(width, height),
> +						     pix_mp->plane_fmt[0].sizeimage);
> +		break;
> +	}
> +}
> +
> +static int start_decode(struct vpu_instance *inst, u32 *fail_res)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	int ret = 0;
> +
> +	ret = wave5_vpu_dec_start_one_frame(inst, fail_res);
> +	if (ret) {
> +		struct vb2_v4l2_buffer *src_buf;
> +
> +		/* FIXME this will have no effect on the firmware at all, and we
> +		 * are moving to STOP state, so the remaming src buffer won't be
> +		 * consumed. Maybe best here is just to make sure we can avoid
> +		 * deadlocking the app ?
> +		 */
> +		src_buf = v4l2_m2m_src_buf_remove(m2m_ctx);
> +		if (src_buf)
> +			v4l2_m2m_buf_done(src_buf, VB2_BUF_STATE_ERROR);
> +		switch_state(inst, VPU_INST_STATE_STOP);
> +
> +		dev_dbg(inst->dev->dev, "%s: pic run failed / finish job", __func__);
> +		v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +	}
> +
> +	return ret;
> +}
> +
> +/* Must be called with state_spinlock */
> +static void flag_last_buffer_done(struct vpu_instance *inst)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct vb2_v4l2_buffer *vb;
> +	int i;
> +
> +	vb = v4l2_m2m_dst_buf_remove(m2m_ctx);
> +	if (!vb) {
> +		m2m_ctx->is_draining = true;
> +		m2m_ctx->next_buf_last = true;
> +		return;
> +	}
> +
> +	for (i = 0; i < vb->vb2_buf.num_planes; i++)
> +		vb2_set_plane_payload(&vb->vb2_buf, i, 0);
> +	vb->field = V4L2_FIELD_NONE;
> +
> +	v4l2_m2m_last_buffer_done(m2m_ctx, vb);
> +}
> +
> +/* Must be called with state_spinlock */
> +static void send_eos_event(struct vpu_instance *inst)
> +{
> +	static const struct v4l2_event vpu_event_eos = {
> +		.type = V4L2_EVENT_EOS
> +	};
> +
> +	v4l2_event_queue_fh(&inst->v4l2_fh, &vpu_event_eos);
> +	inst->eos = false;
> +}
> +
> +/* Must be called with state_spinlock */
> +static int handle_dynamic_resolution_change(struct vpu_instance *inst)
> +{
> +	struct v4l2_fh *fh = &inst->v4l2_fh;
> +	static const struct v4l2_event vpu_event_src_ch = {
> +		.type = V4L2_EVENT_SOURCE_CHANGE,
> +		.u.src_change.changes = V4L2_EVENT_SRC_CH_RESOLUTION,
> +	};
> +	struct dec_info *p_dec_info = &inst->codec_info->dec_info;
> +	struct dec_initial_info *initial_info = &inst->codec_info->dec_info.initial_info;
> +
> +	dev_dbg(inst->dev->dev, "%s: rd_ptr %pad", __func__, &initial_info->rd_ptr);
> +
> +	dev_dbg(inst->dev->dev, "%s: width: %u height: %u profile: %u | minbuffer: %u\n",
> +		__func__, initial_info->pic_width, initial_info->pic_height,
> +		initial_info->profile, initial_info->min_frame_buffer_count);
> +
> +	inst->needs_reallocation = true;
> +	inst->fbc_buf_count = initial_info->min_frame_buffer_count + 1;
> +	if (inst->dst_buf_count != inst->fbc_buf_count) {
> +		struct v4l2_ctrl *ctrl;
> +
> +		ctrl = v4l2_ctrl_find(&inst->v4l2_ctrl_hdl,
> +				      V4L2_CID_MIN_BUFFERS_FOR_CAPTURE);
> +		if (ctrl)
> +			v4l2_ctrl_s_ctrl(ctrl, inst->fbc_buf_count);
> +
> +		inst->dst_buf_count = inst->fbc_buf_count;
> +	}
> +
> +	if (p_dec_info->initial_info_obtained) {
> +		inst->conf_win.left = initial_info->pic_crop_rect.left;
> +		inst->conf_win.top = initial_info->pic_crop_rect.top;
> +		inst->conf_win.width = initial_info->pic_width -
> +			initial_info->pic_crop_rect.left - initial_info->pic_crop_rect.right;
> +		inst->conf_win.height = initial_info->pic_height -
> +			initial_info->pic_crop_rect.top - initial_info->pic_crop_rect.bottom;
> +
> +		wave5_update_pix_fmt(&inst->src_fmt, initial_info->pic_width,
> +				     initial_info->pic_height);
> +		wave5_update_pix_fmt(&inst->dst_fmt, initial_info->pic_width,
> +				     initial_info->pic_height);
> +	}
> +
> +	v4l2_event_queue_fh(fh, &vpu_event_src_ch);
> +
> +	return 0;
> +}
> +
> +static void wave5_vpu_dec_finish_decode(struct vpu_instance *inst)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct dec_output_info dec_info;
> +	int ret;
> +	struct vb2_v4l2_buffer *dec_buf = NULL;
> +	struct vb2_v4l2_buffer *disp_buf = NULL;
> +	struct vb2_queue *dst_vq = v4l2_m2m_get_dst_vq(m2m_ctx);
> +	struct queue_status_info q_status;
> +
> +	dev_dbg(inst->dev->dev, "%s: Fetch output info from firmware.", __func__);
> +
> +	ret = wave5_vpu_dec_get_output_info(inst, &dec_info);
> +	if (ret) {
> +		dev_warn(inst->dev->dev, "%s: could not get output info.", __func__);
> +		v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +		return;
> +	}
> +
> +	dev_dbg(inst->dev->dev, "%s: rd_ptr %pad wr_ptr %pad", __func__, &dec_info.rd_ptr,
> +		&dec_info.wr_ptr);
> +	wave5_handle_src_buffer(inst, dec_info.rd_ptr);
> +
> +	dev_dbg(inst->dev->dev, "%s: dec_info dec_idx %i disp_idx %i", __func__,
> +		dec_info.index_frame_decoded, dec_info.index_frame_display);
> +
> +	if (!vb2_is_streaming(dst_vq)) {
> +		dev_dbg(inst->dev->dev, "%s: capture is not streaming..", __func__);
> +		v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +		return;
> +	}
> +
> +	/* Remove decoded buffer from the ready queue now that it has been
> +	 * decoded.
> +	 */
> +	if (dec_info.index_frame_decoded >= 0) {
> +		struct vb2_buffer *vb = vb2_get_buffer(dst_vq,
> +						       dec_info.index_frame_decoded);
> +		if (vb)
> +			dec_buf = to_vb2_v4l2_buffer(vb);
> +		else
> +			dev_warn(inst->dev->dev, "%s: invalid decoded frame index %i",
> +				 __func__, dec_info.index_frame_decoded);
> +	}
> +
> +	if (dec_buf)
> +		dec_buf->vb2_buf.timestamp = inst->timestamp;
> +
> +	if (dec_info.index_frame_display >= 0) {
> +		disp_buf = v4l2_m2m_dst_buf_remove_by_idx(m2m_ctx, dec_info.index_frame_display);
> +		if (!disp_buf)
> +			dev_warn(inst->dev->dev, "%s: invalid display frame index %i",
> +				 __func__, dec_info.index_frame_display);
> +	}
> +
> +	/* If there is anything to display, do that now */
> +	if (disp_buf) {
> +		struct vpu_dst_buffer *dst_vpu_buf = wave5_to_vpu_dst_buf(disp_buf);
> +		int stride = dec_info.disp_frame.stride;
> +		int height = dec_info.disp_pic_height;
> +
> +		/* FIXME we should calculate that once, and use v4l2-common if
> +		 * possible
> +		 */
> +		if (inst->dst_fmt.num_planes == 1) {
> +			vb2_set_plane_payload(&disp_buf->vb2_buf, 0,
> +					      (stride * height * 3 / 2));
> +		} else if (inst->dst_fmt.num_planes == 2) {
> +			vb2_set_plane_payload(&disp_buf->vb2_buf, 0,
> +					      (stride * height));
> +			vb2_set_plane_payload(&disp_buf->vb2_buf, 1,
> +					      ((stride / 2) * height));
> +		} else if (inst->dst_fmt.num_planes == 3) {
> +			vb2_set_plane_payload(&disp_buf->vb2_buf, 0,
> +					      (stride * height));
> +			vb2_set_plane_payload(&disp_buf->vb2_buf, 1,
> +					      ((stride / 2) * (height / 2)));
> +			vb2_set_plane_payload(&disp_buf->vb2_buf, 2,
> +					      ((stride / 2) * (height / 2)));
> +		}
> +
> +		/* TODO implement interlace support */
> +		disp_buf->field = V4L2_FIELD_NONE;
> +		dst_vpu_buf->display = true;
> +		v4l2_m2m_buf_done(disp_buf, VB2_BUF_STATE_DONE);
> +
> +		dev_dbg(inst->dev->dev, "%s: frame_cycle %8u (payload %lu stride %d height %d)\n",
> +			__func__, dec_info.frame_cycle,
> +			vb2_get_plane_payload(&disp_buf->vb2_buf, 0), stride, height);
> +	}
> +
> +	if ((dec_info.index_frame_display == DISPLAY_IDX_FLAG_SEQ_END ||
> +	     dec_info.sequence_changed)) {
> +		unsigned long flags;
> +
> +		spin_lock_irqsave(&inst->state_spinlock, flags);
> +		if (!v4l2_m2m_has_stopped(m2m_ctx)) {
> +			switch_state(inst, VPU_INST_STATE_STOP);
> +
> +			if (dec_info.sequence_changed)
> +				handle_dynamic_resolution_change(inst);
> +			else
> +				send_eos_event(inst);
> +
> +			flag_last_buffer_done(inst);
> +		}
> +		spin_unlock_irqrestore(&inst->state_spinlock, flags);
> +	}
> +
> +	/*
> +	 * During a resolution change and while draining, the firmware may flush
> +	 * the reorder queue regardless of having a matching decoding operation
> +	 * pending. Only terminate the job if there are no more IRQ coming.
> +	 */
> +	wave5_vpu_dec_give_command(inst, DEC_GET_QUEUE_STATUS, &q_status);
> +	if (q_status.report_queue_count == 0 &&
> +	    (q_status.instance_queue_count == 0 || dec_info.sequence_changed)) {
> +		dev_dbg(inst->dev->dev, "%s: finishing job.\n", __func__);
> +		v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +	}
> +}
> +
> +static int wave5_vpu_dec_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
> +{
> +	strscpy(cap->driver, VPU_DEC_DRV_NAME, sizeof(cap->driver));
> +	strscpy(cap->card, VPU_DEC_DRV_NAME, sizeof(cap->card));
> +	strscpy(cap->bus_info, "platform:" VPU_DEC_DRV_NAME, sizeof(cap->bus_info));

This shouldn't be needed, bus_info is filled by the v4l2 core.

> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_enum_framesizes(struct file *f, void *fh, struct v4l2_frmsizeenum *fsize)
> +{
> +	const struct vpu_format *vpu_fmt;
> +
> +	if (fsize->index)
> +		return -EINVAL;
> +
> +	vpu_fmt = wave5_find_vpu_fmt(fsize->pixel_format, dec_fmt_list[VPU_FMT_TYPE_CODEC]);
> +	if (!vpu_fmt) {
> +		vpu_fmt = wave5_find_vpu_fmt(fsize->pixel_format, dec_fmt_list[VPU_FMT_TYPE_RAW]);
> +		if (!vpu_fmt)
> +			return -EINVAL;
> +	}
> +
> +	fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
> +	fsize->stepwise.min_width = vpu_fmt->min_width;
> +	fsize->stepwise.max_width = vpu_fmt->max_width;
> +	fsize->stepwise.step_width = 1;
> +	fsize->stepwise.min_height = vpu_fmt->min_height;
> +	fsize->stepwise.max_height = vpu_fmt->max_height;
> +	fsize->stepwise.step_height = 1;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_enum_fmt_cap(struct file *file, void *fh, struct v4l2_fmtdesc *f)
> +{
> +	const struct vpu_format *vpu_fmt;
> +
> +	vpu_fmt = wave5_find_vpu_fmt_by_idx(f->index, dec_fmt_list[VPU_FMT_TYPE_RAW]);
> +	if (!vpu_fmt)
> +		return -EINVAL;
> +
> +	f->pixelformat = vpu_fmt->v4l2_pix_fmt;
> +	f->flags = 0;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_try_fmt_cap(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	struct dec_info *p_dec_info = &inst->codec_info->dec_info;
> +	const struct vpu_format *vpu_fmt;
> +	int width, height;
> +
> +	dev_dbg(inst->dev->dev,
> +		"%s: fourcc: %u width: %u height: %u nm planes: %u colorspace: %u field: %u\n",
> +		__func__, f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.width, f->fmt.pix_mp.height,
> +		f->fmt.pix_mp.num_planes, f->fmt.pix_mp.colorspace, f->fmt.pix_mp.field);
> +
> +	if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
> +		return -EINVAL;

This check isn't needed.

> +
> +	vpu_fmt = wave5_find_vpu_fmt(f->fmt.pix_mp.pixelformat, dec_fmt_list[VPU_FMT_TYPE_RAW]);
> +	if (!vpu_fmt) {
> +		width = inst->dst_fmt.width;
> +		height = inst->dst_fmt.height;
> +		f->fmt.pix_mp.pixelformat = inst->dst_fmt.pixelformat;
> +		f->fmt.pix_mp.num_planes = inst->dst_fmt.num_planes;
> +	} else {
> +		const struct v4l2_format_info *info = v4l2_format_info(vpu_fmt->v4l2_pix_fmt);
> +
> +		width = clamp(f->fmt.pix_mp.width, vpu_fmt->min_width, vpu_fmt->max_width);
> +		height = clamp(f->fmt.pix_mp.height, vpu_fmt->min_height, vpu_fmt->max_height);
> +		f->fmt.pix_mp.pixelformat = vpu_fmt->v4l2_pix_fmt;
> +		f->fmt.pix_mp.num_planes = info->mem_planes;
> +	}
> +
> +	if (p_dec_info->initial_info_obtained) {
> +		width = inst->dst_fmt.width;
> +		height = inst->dst_fmt.height;
> +	}
> +
> +	wave5_update_pix_fmt(&f->fmt.pix_mp, width, height);
> +	f->fmt.pix_mp.flags = 0;
> +	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> +	f->fmt.pix_mp.colorspace = inst->colorspace;
> +	f->fmt.pix_mp.ycbcr_enc = inst->ycbcr_enc;
> +	f->fmt.pix_mp.hsv_enc = inst->hsv_enc;

Drop this. hsv_enc and ycbcr_enc are in a union, so copying one is
sufficient. This might be done elsewhere, so grep for hsv_enc.

> +	f->fmt.pix_mp.quantization = inst->quantization;
> +	f->fmt.pix_mp.xfer_func = inst->xfer_func;
> +	memset(&f->fmt.pix_mp.reserved, 0, sizeof(f->fmt.pix_mp.reserved));

Not needed, cleared by the core.

> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_s_fmt_cap(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	int i, ret;
> +
> +	dev_dbg(inst->dev->dev,
> +		"%s: fourcc: %u width: %u height: %u num_planes: %u colorspace: %u field: %u\n",
> +		__func__, f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.width, f->fmt.pix_mp.height,
> +		f->fmt.pix_mp.num_planes, f->fmt.pix_mp.colorspace, f->fmt.pix_mp.field);
> +
> +	ret = wave5_vpu_dec_try_fmt_cap(file, fh, f);
> +	if (ret)
> +		return ret;
> +
> +	inst->dst_fmt.width = f->fmt.pix_mp.width;
> +	inst->dst_fmt.height = f->fmt.pix_mp.height;
> +	inst->dst_fmt.pixelformat = f->fmt.pix_mp.pixelformat;
> +	inst->dst_fmt.field = f->fmt.pix_mp.field;
> +	inst->dst_fmt.flags = f->fmt.pix_mp.flags;
> +	inst->dst_fmt.num_planes = f->fmt.pix_mp.num_planes;
> +	for (i = 0; i < inst->dst_fmt.num_planes; i++) {
> +		inst->dst_fmt.plane_fmt[i].bytesperline = f->fmt.pix_mp.plane_fmt[i].bytesperline;
> +		inst->dst_fmt.plane_fmt[i].sizeimage = f->fmt.pix_mp.plane_fmt[i].sizeimage;
> +	}
> +
> +	if (inst->dst_fmt.pixelformat == V4L2_PIX_FMT_NV12 ||
> +	    inst->dst_fmt.pixelformat == V4L2_PIX_FMT_NV12M) {
> +		inst->cbcr_interleave = true;
> +		inst->nv21 = false;
> +		inst->output_format = FORMAT_420;
> +	} else if (inst->dst_fmt.pixelformat == V4L2_PIX_FMT_NV21 ||
> +		   inst->dst_fmt.pixelformat == V4L2_PIX_FMT_NV21M) {
> +		inst->cbcr_interleave = true;
> +		inst->nv21 = true;
> +		inst->output_format = FORMAT_420;
> +	} else if (inst->dst_fmt.pixelformat == V4L2_PIX_FMT_NV16 ||
> +		   inst->dst_fmt.pixelformat == V4L2_PIX_FMT_NV16M) {
> +		inst->cbcr_interleave = true;
> +		inst->nv21 = false;
> +		inst->output_format = FORMAT_422;
> +	} else if (inst->dst_fmt.pixelformat == V4L2_PIX_FMT_NV61 ||
> +		   inst->dst_fmt.pixelformat == V4L2_PIX_FMT_NV61M) {
> +		inst->cbcr_interleave = true;
> +		inst->nv21 = true;
> +		inst->output_format = FORMAT_422;
> +	} else if (inst->dst_fmt.pixelformat == V4L2_PIX_FMT_YUV422P ||
> +		   inst->dst_fmt.pixelformat == V4L2_PIX_FMT_YUV422M) {
> +		inst->cbcr_interleave = false;
> +		inst->nv21 = false;
> +		inst->output_format = FORMAT_422;
> +	} else {
> +		inst->cbcr_interleave = false;
> +		inst->nv21 = false;
> +		inst->output_format = FORMAT_420;
> +	}
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_g_fmt_cap(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	int i;
> +
> +	f->fmt.pix_mp.width = inst->dst_fmt.width;
> +	f->fmt.pix_mp.height = inst->dst_fmt.height;
> +	f->fmt.pix_mp.pixelformat = inst->dst_fmt.pixelformat;
> +	f->fmt.pix_mp.field = inst->dst_fmt.field;
> +	f->fmt.pix_mp.flags = inst->dst_fmt.flags;
> +	f->fmt.pix_mp.num_planes = inst->dst_fmt.num_planes;
> +	for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
> +		f->fmt.pix_mp.plane_fmt[i].bytesperline = inst->dst_fmt.plane_fmt[i].bytesperline;
> +		f->fmt.pix_mp.plane_fmt[i].sizeimage = inst->dst_fmt.plane_fmt[i].sizeimage;
> +	}
> +
> +	f->fmt.pix_mp.colorspace = inst->colorspace;
> +	f->fmt.pix_mp.ycbcr_enc = inst->ycbcr_enc;
> +	f->fmt.pix_mp.hsv_enc = inst->hsv_enc;

Ah, another hsv_enc. Just drop all references for hsv_enc, it's not relevant
for this driver.

> +	f->fmt.pix_mp.quantization = inst->quantization;
> +	f->fmt.pix_mp.xfer_func = inst->xfer_func;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_enum_fmt_out(struct file *file, void *fh, struct v4l2_fmtdesc *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	const struct vpu_format *vpu_fmt;
> +
> +	dev_dbg(inst->dev->dev, "%s: index: %u\n", __func__, f->index);
> +
> +	vpu_fmt = wave5_find_vpu_fmt_by_idx(f->index, dec_fmt_list[VPU_FMT_TYPE_CODEC]);
> +	if (!vpu_fmt)
> +		return -EINVAL;
> +
> +	f->pixelformat = vpu_fmt->v4l2_pix_fmt;
> +	f->flags = V4L2_FMT_FLAG_DYN_RESOLUTION | V4L2_FMT_FLAG_COMPRESSED;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_try_fmt_out(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	const struct vpu_format *vpu_fmt;
> +
> +	dev_dbg(inst->dev->dev,
> +		"%s: fourcc: %u width: %u height: %u num_planes: %u colorspace: %u field: %u\n",
> +		__func__, f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.width, f->fmt.pix_mp.height,
> +		f->fmt.pix_mp.num_planes, f->fmt.pix_mp.colorspace, f->fmt.pix_mp.field);
> +
> +	if (f->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> +		return -EINVAL;

Can be dropped.

> +
> +	vpu_fmt = wave5_find_vpu_fmt(f->fmt.pix_mp.pixelformat, dec_fmt_list[VPU_FMT_TYPE_CODEC]);
> +	if (!vpu_fmt) {
> +		f->fmt.pix_mp.pixelformat = inst->src_fmt.pixelformat;
> +		f->fmt.pix_mp.num_planes = inst->src_fmt.num_planes;
> +		wave5_update_pix_fmt(&f->fmt.pix_mp, inst->src_fmt.width, inst->src_fmt.height);
> +	} else {
> +		int width = clamp(f->fmt.pix_mp.width, vpu_fmt->min_width, vpu_fmt->max_width);
> +		int height = clamp(f->fmt.pix_mp.height, vpu_fmt->min_height, vpu_fmt->max_height);
> +
> +		f->fmt.pix_mp.pixelformat = vpu_fmt->v4l2_pix_fmt;
> +		f->fmt.pix_mp.num_planes = 1;
> +		wave5_update_pix_fmt(&f->fmt.pix_mp, width, height);
> +	}
> +
> +	f->fmt.pix_mp.flags = 0;
> +	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> +	memset(&f->fmt.pix_mp.reserved, 0, sizeof(f->fmt.pix_mp.reserved));

Drop this.

> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_s_fmt_out(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	int i, ret;
> +
> +	dev_dbg(inst->dev->dev,
> +		"%s: fourcc: %u width: %u height: %u num_planes: %u field: %u\n",
> +		__func__, f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.width, f->fmt.pix_mp.height,
> +		f->fmt.pix_mp.num_planes, f->fmt.pix_mp.field);
> +
> +	ret = wave5_vpu_dec_try_fmt_out(file, fh, f);
> +	if (ret)
> +		return ret;
> +
> +	inst->std = wave5_to_vpu_std(f->fmt.pix_mp.pixelformat, inst->type);
> +	if (inst->std == STD_UNKNOWN) {
> +		dev_warn(inst->dev->dev, "unsupported pixelformat: %.4s\n",
> +			 (char *)&f->fmt.pix_mp.pixelformat);
> +		return -EINVAL;
> +	}
> +
> +	inst->src_fmt.width = f->fmt.pix_mp.width;
> +	inst->src_fmt.height = f->fmt.pix_mp.height;
> +	inst->src_fmt.pixelformat = f->fmt.pix_mp.pixelformat;
> +	inst->src_fmt.field = f->fmt.pix_mp.field;
> +	inst->src_fmt.flags = f->fmt.pix_mp.flags;
> +	inst->src_fmt.num_planes = f->fmt.pix_mp.num_planes;
> +	for (i = 0; i < inst->src_fmt.num_planes; i++) {
> +		inst->src_fmt.plane_fmt[i].bytesperline = f->fmt.pix_mp.plane_fmt[i].bytesperline;
> +		inst->src_fmt.plane_fmt[i].sizeimage = f->fmt.pix_mp.plane_fmt[i].sizeimage;
> +	}
> +
> +	inst->colorspace = f->fmt.pix_mp.colorspace;
> +	inst->ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
> +	inst->hsv_enc = f->fmt.pix_mp.hsv_enc;
> +	inst->quantization = f->fmt.pix_mp.quantization;
> +	inst->xfer_func = f->fmt.pix_mp.xfer_func;
> +
> +	wave5_update_pix_fmt(&inst->dst_fmt, f->fmt.pix_mp.width, f->fmt.pix_mp.height);
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_g_selection(struct file *file, void *fh, struct v4l2_selection *s)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %u | target: %u\n", __func__, s->type, s->target);
> +
> +	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
> +		return -EINVAL;
> +	switch (s->target) {
> +	case V4L2_SEL_TGT_COMPOSE_BOUNDS:
> +	case V4L2_SEL_TGT_COMPOSE_PADDED:
> +		s->r.left = 0;
> +		s->r.top = 0;
> +		s->r.width = inst->dst_fmt.width;
> +		s->r.height = inst->dst_fmt.height;
> +		break;
> +	case V4L2_SEL_TGT_COMPOSE:
> +	case V4L2_SEL_TGT_COMPOSE_DEFAULT:
> +		s->r.left = 0;
> +		s->r.top = 0;
> +		if (inst->state > VPU_INST_STATE_OPEN) {
> +			s->r = inst->conf_win;
> +		} else {
> +			s->r.width = inst->src_fmt.width;
> +			s->r.height = inst->src_fmt.height;
> +		}
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_s_selection(struct file *file, void *fh, struct v4l2_selection *s)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +
> +	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
> +		return -EINVAL;
> +
> +	if (s->target != V4L2_SEL_TGT_COMPOSE)
> +		return -EINVAL;
> +
> +	dev_dbg(inst->dev->dev, "V4L2_SEL_TGT_COMPOSE w: %u h: %u\n",
> +		s->r.width, s->r.height);
> +
> +	s->r.left = 0;
> +	s->r.top = 0;
> +	s->r.width = inst->dst_fmt.width;
> +	s->r.height = inst->dst_fmt.height;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_create_bufs(struct file *file, void *priv,
> +				     struct v4l2_create_buffers *create)
> +{
> +	struct v4l2_format *f = &create->format;
> +
> +	if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
> +		return -ENOTTY;

Huh? Why is this needed?

> +
> +	return v4l2_m2m_ioctl_create_bufs(file, priv, create);
> +}
> +
> +/* Must be called with state_spinlock */
> +static int wave5_vpu_dec_stop_unlocked(struct vpu_instance *inst)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +
> +	if (m2m_ctx->is_draining)
> +		return -EBUSY;
> +
> +	if (inst->state != VPU_INST_STATE_NONE) {
> +		int ret;
> +
> +		ret = wave5_vpu_dec_set_eos_on_firmware(inst);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	/*
> +	 * Used to remember the EOS state after the streamoff/on transition on
> +	 * the capture queue.
> +	 */
> +	inst->eos = true;
> +
> +	if (m2m_ctx->has_stopped)
> +		return 0;
> +
> +	m2m_ctx->last_src_buf = v4l2_m2m_last_src_buf(m2m_ctx);
> +	m2m_ctx->is_draining = true;
> +
> +	/*
> +	 * Deferred to device run in case it wasn't in the ring buffer
> +	 * yet. In other case, we have to send the EOS signal to the
> +	 * firmware so that any pending PIC_RUN ends without new
> +	 * bitstream buffer.
> +	 */
> +	if (m2m_ctx->last_src_buf)
> +		return 0;
> +
> +	if (inst->state == VPU_INST_STATE_NONE) {
> +		send_eos_event(inst);
> +		flag_last_buffer_done(inst);
> +	}
> +
> +	return 0;
> +}
> +
> +/* Must be called with state_spinlock */
> +static int wave5_vpu_dec_start_unlocked(struct vpu_instance *inst)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct vb2_queue *dst_vq = v4l2_m2m_get_dst_vq(m2m_ctx);
> +
> +	if (m2m_ctx->is_draining)
> +		return -EBUSY;
> +
> +	if (m2m_ctx->has_stopped)
> +		m2m_ctx->has_stopped = false;
> +
> +	vb2_clear_last_buffer_dequeued(dst_vq);
> +	inst->eos = false;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_decoder_cmd(struct file *file, void *fh, struct v4l2_decoder_cmd *dc)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	unsigned long flags;
> +	int ret;
> +
> +	dev_dbg(inst->dev->dev, "decoder command: %u\n", dc->cmd);
> +
> +	ret = v4l2_m2m_ioctl_try_decoder_cmd(file, fh, dc);
> +	if (ret)
> +		return ret;
> +
> +	switch (dc->cmd) {
> +	case V4L2_DEC_CMD_STOP:
> +		spin_lock_irqsave(&inst->state_spinlock, flags);
> +		ret = wave5_vpu_dec_stop_unlocked(inst);
> +		spin_unlock_irqrestore(&inst->state_spinlock, flags);
> +
> +		/* Just in case we don't have anything to decode anymore */
> +		v4l2_m2m_try_schedule(m2m_ctx);
> +		break;
> +	case V4L2_DEC_CMD_START:
> +		spin_lock_irqsave(&inst->state_spinlock, flags);
> +		ret = wave5_vpu_dec_start_unlocked(inst);
> +		spin_unlock_irqrestore(&inst->state_spinlock, flags);
> +		break;
> +	default:
> +		ret = -EINVAL;
> +	}
> +
> +	return ret;
> +}
> +
> +static const struct v4l2_ioctl_ops wave5_vpu_dec_ioctl_ops = {
> +	.vidioc_querycap = wave5_vpu_dec_querycap,
> +	.vidioc_enum_framesizes = wave5_vpu_dec_enum_framesizes,
> +
> +	.vidioc_enum_fmt_vid_cap	= wave5_vpu_dec_enum_fmt_cap,
> +	.vidioc_s_fmt_vid_cap_mplane = wave5_vpu_dec_s_fmt_cap,
> +	.vidioc_g_fmt_vid_cap_mplane = wave5_vpu_dec_g_fmt_cap,
> +	.vidioc_try_fmt_vid_cap_mplane = wave5_vpu_dec_try_fmt_cap,
> +
> +	.vidioc_enum_fmt_vid_out	= wave5_vpu_dec_enum_fmt_out,
> +	.vidioc_s_fmt_vid_out_mplane = wave5_vpu_dec_s_fmt_out,
> +	.vidioc_g_fmt_vid_out_mplane = wave5_vpu_g_fmt_out,
> +	.vidioc_try_fmt_vid_out_mplane = wave5_vpu_dec_try_fmt_out,
> +
> +	.vidioc_g_selection = wave5_vpu_dec_g_selection,
> +	.vidioc_s_selection = wave5_vpu_dec_s_selection,
> +
> +	.vidioc_reqbufs = v4l2_m2m_ioctl_reqbufs,
> +	.vidioc_querybuf = v4l2_m2m_ioctl_querybuf,
> +	.vidioc_create_bufs = wave5_vpu_dec_create_bufs,
> +	.vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
> +	.vidioc_qbuf = v4l2_m2m_ioctl_qbuf,
> +	.vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
> +	.vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
> +	.vidioc_streamon = v4l2_m2m_ioctl_streamon,
> +	.vidioc_streamoff = v4l2_m2m_ioctl_streamoff,
> +
> +	.vidioc_try_decoder_cmd = v4l2_m2m_ioctl_try_decoder_cmd,
> +	.vidioc_decoder_cmd = wave5_vpu_dec_decoder_cmd,
> +
> +	.vidioc_subscribe_event = wave5_vpu_subscribe_event,
> +	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
> +};
> +
> +static int wave5_vpu_dec_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
> +				     unsigned int *num_planes, unsigned int sizes[],
> +				     struct device *alloc_devs[])
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(q);
> +	struct v4l2_pix_format_mplane inst_format =
> +		(q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) ? inst->src_fmt : inst->dst_fmt;
> +	unsigned int i;
> +
> +	dev_dbg(inst->dev->dev, "%s: num_buffers: %u | num_planes: %u | type: %u\n", __func__,
> +		*num_buffers, *num_planes, q->type);
> +
> +	/* the CREATE_BUFS case */
> +	if (*num_planes) {
> +		if (inst_format.num_planes != *num_planes)
> +			return -EINVAL;
> +
> +		for (i = 0; i < *num_planes; i++) {
> +			if (sizes[i] < inst_format.plane_fmt[i].sizeimage)
> +				return -EINVAL;
> +		}
> +	/* the REQBUFS case */
> +	} else {
> +		*num_planes = inst_format.num_planes;
> +
> +		if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
> +			sizes[0] = inst_format.plane_fmt[0].sizeimage;
> +			dev_dbg(inst->dev->dev, "%s: size[0]: %u\n", __func__, sizes[0]);
> +		} else if (*num_planes == 1) {
> +			if (inst->output_format == FORMAT_422)
> +				sizes[0] = inst_format.width * inst_format.height * 2;
> +			else
> +				sizes[0] = inst_format.width * inst_format.height * 3 / 2;
> +			dev_dbg(inst->dev->dev, "%s: size[0]: %u\n", __func__, sizes[0]);
> +		} else if (*num_planes == 2) {
> +			sizes[0] = inst_format.width * inst_format.height;
> +			if (inst->output_format == FORMAT_422)
> +				sizes[1] = inst_format.width * inst_format.height;
> +			else
> +				sizes[1] = inst_format.width * inst_format.height / 2;
> +			dev_dbg(inst->dev->dev, "%s: size[0]: %u | size[1]: %u\n",
> +				__func__, sizes[0], sizes[1]);
> +		} else if (*num_planes == 3) {
> +			sizes[0] = inst_format.width * inst_format.height;
> +			if (inst->output_format == FORMAT_422) {
> +				sizes[1] = inst_format.width * inst_format.height / 2;
> +				sizes[2] = inst_format.width * inst_format.height / 2;
> +			} else {
> +				sizes[1] = inst_format.width * inst_format.height / 4;
> +				sizes[2] = inst_format.width * inst_format.height / 4;
> +			}
> +			dev_dbg(inst->dev->dev, "%s: size[0]: %u | size[1]: %u | size[2]: %u\n",
> +				__func__, sizes[0], sizes[1], sizes[2]);
> +		}
> +	}
> +
> +	if (inst->state == VPU_INST_STATE_INIT_SEQ &&
> +	    q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
> +		if (*num_buffers > inst->dst_buf_count &&
> +		    *num_buffers < WAVE5_MAX_FBS)
> +			inst->dst_buf_count = *num_buffers;

In the create_bufs case, *num_buffers is the number of buffers you are
adding to the already existing buffers. Frankly, the logic here is
dubious. I'm not sure what the intent is. Why do you need to keep track
of the buf count at all when the vb2_queue already does that?

WAVE5_MAX_FBS == 32, which is VIDEO_MAX_FRAMES. You can just drop the check
against WAVE5_MAX_FBS since the core ensures already it will never allocate
more than VIDEO_MAX_FRAMES.

I'm not sure why WAVE5_MAX_FBS is defined at all, when it is just equal to
VIDEO_MAX_FRAMES. Perhaps it can be replaced everywhere with VIDEO_MAX_FRAMES?

> +
> +		*num_buffers = inst->dst_buf_count;
> +	}
> +
> +	return 0;
> +}
> +
> +static int wave5_prepare_fb(struct vpu_instance *inst)
> +{
> +	int linear_num;
> +	int non_linear_num;
> +	int fb_stride = 0, fb_height = 0;
> +	int luma_size, chroma_size;
> +	int ret, i;
> +	struct v4l2_m2m_buffer *buf, *n;
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +
> +	linear_num = inst->dst_buf_count;
> +	non_linear_num = inst->fbc_buf_count;
> +
> +	for (i = 0; i < non_linear_num; i++) {
> +		struct frame_buffer *frame = &inst->frame_buf[i];
> +		struct vpu_buf *vframe = &inst->frame_vbuf[i];
> +
> +		fb_stride = inst->dst_fmt.width;
> +		fb_height = ALIGN(inst->dst_fmt.height, 32);
> +		luma_size = fb_stride * fb_height;
> +
> +		/* FIXME shall we do /4 in case of 422 ?*/
> +		chroma_size = ALIGN(fb_stride / 2, 16) * fb_height;
> +
> +		if (vframe->size) {
> +			if (vframe->size != (luma_size + chroma_size))
> +				wave5_vpu_dec_reset_framebuffer(inst, i);
> +			else
> +				continue;
> +		}
> +
> +		vframe->size = luma_size + chroma_size;
> +		ret = wave5_vdi_allocate_dma_memory(inst->dev, vframe);
> +		if (ret) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: Allocating FBC buf of size %zu, fail: %d\n",
> +				__func__, vframe->size, ret);
> +			return ret;
> +		}
> +
> +		frame->buf_y = vframe->daddr;
> +		frame->buf_cb = vframe->daddr + luma_size;
> +		frame->buf_cr = (dma_addr_t)-1;
> +		frame->size = vframe->size;
> +		frame->width = inst->src_fmt.width;
> +		frame->stride = fb_stride;
> +		frame->map_type = COMPRESSED_FRAME_MAP;
> +		frame->update_fb_info = true;
> +	}
> +	/* In case the count has reduced, clean up leftover framebuffer memory */
> +	for (i = non_linear_num; i < MAX_REG_FRAME; i++) {
> +		ret = wave5_vpu_dec_reset_framebuffer(inst, i);
> +		if (ret)
> +			break;
> +	}
> +
> +	for (i = 0; i < linear_num; i++) {
> +		struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +		struct vb2_queue *dst_vq = v4l2_m2m_get_dst_vq(m2m_ctx);
> +		struct vb2_buffer *vb = vb2_get_buffer(dst_vq, i);
> +		struct frame_buffer *frame = &inst->frame_buf[non_linear_num + i];
> +		dma_addr_t buf_addr_y = 0, buf_addr_cb = 0, buf_addr_cr = 0;
> +		u32 buf_size = 0;
> +		u32 fb_stride = inst->dst_fmt.width;
> +		u32 luma_size = fb_stride * inst->dst_fmt.height;
> +		u32 chroma_size;
> +
> +		if (inst->output_format == FORMAT_422)
> +			chroma_size = fb_stride * inst->dst_fmt.height / 2;
> +		else
> +			chroma_size = fb_stride * inst->dst_fmt.height / 4;
> +
> +		if (inst->dst_fmt.num_planes == 1) {
> +			buf_size = vb2_plane_size(vb, 0);
> +			buf_addr_y = vb2_dma_contig_plane_dma_addr(vb, 0);
> +			buf_addr_cb = buf_addr_y + luma_size;
> +			buf_addr_cr = buf_addr_cb + chroma_size;
> +		} else if (inst->dst_fmt.num_planes == 2) {
> +			buf_size = vb2_plane_size(vb, 0) +
> +				vb2_plane_size(vb, 1);
> +			buf_addr_y = vb2_dma_contig_plane_dma_addr(vb, 0);
> +			buf_addr_cb = vb2_dma_contig_plane_dma_addr(vb, 1);
> +			buf_addr_cr = buf_addr_cb + chroma_size;
> +		} else if (inst->dst_fmt.num_planes == 3) {
> +			buf_size = vb2_plane_size(vb, 0) +
> +				vb2_plane_size(vb, 1) +
> +				vb2_plane_size(vb, 2);
> +			buf_addr_y = vb2_dma_contig_plane_dma_addr(vb, 0);
> +			buf_addr_cb = vb2_dma_contig_plane_dma_addr(vb, 1);
> +			buf_addr_cr = vb2_dma_contig_plane_dma_addr(vb, 2);
> +		}
> +
> +		frame->buf_y = buf_addr_y;
> +		frame->buf_cb = buf_addr_cb;
> +		frame->buf_cr = buf_addr_cr;
> +		frame->size = buf_size;
> +		frame->width = inst->src_fmt.width;
> +		frame->stride = fb_stride;
> +		frame->map_type = LINEAR_FRAME_MAP;
> +		frame->update_fb_info = true;
> +	}
> +
> +	ret = wave5_vpu_dec_register_frame_buffer_ex(inst, non_linear_num, linear_num,
> +						     fb_stride, inst->dst_fmt.height);
> +	if (ret) {
> +		dev_dbg(inst->dev->dev, "%s: vpu_dec_register_frame_buffer_ex fail: %d",
> +			__func__, ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Mark all frame buffers as out of display, to avoid using them before
> +	 * the application have them queued.
> +	 */
> +	for (i = 0; i < inst->dst_buf_count; i++) {
> +		ret = wave5_vpu_dec_set_disp_flag(inst, i);
> +		if (ret) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: Setting display flag of buf index: %u, fail: %d\n",
> +				__func__, i, ret);
> +		}
> +	}
> +
> +	v4l2_m2m_for_each_dst_buf_safe(m2m_ctx, buf, n) {
> +		struct vb2_v4l2_buffer *vbuf = &buf->vb;
> +
> +		ret = wave5_vpu_dec_clr_disp_flag(inst, vbuf->vb2_buf.index);
> +		if (ret) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: Clearing display flag of buf index: %u, fail: %d\n",
> +				__func__, i, ret);
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int write_to_ringbuffer(struct vpu_instance *inst, void *buffer, size_t buffer_size,
> +			       struct vpu_buf *ring_buffer, dma_addr_t wr_ptr)
> +{
> +	size_t size;
> +	size_t offset = wr_ptr - ring_buffer->daddr;
> +	int ret;
> +
> +	if (wr_ptr + buffer_size > ring_buffer->daddr + ring_buffer->size) {
> +		size = ring_buffer->daddr + ring_buffer->size - wr_ptr;
> +		ret = wave5_vdi_write_memory(inst->dev, ring_buffer, offset, (u8 *)buffer, size);
> +		if (ret < 0)
> +			return ret;
> +
> +		ret = wave5_vdi_write_memory(inst->dev, ring_buffer, 0, (u8 *)buffer + size,
> +					     buffer_size - size);
> +		if (ret < 0)
> +			return ret;
> +	} else {
> +		ret = wave5_vdi_write_memory(inst->dev, ring_buffer, offset, (u8 *)buffer,
> +					     buffer_size);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int fill_ringbuffer(struct vpu_instance *inst)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct v4l2_m2m_buffer *buf, *n;
> +	int ret;
> +
> +	if (m2m_ctx->last_src_buf)  {
> +		struct vpu_src_buffer *vpu_buf = wave5_to_vpu_src_buf(m2m_ctx->last_src_buf);
> +
> +		if (vpu_buf->consumed) {
> +			dev_dbg(inst->dev->dev, "last src buffer already written\n");
> +			return 0;
> +		}
> +	}
> +
> +	v4l2_m2m_for_each_src_buf_safe(m2m_ctx, buf, n) {
> +		struct vb2_v4l2_buffer *vbuf = &buf->vb;
> +		struct vpu_src_buffer *vpu_buf = wave5_to_vpu_src_buf(vbuf);
> +		struct vpu_buf *ring_buffer = &inst->bitstream_vbuf;
> +		size_t src_size = vb2_get_plane_payload(&vbuf->vb2_buf, 0);
> +		void *src_buf = vb2_plane_vaddr(&vbuf->vb2_buf, 0);
> +		dma_addr_t rd_ptr = 0;
> +		dma_addr_t wr_ptr = 0;
> +		size_t remain_size = 0;
> +
> +		if (vpu_buf->consumed) {
> +			dev_dbg(inst->dev->dev, "already copied src buf (%u) to the ring buffer\n",
> +				vbuf->vb2_buf.index);
> +			continue;
> +		}
> +
> +		if (!src_buf) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: Acquiring kernel pointer to src buf (%u), fail\n",
> +				__func__, vbuf->vb2_buf.index);
> +			break;
> +		}
> +
> +		ret = wave5_vpu_dec_get_bitstream_buffer(inst, &rd_ptr, &wr_ptr, &remain_size);
> +		if (ret) {
> +			/* Unable to acquire the mutex */
> +			dev_err(inst->dev->dev, "Getting the bitstream buffer, fail: %d\n",
> +				ret);
> +			return ret;
> +		}
> +
> +		dev_dbg(inst->dev->dev, "%s: rd_ptr %pad wr_ptr %pad", __func__, &rd_ptr, &wr_ptr);
> +
> +		if (remain_size < src_size) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: remaining size: %zu < source size: %zu for src buf (%u)\n",
> +				__func__, remain_size, src_size, vbuf->vb2_buf.index);
> +			break;
> +		}
> +
> +		ret = write_to_ringbuffer(inst, src_buf, src_size, ring_buffer, wr_ptr);
> +		if (ret) {
> +			dev_err(inst->dev->dev, "Write src buf (%u) to ring buffer, fail: %d\n",
> +				vbuf->vb2_buf.index, ret);
> +			return ret;
> +		}
> +
> +		ret = wave5_vpu_dec_update_bitstream_buffer(inst, src_size);
> +		if (ret) {
> +			dev_dbg(inst->dev->dev,
> +				"update_bitstream_buffer fail: %d for src buf (%u)\n",
> +				ret, vbuf->vb2_buf.index);
> +			break;
> +		}
> +
> +		vpu_buf->consumed = true;
> +
> +		/* Don't write buffers passed the last one while draining. */
> +		if (v4l2_m2m_is_last_draining_src_buf(m2m_ctx, vbuf)) {
> +			dev_dbg(inst->dev->dev, "last src buffer written to the ring bufferur\n");
> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static void wave5_vpu_dec_buf_queue_src(struct vb2_buffer *vb)
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(vb->vb2_queue);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> +	struct vpu_src_buffer *vpu_buf = wave5_to_vpu_src_buf(vbuf);
> +
> +	vpu_buf->consumed = false;
> +	vbuf->sequence = inst->queued_src_buf_num++;
> +
> +	v4l2_m2m_buf_queue(m2m_ctx, vbuf);
> +}
> +
> +static void wave5_vpu_dec_buf_queue_dst(struct vb2_buffer *vb)
> +{
> +	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> +	struct vpu_instance *inst = vb2_get_drv_priv(vb->vb2_queue);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +
> +	vbuf->sequence = inst->queued_dst_buf_num++;
> +
> +	if (inst->state == VPU_INST_STATE_PIC_RUN) {
> +		struct vpu_dst_buffer *vpu_buf = wave5_to_vpu_dst_buf(vbuf);
> +		int ret;
> +
> +		/*
> +		 * The buffer is already register, just clear the display flag

register -> registered

> +		 * to let the firmware know it can be used.
> +		 */
> +		vpu_buf->display = false;
> +		ret = wave5_vpu_dec_clr_disp_flag(inst, vb->index);
> +		if (ret) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: Clearing the display flag of buffer index: %u, fail: %d\n",
> +				__func__, vb->index, ret);
> +		}
> +	}
> +
> +	if (vb2_is_streaming(vb->vb2_queue) && v4l2_m2m_dst_buf_is_last(m2m_ctx)) {
> +		unsigned int i;
> +
> +		for (i = 0; i < vb->num_planes; i++)
> +			vb2_set_plane_payload(vb, i, 0);
> +
> +		vbuf->field = V4L2_FIELD_NONE;
> +
> +		send_eos_event(inst);
> +		v4l2_m2m_last_buffer_done(m2m_ctx, vbuf);
> +	} else {
> +		v4l2_m2m_buf_queue(m2m_ctx, vbuf);
> +	}
> +}
> +
> +static void wave5_vpu_dec_buf_queue(struct vb2_buffer *vb)
> +{
> +	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> +	struct vpu_instance *inst = vb2_get_drv_priv(vb->vb2_queue);
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %4u index: %4u size: ([0]=%4lu, [1]=%4lu, [2]=%4lu)\n",
> +		__func__, vb->type, vb->index, vb2_plane_size(&vbuf->vb2_buf, 0),
> +		vb2_plane_size(&vbuf->vb2_buf, 1), vb2_plane_size(&vbuf->vb2_buf, 2));
> +
> +	if (vb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> +		wave5_vpu_dec_buf_queue_src(vb);
> +	else if (vb->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
> +		wave5_vpu_dec_buf_queue_dst(vb);
> +}
> +
> +static int wave5_vpu_dec_allocate_ring_buffer(struct vpu_instance *inst)
> +{
> +	int ret;
> +	struct vpu_buf *ring_buffer = &inst->bitstream_vbuf;
> +
> +	ring_buffer->size = ALIGN(inst->src_fmt.plane_fmt[0].sizeimage, 1024) * 4;
> +	ret = wave5_vdi_allocate_dma_memory(inst->dev, ring_buffer);
> +	if (ret) {
> +		dev_dbg(inst->dev->dev, "%s: allocate ring buffer of size %zu fail: %d\n",
> +			__func__, ring_buffer->size, ret);
> +		return ret;
> +	}
> +
> +	inst->last_rd_ptr = ring_buffer->daddr;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_dec_start_streaming(struct vb2_queue *q, unsigned int count)
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(q);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct vb2_v4l2_buffer *buf;
> +	int ret = 0;
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %u\n", __func__, q->type);
> +
> +	v4l2_m2m_update_start_streaming_state(m2m_ctx, q);
> +
> +	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE && inst->state == VPU_INST_STATE_NONE) {
> +		struct dec_open_param open_param;
> +
> +		memset(&open_param, 0, sizeof(struct dec_open_param));
> +
> +		ret = wave5_vpu_dec_allocate_ring_buffer(inst);
> +		if (ret)
> +			return ret;

If there is an error during start_streaming, then all buffers of the queue must
be returned to state DEQUEUED. That doesn't happen here.

> +
> +		inst->std = wave5_to_vpu_std(inst->src_fmt.pixelformat, inst->type);
> +		if (inst->std == STD_UNKNOWN) {
> +			dev_warn(inst->dev->dev, "unsupported pixelformat: %.4s\n",
> +				 (char *)&inst->src_fmt.pixelformat);

How can this happen? This is very weird to see inside a start_streaming callback.

> +			goto free_bitstream_vbuf;
> +		}
> +		open_param.bitstream_buffer = inst->bitstream_vbuf.daddr;
> +		open_param.bitstream_buffer_size = inst->bitstream_vbuf.size;
> +
> +		ret = wave5_vpu_dec_open(inst, &open_param);
> +		if (ret) {
> +			dev_dbg(inst->dev->dev, "%s: decoder opening, fail: %d\n",
> +				__func__, ret);
> +			goto free_bitstream_vbuf;
> +		}
> +
> +		ret = switch_state(inst, VPU_INST_STATE_OPEN);
> +		if (ret)
> +			goto free_bitstream_vbuf;
> +	} else if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
> +		struct dec_initial_info *initial_info =
> +			&inst->codec_info->dec_info.initial_info;
> +
> +		if (inst->state == VPU_INST_STATE_STOP)
> +			ret = switch_state(inst, VPU_INST_STATE_INIT_SEQ);
> +
> +		if (inst->state == VPU_INST_STATE_INIT_SEQ) {
> +			if (initial_info->luma_bitdepth != 8) {
> +				dev_info(inst->dev->dev, "%s: no support for %d bit depth",
> +					 __func__, initial_info->luma_bitdepth);
> +				goto cleanup_dst_buffers;
> +			}
> +		}
> +	}
> +
> +	return ret;
> +
> +free_bitstream_vbuf:
> +	wave5_vdi_free_dma_memory(inst->dev, &inst->bitstream_vbuf);
> +cleanup_dst_buffers:
> +	while ((buf = v4l2_m2m_dst_buf_remove(m2m_ctx)))

This doesn't look right. This just clears the capture queue, instead it
should clear the capture or output queue, depending on V4L2_TYPE_IS_OUTPUT(q->type).

> +		v4l2_m2m_buf_done(buf, VB2_BUF_STATE_QUEUED);
> +	return -EINVAL;
> +}
> +
> +static int streamoff_output(struct vb2_queue *q)
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(q);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct vb2_v4l2_buffer *buf;
> +	int ret;
> +	dma_addr_t new_rd_ptr;
> +
> +	while ((buf = v4l2_m2m_src_buf_remove(m2m_ctx))) {
> +		dev_dbg(inst->dev->dev, "%s: (Multiplanar) buf type %4u | index %4u\n",
> +			__func__, buf->vb2_buf.type, buf->vb2_buf.index);
> +		v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);
> +	}
> +
> +	ret = wave5_vpu_flush_instance(inst);
> +	if (ret)
> +		return ret;
> +
> +	/* Reset the ring buffer information */
> +	new_rd_ptr = wave5_vpu_dec_get_rd_ptr(inst);
> +	inst->last_rd_ptr = new_rd_ptr;
> +	inst->codec_info->dec_info.stream_rd_ptr = new_rd_ptr;
> +	inst->codec_info->dec_info.stream_wr_ptr = new_rd_ptr;
> +
> +	if (v4l2_m2m_has_stopped(m2m_ctx))
> +		send_eos_event(inst);
> +
> +	/* streamoff on output cancels any draining operation */
> +	inst->eos = false;
> +
> +	return ret;
> +}
> +
> +static int streamoff_capture(struct vb2_queue *q)
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(q);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct vb2_v4l2_buffer *buf;
> +	unsigned int i;
> +	int ret = 0;
> +
> +	/* TOOD unregister the framebuffers to restrict access from the firmware to
> +	 * buffers that are freed up
> +	 */
> +	while ((buf = v4l2_m2m_dst_buf_remove(m2m_ctx))) {
> +		u32 plane;
> +
> +		dev_dbg(inst->dev->dev, "%s: buf type %4u | index %4u\n",
> +			__func__, buf->vb2_buf.type, buf->vb2_buf.index);
> +
> +		for (plane = 0; plane < inst->dst_fmt.num_planes; plane++)
> +			vb2_set_plane_payload(&buf->vb2_buf, plane, 0);
> +
> +		v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);
> +	}
> +
> +	for (i = 0; i < inst->dst_buf_count; i++) {
> +		ret = wave5_vpu_dec_set_disp_flag(inst, i);
> +		if (ret) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: Setting display flag of buf index: %u, fail: %d\n",
> +				__func__, i, ret);
> +		}
> +	}
> +
> +	if (inst->needs_reallocation) {
> +		wave5_vpu_dec_give_command(inst, DEC_RESET_FRAMEBUF_INFO, NULL);
> +		inst->needs_reallocation = false;
> +	}
> +
> +	if (v4l2_m2m_has_stopped(m2m_ctx)) {
> +		ret = switch_state(inst, VPU_INST_STATE_INIT_SEQ);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return ret;
> +}
> +
> +static void wave5_vpu_dec_stop_streaming(struct vb2_queue *q)
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(q);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	bool check_cmd = TRUE;
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %u\n", __func__, q->type);
> +
> +	while (check_cmd) {
> +		struct queue_status_info q_status;
> +		struct dec_output_info dec_output_info;
> +
> +		wave5_vpu_dec_give_command(inst, DEC_GET_QUEUE_STATUS, &q_status);
> +
> +		if (q_status.report_queue_count == 0)
> +			break;
> +
> +		if (wave5_vpu_wait_interrupt(inst, VPU_DEC_TIMEOUT) < 0)
> +			break;
> +
> +		if (wave5_vpu_dec_get_output_info(inst, &dec_output_info))
> +			dev_dbg(inst->dev->dev, "Getting decoding results from fw, fail\n");
> +	}
> +
> +	v4l2_m2m_update_stop_streaming_state(m2m_ctx, q);
> +
> +	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> +		streamoff_output(q);
> +	else
> +		streamoff_capture(q);
> +}
> +
> +static const struct vb2_ops wave5_vpu_dec_vb2_ops = {
> +	.queue_setup = wave5_vpu_dec_queue_setup,
> +	.wait_prepare = vb2_ops_wait_prepare,
> +	.wait_finish = vb2_ops_wait_finish,
> +	.buf_queue = wave5_vpu_dec_buf_queue,
> +	.start_streaming = wave5_vpu_dec_start_streaming,
> +	.stop_streaming = wave5_vpu_dec_stop_streaming,
> +};
> +
> +static void wave5_set_default_format(struct v4l2_pix_format_mplane *src_fmt,
> +				     struct v4l2_pix_format_mplane *dst_fmt)
> +{
> +	unsigned int dst_pix_fmt = dec_fmt_list[VPU_FMT_TYPE_RAW][0].v4l2_pix_fmt;
> +	const struct v4l2_format_info *dst_fmt_info = v4l2_format_info(dst_pix_fmt);
> +
> +	src_fmt->pixelformat = dec_fmt_list[VPU_FMT_TYPE_CODEC][0].v4l2_pix_fmt;
> +	src_fmt->field = V4L2_FIELD_NONE;
> +	src_fmt->flags = 0;
> +	src_fmt->num_planes = 1;
> +	wave5_update_pix_fmt(src_fmt, 720, 480);
> +
> +	dst_fmt->pixelformat = dst_pix_fmt;
> +	dst_fmt->field = V4L2_FIELD_NONE;
> +	dst_fmt->flags = 0;
> +	dst_fmt->num_planes = dst_fmt_info->mem_planes;
> +	wave5_update_pix_fmt(dst_fmt, 736, 480);
> +}
> +
> +static int wave5_vpu_dec_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
> +{
> +	return wave5_vpu_queue_init(priv, src_vq, dst_vq, &wave5_vpu_dec_vb2_ops);
> +}
> +
> +static const struct vpu_instance_ops wave5_vpu_dec_inst_ops = {
> +	.finish_process = wave5_vpu_dec_finish_decode,
> +};
> +
> +static int initialize_sequence(struct vpu_instance *inst)
> +{
> +	struct dec_initial_info initial_info;
> +	int ret = 0;
> +
> +	memset(&initial_info, 0, sizeof(struct dec_initial_info));
> +
> +	ret = wave5_vpu_dec_issue_seq_init(inst);
> +	if (ret) {
> +		dev_dbg(inst->dev->dev, "%s: wave5_vpu_dec_issue_seq_init, fail: %d\n",
> +			__func__, ret);
> +		return ret;
> +	}
> +
> +	if (wave5_vpu_wait_interrupt(inst, VPU_DEC_TIMEOUT) < 0)
> +		dev_dbg(inst->dev->dev, "%s: failed to call vpu_wait_interrupt()\n", __func__);
> +
> +	ret = wave5_vpu_dec_complete_seq_init(inst, &initial_info);
> +	if (ret) {
> +		dev_dbg(inst->dev->dev, "%s: vpu_dec_complete_seq_init, fail: %d, reason: %u\n",
> +			__func__, ret, initial_info.seq_init_err_reason);
> +		wave5_handle_src_buffer(inst, initial_info.rd_ptr);
> +	} else {
> +		handle_dynamic_resolution_change(inst);
> +	}
> +
> +	return ret;
> +}
> +
> +/* Must be called with state_spinlock */
> +static bool wave5_is_draining_or_eos(struct vpu_instance *inst)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +
> +	return m2m_ctx->is_draining || inst->eos;
> +}
> +
> +static void wave5_vpu_dec_device_run(void *priv)
> +{
> +	struct vpu_instance *inst = priv;
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct queue_status_info q_status;
> +	u32 fail_res = 0;
> +	int ret = 0;
> +
> +	dev_dbg(inst->dev->dev, "%s: Fill the ring buffer with new bitstream data", __func__);
> +
> +	ret = fill_ringbuffer(inst);
> +	if (ret) {
> +		dev_warn(inst->dev->dev, "Filling ring buffer failed\n");
> +		goto finish_job_and_return;
> +	}
> +
> +	switch (inst->state) {
> +	case VPU_INST_STATE_OPEN:
> +		ret = initialize_sequence(inst);
> +		if (ret) {
> +			unsigned long flags;
> +
> +			spin_lock_irqsave(&inst->state_spinlock, flags);
> +			if (wave5_is_draining_or_eos(inst) &&
> +			    wave5_last_src_buffer_consumed(m2m_ctx)) {
> +				struct vb2_queue *dst_vq = v4l2_m2m_get_dst_vq(m2m_ctx);
> +
> +				switch_state(inst, VPU_INST_STATE_STOP);
> +
> +				if (vb2_is_streaming(dst_vq))
> +					send_eos_event(inst);
> +				else
> +					handle_dynamic_resolution_change(inst);
> +
> +				flag_last_buffer_done(inst);
> +			}
> +			spin_unlock_irqrestore(&inst->state_spinlock, flags);
> +		} else {
> +			switch_state(inst, VPU_INST_STATE_INIT_SEQ);
> +		}
> +
> +		break;
> +
> +	case VPU_INST_STATE_INIT_SEQ:
> +		/*
> +		 * Do this early, preparing the fb can trigger an IRQ before
> +		 * we had a chance to switch, which leads to an invalid state
> +		 * change.
> +		 */
> +		switch_state(inst, VPU_INST_STATE_PIC_RUN);
> +
> +		/*
> +		 * During DRC, the picture decoding remains pending, so just leave the job
> +		 * active until this decode operation completes.
> +		 */
> +		wave5_vpu_dec_give_command(inst, DEC_GET_QUEUE_STATUS, &q_status);
> +
> +		/*
> +		 * The sequence must be analyzed first to calculate the proper
> +		 * size of the auxiliary buffers.
> +		 */
> +		ret = wave5_prepare_fb(inst);
> +		if (ret) {
> +			dev_warn(inst->dev->dev, "Framebuffer preparation, fail: %d\n", ret);
> +			switch_state(inst, VPU_INST_STATE_STOP);
> +			break;
> +		}
> +
> +		if (q_status.instance_queue_count) {
> +			dev_dbg(inst->dev->dev, "%s: leave with active job", __func__);
> +			return;
> +		}
> +
> +		fallthrough;
> +	case VPU_INST_STATE_PIC_RUN:
> +		ret = start_decode(inst, &fail_res);
> +		if (ret) {
> +			dev_err(inst->dev->dev,
> +				"Frame decoding on m2m context (%p), fail: %d (result: %d)\n",
> +				m2m_ctx, ret, fail_res);
> +			break;
> +		}
> +		/* Return so that we leave this job active */
> +		dev_dbg(inst->dev->dev, "%s: leave with active job", __func__);
> +		return;
> +	default:
> +		WARN(1, "Execution of a job in state %s illegal.\n", state_to_str(inst->state));
> +		break;
> +	}
> +
> +finish_job_and_return:
> +	dev_dbg(inst->dev->dev, "%s: leave and finish job", __func__);
> +	v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +}
> +
> +static void wave5_vpu_dec_job_abort(void *priv)
> +{
> +	struct vpu_instance *inst = priv;
> +	int ret;
> +
> +	ret = switch_state(inst, VPU_INST_STATE_STOP);
> +	if (ret)
> +		return;
> +
> +	ret = wave5_vpu_dec_set_eos_on_firmware(inst);
> +	if (ret)
> +		dev_warn(inst->dev->dev,
> +			 "Setting EOS for the bitstream, fail: %d\n", ret);
> +}
> +
> +static int wave5_vpu_dec_job_ready(void *priv)
> +{
> +	struct vpu_instance *inst = priv;
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	unsigned long flags;
> +	bool ret = false;
> +
> +	spin_lock_irqsave(&inst->state_spinlock, flags);
> +
> +	switch (inst->state) {
> +	case VPU_INST_STATE_NONE:
> +		dev_dbg(inst->dev->dev, "Decoder must be open to start queueing M2M jobs!\n");
> +		break;
> +	case VPU_INST_STATE_OPEN:
> +		if (wave5_is_draining_or_eos(inst) || !v4l2_m2m_has_stopped(m2m_ctx) ||
> +		    v4l2_m2m_num_src_bufs_ready(m2m_ctx) > 0) {
> +			ret = true;
> +			break;
> +		}
> +
> +		dev_dbg(inst->dev->dev,
> +			"Decoder must be draining or >= 1 OUTPUT queue buffer must be queued!\n");
> +		break;
> +	case VPU_INST_STATE_INIT_SEQ:
> +	case VPU_INST_STATE_PIC_RUN:
> +		if (!m2m_ctx->cap_q_ctx.q.streaming) {
> +			dev_dbg(inst->dev->dev, "CAPTURE queue must be streaming to queue jobs!\n");
> +			break;
> +		} else if (v4l2_m2m_num_dst_bufs_ready(m2m_ctx) < (inst->fbc_buf_count - 1)) {
> +			dev_dbg(inst->dev->dev,
> +				"No capture buffer ready to decode!\n");
> +			break;
> +		} else if (!wave5_is_draining_or_eos(inst) &&
> +			   !v4l2_m2m_num_src_bufs_ready(m2m_ctx)) {
> +			dev_dbg(inst->dev->dev,
> +				"No bitstream data to decode!\n");
> +			break;
> +		}
> +		ret = true;
> +		break;
> +	case VPU_INST_STATE_STOP:
> +		dev_dbg(inst->dev->dev, "Decoder is stopped, not running.\n");
> +		break;
> +	}
> +
> +	spin_unlock_irqrestore(&inst->state_spinlock, flags);
> +
> +	return ret;
> +}
> +
> +static const struct v4l2_m2m_ops wave5_vpu_dec_m2m_ops = {
> +	.device_run = wave5_vpu_dec_device_run,
> +	.job_abort = wave5_vpu_dec_job_abort,
> +	.job_ready = wave5_vpu_dec_job_ready,
> +};
> +
> +static int wave5_vpu_open_dec(struct file *filp)
> +{
> +	struct video_device *vdev = video_devdata(filp);
> +	struct vpu_device *dev = video_drvdata(filp);
> +	struct vpu_instance *inst = NULL;
> +	struct v4l2_m2m_ctx *m2m_ctx;
> +	int ret = 0;
> +
> +	inst = kzalloc(sizeof(*inst), GFP_KERNEL);
> +	if (!inst)
> +		return -ENOMEM;
> +
> +	inst->dev = dev;
> +	inst->type = VPU_INST_TYPE_DEC;
> +	inst->ops = &wave5_vpu_dec_inst_ops;
> +
> +	spin_lock_init(&inst->state_spinlock);
> +
> +	inst->codec_info = kzalloc(sizeof(*inst->codec_info), GFP_KERNEL);
> +	if (!inst->codec_info)
> +		return -ENOMEM;
> +
> +	v4l2_fh_init(&inst->v4l2_fh, vdev);
> +	filp->private_data = &inst->v4l2_fh;
> +	v4l2_fh_add(&inst->v4l2_fh);
> +
> +	INIT_LIST_HEAD(&inst->list);
> +	list_add_tail(&inst->list, &dev->instances);
> +
> +	inst->v4l2_m2m_dev = inst->dev->v4l2_m2m_dec_dev;
> +	inst->v4l2_fh.m2m_ctx =
> +		v4l2_m2m_ctx_init(inst->v4l2_m2m_dev, inst, wave5_vpu_dec_queue_init);
> +	if (IS_ERR(inst->v4l2_fh.m2m_ctx)) {
> +		ret = PTR_ERR(inst->v4l2_fh.m2m_ctx);
> +		goto cleanup_inst;
> +	}
> +	m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +
> +	v4l2_m2m_set_src_buffered(m2m_ctx, true);
> +	v4l2_m2m_set_dst_buffered(m2m_ctx, true);
> +	/*
> +	 * We use the M2M job queue to ensure synchronization of steps where
> +	 * needed, as IOCTLs can occur at anytime and we need to run commands on
> +	 * the firmware in a specified order.
> +	 * In order to initialize the sequence on the firmware within an M2M
> +	 * job, the M2M framework needs to be able to queue jobs before
> +	 * the CAPTURE queue has been started, because we need the results of the
> +	 * initialization to properly prepare the CAPTURE queue with the correct
> +	 * amount of buffers

Add something along the lines of:

	By setting ignore_cap_streaming to true the m2m framework will call
	job_ready as soon as the OUTPUT queue is streaming, instead of waiting
	until both the CAPTURE and OUTPUT queues are streaming.

> +	 */
> +	v4l2_m2m_set_dst_ignore_streaming(m2m_ctx, true);
> +
> +	v4l2_ctrl_handler_init(&inst->v4l2_ctrl_hdl, 10);
> +	v4l2_ctrl_new_std(&inst->v4l2_ctrl_hdl, NULL,
> +			  V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 32, 1, 1);
> +
> +	if (inst->v4l2_ctrl_hdl.error) {
> +		ret = -ENODEV;
> +		goto cleanup_inst;
> +	}
> +
> +	inst->v4l2_fh.ctrl_handler = &inst->v4l2_ctrl_hdl;
> +	v4l2_ctrl_handler_setup(&inst->v4l2_ctrl_hdl);
> +
> +	wave5_set_default_format(&inst->src_fmt, &inst->dst_fmt);
> +	inst->colorspace = V4L2_COLORSPACE_REC709;
> +	inst->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> +	inst->hsv_enc = 0;
> +	inst->quantization = V4L2_QUANTIZATION_DEFAULT;
> +	inst->xfer_func = V4L2_XFER_FUNC_DEFAULT;
> +
> +	init_completion(&inst->irq_done);
> +	ret = kfifo_alloc(&inst->irq_status, 16 * sizeof(int), GFP_KERNEL);
> +	if (ret) {
> +		dev_err(inst->dev->dev, "failed to allocate fifo\n");
> +		goto cleanup_inst;
> +	}
> +
> +	inst->id = ida_alloc(&inst->dev->inst_ida, GFP_KERNEL);
> +	if (inst->id < 0) {
> +		dev_warn(inst->dev->dev, "Allocating instance ID, fail: %d\n", inst->id);
> +		ret = inst->id;
> +		goto cleanup_inst;
> +	}
> +
> +	wave5_vdi_allocate_sram(inst->dev);
> +
> +	return 0;
> +
> +cleanup_inst:
> +	wave5_cleanup_instance(inst);
> +	return ret;
> +}
> +
> +static int wave5_vpu_dec_release(struct file *filp)
> +{
> +	return wave5_vpu_release_device(filp, wave5_vpu_dec_close, "decoder");
> +}
> +
> +static const struct v4l2_file_operations wave5_vpu_dec_fops = {
> +	.owner = THIS_MODULE,
> +	.open = wave5_vpu_open_dec,
> +	.release = wave5_vpu_dec_release,
> +	.unlocked_ioctl = video_ioctl2,
> +	.poll = v4l2_m2m_fop_poll,
> +	.mmap = v4l2_m2m_fop_mmap,
> +};
> +
> +int wave5_vpu_dec_register_device(struct vpu_device *dev)
> +{
> +	struct video_device *vdev_dec;
> +	int ret;
> +
> +	vdev_dec = devm_kzalloc(dev->v4l2_dev.dev, sizeof(*vdev_dec), GFP_KERNEL);
> +	if (!vdev_dec)
> +		return -ENOMEM;
> +
> +	dev->v4l2_m2m_dec_dev = v4l2_m2m_init(&wave5_vpu_dec_m2m_ops);
> +	if (IS_ERR(dev->v4l2_m2m_dec_dev)) {
> +		ret = PTR_ERR(dev->v4l2_m2m_dec_dev);
> +		dev_err(dev->dev, "v4l2_m2m_init, fail: %d\n", ret);
> +		return -EINVAL;
> +	}
> +
> +	dev->video_dev_dec = vdev_dec;
> +
> +	strscpy(vdev_dec->name, VPU_DEC_DEV_NAME, sizeof(vdev_dec->name));
> +	vdev_dec->fops = &wave5_vpu_dec_fops;
> +	vdev_dec->ioctl_ops = &wave5_vpu_dec_ioctl_ops;
> +	vdev_dec->release = video_device_release_empty;
> +	vdev_dec->v4l2_dev = &dev->v4l2_dev;
> +	vdev_dec->vfl_dir = VFL_DIR_M2M;
> +	vdev_dec->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;
> +	vdev_dec->lock = &dev->dev_lock;
> +
> +	ret = video_register_device(vdev_dec, VFL_TYPE_VIDEO, -1);
> +	if (ret)
> +		return ret;
> +
> +	video_set_drvdata(vdev_dec, dev);
> +
> +	return 0;
> +}
> +
> +void wave5_vpu_dec_unregister_device(struct vpu_device *dev)
> +{
> +	video_unregister_device(dev->video_dev_dec);
> +	if (dev->v4l2_m2m_dec_dev)
> +		v4l2_m2m_release(dev->v4l2_m2m_dec_dev);
> +}
> diff --git a/drivers/media/platform/chips-media/wave5/wave5-vpu-enc.c b/drivers/media/platform/chips-media/wave5/wave5-vpu-enc.c
> new file mode 100644
> index 000000000000..e8d8e31b0cbe
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/wave5-vpu-enc.c
> @@ -0,0 +1,1825 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Wave5 series multi-standard codec IP - encoder interface
> + *
> + * Copyright (C) 2021 CHIPS&MEDIA INC
> + */
> +
> +#include "wave5-helper.h"
> +
> +#define VPU_ENC_DEV_NAME "C&M Wave5 VPU encoder"
> +#define VPU_ENC_DRV_NAME "wave5-enc"
> +
> +static const struct vpu_format enc_fmt_list[FMT_TYPES][MAX_FMTS] = {
> +	[VPU_FMT_TYPE_CODEC] = {
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_HEVC,
> +			.max_width = W5_MAX_ENC_PIC_WIDTH,
> +			.min_width = W5_MIN_ENC_PIC_WIDTH,
> +			.max_height = W5_MAX_ENC_PIC_HEIGHT,
> +			.min_height = W5_MIN_ENC_PIC_HEIGHT,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_H264,
> +			.max_width = W5_MAX_ENC_PIC_WIDTH,
> +			.min_width = W5_MIN_ENC_PIC_WIDTH,
> +			.max_height = W5_MAX_ENC_PIC_HEIGHT,
> +			.min_height = W5_MIN_ENC_PIC_HEIGHT,
> +		},
> +	},
> +	[VPU_FMT_TYPE_RAW] = {
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_YUV420,
> +			.max_width = W5_MAX_ENC_PIC_WIDTH,
> +			.min_width = W5_MIN_ENC_PIC_WIDTH,
> +			.max_height = W5_MAX_ENC_PIC_HEIGHT,
> +			.min_height = W5_MIN_ENC_PIC_HEIGHT,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV12,
> +			.max_width = W5_MAX_ENC_PIC_WIDTH,
> +			.min_width = W5_MIN_ENC_PIC_WIDTH,
> +			.max_height = W5_MAX_ENC_PIC_HEIGHT,
> +			.min_height = W5_MIN_ENC_PIC_HEIGHT,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV21,
> +			.max_width = W5_MAX_ENC_PIC_WIDTH,
> +			.min_width = W5_MIN_ENC_PIC_WIDTH,
> +			.max_height = W5_MAX_ENC_PIC_HEIGHT,
> +			.min_height = W5_MIN_ENC_PIC_HEIGHT,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_YUV420M,
> +			.max_width = W5_MAX_ENC_PIC_WIDTH,
> +			.min_width = W5_MIN_ENC_PIC_WIDTH,
> +			.max_height = W5_MAX_ENC_PIC_HEIGHT,
> +			.min_height = W5_MIN_ENC_PIC_HEIGHT,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV12M,
> +			.max_width = W5_MAX_ENC_PIC_WIDTH,
> +			.min_width = W5_MIN_ENC_PIC_WIDTH,
> +			.max_height = W5_MAX_ENC_PIC_HEIGHT,
> +			.min_height = W5_MIN_ENC_PIC_HEIGHT,
> +		},
> +		{
> +			.v4l2_pix_fmt = V4L2_PIX_FMT_NV21M,
> +			.max_width = W5_MAX_ENC_PIC_WIDTH,
> +			.min_width = W5_MIN_ENC_PIC_WIDTH,
> +			.max_height = W5_MAX_ENC_PIC_HEIGHT,
> +			.min_height = W5_MIN_ENC_PIC_HEIGHT,
> +		},
> +	}
> +};
> +
> +static int switch_state(struct vpu_instance *inst, enum vpu_instance_state state)
> +{
> +	switch (state) {
> +	case VPU_INST_STATE_NONE:
> +		goto invalid_state_switch;
> +	case VPU_INST_STATE_OPEN:
> +		if (inst->state != VPU_INST_STATE_NONE)
> +			goto invalid_state_switch;
> +		break;
> +	case VPU_INST_STATE_INIT_SEQ:
> +		if (inst->state != VPU_INST_STATE_OPEN && inst->state != VPU_INST_STATE_STOP)
> +			goto invalid_state_switch;
> +		break;
> +	case VPU_INST_STATE_PIC_RUN:
> +		if (inst->state != VPU_INST_STATE_INIT_SEQ)
> +			goto invalid_state_switch;
> +		break;
> +	case VPU_INST_STATE_STOP:
> +		break;
> +	};
> +
> +	dev_dbg(inst->dev->dev, "Switch state from %s to %s.\n",
> +		state_to_str(inst->state), state_to_str(state));
> +	inst->state = state;
> +	return 0;
> +
> +invalid_state_switch:
> +	WARN(1, "Invalid state switch from %s to %s.\n",
> +	     state_to_str(inst->state), state_to_str(state));
> +	return -EINVAL;
> +}
> +
> +static void wave5_update_pix_fmt(struct v4l2_pix_format_mplane *pix_mp, unsigned int width,
> +				 unsigned int height)
> +{
> +	switch (pix_mp->pixelformat) {
> +	case V4L2_PIX_FMT_YUV420:
> +	case V4L2_PIX_FMT_NV12:
> +	case V4L2_PIX_FMT_NV21:
> +		pix_mp->width = width;
> +		pix_mp->height = height;
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = round_up(width, 32) * height * 3 / 2;
> +		break;
> +	case V4L2_PIX_FMT_YUV420M:
> +		pix_mp->width = width;
> +		pix_mp->height = height;
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = round_up(width, 32) * height;
> +		pix_mp->plane_fmt[1].bytesperline = round_up(width, 32) / 2;
> +		pix_mp->plane_fmt[1].sizeimage = round_up(width, 32) * height / 4;
> +		pix_mp->plane_fmt[2].bytesperline = round_up(width, 32) / 2;
> +		pix_mp->plane_fmt[2].sizeimage = round_up(width, 32) * height / 4;
> +		break;
> +	case V4L2_PIX_FMT_NV12M:
> +	case V4L2_PIX_FMT_NV21M:
> +		pix_mp->width = width;
> +		pix_mp->height = height;
> +		pix_mp->plane_fmt[0].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[0].sizeimage = round_up(width, 32) * height;
> +		pix_mp->plane_fmt[1].bytesperline = round_up(width, 32);
> +		pix_mp->plane_fmt[1].sizeimage = round_up(width, 32) * height / 2;
> +		break;
> +	default:
> +		pix_mp->width = width;
> +		pix_mp->height = height;
> +		pix_mp->plane_fmt[0].bytesperline = 0;
> +		pix_mp->plane_fmt[0].sizeimage = width * height / 8 * 3;
> +		break;
> +	}
> +}
> +
> +static int start_encode(struct vpu_instance *inst, u32 *fail_res)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	int ret;
> +	struct vb2_v4l2_buffer *src_buf;
> +	struct vb2_v4l2_buffer *dst_buf;
> +	struct frame_buffer frame_buf;
> +	struct enc_param pic_param;
> +	u32 stride = ALIGN(inst->dst_fmt.width, 32);
> +	u32 luma_size = (stride * inst->dst_fmt.height);
> +	u32 chroma_size = ((stride / 2) * (inst->dst_fmt.height / 2));
> +
> +	memset(&pic_param, 0, sizeof(struct enc_param));
> +	memset(&frame_buf, 0, sizeof(struct frame_buffer));
> +
> +	dst_buf = v4l2_m2m_next_dst_buf(m2m_ctx);
> +	if (!dst_buf) {
> +		dev_dbg(inst->dev->dev, "%s: No destination buffer found\n", __func__);
> +		return -EAGAIN;
> +	}
> +
> +	pic_param.pic_stream_buffer_addr =
> +		vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
> +	pic_param.pic_stream_buffer_size =
> +		vb2_plane_size(&dst_buf->vb2_buf, 0);
> +
> +	src_buf = v4l2_m2m_next_src_buf(m2m_ctx);
> +	if (!src_buf) {
> +		dev_dbg(inst->dev->dev, "%s: No source buffer found\n", __func__);
> +		if (m2m_ctx->is_draining)
> +			pic_param.src_end_flag = 1;
> +		else
> +			return -EAGAIN;
> +	} else {
> +		if (inst->src_fmt.num_planes == 1) {
> +			frame_buf.buf_y =
> +				vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
> +			frame_buf.buf_cb = frame_buf.buf_y + luma_size;
> +			frame_buf.buf_cr = frame_buf.buf_cb + chroma_size;
> +		} else if (inst->src_fmt.num_planes == 2) {
> +			frame_buf.buf_y =
> +				vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
> +			frame_buf.buf_cb =
> +				vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 1);
> +			frame_buf.buf_cr = frame_buf.buf_cb + chroma_size;
> +		} else if (inst->src_fmt.num_planes == 3) {
> +			frame_buf.buf_y =
> +				vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
> +			frame_buf.buf_cb =
> +				vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 1);
> +			frame_buf.buf_cr =
> +				vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 2);
> +		}
> +		frame_buf.stride = stride;
> +		pic_param.src_idx = src_buf->vb2_buf.index;
> +	}
> +
> +	pic_param.source_frame = &frame_buf;
> +	pic_param.code_option.implicit_header_encode = 1;
> +	pic_param.code_option.encode_aud = inst->encode_aud;
> +	ret = wave5_vpu_enc_start_one_frame(inst, &pic_param, fail_res);
> +	if (ret) {
> +		if (*fail_res == WAVE5_SYSERR_QUEUEING_FAIL)
> +			return -EINVAL;
> +
> +		dev_dbg(inst->dev->dev, "%s: wave5_vpu_enc_start_one_frame fail: %d\n",
> +			__func__, ret);
> +		src_buf = v4l2_m2m_src_buf_remove(m2m_ctx);
> +		if (!src_buf) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: Removing src buf failed, the queue is empty\n",
> +				__func__);
> +			return -EINVAL;
> +		}
> +		dst_buf = v4l2_m2m_dst_buf_remove(m2m_ctx);
> +		if (!dst_buf) {
> +			dev_dbg(inst->dev->dev,
> +				"%s: Removing dst buf failed, the queue is empty\n",
> +				__func__);
> +			return -EINVAL;
> +		}
> +		switch_state(inst, VPU_INST_STATE_STOP);
> +		dst_buf->vb2_buf.timestamp = src_buf->vb2_buf.timestamp;
> +		v4l2_m2m_buf_done(src_buf, VB2_BUF_STATE_ERROR);
> +		v4l2_m2m_buf_done(dst_buf, VB2_BUF_STATE_ERROR);
> +	} else {
> +		dev_dbg(inst->dev->dev, "%s: wave5_vpu_enc_start_one_frame success\n",
> +			__func__);
> +		/*
> +		 * Remove the source buffer from the ready-queue now and finish
> +		 * it in the videobuf2 framework once the index is returned by the
> +		 * firmware in finish_encode
> +		 */
> +		if (src_buf)
> +			v4l2_m2m_src_buf_remove_by_idx(m2m_ctx, src_buf->vb2_buf.index);
> +	}
> +
> +	return 0;
> +}
> +
> +static void wave5_vpu_enc_finish_encode(struct vpu_instance *inst)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	int ret;
> +	struct enc_output_info enc_output_info;
> +	struct vb2_v4l2_buffer *src_buf = NULL;
> +	struct vb2_v4l2_buffer *dst_buf = NULL;
> +
> +	ret = wave5_vpu_enc_get_output_info(inst, &enc_output_info);
> +	if (ret) {
> +		dev_dbg(inst->dev->dev,
> +			"%s: vpu_enc_get_output_info fail: %d  reason: %u | info: %u\n",
> +			__func__, ret, enc_output_info.error_reason, enc_output_info.warn_info);
> +		return;
> +	}
> +
> +	dev_dbg(inst->dev->dev,
> +		"%s: pic_type %i recon_idx %i src_idx %i pic_byte %u pts %llu\n",
> +		__func__,  enc_output_info.pic_type, enc_output_info.recon_frame_index,
> +		enc_output_info.enc_src_idx, enc_output_info.enc_pic_byte, enc_output_info.pts);
> +
> +	/*
> +	 * The source buffer will not be found in the ready-queue as it has been
> +	 * dropped after sending of the encode firmware command, locate it in
> +	 * the videobuf2 queue directly
> +	 */
> +	if (enc_output_info.enc_src_idx >= 0) {
> +		struct vb2_buffer *vb = vb2_get_buffer(v4l2_m2m_get_src_vq(m2m_ctx),
> +						       enc_output_info.enc_src_idx);
> +		if (vb->state != VB2_BUF_STATE_ACTIVE)
> +			dev_warn(inst->dev->dev,
> +				 "%s: encoded buffer (%d) was not in ready queue %i.",
> +				 __func__, enc_output_info.enc_src_idx, vb->state);
> +		else
> +			src_buf = to_vb2_v4l2_buffer(vb);
> +
> +		if (src_buf) {
> +			inst->timestamp = src_buf->vb2_buf.timestamp;
> +			v4l2_m2m_buf_done(src_buf, VB2_BUF_STATE_DONE);
> +		} else {
> +			dev_warn(inst->dev->dev, "%s: no source buffer with index: %d found\n",
> +				 __func__, enc_output_info.enc_src_idx);
> +		}
> +	}
> +
> +	dst_buf = v4l2_m2m_dst_buf_remove(m2m_ctx);
> +	if (enc_output_info.recon_frame_index == RECON_IDX_FLAG_ENC_END) {
> +		static const struct v4l2_event vpu_event_eos = {
> +			.type = V4L2_EVENT_EOS
> +		};
> +
> +		if (dst_buf) {
> +			vb2_set_plane_payload(&dst_buf->vb2_buf, 0, 0);
> +			dst_buf->field = V4L2_FIELD_NONE;
> +			v4l2_m2m_last_buffer_done(m2m_ctx, dst_buf);
> +		} else {
> +			WARN(1, "A job have been run without destination buffer.\n");
> +		}
> +
> +		v4l2_event_queue_fh(&inst->v4l2_fh, &vpu_event_eos);
> +
> +		v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +	} else {
> +		if (!dst_buf) {
> +			dev_warn(inst->dev->dev, "No bitstream buffer.");
> +			v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +			return;
> +		}
> +
> +		vb2_set_plane_payload(&dst_buf->vb2_buf, 0, enc_output_info.bitstream_size);
> +
> +		dst_buf->vb2_buf.timestamp = inst->timestamp;
> +		dst_buf->field = V4L2_FIELD_NONE;
> +		if (enc_output_info.pic_type == PIC_TYPE_I) {
> +			if (enc_output_info.enc_vcl_nut == 19 ||
> +			    enc_output_info.enc_vcl_nut == 20)
> +				dst_buf->flags |= V4L2_BUF_FLAG_KEYFRAME;
> +			else
> +				dst_buf->flags |= V4L2_BUF_FLAG_PFRAME;
> +		} else if (enc_output_info.pic_type == PIC_TYPE_P) {
> +			dst_buf->flags |= V4L2_BUF_FLAG_PFRAME;
> +		} else if (enc_output_info.pic_type == PIC_TYPE_B) {
> +			dst_buf->flags |= V4L2_BUF_FLAG_BFRAME;
> +		}
> +
> +		v4l2_m2m_buf_done(dst_buf, VB2_BUF_STATE_DONE);
> +
> +		dev_dbg(inst->dev->dev, "%s: frame_cycle %8u\n",
> +			__func__, enc_output_info.frame_cycle);
> +
> +		v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +	}
> +}
> +
> +static int wave5_vpu_enc_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
> +{
> +	strscpy(cap->driver, VPU_ENC_DRV_NAME, sizeof(cap->driver));
> +	strscpy(cap->card, VPU_ENC_DRV_NAME, sizeof(cap->card));
> +	strscpy(cap->bus_info, "platform:" VPU_ENC_DRV_NAME, sizeof(cap->bus_info));

This last line should not be needed, I think.

> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_enum_framesizes(struct file *f, void *fh, struct v4l2_frmsizeenum *fsize)
> +{
> +	const struct vpu_format *vpu_fmt;
> +
> +	if (fsize->index)
> +		return -EINVAL;
> +
> +	vpu_fmt = wave5_find_vpu_fmt(fsize->pixel_format, enc_fmt_list[VPU_FMT_TYPE_CODEC]);
> +	if (!vpu_fmt) {
> +		vpu_fmt = wave5_find_vpu_fmt(fsize->pixel_format, enc_fmt_list[VPU_FMT_TYPE_RAW]);
> +		if (!vpu_fmt)
> +			return -EINVAL;
> +	}
> +
> +	fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
> +	fsize->stepwise.min_width = vpu_fmt->min_width;
> +	fsize->stepwise.max_width = vpu_fmt->max_width;
> +	fsize->stepwise.step_width = 1;
> +	fsize->stepwise.min_height = vpu_fmt->min_height;
> +	fsize->stepwise.max_height = vpu_fmt->max_height;
> +	fsize->stepwise.step_height = 1;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_enum_fmt_cap(struct file *file, void *fh, struct v4l2_fmtdesc *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	const struct vpu_format *vpu_fmt;
> +
> +	dev_dbg(inst->dev->dev, "%s: index: %u\n", __func__, f->index);
> +
> +	vpu_fmt = wave5_find_vpu_fmt_by_idx(f->index, enc_fmt_list[VPU_FMT_TYPE_CODEC]);
> +	if (!vpu_fmt)
> +		return -EINVAL;
> +
> +	f->pixelformat = vpu_fmt->v4l2_pix_fmt;
> +	f->flags = 0;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_try_fmt_cap(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	const struct vpu_format *vpu_fmt;
> +
> +	dev_dbg(inst->dev->dev, "%s: fourcc: %u width: %u height: %u num_planes: %u field: %u\n",
> +		__func__, f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.width, f->fmt.pix_mp.height,
> +		f->fmt.pix_mp.num_planes, f->fmt.pix_mp.field);
> +
> +	if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
> +		return -EINVAL;
> +
> +	vpu_fmt = wave5_find_vpu_fmt(f->fmt.pix_mp.pixelformat, enc_fmt_list[VPU_FMT_TYPE_CODEC]);
> +	if (!vpu_fmt) {
> +		f->fmt.pix_mp.pixelformat = inst->dst_fmt.pixelformat;
> +		f->fmt.pix_mp.num_planes = inst->dst_fmt.num_planes;
> +		wave5_update_pix_fmt(&f->fmt.pix_mp, inst->dst_fmt.width, inst->dst_fmt.height);
> +	} else {
> +		int width = clamp(f->fmt.pix_mp.width, vpu_fmt->min_width, vpu_fmt->max_width);
> +		int height = clamp(f->fmt.pix_mp.height, vpu_fmt->min_height, vpu_fmt->max_height);
> +
> +		f->fmt.pix_mp.pixelformat = vpu_fmt->v4l2_pix_fmt;
> +		f->fmt.pix_mp.num_planes = 1;
> +		wave5_update_pix_fmt(&f->fmt.pix_mp, width, height);
> +	}
> +
> +	f->fmt.pix_mp.flags = 0;
> +	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> +	f->fmt.pix_mp.colorspace = inst->colorspace;
> +	f->fmt.pix_mp.ycbcr_enc = inst->ycbcr_enc;
> +	f->fmt.pix_mp.hsv_enc = inst->hsv_enc;

Same issue here with hsv_enc. I won't mention that again.

> +	f->fmt.pix_mp.quantization = inst->quantization;
> +	f->fmt.pix_mp.xfer_func = inst->xfer_func;
> +	memset(&f->fmt.pix_mp.reserved, 0, sizeof(f->fmt.pix_mp.reserved));

Not needed.

> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_s_fmt_cap(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	int i, ret;
> +
> +	dev_dbg(inst->dev->dev, "%s: fourcc: %u width: %u height: %u num_planes: %u field: %u\n",
> +		__func__, f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.width, f->fmt.pix_mp.height,
> +		f->fmt.pix_mp.num_planes, f->fmt.pix_mp.field);
> +
> +	ret = wave5_vpu_enc_try_fmt_cap(file, fh, f);
> +	if (ret)
> +		return ret;
> +
> +	inst->dst_fmt.width = f->fmt.pix_mp.width;
> +	inst->dst_fmt.height = f->fmt.pix_mp.height;
> +	inst->dst_fmt.pixelformat = f->fmt.pix_mp.pixelformat;
> +	inst->dst_fmt.field = f->fmt.pix_mp.field;
> +	inst->dst_fmt.flags = f->fmt.pix_mp.flags;
> +	inst->dst_fmt.num_planes = f->fmt.pix_mp.num_planes;
> +	for (i = 0; i < inst->dst_fmt.num_planes; i++) {
> +		inst->dst_fmt.plane_fmt[i].bytesperline = f->fmt.pix_mp.plane_fmt[i].bytesperline;
> +		inst->dst_fmt.plane_fmt[i].sizeimage = f->fmt.pix_mp.plane_fmt[i].sizeimage;
> +	}
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_g_fmt_cap(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	int i;
> +
> +	f->fmt.pix_mp.width = inst->dst_fmt.width;
> +	f->fmt.pix_mp.height = inst->dst_fmt.height;
> +	f->fmt.pix_mp.pixelformat = inst->dst_fmt.pixelformat;
> +	f->fmt.pix_mp.field = inst->dst_fmt.field;
> +	f->fmt.pix_mp.flags = inst->dst_fmt.flags;
> +	f->fmt.pix_mp.num_planes = inst->dst_fmt.num_planes;
> +	for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
> +		f->fmt.pix_mp.plane_fmt[i].bytesperline = inst->dst_fmt.plane_fmt[i].bytesperline;
> +		f->fmt.pix_mp.plane_fmt[i].sizeimage = inst->dst_fmt.plane_fmt[i].sizeimage;
> +	}
> +
> +	f->fmt.pix_mp.colorspace = inst->colorspace;
> +	f->fmt.pix_mp.ycbcr_enc = inst->ycbcr_enc;
> +	f->fmt.pix_mp.hsv_enc = inst->hsv_enc;
> +	f->fmt.pix_mp.quantization = inst->quantization;
> +	f->fmt.pix_mp.xfer_func = inst->xfer_func;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_enum_fmt_out(struct file *file, void *fh, struct v4l2_fmtdesc *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	const struct vpu_format *vpu_fmt;
> +
> +	dev_dbg(inst->dev->dev, "%s: index: %u\n", __func__, f->index);
> +
> +	vpu_fmt = wave5_find_vpu_fmt_by_idx(f->index, enc_fmt_list[VPU_FMT_TYPE_RAW]);
> +	if (!vpu_fmt)
> +		return -EINVAL;
> +
> +	f->pixelformat = vpu_fmt->v4l2_pix_fmt;
> +	f->flags = 0;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_try_fmt_out(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	const struct vpu_format *vpu_fmt;
> +
> +	dev_dbg(inst->dev->dev, "%s: fourcc: %u width: %u height: %u num_planes: %u field: %u\n",
> +		__func__, f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.width, f->fmt.pix_mp.height,
> +		f->fmt.pix_mp.num_planes, f->fmt.pix_mp.field);
> +
> +	if (f->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> +		return -EINVAL;
> +
> +	vpu_fmt = wave5_find_vpu_fmt(f->fmt.pix_mp.pixelformat, enc_fmt_list[VPU_FMT_TYPE_RAW]);
> +	if (!vpu_fmt) {
> +		f->fmt.pix_mp.pixelformat = inst->src_fmt.pixelformat;
> +		f->fmt.pix_mp.num_planes = inst->src_fmt.num_planes;
> +		wave5_update_pix_fmt(&f->fmt.pix_mp, inst->src_fmt.width, inst->src_fmt.height);
> +	} else {
> +		int width = clamp(f->fmt.pix_mp.width, vpu_fmt->min_width, vpu_fmt->max_width);
> +		int height = clamp(f->fmt.pix_mp.height, vpu_fmt->min_height, vpu_fmt->max_height);
> +		const struct v4l2_format_info *info = v4l2_format_info(vpu_fmt->v4l2_pix_fmt);
> +
> +		f->fmt.pix_mp.pixelformat = vpu_fmt->v4l2_pix_fmt;
> +		f->fmt.pix_mp.num_planes = info->mem_planes;
> +		wave5_update_pix_fmt(&f->fmt.pix_mp, width, height);
> +	}
> +
> +	f->fmt.pix_mp.flags = 0;
> +	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> +	memset(&f->fmt.pix_mp.reserved, 0, sizeof(f->fmt.pix_mp.reserved));

Not needed.

> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_s_fmt_out(struct file *file, void *fh, struct v4l2_format *f)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	int i, ret;
> +
> +	dev_dbg(inst->dev->dev, "%s: fourcc: %u width: %u height: %u num_planes: %u field: %u\n",
> +		__func__, f->fmt.pix_mp.pixelformat, f->fmt.pix_mp.width, f->fmt.pix_mp.height,
> +		f->fmt.pix_mp.num_planes, f->fmt.pix_mp.field);
> +
> +	ret = wave5_vpu_enc_try_fmt_out(file, fh, f);
> +	if (ret)
> +		return ret;
> +
> +	inst->src_fmt.width = f->fmt.pix_mp.width;
> +	inst->src_fmt.height = f->fmt.pix_mp.height;
> +	inst->src_fmt.pixelformat = f->fmt.pix_mp.pixelformat;
> +	inst->src_fmt.field = f->fmt.pix_mp.field;
> +	inst->src_fmt.flags = f->fmt.pix_mp.flags;
> +	inst->src_fmt.num_planes = f->fmt.pix_mp.num_planes;
> +	for (i = 0; i < inst->src_fmt.num_planes; i++) {
> +		inst->src_fmt.plane_fmt[i].bytesperline = f->fmt.pix_mp.plane_fmt[i].bytesperline;
> +		inst->src_fmt.plane_fmt[i].sizeimage = f->fmt.pix_mp.plane_fmt[i].sizeimage;
> +	}
> +
> +	if (inst->src_fmt.pixelformat == V4L2_PIX_FMT_NV12 ||
> +	    inst->src_fmt.pixelformat == V4L2_PIX_FMT_NV12M) {
> +		inst->cbcr_interleave = true;
> +		inst->nv21 = false;
> +	} else if (inst->src_fmt.pixelformat == V4L2_PIX_FMT_NV21 ||
> +		   inst->src_fmt.pixelformat == V4L2_PIX_FMT_NV21M) {
> +		inst->cbcr_interleave = true;
> +		inst->nv21 = true;
> +	} else {
> +		inst->cbcr_interleave = false;
> +		inst->nv21 = false;
> +	}
> +
> +	inst->colorspace = f->fmt.pix_mp.colorspace;
> +	inst->ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
> +	inst->hsv_enc = f->fmt.pix_mp.hsv_enc;
> +	inst->quantization = f->fmt.pix_mp.quantization;
> +	inst->xfer_func = f->fmt.pix_mp.xfer_func;
> +
> +	wave5_update_pix_fmt(&inst->dst_fmt, f->fmt.pix_mp.width, f->fmt.pix_mp.height);
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_g_selection(struct file *file, void *fh, struct v4l2_selection *s)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %u | target: %u\n", __func__, s->type, s->target);
> +
> +	if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
> +		switch (s->target) {
> +		case V4L2_SEL_TGT_CROP_DEFAULT:
> +		case V4L2_SEL_TGT_CROP_BOUNDS:
> +			s->r.left = 0;
> +			s->r.top = 0;
> +			s->r.width = inst->dst_fmt.width;
> +			s->r.height = inst->dst_fmt.height;
> +			break;
> +		case V4L2_SEL_TGT_CROP:
> +			s->r.left = 0;
> +			s->r.top = 0;
> +			s->r.width = inst->dst_fmt.width;
> +			s->r.height = inst->dst_fmt.height;
> +			dev_dbg(inst->dev->dev, "%s: V4L2_SEL_TGT_CROP width: %u | height: %u\n",
> +				__func__, s->r.width, s->r.height);
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_s_selection(struct file *file, void *fh, struct v4l2_selection *s)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +
> +	if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
> +		return -EINVAL;
> +
> +	if (s->target != V4L2_SEL_TGT_CROP)
> +		return -EINVAL;
> +
> +	dev_dbg(inst->dev->dev, "%s: V4L2_SEL_TGT_CROP width: %u | height: %u\n",
> +		__func__, s->r.width, s->r.height);
> +
> +	s->r.left = 0;
> +	s->r.top = 0;
> +	s->r.width = inst->src_fmt.width;
> +	s->r.height = inst->src_fmt.height;
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_encoder_cmd(struct file *file, void *fh, struct v4l2_encoder_cmd *ec)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	int ret;
> +
> +	ret = v4l2_m2m_ioctl_try_encoder_cmd(file, fh, ec);
> +	if (ret)
> +		return ret;
> +
> +	if (!wave5_vpu_both_queues_are_streaming(inst))
> +		return 0;
> +
> +	switch (ec->cmd) {
> +	case V4L2_ENC_CMD_STOP:
> +		if (m2m_ctx->is_draining)
> +			return -EBUSY;
> +
> +		if (m2m_ctx->has_stopped)
> +			return 0;
> +
> +		m2m_ctx->last_src_buf = v4l2_m2m_last_src_buf(m2m_ctx);
> +		m2m_ctx->is_draining = true;
> +		break;
> +	case V4L2_ENC_CMD_START:
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_g_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %u\n", __func__, a->type);
> +
> +	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT && a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> +		return -EINVAL;
> +
> +	a->parm.output.capability = V4L2_CAP_TIMEPERFRAME;
> +	a->parm.output.timeperframe.numerator = 1;
> +	a->parm.output.timeperframe.denominator = inst->frame_rate;
> +
> +	dev_dbg(inst->dev->dev, "%s: numerator: %u | denominator: %u\n",
> +		__func__, a->parm.output.timeperframe.numerator,
> +		a->parm.output.timeperframe.denominator);
> +
> +	return 0;
> +}
> +
> +static int wave5_vpu_enc_s_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
> +{
> +	struct vpu_instance *inst = wave5_to_vpu_inst(fh);
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %u\n", __func__, a->type);
> +
> +	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT && a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> +		return -EINVAL;
> +
> +	a->parm.output.capability = V4L2_CAP_TIMEPERFRAME;
> +	if (a->parm.output.timeperframe.denominator && a->parm.output.timeperframe.numerator) {
> +		inst->frame_rate = a->parm.output.timeperframe.denominator /
> +				   a->parm.output.timeperframe.numerator;
> +	} else {
> +		a->parm.output.timeperframe.numerator = 1;
> +		a->parm.output.timeperframe.denominator = inst->frame_rate;
> +	}
> +
> +	dev_dbg(inst->dev->dev, "%s: numerator: %u | denominator: %u\n",
> +		__func__, a->parm.output.timeperframe.numerator,
> +		a->parm.output.timeperframe.denominator);
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_ioctl_ops wave5_vpu_enc_ioctl_ops = {
> +	.vidioc_querycap = wave5_vpu_enc_querycap,
> +	.vidioc_enum_framesizes = wave5_vpu_enc_enum_framesizes,
> +
> +	.vidioc_enum_fmt_vid_cap	= wave5_vpu_enc_enum_fmt_cap,
> +	.vidioc_s_fmt_vid_cap_mplane = wave5_vpu_enc_s_fmt_cap,
> +	.vidioc_g_fmt_vid_cap_mplane = wave5_vpu_enc_g_fmt_cap,
> +	.vidioc_try_fmt_vid_cap_mplane = wave5_vpu_enc_try_fmt_cap,
> +
> +	.vidioc_enum_fmt_vid_out	= wave5_vpu_enc_enum_fmt_out,
> +	.vidioc_s_fmt_vid_out_mplane = wave5_vpu_enc_s_fmt_out,
> +	.vidioc_g_fmt_vid_out_mplane = wave5_vpu_g_fmt_out,
> +	.vidioc_try_fmt_vid_out_mplane = wave5_vpu_enc_try_fmt_out,
> +
> +	.vidioc_g_selection = wave5_vpu_enc_g_selection,
> +	.vidioc_s_selection = wave5_vpu_enc_s_selection,
> +
> +	.vidioc_g_parm = wave5_vpu_enc_g_parm,
> +	.vidioc_s_parm = wave5_vpu_enc_s_parm,
> +
> +	.vidioc_reqbufs = v4l2_m2m_ioctl_reqbufs,
> +	.vidioc_querybuf = v4l2_m2m_ioctl_querybuf,
> +	.vidioc_create_bufs = v4l2_m2m_ioctl_create_bufs,
> +	.vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
> +	.vidioc_qbuf = v4l2_m2m_ioctl_qbuf,
> +	.vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
> +	.vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
> +	.vidioc_streamon = v4l2_m2m_ioctl_streamon,
> +	.vidioc_streamoff = v4l2_m2m_ioctl_streamoff,
> +
> +	.vidioc_try_encoder_cmd = v4l2_m2m_ioctl_try_encoder_cmd,
> +	.vidioc_encoder_cmd = wave5_vpu_enc_encoder_cmd,
> +
> +	.vidioc_subscribe_event = wave5_vpu_subscribe_event,
> +	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
> +};
> +
> +static int wave5_vpu_enc_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct vpu_instance *inst = wave5_ctrl_to_vpu_inst(ctrl);
> +
> +	dev_dbg(inst->dev->dev, "%s: name: %s | value: %d\n", __func__, ctrl->name, ctrl->val);
> +
> +	switch (ctrl->id) {
> +	case V4L2_CID_MPEG_VIDEO_AU_DELIMITER:
> +		inst->encode_aud = ctrl->val;
> +		break;
> +	case V4L2_CID_HFLIP:
> +		inst->mirror_direction |= (ctrl->val << 1);
> +		break;
> +	case V4L2_CID_VFLIP:
> +		inst->mirror_direction |= ctrl->val;
> +		break;
> +	case V4L2_CID_ROTATE:
> +		inst->rot_angle = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_VBV_SIZE:
> +		inst->vbv_buf_size = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_BITRATE_MODE:
> +		switch (ctrl->val) {
> +		case V4L2_MPEG_VIDEO_BITRATE_MODE_VBR:
> +			inst->rc_mode = 0;
> +			break;
> +		case V4L2_MPEG_VIDEO_BITRATE_MODE_CBR:
> +			inst->rc_mode = 1;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_BITRATE:
> +		inst->bit_rate = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_GOP_SIZE:
> +		inst->enc_param.avc_idr_period = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MODE:
> +		inst->enc_param.independ_slice_mode = ctrl->val;
> +		inst->enc_param.avc_slice_mode = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_MB:
> +		inst->enc_param.independ_slice_mode_arg = ctrl->val;
> +		inst->enc_param.avc_slice_arg = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE:
> +		inst->rc_enable = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE:
> +		inst->enc_param.mb_level_rc_enable = ctrl->val;
> +		inst->enc_param.cu_level_rc_enable = ctrl->val;
> +		inst->enc_param.hvs_qp_enable = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_PROFILE:
> +		switch (ctrl->val) {
> +		case V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN:
> +			inst->enc_param.profile = HEVC_PROFILE_MAIN;
> +			inst->bit_depth = 8;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_STILL_PICTURE:
> +			inst->enc_param.profile = HEVC_PROFILE_STILLPICTURE;
> +			inst->enc_param.en_still_picture = 1;
> +			inst->bit_depth = 8;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10:
> +			inst->enc_param.profile = HEVC_PROFILE_MAIN10;
> +			inst->bit_depth = 10;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_LEVEL:
> +		switch (ctrl->val) {
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_1:
> +			inst->enc_param.level = 10 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_2:
> +			inst->enc_param.level = 20 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_2_1:
> +			inst->enc_param.level = 21 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_3:
> +			inst->enc_param.level = 30 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_3_1:
> +			inst->enc_param.level = 31 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_4:
> +			inst->enc_param.level = 40 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_4_1:
> +			inst->enc_param.level = 41 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_5:
> +			inst->enc_param.level = 50 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1:
> +			inst->enc_param.level = 51 * 3;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LEVEL_5_2:
> +			inst->enc_param.level = 52 * 3;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_MIN_QP:
> +		inst->enc_param.min_qp_i = ctrl->val;
> +		inst->enc_param.min_qp_p = ctrl->val;
> +		inst->enc_param.min_qp_b = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_MAX_QP:
> +		inst->enc_param.max_qp_i = ctrl->val;
> +		inst->enc_param.max_qp_p = ctrl->val;
> +		inst->enc_param.max_qp_b = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_I_FRAME_QP:
> +		inst->enc_param.intra_qp = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_LOOP_FILTER_MODE:
> +		switch (ctrl->val) {
> +		case V4L2_MPEG_VIDEO_HEVC_LOOP_FILTER_MODE_DISABLED:
> +			inst->enc_param.disable_deblk = 1;
> +			inst->enc_param.sao_enable = 0;
> +			inst->enc_param.lf_cross_slice_boundary_enable = 0;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LOOP_FILTER_MODE_ENABLED:
> +			inst->enc_param.disable_deblk = 0;
> +			inst->enc_param.sao_enable = 1;
> +			inst->enc_param.lf_cross_slice_boundary_enable = 1;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_LOOP_FILTER_MODE_DISABLED_AT_SLICE_BOUNDARY:
> +			inst->enc_param.disable_deblk = 0;
> +			inst->enc_param.sao_enable = 1;
> +			inst->enc_param.lf_cross_slice_boundary_enable = 0;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_LF_BETA_OFFSET_DIV2:
> +		inst->enc_param.beta_offset_div2 = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_LF_TC_OFFSET_DIV2:
> +		inst->enc_param.tc_offset_div2 = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_REFRESH_TYPE:
> +		switch (ctrl->val) {
> +		case V4L2_MPEG_VIDEO_HEVC_REFRESH_NONE:
> +			inst->enc_param.decoding_refresh_type = 0;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_REFRESH_CRA:
> +			inst->enc_param.decoding_refresh_type = 1;
> +			break;
> +		case V4L2_MPEG_VIDEO_HEVC_REFRESH_IDR:
> +			inst->enc_param.decoding_refresh_type = 2;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_REFRESH_PERIOD:
> +		inst->enc_param.intra_period = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_LOSSLESS_CU:
> +		inst->enc_param.lossless_enable = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_CONST_INTRA_PRED:
> +		inst->enc_param.const_intra_pred_flag = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_WAVEFRONT:
> +		inst->enc_param.wpp_enable = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_STRONG_SMOOTHING:
> +		inst->enc_param.strong_intra_smooth_enable = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_MAX_NUM_MERGE_MV_MINUS1:
> +		inst->enc_param.max_num_merge = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_HEVC_TMV_PREDICTION:
> +		inst->enc_param.tmvp_enable = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_PROFILE:
> +		switch (ctrl->val) {
> +		case V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE:
> +		case V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE:
> +			inst->enc_param.profile = H264_PROFILE_BP;
> +			inst->bit_depth = 8;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_PROFILE_MAIN:
> +			inst->enc_param.profile = H264_PROFILE_MP;
> +			inst->bit_depth = 8;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED:
> +			inst->enc_param.profile = H264_PROFILE_EXTENDED;
> +			inst->bit_depth = 8;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_PROFILE_HIGH:
> +			inst->enc_param.profile = H264_PROFILE_HP;
> +			inst->bit_depth = 8;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_10:
> +			inst->enc_param.profile = H264_PROFILE_HIGH10;
> +			inst->bit_depth = 10;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_422:
> +			inst->enc_param.profile = H264_PROFILE_HIGH422;
> +			inst->bit_depth = 10;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_444_PREDICTIVE:
> +			inst->enc_param.profile = H264_PROFILE_HIGH444;
> +			inst->bit_depth = 10;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_LEVEL:
> +		switch (ctrl->val) {
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_1_0:
> +			inst->enc_param.level = 10;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_1B:
> +			inst->enc_param.level = 9;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_1_1:
> +			inst->enc_param.level = 11;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_1_2:
> +			inst->enc_param.level = 12;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_1_3:
> +			inst->enc_param.level = 13;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_2_0:
> +			inst->enc_param.level = 20;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_2_1:
> +			inst->enc_param.level = 21;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_2_2:
> +			inst->enc_param.level = 22;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_3_0:
> +			inst->enc_param.level = 30;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_3_1:
> +			inst->enc_param.level = 31;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_3_2:
> +			inst->enc_param.level = 32;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_4_0:
> +			inst->enc_param.level = 40;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_4_1:
> +			inst->enc_param.level = 41;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_4_2:
> +			inst->enc_param.level = 42;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_5_0:
> +			inst->enc_param.level = 50;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LEVEL_5_1:
> +			inst->enc_param.level = 51;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_MIN_QP:
> +		inst->enc_param.min_qp_i = ctrl->val;
> +		inst->enc_param.min_qp_p = ctrl->val;
> +		inst->enc_param.min_qp_b = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_MAX_QP:
> +		inst->enc_param.max_qp_i = ctrl->val;
> +		inst->enc_param.max_qp_p = ctrl->val;
> +		inst->enc_param.max_qp_b = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_I_FRAME_QP:
> +		inst->enc_param.intra_qp = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_MODE:
> +		switch (ctrl->val) {
> +		case V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED:
> +			inst->enc_param.disable_deblk = 1;
> +			inst->enc_param.lf_cross_slice_boundary_enable = 1;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_ENABLED:
> +			inst->enc_param.disable_deblk = 0;
> +			inst->enc_param.lf_cross_slice_boundary_enable = 1;
> +			break;
> +		case V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED_AT_SLICE_BOUNDARY:
> +			inst->enc_param.disable_deblk = 0;
> +			inst->enc_param.lf_cross_slice_boundary_enable = 0;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_BETA:
> +		inst->enc_param.beta_offset_div2 = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_ALPHA:
> +		inst->enc_param.tc_offset_div2 = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_8X8_TRANSFORM:
> +		inst->enc_param.transform8x8_enable = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_CONSTRAINED_INTRA_PREDICTION:
> +		inst->enc_param.const_intra_pred_flag = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_CHROMA_QP_INDEX_OFFSET:
> +		inst->enc_param.chroma_cb_qp_offset = ctrl->val;
> +		inst->enc_param.chroma_cr_qp_offset = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_I_PERIOD:
> +		inst->enc_param.intra_period = ctrl->val;
> +		break;
> +	case V4L2_CID_MPEG_VIDEO_H264_ENTROPY_MODE:
> +		inst->enc_param.entropy_coding_mode = ctrl->val;
> +		break;
> +	case V4L2_CID_MIN_BUFFERS_FOR_OUTPUT:
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_ctrl_ops wave5_vpu_enc_ctrl_ops = {
> +	.s_ctrl = wave5_vpu_enc_s_ctrl,
> +};
> +
> +static int wave5_vpu_enc_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
> +				     unsigned int *num_planes, unsigned int sizes[],
> +				     struct device *alloc_devs[])
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(q);
> +	struct v4l2_pix_format_mplane inst_format =
> +		(q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) ? inst->src_fmt : inst->dst_fmt;
> +	unsigned int i;
> +
> +	dev_dbg(inst->dev->dev, "%s: num_buffers: %u | num_planes: %u | type: %u\n", __func__,
> +		*num_buffers, *num_planes, q->type);
> +
> +	if (*num_planes) {
> +		if (inst_format.num_planes != *num_planes)
> +			return -EINVAL;
> +
> +		for (i = 0; i < *num_planes; i++) {
> +			if (sizes[i] < inst_format.plane_fmt[i].sizeimage)
> +				return -EINVAL;
> +		}
> +	} else {
> +		*num_planes = inst_format.num_planes;
> +		for (i = 0; i < *num_planes; i++) {
> +			sizes[i] = inst_format.plane_fmt[i].sizeimage;
> +			dev_dbg(inst->dev->dev, "%s: size[%u]: %u\n", __func__, i, sizes[i]);
> +		}
> +	}
> +
> +	dev_dbg(inst->dev->dev, "%s: size: %u\n", __func__, sizes[0]);
> +
> +	if (inst->state == VPU_INST_STATE_INIT_SEQ &&
> +	    q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
> +		if (*num_buffers > inst->src_buf_count &&
> +		    *num_buffers < WAVE5_MAX_FBS)
> +			inst->src_buf_count = *num_buffers;

Same issue as with the decoder. Why is src_buf_count needed at all?

> +
> +		*num_buffers = inst->src_buf_count;
> +		dev_dbg(inst->dev->dev, "%s: src buf num: %u", __func__, *num_buffers);
> +	}
> +
> +	return 0;
> +}
> +
> +static void wave5_vpu_enc_buf_queue(struct vb2_buffer *vb)
> +{
> +	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> +	struct vpu_instance *inst = vb2_get_drv_priv(vb->vb2_queue);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %4u index: %4u size: ([0]=%4lu, [1]=%4lu, [2]=%4lu)\n",
> +		__func__, vb->type, vb->index, vb2_plane_size(&vbuf->vb2_buf, 0),
> +		vb2_plane_size(&vbuf->vb2_buf, 1), vb2_plane_size(&vbuf->vb2_buf, 2));
> +
> +	if (vb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> +		vbuf->sequence = inst->queued_src_buf_num++;
> +	else
> +		vbuf->sequence = inst->queued_dst_buf_num++;
> +
> +	v4l2_m2m_buf_queue(m2m_ctx, vbuf);
> +}
> +
> +static void wave5_set_enc_openparam(struct enc_open_param *open_param,
> +				    struct vpu_instance *inst)
> +{
> +	struct enc_wave_param input = inst->enc_param;
> +	u32 num_ctu_row = ALIGN(inst->dst_fmt.height, 64) / 64;
> +	u32 num_mb_row = ALIGN(inst->dst_fmt.height, 16) / 16;
> +
> +	open_param->wave_param.gop_preset_idx = PRESET_IDX_IPP_SINGLE;
> +	open_param->wave_param.hvs_qp_scale = 2;
> +	open_param->wave_param.hvs_max_delta_qp = 10;
> +	open_param->wave_param.skip_intra_trans = 1;
> +	open_param->wave_param.intra_nx_n_enable = 1;
> +	open_param->wave_param.nr_intra_weight_y = 7;
> +	open_param->wave_param.nr_intra_weight_cb = 7;
> +	open_param->wave_param.nr_intra_weight_cr = 7;
> +	open_param->wave_param.nr_inter_weight_y = 4;
> +	open_param->wave_param.nr_inter_weight_cb = 4;
> +	open_param->wave_param.nr_inter_weight_cr = 4;
> +	open_param->wave_param.rdo_skip = 1;
> +	open_param->wave_param.lambda_scaling_enable = 1;
> +
> +	open_param->line_buf_int_en = true;
> +	open_param->pic_width = inst->dst_fmt.width;
> +	open_param->pic_height = inst->dst_fmt.height;
> +	open_param->frame_rate_info = inst->frame_rate;
> +	open_param->rc_enable = inst->rc_enable;
> +	if (inst->rc_enable) {
> +		open_param->wave_param.initial_rc_qp = -1;
> +		open_param->wave_param.rc_weight_param = 16;
> +		open_param->wave_param.rc_weight_buf = 128;
> +	}
> +	open_param->wave_param.mb_level_rc_enable = input.mb_level_rc_enable;
> +	open_param->wave_param.cu_level_rc_enable = input.cu_level_rc_enable;
> +	open_param->wave_param.hvs_qp_enable = input.hvs_qp_enable;
> +	open_param->bit_rate = inst->bit_rate;
> +	open_param->vbv_buffer_size = inst->vbv_buf_size;
> +	if (inst->rc_mode == 0)
> +		open_param->vbv_buffer_size = 3000;
> +	open_param->wave_param.profile = input.profile;
> +	open_param->wave_param.en_still_picture = input.en_still_picture;
> +	open_param->wave_param.level = input.level;
> +	open_param->wave_param.internal_bit_depth = inst->bit_depth;
> +	open_param->wave_param.intra_qp = input.intra_qp;
> +	open_param->wave_param.min_qp_i = input.min_qp_i;
> +	open_param->wave_param.max_qp_i = input.max_qp_i;
> +	open_param->wave_param.min_qp_p = input.min_qp_p;
> +	open_param->wave_param.max_qp_p = input.max_qp_p;
> +	open_param->wave_param.min_qp_b = input.min_qp_b;
> +	open_param->wave_param.max_qp_b = input.max_qp_b;
> +	open_param->wave_param.disable_deblk = input.disable_deblk;
> +	open_param->wave_param.lf_cross_slice_boundary_enable =
> +		input.lf_cross_slice_boundary_enable;
> +	open_param->wave_param.tc_offset_div2 = input.tc_offset_div2;
> +	open_param->wave_param.beta_offset_div2 = input.beta_offset_div2;
> +	open_param->wave_param.decoding_refresh_type = input.decoding_refresh_type;
> +	open_param->wave_param.intra_period = input.intra_period;
> +	if (inst->std == W_HEVC_ENC) {
> +		if (input.intra_period == 0) {
> +			open_param->wave_param.decoding_refresh_type = DEC_REFRESH_TYPE_IDR;
> +			open_param->wave_param.intra_period = input.avc_idr_period;
> +		}
> +	} else {
> +		open_param->wave_param.avc_idr_period = input.avc_idr_period;
> +	}
> +	open_param->wave_param.entropy_coding_mode = input.entropy_coding_mode;
> +	open_param->wave_param.lossless_enable = input.lossless_enable;
> +	open_param->wave_param.const_intra_pred_flag = input.const_intra_pred_flag;
> +	open_param->wave_param.wpp_enable = input.wpp_enable;
> +	open_param->wave_param.strong_intra_smooth_enable = input.strong_intra_smooth_enable;
> +	open_param->wave_param.max_num_merge = input.max_num_merge;
> +	open_param->wave_param.tmvp_enable = input.tmvp_enable;
> +	open_param->wave_param.transform8x8_enable = input.transform8x8_enable;
> +	open_param->wave_param.chroma_cb_qp_offset = input.chroma_cb_qp_offset;
> +	open_param->wave_param.chroma_cr_qp_offset = input.chroma_cr_qp_offset;
> +	open_param->wave_param.independ_slice_mode = input.independ_slice_mode;
> +	open_param->wave_param.independ_slice_mode_arg = input.independ_slice_mode_arg;
> +	open_param->wave_param.avc_slice_mode = input.avc_slice_mode;
> +	open_param->wave_param.avc_slice_arg = input.avc_slice_arg;
> +	open_param->wave_param.intra_mb_refresh_mode = input.intra_mb_refresh_mode;
> +	if (input.intra_mb_refresh_mode != REFRESH_MB_MODE_NONE) {
> +		if (num_mb_row >= input.intra_mb_refresh_arg)
> +			open_param->wave_param.intra_mb_refresh_arg =
> +				num_mb_row / input.intra_mb_refresh_arg;
> +		else
> +			open_param->wave_param.intra_mb_refresh_arg = num_mb_row;
> +	}
> +	open_param->wave_param.intra_refresh_mode = input.intra_refresh_mode;
> +	if (input.intra_refresh_mode != 0) {
> +		if (num_ctu_row >= input.intra_refresh_arg)
> +			open_param->wave_param.intra_refresh_arg =
> +				num_ctu_row / input.intra_refresh_arg;
> +		else
> +			open_param->wave_param.intra_refresh_arg = num_ctu_row;
> +	}
> +}
> +
> +static int initialize_sequence(struct vpu_instance *inst)
> +{
> +	struct enc_initial_info initial_info;
> +	struct v4l2_ctrl *ctrl;
> +	int ret;
> +
> +	ret = wave5_vpu_enc_issue_seq_init(inst);
> +	if (ret) {
> +		dev_err(inst->dev->dev, "%s: wave5_vpu_enc_issue_seq_init, fail: %d\n",
> +			__func__, ret);
> +		return ret;
> +	}
> +
> +	if (wave5_vpu_wait_interrupt(inst, VPU_ENC_TIMEOUT) < 0) {
> +		dev_err(inst->dev->dev, "%s: wave5_vpu_wait_interrupt failed\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	ret = wave5_vpu_enc_complete_seq_init(inst, &initial_info);
> +	if (ret)
> +		return ret;
> +
> +	dev_dbg(inst->dev->dev, "%s: min_frame_buffer: %u | min_source_buffer: %u\n",
> +		__func__, initial_info.min_frame_buffer_count,
> +		initial_info.min_src_frame_count);
> +	inst->min_src_buf_count = initial_info.min_src_frame_count +
> +				  COMMAND_QUEUE_DEPTH;
> +
> +	ctrl = v4l2_ctrl_find(&inst->v4l2_ctrl_hdl,
> +			      V4L2_CID_MIN_BUFFERS_FOR_OUTPUT);
> +	if (ctrl)
> +		v4l2_ctrl_s_ctrl(ctrl, inst->min_src_buf_count);
> +
> +	inst->fbc_buf_count = initial_info.min_frame_buffer_count;
> +	inst->src_buf_count = inst->min_src_buf_count;
> +
> +	return 0;
> +}
> +
> +static int prepare_fb(struct vpu_instance *inst)
> +{
> +	u32 fb_stride = ALIGN(inst->dst_fmt.width, 32);
> +	u32 fb_height = ALIGN(inst->dst_fmt.height, 32);
> +	int i, ret = 0;
> +
> +	for (i = 0; i < inst->fbc_buf_count; i++) {
> +		u32 luma_size = fb_stride * fb_height;
> +		u32 chroma_size = ALIGN(fb_stride / 2, 16) * fb_height;
> +
> +		inst->frame_vbuf[i].size = luma_size + chroma_size;
> +		ret = wave5_vdi_allocate_dma_memory(inst->dev, &inst->frame_vbuf[i]);
> +		if (ret < 0) {
> +			dev_err(inst->dev->dev, "%s: failed to allocate FBC buffer %zu\n",
> +				__func__, inst->frame_vbuf[i].size);
> +			goto free_buffers;
> +		}
> +
> +		inst->frame_buf[i].buf_y = inst->frame_vbuf[i].daddr;
> +		inst->frame_buf[i].buf_cb = (dma_addr_t)-1;
> +		inst->frame_buf[i].buf_cr = (dma_addr_t)-1;
> +		inst->frame_buf[i].update_fb_info = true;
> +		inst->frame_buf[i].size = inst->frame_vbuf[i].size;
> +	}
> +
> +	ret = wave5_vpu_enc_register_frame_buffer(inst, inst->fbc_buf_count, fb_stride,
> +						  fb_height, COMPRESSED_FRAME_MAP);
> +	if (ret) {
> +		dev_err(inst->dev->dev,
> +			"%s: wave5_vpu_enc_register_frame_buffer, fail: %d\n",
> +			__func__, ret);
> +		goto free_buffers;
> +	}
> +
> +	return 0;
> +free_buffers:
> +	for (i = 0; i < inst->fbc_buf_count; i++)
> +		wave5_vpu_dec_reset_framebuffer(inst, i);
> +	return ret;
> +}
> +
> +static int wave5_vpu_enc_start_streaming(struct vb2_queue *q, unsigned int count)
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(q);
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	int ret;
> +
> +	v4l2_m2m_update_start_streaming_state(m2m_ctx, q);
> +
> +	if (inst->state == VPU_INST_STATE_NONE && q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
> +		struct enc_open_param open_param;
> +
> +		memset(&open_param, 0, sizeof(struct enc_open_param));
> +
> +		inst->std = wave5_to_vpu_std(inst->dst_fmt.pixelformat, inst->type);
> +		if (inst->std == STD_UNKNOWN) {
> +			dev_warn(inst->dev->dev, "unsupported pixelformat: %.4s\n",
> +				 (char *)&inst->dst_fmt.pixelformat);

This should call buf_done(DEQUEUED) for all buffers in the queue on error.

> +			return -EINVAL;
> +		}
> +
> +		wave5_set_enc_openparam(&open_param, inst);
> +
> +		ret = wave5_vpu_enc_open(inst, &open_param);
> +		if (ret) {
> +			dev_dbg(inst->dev->dev, "%s: wave5_vpu_enc_open, fail: %d\n",
> +				__func__, ret);
> +			return ret;
> +		}
> +
> +		if (inst->mirror_direction) {
> +			wave5_vpu_enc_give_command(inst, ENABLE_MIRRORING, NULL);
> +			wave5_vpu_enc_give_command(inst, SET_MIRROR_DIRECTION,
> +						   &inst->mirror_direction);
> +		}
> +		if (inst->rot_angle) {
> +			wave5_vpu_enc_give_command(inst, ENABLE_ROTATION, NULL);
> +			wave5_vpu_enc_give_command(inst, SET_ROTATION_ANGLE, &inst->rot_angle);
> +		}
> +
> +		switch_state(inst, VPU_INST_STATE_OPEN);
> +	}
> +	if (inst->state == VPU_INST_STATE_OPEN && m2m_ctx->cap_q_ctx.q.streaming) {
> +		ret = initialize_sequence(inst);
> +		if (ret) {
> +			dev_warn(inst->dev->dev, "Sequence not found: %d\n", ret);
> +			return ret;
> +		}
> +		switch_state(inst, VPU_INST_STATE_INIT_SEQ);
> +		/*
> +		 * The sequence must be analyzed first to calculate the proper
> +		 * size of the auxiliary buffers.
> +		 */
> +		ret = prepare_fb(inst);
> +		if (ret) {
> +			dev_warn(inst->dev->dev, "Framebuffer preparation, fail: %d\n", ret);
> +			return ret;
> +		}
> +
> +		switch_state(inst, VPU_INST_STATE_PIC_RUN);
> +	}
> +

The DEQUEUED sequence is done (although not quite correctly) in the decoder's start_streaming,
but not at all here.

> +	return 0;
> +}
> +
> +static void streamoff_output(struct vpu_instance *inst, struct vb2_queue *q)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct vb2_v4l2_buffer *buf;
> +
> +	while ((buf = v4l2_m2m_src_buf_remove(m2m_ctx))) {
> +		dev_dbg(inst->dev->dev, "%s: buf type %4u | index %4u\n",
> +			__func__, buf->vb2_buf.type, buf->vb2_buf.index);
> +		v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);
> +	}
> +}
> +
> +static void streamoff_capture(struct vpu_instance *inst, struct vb2_queue *q)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	struct vb2_v4l2_buffer *buf;
> +
> +	while ((buf = v4l2_m2m_dst_buf_remove(m2m_ctx))) {
> +		dev_dbg(inst->dev->dev, "%s: buf type %4u | index %4u\n",
> +			__func__, buf->vb2_buf.type, buf->vb2_buf.index);
> +		vb2_set_plane_payload(&buf->vb2_buf, 0, 0);
> +		v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);
> +	}
> +
> +	v4l2_m2m_clear_state(m2m_ctx);
> +}
> +
> +static void wave5_vpu_enc_stop_streaming(struct vb2_queue *q)
> +{
> +	struct vpu_instance *inst = vb2_get_drv_priv(q);
> +	bool check_cmd = true;
> +
> +	/*
> +	 * Note that we don't need m2m_ctx->next_buf_last for this driver, so we
> +	 * don't call v4l2_m2m_update_stop_streaming_state().
> +	 */
> +
> +	dev_dbg(inst->dev->dev, "%s: type: %u\n", __func__, q->type);
> +
> +	if (wave5_vpu_both_queues_are_streaming(inst))
> +		switch_state(inst, VPU_INST_STATE_STOP);
> +
> +	while (check_cmd) {
> +		struct queue_status_info q_status;
> +		struct enc_output_info enc_output_info;
> +
> +		wave5_vpu_enc_give_command(inst, ENC_GET_QUEUE_STATUS, &q_status);
> +
> +		if (q_status.report_queue_count == 0)
> +			break;
> +
> +		if (wave5_vpu_wait_interrupt(inst, VPU_ENC_TIMEOUT) < 0)
> +			break;
> +
> +		if (wave5_vpu_enc_get_output_info(inst, &enc_output_info))
> +			dev_dbg(inst->dev->dev, "Getting encoding results from fw, fail\n");
> +	}
> +
> +	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> +		streamoff_output(inst, q);
> +	else
> +		streamoff_capture(inst, q);
> +}
> +
> +static const struct vb2_ops wave5_vpu_enc_vb2_ops = {
> +	.queue_setup = wave5_vpu_enc_queue_setup,
> +	.wait_prepare = vb2_ops_wait_prepare,
> +	.wait_finish = vb2_ops_wait_finish,
> +	.buf_queue = wave5_vpu_enc_buf_queue,
> +	.start_streaming = wave5_vpu_enc_start_streaming,
> +	.stop_streaming = wave5_vpu_enc_stop_streaming,
> +};
> +
> +static void wave5_set_default_format(struct v4l2_pix_format_mplane *src_fmt,
> +				     struct v4l2_pix_format_mplane *dst_fmt)
> +{
> +	unsigned int src_pix_fmt = enc_fmt_list[VPU_FMT_TYPE_RAW][0].v4l2_pix_fmt;
> +	const struct v4l2_format_info *src_fmt_info = v4l2_format_info(src_pix_fmt);
> +
> +	src_fmt->pixelformat = src_pix_fmt;
> +	src_fmt->field = V4L2_FIELD_NONE;
> +	src_fmt->flags = 0;
> +	src_fmt->num_planes = src_fmt_info->mem_planes;
> +	wave5_update_pix_fmt(src_fmt, 416, 240);
> +
> +	dst_fmt->pixelformat = enc_fmt_list[VPU_FMT_TYPE_CODEC][0].v4l2_pix_fmt;
> +	dst_fmt->field = V4L2_FIELD_NONE;
> +	dst_fmt->flags = 0;
> +	dst_fmt->num_planes = 1;
> +	wave5_update_pix_fmt(dst_fmt, 416, 240);
> +}
> +
> +static int wave5_vpu_enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
> +{
> +	return wave5_vpu_queue_init(priv, src_vq, dst_vq, &wave5_vpu_enc_vb2_ops);
> +}
> +
> +static const struct vpu_instance_ops wave5_vpu_enc_inst_ops = {
> +	.finish_process = wave5_vpu_enc_finish_encode,
> +};
> +
> +static void wave5_vpu_enc_device_run(void *priv)
> +{
> +	struct vpu_instance *inst = priv;
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +	u32 fail_res = 0;
> +	int ret = 0;
> +
> +	switch (inst->state) {
> +	case VPU_INST_STATE_PIC_RUN:
> +		ret = start_encode(inst, &fail_res);
> +		if (ret) {
> +			if (ret == -EINVAL)
> +				dev_err(inst->dev->dev,
> +					"Frame encoding on m2m context (%p), fail: %d (res: %d)\n",
> +					m2m_ctx, ret, fail_res);
> +			else if (ret == -EAGAIN)
> +				dev_dbg(inst->dev->dev, "Missing buffers for encode, try again\n");
> +			break;
> +		}
> +		dev_dbg(inst->dev->dev, "%s: leave with active job", __func__);
> +		return;
> +	default:
> +		WARN(1, "Execution of a job in state %s is invalid.\n",
> +		     state_to_str(inst->state));
> +		break;
> +	}
> +	dev_dbg(inst->dev->dev, "%s: leave and finish job", __func__);
> +	v4l2_m2m_job_finish(inst->v4l2_m2m_dev, m2m_ctx);
> +}
> +
> +static int wave5_vpu_enc_job_ready(void *priv)
> +{
> +	struct vpu_instance *inst = priv;
> +	struct v4l2_m2m_ctx *m2m_ctx = inst->v4l2_fh.m2m_ctx;
> +
> +	switch (inst->state) {
> +	case VPU_INST_STATE_NONE:
> +		dev_dbg(inst->dev->dev, "Encoder must be open to start queueing M2M jobs!\n");
> +		return false;
> +	case VPU_INST_STATE_PIC_RUN:
> +		if (m2m_ctx->is_draining || v4l2_m2m_num_src_bufs_ready(m2m_ctx)) {
> +			dev_dbg(inst->dev->dev, "Encoder ready for a job, state: %s\n",
> +				state_to_str(inst->state));
> +			return true;
> +		}
> +		fallthrough;
> +	default:
> +		dev_dbg(inst->dev->dev,
> +			"Encoder not ready for a job, state: %s, %s draining, %d src bufs ready\n",
> +			state_to_str(inst->state), m2m_ctx->is_draining ? "is" : "is not",
> +			v4l2_m2m_num_src_bufs_ready(m2m_ctx));
> +		break;
> +	}
> +	return false;
> +}
> +
> +static const struct v4l2_m2m_ops wave5_vpu_enc_m2m_ops = {
> +	.device_run = wave5_vpu_enc_device_run,
> +	.job_ready = wave5_vpu_enc_job_ready,
> +};
> +
> +static int wave5_vpu_open_enc(struct file *filp)
> +{
> +	struct video_device *vdev = video_devdata(filp);
> +	struct vpu_device *dev = video_drvdata(filp);
> +	struct vpu_instance *inst = NULL;
> +	struct v4l2_ctrl_handler *v4l2_ctrl_hdl;
> +	int ret = 0;
> +
> +	inst = kzalloc(sizeof(*inst), GFP_KERNEL);
> +	if (!inst)
> +		return -ENOMEM;
> +	v4l2_ctrl_hdl = &inst->v4l2_ctrl_hdl;
> +
> +	inst->dev = dev;
> +	inst->type = VPU_INST_TYPE_ENC;
> +	inst->ops = &wave5_vpu_enc_inst_ops;
> +
> +	inst->codec_info = kzalloc(sizeof(*inst->codec_info), GFP_KERNEL);
> +	if (!inst->codec_info)
> +		return -ENOMEM;
> +
> +	v4l2_fh_init(&inst->v4l2_fh, vdev);
> +	filp->private_data = &inst->v4l2_fh;
> +	v4l2_fh_add(&inst->v4l2_fh);
> +
> +	INIT_LIST_HEAD(&inst->list);
> +	list_add_tail(&inst->list, &dev->instances);
> +
> +	inst->v4l2_m2m_dev = inst->dev->v4l2_m2m_enc_dev;
> +	inst->v4l2_fh.m2m_ctx =
> +		v4l2_m2m_ctx_init(inst->v4l2_m2m_dev, inst, wave5_vpu_enc_queue_init);
> +	if (IS_ERR(inst->v4l2_fh.m2m_ctx)) {
> +		ret = PTR_ERR(inst->v4l2_fh.m2m_ctx);
> +		goto cleanup_inst;
> +	}
> +	v4l2_m2m_set_src_buffered(inst->v4l2_fh.m2m_ctx, true);
> +
> +	v4l2_ctrl_handler_init(v4l2_ctrl_hdl, 50);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_HEVC_PROFILE,
> +			       V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10, 0,
> +			       V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_HEVC_LEVEL,
> +			       V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1, 0,
> +			       V4L2_MPEG_VIDEO_HEVC_LEVEL_1);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_MIN_QP,
> +			  0, 63, 1, 8);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_MAX_QP,
> +			  0, 63, 1, 51);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_I_FRAME_QP,
> +			  0, 63, 1, 30);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_HEVC_LOOP_FILTER_MODE,
> +			       V4L2_MPEG_VIDEO_HEVC_LOOP_FILTER_MODE_DISABLED_AT_SLICE_BOUNDARY, 0,
> +			       V4L2_MPEG_VIDEO_HEVC_LOOP_FILTER_MODE_ENABLED);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_LF_BETA_OFFSET_DIV2,
> +			  -6, 6, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_LF_TC_OFFSET_DIV2,
> +			  -6, 6, 1, 0);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_HEVC_REFRESH_TYPE,
> +			       V4L2_MPEG_VIDEO_HEVC_REFRESH_IDR, 0,
> +			       V4L2_MPEG_VIDEO_HEVC_REFRESH_CRA);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_REFRESH_PERIOD,
> +			  0, 2047, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_LOSSLESS_CU,
> +			  0, 1, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_CONST_INTRA_PRED,
> +			  0, 1, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_WAVEFRONT,
> +			  0, 1, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_STRONG_SMOOTHING,
> +			  0, 1, 1, 1);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_MAX_NUM_MERGE_MV_MINUS1,
> +			  1, 2, 1, 2);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_HEVC_TMV_PREDICTION,
> +			  0, 1, 1, 1);
> +
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_H264_PROFILE,
> +			       V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_444_PREDICTIVE, 0,
> +			       V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_H264_LEVEL,
> +			       V4L2_MPEG_VIDEO_H264_LEVEL_5_1, 0,
> +			       V4L2_MPEG_VIDEO_H264_LEVEL_1_0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_MIN_QP,
> +			  0, 63, 1, 8);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_MAX_QP,
> +			  0, 63, 1, 51);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_I_FRAME_QP,
> +			  0, 63, 1, 30);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_MODE,
> +			       V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED_AT_SLICE_BOUNDARY, 0,
> +			       V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_ENABLED);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_ALPHA,
> +			  -6, 6, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_BETA,
> +			  -6, 6, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_8X8_TRANSFORM,
> +			  0, 1, 1, 1);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_CONSTRAINED_INTRA_PREDICTION,
> +			  0, 1, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_CHROMA_QP_INDEX_OFFSET,
> +			  -12, 12, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_H264_I_PERIOD,
> +			  0, 2047, 1, 0);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_H264_ENTROPY_MODE,
> +			       V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC, 0,
> +			       V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CAVLC);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_AU_DELIMITER,
> +			  0, 1, 1, 1);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_HFLIP,
> +			  0, 1, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_VFLIP,
> +			  0, 1, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_ROTATE,
> +			  0, 270, 90, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_VBV_SIZE,
> +			  10, 3000, 1, 1000);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_BITRATE_MODE,
> +			       V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 0,
> +			       V4L2_MPEG_VIDEO_BITRATE_MODE_CBR);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_BITRATE,
> +			  0, 700000000, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_GOP_SIZE,
> +			  0, 2047, 1, 0);
> +	v4l2_ctrl_new_std_menu(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			       V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MODE,
> +			       V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB, 0,
> +			       V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_SINGLE);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_MB,
> +			  0, 0xFFFF, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE,
> +			  0, 1, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE,
> +			  0, 1, 1, 0);
> +	v4l2_ctrl_new_std(v4l2_ctrl_hdl, &wave5_vpu_enc_ctrl_ops,
> +			  V4L2_CID_MIN_BUFFERS_FOR_OUTPUT, 1, 32, 1, 1);
> +
> +	if (v4l2_ctrl_hdl->error) {
> +		ret = -ENODEV;
> +		goto cleanup_inst;
> +	}
> +
> +	inst->v4l2_fh.ctrl_handler = v4l2_ctrl_hdl;
> +	v4l2_ctrl_handler_setup(v4l2_ctrl_hdl);
> +
> +	wave5_set_default_format(&inst->src_fmt, &inst->dst_fmt);
> +	inst->colorspace = V4L2_COLORSPACE_REC709;
> +	inst->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> +	inst->hsv_enc = 0;
> +	inst->quantization = V4L2_QUANTIZATION_DEFAULT;
> +	inst->xfer_func = V4L2_XFER_FUNC_DEFAULT;
> +	inst->frame_rate = 30;
> +
> +	init_completion(&inst->irq_done);
> +	ret = kfifo_alloc(&inst->irq_status, 16 * sizeof(int), GFP_KERNEL);
> +	if (ret) {
> +		dev_err(inst->dev->dev, "Allocating fifo, fail: %d\n", ret);
> +		goto cleanup_inst;
> +	}
> +
> +	inst->id = ida_alloc(&inst->dev->inst_ida, GFP_KERNEL);
> +	if (inst->id < 0) {
> +		dev_warn(inst->dev->dev, "Allocating instance ID, fail: %d\n", inst->id);
> +		ret = inst->id;
> +		goto cleanup_inst;
> +	}
> +
> +	wave5_vdi_allocate_sram(inst->dev);
> +
> +	return 0;
> +
> +cleanup_inst:
> +	wave5_cleanup_instance(inst);
> +	return ret;
> +}
> +
> +static int wave5_vpu_enc_release(struct file *filp)
> +{
> +	return wave5_vpu_release_device(filp, wave5_vpu_enc_close, "encoder");
> +}
> +
> +static const struct v4l2_file_operations wave5_vpu_enc_fops = {
> +	.owner = THIS_MODULE,
> +	.open = wave5_vpu_open_enc,
> +	.release = wave5_vpu_enc_release,
> +	.unlocked_ioctl = video_ioctl2,
> +	.poll = v4l2_m2m_fop_poll,
> +	.mmap = v4l2_m2m_fop_mmap,
> +};
> +
> +int wave5_vpu_enc_register_device(struct vpu_device *dev)
> +{
> +	struct video_device *vdev_enc;
> +	int ret;
> +
> +	vdev_enc = devm_kzalloc(dev->v4l2_dev.dev, sizeof(*vdev_enc), GFP_KERNEL);
> +	if (!vdev_enc)
> +		return -ENOMEM;
> +
> +	dev->v4l2_m2m_enc_dev = v4l2_m2m_init(&wave5_vpu_enc_m2m_ops);
> +	if (IS_ERR(dev->v4l2_m2m_enc_dev)) {
> +		ret = PTR_ERR(dev->v4l2_m2m_enc_dev);
> +		dev_err(dev->dev, "v4l2_m2m_init, fail: %d\n", ret);
> +		return -EINVAL;
> +	}
> +
> +	dev->video_dev_enc = vdev_enc;
> +
> +	strscpy(vdev_enc->name, VPU_ENC_DEV_NAME, sizeof(vdev_enc->name));
> +	vdev_enc->fops = &wave5_vpu_enc_fops;
> +	vdev_enc->ioctl_ops = &wave5_vpu_enc_ioctl_ops;
> +	vdev_enc->release = video_device_release_empty;
> +	vdev_enc->v4l2_dev = &dev->v4l2_dev;
> +	vdev_enc->vfl_dir = VFL_DIR_M2M;
> +	vdev_enc->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;
> +	vdev_enc->lock = &dev->dev_lock;
> +
> +	ret = video_register_device(vdev_enc, VFL_TYPE_VIDEO, -1);
> +	if (ret)
> +		return ret;
> +
> +	video_set_drvdata(vdev_enc, dev);
> +
> +	return 0;
> +}
> +
> +void wave5_vpu_enc_unregister_device(struct vpu_device *dev)
> +{
> +	video_unregister_device(dev->video_dev_enc);
> +	if (dev->v4l2_m2m_enc_dev)
> +		v4l2_m2m_release(dev->v4l2_m2m_enc_dev);
> +}
> diff --git a/drivers/media/platform/chips-media/wave5/wave5-vpu.c b/drivers/media/platform/chips-media/wave5/wave5-vpu.c
> new file mode 100644
> index 000000000000..a13d968f5d04
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/wave5-vpu.c
> @@ -0,0 +1,331 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Wave5 series multi-standard codec IP - platform driver
> + *
> + * Copyright (C) 2021 CHIPS&MEDIA INC
> + */
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/clk.h>
> +#include <linux/firmware.h>
> +#include <linux/interrupt.h>
> +#include "wave5-vpu.h"
> +#include "wave5-regdefine.h"
> +#include "wave5-vpuconfig.h"
> +#include "wave5.h"
> +
> +#define VPU_PLATFORM_DEVICE_NAME "vdec"
> +#define VPU_CLK_NAME "vcodec"
> +
> +#define WAVE5_IS_ENC BIT(0)
> +#define WAVE5_IS_DEC BIT(1)
> +
> +struct wave5_match_data {
> +	int flags;
> +	const char *fw_name;
> +};
> +
> +int wave5_vpu_wait_interrupt(struct vpu_instance *inst, unsigned int timeout)
> +{
> +	int ret;
> +
> +	ret = wait_for_completion_timeout(&inst->irq_done,
> +					  msecs_to_jiffies(timeout));
> +	if (!ret)
> +		return -ETIMEDOUT;
> +
> +	reinit_completion(&inst->irq_done);
> +
> +	return 0;
> +}
> +
> +static void wave5_vpu_get_interrupt_for_inst(struct vpu_instance *inst, u32 status)
> +{
> +	struct vpu_device *dev = inst->dev;
> +	u32 seq_done;
> +	u32 cmd_done;
> +	int val;
> +
> +	seq_done = wave5_vdi_read_register(dev, W5_RET_SEQ_DONE_INSTANCE_INFO);
> +	cmd_done = wave5_vdi_read_register(dev, W5_RET_QUEUE_CMD_DONE_INST);
> +
> +	if (status & BIT(INT_WAVE5_INIT_SEQ)) {
> +		if (seq_done & BIT(inst->id)) {
> +			seq_done &= ~BIT(inst->id);
> +			wave5_vdi_write_register(dev, W5_RET_SEQ_DONE_INSTANCE_INFO, seq_done);
> +			val = BIT(INT_WAVE5_INIT_SEQ);
> +			kfifo_in(&inst->irq_status, &val, sizeof(int));
> +		}
> +	}
> +	if (status & BIT(INT_WAVE5_ENC_SET_PARAM)) {
> +		if (seq_done & BIT(inst->id)) {
> +			seq_done &= ~BIT(inst->id);
> +			wave5_vdi_write_register(dev, W5_RET_SEQ_DONE_INSTANCE_INFO, seq_done);
> +			val = BIT(INT_WAVE5_ENC_SET_PARAM);
> +			kfifo_in(&inst->irq_status, &val, sizeof(int));
> +		}
> +	}
> +	if (status & BIT(INT_WAVE5_DEC_PIC) ||
> +	    status & BIT(INT_WAVE5_ENC_PIC)) {
> +		if (cmd_done & BIT(inst->id)) {
> +			cmd_done &= ~BIT(inst->id);
> +			wave5_vdi_write_register(dev, W5_RET_QUEUE_CMD_DONE_INST, cmd_done);
> +			val = BIT(INT_WAVE5_DEC_PIC);
> +			kfifo_in(&inst->irq_status, &val, sizeof(int));
> +		}
> +	}
> +}
> +
> +static irqreturn_t wave5_vpu_irq(int irq, void *dev_id)
> +{
> +	struct vpu_device *dev = dev_id;
> +
> +	if (wave5_vdi_read_register(dev, W5_VPU_VPU_INT_STS)) {
> +		struct vpu_instance *inst;
> +		u32 irq_status = wave5_vdi_read_register(dev, W5_VPU_VINT_REASON);
> +
> +		list_for_each_entry(inst, &dev->instances, list) {
> +			wave5_vpu_get_interrupt_for_inst(inst, irq_status);
> +		}
> +
> +		wave5_vdi_write_register(dev, W5_VPU_VINT_REASON_CLR, irq_status);
> +		wave5_vdi_write_register(dev, W5_VPU_VINT_CLEAR, 0x1);
> +
> +		return IRQ_WAKE_THREAD;
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t wave5_vpu_irq_thread(int irq, void *dev_id)
> +{
> +	struct vpu_device *dev = dev_id;
> +	struct vpu_instance *inst;
> +	int irq_status, ret;
> +
> +	list_for_each_entry(inst, &dev->instances, list) {
> +		while (kfifo_len(&inst->irq_status)) {
> +			ret = kfifo_out(&inst->irq_status, &irq_status, sizeof(int));
> +			if (!ret)
> +				break;
> +
> +			if (irq_status == BIT(INT_WAVE5_INIT_SEQ) ||
> +			    irq_status == BIT(INT_WAVE5_ENC_SET_PARAM))
> +				complete(&inst->irq_done);
> +			else /* DEC/ENC_PIC */
> +				inst->ops->finish_process(inst);
> +
> +			wave5_vpu_clear_interrupt(inst, irq_status);
> +		}
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int wave5_vpu_load_firmware(struct device *dev, const char *fw_name,
> +				   u32 *revision)
> +{
> +	const struct firmware *fw;
> +	int ret;
> +	unsigned int product_id;
> +
> +	ret = request_firmware(&fw, fw_name, dev);
> +	if (ret) {
> +		dev_err(dev, "request_firmware, fail: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = wave5_vpu_init_with_bitcode(dev, (u8 *)fw->data, fw->size);
> +	if (ret) {
> +		dev_err(dev, "vpu_init_with_bitcode, fail: %d\n", ret);
> +		goto release_fw;
> +	}
> +	release_firmware(fw);
> +
> +	ret = wave5_vpu_get_version_info(dev, revision, &product_id);
> +	if (ret) {
> +		dev_err(dev, "vpu_get_version_info fail: %d\n", ret);
> +		goto err_without_release;
> +	}
> +
> +	dev_dbg(dev, "%s: enum product_id: %08x, fw revision: %u\n",
> +		__func__, product_id, *revision);
> +
> +	return 0;
> +
> +release_fw:
> +	release_firmware(fw);
> +err_without_release:
> +	return ret;
> +}
> +
> +static int wave5_vpu_probe(struct platform_device *pdev)
> +{
> +	int ret;
> +	struct vpu_device *dev;
> +	const struct wave5_match_data *match_data;
> +	u32 fw_revision;
> +
> +	match_data = device_get_match_data(&pdev->dev);
> +	if (!match_data) {
> +		dev_err(&pdev->dev, "missing device match data\n");
> +		return -EINVAL;
> +	}
> +
> +	/* physical addresses limited to 32 bits */
> +	dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
> +	dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
> +
> +	dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
> +	if (!dev)
> +		return -ENOMEM;
> +
> +	dev->vdb_register = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(dev->vdb_register))
> +		return PTR_ERR(dev->vdb_register);
> +	ida_init(&dev->inst_ida);
> +
> +	mutex_init(&dev->dev_lock);
> +	mutex_init(&dev->hw_lock);
> +	dev_set_drvdata(&pdev->dev, dev);
> +	dev->dev = &pdev->dev;
> +
> +	ret = devm_clk_bulk_get_all(&pdev->dev, &dev->clks);
> +
> +	/* continue without clock, assume externally managed */
> +	if (ret < 0) {
> +		dev_warn(&pdev->dev, "Getting clocks, fail: %d\n", ret);
> +		ret = 0;
> +	}
> +	dev->num_clks = ret;
> +
> +	ret = clk_bulk_prepare_enable(dev->num_clks, dev->clks);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Enabling clocks, fail: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = of_property_read_u32(pdev->dev.of_node, "sram-size",
> +				   &dev->sram_size);
> +	if (ret) {
> +		dev_warn(&pdev->dev, "sram-size not found\n");
> +		dev->sram_size = 0;
> +	}
> +
> +	dev->sram_pool = of_gen_pool_get(pdev->dev.of_node, "sram", 0);
> +	if (!dev->sram_pool)
> +		dev_warn(&pdev->dev, "sram node not found\n");
> +
> +	dev->product_code = wave5_vdi_read_register(dev, VPU_PRODUCT_CODE_REGISTER);
> +	ret = wave5_vdi_init(&pdev->dev);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "wave5_vdi_init, fail: %d\n", ret);
> +		goto err_clk_dis;
> +	}
> +	dev->product = wave5_vpu_get_product_id(dev);
> +
> +	INIT_LIST_HEAD(&dev->instances);
> +	ret = v4l2_device_register(&pdev->dev, &dev->v4l2_dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "v4l2_device_register, fail: %d\n", ret);
> +		goto err_vdi_release;
> +	}
> +
> +	if (match_data->flags & WAVE5_IS_DEC) {
> +		ret = wave5_vpu_dec_register_device(dev);
> +		if (ret) {
> +			dev_err(&pdev->dev, "wave5_vpu_dec_register_device, fail: %d\n", ret);
> +			goto err_v4l2_unregister;
> +		}
> +	}
> +	if (match_data->flags & WAVE5_IS_ENC) {
> +		ret = wave5_vpu_enc_register_device(dev);
> +		if (ret) {
> +			dev_err(&pdev->dev, "wave5_vpu_enc_register_device, fail: %d\n", ret);
> +			goto err_dec_unreg;
> +		}
> +	}
> +
> +	dev->irq = platform_get_irq(pdev, 0);
> +	if (dev->irq < 0) {
> +		dev_err(&pdev->dev, "failed to get irq resource\n");
> +		ret = -ENXIO;
> +		goto err_enc_unreg;
> +	}
> +
> +	ret = devm_request_threaded_irq(&pdev->dev, dev->irq, wave5_vpu_irq,
> +					wave5_vpu_irq_thread, 0, "vpu_irq", dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Register interrupt handler, fail: %d\n", ret);
> +		goto err_enc_unreg;
> +	}
> +
> +	ret = wave5_vpu_load_firmware(&pdev->dev, match_data->fw_name, &fw_revision);
> +	if (ret) {
> +		dev_err(&pdev->dev, "wave5_vpu_load_firmware, fail: %d\n", ret);
> +		goto err_enc_unreg;
> +	}
> +
> +	dev_info(&pdev->dev, "Added wave5 driver with caps: %s %s\n",
> +		 (match_data->flags & WAVE5_IS_ENC) ? "'ENCODE'" : "",
> +		 (match_data->flags & WAVE5_IS_DEC) ? "'DECODE'" : "");
> +	dev_info(&pdev->dev, "Product Code:      0x%x\n", dev->product_code);
> +	dev_info(&pdev->dev, "Firmware Revision: %u\n", fw_revision);
> +	return 0;
> +
> +err_enc_unreg:
> +	if (match_data->flags & WAVE5_IS_ENC)
> +		wave5_vpu_enc_unregister_device(dev);
> +err_dec_unreg:
> +	if (match_data->flags & WAVE5_IS_DEC)
> +		wave5_vpu_dec_unregister_device(dev);
> +err_v4l2_unregister:
> +	v4l2_device_unregister(&dev->v4l2_dev);
> +err_vdi_release:
> +	wave5_vdi_release(&pdev->dev);
> +err_clk_dis:
> +	clk_bulk_disable_unprepare(dev->num_clks, dev->clks);
> +
> +	return ret;
> +}
> +
> +static int wave5_vpu_remove(struct platform_device *pdev)
> +{
> +	struct vpu_device *dev = dev_get_drvdata(&pdev->dev);
> +
> +	mutex_destroy(&dev->dev_lock);
> +	mutex_destroy(&dev->hw_lock);
> +	clk_bulk_disable_unprepare(dev->num_clks, dev->clks);
> +	wave5_vpu_enc_unregister_device(dev);
> +	wave5_vpu_dec_unregister_device(dev);
> +	v4l2_device_unregister(&dev->v4l2_dev);
> +	wave5_vdi_release(&pdev->dev);
> +	ida_destroy(&dev->inst_ida);
> +
> +	return 0;
> +}
> +
> +static const struct wave5_match_data wave521c_data = {
> +	.flags = WAVE5_IS_ENC | WAVE5_IS_DEC,
> +	.fw_name = "cnm/wave521c_k3_codec_fw.bin",
> +};
> +
> +static const struct of_device_id wave5_dt_ids[] = {
> +	{ .compatible = "cnm,cm521c-vpu", .data = &wave521c_data },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, wave5_dt_ids);
> +
> +static struct platform_driver wave5_vpu_driver = {
> +	.driver = {
> +		.name = VPU_PLATFORM_DEVICE_NAME,
> +		.of_match_table = of_match_ptr(wave5_dt_ids),
> +		},
> +	.probe = wave5_vpu_probe,
> +	.remove = wave5_vpu_remove,
> +};
> +
> +module_platform_driver(wave5_vpu_driver);
> +MODULE_DESCRIPTION("chips&media VPU V4L2 driver");
> +MODULE_LICENSE("Dual BSD/GPL");
> diff --git a/drivers/media/platform/chips-media/wave5/wave5-vpu.h b/drivers/media/platform/chips-media/wave5/wave5-vpu.h
> new file mode 100644
> index 000000000000..f4117c079027
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/wave5-vpu.h
> @@ -0,0 +1,83 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
> +/*
> + * Wave5 series multi-standard codec IP - basic types
> + *
> + * Copyright (C) 2021 CHIPS&MEDIA INC
> + */
> +#ifndef __VPU_DRV_H__
> +#define __VPU_DRV_H__
> +
> +#include <media/v4l2-ctrls.h>
> +#include <media/v4l2-ioctl.h>
> +#include <media/v4l2-event.h>
> +#include <media/v4l2-fh.h>
> +#include <media/videobuf2-v4l2.h>
> +#include <media/videobuf2-dma-contig.h>
> +#include <media/videobuf2-vmalloc.h>
> +#include "wave5-vpuconfig.h"
> +#include "wave5-vpuapi.h"
> +
> +#define VPU_BUF_SYNC_TO_DEVICE 0
> +#define VPU_BUF_SYNC_FROM_DEVICE 1
> +
> +struct vpu_src_buffer {
> +	struct v4l2_m2m_buffer	v4l2_m2m_buf;
> +	struct list_head	list;
> +	bool			consumed;
> +};
> +
> +struct vpu_dst_buffer {
> +	struct v4l2_m2m_buffer v4l2_m2m_buf;
> +	bool                   display;
> +};
> +
> +enum vpu_fmt_type {
> +	VPU_FMT_TYPE_CODEC = 0,
> +	VPU_FMT_TYPE_RAW   = 1
> +};
> +
> +struct vpu_format {
> +	unsigned int v4l2_pix_fmt;
> +	unsigned int max_width;
> +	unsigned int min_width;
> +	unsigned int max_height;
> +	unsigned int min_height;
> +};
> +
> +static inline struct vpu_instance *wave5_to_vpu_inst(struct v4l2_fh *vfh)
> +{
> +	return container_of(vfh, struct vpu_instance, v4l2_fh);
> +}
> +
> +static inline struct vpu_instance *wave5_ctrl_to_vpu_inst(struct v4l2_ctrl *vctrl)
> +{
> +	return container_of(vctrl->handler, struct vpu_instance, v4l2_ctrl_hdl);
> +}
> +
> +static inline struct vpu_src_buffer *wave5_to_vpu_src_buf(struct vb2_v4l2_buffer *vbuf)
> +{
> +	return container_of(vbuf, struct vpu_src_buffer, v4l2_m2m_buf.vb);
> +}
> +
> +static inline struct vpu_dst_buffer *wave5_to_vpu_dst_buf(struct vb2_v4l2_buffer *vbuf)
> +{
> +	return container_of(vbuf, struct vpu_dst_buffer, v4l2_m2m_buf.vb);
> +}
> +
> +int wave5_vpu_wait_interrupt(struct vpu_instance *inst, unsigned int timeout);
> +
> +int  wave5_vpu_dec_register_device(struct vpu_device *dev);
> +void wave5_vpu_dec_unregister_device(struct vpu_device *dev);
> +int  wave5_vpu_enc_register_device(struct vpu_device *dev);
> +void wave5_vpu_enc_unregister_device(struct vpu_device *dev);
> +static inline bool wave5_vpu_both_queues_are_streaming(struct vpu_instance *inst)
> +{
> +	struct vb2_queue *vq_cap =
> +		v4l2_m2m_get_vq(inst->v4l2_fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
> +	struct vb2_queue *vq_out =
> +		v4l2_m2m_get_vq(inst->v4l2_fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
> +
> +	return vb2_is_streaming(vq_cap) && vb2_is_streaming(vq_out);
> +}
> +
> +#endif
> 

Regards,

	Hans

