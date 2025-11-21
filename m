Return-Path: <devicetree+bounces-241143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D17DC7A4E3
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F0A394EC7C3
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5708034C816;
	Fri, 21 Nov 2025 14:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qcsk/oX4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DCA33FE03
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763735801; cv=none; b=Trlo5EkjbMpohE7rvGB2j17Hys5bXwGDq6ZXJ6EgFSe8R2rVXOQjQg2fzeXLhdV6akIOI1EApnxsP9W0X1kO/shk4psLmLEZw+Ish0U/0Y0oTIknchwmXr+I0gFb42sGSkWzzuVX7CwGH34j1+6o8EhbKUtEbiSYAFeYapUUZ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763735801; c=relaxed/simple;
	bh=cR4SAnwZ/O4RASqZD2pfaFAlCzlE6LrfClxtjuJNd60=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SMys1hsBUwZHVKg7M64JJnY8YZ3PbbppL1X69/ElVujLJCNU8ewjgDXZHCh+xpw4HMDyTOnED/c4lYf7LTtiqWQSVhrBaSDg9KABPzdT1b9ajH/U/3GktvdrpAC2mVHiLgL+S+R6oWcrdH6cbntfNgU61FvEi+5E2XLSYlRTXMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qcsk/oX4; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b3377aaf2so1216261f8f.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763735798; x=1764340598; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tGloELWCAwNOjaOVPrzD6GUKQKA52qfEmJpK3JJ0W/0=;
        b=qcsk/oX40SVSoXAA2Zu/Qh7REZ7eQ9OpZZpxgkN4XZIofZMt5FjDNfBlcg05qOaUUx
         VkXuuyYpWPT4tHNzOVsOOG6UOB4sB1F3v2jksAvXFZrZkq4SCO+tY7z2g13rYZvdry4I
         syk/S3fadtk3eol1QYlnjx4xAC2CNIChFczFgGQ4k/Pli9NDXg8HzOts0Fh6qMfMqEWv
         1iYAjSkj51sw4FJYt+IDZM+u4RynAePnm8FRjX0z98Qy9n5kuV8oXee2zPQoYQs3oUTp
         rWyU+3Mp+Mf8RzW1m/gdf3NDcmf/fMHxNj7ws4rjeDWUTSgtsF2hfjJS256INj3K6evK
         R8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763735798; x=1764340598;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tGloELWCAwNOjaOVPrzD6GUKQKA52qfEmJpK3JJ0W/0=;
        b=DWzgZ6OzaVFdyCzECva12ZT1USFbGsO8GE1EAo8R4gqgr1L89gl/lHKhEqBMQ3DpbY
         rtFgAwBK908ZKXJ87ZXeAFkHI8e2WspEsgaQHH8AdJoKu9mHlgLcvSL2dk9PTkmW/wqF
         agIOn885g0x5f6bWL6r9TMQxYyzFl29XYLWj3IiJaW/o+sK4ddCFNZdTrwgjNkWEQurZ
         GtiSn7YAIPTkep13jvPnd+wTvzH35Ivc9Ngs/4Sm0jaZVpHvVdWu70CR3hhmoGNIf0a9
         jx2dyW6k1lEAJlyvIDquA9r1Nm3V0R5H7qDDGUDDcURPx0jMj83D7yKOidB9mq/PEN8Q
         fExw==
X-Forwarded-Encrypted: i=1; AJvYcCWuUaDfecb4epncncua4a9ts3ZI/yeZGTVGa85wBj6tDVB/abw7Cqo1yWtkTu2Chzc9qZDi4IawU4F+@vger.kernel.org
X-Gm-Message-State: AOJu0YxdoGS0jn83pS64Rfj1LYuvBl2yEoDwRU6kVlMuq2xk6E3gLe4g
	s6C08wLEF9Hbj9HUP5u20L2U7LMbTTP4XjrMG0ThFUMvWMURPS0bFITpOETRUZ61NKE=
X-Gm-Gg: ASbGnctxuh++ucjNho8/pfadI+XiVZ8pMNK4M5hSCp+FQiZVvKj5jvqprTrXwvZf5aB
	loTgxDpL4Q8IKwIW1qVMbkvk0lP9BFWkhC26GfnIhdqT6FgcNn/6HE2OZ3w1q0rI5Weo8kAINEL
	ycN1vJdTttROrrYlWnpesskgYj/LoRQTEp7AO5VVX5vbolLUZtH484ROM2dXVoPm2VVle8HKwHV
	MQPFo47tunwNol/4xNgKgHAwfZjIKE7kMrUAUM0rrbfbN0RgiE5prjcDtCqmLcyrXMtqyiRrcPb
	bcpeIoI1lnifq5Y6RLYzLYtUP7TiZemBeDORQPgYOqNqeagq71GfIZZJ/NreH0SE1Zanohkstv1
	gOOp0YJ0YQGomWyU9qRWT2KtWiT4+hilRr9NxADczlcN5uJFVYy+l0ZoM4EgnI8iCb3I+bqlXGW
	P2aNzkTSg5cX4PHe8DuUbIW2CwCBPQg6RzG+JIXEkPg/BGSV59+qTnlyj1pEev6Zw=
X-Google-Smtp-Source: AGHT+IGX6jCo5Ujy+ZFfRgTfhbHhSPg87C4QJY43bF2bspYbetMdvSgII7RsO5EeWRYFbRFDg/CPNg==
X-Received: by 2002:a05:6000:2c09:b0:426:d54d:224d with SMTP id ffacd0b85a97d-42cc1d0cea3mr2595141f8f.27.1763735797644;
        Fri, 21 Nov 2025 06:36:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:159f:1839:bb92:1eca? ([2a01:e0a:3d9:2080:159f:1839:bb92:1eca])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa3a6bsm11383702f8f.28.2025.11.21.06.36.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:36:37 -0800 (PST)
Message-ID: <01cc15f4-6e62-47b8-b7dd-39f990d23801@linaro.org>
Date: Fri, 21 Nov 2025 15:36:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 3/7] drm/bridge: simple: add ASL CS5263 DP-to-HDMI
 bridge
To: Georg Gottleuber <ggo@tuxedocomputers.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ettore Chimenti <ettore.chimenti@linaro.org>,
 Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
 stephan.gerhold@linaro.org, wse@tuxedocomputers.com, cs@tuxedo.de,
 dri-devel@lists.freedesktop.org
References: <20251121142623.251118-1-ggo@tuxedocomputers.com>
 <20251121142623.251118-4-ggo@tuxedocomputers.com>
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
In-Reply-To: <20251121142623.251118-4-ggo@tuxedocomputers.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/21/25 15:26, Georg Gottleuber wrote:
> From: Ettore Chimenti <ettore.chimenti@linaro.org>
> 
> Add support for the transparent ASL CS5263 DP-to-HDMI bridge.
> 
> Signed-off-by: Ettore Chimenti <ettore.chimenti@linaro.org>
> Signed-off-by: Georg Gottleuber <ggo@tuxedocomputers.com>
> ---
>   drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
> index e4d0bc2200f8..94aba5a9c9b9 100644
> --- a/drivers/gpu/drm/bridge/simple-bridge.c
> +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> @@ -261,6 +261,11 @@ static const struct of_device_id simple_bridge_match[] = {
>   			.timings = &default_bridge_timings,
>   			.connector_type = DRM_MODE_CONNECTOR_VGA,
>   		},
> +	}, {
> +		.compatible = "asl-tek,cs5263",
> +		.data = &(const struct simple_bridge_info) {
> +			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
> +		},
>   	}, {
>   		.compatible = "radxa,ra620",
>   		.data = &(const struct simple_bridge_info) {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

