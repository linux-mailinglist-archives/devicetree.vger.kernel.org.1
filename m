Return-Path: <devicetree+bounces-66716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE758C454A
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CAB51C20EC8
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 16:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47AC218645;
	Mon, 13 May 2024 16:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NpnRh7uT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66ED1CD06
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 16:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715618994; cv=none; b=EJwrsM2ep+U/dnKYWpGx5EeF2d/QVio2Q7r0/ra45ad9kPzl+r6CkHPGzZI5PGQeuUkNWEYJYcBbNJPeSB+iXWPWW9pz3pTiKTye2H/vZrfYYny2u23IsWIStRpIjQxO6+IEcRy/mSE94ubRYKrR3SEX+z5k0kc4dJAKblzoWo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715618994; c=relaxed/simple;
	bh=4bm01R6KNRYKHHRMimoIwQnyE5W3reBvqA9AAwp8soo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cO+LGIkDhJa6fEa/0xGrWyNoD7VZNvpCI5bINy0u7BWBmQ1j6ZtcOz7zhNWn2HEP6SomhP1ojxg84Q3v3QI8voNveW5Q0FG0npGi0lafT409pZAewM79tp3vk1BsNtidAo3e9bF1K3uEj22lQod/m6IfzObLei9497k2+dqzVTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NpnRh7uT; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-792bd1f5b38so385971285a.1
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 09:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715618990; x=1716223790; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hJRwL4tnfvW/OsRQWszZHG+HVl8OHZr6t0b1afINm14=;
        b=NpnRh7uT0rZUW8v1HqcNO+XyFtfi5uFL7inxpMezypC+uP9S69YDxHqxwt9JXhEs08
         HWF7TIHQFbQbr4vZKt+3MT0Qj+jHgZiMDRMC7hEpWqQjEGAXcry4KUMGd7IqdNsYPKOn
         J9toFwlvDmBmC+HV7f4icsEiGKwiA4W+TOAVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715618990; x=1716223790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hJRwL4tnfvW/OsRQWszZHG+HVl8OHZr6t0b1afINm14=;
        b=nSFfDW5+qLfyBRd8+WnYxwtIpSYyL+zcNyuFmYhtaETUK3SGykZs3/a67n4OVi9riI
         rXPnFlmfhQBI7kQWnTdEXfyQO+SW9lfUErvhcE7bKprZEeJlZMyv59QSmJvK3d+VZmUf
         fj/g1/66yszAHlg6q0xI5KqbSqbNGZXomqr/0Gt4BHwC2J+WPZl67YgiHgs8CC5au5c1
         KEi2ppnIIwbLGsZ36yH6iOedOq7DLy4IOdOHqla32Ql0AmyRzX1Zt6ozCqWspjeIeIDI
         m3CPMz3Sws3oGUgy5x2GtGL3xGZ67n9hLptNtcnYaKwVDSAb4QOotb5Ha6T67IVG/k0Y
         kv5w==
X-Forwarded-Encrypted: i=1; AJvYcCXdKbWs28ZHV0Y8oZO5BzOeJLwrBzI2iEXcCXxOoUO9Ha1qogCGzlbXVaLwX11sNYsR2oO2ZwEiy0maTv0rklMF3EBN83w06E2Urw==
X-Gm-Message-State: AOJu0YzEstVsdoj+2lNzcWbPSm6n20dIy2oiSwosS/Q84Cj/+2vfMaxq
	7/AfF4DZtHvyzX61QsLqK1U5GPmRpKDxOJHqCD5FWwmuF+LxpruBrSHEfJB8kzznuulDI2pXBAg
	=
X-Google-Smtp-Source: AGHT+IFgeVgq8L8tYOI4qycxCWbnTtZdoKmS+JTUer3dIgvP4iFvAtcBAIdw7SijzFpiey+z+wQhZw==
X-Received: by 2002:ae9:c009:0:b0:792:c268:fbf0 with SMTP id af79cd13be357-792c7576ff6mr1066186685a.6.1715618989778;
        Mon, 13 May 2024 09:49:49 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com. [209.85.160.172])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-792bf27f78fsm469445885a.30.2024.05.13.09.49.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 May 2024 09:49:49 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-43dfe020675so846991cf.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 09:49:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWNtIWs+2UlHhtUcK53dlLGos7rrp3TLIjOivykUOzm4VL+iNNHeRU2nZBu//Fii6/N1YLOg2SbqM4Zuo82PHC2tnNziBuieCGzRQ==
X-Received: by 2002:a05:622a:1c15:b0:43a:f42f:f0b4 with SMTP id
 d75a77b69052e-43e0a22b948mr4322661cf.13.1715618987646; Mon, 13 May 2024
 09:49:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com> <20240511021326.288728-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240511021326.288728-3-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 13 May 2024 09:49:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xm99c3t_LGiHCBaJVKfurD7_SO1Wcxk73gZgftS7jEcw@mail.gmail.com>
Message-ID: <CAD=FV=Xm99c3t_LGiHCBaJVKfurD7_SO1Wcxk73gZgftS7jEcw@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] drm/panel: himax-hx83102: Break out as separate driver
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 10, 2024 at 7:13=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> +static int hx83102_prepare(struct drm_panel *panel)
> +{
> +       struct hx83102 *ctx =3D panel_to_hx83102(panel);
> +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> +       struct device *dev =3D &dsi->dev;
> +       int ret;
> +
> +       gpiod_set_value(ctx->enable_gpio, 0);
> +       usleep_range(1000, 1500);
> +
> +       ret =3D regulator_enable(ctx->pp1800);
> +       if (ret < 0)
> +               return ret;
> +
> +       usleep_range(3000, 5000);
> +
> +       ret =3D regulator_enable(ctx->avdd);
> +       if (ret < 0)
> +               goto poweroff1v8;
> +       ret =3D regulator_enable(ctx->avee);
> +       if (ret < 0)
> +               goto poweroffavdd;
> +
> +       usleep_range(10000, 11000);
> +
> +       mipi_dsi_dcs_nop(ctx->dsi);
> +       usleep_range(1000, 2000);
> +
> +       gpiod_set_value(ctx->enable_gpio, 1);
> +       usleep_range(1000, 2000);
> +       gpiod_set_value(ctx->enable_gpio, 0);
> +       usleep_range(1000, 2000);
> +       gpiod_set_value(ctx->enable_gpio, 1);
> +       usleep_range(6000, 10000);
> +
> +       ret =3D ctx->desc->init(ctx);
> +       if (ret < 0)
> +               goto poweroff;
> +
> +       ret =3D mipi_dsi_dcs_exit_sleep_mode(dsi);
> +       if (ret) {
> +               dev_err(dev, "Failed to exit sleep mode: %d\n", ret);
> +               return ret;
> +       }

The above should have been "goto poweroff", not "return ret".


> +       msleep(120);
> +
> +       ret =3D mipi_dsi_dcs_set_display_on(dsi);
> +       if (ret) {
> +               dev_err(dev, "Failed to turn on the display: %d\n", ret);
> +               return ret;
> +       }

The above should have been "goto poweroff", not "return ret".


Other than that:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

