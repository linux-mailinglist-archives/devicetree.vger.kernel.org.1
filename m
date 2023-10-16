Return-Path: <devicetree+bounces-8921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E137CA9D9
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED0691C208D1
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4D027EF8;
	Mon, 16 Oct 2023 13:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4090E26E16
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:39:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26E39C433C8;
	Mon, 16 Oct 2023 13:39:45 +0000 (UTC)
Message-ID: <1c6c0c10-8d00-4a52-ae2f-f481c87faf54@xs4all.nl>
Date: Mon, 16 Oct 2023 15:39:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 5/8] media: chips-media: wave5: Add the v4l2 layer
Content-Language: en-US, nl
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nas Chung <nas.chung@chipsnmedia.com>, Fabio Estevam <festevam@gmail.com>,
 linux-media@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-kernel@vger.kernel.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com,
 Robert Beckett <bob.beckett@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Etheridge <detheridge@ti.com>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
 <20230929-wave5_v13_media_master-v13-5-5ac60ccbf2ce@collabora.com>
 <c5e826a2-5bc6-4c49-9a6d-655d26a3b97f@xs4all.nl>
 <20231016133539.m3i5crlsknoidim3@basti-XPS-13-9310>
From: Hans Verkuil <hverkuil@xs4all.nl>
Autocrypt: addr=hverkuil@xs4all.nl; keydata=
 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
In-Reply-To: <20231016133539.m3i5crlsknoidim3@basti-XPS-13-9310>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 16/10/2023 15:35, Sebastian Fricke wrote:
> Hey Hans,
> 
> On 16.10.2023 13:57, Hans Verkuil wrote:
>> Hi Sebastian,
>>
>> On 12/10/2023 13:01, Sebastian Fricke wrote:
>>> Add the decoder and encoder implementing the v4l2
>>> API. This patch also adds the Makefile and the VIDEO_WAVE_VPU config
>>>
>>> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
>>> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
>>> Signed-off-by: Deborah Brouwer <deborah.brouwer@collabora.com>
>>> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>> Signed-off-by: Nas Chung <nas.chung@chipsnmedia.com>
>>> ---
>>>  drivers/media/platform/chips-media/Kconfig         |    1 +
>>>  drivers/media/platform/chips-media/Makefile        |    1 +
>>>  drivers/media/platform/chips-media/wave5/Kconfig   |   12 +
>>>  drivers/media/platform/chips-media/wave5/Makefile  |   10 +
>>>  .../platform/chips-media/wave5/wave5-helper.c      |  213 +++
>>>  .../platform/chips-media/wave5/wave5-helper.h      |   31 +
>>>  .../platform/chips-media/wave5/wave5-vpu-dec.c     | 1953 ++++++++++++++++++++
>>>  .../platform/chips-media/wave5/wave5-vpu-enc.c     | 1794 ++++++++++++++++++
>>>  .../media/platform/chips-media/wave5/wave5-vpu.c   |  291 +++
>>>  .../media/platform/chips-media/wave5/wave5-vpu.h   |   83 +
>>>  .../platform/chips-media/wave5/wave5-vpuapi.h      |    2 -
>>>  11 files changed, 4389 insertions(+), 2 deletions(-)
>>>
>>
>> <snip>
>>
>>> +static int wave5_vpu_dec_create_bufs(struct file *file, void *priv,
>>> +                     struct v4l2_create_buffers *create)
>>> +{
>>> +    struct vpu_instance *inst = wave5_to_vpu_inst(priv);
>>> +    struct v4l2_format *f = &create->format;
>>> +
>>> +    /* Firmware does not support CREATE_BUFS for CAPTURE queues. */
>>> +    if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
>>> +        dev_dbg(inst->dev->dev,
>>> +            "%s: VIDIOC_CREATE_BUFS not supported on CAPTURE queues.\n",
>>> +            __func__);
>>> +        return -EOPNOTSUPP;
>>> +    }
>>> +
>>> +    return v4l2_m2m_ioctl_create_bufs(file, priv, create);
>>> +}
>>
>> Regarding the EOPNOTSUPP discussion: I discussed this some more with
>> Nicolas on irc, and we wonder if it isn't better to just drop create_bufs
>> support for the wave5 decoder altogether. Is there any point in supporting
>> it for OUTPUT but not CAPTURE?
>>
>> <snip>
>>
>>> +static const struct v4l2_ioctl_ops wave5_vpu_dec_ioctl_ops = {
>>> +    .vidioc_querycap = wave5_vpu_dec_querycap,
>>> +    .vidioc_enum_framesizes = wave5_vpu_dec_enum_framesizes,
>>> +
>>> +    .vidioc_enum_fmt_vid_cap    = wave5_vpu_dec_enum_fmt_cap,
>>> +    .vidioc_s_fmt_vid_cap_mplane = wave5_vpu_dec_s_fmt_cap,
>>> +    .vidioc_g_fmt_vid_cap_mplane = wave5_vpu_dec_g_fmt_cap,
>>> +    .vidioc_try_fmt_vid_cap_mplane = wave5_vpu_dec_try_fmt_cap,
>>> +
>>> +    .vidioc_enum_fmt_vid_out    = wave5_vpu_dec_enum_fmt_out,
>>> +    .vidioc_s_fmt_vid_out_mplane = wave5_vpu_dec_s_fmt_out,
>>> +    .vidioc_g_fmt_vid_out_mplane = wave5_vpu_g_fmt_out,
>>> +    .vidioc_try_fmt_vid_out_mplane = wave5_vpu_dec_try_fmt_out,
>>> +
>>> +    .vidioc_g_selection = wave5_vpu_dec_g_selection,
>>> +    .vidioc_s_selection = wave5_vpu_dec_s_selection,
>>> +
>>> +    .vidioc_reqbufs = v4l2_m2m_ioctl_reqbufs,
>>> +    .vidioc_querybuf = v4l2_m2m_ioctl_querybuf,
>>> +    .vidioc_create_bufs = wave5_vpu_dec_create_bufs,
>>
>> So this would just be dropped.
>>
>>> +    .vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
>>> +    .vidioc_qbuf = v4l2_m2m_ioctl_qbuf,
>>> +    .vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
>>> +    .vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
>>> +    .vidioc_streamon = v4l2_m2m_ioctl_streamon,
>>> +    .vidioc_streamoff = v4l2_m2m_ioctl_streamoff,
>>> +
>>> +    .vidioc_try_decoder_cmd = v4l2_m2m_ioctl_try_decoder_cmd,
>>> +    .vidioc_decoder_cmd = wave5_vpu_dec_decoder_cmd,
>>> +
>>> +    .vidioc_subscribe_event = wave5_vpu_subscribe_event,
>>> +    .vidioc_unsubscribe_event = v4l2_event_unsubscribe,
>>> +};
>>
>> This also means there is no need to document the new EOPNOTSUPP error
>> code in VIDIOC_CREATE_BUFS, or to modify v4l2-compliance.
>>
>> You *do* need to add a comment somewhere explaining why you don't
>> support this ioctl. I think it would be best to do that right after
>> '.vidioc_reqbufs = v4l2_m2m_ioctl_reqbufs,'.
> 
> So, besides this issue would you judge the v4l2 layer of the driver to
> be ready? Do you want a reviewed by tag for it or would you take it like
> this as well?

No, it looks good. Please note though that patch 6/8 (dt-bindings) still
needs an Acked/Reviewed-by from the device tree maintainers.

There was a comment on it from Krzysztof.

Regards,

	Hans

> 
>>
>> Regards,
>>
>>     Hans
> 
> Sincerly,
> Sebastian
>> _______________________________________________
>> Kernel mailing list -- kernel@mailman.collabora.com
>> To unsubscribe send an email to kernel-leave@mailman.collabora.com


