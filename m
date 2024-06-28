Return-Path: <devicetree+bounces-81213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2826291B9CE
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:27:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2AC5280E8B
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFBDF1487C5;
	Fri, 28 Jun 2024 08:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="oHxR7q2x"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14481465BD;
	Fri, 28 Jun 2024 08:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719563226; cv=none; b=q2hv2oq7F5xeRdFn8KrMzeDpnwv5m27cGGfx0Hkmz2CQhFg0IRRrUQpHoTGvjkSTKia+c+WzqHQjDD6DSFzjWdkixiMTXtArMvdtArAlPZFg2ndTThP1a7kIqUtB7qp3tIyoD2+BS6D8jIfzUTDtF55FJfBDjuyrqNuBu1NpFSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719563226; c=relaxed/simple;
	bh=59p4KEMdnS50S6X1eh3nJBtNIR/Z6CqrjzwatLZ7jiA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PntSEU/7+wJs12IuC+abKw7B/ylc+ve2kFzS4f+xmt44/dPD6NC3vi6KLRg8umQCUitz2Y+3azxJTtLGhQ7FeVwpEcNqMqGNBF4XW2PjQvlMEE70epESbHUwjq6J9fFu9KfL1nD7/e69JVjsE671iIfFh91gfBb/dZXqmpssSaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=oHxR7q2x; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [192.168.88.20] (91-158-144-210.elisa-laajakaista.fi [91.158.144.210])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BF31B674;
	Fri, 28 Jun 2024 10:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1719563198;
	bh=59p4KEMdnS50S6X1eh3nJBtNIR/Z6CqrjzwatLZ7jiA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oHxR7q2xVnETgRsAdULCEbEFvwtdNF834kYPMFKjqFBR/HVKRNVpSRocXUODuaPBm
	 phlk0Hejaj3P16G0hBGThOLf8SPDM6cyi2a97UhSqdKId77qIuaK+tyPtNZg4CmHXk
	 elZ78v//YCXPcg7ZcjoM8IneaKOJzLhVjeEWNPg8=
Message-ID: <99fda0f2-57e9-4b37-a848-b7781f3b1dd7@ideasonboard.com>
Date: Fri, 28 Jun 2024 11:26:59 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/13] media: cadence,ti: CSI2RX Multistream Support
To: Jai Luthra <j-luthra@ti.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Aradhya Bhatia <a-bhatia1@ti.com>,
 Devarsh Thakkar <devarsht@ti.com>,
 Changhuang Liang <changhuang.liang@starfivetech.com>,
 Jack Zhu <jack.zhu@starfivetech.com>,
 Julien Massot <julien.massot@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Vaishnav Achath
 <vaishnav.a@ti.com>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240627-multistream-v2-0-6ae96c54c1c3@ti.com>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <20240627-multistream-v2-0-6ae96c54c1c3@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jai,

On 27/06/2024 16:09, Jai Luthra wrote:
> This series adds multi-stream support for Cadence CSI2RX and TI CSI2RX
> Shim drivers.
> 
> PATCH 1:	Runtime Power Management for Cadence CSI2RX
> PATCH 2-7:	Support multiple DMA contexts/video nodes in TI CSI2RX
> PATCH 8-9:	Use get_frame_desc to propagate virtual channel information
> 		across Cadence and TI CSI-RX subdevs
> PATCH 10-12:	Use new multi-stream APIs across the drivers to support
> 		multiplexed cameras from sources like UB960 (FPDLink)
> PATCH 13:	Optimize stream on by submitting all queued buffers to DMA
> 
> This applies on top of today's linux-next (next-20240626)
> (also tested rebase with media_stage.git master)
> 
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> ---
> Changes in v2:
> 
> - Change the multi-camera capture architecture to be similar to that of
>    Tomi's RPi5 FE series, where the driver will wait for userspace to
>    start streaming on all "actively routed" video nodes before starting
>    streaming on the source. This simplifies things a lot from the HW
>    perspective, which might run into deadlocks due to a shared FIFO
>    between multiple DMA channels.
> 
> - Drop a few fixes that were posted separately and are already merged
> - Fix dtschema warnings reported by Rob on [02/13]
> - Fix warnings for uninitialized `used_vc` variable in cdns-csi2rx.c
> - Return -EBUSY if someone updates routes for j721e-csi2rx subdev while
>    streaming
> - Only allow single-streams to be routed to the source pads (linked to
>    video nodes) of the j721e-csi2rx device
> - Squash the patches marked "SQUASH" in the v1 RFC series
> 
> - Link to RFC (v1):
>    https://lore.kernel.org/r/20240222-multistream-v1-0-1837ed916eeb@ti.com
> 
> ---
> Jai Luthra (8):
>        dt-bindings: media: ti,j721e-csi2rx-shim: Support 32 dma chans
>        media: ti: j721e-csi2rx: separate out device and context
>        media: ti: j721e-csi2rx: add a subdev for the core device
>        media: ti: j721e-csi2rx: add support for processing virtual channels
>        media: cadence: csi2rx: Use new enable stream APIs
>        media: cadence: csi2rx: Enable multi-stream support
>        media: ti: j721e-csi2rx: add multistream support
>        media: ti: j721e-csi2rx: Submit all available buffers
> 
> Jayshri Pawar (1):
>        media: cadence: csi2rx: Support runtime PM
> 
> Pratyush Yadav (4):
>        media: ti: j721e-csi2rx: prepare SHIM code for multiple contexts
>        media: ti: j721e-csi2rx: allocate DMA channel based on context index
>        media: ti: j721e-csi2rx: get number of contexts from device tree
>        media: cadence: csi2rx: add get_frame_desc wrapper
> 
>   .../bindings/media/ti,j721e-csi2rx-shim.yaml       |  39 +-
>   drivers/media/platform/cadence/cdns-csi2rx.c       | 440 +++++++++--
>   .../media/platform/ti/j721e-csi2rx/j721e-csi2rx.c  | 879 ++++++++++++++++-----
>   3 files changed, 1071 insertions(+), 287 deletions(-)
> ---
> base-commit: df9574a57d02b265322e77fb8628d4d33641dda9
> change-id: 20240221-multistream-fbba6ffe47a3

You have based this series on top of your private branch. Don't do that. 
Base on top of a kernel tag, or a commonly known tree (linux-media-stage 
for example), and preferably mention the base in the cover letter.

Your private branch contains e.g. dtsos needed for testing. If you have 
such a branch, you should point to it in the cover letter as it's 
valuable for reviewers/testers.

Only base on top of a private branch if your patches compile-time depend 
on something from there, and in that case point to the branch and 
mention this dependency clearly in the cover letter.

  Tomi


