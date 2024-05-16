Return-Path: <devicetree+bounces-67320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C548C77B8
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 15:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39D4F1F240BB
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 13:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC32E1482E4;
	Thu, 16 May 2024 13:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HqvJBmkW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A4528680
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 13:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715866336; cv=none; b=RSzd7b530AkbJPOmatW4ocaBbnKyaxts9FxvOg/wwVuHZq08Ls22mFvbck+Fhe2uJAEy6rl7ONjrkVgdZCBRB4wmJ3pdCNmk3BUiFHs7uuHBed09gMssYekia7QfxRVTLp3P0sKtJIqGKWACXHEmL02RKC8/43U8AUDmGwx1zmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715866336; c=relaxed/simple;
	bh=Mq2Sul2x7kmO3kQH+vqqcNhY8EMA9s5vcYxIfsi3Cqg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j2mtDitg6axccoDuAEXK60q9VbEhlwuvJquj6mSB36ulTbq5jkbD8BMto/09PA54OmgkS6UHz7dvQmRBJDJ78Zzhw9dD4WLwjTnps6HuLl6Do0AAb0dUd4S33bx4/LHTytUy/pFkrdThlw0lv/caHo/qITTZxkFSC/QHcRlT2U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HqvJBmkW; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-43dff9da88fso40123831cf.2
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 06:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715866332; x=1716471132; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mq2Sul2x7kmO3kQH+vqqcNhY8EMA9s5vcYxIfsi3Cqg=;
        b=HqvJBmkWV8GzRXc7If3uM8WdFfrRwQLnnVPjv606hUSgncxGbBfRgdvVc+8YEm+EzR
         KWu8SML144E967SyJGEiPgykz58TDr0dBDmzzS5SM+g+nap5tnhmOXund4Rx9Vkf5hwL
         L1aIj79hdX6AfhdT3+O/kfUBLG/tNzVsS/WVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715866332; x=1716471132;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mq2Sul2x7kmO3kQH+vqqcNhY8EMA9s5vcYxIfsi3Cqg=;
        b=VFPYLyv9k0IpEKrMX5o14pY4StsRWPHt5diD+vzcAuelgpHNKqd7jBv1ngK9n0SYXz
         c6+e9mthZBBEnqxhA4wBDk6I3h1kd+0kt+NRdI0nWY0rS9xjXaE7Pf8km9+2OFZDn8Dt
         uTCDqqrEnSNj/3OIqK4Tfm4tHnNuSylxxwt8kkSB/Cv+rsGMpO+lph00TK4WayNPLREl
         siaYpz8bhKrmFZBvgu5pl79dypnci6liNhaVfdsPd02d5kvxikSCXaeF2ojfc3DIFbY/
         xq2Eh/LeaNiNII/e/gMT6welXhtqdIth8GWZ0bekDNyvJSmo6v0ipicmU57A4swP5zK2
         EHXw==
X-Forwarded-Encrypted: i=1; AJvYcCV6DtGRg2/En9L5k750J3f9AemVOe5mMc7hU/YEHPi8PR+rFK4glM9pE4Hekav7U1ADgQERWDc3A3RiFo1GWJK9Qr7ofPphVpYmTw==
X-Gm-Message-State: AOJu0YyxZvaSbej5fsykMjE3Ob6CbJAL4nyDmcuB8Ufa7mElkGiSR/cU
	Ee4Fd3cOX/ypx5BOGElT+F6nYmWfAddwEeWqvz5Jnrz57dS8wMdCydT76q/KWFnuxi/IqE2XPkQ
	=
X-Google-Smtp-Source: AGHT+IEubWScBjj2euYs7MXNZ5mTDn+rFUVQ3tN0g3KolxiUCM8OJ7q22Ysecfd18rRwfWqN3+Xlzw==
X-Received: by 2002:a05:622a:391:b0:43e:e6e:21dd with SMTP id d75a77b69052e-43e0e6e276bmr174974891cf.12.1715866331812;
        Thu, 16 May 2024 06:32:11 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-43e40f144d0sm4556031cf.96.2024.05.16.06.32.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 May 2024 06:32:10 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-43dfe020675so2769981cf.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 06:32:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWoIf7y3jKAclQ8ef6dBRgJT37dP7mECMZezROEzGu5B9anPnW2ErKLIisskTPA6Tsa1rPQp+HxsAZXwPwW7B+BOPNiT9YOXU5WRg==
X-Received: by 2002:a05:622a:6089:b0:43e:33f7:600c with SMTP id
 d75a77b69052e-43e33f7623fmr5149201cf.19.1715866329914; Thu, 16 May 2024
 06:32:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2024 06:31:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WNgF7X2=Q-yujVfbTpir3-5nN85Gc+hV+xXY6ZOWSwSA@mail.gmail.com>
Message-ID: <CAD=FV=WNgF7X2=Q-yujVfbTpir3-5nN85Gc+hV+xXY6ZOWSwSA@mail.gmail.com>
Subject: Re: [PATCH v8 0/6] Break out as separate driver and add BOE
 nv110wum-l60 IVO t109nw41 MIPI-DSI panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, neil.armstrong@linaro.org, 
	dmitry.baryshkov@linaro.org
Cc: sam@ravnborg.org, daniel@ffwll.ch, linus.walleij@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, conor+dt@kernel.org, 
	airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 16, 2024 at 12:21=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Discussion with Doug and Linus in V1, we need a
> separate driver to enable the hx83102 controller.
>
> So this series this series mainly Break out as separate driver
> for Starry-himax83102-j02 panels from boe tv101wum driver.
>
> Then add BOE nv110wum-l60 and IVO t109nw41 in himax-hx83102 driver.
>
> Add compatible for BOE nv110wum-l60 and IVO t109nw41
> in dt-bindings
>
> Note:this series depend Dous'series [1]
> [1]: https://lore.kernel.org/all/20240501154251.3302887-1-dianders@chromi=
um.org/
>
> Changes in v8:
> - Neil think need sent separately to ARM SoC maintainer with "arm64: defc=
onfig: Enable HIMAX_HX83102 panel patch ", so remove it.
> - PATCH 1/6: No change.
> - PATCH 2/6: Fix Doug comment "return ret" change to "goto poweroff".
> - PATCH 3/6: No change.
> - PATCH 4/6: No change.
> - PATCH 5/6: No change.
> - PATCH 6/6: No change.
> - Link to v7:https://lore.kernel.org/all/20240515014643.2715010-1-yangcon=
g5@huaqin.corp-partner.google.com/

This all looks good to me now.

Neil: do you want to apply this series plus Dmitry's [1] atop it, or
would you like me to? Dmitry's series has a fix in it but I don't
think it's critical enough to warrant the merge conflict that would
come with putting it through drm-misc-fixes.

[1] https://lore.kernel.org/r/20240512-dsi-panels-upd-api-v2-0-e31ca14d102e=
@linaro.org/

