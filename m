Return-Path: <devicetree+bounces-125227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA759DB417
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 09:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA075163193
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 08:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA9FF14A08E;
	Thu, 28 Nov 2024 08:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="V2IFpiDw"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77F414E2CD
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 08:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732783630; cv=none; b=m0bU0WwfnCfqFU4N3Otk68seeE5A4W6mmCjkdBfCyIwB88M9kJcqM5i2ze/PlMTLSo+vlZIE8PLMHodfNFpsBi9m4I/MeGgGos9KuBKUxeOFxJFDcuEWxoVTNnRPh43rBvEWOmvePiQmOUuZ6DFildZY/dVZZoq0iNPjXk8T+Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732783630; c=relaxed/simple;
	bh=xdqtgM27YWmrgOqei4mkolxnceoYVrdTWJ6Dz51igbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bk88f/BJd6v0GjP/YkgsDLQPn8XEMjlKMGLyNFnkc3UtBTTgyb87praI7LZTjaE9WVf7Lr4pmA+F1ByXBShqfwxCL8wUCKHESYJk3VVJ+XfPImALOVC5jm9zzNWohtvVwM8LrkwbWwqF7aZIg8M71MKQLIkMjJRjHmb78gly0z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=V2IFpiDw; arc=none smtp.client-ip=95.215.58.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <c4334c9b-833b-4923-8188-64d662231512@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1732783624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AOSMhqdqSNHzc6Y2732B2LXEY8wXpjTk/vIt0M1oHnU=;
	b=V2IFpiDweMUXNBus/VrD5t1I//7Gz9UTqTJlX3cSyUym9EIZ+69HJGd1qZQ2sIj+W2Nm9+
	Dx/E2Y/Kd3xnFxV2OpirmhaF2gxkxE+s0nqeEsYREZ8vAdmeRBwj3VllN79322U4BrvE+M
	UVJnEE4qznqqhAaiXBC3PXP2q0oDDK4=
Date: Thu, 28 Nov 2024 16:46:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [v4,09/19] drm/imx: Add i.MX8qxp Display Controller display
 engine
To: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, glx@linutronix.de, vkoul@kernel.org, kishon@kernel.org,
 aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it,
 frank.li@nxp.com, dmitry.baryshkov@linaro.org
References: <20241125093316.2357162-10-victor.liu@nxp.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20241125093316.2357162-10-victor.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

Hi,

On 2024/11/25 17:33, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing
> units that operate in a display clock domain.  Add minimal feature
> support with FrameGen and TCon so that the engine can output display
> timings.  The display engine driver as a master binds FrameGen and
> TCon drivers as components.  While at it, the display engine driver
> is a component to be bound with the upcoming DRM driver.
>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Inline some small functions. (Dmitry)


Why?

Its seems that the switch to regmap APIs is not very necessary,
as ioremap/writel/readl are simple enough and easier to use.

Isn't that this just introduce an intermediate layer? It's okay
for display bridges/panels that behind I2C bus or SPI bus. But
then, why drm/msm still haven't be converted to use the regmap
APIs ?

Just a few questions, has no opinions to your patch.

-- 
Best regards,
Sui


