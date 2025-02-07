Return-Path: <devicetree+bounces-143958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB88A2C514
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:21:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AC2E3A60F0
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDC522069A;
	Fri,  7 Feb 2025 14:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nEnpBHFl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3782F1DED70
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738938048; cv=none; b=p8nJefhsiPm4a6dVASZ92Z6nraW8yhV+HeSkL1n70wRDOkuHqicslYs0s60+9f/6oXj7cLylpS/iqFsxYJ6Mc4AK9McKhhDvixywkpKTayFnkH0SEIPZb5eNT4keYIF6DKYgGXugTfo+WK3WfP7Hkbs3cHb/SMt0VJRbp8DOLuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738938048; c=relaxed/simple;
	bh=2hFDK54et7ZFuVssh1DAcLqX8oIrwGEhNAWI1S2MV6A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MNz8kmOCGXfS4vYZNHDlatsbczJ5kzCTnra+JxWOm9hHKe/guWzMkACYVfF86m3Y16JGsPuRAGb+eOw2imckd4ou2WOQJV5/L3ibXdX2oHvGNHGtxpt25sau8w+05JwKbP0ISNsIphVgEwbIM8j4WOAL10C1yhhKjJhWJ1Qx74s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nEnpBHFl; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-38db570a639so1222327f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 06:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738938044; x=1739542844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nc124+i3gOWUcLL+MRlZMX010tcJdonEHZUPHfaiwDo=;
        b=nEnpBHFly5g1z9DHUHtZnRd/+OG+1eybMK/qrkNeSge6mufdzFkyczj2jCzxBiLKgq
         kthzR5vPK46J8ykdV/Oq2wT9u08HVVhOfgyFO8/BFReJzBMnuwXd+u2NBQanRaSI4Y6m
         Y9v483hN2zT0whLnZbvLUm7M3777Su7rWGQCN1Fs4D6E8tkiOWFVu0KS54P5Qyd/6BZI
         tWzqI6j3FlOifdWqEnls62BOuti4+tBqDagz2dFxGXyAPtRhKHJfJ2bKkrD6LJ/QLR5B
         7KI+mtFwOwKOVD65CKtSk9WV1qNYlfQHzvjbKZu4hHc9ko/RUBuIjRaI1qrRagxQP7Kw
         LPEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738938044; x=1739542844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nc124+i3gOWUcLL+MRlZMX010tcJdonEHZUPHfaiwDo=;
        b=YNFMfBtT4AcDzLR180zVgMSQWKM8/l4Llq1uEWx6On0tp9q/7WEMMxBH4kLOZyTVy0
         IXE5usFo5Aj6ycENTw4YuYR5H1QIzHu+pRKKGZz4GJLmhjrV8wAPw0eoknP6FC3Se8am
         ogmWTbkgvwm9zGbFhYnFIpLkvv8zx/+ALAMjUaHydBLVmrHJUFiJCR2GUO/H8mx+2mAe
         iW7rBVQYoyF+sex7dVA1FJLR7ul4247kuPCR3eK0fF/79T8x48MCBrtqKef+NOshiOmX
         +oi7rQtTDD5zRPpXMjrDY3xNt+ExjWz4LM5VkMXEneFD0hS/M6oevHgs2+tHiHncHtIp
         LSrA==
X-Forwarded-Encrypted: i=1; AJvYcCUl5t3YppP3XgxlTOXxno6LDhL3bqaP2UHa/U4BTcCWLEQ7Y8J4N/za8SYjpMkxh6x0zjzxeDP8bgZa@vger.kernel.org
X-Gm-Message-State: AOJu0YzbPplrHsOHIq5eftAg+n5zg98uWAN1XxK2kQqpXHLd2JfkLGqq
	04w/fIwMlTCKPqxLl+Uw9uLfHpVdRWeW2P/jxcU87qPHy2dzy5ZcEINECvmNVJg=
X-Gm-Gg: ASbGnctxyfk4Ftu2c+++sM/Ll2O8H6Fd9qLt5E/6Lv4da9I500IG2t7cj/urcwpIXu2
	QWla6U+/ENIsP1fpIvOaooEiuBIuoj13EC4HzraHkVriWCXkaL+Gd4dacevf22BGn2soAgbQC4X
	7GTbxm0yPvRShOsuaSWVMMw74TM0PA9/+VMAdbRezW/rRiWqc3WtW3NV9rcwU+tVukWgzHCvFEq
	tFtaN6khGlSlkezqcmW0sOQMFXD8yVHGwvymmQVYVI6lCOUrSwR+KcH76SSatbLVhFoWREWeqjQ
	8Ed3gtpYLDgoLQoVu3PMK8Tp3MK06s2MWAVY0FWXtCuNorOm1F38gWYJX+0rOkU=
X-Google-Smtp-Source: AGHT+IHb8NiDsyLlRIFbUrauOpegRl5HcLPG5P5HG+ThsLlczAtmqh5c1eeSyDNXReTt5f+HIp7+9g==
X-Received: by 2002:a05:6000:154b:b0:38d:c6b8:9fe1 with SMTP id ffacd0b85a97d-38dc9ba7670mr2614925f8f.24.1738938044458;
        Fri, 07 Feb 2025 06:20:44 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8? ([2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc5839877sm3151857f8f.3.2025.02.07.06.20.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 06:20:44 -0800 (PST)
Message-ID: <f2f07151-ecba-4e28-b156-8a85388cd064@baylibre.com>
Date: Fri, 7 Feb 2025 15:20:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 09/34] drm/mediatek: mtk_cec: Switch to register as
 module_platform_driver
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
 <20250113145232.227674-10-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20250113145232.227674-10-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 13/01/2025 15:52, AngeloGioacchino Del Regno wrote:
> In preparation for splitting out the common bits from the HDMI
> driver, change the mtk_cec driver from being registered from the
> HDMI driver itself to be a module_platform_driver of its own.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

