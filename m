Return-Path: <devicetree+bounces-67169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBA78C6D9C
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:14:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB09F281EF5
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:14:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8567115B13E;
	Wed, 15 May 2024 21:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gGhQI3gm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF5215B559
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715807619; cv=none; b=PxXp85aqWDkIHsnjtZERAdPq3WgZjcoF+BiLKBeaRPkYrWG1iHmvkrXSjMhJJ2LlcPJCXPs4+FWx9pfHfZx+x/A1cNgacJT6oBJsSVtrU6Vj+Zu285vkOo/mPIEu/cdBebO3o9UsUf9a2tks6kRrhZ3Wq+xJy4MHW5xwn0RlBGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715807619; c=relaxed/simple;
	bh=bvwKe2cUxIwA3wbANMobFmrdn8i2fePiVArTt8lKlnc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vFnln8LcDA4GFiefkL9MLdczaaNB2oaU2/Yp09FQ6LK7XdLA9WZaEwJOnWYrq0E1VLs8XxEV6cGBtFIojlYmA+d+AReyN4Tfi1PgdIjjzhpoQJxHMaxuwxUkxENG0+Oda58YmY0pA0X+baSrFKFOzsjzOweFhGjpNEeNqOR1N2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gGhQI3gm; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-792c3741c71so165719385a.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715807614; x=1716412414; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=renabCQBjnKbuD0E1htsmVXRz+sXl0GAkDLoNZkXQSo=;
        b=gGhQI3gmGwK0JcdJ9j211awFhE1ID6OQ0zGPByZiBm1BwEvyEnPmEqk+rLiZBBr2a0
         gXJEBofJTZC5FsYutMLUisV0pM+fxcMHTCRbVQD7zVibiUTppeBgYfJ8euxUlNOEmyHz
         PL+3H5xBXDn3+x/Ahfl3Dw6PHdoF1sQVybRL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715807614; x=1716412414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=renabCQBjnKbuD0E1htsmVXRz+sXl0GAkDLoNZkXQSo=;
        b=l2x4wV/EX6Qovoom5L3Hlnw7t3xWGXMQJMpGR8qAgMmfRthNw6kVMMhFrSfylNQX8p
         ipl2wEPToYzOia3lUqhvhEfRYA+MbeEml6CwgwT9lINZ7HLCWOzDlomFQ89dQ8Jn7MY6
         f2TKBW9W+5VI24i+DOhwl6PQYsIKdQpAEIOTND40SxJjPr/0nBCXnnIoFkTHCyDhs4zA
         lNTC/zNCWhRVSwlcLOq+13EEaLhSp0vAWx+ouXh/Rvz3ORSOWwlRXmqaRdDM3vYQfuuY
         bOr+L2Iq52al1mPaavtatA+Ea44pbwD+cP3StBYkVYxbEbzaW7SXTPqVpCMtwTZ4flAs
         zrVQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2iWIp2XlHCK7kdJi8dS/yLReZKtssR6OAyXTyMvbGAA+kbK4GH/mdORfJquUQkiZeMt8jTlnJijm+c6312bEqChYGWVBJiRSRow==
X-Gm-Message-State: AOJu0YwUBto5K2I8rN0Tj+E/72c7yE4ITAT2IhczUk7yVUeVFPlw7QPs
	68NR6+MNnrGr44nlXL4IwPTESWB2+X/5x7cDPnMNclDBfFgnhFK0JbH3v9lLsbx1EhqkwRRAKXA
	=
X-Google-Smtp-Source: AGHT+IG39ZiBYw9YRvYwdGuCJiGDZm2jfSt4Zd6/evIaZyRU6hUCWZotYjlYzMO7SVxqGhXEKpTcrg==
X-Received: by 2002:ad4:4210:0:b0:6a1:695c:8a01 with SMTP id 6a1803df08f44-6a1695c8a1amr174010316d6.14.1715807614397;
        Wed, 15 May 2024 14:13:34 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6a15f1ccc6esm67724656d6.103.2024.05.15.14.13.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 May 2024 14:13:34 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-43e14f0bd75so676471cf.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:13:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWcc8fu/Y5lyuPL/olKmscw/aVwQYlrIMdb+jQnW8y34pNRqYYAe+88WPbyxeFDMLdqv+UwD++123a/Tt2+jyuuYoH25fsojMIWCw==
X-Received: by 2002:a05:622a:58c3:b0:43e:3ac1:c80 with SMTP id
 d75a77b69052e-43e3ac11131mr1505941cf.18.1715807608625; Wed, 15 May 2024
 14:13:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
 <20240515014643.2715010-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240515014643.2715010-3-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2024 14:13:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wqiw2gi8MNnsYZkmM7H5XK1PUtxH-wqhbC-3m7Z0ur+g@mail.gmail.com>
Message-ID: <CAD=FV=Wqiw2gi8MNnsYZkmM7H5XK1PUtxH-wqhbC-3m7Z0ur+g@mail.gmail.com>
Subject: Re: [v7 2/7] drm/panel: himax-hx83102: Break out as separate driver
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

On Tue, May 14, 2024 at 6:47=E2=80=AFPM Cong Yang
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

The above "return ret" should be "goto poweroff". Please send a v8.

-Doug

