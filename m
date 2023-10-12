Return-Path: <devicetree+bounces-8192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 780797C7130
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:15:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A43A11C20A50
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85866266D9;
	Thu, 12 Oct 2023 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wCsYpb+1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D324266CE
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:15:51 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F325C9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:15:49 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5068b69f4aeso5001e87.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697123747; x=1697728547; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WDm03tbPxIT0QGcdFVM1esLuIKdKzQrObVrEEj/6HeY=;
        b=wCsYpb+1WEEWnbhfMzlQL2Da5bi8igAJYbzwI9nzHI5gFerlw2B7obhmraZlCv5H4K
         uutAUOIxLuURMmje2p1xKla8bzcrkeZZpXqqy35tmCkjAbj5aT2+IepoBgIUuEFfu5O/
         7eLvWGeXbT21T0YXDZabKv4d3dl+u0tTS742n0Avkrtzo+QwXlnnw6GRFa3R2favlkvm
         EXmOOmLKMtMGsMILSCWL3VWIoHPHKRoBsW3ZT9WTqIupFMGCjF131h0jgE/UnFJYeb2m
         f+EXLrvOS8ANkDAEvfGFH/t5lUAzMcNSQz/ekHmRBn0jG/cpUoK3zgnv4sTjh1a6gtei
         mKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697123747; x=1697728547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WDm03tbPxIT0QGcdFVM1esLuIKdKzQrObVrEEj/6HeY=;
        b=VSAEg91/r0nZ+vQ1PajBuxE+ebGMePqtaaJCJTrgOJzHsbwCxM02MX7QBzvyZGs01T
         UWTlHLqbl6IN9NsluTP7hZf6EHR8z4+YvAbj8LczHptQAZF/wha29UW4GkOBCm3yur2I
         0MeddcVj+mE+a8O9xSgiw4YEdbBGorCDo/hjuc49XTVSutEgSXJpppeD0LRngAnbqbkH
         n2qpWxS2q+EOk5JzYjynHlAVtWaVbyVxIHAJsD2XbyM2m2ZnJme6ekQ7kP1tnKyotIyD
         xK2zli9aP+JlaLmQULZVfCt/hWdWrvwTST04QPNMHjEB9JmzkG09PX3ZGiaafWkX02La
         eu1g==
X-Gm-Message-State: AOJu0Yzod3+SMp/d60t1c9ZHei25ch5kif6z8JNzXQdTinGr4pF7ZUQD
	IgnKHPh45flideWxfL+UD2xmjRu6dMej7gq/rrQsrQ==
X-Google-Smtp-Source: AGHT+IHHqpNk40g2RjFLWXJqCM+SrOl6/nUGrqlwoOct5RnINpCVGcxlf2fuOuGr7mEG7vCf8J+GfWVR7r/yc7HI5eQ=
X-Received: by 2002:a19:ad41:0:b0:501:ba53:a4f7 with SMTP id
 s1-20020a19ad41000000b00501ba53a4f7mr199955lfd.0.1697123747342; Thu, 12 Oct
 2023 08:15:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012121004.2127918-1-yangcong5@huaqin.corp-partner.google.com>
 <20231012121004.2127918-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231012121004.2127918-3-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 12 Oct 2023 08:15:32 -0700
Message-ID: <CAD=FV=VwUHctAQXGr_6FZfTS3r0-MZaSiB8+YkfJJzrJsnZDLw@mail.gmail.com>
Subject: Re: [v3 2/3] drm/panel: ili9882t: Avoid blurred screen from fast sleep
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
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Thu, Oct 12, 2023 at 5:10=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> At present, we have found that there may be a problem of blurred
> screen during fast sleep/resume. The direct cause of the blurred
> screen is that the IC does not receive 0x28/0x10. Because of the
> particularity of the IC, before the panel enters sleep hid must
> stop scanning, as i2c_hid_core_suspend before ili9882t_disable.
> If move the ili9882t_enter_sleep_mode function to ili9882t_unprepare,
> touch reset will pull low before panel entersleep, which does not meet
> the timing requirements..

The above makes me believe that the reset GPIO should be moved out of
the input driver and into the panel driver. I could just imagine that
the kernel might have some reason it wants to suspend the i2c hid
device. If that causes the panel to suddenly start failing then that
would be bad... I think we should fix this.


> So in order to solve this problem, the IC
> can handle it through the exception mechanism when it cannot receive
> 0x28/0x10 command. Handling exceptions requires a reset 50ms delay.
> Refer to vendor detailed analysis [1].
>
> Ilitek vendor also suggested switching the page before entering sleep to
> avoid panel IC not receiving 0x28/0x10 command.
>
> Note: 0x28 is display off, 0x10 is sleep in.
>
> [1]: https://github.com/ILITEK-LoganLin/Document/tree/main/ILITEK_Power_S=
equence
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/gpu/=
drm/panel/panel-ilitek-ili9882t.c
> index 93a40c2f1483..54ff1efb94aa 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> @@ -463,6 +463,24 @@ static int ili9882t_init_dcs_cmd(struct ili9882t *il=
i)
>         return 0;
>  }
>
> +static int ili9882t_switch_page(struct mipi_dsi_device *dsi, u8 page)
> +{
> +       int ret;
> +       const struct panel_init_cmd cmd =3D _INIT_SWITCH_PAGE_CMD(page);
> +
> +       ret =3D mipi_dsi_dcs_write(dsi, cmd.data[0],
> +                                cmd.len <=3D 1 ? NULL :
> +                                &cmd.data[1],
> +                                cmd.len - 1);
> +       if (ret) {
> +               dev_err(&dsi->dev,
> +                       "error switching panel controller page (%d)\n", r=
et);
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +
>  static int ili9882t_enter_sleep_mode(struct ili9882t *ili)
>  {
>         struct mipi_dsi_device *dsi =3D ili->dsi;
> @@ -484,8 +502,10 @@ static int ili9882t_enter_sleep_mode(struct ili9882t=
 *ili)
>  static int ili9882t_disable(struct drm_panel *panel)
>  {
>         struct ili9882t *ili =3D to_ili9882t(panel);
> +       struct mipi_dsi_device *dsi =3D ili->dsi;
>         int ret;
>
> +       ili9882t_switch_page(dsi, 0x00);
>         ret =3D ili9882t_enter_sleep_mode(ili);
>         if (ret < 0) {
>                 dev_err(panel->dev, "failed to set panel off: %d\n", ret)=
;
> @@ -546,7 +566,7 @@ static int ili9882t_prepare(struct drm_panel *panel)
>         gpiod_set_value(ili->enable_gpio, 1);
>         usleep_range(1000, 2000);
>         gpiod_set_value(ili->enable_gpio, 0);
> -       usleep_range(1000, 2000);
> +       usleep_range(50000, 51000);

From my previous response, I think the above is better as msleep(50).

