Return-Path: <devicetree+bounces-7035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AC37BEBDE
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:44:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 240D31C209B6
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381E1200A6;
	Mon,  9 Oct 2023 20:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="NNPOs0ua"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B9C1F93E
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 20:44:50 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C45BBA
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:44:48 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-537f07dfe8eso20152a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 13:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696884287; x=1697489087; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FuJB1ifIzrcQ2ihsDfUK191dfHIspn0SStDEZitDuls=;
        b=NNPOs0uaFb/A0JzPMimeoKSm/YX/mUL7nMW5OAWIw1rrZ9E1p9ou2zdqLo+UMG7d8H
         EH3J0PkHc4okQbQt+oo4vTuZnaDdC2Jd7ZW6sXkkS31aFXX062N48i4jimWlI/q4iyxb
         qXAJlNQG4baUuh2K3gMQzDLbzQvoJPEQ/R6jHnSSNSZ5OrmRP1klLZ5V9mZkQDmsNA9V
         n4QM4aCGfHAYq0zAXw5fORIuSRoWAgDaLksGeIu0piBO31YacnN90bVb2Giqf9os+xSA
         5IEYDxTC0sP9+NLYXhUln5e/msmh+jeBaJElSIzixEuye70quuuR9Zl9qNRd+uF4cVED
         eseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696884287; x=1697489087;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FuJB1ifIzrcQ2ihsDfUK191dfHIspn0SStDEZitDuls=;
        b=CX8x9vtunU65ANXu7P9jHTr7NPNyHx2urh0r8mOuWoE16fFzrmuJl6KzvErnR46sn+
         L7F/DABNdCVRQSPbnPl9YPlZQIoynFQwnlKnXf56eoQ67QiaEtoGZc2dHXOs5VLThBRv
         mp4fNaMA9SN9v3QF97rYNeJgdzwIAWzDZOY+ElsztrL0RzredR+Hs0lK0eWDpSCcByhM
         Yhvvf54M3uyCIafsz2WOoh66XBlMF5JuTHqS6QMlNEZfnScogwxGVAQdKQ8Am6OA/y8e
         8JKkC5usoBj8VXagpNFSAwgQoIdUH5A1Q3DJpWeo3ZYctsuGwkeseBSSKsB6cp9iPuDg
         9Exw==
X-Gm-Message-State: AOJu0YwRRmQ5gjPrk0/4d03K4Tv0IDiBdriXnZqJ/JcHl/aakvLovO85
	yt2ByCw6Q/pUxO3yT7ThDjhMzw35ggqcw3jDydHlng==
X-Google-Smtp-Source: AGHT+IEqu4TY4aF2yT/aGnWd/fkQnL4QPiCCadQ30jdAb0NNju+Ea2/clODYa4Etdmm3fFqOfP8O4uMzkqNJM8wunjg=
X-Received: by 2002:a50:bb67:0:b0:519:7d2:e256 with SMTP id
 y94-20020a50bb67000000b0051907d2e256mr411821ede.0.1696884286810; Mon, 09 Oct
 2023 13:44:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com> <20231007060639.725350-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231007060639.725350-3-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 9 Oct 2023 13:44:34 -0700
Message-ID: <CAD=FV=W3ef3vWrWRDPKgeUjcapEticj4=EWdC-bOb=ph0DShsA@mail.gmail.com>
Subject: Re: [v1 2/2] drm/panel: ili9882t: Avoid blurred screen from fast sleep
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Fri, Oct 6, 2023 at 11:07=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> At present, we have found that there may be a problem of blurred
> screen during fast sleep/resume. The direct cause of the blurred
> screen is that the IC does not receive 0x28/0x10. Because of the
> particularity of the IC, before the panel enters sleep hid must
> stop scanning, i2c_hid_core_suspend before ili9882t_disable.
> This doesn't look very spec-compliant.

Presumably you could be more spec compliant if we used
"panel_follower" in this case? Would that be a better solution?


> So in order to solve this
> problem, the IC can handle it through the exception mechanism when
> it cannot receive 0X28/0X10 command. Handling exceptions requires a reset
> 50ms delay. Refer to vendor detailed analysis [1].
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
>  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/gpu/=
drm/panel/panel-ilitek-ili9882t.c
> index bbfcffe65623..0a1dd987b204 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> @@ -423,6 +423,23 @@ static inline struct ili9882t *to_ili9882t(struct dr=
m_panel *panel)
>         return container_of(panel, struct ili9882t, base);
>  }
>
> +static int ili9882t_switch_page(struct mipi_dsi_device *dsi, u8 page)
> +{
> +       u8 switch_cmd[] =3D {0x98, 0x82, 0x00};

Can't you just replace the last 0x00 above with "page" and get rid of
the manual assignment below?


> +       int ret;
> +
> +       switch_cmd[2] =3D page;
> +
> +       ret =3D mipi_dsi_dcs_write(dsi, ILI9882T_DCS_SWITCH_PAGE, switch_=
cmd, 3);

Instead of hardcoding 3, should use ARRAY_SIZE().


> +       if (ret) {
> +               dev_err(&dsi->dev,
> +                       "error switching panel controller page (%d)\n", r=
et);
> +               return ret;
> +       }
> +
> +       return 0;
> +}

optional: It feels like it would be nice to somehow use the
"_INIT_SWITCH_PAGE_CMD" macro I suggested in patch #1 instead of
having to hardcode 0x98, 0x82 again. In patch #1 I already suggested
breaking out the function to send a sequence of commands. If you had
that function take a pointer instead of hardcoding it to look at
->init_cmds then you could probably use the same function that you do
at init time?


>  static int ili9882t_enter_sleep_mode(struct ili9882t *ili)
>  {
>         struct mipi_dsi_device *dsi =3D ili->dsi;
> @@ -444,8 +461,10 @@ static int ili9882t_enter_sleep_mode(struct ili9882t=
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
> @@ -507,7 +526,7 @@ static int ili9882t_prepare(struct drm_panel *panel)
>         gpiod_set_value(ili->enable_gpio, 1);
>         usleep_range(1000, 2000);
>         gpiod_set_value(ili->enable_gpio, 0);
> -       usleep_range(1000, 2000);
> +       usleep_range(40000, 50000);

nit: use 40000, 41000 instead of 40000, 50000. Linux almost always
uses the longer delay, so that'll save ~9 ms. The only reason for the
range is to optimize kernel wakeups which is really not a concern
here.

