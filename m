Return-Path: <devicetree+bounces-254863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2813ED1D4EF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 899A1308112F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8C33803D2;
	Wed, 14 Jan 2026 08:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CIaJ5MKS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943BF3803F6
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768380764; cv=none; b=AKvWZSDBvDfmYaYbJJFY6yBrgGAV4VyQ5lwVscBAxFaILQZdx7LY0a3r0+AbuSxs2MOs0H4Atq3HQQ2vqN7RW4rpzbMIrHxmHkq2qECjKgspQuiYxoPZ7tbYXhE79hkl0Pwq5vgr0KTarhVobn6we8Ai9mhe2ZM+aberehIYKtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768380764; c=relaxed/simple;
	bh=aBiUjAE6wwW3zhaxRGTbLKhyrSS9d62CtXC18hNonIo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=FRZZx5s232CvVjI2W8kFGdB3j7rVPPC3iG0ADDkgP0msfwKMjwox3aF6peaLAOXmIQ3EgDA6ye9RiqhpLwV6orgAJDXCKsQmNNn0Cp5eyhBjgruMwkRnh9S0f4p6EmFPHkEinniFB8bL46vPEFNueOhR1ZO4b6e4oJVNuEbJRuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CIaJ5MKS; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477563e28a3so3793665e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768380756; x=1768985556; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1bpcWnB4BcZSj7q9wPAqZQeLTaJp0K4KOi9eIDlDf/I=;
        b=CIaJ5MKSWAsRXHReu2MDTo/gaNOBfGvgqkvViyT7K/7PYqS6CMoAzP6os5+7rc/VHq
         x5Cnx+TI99H/YoCYOZvhxyhplB0NdNrpruMx3po7Bhf7DFgrK+JdbM48BGKpgOkPJAZ5
         lOJF9wGVxRVlxoc1j94tZioMyoyARTxKtOnzwy/TMBCmu4PA4p0kB5dLqUw/oWUiRm20
         o8yFbMwJlZ5OCQrskQVHdjBR6O7hQBiHmHj4B2LwfBubO5e4bPwEDY8DQg4vwDbdBJ4t
         tj/VIs2dsubZ6/Csv99edPfB7IXGJfOWCvK2Pg6Y6uv70cwTxfBaW7WckefUSmSGmjMT
         FTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768380756; x=1768985556;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1bpcWnB4BcZSj7q9wPAqZQeLTaJp0K4KOi9eIDlDf/I=;
        b=O9I4EXQT+aR1gGBI/beR8D+M/lyu4L+sZG00kxr484fkngXicqcV8mayvLQMW2hdiR
         xpzrJnqPSBHvD71Jri1ZZrJyPY6003BXLPqf6IIoQBLzUyCw1o6mbC3+cOA62dXXvqr5
         z2e6nNerEMH4rxPzQiQftsLlM+3PhxhiyVVcA2QW71y4F+tvp6BSO/lmNLQ/MwMYc3Q5
         x5vAdidHaO5Yderu/MjmEuAcZo09jnSa5F0pxvFVGEiS3wvB8FpyXOQUu5Aj9IHX6nav
         SIyinUYZ5x52x/Jbwy5GRPmwbSjoFukEZ9MyRBPW2bgALcExb2xdVoJu1tZ9pl1y2RsM
         YHGg==
X-Forwarded-Encrypted: i=1; AJvYcCXo9mK/s40rqgjqfRg49OR9L3smEUIB4wzBd+AnP3Ytn7LBg5JuYK134o6GsW+BMV4Uxj0RhzQ6/Nqc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7dEkBnxzTvGKcRIjka1TU5sbEUFtlLYd1X54co0JDYLrgiYzO
	cQl5+Hfo/6HJssPnM/pbbMuSbsplZVmeY6yCCwdSSYZ1Y9JacwPZheKpik/3LSlaZrQ=
X-Gm-Gg: AY/fxX4IDJV0GcRHAwZ+PZgd1SleyDO/bquny8zckGpwfMucmwsIZJaDB5s4NYaWVT+
	QrnJImrkUOJHJisPy1uvYb4USeOslc32uda8xvG/Mxv3Cex1ztSXuLEkjKfilHV9ekiJGE2hv+i
	joMDnnCJz48a41bw4gPwLCRcTCF7Fj0sKQZC4+JNWWD8EVf66jlFLAGGuczqxQ9QjNz8NUm9H3N
	0DKdzMEI2X8Cb/8Q5BogYAQzDnoP8IpI4cvfThjfVqEVTjnVlMup37Wh2D8kv3uWzYkxAF9HzJ+
	dGV9CZ3WQZRK/8DiO2cgM/8U7JhFBjB9HGMX0GHqOQBWiVa03tJ4xEazHY9ryUtjKbB4d83gtX7
	AJ94joJ2xa0w3v71AANL1Wp+YhUShcZ9z8S1umJK/Y3N/6i3hT6J5jDPZuSySvh/QUI7zllL6FT
	qaFj7IxsmhQ0RJdRDyx4D6D+zInTKx7LtjNHokik+OrQJ20pDX3xAwma+aYDyXFb0=
X-Received: by 2002:a05:600c:16d3:b0:47e:e0b3:2437 with SMTP id 5b1f17b1804b1-47ee0b329d3mr22429865e9.5.1768380756155;
        Wed, 14 Jan 2026 00:52:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee0b89ee0sm18634095e9.1.2026.01.14.00.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 00:52:35 -0800 (PST)
Message-ID: <6a68b64d-27d3-474a-9c40-5a9973444395@linaro.org>
Date: Wed, 14 Jan 2026 09:52:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 3/6] drm/panel: jd9365da: Support for Anbernic RG-DS Panel
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 dmitry.torokhov@gmail.com, simona@ffwll.ch, airlied@gmail.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 jesszhan0024@gmail.com, jagan@edgeble.ai, heiko@sntech.de,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 aweinzerl13@yahoo.com, Chris Morgan <macromorgan@hotmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-4-macroalpha82@gmail.com>
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
In-Reply-To: <20260113195721.151205-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/13/26 20:57, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for both panels used in the Anbernic RG-DS. These panels
> are physically identical and differ only with a single instruction
> in the init sequence. The init sequence commands suggest it uses
> an identical controller as the jd9365da.
> 
> Additionally, allow specifying per-panel dsi->mode_flags that can
> override the default values.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Co-developed-by: Alexander Weinzerl <aweinzerl13@yahoo.com>
> Signed-off-by: Alexander Weinzerl <aweinzerl13@yahoo.com>
> ---
>   .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 271 +++++++++++++++++-
>   1 file changed, 269 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> index 063ed9646d53..5386a06fcd08 100644
> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> @@ -33,6 +33,7 @@ struct jadard_panel_desc {
>   	unsigned int backlight_off_to_display_off_delay_ms;
>   	unsigned int display_off_to_enter_sleep_delay_ms;
>   	unsigned int enter_sleep_to_reset_down_delay_ms;
> +	unsigned long mode_flags;
>   };
>   
>   struct jadard {
> @@ -1113,6 +1114,258 @@ static const struct jadard_panel_desc melfas_lmfbx101117480_desc = {
>   	.enter_sleep_to_reset_down_delay_ms = 100,
>   };
>   
> +static int anbernic_rgds_init_cmds(struct jadard *jadard)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
> +	struct drm_panel *panel = &jadard->panel;
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x0);
> +
> +	jadard_enable_standard_cmds(&dsi_ctx);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x6a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x6a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x74);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xbf);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0xbf);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0xfe);
> +
> +	if (of_device_is_compatible(panel->dev->of_node,
> +				    "anbernic,rg-ds-display-top"))
> +		mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x05);
> +	else
> +		mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x09);
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0xf7);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x3c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x11);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x78);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x6d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x56);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x34);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x2f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x22);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x25);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x33);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x3a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x2d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6c, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x1b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x56);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x34);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x2f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x22);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7a, 0x25);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7b, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7c, 0x33);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7d, 0x3a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7e, 0x2d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x1b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x00);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x5e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0a, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0b, 0x4a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x4a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0d, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0f, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x5e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0x41);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1d, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1e, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1f, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x4b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x4b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2a, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2c, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2d, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2e, 0x1e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2f, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x30, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x31, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x32, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x33, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x34, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3b, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x1e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x46, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x47, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x48, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x49, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4a, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4b, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4c, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4d, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4e, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4f, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x51, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x53, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0xe9);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x73);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0xe9);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xda);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0xfc);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x83, 0xf4);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x87, 0x10);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xb3);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x60);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1e, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x58);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x0f);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x1d);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x00);
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 10);
> +
> +	return dsi_ctx.accum_err;
> +};
> +
> +static const struct jadard_panel_desc anbernic_rgds_display_desc = {
> +	.mode = {
> +		.clock		= (640 + 260 + 220 + 260) * (480 + 10 + 2 + 16) * 60 / 1000,
> +
> +		.hdisplay	= 640,
> +		.hsync_start	= 640 + 260,
> +		.hsync_end	= 640 + 260 + 220,
> +		.htotal		= 640 + 260 + 220 + 260,
> +
> +		.vdisplay	= 480,
> +		.vsync_start	= 480 + 10,
> +		.vsync_end	= 480 + 10 + 2,
> +		.vtotal		= 480 + 10 + 2 + 16,
> +
> +		.width_mm	= 68,
> +		.height_mm	= 87,
> +		.type		= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +		.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	},
> +	.lanes = 4,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init = anbernic_rgds_init_cmds,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		      MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM,
> +};
> +
>   static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
>   {
>   	struct device *dev = &dsi->dev;
> @@ -1126,8 +1379,14 @@ static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
>   		return PTR_ERR(jadard);
>   
>   	desc = of_device_get_match_data(dev);
> -	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> -			  MIPI_DSI_MODE_NO_EOT_PACKET;
> +
> +	if (desc->mode_flags)
> +		dsi->mode_flags = desc->mode_flags;
> +	else
> +		dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
> +				  MIPI_DSI_MODE_VIDEO_BURST |
> +				  MIPI_DSI_MODE_NO_EOT_PACKET;
> +
>   	dsi->format = desc->format;
>   	dsi->lanes = desc->lanes;
>   
> @@ -1176,6 +1435,14 @@ static void jadard_dsi_remove(struct mipi_dsi_device *dsi)
>   }
>   
>   static const struct of_device_id jadard_of_match[] = {
> +	{
> +		.compatible = "anbernic,rg-ds-display-bottom",
> +		.data = &anbernic_rgds_display_desc
> +	},
> +	{
> +		.compatible = "anbernic,rg-ds-display-top",
> +		.data = &anbernic_rgds_display_desc
> +	},
>   	{
>   		.compatible = "chongzhou,cz101b4001",
>   		.data = &cz101b4001_desc

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

