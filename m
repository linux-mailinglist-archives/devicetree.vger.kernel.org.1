Return-Path: <devicetree+bounces-114704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB229AC883
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 13:06:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C03EDB23551
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 11:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130051AA7AB;
	Wed, 23 Oct 2024 11:05:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03C0136331;
	Wed, 23 Oct 2024 11:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729681526; cv=none; b=cU/cLnDyrCUv4q78KPwB1ml4wB8RYSHkSjlJDPvCp9jXmXbMaqDFHa56L63AL61D+iO9qMmxzUdydsZY+pKuYquoIXfzEasPGP1g4BmTtouoKNRMsnovZLWPrJRwy78cP93qk+zirwwYgGVgpNyWl+gIVJRJ3OS8ZcZgTwNcZs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729681526; c=relaxed/simple;
	bh=Gu9wCt5diDML4dSHTvel5+L34n6CJDE0LCRMDz8eH6I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d0Gl56OsV4rHrQRVxvRzoObKUbXPdTu1Lop+fXngAlIDLdgYoBtDUCUmgZZxsfsYFY6c6Mu9F+dTI1mkdXUE+olzup9G1EuO69T44TEpGbf0AH9mCqc4Xtz0DQpjXfryRXXNkM9MifUqvRxuwhKNBZ+XqKJ+P4VB4YA6LTbg+uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DF4AC4CEC6;
	Wed, 23 Oct 2024 11:05:22 +0000 (UTC)
Message-ID: <c4350128-a05c-47af-a7e7-2810171cd311@xs4all.nl>
Date: Wed, 23 Oct 2024 13:05:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 15/28] media: iris: implement query_cap, query_ctrl and
 query_menu ioctls
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vedang Nagar <quic_vnagar@quicinc.com>
References: <20241014-qcom-video-iris-v4-v4-0-c5eaa4e9ab9e@quicinc.com>
 <20241014-qcom-video-iris-v4-v4-15-c5eaa4e9ab9e@quicinc.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil@xs4all.nl>
Autocrypt: addr=hverkuil@xs4all.nl; keydata=
 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
In-Reply-To: <20241014-qcom-video-iris-v4-v4-15-c5eaa4e9ab9e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/10/2024 11:07, Dikshita Agarwal wrote:
> From: Vedang Nagar <quic_vnagar@quicinc.com>
> 
> Implement query_cap, query_ctrl and query_menu ioctls
> with necessary hooks.
> 
> Signed-off-by: Vedang Nagar <quic_vnagar@quicinc.com>
> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> ---
>  drivers/media/platform/qcom/iris/iris_vidc.c | 52 ++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_vidc.c b/drivers/media/platform/qcom/iris/iris_vidc.c
> index 93d2be118a81..60ee05b67f86 100644
> --- a/drivers/media/platform/qcom/iris/iris_vidc.c
> +++ b/drivers/media/platform/qcom/iris/iris_vidc.c
> @@ -300,6 +300,55 @@ static int iris_enum_framesizes(struct file *filp, void *fh,
>  	return 0;
>  }
>  
> +static int iris_querycap(struct file *filp, void *fh, struct v4l2_capability *cap)
> +{
> +	strscpy(cap->driver, IRIS_DRV_NAME, sizeof(cap->driver));
> +	strscpy(cap->bus_info, IRIS_BUS_NAME, sizeof(cap->bus_info));

Filled in automatically, just drop this.

> +	memset(cap->reserved, 0, sizeof(cap->reserved));

The core zeroes this already, just drop this.

> +	strscpy(cap->card, "iris_decoder", sizeof(cap->card));
> +
> +	return 0;
> +}
> +
> +static int iris_queryctrl(struct file *filp, void *fh, struct v4l2_queryctrl *q_ctrl)
> +{
> +	struct v4l2_ctrl *ctrl;
> +	struct iris_inst *inst = iris_get_inst(filp, NULL);
> +
> +	ctrl = v4l2_ctrl_find(&inst->ctrl_handler, q_ctrl->id);
> +	if (!ctrl)
> +		return -EINVAL;
> +
> +	q_ctrl->minimum = ctrl->minimum;
> +	q_ctrl->maximum = ctrl->maximum;
> +	q_ctrl->default_value = ctrl->default_value;
> +	q_ctrl->flags = 0;
> +	q_ctrl->step = ctrl->step;
> +
> +	return 0;
> +}

Huh???

> +
> +static int iris_querymenu(struct file *filp, void *fh, struct v4l2_querymenu *qmenu)
> +{
> +	struct iris_inst *inst = iris_get_inst(filp, NULL);
> +	struct v4l2_ctrl *ctrl;
> +
> +	ctrl = v4l2_ctrl_find(&inst->ctrl_handler, qmenu->id);
> +	if (!ctrl)
> +		return -EINVAL;
> +
> +	if (ctrl->type != V4L2_CTRL_TYPE_MENU)
> +		return -EINVAL;
> +
> +	if (qmenu->index < ctrl->minimum || qmenu->index > ctrl->maximum)
> +		return -EINVAL;
> +
> +	if (ctrl->menu_skip_mask & (1 << qmenu->index))
> +		return -EINVAL;
> +
> +	return 0;
> +}

Huh??

> +
>  static int iris_g_selection(struct file *filp, void *fh, struct v4l2_selection *s)
>  {
>  	struct iris_inst *inst = iris_get_inst(filp, NULL);
> @@ -366,6 +415,9 @@ static const struct v4l2_ioctl_ops iris_v4l2_ioctl_ops = {
>  	.vidioc_g_fmt_vid_out_mplane    = iris_g_fmt_vid_mplane,
>  	.vidioc_enum_framesizes         = iris_enum_framesizes,
>  	.vidioc_reqbufs                 = v4l2_m2m_ioctl_reqbufs,
> +	.vidioc_querycap                = iris_querycap,
> +	.vidioc_queryctrl               = iris_queryctrl,
> +	.vidioc_querymenu               = iris_querymenu,

queryctrl/menu are handled by the core if you set ctrl_handler in the v4l2_fh struct.

If you use the control handler, then this should never be used.

>  	.vidioc_g_selection             = iris_g_selection,
>  	.vidioc_subscribe_event         = iris_subscribe_event,
>  	.vidioc_unsubscribe_event       = iris_unsubscribe_event,
> 

Regards,

	Hans

