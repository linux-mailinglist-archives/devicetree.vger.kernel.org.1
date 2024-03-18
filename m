Return-Path: <devicetree+bounces-51157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E7E87E55B
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 10:01:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E904D1C2087E
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 09:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF2F528DCA;
	Mon, 18 Mar 2024 09:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G1cwhshg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50B728DD1
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 09:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710752502; cv=none; b=cnAGAToGDK8Ci3iV9rsfzOXTHPWFEV5ELvxioZ7tLAWKfCrrxPFyieRVWRv9y3JZDVgYyhBjSRbEFkTWCmHFLTA2XysqiV6RXUBEJj7S8MjHl5rBCoIFyh/7RVEvwkx6gpg7K97OIUfwEWcRYg8m4fmzlsmTlDI3W2lYgmcDZPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710752502; c=relaxed/simple;
	bh=LF+82U8GdgRPAXkPZpIl1ktKnXgHZpxc0Igv8XWqaQU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=CEd1LgHqzPpG4R03kMmx+W2ZNgqDXhNyP6hB72cM9aCPbxzRv8z1qzJtBWrJJGFDd4CQZXoXAWs2m86lXDC6tQdyY+5J//09f5JgH1EYRDx2irJ5e6kbMjsA6gcw/XR/6iQy+k/IQQa7oC/sbEn8ocovNbiiynH6jRHz/V6qxwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G1cwhshg; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4140816539fso12533075e9.3
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 02:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710752499; x=1711357299; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2gULtKUS8fx5juUHYeaIl+QplRjpdITgHYagcovp62Q=;
        b=G1cwhshgb0T5gkUsIHH8tV2BImVqCGEpnfyPt+8jnSsoPiD49P4mvlDukoyjXPgbZc
         CTlWCe3+yvXCNSHDwBPZunh54moWwfpXoD5+BqIF1fxxhY5c0F82p2opcgNhyejTkh8e
         qjx3KwfbUYtBDjtNej2KnPnqxdFLKr9vhuyy51fAQ/w6/U7rlnQ+avBl+6odm8Ui/V5T
         Q+Zo8RtxAuSphs1er/w5V82pjSPI2H7MP6bErtpDL17d4kmPWeo+SP/IAb2j2C7eN8Yr
         URyRCcYEmsO2UYkIl2dxsPvz24POIl9vP89kOBdOmNSFRWJ/IeI9KcP10EaCTYuZamBb
         qD5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710752499; x=1711357299;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2gULtKUS8fx5juUHYeaIl+QplRjpdITgHYagcovp62Q=;
        b=et/mQTibtCJNJuEa7tY3+m/Q0iO1v/hvi9UTJf/egVDJHrwvp3rdhSL2IR6T8Hqffk
         cthlj1xic+bWBnzPEOT3Kv51lI54521MtJD7Lj2V1BR6z++TJrcXMCYdpYc6/JEoYOFr
         5vlb4BTafDSyrO3GGQAO98VqsUP9PDwNR9G8hBAl2u5I4LqkyGKIHX4ql/58ZqmZ7Iv6
         CqhkiBKVX7ABrBGFZawY9qmFlw5KI0NNOZ79tqELGBcrUkV2C/l6jvJDM5zTdYdpMrGI
         C7UrcBeImO0sLGObEb/VmyeqWluotmeNRmqXvEqNGGBc9cSqibMO821C0PjgOOCVKCd2
         mD9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV0YPYUjhUSibFKvt3cJaVuI0RoHxyKRq3ccPWxJ9jR2/ncyMpmRlxhCsr5vMhEbXaeuX2LnSIzmxJjqiSALFV5Q30RD4lV0S5loQ==
X-Gm-Message-State: AOJu0YxBm8G+cWdp6a0cWZzmNCCTIIc6hg3HADmtkp09wgMOmdE2nNnd
	Uhkw5i/JruwVg0xDSPm8NlqMlopsk5e3+CG9IE4FSCiOq0JCxxSZE8Sty0adZPM=
X-Google-Smtp-Source: AGHT+IGMo6jgBi9PkbRliQ2ogEexFAeVvbC/mcVH1I5DnSGfomh2YtAXhnEbvnkfyA+PVvh/h6YEDA==
X-Received: by 2002:a05:600c:6b11:b0:414:132e:b485 with SMTP id jn17-20020a05600c6b1100b00414132eb485mr701623wmb.27.1710752498881;
        Mon, 18 Mar 2024 02:01:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:ad2b:a316:59d9:3dbc? ([2a01:e0a:982:cbb0:ad2b:a316:59d9:3dbc])
        by smtp.gmail.com with ESMTPSA id w9-20020a05600c474900b0041408af4b34sm6722459wmo.10.2024.03.18.02.01.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 02:01:38 -0700 (PDT)
Message-ID: <3f1f54ac-cb4a-463d-b930-dbd9eaac43c5@linaro.org>
Date: Mon, 18 Mar 2024 10:01:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] drm/panel: ilitek-ili9881c: Add Startek
 KD050HDFIA020-C020A support
Content-Language: en-US, fr
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg
 <sam@ravnborg.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
 <20240317155746.23034-3-laurent.pinchart@ideasonboard.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20240317155746.23034-3-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/03/2024 16:57, Laurent Pinchart wrote:
> Add support for the Startek KD050HDFIA020-C020A panel.
> 
> The init table comes from the Compulab BSP ([1]).
> 
> [1] https://github.com/compulab-yokneam/meta-bsp-imx8mp/blob/ucm-imx8m-plus-r1.1/recipes-kernel/linux/compulab/imx8mp/0000-compulab-imx8m-plus-Add-boards-support.patch
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 222 ++++++++++++++++++
>   1 file changed, 222 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index 2ffe5f68a890..80b386f91320 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -455,6 +455,202 @@ static const struct ili9881c_instr k101_im2byl02_init[] = {
>   	ILI9881C_COMMAND_INSTR(0xD3, 0x3F), /* VN0 */
>   };
>   
> +static const struct ili9881c_instr kd050hdfia020_init[] = {
> +	ILI9881C_SWITCH_PAGE_INSTR(3),
> +	ILI9881C_COMMAND_INSTR(0x01, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x02, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x03, 0x72),
> +	ILI9881C_COMMAND_INSTR(0x04, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x05, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x06, 0x09),
> +	ILI9881C_COMMAND_INSTR(0x07, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x08, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x09, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x0a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0c, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x0d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x10, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x11, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x12, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x13, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x14, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x15, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x16, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x17, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x18, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x19, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1e, 0x40),
> +	ILI9881C_COMMAND_INSTR(0x1f, 0x80),
> +	ILI9881C_COMMAND_INSTR(0x20, 0x05),
> +	ILI9881C_COMMAND_INSTR(0x20, 0x05),
> +	ILI9881C_COMMAND_INSTR(0x21, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x22, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x23, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x24, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x25, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x26, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x27, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x28, 0x33),
> +	ILI9881C_COMMAND_INSTR(0x29, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x2a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x30, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x31, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x32, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x32, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x33, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x34, 0x04),
> +	ILI9881C_COMMAND_INSTR(0x35, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x36, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x37, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x38, 0x3C),
> +	ILI9881C_COMMAND_INSTR(0x39, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3a, 0x40),
> +	ILI9881C_COMMAND_INSTR(0x3b, 0x40),
> +	ILI9881C_COMMAND_INSTR(0x3c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x40, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x41, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x42, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x43, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x44, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x50, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x51, 0x23),
> +	ILI9881C_COMMAND_INSTR(0x52, 0x45),
> +	ILI9881C_COMMAND_INSTR(0x53, 0x67),
> +	ILI9881C_COMMAND_INSTR(0x54, 0x89),
> +	ILI9881C_COMMAND_INSTR(0x55, 0xab),
> +	ILI9881C_COMMAND_INSTR(0x56, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x57, 0x23),
> +	ILI9881C_COMMAND_INSTR(0x58, 0x45),
> +	ILI9881C_COMMAND_INSTR(0x59, 0x67),
> +	ILI9881C_COMMAND_INSTR(0x5a, 0x89),
> +	ILI9881C_COMMAND_INSTR(0x5b, 0xab),
> +	ILI9881C_COMMAND_INSTR(0x5c, 0xcd),
> +	ILI9881C_COMMAND_INSTR(0x5d, 0xef),
> +	ILI9881C_COMMAND_INSTR(0x5e, 0x11),
> +	ILI9881C_COMMAND_INSTR(0x5f, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x60, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x61, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x62, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x63, 0x0E),
> +	ILI9881C_COMMAND_INSTR(0x64, 0x0F),
> +	ILI9881C_COMMAND_INSTR(0x65, 0x0C),
> +	ILI9881C_COMMAND_INSTR(0x66, 0x0D),
> +	ILI9881C_COMMAND_INSTR(0x67, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x68, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x69, 0x07),
> +	ILI9881C_COMMAND_INSTR(0x6a, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6b, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6c, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6d, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6e, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6f, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x70, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x71, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x72, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x73, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x74, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x75, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x76, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x77, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x78, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x79, 0x0E),
> +	ILI9881C_COMMAND_INSTR(0x7a, 0x0F),
> +	ILI9881C_COMMAND_INSTR(0x7b, 0x0C),
> +	ILI9881C_COMMAND_INSTR(0x7c, 0x0D),
> +	ILI9881C_COMMAND_INSTR(0x7d, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x7e, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x7f, 0x07),
> +	ILI9881C_COMMAND_INSTR(0x80, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x81, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x83, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x84, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x85, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x86, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x87, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x88, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x89, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x8A, 0x02),
> +	ILI9881C_SWITCH_PAGE_INSTR(0x4),
> +	ILI9881C_COMMAND_INSTR(0x6C, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x6E, 0x2A),
> +	ILI9881C_COMMAND_INSTR(0x6F, 0x33),
> +	ILI9881C_COMMAND_INSTR(0x3A, 0x94),
> +	ILI9881C_COMMAND_INSTR(0x8D, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x87, 0xBA),
> +	ILI9881C_COMMAND_INSTR(0x26, 0x76),
> +	ILI9881C_COMMAND_INSTR(0xB2, 0xD1),
> +	ILI9881C_COMMAND_INSTR(0xB5, 0x06),
> +	ILI9881C_SWITCH_PAGE_INSTR(0x1),
> +	ILI9881C_COMMAND_INSTR(0x22, 0x0A),
> +	ILI9881C_COMMAND_INSTR(0x31, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x53, 0x90),
> +	ILI9881C_COMMAND_INSTR(0x55, 0xA2),
> +	ILI9881C_COMMAND_INSTR(0x50, 0xB7),
> +	ILI9881C_COMMAND_INSTR(0x51, 0xB7),
> +	ILI9881C_COMMAND_INSTR(0x60, 0x22),
> +	ILI9881C_COMMAND_INSTR(0x61, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x62, 0x19),
> +	ILI9881C_COMMAND_INSTR(0x63, 0x10),
> +	ILI9881C_COMMAND_INSTR(0xA0, 0x08),
> +	ILI9881C_COMMAND_INSTR(0xA1, 0x1A),
> +	ILI9881C_COMMAND_INSTR(0xA2, 0x27),
> +	ILI9881C_COMMAND_INSTR(0xA3, 0x15),
> +	ILI9881C_COMMAND_INSTR(0xA4, 0x17),
> +	ILI9881C_COMMAND_INSTR(0xA5, 0x2A),
> +	ILI9881C_COMMAND_INSTR(0xA6, 0x1E),
> +	ILI9881C_COMMAND_INSTR(0xA7, 0x1F),
> +	ILI9881C_COMMAND_INSTR(0xA8, 0x8B),
> +	ILI9881C_COMMAND_INSTR(0xA9, 0x1B),
> +	ILI9881C_COMMAND_INSTR(0xAA, 0x27),
> +	ILI9881C_COMMAND_INSTR(0xAB, 0x78),
> +	ILI9881C_COMMAND_INSTR(0xAC, 0x18),
> +	ILI9881C_COMMAND_INSTR(0xAD, 0x18),
> +	ILI9881C_COMMAND_INSTR(0xAE, 0x4C),
> +	ILI9881C_COMMAND_INSTR(0xAF, 0x21),
> +	ILI9881C_COMMAND_INSTR(0xB0, 0x27),
> +	ILI9881C_COMMAND_INSTR(0xB1, 0x54),
> +	ILI9881C_COMMAND_INSTR(0xB2, 0x67),
> +	ILI9881C_COMMAND_INSTR(0xB3, 0x39),
> +	ILI9881C_COMMAND_INSTR(0xC0, 0x08),
> +	ILI9881C_COMMAND_INSTR(0xC1, 0x1A),
> +	ILI9881C_COMMAND_INSTR(0xC2, 0x27),
> +	ILI9881C_COMMAND_INSTR(0xC3, 0x15),
> +	ILI9881C_COMMAND_INSTR(0xC4, 0x17),
> +	ILI9881C_COMMAND_INSTR(0xC5, 0x2A),
> +	ILI9881C_COMMAND_INSTR(0xC6, 0x1E),
> +	ILI9881C_COMMAND_INSTR(0xC7, 0x1F),
> +	ILI9881C_COMMAND_INSTR(0xC8, 0x8B),
> +	ILI9881C_COMMAND_INSTR(0xC9, 0x1B),
> +	ILI9881C_COMMAND_INSTR(0xCA, 0x27),
> +	ILI9881C_COMMAND_INSTR(0xCB, 0x78),
> +	ILI9881C_COMMAND_INSTR(0xCC, 0x18),
> +	ILI9881C_COMMAND_INSTR(0xCD, 0x18),
> +	ILI9881C_COMMAND_INSTR(0xCE, 0x4C),
> +	ILI9881C_COMMAND_INSTR(0xCF, 0x21),
> +	ILI9881C_COMMAND_INSTR(0xD0, 0x27),
> +	ILI9881C_COMMAND_INSTR(0xD1, 0x54),
> +	ILI9881C_COMMAND_INSTR(0xD2, 0x67),
> +	ILI9881C_COMMAND_INSTR(0xD3, 0x39),
> +	ILI9881C_SWITCH_PAGE_INSTR(0),
> +	ILI9881C_COMMAND_INSTR(0x35, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3A, 0x7),
> +};
> +
>   static const struct ili9881c_instr tl050hdv35_init[] = {
>   	ILI9881C_SWITCH_PAGE_INSTR(3),
>   	ILI9881C_COMMAND_INSTR(0x01, 0x00),
> @@ -1177,6 +1373,23 @@ static const struct drm_display_mode k101_im2byl02_default_mode = {
>   	.height_mm	= 217,
>   };
>   
> +static const struct drm_display_mode kd050hdfia020_default_mode = {
> +	.clock		= 62000,
> +
> +	.hdisplay	= 720,
> +	.hsync_start	= 720 + 10,
> +	.hsync_end	= 720 + 10 + 20,
> +	.htotal		= 720 + 10 + 20 + 30,
> +
> +	.vdisplay	= 1280,
> +	.vsync_start	= 1280 + 10,
> +	.vsync_end	= 1280 + 10 + 10,
> +	.vtotal		= 1280 + 10 + 10 + 20,
> +
> +	.width_mm	= 62,
> +	.height_mm	= 110,
> +};
> +
>   static const struct drm_display_mode tl050hdv35_default_mode = {
>   	.clock		= 59400,
>   
> @@ -1345,6 +1558,14 @@ static const struct ili9881c_desc k101_im2byl02_desc = {
>   	.mode_flags = MIPI_DSI_MODE_VIDEO_SYNC_PULSE,
>   };
>   
> +static const struct ili9881c_desc kd050hdfia020_desc = {
> +	.init = kd050hdfia020_init,
> +	.init_length = ARRAY_SIZE(kd050hdfia020_init),
> +	.mode = &kd050hdfia020_default_mode,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
> +		      MIPI_DSI_MODE_LPM,
> +};
> +
>   static const struct ili9881c_desc tl050hdv35_desc = {
>   	.init = tl050hdv35_init,
>   	.init_length = ARRAY_SIZE(tl050hdv35_init),
> @@ -1372,6 +1593,7 @@ static const struct ili9881c_desc am8001280g_desc = {
>   static const struct of_device_id ili9881c_of_match[] = {
>   	{ .compatible = "bananapi,lhr050h41", .data = &lhr050h41_desc },
>   	{ .compatible = "feixin,k101-im2byl02", .data = &k101_im2byl02_desc },
> +	{ .compatible = "startek,kd050hdfia020", .data = &kd050hdfia020_desc },
>   	{ .compatible = "tdo,tl050hdv35", .data = &tl050hdv35_desc },
>   	{ .compatible = "wanchanglong,w552946aba", .data = &w552946aba_desc },
>   	{ .compatible = "ampire,am8001280g", .data = &am8001280g_desc },

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

