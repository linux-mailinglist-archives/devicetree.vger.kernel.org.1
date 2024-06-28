Return-Path: <devicetree+bounces-81219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8D591B9F5
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:32:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FE3E285B34
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF0FA1487EB;
	Fri, 28 Jun 2024 08:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RLUxMRQN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A71A13E037
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719563527; cv=none; b=Fh01DAtI+yy6dCbcP54uR72iKnVD1itz/Kww+hp4wDMwzqdf3jmiFOQptMKHHcmMqIrWyzBwXvkZxLgmNWYhRj0eKmtFkHkxj56PROun0eD8YSlKJidUfH3a4IcmjMCWEgjZJk0YSni0EA0hB44ynGc6Q8Eam2kw2qBnMT/3Upc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719563527; c=relaxed/simple;
	bh=R/IKZUyHJkmQBWXAJ2y4wv304Y6mj1h/EE32OaJRScU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=FivZHdDFbtlQnPVWtZ8GPYE4Y/7rImucsFAIFR95e7b7dwViPdyFcaffDt8/EZ+e+pUzNEcD1HXciHjdSvRb66vZynC18LIlOT67ZouGsBCpc0xJ3WFELEaUSFzEvZ3MKxaLWFl2wLsVTCq/CL5IwrlBqGA1nAgLCnxSABRcgCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RLUxMRQN; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-424acf3226fso3234545e9.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719563524; x=1720168324; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o9VddeSBnAE0Y/gMNE4L+QxF6j7c7kRvrL+ABvbV1+8=;
        b=RLUxMRQNOloLNJCvh74MD3U0QbDl72uCx4CQjuwEcGqMYXf04VQiXjxjddbHweyFN6
         tkm0TybrfeZVW4uQEL82mf+d0yx6b18BYPptS7qBa0u8veZktqKaXxbTFkdsbBHukbfj
         UASwvMioM+9Fs+2u+Lspt+E2H60kusis2zXi+TdEAL4bTAkHFvnOyByYIAxsQrGYVT1e
         ARy3ILHFOlbF3zEyeGInPU0QxeQSCKLoL3fxntES/wvdy92JvQXFnTxfQIHHTrwhQs2i
         ZB4oDGzmPdg1uGUxJw4XDLuEJoTTsthUbht4B3E686PYg8ddJ1je/bVEYo2XP7JdOKhS
         yrDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719563524; x=1720168324;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o9VddeSBnAE0Y/gMNE4L+QxF6j7c7kRvrL+ABvbV1+8=;
        b=I2VTpvncNeYAiUG+oCqSYm/sm5JwikbVNgYjHnC7MYr3SBKJ5dRYRuC1UV1SL+/4vm
         uXfy02vGNjbiU7EXFd2xRStezqnRHNxeh5cARBgAcL0ZVMq70jMobHVtBQ2Hlzp0VqcT
         ff+yAGk0RqLddKCIr25Vw5FIm8qwho4R4mVw5E5e2A2XFtdTgBOg5iYmcxP42XBIr4mx
         3izdeZwBGn+/IzM5HeHF1DtohO+mCxec5Dj5N7xmop4/QIzltEG8f0kAgBem5EXLl9N6
         iOsX3ekcqhsGwDj+Ouqv1htDqQZJHDtP9pBsRoHPSF3TovzvNoEEEJGgxSNGu7Cy4P6t
         Dv0g==
X-Forwarded-Encrypted: i=1; AJvYcCWTt0q4LixaynnnjaiYI9nXHDl6l17m3vOtuzcNsxZvhqnlu5KsFHWEYSmftCkTbY6UqzarpA9U/7Y92ojojC0uiA7TiwOOMrOLQg==
X-Gm-Message-State: AOJu0YxTwoApskQibX0eU8dueZ5c4miCl5KEaLFDUMt7B3/sHthhdyqs
	vMmQqp/XfuGO+Ea52W491u1L2r11PU4mI066gxkwduJOf/IITLSd8ogNujOuX34=
X-Google-Smtp-Source: AGHT+IHHWKpRIqtuQcBqpGdo/JErAvQTpa9EzNpG7QBgw6TAgvirup9kqiDudYm11M3Woie7zAqR3Q==
X-Received: by 2002:adf:f182:0:b0:362:a01:5f1 with SMTP id ffacd0b85a97d-366e9630071mr9887859f8f.70.1719563524186;
        Fri, 28 Jun 2024 01:32:04 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b17d:324d:ca1:ab31? ([2a01:e0a:982:cbb0:b17d:324d:ca1:ab31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0e1688sm1545513f8f.60.2024.06.28.01.32.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 01:32:03 -0700 (PDT)
Message-ID: <4ae1eed0-ed47-4a3c-b8fd-efe706dca743@linaro.org>
Date: Fri, 28 Jun 2024 10:32:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 1/5] drm/panel: jd9365da: Modify the method of sending
 commands
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>,
 dmitry.torokhov@gmail.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org,
 benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com,
 jagan@edgeble.ai, quic_jesszhan@quicinc.com, dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com>
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
In-Reply-To: <20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 24/06/2024 16:19, Zhaoxiong Lv wrote:
> Currently, the init_code of the jd9365da driver is placed
> in the enable() function and sent, but this seems to take
> a long time. It takes 17ms to send each instruction (an init
> code consists of about 200 instructions), so it takes
> about 3.5s to send the init_code. So we moved the sending
> of the inti_code to the prepare() function, and each
> instruction seemed to take only 25μs.
> 
> We checked the DSI host and found that the difference in
> command sending time is caused by the different modes of
> the DSI host in prepare() and enable() functions.
> Our DSI Host only supports sending cmd in LP mode, The
> prepare() function can directly send init_code (LP->cmd)
> in LP mode, but the enable() function is in HS mode and
> needs to switch to LP mode before sending init code
> (HS->LP->cmd->HS). Therefore, it takes longer to send
> the command.
> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> Changes between V5 and V4:
> - 1. No changes.
> 
> V4:https://lore.kernel.org/all/20240620080509.18504-2-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> Changes between V4 and V3:
> - 1. Only move mipi_dsi_dcs_write_buffer from enable() function to prepare() function,
> -    and no longer use mipi_dsi_dcs_write_seq_multi.
> 
> V3:https://lore.kernel.org/all/20240614145510.22965-2-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> ---
>   .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 24 +++++++++----------
>   1 file changed, 11 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> index 4879835fe101..a9c483a7b3fa 100644
> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> @@ -52,21 +52,9 @@ static int jadard_enable(struct drm_panel *panel)
>   {
>   	struct device *dev = panel->dev;
>   	struct jadard *jadard = panel_to_jadard(panel);
> -	const struct jadard_panel_desc *desc = jadard->desc;
>   	struct mipi_dsi_device *dsi = jadard->dsi;
> -	unsigned int i;
>   	int err;
>   
> -	msleep(10);
> -
> -	for (i = 0; i < desc->num_init_cmds; i++) {
> -		const struct jadard_init_cmd *cmd = &desc->init_cmds[i];
> -
> -		err = mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD9365DA_INIT_CMD_LEN);
> -		if (err < 0)
> -			return err;
> -	}
> -
>   	msleep(120);
>   
>   	err = mipi_dsi_dcs_exit_sleep_mode(dsi);
> @@ -100,6 +88,8 @@ static int jadard_disable(struct drm_panel *panel)
>   static int jadard_prepare(struct drm_panel *panel)
>   {
>   	struct jadard *jadard = panel_to_jadard(panel);
> +	const struct jadard_panel_desc *desc = jadard->desc;
> +	unsigned int i;
>   	int ret;
>   
>   	ret = regulator_enable(jadard->vccio);
> @@ -117,7 +107,15 @@ static int jadard_prepare(struct drm_panel *panel)
>   	msleep(10);
>   
>   	gpiod_set_value(jadard->reset, 1);
> -	msleep(120);
> +	msleep(130);
> +
> +	for (i = 0; i < desc->num_init_cmds; i++) {
> +		const struct jadard_init_cmd *cmd = &desc->init_cmds[i];
> +
> +		ret = mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD9365DA_INIT_CMD_LEN);
> +		if (ret < 0)
> +			return ret;
> +	}
>   
>   	return 0;
>   }

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

