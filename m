Return-Path: <devicetree+bounces-21163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AAF802942
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 00:53:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F2C81F20EFD
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 23:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59BF1C2BE;
	Sun,  3 Dec 2023 23:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eOK/WAFv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7582CF
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 15:53:04 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5cece20f006so45821647b3.3
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 15:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701647584; x=1702252384; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=umHKCdd8mcaMX1GrRwwQrr+KtgCj3XsjoFuYSfy+SGo=;
        b=eOK/WAFv4VRuSLoWroRAGmnRObAqSQaenlGaAcMtBvIp8rz2/tOJy9uh08kfsh2MkJ
         gVO51a16V0t5gziTHKoj9phNk3E2Wvfuo7Js39IzdH4dufUGTAV0c17T47aokGRsrRV9
         auf7JiRUOdMVnEhGumMBiFwpw+peRc+3t85XdPQxHmOzSUabniZqNWyEDHNv/fkUrNZz
         m6CFhPKAuGIbY8G5+tCQ+3GiWHY+uLjzw3JQlOd7S0kzfGg9zcH6MgXmi4gPki6AjcWo
         5gvyk8BaxHv4Mzz6pV8EmK9Kf+8dGUS0v48THN2s2OGkEZQmEiqI0G6JKXPabmXvBKHK
         N7gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701647584; x=1702252384;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=umHKCdd8mcaMX1GrRwwQrr+KtgCj3XsjoFuYSfy+SGo=;
        b=V5XggoX14amewsMhMECdkeFYazbDjSkIQBBljlMDcvlQLR2CULuLg81XMSQci34bM1
         JV6N0cwNC1x4ZM7vmLKSsYa6VcwlldyYHkkeXl+jCQhRz56FqYDen1GR6gJ9FmmAEP3W
         Q0PzocX9icHW/TN0aYr7eYflafDxaq37FTK830jXJB7DYcXuCjhCoG9fZT0acdn2trvU
         POlDJxicny5zSBfNRInhzqp0AVmbJp77OS2SseAF4KxI+d5WZcUuRUJnZGcGpdQ+ZgVQ
         yeAgSUnIRTY9KV/Iip2FnDfrMy4zvTDQXkApvk/vCu8/Jc2tJIKPQoDahwAjVnocKGQx
         MG2g==
X-Gm-Message-State: AOJu0YwzqCmeYIOgsVbu8NZyOw9C/d5BGWxem76TtNDlM07jmrrkTlo1
	jzMMLHUu2tRxrogeb2iXx9LfHzm++3jY4URvitqxqQ==
X-Google-Smtp-Source: AGHT+IFmccx32ByjNTrdogvzC+AYsxYTd8jOVha5RXT2AcnbmFOc+mBkdHRAInGNYkRIvCOiLQkDz2eXKBLiKTaIcFM=
X-Received: by 2002:a05:690c:4510:b0:5d3:4ef0:8be with SMTP id
 gt16-20020a05690c451000b005d34ef008bemr586519ywb.37.1701647584084; Sun, 03
 Dec 2023 15:53:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231202075514.44474-1-tony@atomide.com> <20231202075514.44474-10-tony@atomide.com>
In-Reply-To: <20231202075514.44474-10-tony@atomide.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Dec 2023 01:52:52 +0200
Message-ID: <CAA8EJppYoBxYaFnu7UHxCgNiRwcjmVgPXXcQboaeu_dGCosJXg@mail.gmail.com>
Subject: Re: [PATCH v2 09/10] drm/bridge: tc358775: Add support for tc358765
To: Tony Lindgren <tony@atomide.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Simha BN <simhavcs@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Carl Philipp Klemm <philipp@uvos.xyz>, devicetree@vger.kernel.org, 
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>, Merlijn Wajer <merlijn@wizzup.org>, 
	Sebastian Reichel <sre@kernel.org>, dri-devel@lists.freedesktop.org, 
	Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="UTF-8"

On Sat, 2 Dec 2023 at 10:04, Tony Lindgren <tony@atomide.com> wrote:
>
> The tc358775 bridge is pin compatible with earlier tc358765 according to
> the tc358774xbg_datasheet_en_20190118.pdf documentation. Compared to the
> tc358765, the tc358775 supports a STBY GPIO and higher data rates.
>
> The tc358765 has a register bit for video event mode vs video pulse mode.
> We must set it to video event mode for the LCD output to work, and on the
> tc358775, this bit no longer exists.
>
> Looks like the registers seem to match otherwise based on a quick glance
> comparing the defines to the earlier Android kernel tc358765 driver.
>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 26 ++++++++++++++++++++++----
>  1 file changed, 22 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
> --- a/drivers/gpu/drm/bridge/tc358775.c
> +++ b/drivers/gpu/drm/bridge/tc358775.c
> @@ -15,6 +15,7 @@
>  #include <linux/kernel.h>
>  #include <linux/media-bus-format.h>
>  #include <linux/module.h>
> +#include <linux/of_device.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/slab.h>
>
> @@ -107,6 +108,7 @@
>  #define RDPKTLN         0x0404  /* Command Read Packet Length */
>
>  #define VPCTRL          0x0450  /* Video Path Control */
> +#define EVTMODE                BIT(5)  /* Video event mode enable, tc35876x only */
>  #define HTIM1           0x0454  /* Horizontal Timing Control 1 */
>  #define HTIM2           0x0458  /* Horizontal Timing Control 2 */
>  #define VTIM1           0x045C  /* Vertical Timing Control 1 */
> @@ -254,6 +256,11 @@ enum tc358775_ports {
>         TC358775_LVDS_OUT1,
>  };
>
> +enum tc3587x5_type {
> +       TC358765,

I'd suggest adding = 1 or =0x65 so that the specified type differs
from 'no data' = 0 / NULL.

> +       TC358775,
> +};
> +
>  struct tc_data {
>         struct i2c_client       *i2c;
>         struct device           *dev;
> @@ -271,6 +278,8 @@ struct tc_data {
>         struct gpio_desc        *stby_gpio;
>         u8                      lvds_link; /* single-link or dual-link */
>         u8                      bpc;
> +
> +       enum tc3587x5_type      type;
>  };
>
>  static inline struct tc_data *bridge_to_tc(struct drm_bridge *b)
> @@ -424,10 +433,16 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
>         d2l_write(tc->i2c, PPI_STARTPPI, PPI_START_FUNCTION);
>         d2l_write(tc->i2c, DSI_STARTDSI, DSI_RX_START);
>
> +       /* Video event mode vs pulse mode bit, does not exist for tc358775 */
> +       if (tc->type == TC358765)
> +               val = EVTMODE;
> +       else
> +               val = 0;
> +
>         if (tc->bpc == 8)
> -               val = TC358775_VPCTRL_OPXLFMT(1);
> +               val |= TC358775_VPCTRL_OPXLFMT(1);
>         else /* bpc = 6; */
> -               val = TC358775_VPCTRL_MSF(1);
> +               val |= TC358775_VPCTRL_MSF(1);
>
>         dsiclk = mode->crtc_clock * 3 * tc->bpc / tc->num_dsi_lanes / 1000;
>         clkdiv = dsiclk / (tc->lvds_link == DUAL_LINK ? DIVIDE_BY_6 : DIVIDE_BY_3);
> @@ -643,6 +658,7 @@ static int tc_probe(struct i2c_client *client)
>
>         tc->dev = dev;
>         tc->i2c = client;
> +       tc->type = (enum tc3587x5_type)of_device_get_match_data(dev);

Would it make sense to use i2c_get_match_data() instead?

>
>         tc->panel_bridge = devm_drm_of_get_bridge(dev, dev->of_node,
>                                                   TC358775_LVDS_OUT0, 0);
> @@ -704,13 +720,15 @@ static void tc_remove(struct i2c_client *client)
>  }
>
>  static const struct i2c_device_id tc358775_i2c_ids[] = {
> -       { "tc358775", 0 },
> +       { "tc358765", TC358765, },
> +       { "tc358775", TC358775, },
>         { }
>  };
>  MODULE_DEVICE_TABLE(i2c, tc358775_i2c_ids);
>
>  static const struct of_device_id tc358775_of_ids[] = {
> -       { .compatible = "toshiba,tc358775", },
> +       { .compatible = "toshiba,tc358765", .data = (void *)TC358765, },
> +       { .compatible = "toshiba,tc358775", .data = (void *)TC358775, },
>         { }
>  };
>  MODULE_DEVICE_TABLE(of, tc358775_of_ids);
> --
> 2.43.0



-- 
With best wishes
Dmitry

