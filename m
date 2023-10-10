Return-Path: <devicetree+bounces-7384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9E37C0422
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:11:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09167281B72
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 555CC3AC1C;
	Tue, 10 Oct 2023 19:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="clPYmi4b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9817D8BFA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:11:05 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A54B493
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:11:03 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4063bfc6c03so16265e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696965062; x=1697569862; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IpCceZmbnmWfyUfaN7Neh9lmGF2UPo2D6Q93y/7mO30=;
        b=clPYmi4bfa2GBtpQG+0By9pEIOLD6un0Os2EGQ/RTcumnHXAZKexwRdJa0Y98nV2TZ
         ZkM5zofCAjupda7/yCbxK+KmigzYeRsC/ZPBvBaGNqxD0p+GB3IQNLKU5lOUdx75VtvV
         ENKns2Q/pLLw89Gm5r2KS52PbeLm8zdcGqNbEBKF63eDYpBJ+N3pHNwjxmEg4tofOvSW
         IkFZA0Y+hvHMr9oiwxzeQwhl9NjPlGdZkd5WbWAcBcmzVkQm5WitBg0+JR9FDWvr07I2
         IM/FJtAxo9e8em7cgAbN5Ba746Zb6/Mbqyw4NnN+xqkHOnHLMX/GVVy1ZgszgtrKMGOL
         2BZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696965062; x=1697569862;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IpCceZmbnmWfyUfaN7Neh9lmGF2UPo2D6Q93y/7mO30=;
        b=JOYJMlVk6kXkLIWjegLwWtbj+ED7j7pNmdIRHbH4dR18pChOIa6LEcbreZ7xA11yBS
         1+znqfg0MiapEhX5/xpTWDyzMmpbbpzeBtoH986KNhVPvfLtX5IKLNTDZw8LF//xKem9
         ioRixDDIISk3md0V0Dr+KAnag77pesTij7Rphza6hXloQVf17omw6/au9XVbTRzzJY95
         Uogx1A7Wj5/8rF/0hP7YOmNx2ksydmd5JVe69R1vPfJqYTfQxkkEjc/ZbwPoLwv20Sn4
         BWteTB8OLH8ln4ya9fhujXJtKL9UOYfGS8ngT4HNKZPc7kDiri+OciHgo6HE0gJlpPoC
         i5qQ==
X-Gm-Message-State: AOJu0Yx+aaLVDMcd4LvpML57AEKiD/Fw7KuQIQt67s2N7P0R0j7nATxo
	StOlzUGYHoqwnsHBKa2jUeNz1vJriOStWFgPWUefhQ==
X-Google-Smtp-Source: AGHT+IGyHcc065zalL/uMb2Rg27kWBnlQyHv0EoUM7psUnegw6ZMk2u3/+9u8kfQGzLaQsojexxvzbM0/ypCwMkEx8M=
X-Received: by 2002:a05:600c:1f8e:b0:400:fffe:edf6 with SMTP id
 je14-20020a05600c1f8e00b00400fffeedf6mr23995wmb.1.1696965061918; Tue, 10 Oct
 2023 12:11:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010121402.3687948-1-yangcong5@huaqin.corp-partner.google.com>
 <20231010121402.3687948-2-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231010121402.3687948-2-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Tue, 10 Oct 2023 12:10:45 -0700
Message-ID: <CAD=FV=VsjB-gsqXyAs+G8DpHJqHNTxeFXwbpgt20-Wgb757z1w@mail.gmail.com>
Subject: Re: [v2 1/3] drm/panel: ili9882t: Break out as separate driver
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Oct 10, 2023 at 5:14=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/gpu/=
drm/panel/panel-ilitek-ili9882t.c
> new file mode 100644
> index 000000000000..e095ad91c4bc
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> @@ -0,0 +1,762 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Panels based on the Ilitek ILI9882T display controller.
> + */
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>

nit: remove include of linux/of_device.h since you don't use any of
the functions declared there.


> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/drm_connector.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_panel.h>
> +
> +#include <video/mipi_display.h>
> +
> +/*
> + * Use this descriptor struct to describe different panels using the
> + * Ilitek ILI9882T display controller.
> + */
> +struct panel_desc {
> +       const struct drm_display_mode *modes;
> +       unsigned int bpc;
> +
> +       /**
> +        * @width_mm: width of the panel's active display area
> +        * @height_mm: height of the panel's active display area
> +        */
> +       struct {
> +               unsigned int width_mm;
> +               unsigned int height_mm;
> +       } size;
> +
> +       unsigned long mode_flags;
> +       enum mipi_dsi_pixel_format format;
> +       const struct panel_init_cmd *init_cmds;
> +       unsigned int init_cmd_length;

Remove "init_cmd_length" since it's now unused.


> +static void ili9882t_remove(struct mipi_dsi_device *dsi)
> +{
> +       struct ili9882t *ili =3D mipi_dsi_get_drvdata(dsi);
> +       int ret;
> +
> +
> +       ret =3D mipi_dsi_detach(dsi);

nit: remove extra blank line above.


Other than nits, this looks good to me now.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

