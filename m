Return-Path: <devicetree+bounces-254836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 958B4D1D0C8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 923E8300C29F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E974E37C110;
	Wed, 14 Jan 2026 08:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k5GOnlTh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AE536E480
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768378524; cv=none; b=KLc22z4dqHvfTZHYmslUUT+DCR7vQRetj2zbJp4GNMsKjQe5TOk0J0aw8qlhdqaBraUFzQIvUv0xzgSF7WBoWcGRVwEoW7Iw276kYPv3y6KtEoRIDQw1ZTWiWgegJKK/qWO6m9TVZFr4dJFyvPJQaCDFOeihYjPjNJ6hEISdoCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768378524; c=relaxed/simple;
	bh=B9xYh8jnsjGMFTU9eqRcQhFqON+zEIWPZDHlboXNloY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hOt8kWJq1t4eX8ONis9cPQdEM2AZ1XOS93gQ9KvzrGWMCpukgtef/YBxb5MsJ4ex8EYMwbOSYPsmAk4zMWJ9N0+wVgxAkS8daS4KW1tJ1Nx1RemF/LfK9dFm7dJeE5Vc8MjhztBczltSkHN2+s0lutrFBl9C3iHqznqW5siaET4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k5GOnlTh; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47d63594f7eso50292625e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768378520; x=1768983320; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OC/Dw/aj2c+iGoV4mMFgj1KT3b4DGhGfHvAlSHugi9I=;
        b=k5GOnlThmie+7g0zyus8DBg5zIRBe3uKmhcIj2/45y3q3qRkX+xNbRqBh4C1SjBx80
         oO9KpTSS7LbWcU0UxKdwaMebOwsOdPfG8fB8hz1RBB3Cb9Hw85fpRAiECfuTjIPzHXsg
         f1V/5+oGEKF31uXMnexeg4sPGMT7BOrIbDMKg5EbZ7UetObnur85ruALQtcnNupjtnOI
         sqMRs0brjdRDPukKjeKv1SvRvHuVNmZwI6zPa1GkRYpTQb+7QWaHXXautGRAUWDjfHWX
         9TRkTNlKkR21Ys+qQiE9f2szmrkbtd2niJKCNGcIxNTiAV+k5Jn61iqyB2BYpPhMjtto
         4p6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768378520; x=1768983320;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OC/Dw/aj2c+iGoV4mMFgj1KT3b4DGhGfHvAlSHugi9I=;
        b=rRq2onM4sDvECIRIwkmgg1IsoQXi6w4qHOMgG7wmkm66szRtNKpe/5Y5DDA4m7oiCQ
         wP7Z2eRCNhzW1MoAwUCOZt/6JjCJAGC6NG57ZvvvJgtMHdyVhxE4UqKDLfgMhYLlm0Sr
         XfvAuPXESaHstDRIrqfuRyuMtwSfSMrW/zxYZGWY+TjoeMsSEt4Td94BHCGM88a//aWQ
         pO/U4NVAIuGLEYpoqrXZ8I8+hAwCpCEsSofWcmgWNHYyqMqsjpqcEZsZGWgphgGZTBNC
         j0yc2auhv4gmKSGhSNA4t+MeaF6aYRyMWn6UjiyPBhY6Y89FQEqwrMMobQXFft3FlBZO
         fQxA==
X-Forwarded-Encrypted: i=1; AJvYcCVcOHzdPgP3dwSbj/27BhDRYj16+U4TIJl/SYKn7oihIh7Boq1s/ez7iK0FseeZ1Wqj2RJ1sQ13t4OI@vger.kernel.org
X-Gm-Message-State: AOJu0YzxpN8PXphN7bPZ72Z5Y1dXNO10e+JkS7BVE3q2rwOaltNCDmxT
	XxOEKGyoKkkV4qrntoW6y3cN+qAhrz4m5fDUMkuIO+1mTDf86DA0IEWR
X-Gm-Gg: AY/fxX7tPkxRLSPUQ65dCWlhaYemw62I8CmKaf7cx6FvCtTVFt5LFQ+bgjIuNaLj9Dl
	hZz2lRqD7NCl/lR/tsjrhgmqwly6PR6iZUdOTP43KPljxS1hYHMRRH1+SASiKWn43roUkM2sAQ6
	JN3nHpXzdOcdHFLpCYI1w9JKoyy6vxosZaCJaoFeSsgDore3uTJRAlLORC0CqHSlKoAWFaIUgGq
	k7DdnbpC+h1MOiWDQBSBb4tu2POcnIqePiGs18YvyFkvXCVfSvVaverRogPOTco85Ifzjq7Pae9
	7J9KpIMIcRDsdPEg1j5ob8zzkFgOcD8njhzgLNoeGe+ziotDi9OtqvWIK7mepnBHOE5eBijBo9Q
	gRVSGKI4SKmH89+Df2NuC9brlzBWu7EL7T1pPNsdodyTNgspBfGjdUjTwMOlZASEtvAiRcuiKMl
	90ikZ5uWuyoMJkRWv5OfNzCzZT0RbS/Tbt9tmGENmFu1xKHkXFiYGu5MqYX9c/2oRJkVk=
X-Received: by 2002:a05:600c:314e:b0:477:9cdb:e337 with SMTP id 5b1f17b1804b1-47ee47bc03dmr11164035e9.7.1768378519599;
        Wed, 14 Jan 2026 00:15:19 -0800 (PST)
Received: from [192.168.1.27] (84.121.134.198.dyn.user.ono.com. [84.121.134.198])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee563ce5fsm15437185e9.13.2026.01.14.00.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 00:15:18 -0800 (PST)
Message-ID: <46785ec4-d222-4897-8427-82e3d3b1dbca@gmail.com>
Date: Wed, 14 Jan 2026 09:15:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8173-evb: Add interrupts to
 DA9211 regulator
Content-Language: en-GB
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
References: <20260113110026.37032-1-angelogioacchino.delregno@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20260113110026.37032-1-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/1/26 12:00, AngeloGioacchino Del Regno wrote:
> Add the required pinmux and assign the right interrupts-extended
> to the DA9211 regulator (PIO pin 15).
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   arch/arm64/boot/dts/mediatek/mt8173-evb.dts | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
> index 51118a4149d8..1049877e6cda 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
> @@ -117,6 +117,7 @@ &i2c1 {
>   	buck: da9211@68 {
>   		compatible = "dlg,da9211";
>   		reg = <0x68>;
> +		interrupts-extended = <&pio 15 IRQ_TYPE_LEVEL_LOW>;
>   
>   		regulators {
>   			da9211_vcpu_reg: BUCKA {
> @@ -179,6 +180,13 @@ pins1 {
>   		};
>   	};
>   
> +	i2c1_pins_a: i2c1-pins {
> +		pins-da9211 {
> +			pinmux = <MT8173_PIN_15_EINT15__FUNC_GPIO15>;
> +			bias-pull-up;
> +		};
> +	};
> +
>   	mmc0_pins_default: mmc0-default-pins {
>   		pins-cmd-dat {
>   			pinmux = <MT8173_PIN_57_MSDC0_DAT0__FUNC_MSDC0_DAT0>,


