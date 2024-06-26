Return-Path: <devicetree+bounces-80199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DD49180EE
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:26:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53FD3B23D4D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0FCE181B80;
	Wed, 26 Jun 2024 12:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="szgq4nuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD24317E911
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 12:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719404762; cv=none; b=fv3b3OKFEbjUcqea2i29A6AYP8vu8cRPQGbOp9N/nvuUWBz/S5bMk9PXHvXD4DutY3uwTHeCK0/po2Hq8LlYwmjtqeB5VljIhOF0z/Pkjxcu6rIt6rBemuvib5pzxJeaFAV/hAv4q3AIpClWNin9Rlav6YRp//eq7Ef7ea49o+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719404762; c=relaxed/simple;
	bh=JC0QDA5ncgu3lzjAjbN4t7wNvjzxIr+tPt3bsoXpsDM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=qlZq0enXQQRMy5K2cvmu1rqYZVmvybvMgUVBWVWIcUIGPF+cExQfL2Mx+b6JFWhvZbyx7AMb4upfl2RC17C1GQTCri9s89pT6bxutUZE7Td4LF6YtS+X6uSDrkmG+4a7ITMij0swzxvGW8VxKoTXVkR/hFYDZh6K3GlQggEOBVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=szgq4nuA; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4249196a361so24907965e9.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 05:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719404759; x=1720009559; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fobPrBfxir7ssftZ7iNjyMP1Za2983l3LWtveC8izJ8=;
        b=szgq4nuA1pVOznEYL/k0dx25ncstIukPSOMpBh0YkV47n2yiOvXho0Ikufw9imDpFM
         2Bv0knK8NqEeh5FWQzCNJAaKbmVr8HDZcIeN19PVrI8Ru8+510YPJjDqFfp2WWbCenTG
         S9FukYq5hYzrsptdBHmnq2QUexferVBaO2CUSMTVSyyQROEqzWEFiR9rxU6i32R5nGCj
         wQKAm96Ay7gvqqCEcMPiUEPuh5I+gNcFDke8CAFBeHIiZtunxLaSuuqT7tSqQbiHj2Kx
         9DP/NMexv4UiGdkf7l9LSXiCOBDcbvflIoVMUcjmNqVSD7cbkWYv/oY1ywQaJPxRjyAW
         Wwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719404759; x=1720009559;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fobPrBfxir7ssftZ7iNjyMP1Za2983l3LWtveC8izJ8=;
        b=IxYzIQE7g5/UDDsVQZZPDWq2Z7LCex5WZLKAa17Zwmspq/yPlGaZJhFt1PSuRS91Cq
         bLeC29EmecUvdYhbEPjy3zx4BVuWKXlNTj2j0RHRL3l0+kVc0aOrLSVavN5xHK51lmD8
         OdJcP5q5mQ5YY/GJMLLHY2YUyJ1zP5gQYV/EAGHSRYTf4Z6OpZlBT1H/RQAxg3xqOXGW
         2xAUVcWghedF7qohWM91jFkXwJz58GJmG3njCa/yE8Si6LcMWoaG60HJjv9dqBFsDrgL
         JJ2TH9ljFYkWhwCyrplI2rYZx5MYFWntXoeaiDfyfWRHVAjb1uEURqvrkZXp5Z3Z7YX7
         2hJA==
X-Forwarded-Encrypted: i=1; AJvYcCVBpHUeQrNzlRxq6U5EMXSwWdyjGRAR3fMS0H3gXthfAZyg8aqaypAmuLoUJPUNHhVRg7Pnzg78n2p9XWYAX4eYxooLeMEC6PnchQ==
X-Gm-Message-State: AOJu0YwTs31Xu0OE6SfVxiIwFdj9pA/aZA0VcEyafzOsv3S1yovpuxGD
	Csz1Co/2cBkRHS8Nc6TXfeBjeW4RxUNb0EekNFnpkVhY0HK8InB2dMGN9UStL2k=
X-Google-Smtp-Source: AGHT+IEto1DLJQeEIPlrwSQLqooZfqyUEPmtJDY9zUBYQrPThRyN6dWE4aV4qDpi+2XCXbeKmzryZA==
X-Received: by 2002:a05:600c:1d23:b0:424:7780:ffc3 with SMTP id 5b1f17b1804b1-4248cc177c7mr67428235e9.5.1719404758894;
        Wed, 26 Jun 2024 05:25:58 -0700 (PDT)
Received: from ?IPV6:2a01:cb1c:fcf:4600:a281:d23c:1a8b:ab6? ([2a01:cb1c:fcf:4600:a281:d23c:1a8b:ab6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c824ef19sm23865285e9.15.2024.06.26.05.25.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 05:25:58 -0700 (PDT)
Message-ID: <a4d33da3-2a2a-48ce-874d-95a5889f2f1f@linaro.org>
Date: Wed, 26 Jun 2024 14:25:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Rename WL-355608-A8
 panel
To: Ryan Walklin <ryan@testtoast.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg
 <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>
References: <20240626112005.248576-1-ryan@testtoast.com>
 <20240626112005.248576-2-ryan@testtoast.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20240626112005.248576-2-ryan@testtoast.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/06/2024 13:17, Ryan Walklin wrote:
> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display from an unknown
> OEM used in a number of handheld gaming devices made by Anbernic.
> Previously committed using the OEM serial without a vendor prefix,
> however the preference is to use the integrating device vendor and name
> where the OEM is unknown.
> 
> Alter the filename and compatible string to reflect the convention.
> 
> Fixes: f08aac40639c ("drm: panel: nv3052c: Add WL-355608-A8 panel")
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>   .../{wl-355608-a8.yaml => anbernic,rg35xx-panel.yaml}     | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>   rename Documentation/devicetree/bindings/display/panel/{wl-355608-a8.yaml => anbernic,rg35xx-panel.yaml} (81%)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-panel.yaml
> similarity index 81%
> rename from Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
> rename to Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-panel.yaml
> index 397c26be9bda5..a7d5ad0f29389 100644
> --- a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-panel.yaml
> @@ -1,10 +1,10 @@
>   # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/panel/wl-355608-a8.yaml#
> +$id: http://devicetree.org/schemas/display/panel/anbernic,rg35xx-panel.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
> -title: WL-355608-A8 3.5" (640x480 pixels) 24-bit IPS LCD panel
> +title: Anbernic RG35XX (WL-355608-A8) 3.5" 640x480 24-bit IPS LCD panel
>   
>   maintainers:
>     - Ryan Walklin <ryan@testtoast.com>
> @@ -15,7 +15,7 @@ allOf:
>   
>   properties:
>     compatible:
> -    const: wl-355608-a8
> +    const: anbernic,rg35xx-panel
>   
>     reg:
>       maxItems: 1
> @@ -41,7 +41,7 @@ examples:
>           #size-cells = <0>;
>   
>           panel@0 {
> -            compatible = "wl-355608-a8";
> +            compatible = "anbernic,rg35xx-panel";

Can it be more specific ? because there's a lot of rg35xx defined in bindings:
  anbernic,rg351m
  anbernic,rg351v
  anbernic,rg353p
  anbernic,rg353ps
  anbernic,rg353v
  anbernic,rg353vs
  anbernic,rg35xx-2024
  anbernic,rg35xx-plus
  anbernic,rg35xx-h

Neil

>               reg = <0>;
>   
>               spi-3wire;


