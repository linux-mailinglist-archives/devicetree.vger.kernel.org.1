Return-Path: <devicetree+bounces-139411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DB1A15C2B
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5B0F3A9110
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 09:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BD9B1885BD;
	Sat, 18 Jan 2025 09:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="ndIHUSpH"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A259917C7CA
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 09:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737192523; cv=none; b=VZhGZ4RFJzdvn2llnpqFuArwc0l4I9W/I5QYe0UtKIV8YHCvD+ziaDSu0lQEjt3x2iKgCpHhYlLTMhMyVQ/gFLWxCB5vNPO6WzgDh7dOrv/A+U0fI8D91eAsnb/bZj33fNR8K3Ms36Xr6fjrtBLUezFyoBzRobFv+Swr3mevTeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737192523; c=relaxed/simple;
	bh=P5GI2iZSpqTDBgH8Q/zGDiHzPF423ieipx1C4npwvIc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=izxOqTGKoUMuRRSkFJygJZ3Mq/cp8Y9P8vVJgtUg5Cz1tnJ/7mJqARAEVBOt5w6GaKMCema1V7yKQJ0aypMxGbD0hu6gHbQuAJAcJY5LsclV3nGMdBuNlNST5l5QAKYAADE4MKvw1QCpqtJoZlsTcSIvbyetYRmqzlCuAIfDgqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=ndIHUSpH; arc=none smtp.client-ip=95.215.58.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <eab600f6-bfc2-489c-b384-5b620164a556@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1737192517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eZAGM0NMDbWfCBxoddbD55tPnSUQrLYu0ZHPVeSosg4=;
	b=ndIHUSpHhj+hgSwqg3Kct5pR/qDgawaxVWtv1+mtJzms4AUjh5ndjFYjNqh/OAf8H+8xmB
	cVU14t+EuzYAjEtyPdkCpp5heBvZ1yrsnrB6Nx3K/yvw5pvWm4Ptlhcag3zGi+PSbSP9iF
	o4Mhn2ZfjaY6dSFvBWWXMGFPgXQ583k=
Date: Sat, 18 Jan 2025 14:57:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] drm/tidss: Add support for AM62L display subsystem
To: Devarsh Thakkar <devarsht@ti.com>, jyri.sarha@iki.fi,
 tomi.valkeinen@ideasonboard.com, airlied@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 dri-devel@lists.freedesktop.org, simona@ffwll.ch,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: praneeth@ti.com, vigneshr@ti.com, s-jain1@ti.com, r-donadkar@ti.com,
 j-choudhary@ti.com, h-shenoy@ti.com
References: <20241231090432.3649158-1-devarsht@ti.com>
 <20241231090432.3649158-3-devarsht@ti.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20241231090432.3649158-3-devarsht@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

Hi Devarsh,

Thanks for the patches.

On 31/12/24 14:34, Devarsh Thakkar wrote:
> Enable display for AM62L DSS [1] which supports only a single display
> pipeline using a single overlay manager, single video port and a single
> video lite pipeline which does not support scaling.
> 
> The output of video port is routed to SoC boundary via DPI interface and
> the DPI signals from the video port are also routed to DSI Tx controller
> present within the SoC.
> 
> [1]: Section 11.7 (Display Subsystem and Peripherals)
> Link : https://www.ti.com/lit/pdf/sprujb4
> 
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
>  drivers/gpu/drm/tidss/tidss_dispc.c | 34 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/tidss/tidss_dispc.h |  2 ++
>  drivers/gpu/drm/tidss/tidss_drv.c   |  1 +
>  3 files changed, 37 insertions(+)
> 
> diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
> index cacb5f3d8085..cd322d60b825 100644
> --- a/drivers/gpu/drm/tidss/tidss_dispc.c
> +++ b/drivers/gpu/drm/tidss/tidss_dispc.c
> @@ -376,6 +376,35 @@ const struct dispc_features dispc_am62a7_feats = {
>  	.vid_order = { 1, 0 },
>  };
>  
> +const struct dispc_features dispc_am62l_feats = {
> +	.max_pclk_khz = {
> +		[DISPC_VP_DPI] = 165000,

The TRM mentions that the max the VP PLL can go is 150MHz, so maybe you
might need to update this.

That said, as far as I understand, the IP itself can support 165 MHz,
and I am wondering, what would we do if there comes out a new SoC that
uses AM62L DSS as is, but just bumps up the PLL capacity to 165MHz.

It would be odd to have a ditto feats structure with just the frequency
updated.

> +	},
> +
> +	.subrev = DISPC_AM62L,
> +
> +	.common = "common",
> +	.common_regs = tidss_am65x_common_regs,

Also, I don't think we should utilize this as is.

The AM62L common regions is different, and is, at best, a subset of the
AM65x/AM62x common register space.

For example, registers VID_IRQ{STATUS, ENABLE}_0 have been dropped,
along with VP_IRQ{STATUS, ENABLE}_1.

- Which brings to my next concern...

> +
> +	.num_vps = 1,
> +	.vp_name = { "vp1" },
> +	.ovr_name = { "ovr1" },
> +	.vpclk_name =  { "vp1" },
> +	.vp_bus_type = { DISPC_VP_DPI },
> +
> +	.vp_feat = { .color = {
> +			.has_ctm = true,
> +			.gamma_size = 256,
> +			.gamma_type = TIDSS_GAMMA_8BIT,
> +		},
> +	},
> +
> +	.num_planes = 1,
> +	.vid_name = { "vidl1" },
> +	.vid_lite = { true },
> +	.vid_order = { 0 },

...

Usually, VID1 is the first video pipeline, while VIDL1 remains the
second. Which is why vid1 occupies the index 0, and vidl1 occupies 1 -
even from the hardware perspective.

While AM62L has only one video (lite) pipeline - vidl1, and there is no
vid1, the hardware still treats vidl1 at index 1.

For example, the TRM has defined DISPC_VID_IRQ{STATUS, ENABLE}_1 (and
not _0) in the common region.

So, the vid_order here should be 1, not 0.


Regards
Aradhya


