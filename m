Return-Path: <devicetree+bounces-136978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1F9A07284
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:14:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 458963A8658
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92E121579C;
	Thu,  9 Jan 2025 10:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="clGmPu9x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C7D21577A
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736417686; cv=none; b=asJky1OJEAEjDpwMZgWbwKrkVGxXyfS1GAc2b3EaJx0yf3SCt4ehc/VEGsjyWstH5UCy+JbMGVenWSUiqjPgARbudt/xbkg0XtCHaBz50LbGkB34gK5PSEqGoC5QYhav6VRMh+AKxhtGOUXDibiBGoqeuT8anzFbqAy7q+ni9SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736417686; c=relaxed/simple;
	bh=dF+EoPZyIvFmV/3bHFYtIAN9lFaSCKxYZyivEiR8o4Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SRf4a4ngibXfkaJA0q9WGVkh2FuwLzu/x9LE1qkSWuF/HGrT9qssiNuxm6fwidKiv99yX4cq7Ro7UeweLcZEEXWchrqpixAuRelgEfhkELJyAAY/1bznYyjCGTLid/cJmbmDQdtEq5HhUdz/pbya9OkLKcl5s9MaWshcA7bkKCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=clGmPu9x; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4362bae4d7dso5599145e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736417683; x=1737022483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i651SpluW1MRI3JjFDP6kaKt8+EEESD/wqEDYw6jbG8=;
        b=clGmPu9xJziWnImJYQDboNy/FgP6+s+7FZnHYNskHlSsA6x3CXyYepNjwLtK5Ky3er
         F7iO9kSOuFacmhtFRPh7KNRbRVmmzOL9eacBHzKwJxYnG0QvC0esDEyaFAYrYQqJ0ojP
         pdPM0VqQLdJIZ0T7VZbMIadnZTnxJ7tRKH2LvS0jCfCHB2RtMeGx9piHLdp2bDEweEmW
         2izUzRPHTg+5aOLw6hz07nKRrTCyKBpeqnxbO8kjaG+Z4fdlnANR1Q+9SNKlFugZ5zb/
         zc5YQyDGUSRoNXhcgFX8RZ6VyWGpTC6Nyl3b8nTUud916FK0MwmfA2B5hg0tu1q2DH0+
         RFGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736417683; x=1737022483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i651SpluW1MRI3JjFDP6kaKt8+EEESD/wqEDYw6jbG8=;
        b=B5eWalBrw9HC+pGMc1n8LYg7r3A6UdUXORGyc2U3TJxgo0KoRo+4DZr3y2HumHBPP2
         hN/q0T9qa+1VmlWe3+pUlTDO9eKPGhB9C966zs3xMgIzEYFp++9E9o3RtGdOHaz7z+4J
         nCfQp3BWXBebP7xJhPIFQsuXqj5D6JNWd+UoQRHMYTb6sLurZOsP0fvp1FYk8yzOrztj
         w2ne2HEAmXmJuN+R5dH9Bv6D52vc8d4CCr2uzZziUjmY3cQUpZAo4fugBYPnCUOir0vP
         dwzBTvYhGIU5kdfPnOUTSgdMTsd21fFasPWq1/dWtCCnZ+bdzmkQZn7taDvxWBNmI6+9
         vg6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUBd7WDni9cEKeqSewKA+hjq0Jqj0bQvIs1MtX3quoiu3g3PuIct2QPaBVU5095SCVHyXMOtvNffQ4H@vger.kernel.org
X-Gm-Message-State: AOJu0YyKib8G11sOpXfpBYritcgySCAtMDLcbBvc5zSpul787FyoKhJj
	vr3aO5iqhgImYErrVcvtsrkMtBzJDyWtnNBbTDFcAgDHDwY5Wqu7qZVvCnsdkII=
X-Gm-Gg: ASbGncvKZ3JFjZ7M5LWKyarwAaSWNarCw/99qGL8ZqLS2nz8OkiQygwtYLr+d/eXvXS
	Q5LWVc5TVSkCokkmsamaoT3LZZLthNacuKWjCTebvPlwy5R88pdrqGCrJNuOMfJEhqtWGE2KPYW
	WK5kYoMW+RCZj8sfrjjgZmRvkqAz+SSOAHnSAo3G5mGQrtL81XHe1KHVfo0zWkjNw4zsw8/zK74
	ylK04COdGD0/Au3eCaeJNdWBlrcCdAj/F+ZQWlA5OpCo5QsZfXJl1z8nmp0mm0UMQs/lMU3YXhO
	6ZdunUThfQcQ3DVPa0P8n2Ilzg==
X-Google-Smtp-Source: AGHT+IEXsj3cGfTM3WuiOcTVPO3qnoxJJ8qkHw0f0Dnd2kBWv/CZsMscUjyXI2o0KFisYvaJanIsLA==
X-Received: by 2002:a5d:5f85:0:b0:385:fdc2:1808 with SMTP id ffacd0b85a97d-38a87336ee3mr5496376f8f.40.1736417683201;
        Thu, 09 Jan 2025 02:14:43 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:125:358f:ea05:210e? ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2df3610sm49767285e9.20.2025.01.09.02.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 02:14:42 -0800 (PST)
Message-ID: <35868716-a80a-4cb7-bc59-35ea6263546d@baylibre.com>
Date: Thu, 9 Jan 2025 11:14:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/7] arm64: defconfig: enable display connector support
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
 <20231023-display-support-v5-4-3905f1e4b835@baylibre.com>
 <6df0f935-b7d2-4961-a947-47b328a3758f@kernel.org>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <6df0f935-b7d2-4961-a947-47b328a3758f@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks, fixed for v6


On 09/01/2025 08:53, Krzysztof Kozlowski wrote:
> git grep -i i350-evk - zero results. Please use some recognizable names.
> I have no clue where to even look for it - which vendor.

-- 
Regards,
Alexandre

