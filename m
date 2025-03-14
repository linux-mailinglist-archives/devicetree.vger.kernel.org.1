Return-Path: <devicetree+bounces-157390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B20EA6077B
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 03:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27FF53BE17E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 02:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 696DC6F30F;
	Fri, 14 Mar 2025 02:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fbM7eI9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B933B2A0
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 02:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741919290; cv=none; b=iRbUT2hvCRTLVPU/oVwR3MBQX28Ehsl1ZFnPHrdPXv3Tqg31VlusK9aISU/9dNhP8mbtgHfqHIaW6UaO0CHaE4qgXLLOoDNcQB9jm730a8cFWJlPy9BN3jM6NskZGedTfjCTBKGOBC9g2tTKfR/58xqatTOefR6JRxIGYp0PjG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741919290; c=relaxed/simple;
	bh=l/P9CX77aVaT7iPjebMKtrMjMWUYqgPXyKrAVqMJ9pg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jiiL46CZhsFaJie6Usa1o6YDnPLGAhO0mplfxPnEdNJp/U3lVSjw/2N2LGJ+iZSNPnmUJTtJKq+b4+ENt0fqNJFcLsD+LonZoEqAvEj/6dQpUIWg+sRQzkQbPIFCfZWCstikh4o2wtTwTuo5N52AW8lfrJIr/S5H9wZfioV8Gq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fbM7eI9R; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30613802a6bso18347981fa.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 19:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741919282; x=1742524082; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3EDLto5Fj+QyO1rc5OeVTSwga/F1rC5M7RFzWcpsACU=;
        b=fbM7eI9RHgy2bLhdhftBCQqwjCVbisxM1ta5SdKSusiFkvzCFhn8Vr+74d3KZ2cdd7
         HVW9uF3VxyQRvu5d+Epgoce8uUTr8xu3bkh3nf415WIbYhNDRdWU7IF2km5QGxc2A9Eb
         AhjNNyb8KGnO1Tp0sckD1eOpiRrkjNQAPvwUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741919282; x=1742524082;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3EDLto5Fj+QyO1rc5OeVTSwga/F1rC5M7RFzWcpsACU=;
        b=iVtgPQLutATy2CYK8bCBxKuHnChHeBus9HL3zpEHz+09aZ3kTNUk1fUx3DYk7lzdoZ
         WQGMFTpVoc3cL60qmMZxkDqrC+eSHPGjQdi1IG4pV1ydy+kg+GdLnu1b6xbptVMkSNxj
         CBLPI+8r7sYn09cSR2knldKWNxdElRSHeaZcDb4OeA6xGOFWf45Zm/UHgJeRsX8lKueT
         8hP4XJnRGThXV+R0W5Rqaq6DYbFt+bUxe88QcXGQr+L6TRv4xpN1O54eX2gdbm+idahP
         evSl7L3carWwlDDjlU0R8FXyQNkzq8Co/WrjPsjk9w1SbZVkzp68wO4uq90QOKJHY9Uh
         gNTQ==
X-Forwarded-Encrypted: i=1; AJvYcCX97Mmf2PTOcUKBPp/cqwj79DOxr8iP/m5b4mutTgfxDibyarJo1z77t96YAarHy4XZQ6yuvc2wVqdm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn7VTNN6TdkaZMCnuKg125E67UlOBEeSj8fgGtRXIeyS+60IwP
	CN46YvdFityeSC30POR5DXyD6LuKhd8is3SgcYcPK9JCjf86gjMEndwKJqtAU5osrLulleK3f6x
	VJA==
X-Gm-Gg: ASbGnct9/m4amjk4Ff9U6hQOIPaA0Rt64TZ3Sg4gTu6SCkXXS3u5JGeog6Hqt6eYAkn
	JBM5FkHWgxDDQH6wyEmjP5kVblCEJqtDJmU41+zI18+46I/UtRp3VfUOeRTv4QP0a70i1Ad12Gb
	Lz0BThEFxdms78FHtpLTj17NgVMDj2V7WE7wdpcymSNoSSIHdIeuQkeDnucMtf0ELpZhPe0bd1v
	n0c4RpcuX4pyaznkzvGZKhgItrUStu7oCmzSZn0JZuHeIyss6qc630TGQAmIQnt5SJus2ARjcNV
	nIGepLQgHZQIUnLUPV/XbkULlXm5lGjLNQi5514cBgLb3gWuq2T8RxBlEx7cx534O1v6ts2J2wI
	ucj++oScYTCNeMPSKHhc=
X-Google-Smtp-Source: AGHT+IFhEBcrz5KOp0lDyVmLOW8zEcHh9QdA7ApVr/5ka0ctoTOHkD+LLZDSV097ocbuXnk2L0DTXQ==
X-Received: by 2002:a05:651c:501:b0:30b:c9cb:47e5 with SMTP id 38308e7fff4ca-30c4a74e08fmr2082641fa.8.1741919282525;
        Thu, 13 Mar 2025 19:28:02 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f209d6esm4042471fa.112.2025.03.13.19.28.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 19:28:00 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-549946c5346so1714647e87.2
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 19:28:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX5QRTCLc0901j14XWbA3qyUL4VwxX4y9uvpKT4JFL68il2gADlUaATPqd62GrhWt7p/Fl+hJkxohRp@vger.kernel.org
X-Received: by 2002:a05:6512:3b90:b0:549:c1e6:cbb9 with SMTP id
 2adb3069b0e04-549c38d07bemr214129e87.9.1741919280219; Thu, 13 Mar 2025
 19:28:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250310104114.2608063-1-damon.ding@rock-chips.com> <20250310104114.2608063-7-damon.ding@rock-chips.com>
In-Reply-To: <20250310104114.2608063-7-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Mar 2025 19:27:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V0Q5v6hcEFJqMfhCSQ80ki5SQRmrXvyeGCOQiFsXc28A@mail.gmail.com>
X-Gm-Features: AQ5f1Jpkp3eXwx7hKjmZ3N01Nrt914JFcQlKc2Ek2r-3Xhw1Wi6nZVzuUBUzhgE
Message-ID: <CAD=FV=V0Q5v6hcEFJqMfhCSQ80ki5SQRmrXvyeGCOQiFsXc28A@mail.gmail.com>
Subject: Re: [PATCH v8 06/13] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, dmitry.baryshkov@linaro.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, 
	boris.brezillon@collabora.com, l.stach@pengutronix.de, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 10, 2025 at 3:42=E2=80=AFAM Damon Ding <damon.ding@rock-chips.c=
om> wrote:
>
> The main modification is moving the DP AUX initialization from function
> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> eDP panel during probing, it is also needed to advance PM operations to
> ensure that eDP controller and phy are prepared for AUX transmission.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>
> ---
>
> Changes in v4:
> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>   component_add() when getting panel from the DP AUX bus
>
> Changes in v5:
> - Advance PM operations to make eDP AUX work well
>
> Changes in v6:
> - Use devm_pm_runtime_enable() instead of devm_add_action_or_reset()
> - Add a new function analogix_dp_remove() to ensure symmetry for PM
>   operations
>
> Changes in v7:
> - Fix the misspelling of word 'operations' in commit message
> - Remove the check related to CONFIG_PM
> - Remove the unnecessary call to pm_runtime_dont_use_autosuspend() if
>   devm_pm_runtime_enable() fails
> - Remove unnecessary function analogix_dp_remove()
> - Add new function analogix_dpaux_wait_hpd_asserted()
>
> Changes in v8:
> - Move the addition of the analogix_dpaux_wait_hpd_asserted() to the
>   other patch
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 20 ++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

