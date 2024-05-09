Return-Path: <devicetree+bounces-66085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F238C1332
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 18:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1130E1C210BA
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 16:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883908C07;
	Thu,  9 May 2024 16:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lUX/5+4X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CE1D518
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 16:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715272968; cv=none; b=kX3wuqP5Q1bPaaMxI5Cy56S86jk0mJaOJXHFfu/zlRK4iCpom2B9jp5zg1dPwk7u1CTi7MirLuVmpOkAsSLuvbfS9U9LeyhK87gTC6SKmDMqMDyd0f0tRLNDC8eznEpYsWZYFgTz/RPFjISWDHKhKAzaoTlOG/HPHIcII3ev/Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715272968; c=relaxed/simple;
	bh=AE3InwFZ098aRACoxtphpmufoslM075b7kc/GFcYMQ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tZ5jjLke6dd3YIQvGuH+VEFIHzTkZTbJFffY1m+KYztrzMVxkw0tyBE4zWQCZxWdu2gTIdbbtnfLmoDXzyxDy8xosfa2ovS4Er1cTzYqYods9py66Ft/5X4V+l2UKbmYrTW15NxGnJsCDaQ7fsMhJQRmH8y39+opUGg2IDYOIdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lUX/5+4X; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-61be613d903so11786647b3.0
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 09:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715272963; x=1715877763; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44yq6LGi2PMD0vBMyVyyqYe6nZFMsvuGg5VBgAwJGFo=;
        b=lUX/5+4XHyyVEwuTEBr5tjxebKH7lQnkzk2dQ7/lfTxpueDo6lTr8CZcuaotFygxQT
         u+L/R+A39XEewJwriHgJcYehXNnfcyjVNR/JA6FRS0/5SIEtRT1eOBj5qmza/m2w7p+9
         cqmLoDd23SGR7vfvj0rTnK6BfHHsAjC6kllxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715272963; x=1715877763;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=44yq6LGi2PMD0vBMyVyyqYe6nZFMsvuGg5VBgAwJGFo=;
        b=IiffSak1LXCs7ZTZSmj2n2EXSVtqyuOY5Emlk2X4aQswWdX9yhg1IoVQ6IBtInLqiZ
         upj8OHA6n3442BGx/LVKce+LHPOq4UdcSHVqmCKYa+P1uilpGLv/Kzl7SLcRmxTDEk5P
         WAObrY0eY3bhs9Glzay7kDfu0ZxfVpmqjp1NOxUM06HeCC/nRY8zmIQJsn3c5MccUtx2
         WRQDD9scfnj8xcOcgFNPIkotWFlCAKbqY03mG2FcHW9E7mey1r0AzgYnyz8eeyQ8HOVk
         fsr9LdTzEcziLU8TH7cWNaS7y8zOk4r8w1PCJ5EHWh4WdT516ZQyEM/biX2kux+T/oRW
         j4LA==
X-Forwarded-Encrypted: i=1; AJvYcCUzSQF5czMZF1iRoko8qWNi8wmc1TE1Ph+TlHez+vCdjHEI/9AgKlHp8WPTZxHgrAC4ym1RGIFPMyOAn1hRs5DcXVEWgSQqbvsz+g==
X-Gm-Message-State: AOJu0YyWxZTuVwPPuIGPRmHUEMnB1PG7XV8ifnkUu6MGQlFn4kD2mrgj
	hrk5fktKbY4h/APJEnS6+BMVlOjjaaTva5WMwUJO9u6u4k9f4+bxzyxSF2RgTxmS/MFZf6jqvTA
	t+hJI
X-Google-Smtp-Source: AGHT+IH6fLqaepfrxmo/uOY8mw/NALIZI7U4q7cz3Itl3dXxS/LHlZ78v2F6LuACiMWsuU4/J81L4Q==
X-Received: by 2002:a05:690c:893:b0:60a:66c0:d5fe with SMTP id 00721157ae682-622aff5b21amr856767b3.13.1715272963245;
        Thu, 09 May 2024 09:42:43 -0700 (PDT)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com. [209.85.160.181])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6209e2720a2sm3637097b3.68.2024.05.09.09.42.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 May 2024 09:42:42 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-43df9ac3ebcso5241cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 09:42:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW6MggU0zwEt/7GmZA6brv4KPHaFMCdAKpRN8yj1vqtbPYs8if8KgyLYsoXxaXQ4ENSUW+PEEzYaXVS89Qtsp9tdtnJGGgKKsbhwA==
X-Received: by 2002:a05:622a:5185:b0:43c:553b:1bd6 with SMTP id
 d75a77b69052e-43df3b1ce3fmr3110661cf.12.1715272961287; Thu, 09 May 2024
 09:42:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
 <20240509015207.3271370-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240509015207.3271370-3-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 9 May 2024 09:42:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UaTj_ojJvc2T22e49MhB-zp1+Z_tp9uULS0r8MesUd2Q@mail.gmail.com>
Message-ID: <CAD=FV=UaTj_ojJvc2T22e49MhB-zp1+Z_tp9uULS0r8MesUd2Q@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] drm/panel: himax-hx83102: Break out as separate driver
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 8, 2024 at 6:53=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> +static int hx83102_enable(struct drm_panel *panel)
> +{
> +       struct hx83102 *ctx =3D panel_to_hx83102(panel);
> +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> +       struct device *dev =3D &dsi->dev;
> +       int ret;
> +
> +       ret =3D mipi_dsi_dcs_exit_sleep_mode(dsi);
> +       if (ret) {
> +               dev_err(dev, "Failed to exit sleep mode: %d\n", ret);
> +               return ret;
> +       }
> +
> +       msleep(120);
> +
> +       ret =3D mipi_dsi_dcs_set_display_on(dsi);
> +       if (ret) {
> +               dev_err(dev, "Failed to turn on the display: %d\n", ret);
> +               return ret;
> +       }

FWIW, I think that the mipi_dsi_dcs_exit_sleep_mode(), msleep(120),
and mipi_dsi_dcs_set_display_on() should also be in the prepare() to
match how they were in the boe-tv101wum-nl6.c driver, right? Then the
enable() would be left with just the simple "msleep(130)".

I know it doesn't make much difference and it probably doesn't matter
and maybe I'm just being a little nitpicky, but given that the
prepare() and enable() functions are unique phases I'd rather be
explicit if we've moving something from one phase to the other.


-Doug

