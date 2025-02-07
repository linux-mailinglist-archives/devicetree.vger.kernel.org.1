Return-Path: <devicetree+bounces-143960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67768A2C519
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0976316308D
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12B2A215047;
	Fri,  7 Feb 2025 14:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HB07sA/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4451F4E56
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738938094; cv=none; b=SmXCM3vz8zispc26xc6s49oWQzRSYKkZZUo3SkB1+Z6EHJut4ljYsQplWqG+Vcdrr5gujYn6E7qOereHJy70NNOzS3rE4B0CA506xryQWuh3faAsVJJfjQqZt5OqLw1GXzoTW6vjb5xnI5Cce6ERm1CtpqoFMMCmnqPjzPiotKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738938094; c=relaxed/simple;
	bh=xO7WRefc/IdunpdbpYWaJx6QkiMBM6UHcj5PnDgRQOc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kyvR1ifNiLv/UcOgFhQhvcYG7D3Wvlz3DiSVEkKdz04+eh9WunpGucamr9lvkJsDeJKYEzka7jvHmRn1ANnulCLxx2BS5NF4hBuzoHv385HLmB8XxzaZzvxz8sPjGPQZ3tF15xZrde6fjxPOsPfd0UTjUWw9pdwHTg4J7vAC5bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HB07sA/a; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-436a03197b2so14455765e9.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 06:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738938090; x=1739542890; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NAwcnkM+PzRe51c/ss1O+62EsfQXolXBWlx8ljeQQPE=;
        b=HB07sA/ayWodicb9fwCqzQGYh3O9dyHYj2HYFHbgZTxIfDHyyg5qUnpzIt5fVLymT0
         AaEMPdx3qK0UiEWr1bkdIlIAC767BltHhhrNcB/6Irh43yq/MagL+HHaSOA527t2o8Oh
         uL/HkBNupYmkyatz6hVpKAxZR5+QW72MXuq5oyiQI8chAw93O02xwloaXbT9qx3C553t
         krMuWx0ckRBmDdTcWyF6Xo2Dc3DN5T1igH+4cSvVo+kuRRf4KaKWxt2AliyIyEGEaL7N
         9HYkxYccwV8hTBrkmy9O/EJ1rnvb6jQws3bq8nQu1zH8utWKq6BHRpLSTuOlgfRFGiWS
         LavQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738938090; x=1739542890;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NAwcnkM+PzRe51c/ss1O+62EsfQXolXBWlx8ljeQQPE=;
        b=qrLdcft4YyGq72Nrp2mjn0UYcdU5BNZf1i0ZPk0YshODdl+NHM8FRnjA1X0yTyC6C1
         FKCJhp7kV6RNsXUQpYz01zLhmBFo3a7kiecM/qHswGegHvjG63XMf9ltKm0I/ll9PtzH
         H5auOBUjmxIh50KM4v7nyfqzj2L/MlYj4M7rSMz+OdBvp/go9l4rdNkUtluA6ORhZiMS
         CgtC9epfzEj1uODE9RSp1Xt3bHEzMWI03tg0YpOlIsWdL/DloeqAoKQhakIlV9UGoO+Z
         3lebsuH9NQfUapCGA9ryxnmSb0T0V53hUCLhEQmZdt2rXRT422eJPMKFdScS/rAwu3AR
         wgUA==
X-Forwarded-Encrypted: i=1; AJvYcCUg+YjE0bl6H37UhTy8iN47/FI4R26pwefqqK3xpzKxTxX1R1zho7elQM0hityS0ncfY80F74+957ge@vger.kernel.org
X-Gm-Message-State: AOJu0YxKGDimHuOpawCQZShHpN3bbE7U6bDfqFCHYtkUh+69egEGJvra
	yiBq0sS8C1tXQRTvybOQujkUnHzl6O62rG+GAFr3XKRzoOs3dVFB/7PhWUHudLE=
X-Gm-Gg: ASbGncvIro+qXw2yst2i/5ZJfksvf10Lmxjx9weEbiQdKoIyP2/LjG49xDO9WF5Kmlc
	nC9RjZfhzhbb9pSGXZOGxmiqn8+XOA0Q9xKhVAvfZmgxM9vusVFmVgegJvPd7rSFj/H9RSpOLo6
	57nAGSOdlfkEE8J73+6OwqlnqNqLNJL6gLDS12oUqZdWNlTT6jswkVUPi8OLfhz5PnlLmIKiz+6
	aVdhGTJ47XJjPhKNIAoSkTzxnrVNEjHujv1YcTCQXDvK47aDjNYJYcvX5CSPaEVl47ohLqz8Ms7
	UMJ1asG8Ep3p+D3ENEtNXPr6pRXaKQN4ZXXnVhaM4yN4Mj3n7R/ba+MwUj4oW2M=
X-Google-Smtp-Source: AGHT+IHsAn/5NuVWMfrT0WHyD1iRvhJHcQ1HOD5ajIz8v5VPfyCTgBqaPudj3dtejQe1G4pbiVMvEw==
X-Received: by 2002:a05:600c:1c8c:b0:434:a468:4a57 with SMTP id 5b1f17b1804b1-439249ca925mr25071915e9.26.1738938090624;
        Fri, 07 Feb 2025 06:21:30 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8? ([2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391d5283b2sm58939355e9.0.2025.02.07.06.21.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 06:21:29 -0800 (PST)
Message-ID: <f2e04ad9-c846-40e0-80c4-1b0e443dd14e@baylibre.com>
Date: Fri, 7 Feb 2025 15:21:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/34] drm/mediatek: mtk_hdmi: Convert to
 module_platform_driver macro
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 dmitry.baryshkov@linaro.org, lewis.liao@mediatek.com,
 ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com,
 jason-jh.lin@mediatek.com
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
 <20250113145232.227674-12-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20250113145232.227674-12-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 13/01/2025 15:52, AngeloGioacchino Del Regno wrote:
> Now that all of the mtk_hdmi subdrivers are a platform driver on
> their own it is possible to remove the custom init/exit functions
> in this driver and just use the module_platform_driver() macro.
> 
> While at it, also compress struct of_device_id entries and remove
> stray commas in mtk_hdmi_driver assignments.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

