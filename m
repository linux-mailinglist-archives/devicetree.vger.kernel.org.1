Return-Path: <devicetree+bounces-136979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C26FDA07292
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C639A168282
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B68216394;
	Thu,  9 Jan 2025 10:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tL5PlqWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4373216385
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736417729; cv=none; b=PNGbAHKvmL65MzwrRPttOyBjOpqFlsOUvIr10b1hjUTBkHOj0ggJclSAlFtpGqxJ4/IIkPW+qF0Y1/rMemaH2QDbqrHkvnZdrX2Dl5dx9OdMw+DEZIwMLtN0yXVMCf4IoIJd6hGkzEpPXWbAZXK1AQPoSYWH1sz1evRgLZoJ84M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736417729; c=relaxed/simple;
	bh=RrZ7WzgUyi03KQ5WoFflNpKNDgQbZWrnrWHuXRO2QyM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k9YWvoB7JBd99stXg4s8j6YZmHugVo+p+8ZE3GLzbQLnU374O64Rxa3HmPesboEznLz1pEmRq7gt/uGbw271HeJlHD12qwgevFI+Vj74kfqhwS0nI9Cq35zpcJZOghHvZ0/tNYCQ+0t8NwSzIo+D52quwI9/yvOzFOSGu4cza1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tL5PlqWH; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4361f664af5so9123915e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736417725; x=1737022525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zArLxslrcGh/OtDf8pnaxX4ZYz74YYcQRl2Asrd/XEs=;
        b=tL5PlqWHOqP71j6GuNv+CjULRB3WnSkinIQN0G0gqfQBa0ZKX/3SRKFltWprRB7IAt
         EINmpJ65u7zLbNAqHB6aE9eXX5THFL84gp6/Of2gCtMPpU6Dls1sv9O0Uz+OJ98bKRzn
         mKX5sqLutKvzqIP/h3IYNb1/xQ98BRUkfBcmHBv+S2yKQoDXhzxN/bDhJ/iI8q7x0hed
         AMkjlk4lV2kvSD8mBG3emxr+utLCirAJVZ1kvpUW77GU1MNx+s1tSgUe6vTLoqTyQ9Wx
         ZpWIzYl+yeuf0CFojM5LAmWn0Siql7Ivc3lVtaKbruju6dtYccXlSgtJyX3fDfAgJVJA
         3kxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736417725; x=1737022525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zArLxslrcGh/OtDf8pnaxX4ZYz74YYcQRl2Asrd/XEs=;
        b=H2/J0j4yPP8HmHRyTg04E2qstaGH8gKf/vIAFDRpAdkyEpj/L5rdtSuuYibj5D4ftx
         L5jYuCJSTcmxmL07K06FbIwpfRQxcQgKs2jtGZuCXevVL611cRzFp62oOoc1YYvA87SA
         XzLVgYL+XzBwxz/RuydU0TTOzkuL7XNTHbEANyWI/7jySFTF3E0Z4HMAuuoYRbgfasV2
         2G37u0Dm/3OVwTB7yJWeHjrsgJCPMLcDXTL45AWaNpmqOJ1Vc51NAonDMyWWKWVauTfe
         d9Ji/n5aWlNGHlZdt0ZB7768T37Ey7iG+t6lcyez16V9lMnoaBBn5h4hes5UOLEK99NM
         1X1w==
X-Forwarded-Encrypted: i=1; AJvYcCX/A1A7bEh2/hUi3+ULN7iQCXES3vkxgXwTqRZ9+TQx6f0HRPrMSgkSJ8N/DZWrhAxXI4udQNXuZAF6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9Bn7DVJJWXjh4yvGO8D0BwPTVMsqtffVVpapBeppdzxcwJDuo
	U4S+0n76Aa+jbfESV6JL8by+w48zJ9SSpoQzlUt19gdnrPKXeSGWFcE+ddj2PQQ=
X-Gm-Gg: ASbGncuyd8ZVXhW7502e2hLRFo+GYHp88jZIu6FrSoyObhzBNxTL50n4pciEYkP3PAB
	Ya8df0mIcBf/8T0kEnprFXbH6nisnl0zGT2G6rt/NKMZlI30ZAP0Da4UNVkAQSaVdb0XisEhtIa
	3ibl6RKVCM0nKHQ24hJGGEb9dHEVezQhzVk6sQdQG6TfE74yXG2PLB7XCRwIoACONkUhc2YcdDc
	ttORMdoIRG7bxj1LTqw5BlOuiY7WM7LkdJrS5IOL31Is6Hj3ojX++KtfRDtg69YbUt3cZON/rsD
	S3ibsHPDsjZKkVRZ5WZB4LVg9g==
X-Google-Smtp-Source: AGHT+IE5w//k14IKPlz1xAW4lBSZknnT4+N1Jzl2DExoz1dSucjgBd2oOBz/i2tz+E9s1wYVK89kVw==
X-Received: by 2002:a05:600c:354e:b0:434:f9c4:a850 with SMTP id 5b1f17b1804b1-436e269c42dmr62514755e9.10.1736417725129;
        Thu, 09 Jan 2025 02:15:25 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:125:358f:ea05:210e? ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2dc08bbsm49704145e9.12.2025.01.09.02.15.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 02:15:24 -0800 (PST)
Message-ID: <9afabb6b-2e02-4b7c-8e51-9ca5b9a42aab@baylibre.com>
Date: Thu, 9 Jan 2025 11:15:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] dt-bindings: display: mediatek: dpi: add
 power-domains property
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Fabien Parent <fparent@baylibre.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Simona Vetter <simona.vetter@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 linux-kernel@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 Conor Dooley <conor+dt@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
 <20231023-display-support-v5-1-3905f1e4b835@baylibre.com>
 <173635697547.725897.5297567835361998238.robh@kernel.org>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <173635697547.725897.5297567835361998238.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks, fixed for v6


On 08/01/2025 18:22, Rob Herring (Arm) wrote:
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml:100:3:
>   [error] duplication of key "power-domains" in mapping (key-duplicates)

-- 
Regards,
Alexandre

