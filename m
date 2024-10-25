Return-Path: <devicetree+bounces-115760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA309B0A13
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:37:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BD10B22421
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C5D1865ED;
	Fri, 25 Oct 2024 16:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UxtQfRyh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3554621A4C6
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 16:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729874234; cv=none; b=VQ6bqUXirLZPdioEV6nlaH9ZkWnx6+mIG0IHy+mosB0XIKKJS8MA45EMgNTdWruoe34Ik6anq2BNS3IPi+mWEbAi9bokNjLcqIJSOZzYkJXDmemKNMwtcOIu/eHDYQvaiKXlp7TlOyjNjZ9hi+SSvSe7336roOsldbCII9YohH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729874234; c=relaxed/simple;
	bh=ySdcD7Me/PWPRhlRCagk1hkwrdCnc7x3yE8lgZoAf1I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s93LIq2QjbsXOZCMS/FO785lOmF1iDIc0cHVZ2ZcOO5l8VZddlqSD319xmy098YCYrPXV54/LlINFKko20rjBYs0h+LiS6WDE2yf9DdefEII/c8VPiWBDa+P2P5RElHRakYtUru4TPQk27Hzob7g7PsgPN5M+9O2MlaEkj1eClc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UxtQfRyh; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539e5c15fd3so2179312e87.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 09:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729874230; x=1730479030; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JOEn92bswQiIh6B0O753YjxjbgH7xEMK7FXjbHm+E6k=;
        b=UxtQfRyhEp7MOsqbdK2UxjKMrefGswVyOdgaaY5+3wrjLHweM+KiubZ1bjtDstHMJk
         Kjda71OHwPpKgpf41yB/ewf9NzXbQuqQ8w+kj8bAOo73FdES75urJB0dmlYUcl0CJrVi
         POXRBi+PuFx4binM2HgEXdpcNX0+vv5j+XhDMcOrrt7bSBPRDnNBpshhDptw9fpOVK+L
         JRLlgmM6TtihouwznEc+29KAhf8kKVZRHndj/rC0n+WJGDuFh4lqNfN5dpNOXajmqGWX
         iwx+cISyl9E6Uz2gsnpfdDBlU17ASeuAh4dV1oCL5EKZqnOupDILv/yX5J03rcUgEmP+
         4b6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729874230; x=1730479030;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JOEn92bswQiIh6B0O753YjxjbgH7xEMK7FXjbHm+E6k=;
        b=fefI6McLqC4q7yCQB69cdJk9ge43BgWC+ROLT0vZbvIFralyvR5U4AOCqDWlX6TJse
         YpJir7gekuFMYjpuCg6K7548CyY1Dn94CRaVlrmCksQeJke9JKT9ga1kOeht+RnHFWNG
         acEhVC5a+G+Fj3loimmpNZLQS7WsV6D0V2sJer0jXTXunCc/GJYAQJQEwuGhJffU+CXS
         XvCURQ0uDaFguU/kmGdaYVnkXWixCFyIt1V+av4RdkfziRaQKRHhbmwJuVZofkI/wH/u
         2g54grq3qTLWWBZuwkGs+V6Uo8liE7nCqI/dQ84douB08rtMmfGB2U9FCeBmyz53zCuS
         fXmQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+DOy7n2SXmz86Co1YTGLK/39iVY+iH2IdNoTCk+aFUMquMPNxHfynG2uQI7b5O5leJVnOzDx12sS2@vger.kernel.org
X-Gm-Message-State: AOJu0YzxT+wIclXzmTGrjm6YM5Upw2utCNY3yV7oXoJZ4M3WXsQI4+eB
	9guJ+cfRWjwesFeH55GJRqUDpwr7neBuTDInhzHI4jC9FhJsEtLYXU7tJa1vWVSZutVLMihNKfH
	ScRJzPU7um9VySvCycpyF1jTm+cGAYNuoUKmHJA==
X-Google-Smtp-Source: AGHT+IHHe9pruRyF7p97JeWtRJklETd8ZL5WPfRry1VxSwNI6KCKvzhRBrSC7ttvxAMUZC3k8UOafWSQ0/P+03f3fPo=
X-Received: by 2002:a05:6512:689:b0:539:f995:5b00 with SMTP id
 2adb3069b0e04-53b23dcb17bmr3714961e87.7.1729874230297; Fri, 25 Oct 2024
 09:37:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1729738189.git.jahau@rocketmail.com> <bef462116190c26e6339cd58240773f035efcca9.1729738189.git.jahau@rocketmail.com>
In-Reply-To: <bef462116190c26e6339cd58240773f035efcca9.1729738189.git.jahau@rocketmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 25 Oct 2024 18:36:59 +0200
Message-ID: <CACRpkdY6w1LmKP+69TDRLJCszPpz_XAM_uoe8oC07MH-9ALAig@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] drm/panel: samsung-s6e88a0-ams427ap24: Add initial driver
To: Jakob Hauser <jahau@rocketmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jakob,

thanks for your patch!

On Thu, Oct 24, 2024 at 5:18=E2=80=AFAM Jakob Hauser <jahau@rocketmail.com>=
 wrote:

> This initial part of the panel driver was mostly generated by the
> "linux-mdss-dsi-panel-driver-generator" tool [1], reading downstream
> Android kernel file "dsi_panel_S6E88A0_AMS427AP24_qhd_octa_video.dtsi" [2=
].
>
> On top of the generic output of the tool, there were a couple of changes
> applied:
> - Added mipi_dsi_dcs_set_display_on() to function s6e88a0_ams427ap24_on()=
,
>   otherwise the display does not show up.
> - In functions s6e88a0_ams427ap24_on() and s6e88a0_ams427ap24_off()
>   changed DSI commands to multi context and used "accum_err" returns.
> - In functions s6e88a0_ams427ap24_on() and s6e88a0_ams427ap24_off() repla=
ced
>   msleep() by mipi_dsi_msleep().
> - The function s6e88a0_ams427ap24_get_modes() was changed to make use of
>   drm_connector_helper_get_modes_fixed(). This also required to include
>   drm/drm_probe_helper.h.
> - In function s6e88a0_ams427ap24_probe() registring the regulators was ch=
anged
>   to devm_regulator_bulk_get_const(). This required to change supplies in=
 struct
>   s6e88a0_ams427ap24 to a pointer.
> - Removed bool "prepared" from struct s6e88a0_ams427ap24 and according pa=
rts in
>   functions s6e88a0_ams427ap24_prepare() and s6e88a0_ams427ap24_unprepare=
().
>
> [1] https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-gener=
ator
> [2] https://github.com/msm8916-mainline/linux-downstream/blob/GT-I9195I/d=
rivers/video/msm/mdss/samsung/S6E88A0_AMS427AP24/dsi_panel_S6E88A0_AMS427AP=
24_qhd_octa_video.dtsi
>
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>

Nice job on this driver so far!

> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>

Why do you need this include? .of_match_table is part of
<linux/driver.h>

> +static int s6e88a0_ams427ap24_on(struct s6e88a0_ams427ap24 *ctx)
> +{
> +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D dsi };
> +
> +       dsi->mode_flags |=3D MIPI_DSI_MODE_LPM;
> +
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);

Can we provide #defines for at least some of this magic?
See other drivers for a very good idea of what some of them mean.
panel-samsung-s6d27a1.c:#define S6D27A1_PASSWD_L2       0xF0    /*
Password Command for Level 2 Control */
panel-samsung-s6d7aa0.c:#define MCS_PASSWD1             0xf0

> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0x5a, 0x5a);

panel-samsung-s6d7aa0.c:#define MCS_PASSWD3             0xfc

> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x11);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfd, 0x11);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x13);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfd, 0x18);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x02);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb8, 0x30);
(...)
> +       mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +       mipi_dsi_msleep(&dsi_ctx, 20);
> +
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0x5a, 0x5a);

panel-samsung-s6d7aa0.c:#define MCS_PASSWD2             0xf1

> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcc, 0x4c);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x03, 0x0d);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0xa5, 0xa5);

panel-samsung-s6d7aa0.c:#define MCS_PASSWD2             0xf1
Send in the reverse password: disable access.

> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xca,
> +                                    0x01, 0x00, 0x01, 0x00, 0x01, 0x00, =
0x80,
> +                                    0x80, 0x80, 0x80, 0x80, 0x80, 0x80, =
0x80,
> +                                    0x80, 0x80, 0x80, 0x80, 0x80, 0x80, =
0x80,
> +                                    0x80, 0x80, 0x80, 0x80, 0x80, 0x80, =
0x80,
> +                                    0x80, 0x80, 0x00, 0x00, 0x00);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb2,
> +                                    0x40, 0x08, 0x20, 0x00, 0x08);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb6, 0x28, 0x0b);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf7, 0x03);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x00);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);

Send in the reverse password: disable access.

A bit of #defines and comments would make it much more clear what
is going on.

Yours,
Linus Walleij

