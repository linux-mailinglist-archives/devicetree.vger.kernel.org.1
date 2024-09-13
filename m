Return-Path: <devicetree+bounces-102626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA620977C0A
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 11:18:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F2881F2752C
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 09:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F5B1D6C6E;
	Fri, 13 Sep 2024 09:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ppjG/DfG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C531317BED3
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 09:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726219099; cv=none; b=cr6cagDruWaDa+664HjfiBywmDZw2mfGdwz+5vzgibg2G8ojZKvqsnptSPcp2uk8mjpDo1fqhZN32BQVTMXhpm7IydvLVeNfYU75zzEsF/BoDaLN2I9qhRrvgH9bmvcoAEk7Gw8StBlkkWqT2kLbcqFkvV5vo8oKiCzHNHBhqm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726219099; c=relaxed/simple;
	bh=LcF+Hsw3T7wNgVazlCAqVo2GimNCrFW20BvWEZ5ejNo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=QiaAt3SoCquxaOqEIQf0/rrggrIJSq6nOz0e1knPLRRQJiCICytFRUTo+6coK6BkER2pLbz8s4BEYGJObX0nQqIIj2P9qit+rEqmhIgcb8A9n4qYvquZyOAiMb7J0vyTg5IIni2Jo0TmZUPql5jqAFABwN4Co6H+5tV4dBY/oeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ppjG/DfG; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3787f30d892so497233f8f.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 02:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726219096; x=1726823896; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g+lCBvfZhk89IxuyRik45Usszh1RJXdqxxur9MDAw60=;
        b=ppjG/DfGR8LgGzBSL+JfyANElTdqZ8HTYXDcVMAob3d1zjQaQvax64Hfxgnp428mMl
         wAZLmObVFG73cvtrldGps7+RgxOCh/KD9FAkR7gjOHh72en4z4EeVVbLkLfJ15+xyi9k
         QAczkqaQPLdPuIDYywhK5Nxhnmj2PZWC5kyLwO+Pg6Z/J87v/6ZzHxfwNLsBZT4IreRA
         QdRfCrhlcUOCUYS8odTP1XVl+eplNM/mq1OpX4ZSIssduN0Q+YFcmMj56X9uMaMX2UMv
         ZY3MNNeWEZQl4Nxhpa5Q0uAlLQdXRRouX4syPGzus8mGbANEji1wsXyl6IxlSeyRWj4M
         BLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726219096; x=1726823896;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g+lCBvfZhk89IxuyRik45Usszh1RJXdqxxur9MDAw60=;
        b=tUjAI4ctj4+IuXwq1liCpJZl/9DHWfZ/Sufa8BMUm1FK6rEdfaElqM2h0ULvaiCfsG
         Ps0/Cel3EujMmNymCQYLeRH9gt8aX+OBCveA5ugGz24r/odyOv6AIcJuL5R4yXw66ahJ
         zgaHGbUaOegfOVlLbZsbHiGHRMnvx2rR772jnURewPQSnmXIOyxNJtIQ8hpBKY9xNcA7
         d6zNK245KZB9eMJY+4CrcnajdbAd1XtiVqau0PlwGfHdMicB4v0/eY4v1xe5xB615rnd
         87c8Gy0UMf40Hod24KFBBlreDuoSBFHRlF4gGXIwlEv5FsP0l2vQ8zETKtbzaFNNoviy
         yNQA==
X-Forwarded-Encrypted: i=1; AJvYcCUqsv6X/uZ9ME2PhN/hO0EDTO26Fi7qBOjXIQLDK3c5OcLHFft2eqz+UDNxjdHGWOb+W99rssgH9lzW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5oGa8LxDuuqMVLXlFCfDs0P1JOzpuz5iQzrgdzrlX3+/Z1hV1
	g3duEUfZaZpOJWRECXtLb43/Qhe/Q45dw4Knd7z1gaZxRJ7oaAd4ldpSio8xtgI=
X-Google-Smtp-Source: AGHT+IFhW2GYxSfgVCqM06/BxMKkLw7o4vA1zm4kWO44iV8QW6/npglLmLNYsCv3nMYyjlfU/pSZFA==
X-Received: by 2002:a5d:49d0:0:b0:365:f52f:cd44 with SMTP id ffacd0b85a97d-378d625a9demr959427f8f.57.1726219095775;
        Fri, 13 Sep 2024 02:18:15 -0700 (PDT)
Received: from [192.168.7.202] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956e8a98sm16352062f8f.117.2024.09.13.02.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 02:18:15 -0700 (PDT)
Message-ID: <813cfef8-6464-4927-be2d-55fef1104416@linaro.org>
Date: Fri, 13 Sep 2024 11:18:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/4] dt-bindings: display: panel-lvds: Add compatible
 for Jenson BL-JT60050-01A
To: Frieder Schrempf <frieder@fris.de>, Conor Dooley <conor+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-kernel@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
 Conor Dooley <conor.dooley@microchip.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
References: <20240828074753.25401-1-frieder@fris.de>
 <20240828074753.25401-3-frieder@fris.de>
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
In-Reply-To: <20240828074753.25401-3-frieder@fris.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 28/08/2024 09:46, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The Jenson BL-JT60050-01A is a 7" 1024x600 LVDS display.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Changes for v2:
> * Add tag from Conor (thanks!)
> ---
>   Documentation/devicetree/bindings/display/panel/panel-lvds.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> index 155d8ffa8f6ef..5af2d69300751 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> @@ -50,6 +50,8 @@ properties:
>             - hannstar,hsd101pww2
>             # Hydis Technologies 7" WXGA (800x1280) TFT LCD LVDS panel
>             - hydis,hv070wx2-1e0
> +          # Jenson Display BL-JT60050-01A 7" WSVGA (1024x600) color TFT LCD LVDS panel
> +          - jenson,bl-jt60050-01a
>             - tbs,a711-panel
>   
>         - const: panel-lvds

How do you want to deal with that, I can apply both patches 1 & 2 to drm-misc-next, is that ok ?

Neil

