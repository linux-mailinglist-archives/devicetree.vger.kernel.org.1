Return-Path: <devicetree+bounces-67870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CF58C9FC1
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 17:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0FDE2832EF
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC400136E34;
	Mon, 20 May 2024 15:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QLNUZR8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7340FC01
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 15:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716219267; cv=none; b=IU9HKmYsKU3BEAtP9SS2EKhvlvRXfdbNCVVNt6YVzs5TX2k0deFkT5aMLzqnenQ/Fh+3Fw7pwHNri/D62GZbx75CPXVBWORkD2eawmh0m0wNDPMrKbslgFQjtNVPsfBUJRhiYLCKvq9pIG+NWHPN4VrrZkHQADaH8Zdw5xm+veE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716219267; c=relaxed/simple;
	bh=AAitkJKNtvXY11dYNQ1U+YfqZHudwDIOn4EcmnSRSMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lm1Egz13fmo2h+w9spQTsHU6ygrbFANUMWBtRiphdSFOvSp8nMMBHd9mxshU497HCU3D6MQuqFNTtSQYVkqJvVyzRfTPa8LnUfJ7Yo5X6jV61X5uoA6Wj22jPsoiFHbNYaHwQs+eU7DqdQP2tmJKCxOVM1i2BlbnVMK6IMg74l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QLNUZR8h; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2e73441edf7so2918751fa.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 08:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716219264; x=1716824064; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q2d46BIzaS71fynIkzwWpbI/UQLh+9rw0YHOl7HkTKw=;
        b=QLNUZR8h3OvA4J6vMUuVjn3PNhYnWA/VRvQvaB8JzDQdIBjSHm0O56oPyXrzIjyw+I
         Q6o4ImGkuMUGS3NdGsXg8+l5GlhPnniczl9A9Ihm+bnR+hzqo8sDsJNnWQNZ3T7rrmOz
         z9nRv+pUlbE4b7EQMc1oncN6VFrIocrKimA7G02NnBhhF2tw39JQ53qzv8STMinTyV/v
         y+AEnnPGjpMhJ07YMA61lxTYxok3v31IKuvlMFPzfLJBg4ZIC+P+wavkoalnjnms7HxB
         Bk3+1TxX7gnlWJWF4i7Vp5ZJmPMaX4mjH6hdS+VWFZtogt+fx0rhhiPZBB5b94lg9dTs
         GRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716219264; x=1716824064;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q2d46BIzaS71fynIkzwWpbI/UQLh+9rw0YHOl7HkTKw=;
        b=GNVsVC5mJnasXOgjiHyxhFXbOYwCsyZijhaNdeeNYbUiLBxr7u2v/U4QwiTP1JQmeK
         svJRqtYs25iBlrfZ5WVc3GSnJFQ/SaT5cYPLJlH+iJTJfPCBf+kYnj9cSK4lYL5u6Ep1
         dLqWsN3Q7tsp33JT/nmCR9BRGSEdklqNIM8xR+e5r7DgIfHMBIXf9ImqxyNpDjfSIizy
         OBoN+VZGFWQRvVSnsnf+kIz/MyVBhOO1yVeedbQ6tjHq6iBzte1Qm99KKS0p3nfg/Buz
         IvumFjSLfKWhr3Who5nIprhkaXECu43yHSYgN7MwRmil/vLqlFpDulffUQ2FcfvGbs1O
         qhpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUl/B+oZJXrpwpO5k09tAWlevBec6+/0tAneXW1RwjvS821W1mLGvC3kAUUwxS5PH4iqpCJwX+jxt4YX7fmKTGDsF1zV2HrMacLOg==
X-Gm-Message-State: AOJu0YwLgpalsNM6qglcSA2nvk/hWYvb6A0JMOYJkZWhsuUMZwpXYn5X
	W/Opq4nq4i9Saf6pb/odxYkKX0dcy5+anB8P6Q01x8j1/twtPMogZQ0OS+eeuT8=
X-Google-Smtp-Source: AGHT+IFwdu6YJ9mb/t8HH6MJk6jbYDbj8a+haKLMBrRf9ny2u4juPEFKyoKT/juaePI9RR6Hkf8E8A==
X-Received: by 2002:a2e:a6a6:0:b0:2e2:72a7:8435 with SMTP id 38308e7fff4ca-2e5204b2e7emr164397641fa.45.1716219263883;
        Mon, 20 May 2024 08:34:23 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42003bf579esm374395215e9.43.2024.05.20.08.34.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 08:34:22 -0700 (PDT)
Message-ID: <23609d0b-0908-4acc-9fc7-d74d2c06e80f@baylibre.com>
Date: Mon, 20 May 2024 17:34:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: display: mediatek: Add OF graph
 support for board path
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunkuang.hu@kernel.org
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 matthias.bgg@gmail.com, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 wenst@chromium.org, kernel@collabora.com
References: <20240516081104.83458-1-angelogioacchino.delregno@collabora.com>
 <20240516081104.83458-2-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240516081104.83458-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>

On 16/05/2024 10:11, AngeloGioacchino Del Regno wrote:
> The display IPs in MediaTek SoCs support being interconnected with
> different instances of DDP IPs (for example, merge0 or merge1) and/or
> with different DDP IPs (for example, rdma can be connected with either
> color, dpi, dsi, merge, etc), forming a full Display Data Path that
> ends with an actual display.
> 
> The final display pipeline is effectively board specific, as it does
> depend on the display that is attached to it, and eventually on the
> sensors supported by the board (for example, Adaptive Ambient Light
> would need an Ambient Light Sensor, otherwise it's pointless!), other
> than the output type.
> 
> Add support for OF graphs to most of the MediaTek DDP (display) bindings
> to add flexibility to build custom hardware paths, hence enabling board
> specific configuration of the display pipeline and allowing to finally
> migrate away from using hardcoded paths.
> 
> Reviewed-by: Rob Herring (Arm)<robh@kernel.org>
> Signed-off-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>

-- 
Regards,
Alexandre

