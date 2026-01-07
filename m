Return-Path: <devicetree+bounces-252327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 097B5CFD8A1
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 13:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A04C301F8F5
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 12:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B12E2E8B75;
	Wed,  7 Jan 2026 12:00:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DF1189BB6
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 12:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767787254; cv=none; b=VDkbNZg0dv28gbyW2TURlFdjh9ImTwHlY8CumGV0ndtBKDHvaDMz7qP4rnq/5KRBx5f9a+zklNJ+UvyuwRxGggJ74sFDoDl2Clo6WPZIrfN4ulkKO3akugGfQSQEn26qWg0L4G0igi9XM9xxfyCq4ry4SSHFcuadjsmgjqWdhcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767787254; c=relaxed/simple;
	bh=27rhPW3MP4eU0e2itCVUIx9cr9HNkv4aaM76XmQAuoo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XzHTFIshhRFxwULNicsna7Os3azX7Is8FIt8YAeR6Rp1ub5vXQLK3VxyBzjyyhdCt57p+kz0aJKAAwMr7HZY4zxrKBiNZUpYseLDQs4Yx753aZQGQCZ8rScIBYhKY+kc+n88k+96I48MnH6zlyHHFQ4TQD+3y07MYNK0V6mDatE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vdSDH-0006cS-Jw; Wed, 07 Jan 2026 13:00:31 +0100
Message-ID: <0dbdad63-df04-4220-96b6-b6af7e6e5a5f@pengutronix.de>
Date: Wed, 7 Jan 2026 13:00:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/22] media: rockchip: rga: prepare cmdbuf on streamon
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
 <20251203-spu-rga3-v2-10-989a67947f71@pengutronix.de>
 <8c3a3299036dd1bab158bdcd589abd027d2864b6.camel@ndufresne.ca>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <8c3a3299036dd1bab158bdcd589abd027d2864b6.camel@ndufresne.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi,

On 12/24/25 4:29 PM, Nicolas Dufresne wrote:
> Hi,
>
> Le mercredi 03 décembre 2025 à 16:52 +0100, Sven Püschel a écrit :
>> Prepare the command buffer on streamon to reuse it's contents instead of
>> completely writing it for every frame. Due to the stream settings being
>> fixed after a streamon we only need to replace the source and destination
>> addresses for each frame. This reduces the amount of CPU and memory
>> operations done in each frame.
> My speculation is that flushing to device is usually more expensive then this,

Yeah, it was an idea to maybe get a bit more performance. I didn't see a 
performance improvement after implementing it.

But I thought that it could be beneficial when the CPU is fully loaded 
(instead of my small test with an idle CPU). Therefore I've left it in.

Sincerely
     Sven

> but I didn't check closely if you have enabled the caches. That being said, this
> is good change. It highlight the inflexible nature of V4L2 imho, which in this
> case can be used to optimize.
>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
>
>> Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
>> ---
>>   drivers/media/platform/rockchip/rga/rga-hw.c | 13 +++++++++----
>>   drivers/media/platform/rockchip/rga/rga.c    | 13 ++++++++++++-
>>   drivers/media/platform/rockchip/rga/rga.h    |  1 +
>>   3 files changed, 22 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
>> index 56a2558539bfb..8cdfe089fd636 100644
>> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
>> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
>> @@ -408,8 +408,6 @@ static void rga_cmd_set(struct rga_ctx *ctx,
>>   {
>>   	struct rockchip_rga *rga = ctx->rga;
>>   
>> -	memset(ctx->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);
>> -
>>   	rga_cmd_set_src_addr(ctx, src->dma_desc_pa);
>>   	/*
>>   	 * Due to hardware bug,
>> @@ -418,11 +416,9 @@ static void rga_cmd_set(struct rga_ctx *ctx,
>>   	rga_cmd_set_src1_addr(ctx, dst->dma_desc_pa);
>>   
>>   	rga_cmd_set_dst_addr(ctx, dst->dma_desc_pa);
>> -	rga_cmd_set_mode(ctx);
>>   
>>   	rga_cmd_set_src_info(ctx, &src->offset);
>>   	rga_cmd_set_dst_info(ctx, &dst->offset);
>> -	rga_cmd_set_trans_info(ctx);
>>   
>>   	rga_write(rga, RGA_CMD_BASE, ctx->cmdbuf_phy);
>>   
>> @@ -431,6 +427,14 @@ static void rga_cmd_set(struct rga_ctx *ctx,
>>   				   PAGE_SIZE, DMA_BIDIRECTIONAL);
>>   }
>>   
>> +static void rga_hw_setup_cmdbuf(struct rga_ctx *ctx)
>> +{
>> +	memset(ctx->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);
>> +
>> +	rga_cmd_set_mode(ctx);
>> +	rga_cmd_set_trans_info(ctx);
>> +}
>> +
>>   static void rga_hw_start(struct rockchip_rga *rga,
>>   			 struct rga_vb_buffer *src,  struct rga_vb_buffer *dst)
>>   {
>> @@ -622,6 +626,7 @@ const struct rga_hw rga2_hw = {
>>   	.max_height = MAX_HEIGHT,
>>   	.stride_alignment = 4,
>>   
>> +	.setup_cmdbuf = rga_hw_setup_cmdbuf,
>>   	.start = rga_hw_start,
>>   	.handle_irq = rga_handle_irq,
>>   	.get_version = rga_get_version,
>> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
>> index 592c977a07cf3..f02ae02de26ca 100644
>> --- a/drivers/media/platform/rockchip/rga/rga.c
>> +++ b/drivers/media/platform/rockchip/rga/rga.c
>> @@ -523,6 +523,17 @@ static int vidioc_s_selection(struct file *file, void *priv,
>>   	return ret;
>>   }
>>   
>> +static int vidioc_streamon(struct file *file, void *priv,
>> +			   enum v4l2_buf_type type)
>> +{
>> +	struct rga_ctx *ctx = file_to_rga_ctx(file);
>> +	const struct rga_hw *hw = ctx->rga->hw;
>> +
>> +	hw->setup_cmdbuf(ctx);
>> +
>> +	return v4l2_m2m_streamon(file, ctx->fh.m2m_ctx, type);
>> +}
>> +
>>   static const struct v4l2_ioctl_ops rga_ioctl_ops = {
>>   	.vidioc_querycap = vidioc_querycap,
>>   
>> @@ -547,7 +558,7 @@ static const struct v4l2_ioctl_ops rga_ioctl_ops = {
>>   	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
>>   	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
>>   
>> -	.vidioc_streamon = v4l2_m2m_ioctl_streamon,
>> +	.vidioc_streamon = vidioc_streamon,
>>   	.vidioc_streamoff = v4l2_m2m_ioctl_streamoff,
>>   
>>   	.vidioc_g_selection = vidioc_g_selection,
>> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
>> index 0aef348dddb95..93162b118d069 100644
>> --- a/drivers/media/platform/rockchip/rga/rga.h
>> +++ b/drivers/media/platform/rockchip/rga/rga.h
>> @@ -154,6 +154,7 @@ struct rga_hw {
>>   	u32 max_width, max_height;
>>   	u8 stride_alignment;
>>   
>> +	void (*setup_cmdbuf)(struct rga_ctx *ctx);
>>   	void (*start)(struct rockchip_rga *rga,
>>   		      struct rga_vb_buffer *src, struct rga_vb_buffer *dst);
>>   	bool (*handle_irq)(struct rockchip_rga *rga);

