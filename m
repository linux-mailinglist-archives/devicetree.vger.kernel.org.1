Return-Path: <devicetree+bounces-81555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8545F91CBA5
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 10:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2E281C20F79
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 08:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FE1383A3;
	Sat, 29 Jun 2024 08:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cJTdq7vD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE973307B;
	Sat, 29 Jun 2024 08:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719649517; cv=none; b=jcXJOtde5IkjSbu7ePEg2qGg7pv6P+M0ZeGS5qqsj1CL2PMEzSqdKpRpLOsz7X18D2R3ispK3BIZA+zDHrE9Ax9vU2q/p1LQVqWfT2hVMoLIm/bE+U56Tn7ICNv2mCx/7M4Sp6ByT1jj30cjzyvuehvIuoTWyY9o7LkiC3OQbnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719649517; c=relaxed/simple;
	bh=G3NE+h1ha1i0056JMPnrFqny6xvHX1THEWW2cAQJ7eY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DFbBZjhGB4w+gtOoNDenaYT5YKOgyysDaj8liwvEKhVYPsLcES7EUXgvnCKQ1o4yMbI8uYeo9ZocixwFFPSdZHoikGeajQ49xOFxzjnIdesc1EV53ljSJmK3yhXB5BCMUBVPgFwkOAgPmdBZnApsljnw98HA6nUKGxIK5QhXPck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cJTdq7vD; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-643acefd1afso13346997b3.2;
        Sat, 29 Jun 2024 01:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719649513; x=1720254313; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rWn3VHX197Mk6umy/Ar9+jNfE7PJ/HAibgpX2252Vlg=;
        b=cJTdq7vDmkCPa9QGgc9phZ7KpKAL9lFoEH+F2DO8TlJa8dYc9oYxj2oN7FkOyubkkh
         PKKu+15Jzx9m8jE9dqWwsqzyxS7epiR0smUju4pGcZSQffRo3JNvLdV7Z0xOpndLTOvp
         nGh1FoUBTF8haBpuLm9n1/4I3uCpVlGLDGhDXV0CdbxGbuKvBKup0NULdlnabhkI/beR
         XhyCPmT/tcPtN+ojUN9EChGN9mGyvrYgEKKEVk1+7sC2QQL3fc0N1R/oXFduVkwQ7w8o
         VtJX01DjhjGuL416Lh5QNJJcxzhHjK6GSmZimKuaxWJ1xJOe7QA2J01famZDJDMZxfmR
         gjew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719649513; x=1720254313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rWn3VHX197Mk6umy/Ar9+jNfE7PJ/HAibgpX2252Vlg=;
        b=FlHEU9tro6Jp/Z8UvgiJYfJ5xvZ/T+QlU9QQ86miVaMfbkDAjUKKQ+mS+ID+m2mpV+
         6SOAErsd6j5bM0nx2X5Vaqb5EJbzvm4d/lskTbfUn0Auf+PvEfvJ0zgdBupHpPaEKxxv
         XsgfsEw4ZWYp6QWpLGXM6utI8sT755sgdSRWj0fAHixtKD7SwjpFmu9Jxf0jIqG7kKZb
         ptDitP7qxutQ+EHJmLGFXXL+I9BSRZdZlolx6K8Ryo09zLQ5O2DHRMAt6XmaNkL9qwIE
         Rp0ftGd3UULEjfsH4Ua6nXzGYzdnYLpejzZknCHUbel5SvfXEmRPnxBqyWJEOOANzJ8n
         mkWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeOxZClcX//ZzNrwOGUAz5bsHAgfJLY4q6kpYUZXjzhsOBu88BpJCQO9+5Pht3VGqqPJbelvtBmGGUBp3v9SAzq6Z7Vu/mhGgoQw==
X-Gm-Message-State: AOJu0Yxp/rVJNwpyLDX40FOifCz1T87XeOsulSUOeVNH+cxrfmCyKY+q
	sM+TvKVesGP2mCsciAlO2zH10nyLN1oE8dBmkVa+DB72O9y2oSuDRTef2/G6loY8xFDBONpbPUW
	8Mh4YkQqGzDE1i2N1Hch4vnnm7ps=
X-Google-Smtp-Source: AGHT+IGxakxyNppHk5Bo/vYM2Jz5Rm+4RqqmIU8VItz3J7Rsk16eV81VgFYzeeie2S8E4+4OzThwvE7XxrXddNoR60g=
X-Received: by 2002:a81:b641:0:b0:64b:8edf:9e64 with SMTP id
 00721157ae682-64c718fa277mr4014767b3.18.1719649512223; Sat, 29 Jun 2024
 01:25:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240628051019.975172-1-kikuchan98@gmail.com> <20240628051019.975172-3-kikuchan98@gmail.com>
 <254c5538-7b32-42f3-b05e-55c677d62722@linaro.org>
In-Reply-To: <254c5538-7b32-42f3-b05e-55c677d62722@linaro.org>
From: Hironori KIKUCHI <kikuchan98@gmail.com>
Date: Sat, 29 Jun 2024 17:25:00 +0900
Message-ID: <CAG40kxE04mm46sJ8uqinOx8RUt5Dq8VUjD9_Z6fVKp8FFdqHNg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm/panel: st7701: Add support for SPI for configuration
To: neil.armstrong@linaro.org
Cc: linux-kernel@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Neil,

Thank you for your reply and review.

On Fri, Jun 28, 2024 at 5:22=E2=80=AFPM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> On 28/06/2024 07:10, Hironori KIKUCHI wrote:
> > The ST7701 supports not only MIPI DSI, but also SPI as an interface
> > for configuration. To support a panel connected via SPI with an RGB
> > parallel interface, add support for SPI using MIPI DBI helpers.
> >
> > Signed-off-by: Hironori KIKUCHI <kikuchan98@gmail.com>
> > ---
> >   drivers/gpu/drm/panel/Kconfig                 |   2 +
> >   drivers/gpu/drm/panel/panel-sitronix-st7701.c | 923 ++++++++++-------=
-
> >   2 files changed, 517 insertions(+), 408 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kcon=
fig
> > index 2ae0eb0638f..1831544400d 100644
> > --- a/drivers/gpu/drm/panel/Kconfig
> > +++ b/drivers/gpu/drm/panel/Kconfig
> > @@ -755,7 +755,9 @@ config DRM_PANEL_SHARP_LS060T1SX01
> >   config DRM_PANEL_SITRONIX_ST7701
> >       tristate "Sitronix ST7701 panel driver"
> >       depends on OF
> > +     depends on SPI
> >       depends on DRM_MIPI_DSI
> > +     select DRM_MIPI_DBI
> >       depends on BACKLIGHT_CLASS_DEVICE
> >       help
> >         Say Y here if you want to enable support for the Sitronix
> > diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gp=
u/drm/panel/panel-sitronix-st7701.c
> > index 421eb4592b6..07980f010bb 100644
> > --- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> > +++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> > @@ -4,6 +4,7 @@
> >    * Author: Jagan Teki <jagan@amarulasolutions.com>
> >    */
> >
> > +#include <drm/drm_mipi_dbi.h>
> >   #include <drm/drm_mipi_dsi.h>
> >   #include <drm/drm_modes.h>
> >   #include <drm/drm_panel.h>
> > @@ -14,79 +15,80 @@
> >   #include <linux/module.h>
> >   #include <linux/of.h>
> >   #include <linux/regulator/consumer.h>
> > +#include <linux/spi/spi.h>
> >
> >   #include <video/mipi_display.h>
> >
> >   /* Command2 BKx selection command */
> > -#define DSI_CMD2BKX_SEL                      0xFF
> > -#define DSI_CMD1                     0
> > -#define DSI_CMD2                     BIT(4)
> > -#define DSI_CMD2BK_MASK                      GENMASK(3, 0)
> > +#define ST7701_CMD2BKX_SEL                   0xFF
> > +#define ST7701_CMD1                          0
> > +#define ST7701_CMD2                          BIT(4)
> > +#define ST7701_CMD2BK_MASK                   GENMASK(3, 0)
> >
> >   /* Command2, BK0 commands */
> > -#define DSI_CMD2_BK0_PVGAMCTRL               0xB0 /* Positive Voltage =
Gamma Control */
> > -#define DSI_CMD2_BK0_NVGAMCTRL               0xB1 /* Negative Voltage =
Gamma Control */
> > -#define DSI_CMD2_BK0_LNESET          0xC0 /* Display Line setting */
> > -#define DSI_CMD2_BK0_PORCTRL         0xC1 /* Porch control */
> > -#define DSI_CMD2_BK0_INVSEL          0xC2 /* Inversion selection, Fram=
e Rate Control */
> > +#define ST7701_CMD2_BK0_PVGAMCTRL            0xB0 /* Positive Voltage =
Gamma Control */
> > +#define ST7701_CMD2_BK0_NVGAMCTRL            0xB1 /* Negative Voltage =
Gamma Control */
> > +#define ST7701_CMD2_BK0_LNESET                       0xC0 /* Display L=
ine setting */
> > +#define ST7701_CMD2_BK0_PORCTRL                      0xC1 /* Porch con=
trol */
> > +#define ST7701_CMD2_BK0_INVSEL                       0xC2 /* Inversion=
 selection, Frame Rate Control */
> >
> >   /* Command2, BK1 commands */
> > -#define DSI_CMD2_BK1_VRHS            0xB0 /* Vop amplitude setting */
> > -#define DSI_CMD2_BK1_VCOM            0xB1 /* VCOM amplitude setting */
> > -#define DSI_CMD2_BK1_VGHSS           0xB2 /* VGH Voltage setting */
> > -#define DSI_CMD2_BK1_TESTCMD         0xB3 /* TEST Command Setting */
> > -#define DSI_CMD2_BK1_VGLS            0xB5 /* VGL Voltage setting */
> > -#define DSI_CMD2_BK1_PWCTLR1         0xB7 /* Power Control 1 */
> > -#define DSI_CMD2_BK1_PWCTLR2         0xB8 /* Power Control 2 */
> > -#define DSI_CMD2_BK1_SPD1            0xC1 /* Source pre_drive timing s=
et1 */
> > -#define DSI_CMD2_BK1_SPD2            0xC2 /* Source EQ2 Setting */
> > -#define DSI_CMD2_BK1_MIPISET1                0xD0 /* MIPI Setting 1 */
> > +#define ST7701_CMD2_BK1_VRHS                 0xB0 /* Vop amplitude set=
ting */
> > +#define ST7701_CMD2_BK1_VCOM                 0xB1 /* VCOM amplitude se=
tting */
> > +#define ST7701_CMD2_BK1_VGHSS                        0xB2 /* VGH Volta=
ge setting */
> > +#define ST7701_CMD2_BK1_TESTCMD                      0xB3 /* TEST Comm=
and Setting */
> > +#define ST7701_CMD2_BK1_VGLS                 0xB5 /* VGL Voltage setti=
ng */
> > +#define ST7701_CMD2_BK1_PWCTLR1                      0xB7 /* Power Con=
trol 1 */
> > +#define ST7701_CMD2_BK1_PWCTLR2                      0xB8 /* Power Con=
trol 2 */
> > +#define ST7701_CMD2_BK1_SPD1                 0xC1 /* Source pre_drive =
timing set1 */
> > +#define ST7701_CMD2_BK1_SPD2                 0xC2 /* Source EQ2 Settin=
g */
> > +#define ST7701_CMD2_BK1_MIPISET1             0xD0 /* MIPI Setting 1 */
> >
> >   /* Command2, BK0 bytes */
> > -#define DSI_CMD2_BK0_GAMCTRL_AJ_MASK GENMASK(7, 6)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC0_MASK        GENMASK(3, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC4_MASK        GENMASK(5, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC8_MASK        GENMASK(5, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC16_MASK       GENMASK(4, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC24_MASK       GENMASK(4, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC52_MASK       GENMASK(3, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC80_MASK       GENMASK(5, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC108_MASK      GENMASK(3, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC147_MASK      GENMASK(3, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC175_MASK      GENMASK(5, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC203_MASK      GENMASK(3, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC231_MASK      GENMASK(4, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC239_MASK      GENMASK(4, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC247_MASK      GENMASK(5, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC251_MASK      GENMASK(5, 0)
> > -#define DSI_CMD2_BK0_GAMCTRL_VC255_MASK      GENMASK(4, 0)
> > -#define DSI_CMD2_BK0_LNESET_LINE_MASK        GENMASK(6, 0)
> > -#define DSI_CMD2_BK0_LNESET_LDE_EN   BIT(7)
> > -#define DSI_CMD2_BK0_LNESET_LINEDELTA        GENMASK(1, 0)
> > -#define DSI_CMD2_BK0_PORCTRL_VBP_MASK        GENMASK(7, 0)
> > -#define DSI_CMD2_BK0_PORCTRL_VFP_MASK        GENMASK(7, 0)
> > -#define DSI_CMD2_BK0_INVSEL_ONES_MASK        GENMASK(5, 4)
> > -#define DSI_CMD2_BK0_INVSEL_NLINV_MASK       GENMASK(2, 0)
> > -#define DSI_CMD2_BK0_INVSEL_RTNI_MASK        GENMASK(4, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_AJ_MASK              GENMASK(7, 6)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC0_MASK     GENMASK(3, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC4_MASK     GENMASK(5, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC8_MASK     GENMASK(5, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC16_MASK    GENMASK(4, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC24_MASK    GENMASK(4, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC52_MASK    GENMASK(3, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC80_MASK    GENMASK(5, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC108_MASK   GENMASK(3, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC147_MASK   GENMASK(3, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC175_MASK   GENMASK(5, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC203_MASK   GENMASK(3, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC231_MASK   GENMASK(4, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC239_MASK   GENMASK(4, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC247_MASK   GENMASK(5, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC251_MASK   GENMASK(5, 0)
> > +#define ST7701_CMD2_BK0_GAMCTRL_VC255_MASK   GENMASK(4, 0)
> > +#define ST7701_CMD2_BK0_LNESET_LINE_MASK     GENMASK(6, 0)
> > +#define ST7701_CMD2_BK0_LNESET_LDE_EN                BIT(7)
> > +#define ST7701_CMD2_BK0_LNESET_LINEDELTA     GENMASK(1, 0)
> > +#define ST7701_CMD2_BK0_PORCTRL_VBP_MASK     GENMASK(7, 0)
> > +#define ST7701_CMD2_BK0_PORCTRL_VFP_MASK     GENMASK(7, 0)
> > +#define ST7701_CMD2_BK0_INVSEL_ONES_MASK     GENMASK(5, 4)
> > +#define ST7701_CMD2_BK0_INVSEL_NLINV_MASK    GENMASK(2, 0)
> > +#define ST7701_CMD2_BK0_INVSEL_RTNI_MASK     GENMASK(4, 0)
> >
> >   /* Command2, BK1 bytes */
> > -#define DSI_CMD2_BK1_VRHA_MASK               GENMASK(7, 0)
> > -#define DSI_CMD2_BK1_VCOM_MASK               GENMASK(7, 0)
> > -#define DSI_CMD2_BK1_VGHSS_MASK              GENMASK(3, 0)
> > -#define DSI_CMD2_BK1_TESTCMD_VAL     BIT(7)
> > -#define DSI_CMD2_BK1_VGLS_ONES               BIT(6)
> > -#define DSI_CMD2_BK1_VGLS_MASK               GENMASK(3, 0)
> > -#define DSI_CMD2_BK1_PWRCTRL1_AP_MASK        GENMASK(7, 6)
> > -#define DSI_CMD2_BK1_PWRCTRL1_APIS_MASK      GENMASK(3, 2)
> > -#define DSI_CMD2_BK1_PWRCTRL1_APOS_MASK      GENMASK(1, 0)
> > -#define DSI_CMD2_BK1_PWRCTRL2_AVDD_MASK      GENMASK(5, 4)
> > -#define DSI_CMD2_BK1_PWRCTRL2_AVCL_MASK      GENMASK(1, 0)
> > -#define DSI_CMD2_BK1_SPD1_ONES_MASK  GENMASK(6, 4)
> > -#define DSI_CMD2_BK1_SPD1_T2D_MASK   GENMASK(3, 0)
> > -#define DSI_CMD2_BK1_SPD2_ONES_MASK  GENMASK(6, 4)
> > -#define DSI_CMD2_BK1_SPD2_T3D_MASK   GENMASK(3, 0)
> > -#define DSI_CMD2_BK1_MIPISET1_ONES   BIT(7)
> > -#define DSI_CMD2_BK1_MIPISET1_EOT_EN BIT(3)
> > +#define ST7701_CMD2_BK1_VRHA_MASK            GENMASK(7, 0)
> > +#define ST7701_CMD2_BK1_VCOM_MASK            GENMASK(7, 0)
> > +#define ST7701_CMD2_BK1_VGHSS_MASK           GENMASK(3, 0)
> > +#define ST7701_CMD2_BK1_TESTCMD_VAL          BIT(7)
> > +#define ST7701_CMD2_BK1_VGLS_ONES            BIT(6)
> > +#define ST7701_CMD2_BK1_VGLS_MASK            GENMASK(3, 0)
> > +#define ST7701_CMD2_BK1_PWRCTRL1_AP_MASK     GENMASK(7, 6)
> > +#define ST7701_CMD2_BK1_PWRCTRL1_APIS_MASK   GENMASK(3, 2)
> > +#define ST7701_CMD2_BK1_PWRCTRL1_APOS_MASK   GENMASK(1, 0)
> > +#define ST7701_CMD2_BK1_PWRCTRL2_AVDD_MASK   GENMASK(5, 4)
> > +#define ST7701_CMD2_BK1_PWRCTRL2_AVCL_MASK   GENMASK(1, 0)
> > +#define ST7701_CMD2_BK1_SPD1_ONES_MASK               GENMASK(6, 4)
> > +#define ST7701_CMD2_BK1_SPD1_T2D_MASK                GENMASK(3, 0)
> > +#define ST7701_CMD2_BK1_SPD2_ONES_MASK               GENMASK(6, 4)
> > +#define ST7701_CMD2_BK1_SPD2_T3D_MASK                GENMASK(3, 0)
> > +#define ST7701_CMD2_BK1_MIPISET1_ONES                BIT(7)
> > +#define ST7701_CMD2_BK1_MIPISET1_EOT_EN              BIT(3)
> >
> >   #define CFIELD_PREP(_mask, _val)                                    \
> >       (((typeof(_mask))(_val) << (__builtin_ffsll(_mask) - 1)) & (_mask=
))
> > @@ -130,12 +132,16 @@ struct st7701_panel_desc {
> >   struct st7701 {
> >       struct drm_panel panel;
> >       struct mipi_dsi_device *dsi;
> > +     struct mipi_dbi dbi;
> >       const struct st7701_panel_desc *desc;
> >
> >       struct regulator_bulk_data supplies[2];
> >       struct gpio_desc *reset;
> >       unsigned int sleep_delay;
> >       enum drm_panel_orientation orientation;
> > +
> > +     int (*write_command)(struct st7701 *st7701, u8 cmd, const u8 *seq=
,
> > +                          size_t len);
> >   };
> >
> >   static inline struct st7701 *panel_to_st7701(struct drm_panel *panel)
> > @@ -143,16 +149,22 @@ static inline struct st7701 *panel_to_st7701(stru=
ct drm_panel *panel)
> >       return container_of(panel, struct st7701, panel);
> >   }
> >
> > -static inline int st7701_dsi_write(struct st7701 *st7701, const void *=
seq,
> > -                                size_t len)
> > +static int st7701_dsi_write(struct st7701 *st7701, u8 cmd, const u8 *s=
eq,
> > +                         size_t len)
> >   {
> > -     return mipi_dsi_dcs_write_buffer(st7701->dsi, seq, len);
> > +     return mipi_dsi_dcs_write(st7701->dsi, cmd, seq, len);
> >   }
> >
> > -#define ST7701_DSI(st7701, seq...)                           \
> > -     {                                                       \
> > -             const u8 d[] =3D { seq };                         \
> > -             st7701_dsi_write(st7701, d, ARRAY_SIZE(d));     \
> > +static int st7701_dbi_write(struct st7701 *st7701, u8 cmd, const u8 *s=
eq,
> > +                         size_t len)
> > +{
> > +     return mipi_dbi_command_stackbuf(&st7701->dbi, cmd, seq, len);
> > +}
> > +
> > +#define ST7701_WRITE(st7701, cmd, seq...)                            \
> > +     {                                                               \
> > +             const u8 d[] =3D { seq };                                =
 \
> > +             st7701->write_command(st7701, cmd, d, ARRAY_SIZE(d));   \
> >       }
> >
> >   static u8 st7701_vgls_map(struct st7701 *st7701)
> > @@ -185,11 +197,11 @@ static void st7701_switch_cmd_bkx(struct st7701 *=
st7701, bool cmd2, u8 bkx)
> >       u8 val;
> >
> >       if (cmd2)
> > -             val =3D DSI_CMD2 | FIELD_PREP(DSI_CMD2BK_MASK, bkx);
> > +             val =3D ST7701_CMD2 | FIELD_PREP(ST7701_CMD2BK_MASK, bkx)=
;
> >       else
> > -             val =3D DSI_CMD1;
> > +             val =3D ST7701_CMD1;
> >
> > -     ST7701_DSI(st7701, DSI_CMD2BKX_SEL, 0x77, 0x01, 0x00, 0x00, val);
> > +     ST7701_WRITE(st7701, ST7701_CMD2BKX_SEL, 0x77, 0x01, 0x00, 0x00, =
val);
> >   }
> >
> >   static void st7701_init_sequence(struct st7701 *st7701)
> > @@ -199,22 +211,22 @@ static void st7701_init_sequence(struct st7701 *s=
t7701)
> >       const u8 linecount8 =3D mode->vdisplay / 8;
> >       const u8 linecountrem2 =3D (mode->vdisplay % 8) / 2;
> >
> > -     ST7701_DSI(st7701, MIPI_DCS_SOFT_RESET, 0x00);
> > +     ST7701_WRITE(st7701, MIPI_DCS_SOFT_RESET, 0x00);
> >
> >       /* We need to wait 5ms before sending new commands */
> >       msleep(5);
> >
> > -     ST7701_DSI(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
> > +     ST7701_WRITE(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
> >
> >       msleep(st7701->sleep_delay);
> >
> >       /* Command2, BK0 */
> >       st7701_switch_cmd_bkx(st7701, true, 0);
> >
> > -     mipi_dsi_dcs_write(st7701->dsi, DSI_CMD2_BK0_PVGAMCTRL,
> > -                        desc->pv_gamma, ARRAY_SIZE(desc->pv_gamma));
> > -     mipi_dsi_dcs_write(st7701->dsi, DSI_CMD2_BK0_NVGAMCTRL,
> > -                        desc->nv_gamma, ARRAY_SIZE(desc->nv_gamma));
> > +     st7701->write_command(st7701, ST7701_CMD2_BK0_PVGAMCTRL, desc->pv=
_gamma,
> > +                           ARRAY_SIZE(desc->pv_gamma));
> > +     st7701->write_command(st7701, ST7701_CMD2_BK0_NVGAMCTRL, desc->nv=
_gamma,
> > +                           ARRAY_SIZE(desc->nv_gamma));
> >       /*
> >        * Vertical line count configuration:
> >        * Line[6:0]: select number of vertical lines of the TFT matrix i=
n
> > @@ -226,14 +238,14 @@ static void st7701_init_sequence(struct st7701 *s=
t7701)
> >        * Total number of vertical lines:
> >        * LN =3D ((Line[6:0] + 1) * 8) + (LDE_EN ? Line_delta[1:0] * 2 :=
 0)
> >        */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK0_LNESET,
> > -                FIELD_PREP(DSI_CMD2_BK0_LNESET_LINE_MASK, linecount8 -=
 1) |
> > -                (linecountrem2 ? DSI_CMD2_BK0_LNESET_LDE_EN : 0),
> > -                FIELD_PREP(DSI_CMD2_BK0_LNESET_LINEDELTA, linecountrem=
2));
> > -     ST7701_DSI(st7701, DSI_CMD2_BK0_PORCTRL,
> > -                FIELD_PREP(DSI_CMD2_BK0_PORCTRL_VBP_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK0_LNESET,
> > +                FIELD_PREP(ST7701_CMD2_BK0_LNESET_LINE_MASK, linecount=
8 - 1) |
> > +                (linecountrem2 ? ST7701_CMD2_BK0_LNESET_LDE_EN : 0),
> > +                FIELD_PREP(ST7701_CMD2_BK0_LNESET_LINEDELTA, linecount=
rem2));
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK0_PORCTRL,
> > +                FIELD_PREP(ST7701_CMD2_BK0_PORCTRL_VBP_MASK,
> >                             mode->vtotal - mode->vsync_end),
> > -                FIELD_PREP(DSI_CMD2_BK0_PORCTRL_VFP_MASK,
> > +                FIELD_PREP(ST7701_CMD2_BK0_PORCTRL_VFP_MASK,
> >                             mode->vsync_start - mode->vdisplay));
> >       /*
> >        * Horizontal pixel count configuration:
> > @@ -241,70 +253,70 @@ static void st7701_init_sequence(struct st7701 *s=
t7701)
> >        * The PCLK is number of pixel clock per line, which matches
> >        * mode htotal. The minimum is 512 PCLK.
> >        */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK0_INVSEL,
> > -                DSI_CMD2_BK0_INVSEL_ONES_MASK |
> > -                FIELD_PREP(DSI_CMD2_BK0_INVSEL_NLINV_MASK, desc->nlinv=
),
> > -                FIELD_PREP(DSI_CMD2_BK0_INVSEL_RTNI_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK0_INVSEL,
> > +                ST7701_CMD2_BK0_INVSEL_ONES_MASK |
> > +                FIELD_PREP(ST7701_CMD2_BK0_INVSEL_NLINV_MASK, desc->nl=
inv),
> > +                FIELD_PREP(ST7701_CMD2_BK0_INVSEL_RTNI_MASK,
> >                             (clamp((u32)mode->htotal, 512U, 1008U) - 51=
2) / 16));
> >
> >       /* Command2, BK1 */
> >       st7701_switch_cmd_bkx(st7701, true, 1);
> >
> >       /* Vop =3D 3.5375V + (VRHA[7:0] * 0.0125V) */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_VRHS,
> > -                FIELD_PREP(DSI_CMD2_BK1_VRHA_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_VRHS,
> > +                FIELD_PREP(ST7701_CMD2_BK1_VRHA_MASK,
> >                             DIV_ROUND_CLOSEST(desc->vop_uv - 3537500, 1=
2500)));
> >
> >       /* Vcom =3D 0.1V + (VCOM[7:0] * 0.0125V) */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_VCOM,
> > -                FIELD_PREP(DSI_CMD2_BK1_VCOM_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_VCOM,
> > +                FIELD_PREP(ST7701_CMD2_BK1_VCOM_MASK,
> >                             DIV_ROUND_CLOSEST(desc->vcom_uv - 100000, 1=
2500)));
> >
> >       /* Vgh =3D 11.5V + (VGHSS[7:0] * 0.5V) */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_VGHSS,
> > -                FIELD_PREP(DSI_CMD2_BK1_VGHSS_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_VGHSS,
> > +                FIELD_PREP(ST7701_CMD2_BK1_VGHSS_MASK,
> >                             DIV_ROUND_CLOSEST(clamp(desc->vgh_mv,
> >                                                     (u16)11500,
> >                                                     (u16)17000) - 11500=
,
> >                                               500)));
> >
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_TESTCMD, DSI_CMD2_BK1_TESTCMD_VAL=
);
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_TESTCMD, ST7701_CMD2_BK1_TES=
TCMD_VAL);
> >
> >       /* Vgl is non-linear */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_VGLS,
> > -                DSI_CMD2_BK1_VGLS_ONES |
> > -                FIELD_PREP(DSI_CMD2_BK1_VGLS_MASK, st7701_vgls_map(st7=
701)));
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_VGLS,
> > +                ST7701_CMD2_BK1_VGLS_ONES |
> > +                FIELD_PREP(ST7701_CMD2_BK1_VGLS_MASK, st7701_vgls_map(=
st7701)));
> >
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_PWCTLR1,
> > -                FIELD_PREP(DSI_CMD2_BK1_PWRCTRL1_AP_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_PWCTLR1,
> > +                FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL1_AP_MASK,
> >                             desc->gamma_op_bias) |
> > -                FIELD_PREP(DSI_CMD2_BK1_PWRCTRL1_APIS_MASK,
> > +                FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL1_APIS_MASK,
> >                             desc->input_op_bias) |
> > -                FIELD_PREP(DSI_CMD2_BK1_PWRCTRL1_APOS_MASK,
> > +                FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL1_APOS_MASK,
> >                             desc->output_op_bias));
> >
> >       /* Avdd =3D 6.2V + (AVDD[1:0] * 0.2V) , Avcl =3D -4.4V - (AVCL[1:=
0] * 0.2V) */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_PWCTLR2,
> > -                FIELD_PREP(DSI_CMD2_BK1_PWRCTRL2_AVDD_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_PWCTLR2,
> > +                FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL2_AVDD_MASK,
> >                             DIV_ROUND_CLOSEST(desc->avdd_mv - 6200, 200=
)) |
> > -                FIELD_PREP(DSI_CMD2_BK1_PWRCTRL2_AVCL_MASK,
> > +                FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL2_AVCL_MASK,
> >                             DIV_ROUND_CLOSEST(-4400 - desc->avcl_mv, 20=
0)));
> >
> >       /* T2D =3D 0.2us * T2D[3:0] */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_SPD1,
> > -                DSI_CMD2_BK1_SPD1_ONES_MASK |
> > -                FIELD_PREP(DSI_CMD2_BK1_SPD1_T2D_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_SPD1,
> > +                ST7701_CMD2_BK1_SPD1_ONES_MASK |
> > +                FIELD_PREP(ST7701_CMD2_BK1_SPD1_T2D_MASK,
> >                             DIV_ROUND_CLOSEST(desc->t2d_ns, 200)));
> >
> >       /* T3D =3D 4us + (0.8us * T3D[3:0]) */
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_SPD2,
> > -                DSI_CMD2_BK1_SPD2_ONES_MASK |
> > -                FIELD_PREP(DSI_CMD2_BK1_SPD2_T3D_MASK,
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_SPD2,
> > +                ST7701_CMD2_BK1_SPD2_ONES_MASK |
> > +                FIELD_PREP(ST7701_CMD2_BK1_SPD2_T3D_MASK,
> >                             DIV_ROUND_CLOSEST(desc->t3d_ns - 4000, 800)=
));
> >
> > -     ST7701_DSI(st7701, DSI_CMD2_BK1_MIPISET1,
> > -                DSI_CMD2_BK1_MIPISET1_ONES |
> > -                (desc->eot_en ? DSI_CMD2_BK1_MIPISET1_EOT_EN : 0));
> > +     ST7701_WRITE(st7701, ST7701_CMD2_BK1_MIPISET1,
> > +                ST7701_CMD2_BK1_MIPISET1_ONES |
> > +                (desc->eot_en ? ST7701_CMD2_BK1_MIPISET1_EOT_EN : 0));
> >   }
> >
> >   static void ts8550b_gip_sequence(struct st7701 *st7701)
> > @@ -313,89 +325,89 @@ static void ts8550b_gip_sequence(struct st7701 *s=
t7701)
> >        * ST7701_SPEC_V1.2 is unable to provide enough information above=
 this
> >        * specific command sequence, so grab the same from vendor BSP dr=
iver.
> >        */
> > -     ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
> > -     ST7701_DSI(st7701, 0xE1, 0x0B, 0x00, 0x0D, 0x00, 0x0C, 0x00, 0x0E=
,
> > +     ST7701_WRITE(st7701, 0xE0, 0x00, 0x00, 0x02);
> > +     ST7701_WRITE(st7701, 0xE1, 0x0B, 0x00, 0x0D, 0x00, 0x0C, 0x00, 0x=
0E,
> >                  0x00, 0x00, 0x44, 0x44);
> > -     ST7701_DSI(st7701, 0xE2, 0x33, 0x33, 0x44, 0x44, 0x64, 0x00, 0x66=
,
> > +     ST7701_WRITE(st7701, 0xE2, 0x33, 0x33, 0x44, 0x44, 0x64, 0x00, 0x=
66,
> >                  0x00, 0x65, 0x00, 0x67, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
> > -     ST7701_DSI(st7701, 0xE4, 0x44, 0x44);
> > -     ST7701_DSI(st7701, 0xE5, 0x0C, 0x78, 0x3C, 0xA0, 0x0E, 0x78, 0x3C=
,
> > +     ST7701_WRITE(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
> > +     ST7701_WRITE(st7701, 0xE4, 0x44, 0x44);
> > +     ST7701_WRITE(st7701, 0xE5, 0x0C, 0x78, 0x3C, 0xA0, 0x0E, 0x78, 0x=
3C,
> >                  0xA0, 0x10, 0x78, 0x3C, 0xA0, 0x12, 0x78, 0x3C, 0xA0);
> > -     ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
> > -     ST7701_DSI(st7701, 0xE7, 0x44, 0x44);
> > -     ST7701_DSI(st7701, 0xE8, 0x0D, 0x78, 0x3C, 0xA0, 0x0F, 0x78, 0x3C=
,
> > +     ST7701_WRITE(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
> > +     ST7701_WRITE(st7701, 0xE7, 0x44, 0x44);
> > +     ST7701_WRITE(st7701, 0xE8, 0x0D, 0x78, 0x3C, 0xA0, 0x0F, 0x78, 0x=
3C,
> >                  0xA0, 0x11, 0x78, 0x3C, 0xA0, 0x13, 0x78, 0x3C, 0xA0);
> > -     ST7701_DSI(st7701, 0xEB, 0x02, 0x02, 0x39, 0x39, 0xEE, 0x44, 0x00=
);
> > -     ST7701_DSI(st7701, 0xEC, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xED, 0xFF, 0xF1, 0x04, 0x56, 0x72, 0x3F, 0xFF=
,
> > +     ST7701_WRITE(st7701, 0xEB, 0x02, 0x02, 0x39, 0x39, 0xEE, 0x44, 0x=
00);
> > +     ST7701_WRITE(st7701, 0xEC, 0x00, 0x00);
> > +     ST7701_WRITE(st7701, 0xED, 0xFF, 0xF1, 0x04, 0x56, 0x72, 0x3F, 0x=
FF,
> >                  0xFF, 0xFF, 0xFF, 0xF3, 0x27, 0x65, 0x40, 0x1F, 0xFF);
> >   }
> >
> >   static void dmt028vghmcmi_1a_gip_sequence(struct st7701 *st7701)
> >   {
> > -     ST7701_DSI(st7701, 0xEE, 0x42);
> > -     ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
> > +     ST7701_WRITE(st7701, 0xEE, 0x42);
> > +     ST7701_WRITE(st7701, 0xE0, 0x00, 0x00, 0x02);
> >
> > -     ST7701_DSI(st7701, 0xE1,
> > +     ST7701_WRITE(st7701, 0xE1,
> >                  0x04, 0xA0, 0x06, 0xA0,
> >                          0x05, 0xA0, 0x07, 0xA0,
> >                          0x00, 0x44, 0x44);
> > -     ST7701_DSI(st7701, 0xE2,
> > +     ST7701_WRITE(st7701, 0xE2,
> >                  0x00, 0x00, 0x00, 0x00,
> >                          0x00, 0x00, 0x00, 0x00,
> >                          0x00, 0x00, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xE3,
> > +     ST7701_WRITE(st7701, 0xE3,
> >                  0x00, 0x00, 0x22, 0x22);
> > -     ST7701_DSI(st7701, 0xE4, 0x44, 0x44);
> > -     ST7701_DSI(st7701, 0xE5,
> > +     ST7701_WRITE(st7701, 0xE4, 0x44, 0x44);
> > +     ST7701_WRITE(st7701, 0xE5,
> >                  0x0C, 0x90, 0xA0, 0xA0,
> >                          0x0E, 0x92, 0xA0, 0xA0,
> >                          0x08, 0x8C, 0xA0, 0xA0,
> >                          0x0A, 0x8E, 0xA0, 0xA0);
> > -     ST7701_DSI(st7701, 0xE6,
> > +     ST7701_WRITE(st7701, 0xE6,
> >                  0x00, 0x00, 0x22, 0x22);
> > -     ST7701_DSI(st7701, 0xE7, 0x44, 0x44);
> > -     ST7701_DSI(st7701, 0xE8,
> > +     ST7701_WRITE(st7701, 0xE7, 0x44, 0x44);
> > +     ST7701_WRITE(st7701, 0xE8,
> >                  0x0D, 0x91, 0xA0, 0xA0,
> >                          0x0F, 0x93, 0xA0, 0xA0,
> >                          0x09, 0x8D, 0xA0, 0xA0,
> >                          0x0B, 0x8F, 0xA0, 0xA0);
> > -     ST7701_DSI(st7701, 0xEB,
> > +     ST7701_WRITE(st7701, 0xEB,
> >                  0x00, 0x00, 0xE4, 0xE4,
> >                          0x44, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xED,
> > +     ST7701_WRITE(st7701, 0xED,
> >                  0xFF, 0xF5, 0x47, 0x6F,
> >                          0x0B, 0xA1, 0xAB, 0xFF,
> >                          0xFF, 0xBA, 0x1A, 0xB0,
> >                          0xF6, 0x74, 0x5F, 0xFF);
> > -     ST7701_DSI(st7701, 0xEF,
> > +     ST7701_WRITE(st7701, 0xEF,
> >                  0x08, 0x08, 0x08, 0x40,
> >                          0x3F, 0x64);
> >
> >       st7701_switch_cmd_bkx(st7701, false, 0);
> >
> >       st7701_switch_cmd_bkx(st7701, true, 3);
> > -     ST7701_DSI(st7701, 0xE6, 0x7C);
> > -     ST7701_DSI(st7701, 0xE8, 0x00, 0x0E);
> > +     ST7701_WRITE(st7701, 0xE6, 0x7C);
> > +     ST7701_WRITE(st7701, 0xE8, 0x00, 0x0E);
> >
> >       st7701_switch_cmd_bkx(st7701, false, 0);
> > -     ST7701_DSI(st7701, 0x11);
> > +     ST7701_WRITE(st7701, 0x11);
> >       msleep(120);
> >
> >       st7701_switch_cmd_bkx(st7701, true, 3);
> > -     ST7701_DSI(st7701, 0xE8, 0x00, 0x0C);
> > +     ST7701_WRITE(st7701, 0xE8, 0x00, 0x0C);
> >       msleep(10);
> > -     ST7701_DSI(st7701, 0xE8, 0x00, 0x00);
> > +     ST7701_WRITE(st7701, 0xE8, 0x00, 0x00);
> >
> >       st7701_switch_cmd_bkx(st7701, false, 0);
> > -     ST7701_DSI(st7701, 0x11);
> > +     ST7701_WRITE(st7701, 0x11);
> >       msleep(120);
> > -     ST7701_DSI(st7701, 0xE8, 0x00, 0x00);
> > +     ST7701_WRITE(st7701, 0xE8, 0x00, 0x00);
> >
> >       st7701_switch_cmd_bkx(st7701, false, 0);
> >
> > -     ST7701_DSI(st7701, 0x3A, 0x70);
> > +     ST7701_WRITE(st7701, 0x3A, 0x70);
> >   }
> >
> >   static void kd50t048a_gip_sequence(struct st7701 *st7701)
> > @@ -404,58 +416,58 @@ static void kd50t048a_gip_sequence(struct st7701 =
*st7701)
> >        * ST7701_SPEC_V1.2 is unable to provide enough information above=
 this
> >        * specific command sequence, so grab the same from vendor BSP dr=
iver.
> >        */
> > -     ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
> > -     ST7701_DSI(st7701, 0xE1, 0x08, 0x00, 0x0A, 0x00, 0x07, 0x00, 0x09=
,
> > +     ST7701_WRITE(st7701, 0xE0, 0x00, 0x00, 0x02);
> > +     ST7701_WRITE(st7701, 0xE1, 0x08, 0x00, 0x0A, 0x00, 0x07, 0x00, 0x=
09,
> >                  0x00, 0x00, 0x33, 0x33);
> > -     ST7701_DSI(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00,
> > +     ST7701_WRITE(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x=
00, 0x00,
> >                  0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
> > -     ST7701_DSI(st7701, 0xE4, 0x44, 0x44);
> > -     ST7701_DSI(st7701, 0xE5, 0x0E, 0x60, 0xA0, 0xA0, 0x10, 0x60, 0xA0=
,
> > +     ST7701_WRITE(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
> > +     ST7701_WRITE(st7701, 0xE4, 0x44, 0x44);
> > +     ST7701_WRITE(st7701, 0xE5, 0x0E, 0x60, 0xA0, 0xA0, 0x10, 0x60, 0x=
A0,
> >                  0xA0, 0x0A, 0x60, 0xA0, 0xA0, 0x0C, 0x60, 0xA0, 0xA0);
> > -     ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
> > -     ST7701_DSI(st7701, 0xE7, 0x44, 0x44);
> > -     ST7701_DSI(st7701, 0xE8, 0x0D, 0x60, 0xA0, 0xA0, 0x0F, 0x60, 0xA0=
,
> > +     ST7701_WRITE(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
> > +     ST7701_WRITE(st7701, 0xE7, 0x44, 0x44);
> > +     ST7701_WRITE(st7701, 0xE8, 0x0D, 0x60, 0xA0, 0xA0, 0x0F, 0x60, 0x=
A0,
> >                  0xA0, 0x09, 0x60, 0xA0, 0xA0, 0x0B, 0x60, 0xA0, 0xA0);
> > -     ST7701_DSI(st7701, 0xEB, 0x02, 0x01, 0xE4, 0xE4, 0x44, 0x00, 0x40=
);
> > -     ST7701_DSI(st7701, 0xEC, 0x02, 0x01);
> > -     ST7701_DSI(st7701, 0xED, 0xAB, 0x89, 0x76, 0x54, 0x01, 0xFF, 0xFF=
,
> > +     ST7701_WRITE(st7701, 0xEB, 0x02, 0x01, 0xE4, 0xE4, 0x44, 0x00, 0x=
40);
> > +     ST7701_WRITE(st7701, 0xEC, 0x02, 0x01);
> > +     ST7701_WRITE(st7701, 0xED, 0xAB, 0x89, 0x76, 0x54, 0x01, 0xFF, 0x=
FF,
> >                  0xFF, 0xFF, 0xFF, 0xFF, 0x10, 0x45, 0x67, 0x98, 0xBA);
> >   }
> >
> >   static void rg_arc_gip_sequence(struct st7701 *st7701)
> >   {
> >       st7701_switch_cmd_bkx(st7701, true, 3);
> > -     ST7701_DSI(st7701, 0xEF, 0x08);
> > +     ST7701_WRITE(st7701, 0xEF, 0x08);
> >       st7701_switch_cmd_bkx(st7701, true, 0);
> > -     ST7701_DSI(st7701, 0xC7, 0x04);
> > -     ST7701_DSI(st7701, 0xCC, 0x38);
> > +     ST7701_WRITE(st7701, 0xC7, 0x04);
> > +     ST7701_WRITE(st7701, 0xCC, 0x38);
> >       st7701_switch_cmd_bkx(st7701, true, 1);
> > -     ST7701_DSI(st7701, 0xB9, 0x10);
> > -     ST7701_DSI(st7701, 0xBC, 0x03);
> > -     ST7701_DSI(st7701, 0xC0, 0x89);
> > -     ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
> > -     ST7701_DSI(st7701, 0xE1, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00=
,
> > +     ST7701_WRITE(st7701, 0xB9, 0x10);
> > +     ST7701_WRITE(st7701, 0xBC, 0x03);
> > +     ST7701_WRITE(st7701, 0xC0, 0x89);
> > +     ST7701_WRITE(st7701, 0xE0, 0x00, 0x00, 0x02);
> > +     ST7701_WRITE(st7701, 0xE1, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x=
00,
> >                  0x00, 0x00, 0x20, 0x20);
> > -     ST7701_DSI(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00,
> > +     ST7701_WRITE(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x=
00, 0x00,
> >                  0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x00);
> > -     ST7701_DSI(st7701, 0xE4, 0x22, 0x00);
> > -     ST7701_DSI(st7701, 0xE5, 0x04, 0x5C, 0xA0, 0xA0, 0x06, 0x5C, 0xA0=
,
> > +     ST7701_WRITE(st7701, 0xE3, 0x00, 0x00, 0x33, 0x00);
> > +     ST7701_WRITE(st7701, 0xE4, 0x22, 0x00);
> > +     ST7701_WRITE(st7701, 0xE5, 0x04, 0x5C, 0xA0, 0xA0, 0x06, 0x5C, 0x=
A0,
> >                  0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x00);
> > -     ST7701_DSI(st7701, 0xE7, 0x22, 0x00);
> > -     ST7701_DSI(st7701, 0xE8, 0x05, 0x5C, 0xA0, 0xA0, 0x07, 0x5C, 0xA0=
,
> > +     ST7701_WRITE(st7701, 0xE6, 0x00, 0x00, 0x33, 0x00);
> > +     ST7701_WRITE(st7701, 0xE7, 0x22, 0x00);
> > +     ST7701_WRITE(st7701, 0xE8, 0x05, 0x5C, 0xA0, 0xA0, 0x07, 0x5C, 0x=
A0,
> >                  0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xEB, 0x02, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00=
);
> > -     ST7701_DSI(st7701, 0xEC, 0x00, 0x00);
> > -     ST7701_DSI(st7701, 0xED, 0xFA, 0x45, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF=
,
> > +     ST7701_WRITE(st7701, 0xEB, 0x02, 0x00, 0x40, 0x40, 0x00, 0x00, 0x=
00);
> > +     ST7701_WRITE(st7701, 0xEC, 0x00, 0x00);
> > +     ST7701_WRITE(st7701, 0xED, 0xFA, 0x45, 0x0B, 0xFF, 0xFF, 0xFF, 0x=
FF,
> >                  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xB0, 0x54, 0xAF);
> > -     ST7701_DSI(st7701, 0xEF, 0x08, 0x08, 0x08, 0x45, 0x3F, 0x54);
> > +     ST7701_WRITE(st7701, 0xEF, 0x08, 0x08, 0x08, 0x45, 0x3F, 0x54);
> >       st7701_switch_cmd_bkx(st7701, false, 0);
> > -     ST7701_DSI(st7701, MIPI_DCS_SET_ADDRESS_MODE, 0x17);
> > -     ST7701_DSI(st7701, MIPI_DCS_SET_PIXEL_FORMAT, 0x77);
> > -     ST7701_DSI(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
> > +     ST7701_WRITE(st7701, MIPI_DCS_SET_ADDRESS_MODE, 0x17);
> > +     ST7701_WRITE(st7701, MIPI_DCS_SET_PIXEL_FORMAT, 0x77);
> > +     ST7701_WRITE(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
> >       msleep(120);
> >   }
> >
> > @@ -490,7 +502,7 @@ static int st7701_enable(struct drm_panel *panel)
> >   {
> >       struct st7701 *st7701 =3D panel_to_st7701(panel);
> >
> > -     ST7701_DSI(st7701, MIPI_DCS_SET_DISPLAY_ON, 0x00);
> > +     ST7701_WRITE(st7701, MIPI_DCS_SET_DISPLAY_ON, 0x00);
> >
> >       return 0;
> >   }
> > @@ -499,7 +511,7 @@ static int st7701_disable(struct drm_panel *panel)
> >   {
> >       struct st7701 *st7701 =3D panel_to_st7701(panel);
> >
> > -     ST7701_DSI(st7701, MIPI_DCS_SET_DISPLAY_OFF, 0x00);
> > +     ST7701_WRITE(st7701, MIPI_DCS_SET_DISPLAY_OFF, 0x00);
> >
> >       return 0;
> >   }
> > @@ -508,7 +520,7 @@ static int st7701_unprepare(struct drm_panel *panel=
)
> >   {
> >       struct st7701 *st7701 =3D panel_to_st7701(panel);
> >
> > -     ST7701_DSI(st7701, MIPI_DCS_ENTER_SLEEP_MODE, 0x00);
> > +     ST7701_WRITE(st7701, MIPI_DCS_ENTER_SLEEP_MODE, 0x00);
> >
> >       msleep(st7701->sleep_delay);
> >
> > @@ -602,62 +614,62 @@ static const struct st7701_panel_desc ts8550b_des=
c =3D {
> >       .panel_sleep_delay =3D 80, /* panel need extra 80ms for sleep out=
 cmd */
> >
> >       .pv_gamma =3D {
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xe),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x15),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xf),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xe),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x15),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xf),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x8),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x8),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x23),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x23),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x12),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x2b),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x34),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x12),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x2b),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x34),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
> >       },
> >       .nv_gamma =3D {
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xe),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x2) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x15),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xf),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xe),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0x2) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x15),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xf),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x13),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x7),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x9),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x13),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x7),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x9),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x22),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x10),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x22),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x10),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0xe),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x2c),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x34),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0xe),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x2c),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x34),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
> >       },
> >       .nlinv =3D 7,
> >       .vop_uv =3D 4400000,
> > @@ -703,62 +715,62 @@ static const struct st7701_panel_desc dmt028vghmc=
mi_1a_desc =3D {
> >       .panel_sleep_delay =3D 5, /* panel need extra 5ms for sleep out c=
md */
> >
> >       .pv_gamma =3D {
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x10),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x17),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0x10),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x17),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x6),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x5),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x6),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x5),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1f),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x11),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1f),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x11),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0xe),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x29),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x30),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0xe),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x29),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x30),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
> >       },
> >       .nv_gamma =3D {
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xe),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xe),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x6),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x4),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x6),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x4),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x13),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x26),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x30),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x13),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x26),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x30),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
> >       },
> >       .nlinv =3D 1,
> >       .vop_uv =3D 4800000,
> > @@ -802,62 +814,62 @@ static const struct st7701_panel_desc kd50t048a_d=
esc =3D {
> >       .panel_sleep_delay =3D 0,
> >
> >       .pv_gamma =3D {
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x2),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x2),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1e),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1e),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x23),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x23),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
> >       },
> >       .nv_gamma =3D {
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xc),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xc),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xc),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xc),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x3),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x3),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x24),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x24),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
> >       },
> >       .nlinv =3D 1,
> >       .vop_uv =3D 4887500,
> > @@ -901,62 +913,62 @@ static const struct st7701_panel_desc rg_arc_desc=
 =3D {
> >       .panel_sleep_delay =3D 80,
> >
> >       .pv_gamma =3D {
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1d),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1d),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x12),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x0a),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x12),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x0a),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x25),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x03),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x25),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x03),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
> >       },
> >       .nv_gamma =3D {
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1e),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1e),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x08),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x08),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x26),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x15),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x26),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x15),
> >
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > -             CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> > +             CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
> >       },
> >       .nlinv =3D 0,
> >       .vop_uv =3D 4500000,
> > @@ -974,42 +986,49 @@ static const struct st7701_panel_desc rg_arc_desc=
 =3D {
> >       .gip_sequence =3D rg_arc_gip_sequence,
> >   };
> >
> > -static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
> > +static void st7701_cleanup(void *data)
> > +{
> > +     struct st7701 *st7701 =3D (struct st7701 *)data;
> > +
> > +     drm_panel_remove(&st7701->panel);
> > +     drm_panel_disable(&st7701->panel);
> > +     drm_panel_unprepare(&st7701->panel);
> > +}
> > +
> > +static int st7701_probe(struct device *dev, int connector_type)
> >   {
> >       const struct st7701_panel_desc *desc;
> >       struct st7701 *st7701;
> >       int ret;
> >
> > -     st7701 =3D devm_kzalloc(&dsi->dev, sizeof(*st7701), GFP_KERNEL);
> > +     desc =3D of_device_get_match_data(dev);
> > +     if (!desc)
> > +             return -ENODEV;
> > +
> > +     st7701 =3D devm_kzalloc(dev, sizeof(*st7701), GFP_KERNEL);
> >       if (!st7701)
> >               return -ENOMEM;
> >
> > -     desc =3D of_device_get_match_data(&dsi->dev);
> > -     dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BUR=
ST |
> > -                       MIPI_DSI_MODE_LPM | MIPI_DSI_CLOCK_NON_CONTINUO=
US;
> > -     dsi->format =3D desc->format;
> > -     dsi->lanes =3D desc->lanes;
> > -
> > +     st7701->desc =3D desc;
> >       st7701->supplies[0].supply =3D "VCC";
> >       st7701->supplies[1].supply =3D "IOVCC";
> >
> > -     ret =3D devm_regulator_bulk_get(&dsi->dev, ARRAY_SIZE(st7701->sup=
plies),
> > +     ret =3D devm_regulator_bulk_get(dev, ARRAY_SIZE(st7701->supplies)=
,
> >                                     st7701->supplies);
> >       if (ret < 0)
> >               return ret;
> >
> > -     st7701->reset =3D devm_gpiod_get(&dsi->dev, "reset", GPIOD_OUT_LO=
W);
> > +     st7701->reset =3D devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> >       if (IS_ERR(st7701->reset)) {
> > -             dev_err(&dsi->dev, "Couldn't get our reset GPIO\n");
> > +             dev_err(dev, "Couldn't get our reset GPIO\n");
> >               return PTR_ERR(st7701->reset);
> >       }
> >
> > -     ret =3D of_drm_get_panel_orientation(dsi->dev.of_node, &st7701->o=
rientation);
> > +     ret =3D of_drm_get_panel_orientation(dev->of_node, &st7701->orien=
tation);
> >       if (ret < 0)
> > -             return dev_err_probe(&dsi->dev, ret, "Failed to get orien=
tation\n");
> > +             return dev_err_probe(dev, ret, "Failed to get orientation=
\n");
> >
> > -     drm_panel_init(&st7701->panel, &dsi->dev, &st7701_funcs,
> > -                    DRM_MODE_CONNECTOR_DSI);
> > +     drm_panel_init(&st7701->panel, dev, &st7701_funcs, connector_type=
);
> >
> >       /**
> >        * Once sleep out has been issued, ST7701 IC required to wait 120=
ms
> > @@ -1026,50 +1045,138 @@ static int st7701_dsi_probe(struct mipi_dsi_de=
vice *dsi)
> >       if (ret)
> >               return ret;
> >
> > +     dev_set_drvdata(dev, st7701);
> > +
> >       drm_panel_add(&st7701->panel);
> >
> > -     mipi_dsi_set_drvdata(dsi, st7701);
> > -     st7701->dsi =3D dsi;
> > -     st7701->desc =3D desc;
> > +     return devm_add_action_or_reset(dev, st7701_cleanup, st7701);
> > +}
> >
> > -     ret =3D mipi_dsi_attach(dsi);
> > -     if (ret)
> > -             goto err_attach;
> > +static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
> > +{
> > +     struct st7701 *st7701;
> > +     int err;
> > +
> > +     err =3D st7701_probe(&dsi->dev, DRM_MODE_CONNECTOR_DSI);
> > +     if (err)
> > +             return err;
> > +
> > +     st7701 =3D dev_get_drvdata(&dsi->dev);
> > +     st7701->dsi =3D dsi;
> > +     st7701->write_command =3D st7701_dsi_write;
> > +
> > +     if (!st7701->desc->lanes)
> > +             return dev_err_probe(&dsi->dev, -EINVAL, "This panel is n=
ot for MIPI DSI\n");
> > +
> > +     dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BUR=
ST |
> > +                       MIPI_DSI_MODE_LPM | MIPI_DSI_CLOCK_NON_CONTINUO=
US;
> > +     dsi->format =3D st7701->desc->format;
> > +     dsi->lanes =3D st7701->desc->lanes;
> > +
> > +     err =3D mipi_dsi_attach(dsi);
> > +     if (err)
> > +             return dev_err_probe(&dsi->dev, err, "Failed to init MIPI=
 DSI\n");
> >
> >       return 0;
> > +}
> >
> > -err_attach:
> > -     drm_panel_remove(&st7701->panel);
> > -     return ret;
> > +static int st7701_spi_probe(struct spi_device *spi)
> > +{
> > +     struct st7701 *st7701;
> > +     struct gpio_desc *dc;
> > +     int err;
> > +
> > +     err =3D st7701_probe(&spi->dev, DRM_MODE_CONNECTOR_DPI);
> > +     if (err)
> > +             return err;
> > +
> > +     st7701 =3D dev_get_drvdata(&spi->dev);
> > +     st7701->write_command =3D st7701_dbi_write;
> > +
> > +     dc =3D devm_gpiod_get_optional(&spi->dev, "dc", GPIOD_OUT_LOW);
> > +     if (IS_ERR(dc))
> > +             return dev_err_probe(&spi->dev, PTR_ERR(dc), "Failed to g=
et GPIO for D/CX\n");
> > +
> > +     err =3D mipi_dbi_spi_init(spi, &st7701->dbi, dc);
> > +     if (err)
> > +             return dev_err_probe(&spi->dev, err, "Failed to init MIPI=
 DBI\n");
> > +     st7701->dbi.read_commands =3D NULL;
> > +
> > +     return 0;
> >   }
> >
> >   static void st7701_dsi_remove(struct mipi_dsi_device *dsi)
> >   {
> > -     struct st7701 *st7701 =3D mipi_dsi_get_drvdata(dsi);
> > -
> >       mipi_dsi_detach(dsi);
> > -     drm_panel_remove(&st7701->panel);
> >   }
> >
> > -static const struct of_device_id st7701_of_match[] =3D {
> > +static const struct of_device_id st7701_dsi_of_match[] =3D {
> >       { .compatible =3D "anbernic,rg-arc-panel", .data =3D &rg_arc_desc=
 },
> >       { .compatible =3D "densitron,dmt028vghmcmi-1a", .data =3D &dmt028=
vghmcmi_1a_desc },
> >       { .compatible =3D "elida,kd50t048a", .data =3D &kd50t048a_desc },
> >       { .compatible =3D "techstar,ts8550b", .data =3D &ts8550b_desc },
> > -     { }
> > +     { /* sentinel */ }
>
> Unnecessary change

I'll revert the line. Thanks.

>
> >   };
> > -MODULE_DEVICE_TABLE(of, st7701_of_match);
> > +MODULE_DEVICE_TABLE(of, st7701_dsi_of_match);
> > +
> > +static const struct of_device_id st7701_spi_of_match[] =3D {
> > +     { /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, st7701_spi_of_match);
> > +
> > +static const struct spi_device_id st7701_spi_ids[] =3D {
> > +     { /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(spi, st7701_spi_ids);
> >
> >   static struct mipi_dsi_driver st7701_dsi_driver =3D {
> >       .probe          =3D st7701_dsi_probe,
> >       .remove         =3D st7701_dsi_remove,
> >       .driver =3D {
> >               .name           =3D "st7701",
> > -             .of_match_table =3D st7701_of_match,
> > +             .of_match_table =3D st7701_dsi_of_match,
> >       },
> >   };
> > -module_mipi_dsi_driver(st7701_dsi_driver);
> > +
> > +static struct spi_driver st7701_spi_driver =3D {
> > +     .probe          =3D st7701_spi_probe,
> > +     .id_table       =3D st7701_spi_ids,
> > +     .driver =3D {
> > +             .name           =3D "st7701",
> > +             .of_match_table =3D st7701_spi_of_match,
> > +     },
> > +};
> > +
> > +static int __init st7701_driver_init(void)
> > +{
> > +     int err;
> > +
> > +     err =3D spi_register_driver(&st7701_spi_driver);
> > +     if (err)
> > +             return err;
> > +
> > +     if (IS_ENABLED(CONFIG_DRM_MIPI_DSI)) {
>
> This is impossible, you depend on DRM_MIPI_DSI
>
> > +             err =3D mipi_dsi_driver_register(&st7701_dsi_driver);
> > +             if (err) {
> > +                     spi_unregister_driver(&st7701_spi_driver);
> > +                     return err;
> > +             }
> > +
> > +             return 0;
> > +     }
> > +}
> > +module_init(st7701_driver_init);
> > +
> > +static void __exit st7701_driver_exit(void)
> > +{
> > +     if (IS_ENABLED(CONFIG_DRM_MIPI_DSI))
> > +             mipi_dsi_driver_unregister(&st7701_dsi_driver);
>
> This is impossible, you depend on DRM_MIPI_DSI
>
> > +
> > +     spi_unregister_driver(&st7701_spi_driver);
> > +}
> > +module_exit(st7701_driver_exit);
> >
> >   MODULE_AUTHOR("Jagan Teki <jagan@amarulasolutions.com>");
> > +MODULE_AUTHOR("Hironori KIKUCHI <kikuchan98@gmail.com>");
> >   MODULE_DESCRIPTION("Sitronix ST7701 LCD Panel Driver");
> >   MODULE_LICENSE("GPL");
>
> The patch is quite hard to review, I think it should be split into:
> - convert all defines to ST7701_CMD
> - split probe in two parts
> - introduce spi
>
> But then I would like to avoid depending on SPI & DSI, do you
> thing it woudl be possible to have :
>         depend on SPI || DRM_MIPI_DSI
>         select DRM_MIPI_DBI if SPI
>
> and only compile the DSI or SPI parts if the corresponding config is enab=
led ?

Thanks, I will manage those!


>
> Thanks,
> Neil

Best regards,
kikuchan.

