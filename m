Return-Path: <devicetree+bounces-83875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF98792A2ED
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 14:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B77BE1C21221
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 12:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94DD68003A;
	Mon,  8 Jul 2024 12:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Aj6VHnvn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7597E7E0F1
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 12:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720442319; cv=none; b=nnXbHUQEq7pA8Hd/6hXGnJ834aQpot3GezWbPSX5dpRAPDuj77b2qipnYxkoAg/86dJLjrGP8FnNBBauJviJ5YS1AaGdPA8IqFgO8yu1Wspz+szvpFq/7LfNE2oew/JXeQwPcEwKoI7msrxQlFAQhpxg8TVK2mB3/sQ1uZ49ppg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720442319; c=relaxed/simple;
	bh=bRXV258fFzonojaEltfj9eMQ4om01saM2VuQaMHAEc4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=cdpuqZ8DIrWGHRXp+5t4V+7Btw4zarF336Ec5bYl2p9KaGPQDBaegtT8C/xP9+MrJYzDlYd35y8P5HZDAqPRz6Q6Wg4hSAVUCdx5cYhGITeXSzmFDCbcgNhbcVIeVSgz61ddT4cDdihOObuo8DLu0erN+D21/LzATMlvcqfVqsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Aj6VHnvn; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4266f3e0df8so125435e9.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 05:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720442316; x=1721047116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KaJW3HvKxNqVBLDwr+Z97qDaSgrCG2UbGmzOpX1s2SM=;
        b=Aj6VHnvn/UWdQpT+I7HeZkVNg0gndhzRwLRE26Fqde02iKz0dBf695RWLRtohP2uR0
         XH8GbhuosGBGzbMFxKPJFrfPdk/xasrrASKb5Yi0vDZkbluAR4nNUIjERgdwWO3YvOON
         GoAv+unx5u19q0jwG8yWdHjJre1lcbHZXQhXa8XwvxV94O9TgRrW4TIgBGFkrVgLBdbV
         bns8FtEilJIzzuwwysvJA7aeGIEamtS1iu7KYtLTbngLHDIX4rBHilALEpm4opba8N+0
         k/VhG3j+T+jLMDW6U5cLc6U1TkMDYDRhQ8qMuYSgfXqiQSm7jW6org4+iy5bicDDo459
         JTYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720442316; x=1721047116;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KaJW3HvKxNqVBLDwr+Z97qDaSgrCG2UbGmzOpX1s2SM=;
        b=VMf4Halnw/hymNmkeTFJ6QE6x/vvARBlnrsYx7HW5MgPMTYMa2MMMPpHU1SaDB3TdM
         3SqfNQVkT/JGH9B9RD4hCCeOp+d4m7sSjI1HCOHN8nIOBDkTVV+6rOmpsquN0lPQk6ER
         VVSoPXu2C7KqA5JPl2+z3V+9eCCODdv9a+I/uV83Bt461Fed6b4fHqPYUJIxcodu7XN+
         h4Q4xT6i46cQyXy486gwSVZxgD24Le8cY4f+T53uDBhC3RD4z6tP9SBujfZCwrzPjGvu
         CElhLVWAy3n5gD6x7qa5U9kMKEshCSmtmxDfHrm/I4xbMpQHoprP4yntHWJKxjsSV/pN
         y4Ag==
X-Forwarded-Encrypted: i=1; AJvYcCWjA3DvVM9iUYvmqEY1KcfwMLhJy8sDK5WoefihL7+N5JuUGT2Ul7z7n0ehLfU4hrcmi8GhgutPYRSrZ5xQx9fiR9CmVJDYKJA4Lg==
X-Gm-Message-State: AOJu0YyDIm444qj7WShDDaXpKypwxQnsrZwViihqICl0hxTrPvohsgsW
	UShWaYU9UmmIf4o/9iriYEdtvp1L6pSQM4IVkIyTEJ5XOBxe56I6PJANWyj5Pak=
X-Google-Smtp-Source: AGHT+IGJ0wnPGPW00Hz/cr3B39knS1brYR02EbUfCMF4OGLAjfR0Wgck5I6r+I7MtVCkDKL8M/cT9w==
X-Received: by 2002:a05:600c:524b:b0:426:622d:9e6b with SMTP id 5b1f17b1804b1-426622d9ea8mr33176545e9.23.1720442315561;
        Mon, 08 Jul 2024 05:38:35 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:cad:2140:f482:8fc6:e8d0:6d7c? ([2a01:e0a:cad:2140:f482:8fc6:e8d0:6d7c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266c3650f4sm24577855e9.1.2024.07.08.05.38.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jul 2024 05:38:35 -0700 (PDT)
Message-ID: <c8daf725-5558-460b-8d52-5a69d4895a9d@linaro.org>
Date: Mon, 8 Jul 2024 14:38:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 3/5] drm/panel: boe-th101mb31ig002: use wrapped MIPI
 DCS functions
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 airlied@gmail.com, daniel@ffwll.ch, mripard@kernel.org, dianders@google.com,
 hsinyi@google.com, awarnecke002@hotmail.com, quic_jesszhan@quicinc.com,
 dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240704072958.27876-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240704072958.27876-4-lvzhaoxiong@huaqin.corp-partner.google.com>
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
In-Reply-To: <20240704072958.27876-4-lvzhaoxiong@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/07/2024 09:29, Zhaoxiong Lv wrote:
> Remove conditional code and always use mipi_dsi_dcs_*multi() wrappers to
> simplify driver's init/enable/exit code.
> 
> Convert the hex in init_code from UPPERCASE to lowercase.
> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
>   .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 143 ++++++++----------
>   1 file changed, 63 insertions(+), 80 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> index 9f225c15b21c..736bfba607cf 100644
> --- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> +++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> @@ -17,11 +17,13 @@
>   #include <drm/drm_modes.h>
>   #include <drm/drm_panel.h>
>   
> +struct boe_th101mb31ig002;
> +
>   struct panel_desc {
>   	const struct drm_display_mode *modes;
>   	unsigned long mode_flags;
>   	enum mipi_dsi_pixel_format format;
> -	const struct panel_init_cmd *init_cmds;
> +	int (*init)(struct boe_th101mb31ig002 *ctx);
>   	unsigned int lanes;
>   };
>   
> @@ -49,74 +51,61 @@ static void boe_th101mb31ig002_reset(struct boe_th101mb31ig002 *ctx)
>   	usleep_range(5000, 6000);
>   }
>   
> -static int boe_th101mb31ig002_enable(struct drm_panel *panel)
> +static int boe_th101mb31ig002_enable(struct boe_th101mb31ig002 *ctx)
>   {
> -	struct boe_th101mb31ig002 *ctx = container_of(panel,
> -						      struct boe_th101mb31ig002,
> -						      panel);
> -	struct mipi_dsi_device *dsi = ctx->dsi;
> -	struct device *dev = &dsi->dev;
> -	int ret;
> -
> -	mipi_dsi_dcs_write_seq(dsi, 0xE0, 0xAB, 0xBA);
> -	mipi_dsi_dcs_write_seq(dsi, 0xE1, 0xBA, 0xAB);
> -	mipi_dsi_dcs_write_seq(dsi, 0xB1, 0x10, 0x01, 0x47, 0xFF);
> -	mipi_dsi_dcs_write_seq(dsi, 0xB2, 0x0C, 0x14, 0x04, 0x50, 0x50, 0x14);
> -	mipi_dsi_dcs_write_seq(dsi, 0xB3, 0x56, 0x53, 0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xB4, 0x33, 0x30, 0x04);
> -	mipi_dsi_dcs_write_seq(dsi, 0xB6, 0xB0, 0x00, 0x00, 0x10, 0x00, 0x10,
> -				    0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xB8, 0x05, 0x12, 0x29, 0x49, 0x48, 0x00,
> -				    0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xB9, 0x7C, 0x65, 0x55, 0x49, 0x46, 0x36,
> -				    0x3B, 0x24, 0x3D, 0x3C, 0x3D, 0x5C, 0x4C,
> -				    0x55, 0x47, 0x46, 0x39, 0x26, 0x06, 0x7C,
> -				    0x65, 0x55, 0x49, 0x46, 0x36, 0x3B, 0x24,
> -				    0x3D, 0x3C, 0x3D, 0x5C, 0x4C, 0x55, 0x47,
> -				    0x46, 0x39, 0x26, 0x06);
> -	mipi_dsi_dcs_write_seq(dsi, 0x00, 0xFF, 0x87, 0x12, 0x34, 0x44, 0x44,
> -				    0x44, 0x44, 0x98, 0x04, 0x98, 0x04, 0x0F,
> -				    0x00, 0x00, 0xC1);
> -	mipi_dsi_dcs_write_seq(dsi, 0xC1, 0x54, 0x94, 0x02, 0x85, 0x9F, 0x00,
> -				    0x7F, 0x00, 0x54, 0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xC2, 0x17, 0x09, 0x08, 0x89, 0x08, 0x11,
> -				    0x22, 0x20, 0x44, 0xFF, 0x18, 0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xC3, 0x86, 0x46, 0x05, 0x05, 0x1C, 0x1C,
> -				    0x1D, 0x1D, 0x02, 0x1F, 0x1F, 0x1E, 0x1E,
> -				    0x0F, 0x0F, 0x0D, 0x0D, 0x13, 0x13, 0x11,
> -				    0x11, 0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xC4, 0x07, 0x07, 0x04, 0x04, 0x1C, 0x1C,
> -				    0x1D, 0x1D, 0x02, 0x1F, 0x1F, 0x1E, 0x1E,
> -				    0x0E, 0x0E, 0x0C, 0x0C, 0x12, 0x12, 0x10,
> -				    0x10, 0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xC6, 0x2A, 0x2A);
> -	mipi_dsi_dcs_write_seq(dsi, 0xC8, 0x21, 0x00, 0x31, 0x42, 0x34, 0x16);
> -	mipi_dsi_dcs_write_seq(dsi, 0xCA, 0xCB, 0x43);
> -	mipi_dsi_dcs_write_seq(dsi, 0xCD, 0x0E, 0x4B, 0x4B, 0x20, 0x19, 0x6B,
> -				    0x06, 0xB3);
> -	mipi_dsi_dcs_write_seq(dsi, 0xD2, 0xE3, 0x2B, 0x38, 0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xD4, 0x00, 0x01, 0x00, 0x0E, 0x04, 0x44,
> -				    0x08, 0x10, 0x00, 0x00, 0x00);
> -	mipi_dsi_dcs_write_seq(dsi, 0xE6, 0x80, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
> -				    0xFF, 0xFF);
> -	mipi_dsi_dcs_write_seq(dsi, 0xF0, 0x12, 0x03, 0x20, 0x00, 0xFF);
> -	mipi_dsi_dcs_write_seq(dsi, 0xF3, 0x00);
> -
> -	ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
> -	if (ret < 0) {
> -		dev_err(dev, "Failed to exit sleep mode: %d\n", ret);
> -		return ret;
> -	}
> -
> -	msleep(120);
> -
> -	ret = mipi_dsi_dcs_set_display_on(dsi);
> -	if (ret < 0) {
> -		dev_err(dev, "Failed to set panel on: %d\n", ret);
> -		return ret;
> -	}
> -
> -	return 0;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0xab, 0xba);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1, 0xba, 0xab);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb1, 0x10, 0x01, 0x47, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb2, 0x0c, 0x14, 0x04, 0x50, 0x50, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb3, 0x56, 0x53, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb4, 0x33, 0x30, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb6, 0xb0, 0x00, 0x00, 0x10, 0x00, 0x10,
> +					       0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb8, 0x05, 0x12, 0x29, 0x49, 0x48, 0x00,
> +					       0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb9, 0x7c, 0x65, 0x55, 0x49, 0x46, 0x36,
> +					       0x3b, 0x24, 0x3d, 0x3c, 0x3d, 0x5c, 0x4c,
> +					       0x55, 0x47, 0x46, 0x39, 0x26, 0x06, 0x7c,
> +					       0x65, 0x55, 0x49, 0x46, 0x36, 0x3b, 0x24,
> +					       0x3d, 0x3c, 0x3d, 0x5c, 0x4c, 0x55, 0x47,
> +					       0x46, 0x39, 0x26, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0xff, 0x87, 0x12, 0x34, 0x44, 0x44,
> +					       0x44, 0x44, 0x98, 0x04, 0x98, 0x04, 0x0f,
> +					       0x00, 0x00, 0xc1);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc1, 0x54, 0x94, 0x02, 0x85, 0x9f, 0x00,
> +					       0x7f, 0x00, 0x54, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc2, 0x17, 0x09, 0x08, 0x89, 0x08, 0x11,
> +					       0x22, 0x20, 0x44, 0xff, 0x18, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc3, 0x86, 0x46, 0x05, 0x05, 0x1c, 0x1c,
> +					       0x1d, 0x1d, 0x02, 0x1f, 0x1f, 0x1e, 0x1e,
> +					       0x0f, 0x0f, 0x0d, 0x0d, 0x13, 0x13, 0x11,
> +					       0x11, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc4, 0x07, 0x07, 0x04, 0x04, 0x1c, 0x1c,
> +					       0x1d, 0x1d, 0x02, 0x1f, 0x1f, 0x1e, 0x1e,
> +					       0x0e, 0x0e, 0x0c, 0x0c, 0x12, 0x12, 0x10,
> +					       0x10, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc6, 0x2a, 0x2a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc8, 0x21, 0x00, 0x31, 0x42, 0x34, 0x16);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xca, 0xcb, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcd, 0x0e, 0x4b, 0x4b, 0x20, 0x19, 0x6b,
> +					       0x06, 0xb3);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd2, 0xe3, 0x2b, 0x38, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd4, 0x00, 0x01, 0x00, 0x0e, 0x04, 0x44,
> +					       0x08, 0x10, 0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe6, 0x80, 0x01, 0xff, 0xff, 0xff, 0xff,
> +					       0xff, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x12, 0x03, 0x20, 0x00, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf3, 0x00);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +
> +	return dsi_ctx.accum_err;
>   }
>   
>   static int boe_th101mb31ig002_disable(struct drm_panel *panel)
> @@ -124,21 +113,15 @@ static int boe_th101mb31ig002_disable(struct drm_panel *panel)
>   	struct boe_th101mb31ig002 *ctx = container_of(panel,
>   						      struct boe_th101mb31ig002,
>   						      panel);
> -	struct mipi_dsi_device *dsi = ctx->dsi;
> -	struct device *dev = &dsi->dev;
> -	int ret;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
>   
> -	ret = mipi_dsi_dcs_set_display_off(dsi);
> -	if (ret < 0)
> -		dev_err(dev, "Failed to set panel off: %d\n", ret);
> +	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
>   
> -	msleep(120);
> +	mipi_dsi_msleep(&dsi_ctx, 120);
>   
> -	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
> -	if (ret < 0)
> -		dev_err(dev, "Failed to enter sleep mode: %d\n", ret);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
>   
> -	return 0;
> +	return dsi_ctx.accum_err;
>   }
>   
>   static int boe_th101mb31ig002_unprepare(struct drm_panel *panel)
> @@ -201,7 +184,7 @@ static const struct panel_desc boe_th101mb31ig002_desc = {
>   	.mode_flags = MIPI_DSI_MODE_VIDEO_BURST |
>   			  MIPI_DSI_MODE_NO_EOT_PACKET |
>   			  MIPI_DSI_MODE_LPM,
> -	.init_cmds = boe_th101mb31ig002_enable,
> +	.init = boe_th101mb31ig002_enable,
>   };
>   
>   static int boe_th101mb31ig002_get_modes(struct drm_panel *panel,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

