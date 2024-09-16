Return-Path: <devicetree+bounces-103122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0057979AA3
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 07:11:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1004C1C209C1
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 05:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D61A17C6C;
	Mon, 16 Sep 2024 05:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g63rxcc6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5F66FDC
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 05:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726463491; cv=none; b=Y3TtWdZ3xkor0RV6bdlns4kBvVKfiJln9P2gWW9vVlSg26CL3p0RMf6kYc8FfZVV/i0aZ3B+8r/6zmPM1wqvLa1Pt+wBnBvPJuinvXCxKPRi0Np429JznixKV0qaq6qY31DHtqoCcVOVysqHJLbdKuARlFDeyORHOTqvHmMEzNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726463491; c=relaxed/simple;
	bh=YGRGCC0OEx1obS/0dhk80ZYpSEy3pP+qpQuAyKAMH7w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AUaKYBarvldEgNgq6xyCWR2+6teRqx8EnwOKPaJobkQLOBxOPooDzo/mlyjV5foYlAglGtOHF8sXLwdqpthhBzuUWnge9ykccnDSd5wH+UAL1xpENGD1HA1HnygG34xuikfWKJ9THf1Ps8UhBkorJlAnTyT++Gotgomrjg0kk2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g63rxcc6; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e05f25fb96eso2323182276.1
        for <devicetree@vger.kernel.org>; Sun, 15 Sep 2024 22:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726463489; x=1727068289; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xClosrKSKvRQXSe4g+NTsfgEyk3rcyU/wxole1yQDT0=;
        b=g63rxcc61ZaIxmf/xIeSjPz+00rAyv3M+6CZ4W6Ra5cUiN5b65mjA/aVTmj13vXJcF
         9u+Ca9S2HiK4453IsHXP8jeeryPErpqdJp7mWBsiRMylaKVdZJB0nKWYFwRjLV1tsJIV
         zmvU8+E57Cabl5+kFciR4FRI5PUlcWOOPHpaCEUty/XHeqQ5QdzOXT/2hFP36R9QQuKS
         ESUxXGu6V0LZPMTbCdDbloRYTHPWfbJrJjRmQE6tu8WbbUulzjp6rH4MaP3fbU/5T3ld
         IL7b8nY2l4gbLOmrRFPRt+HlIPP5P5wDl6yw2GNcwkxCkoY+pCF46aLPbYsCfpMbpMnZ
         mCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726463489; x=1727068289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xClosrKSKvRQXSe4g+NTsfgEyk3rcyU/wxole1yQDT0=;
        b=BOJvnPvcy5sOERCCTu3ttrS7wELLTCCXTQ85EOt3bA8TZLr7gq5+xCXH+ulCZjX+NM
         InM14zBnKlgPwYFE8wQ41ZEQiCV/Ew5CYf2hhcNC87NUA+BXpQIX+BRu1LELgqxJZlY6
         S1zkqfWkL25sfRBLNlZCl5tvKi/fY8E9bTpy0v7GmUKnptyxIpXHRXBqJ5rACDcRBQgF
         zAuOkNUqAknj/pgCeswKWqWDYZ6vMBeEgGN+rPCkDV4UVGpWb0D3RaxZ+108FZOTM/Kj
         EyMhr5BQzTqnQSSQmg2Z3WQkJCv3GXCc6gx0YjhXd1g+fuMFMC7RP3EQyJGxiJevtCrd
         QnTw==
X-Forwarded-Encrypted: i=1; AJvYcCWqVuWaht4EUwGIUhOTjWGA7o/xuURJISy57slEAiPPS+9D6H818GvGf4mfhxUZE7VF1WgrRIBDejgQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzTM1NOVcB6ohFePt06L77bDu/IlmNUL8/xpwngRptYCgZqErPT
	Hkde3ph647mw0E9K/FuPWb8WPiyFXEF4X/0diP0YiWCwu2HZqLk/OyAU7G7F+cdQ5eFauJlXCh0
	vjNZNrLden4vDgQ+ODZ4aNOoNiIKOpeGInmUX2w==
X-Google-Smtp-Source: AGHT+IHw0+9JwP/NwY/8uibNHIFwJiOUTZZF4F6o99jcFoo8qq9n9ykue29sInrAe1E0S1koV97Qqsuk5tzD/GYpnQE=
X-Received: by 2002:a05:690c:4a10:b0:6d3:be51:6d03 with SMTP id
 00721157ae682-6dbcc3b3a4cmr89104197b3.23.1726463489085; Sun, 15 Sep 2024
 22:11:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240915080830.11318-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240915080830.11318-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240915080830.11318-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 16 Sep 2024 07:11:17 +0200
Message-ID: <CAA8EJpp1ZHFFY9M3i47d658Q-m3ggJzhxSRUapX=tckgdAwcNg@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] drm/panel: jd9365da: Modify Kingdisplay and Melfas
 panel timing
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, dianders@chromium.org, hsinyi@google.com, 
	awarnecke002@hotmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 15 Sept 2024 at 10:10, Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> In order to meet the timing, remove the delay between "backlight off"
> and "display off"
>
> Removing variables: display_off_to_enter_sleep_delay_ms

This is not enough. If this is a fix, then describe why the original
commit is incorrect, provide necessary explanation, details, etc.
Otherwise it looks as if you are removing the delay that was necessary
for other panels

Also if this is a fix, it should be properly notated with the Fixes
tag, maybe cc:stable, etc.

In its current state: NAK.

>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> index 44897e5218a6..2f8af86bc2a0 100644
> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> @@ -31,7 +31,6 @@ struct jadard_panel_desc {
>         bool reset_before_power_off_vcioo;
>         unsigned int vcioo_to_lp11_delay_ms;
>         unsigned int lp11_to_reset_delay_ms;
> -       unsigned int backlight_off_to_display_off_delay_ms;
>         unsigned int display_off_to_enter_sleep_delay_ms;
>         unsigned int enter_sleep_to_reset_down_delay_ms;
>  };
> @@ -69,9 +68,6 @@ static int jadard_disable(struct drm_panel *panel)
>         struct jadard *jadard = panel_to_jadard(panel);
>         struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
>
> -       if (jadard->desc->backlight_off_to_display_off_delay_ms)
> -               mipi_dsi_msleep(&dsi_ctx, jadard->desc->backlight_off_to_display_off_delay_ms);
> -
>         mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
>
>         if (jadard->desc->display_off_to_enter_sleep_delay_ms)
> @@ -858,7 +854,6 @@ static const struct jadard_panel_desc kingdisplay_kd101ne3_40ti_desc = {
>         .reset_before_power_off_vcioo = true,
>         .vcioo_to_lp11_delay_ms = 5,
>         .lp11_to_reset_delay_ms = 10,
> -       .backlight_off_to_display_off_delay_ms = 100,
>         .display_off_to_enter_sleep_delay_ms = 50,
>         .enter_sleep_to_reset_down_delay_ms = 100,
>  };
> @@ -1109,7 +1104,6 @@ static const struct jadard_panel_desc melfas_lmfbx101117480_desc = {
>         .reset_before_power_off_vcioo = true,
>         .vcioo_to_lp11_delay_ms = 5,
>         .lp11_to_reset_delay_ms = 10,
> -       .backlight_off_to_display_off_delay_ms = 100,
>         .display_off_to_enter_sleep_delay_ms = 50,
>         .enter_sleep_to_reset_down_delay_ms = 100,
>  };
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

