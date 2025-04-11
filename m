Return-Path: <devicetree+bounces-165783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 418C9A856E5
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:45:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 331067A7E26
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 081F02980A8;
	Fri, 11 Apr 2025 08:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="dq7bU5a0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0F328D857
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744361083; cv=none; b=Lzyc4p/ejw4Bglw3JPEYv/DAEj+QrCiQjBSyFpxc4O4IpJ8qxLIywT6Q2zf7jLA0cSd7EAPl1fwrYgQk6zfrqut4kCBrwEYtNVTuuHksfk/pkUzP77+cXGWfqyXga6qzDbsFc5JK+SiRZz3TTYJKEhmPAPgkdVTIwIiHHezpUUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744361083; c=relaxed/simple;
	bh=uQms5T9GBYZwPgvuRXFc7lqMU5m7t7Nv9XiicuMUwDI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gsR5im9RswRUvNJjpKQQbQYhKsMATYJN5asxtlAl0IPoTaTep+TjreI2Y/5BCkFrTX22hgnZy7uxqE6C5tVU0V/2xiLIQf5djIaOEaSQ4PjnWDZhJlAbXflM2v3fFHVHccW42FInLQZZQiQYeLtK/Aeh7XqNkQkAK0zCUN44pzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=dq7bU5a0; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43d0359b1fcso11698645e9.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744361078; x=1744965878; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ym+swB0IGqW3GD8TUu3RUZwOm8qCGuP91NxIKul8xpM=;
        b=dq7bU5a0KSFRSffiEK5ouQV9VLS5yS93sRok4aCUxCu/6rwFfH5ZnradTr163QTDrQ
         Twaw8EKp6vlPa4QOqXH/l8LJPgYhZP8r55aK/MQWlEuF3m1n0SSRPyx5M8Js+dffd2Hw
         J95jZsU8bqDJ10EDZrrzGRqLS0R829vJ6uvVgJXqfj71d26MwGmNO9/oXhL6CjtDU4fE
         OdNP8SqXsVal6GGcXtOTeAJwIlkd60gurg0gOaRCClbAWGf2ByYOYhRV1fomQaSfHxHO
         HS+lVAAWzKW/z/c08zwfhZGIhRfrM+SxYhweuoBXvulTbcHf0rVBcjI7+stlL6pOSweo
         2KDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744361078; x=1744965878;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ym+swB0IGqW3GD8TUu3RUZwOm8qCGuP91NxIKul8xpM=;
        b=apbI3yaQLsEOJYmvKYcOlWx7isqJMc5jpWaN+wHTr1tUtvoVgZynUCPa58LKS/obgV
         PikSPHQYT8SLScFbV4BpQOpRRwjD9VnrWp2tqmma5rBo/WENe9i/ktF6GENJEyNLxjkH
         JAgAlbYhWRGYEN6D2JWvy78zWBELDUmbYmewCcieMzM4QLAoWbdFgmFMZ57l7RM/TlDt
         Jg72QUd4J3121KeXtR9+3lL1p2iZUgu/shrqYwEQjFBfuC3hmxdNN37h03XKR4iZ1rOm
         NziIW1gmm+6RgWdgZctZrjD6sa087gv45vJZN2I+9HGNnQU3T+h1lLD/plN31oUfadb9
         1RQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVft5P8sQ83bMUpu0prMVzYk7OOOYcsDb1qzYl1L3gEQQNyp4dEJDeKBwAeJFn/rxJz73VLeKBVDIjt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx33NWU/CtYuomMaxDTfC7lJqksJz0bH/12NXAqkIMqdn4d7pHr
	OjrwPW/jv9EbcNiffE8/Z2OFLHNWklvG/09XW0+P99fe+tfJbteqdzG+dVItbdg=
X-Gm-Gg: ASbGncudSEp0Run/YJH9wzCeZF8+g3oxdCKSz4uVuscN6nqRJZxufqpYZOckNoNvgPJ
	L/C7DFOPeKI7xPt3k1zC2Pcd0ZLvzalnm/4Ruk37s+44oHETSBkhdZRq2buOm+S09B1OKqJ0Pc8
	ciNm/qnWU/rB240UpV1gWRF3eF34QWTFa2OHynGH0a5dJ6FTPR+cBLbiFj1eT5RHsySGyeM3sKU
	k7ovsi12nU3kWiiZbc5Uq5MEWpG81ODQc4PMuUyRk37xDJQSylwdh5yXR9zzqfqu4NHlH/6hPnJ
	r1cPpa022htgTct4qJChHM1vGwiww6UOasby7Q==
X-Google-Smtp-Source: AGHT+IFKNUhGZrGZqRnXSCGsdpeGUvavp84OjEvM5R0nmvrxT8ATRqB5MuH3sqH0n0cc88cvltPmyw==
X-Received: by 2002:a05:600c:1e0e:b0:439:8490:d1e5 with SMTP id 5b1f17b1804b1-43f2ea2a1a9mr53082445e9.4.1744361078490;
        Fri, 11 Apr 2025 01:44:38 -0700 (PDT)
Received: from [192.168.2.177] ([81.0.8.231])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f206269c8sm82609535e9.16.2025.04.11.01.44.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:44:38 -0700 (PDT)
Message-ID: <25d92af3-5aa4-4090-a60b-fff3bc30fcf4@suse.com>
Date: Fri, 11 Apr 2025 10:44:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] dt-bindings: power: mediatek: Support Dimensity
 1200 MT6893 MTCMOS
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 robh@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, ulf.hansson@linaro.org,
 matthias.bgg@gmail.com, fshao@chromium.org, y.oudjana@protonmail.com,
 wenst@chromium.org, lihongbo22@huawei.com, mandyjh.liu@mediatek.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel@collabora.com
References: <20250410143944.475773-1-angelogioacchino.delregno@collabora.com>
 <20250410143944.475773-2-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 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
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20250410143944.475773-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/04/2025 16:39, AngeloGioacchino Del Regno wrote:
> Add support for the Power Domains (MTCMOS) integrated into the
> MediaTek Dimensity 1200 (MT6893) SoC.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>   .../power/mediatek,power-controller.yaml      |  2 ++
>   .../dt-bindings/power/mediatek,mt6893-power.h | 35 +++++++++++++++++++
>   2 files changed, 37 insertions(+)
>   create mode 100644 include/dt-bindings/power/mediatek,mt6893-power.h
> 
> diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> index 591a080ca3ff..9c7cc632abee 100644
> --- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> @@ -25,6 +25,7 @@ properties:
>       enum:
>         - mediatek,mt6735-power-controller
>         - mediatek,mt6795-power-controller
> +      - mediatek,mt6893-power-controller
>         - mediatek,mt8167-power-controller
>         - mediatek,mt8173-power-controller
>         - mediatek,mt8183-power-controller
> @@ -88,6 +89,7 @@ $defs:
>           description: |
>             Power domain index. Valid values are defined in:
>                 "include/dt-bindings/power/mt6795-power.h" - for MT8167 type power domain.
> +              "include/dt-bindings/power/mediatek,mt6893-power.h" - for MT6893 type power domain.
>                 "include/dt-bindings/power/mt8167-power.h" - for MT8167 type power domain.
>                 "include/dt-bindings/power/mt8173-power.h" - for MT8173 type power domain.
>                 "include/dt-bindings/power/mt8183-power.h" - for MT8183 type power domain.
> diff --git a/include/dt-bindings/power/mediatek,mt6893-power.h b/include/dt-bindings/power/mediatek,mt6893-power.h
> new file mode 100644
> index 000000000000..aeab51bb2ad8
> --- /dev/null
> +++ b/include/dt-bindings/power/mediatek,mt6893-power.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> +/*
> + * Copyright (c) 2025 Collabora Ltd
> + *                    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> + */
> +
> +#ifndef _DT_BINDINGS_POWER_MT6893_POWER_H
> +#define _DT_BINDINGS_POWER_MT6893_POWER_H
> +
> +#define MT6893_POWER_DOMAIN_CONN		0
> +#define MT6893_POWER_DOMAIN_MFG0		1
> +#define MT6893_POWER_DOMAIN_MFG1		2
> +#define MT6893_POWER_DOMAIN_MFG2		3
> +#define MT6893_POWER_DOMAIN_MFG3		4
> +#define MT6893_POWER_DOMAIN_MFG4		5
> +#define MT6893_POWER_DOMAIN_MFG5		6
> +#define MT6893_POWER_DOMAIN_MFG6		7
> +#define MT6893_POWER_DOMAIN_ISP			8
> +#define MT6893_POWER_DOMAIN_ISP2		9
> +#define MT6893_POWER_DOMAIN_IPE			10
> +#define MT6893_POWER_DOMAIN_VDEC0		11
> +#define MT6893_POWER_DOMAIN_VDEC1		12
> +#define MT6893_POWER_DOMAIN_VENC0		13
> +#define MT6893_POWER_DOMAIN_VENC1		14
> +#define MT6893_POWER_DOMAIN_MDP			15
> +#define MT6893_POWER_DOMAIN_DISP		16
> +#define MT6893_POWER_DOMAIN_AUDIO		17
> +#define MT6893_POWER_DOMAIN_ADSP		18
> +#define MT6893_POWER_DOMAIN_CAM			19
> +#define MT6893_POWER_DOMAIN_CAM_RAWA		20
> +#define MT6893_POWER_DOMAIN_CAM_RAWB		21
> +#define MT6893_POWER_DOMAIN_CAM_RAWC		22
> +#define MT6893_POWER_DOMAIN_DP_TX		23
> +
> +#endif /* _DT_BINDINGS_POWER_MT6893_POWER_H */


