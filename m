Return-Path: <devicetree+bounces-222574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A32DBAAEEA
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 03:58:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D32783B90C9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 01:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C57A1F0E25;
	Tue, 30 Sep 2025 01:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="q8IN8iDb"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B3A1DFE26
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759197492; cv=none; b=Q8G4c5o9jGqRG9Mk0F31sJWaXwgcVnr6tdqj6iz0u/KrvEMb0cXE7f1nKwsCIQI8feH0njAuHnBAA/2Af6XK96A9etx4e7Pk2mM7SGjTQLJzWWpMBZdVENMcABGgIIVc+jR7C7M8xVo/b694o1kugY0eSRjf0smY/UizI7A/ucM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759197492; c=relaxed/simple;
	bh=iNQP3/qNhq3RObpIWmmzHYpVGfhp1n8w/5c13AhIRaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IgjNbLMk/hO0mRQX+dxX5wqSzJARb08EzcHlgwx6K2ktQMAduqdiHI6XHkf3mEIHsi1jlo/fqclkn09LOH19H/ubW6dR+LIaPWxNhPgiuRIK00NKSBq5IVcGXnwuu0GL7JuTw2fMEddebFH+RUO/srxhfWEyrQLBnbxjOaX0wJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=q8IN8iDb; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <d2ab96e7-40f7-4dcb-85f1-dd3024ba7155@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1759197488;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Oswx+yAu7W+VHUXh80D3KG07B2o0dkYKBF4UV0d0w0c=;
	b=q8IN8iDbmbEeHdRqavnOtP60BN4brZ9pcdOjsfI6nymdmYzME8koLPsqi9foZNedrhVqZK
	NjRRgF9+ElYFJtbO1387IH9ybogTTssr1BAcP6a7KdZLEVICDxNRij7yAePUe+D8p4NtFF
	m9cMTXZ11RgI37ujd3p2o3QLah2Jc24=
Date: Tue, 30 Sep 2025 09:57:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [v3,2/2] accel: Add Arm Ethos-U NPU driver
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>,
 Daniel Stone <daniel@fooishbar.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
References: <20250926-ethos-v3-2-6bd24373e4f5@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20250926-ethos-v3-2-6bd24373e4f5@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

Hi,

On 2025/9/27 04:00, Rob Herring (Arm) wrote:


[...]

> +
> +/**
> + * struct ethosu_device - Ethosu device
> + */
> +struct ethosu_device {
> +	/** @base: Base drm_device. */
> +	struct drm_device base;
> +
> +	/** @iomem: CPU mapping of the registers. */
> +	void __iomem *regs;
> +
> +	void __iomem *sram;
> +	struct gen_pool *srampool;
> +	dma_addr_t sramphys;
> +
> +	struct clk *core_clk;
> +	struct clk *apb_clk;
> +
> +	int irq;
> +
> +	bool coherent;
> +


The 'coherent' member is not get used on anywhere.


Best Regards,
Sui

-- 
Best regards,
Sui


