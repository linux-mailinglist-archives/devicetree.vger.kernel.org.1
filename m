Return-Path: <devicetree+bounces-150657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 211C2A43289
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 02:41:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B51817754B
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 01:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3943B7081B;
	Tue, 25 Feb 2025 01:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ROAhXSJT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675F157C9F
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740447696; cv=none; b=SryjgrBSiyc1eT/F3JvlU574DgkFGnG9JfZSnYawU+HIGPhn/Tbd7dUk+5mzDDA3vjG5DF2HMzPLrAOhEf5o5XI+LHSdFnY/6SIySFbV+GaaKyk+PgxuCBsTJ+bytFfIOOxZ/2O+Z4Matqj+0VPLukIjR/5DpRSZSS/JA9mAb3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740447696; c=relaxed/simple;
	bh=56s1IC8cuxy/QSKKPimVmdpa8uC9DroFpVGbP/vkGE0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pS6SmrHpK4JIC+GXtOzyNVR4ogskTr2E2wHoeCfxm4XaS5FZtVEYQqe8cWv3clmIZFDGWip6img3Nrs+pGRazUCRsOoDOsqtUNlf+ywi/LY1lp5SO+ZFMNUt6W0KW60nNznkjoX68F/nck6p8nsgApFlvuz+0ytWRpDBRD6dAD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ROAhXSJT; arc=none smtp.client-ip=209.85.167.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f68.google.com with SMTP id 2adb3069b0e04-546202d633dso5057903e87.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740447692; x=1741052492; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpinBTLgUsFr4FW8ynMBn6mnM1bFPNOn+l/M0TzxPak=;
        b=ROAhXSJTvddwgM7Su6xP7gXNNK5+yOOeEdruvZqWfG8ws3sCmGHAi3tILWd+jd0H4w
         QnARqOoikN7pckguHPP7UQfjU4UJCx1GSeAtHQzIn2OAdFXFvXLrOoh4F/XM+CzF+r0V
         FoiSu72fO8XgU+avd58/CVoBH34GUVqGlQkSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740447692; x=1741052492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpinBTLgUsFr4FW8ynMBn6mnM1bFPNOn+l/M0TzxPak=;
        b=QI9QbwwJ/ZoHM0WczRxZGGWj1MVEGuB3XEWN9uUsDjCX2Up2YRvbFUS672sCTCirhi
         038rvRhNus30AZsaPWs4zreR8ODtvBVJ6XyNHg8PwiPkimkf9HaxO+fOnrDtGO2OSQkj
         AKCVN8bFz7o93RBV6NxdHkb/qhlccnnUaOzfO+6DyGXZwMohG4QWaN9aGo4xA9S5vBCq
         hx4nJkSyHHTFjF3jvO6+5OcvrtQ6n0tsKELPz814NtviQXT1H7ziMSkrTUaE+LAGLAf1
         6Ft6gZ+aafOgObwYPvX63OCZDllMTkCmk54+VJT0V9lqCsPwfluJSIqFV/EQm/H32CZu
         DafA==
X-Forwarded-Encrypted: i=1; AJvYcCUHq4RVCBxuvCcg8T5hsg+cfB4huAtIoJ48HjwIMtYkf2zF1+usAoiSDsX5DFmTOzT6HelTIGG9X3oA@vger.kernel.org
X-Gm-Message-State: AOJu0YwSdLwDV6SRM+DSvFlSiM/09eiDVUwSgKBOosNk5GfCg9HEVZP9
	1gvOyft4PWoLKWS8q4M3t6+yCkeXVco/9QcwEAKcK/cTsYbNWd1JPx/p61W+eH4/tB/6IzEQuc/
	IK/ZW
X-Gm-Gg: ASbGncvasAfHXum283WdShxJ1ZWNeAtNlddYgv3DGFpkqCS+JLEBJCP/GkI9oHdx0DS
	BuGqQlvK0+Re9NvCuM5WHBj1rhsaVhhPOQRBt2gYSEy8284k/rk5AAHpEFHEwyNN9hduY9Q2Cmw
	fvWf8zyDHiO6N16msgtZtQPf+sGdCAoEsxvsdD9dbA0IiO1sxlX2ZtnUOxRZ6bLQ3BQA9T8Vt/y
	kj97JBtoMwO7SDtp2PAi7awRdUQdj3V0z3t8PbUzU1YpWMHnFFPRnVa0TMI/CDIi8JFiVjqhGbq
	7q/fdIayfDc8rdje6CwspWEuFzzx1A8E+CkKJNLLyALipO+G9qsAG6iSb0530O/LdBs4Eg==
X-Google-Smtp-Source: AGHT+IGBAYti+ado9igsknadgsCn2RzXCmk8rvtfQrjB3YeZ0mZurizvQ2m0sJS8Sd2lNrXcIf2X3g==
X-Received: by 2002:a05:6512:e9c:b0:545:d72:95e5 with SMTP id 2adb3069b0e04-548510cd25emr422530e87.7.1740447691847;
        Mon, 24 Feb 2025 17:41:31 -0800 (PST)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514b268bsm47388e87.18.2025.02.24.17.41.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:41:31 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3091fecb637so40997021fa.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:41:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW01AzPqMgcoIXobwuFrRWXB36uYKV5lghoAsyq8Is9UtC+ububBKmaguyKSX7nglYu74no7J0CpvUf@vger.kernel.org
X-Received: by 2002:a05:6512:12d3:b0:545:5a5:b69f with SMTP id
 2adb3069b0e04-548510cd51bmr337321e87.9.1740447688736; Mon, 24 Feb 2025
 17:41:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-10-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-10-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:41:17 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WoigDDTG6wTK0smsxASVfK5BzzW6KNpKWq97v4GAgvmw@mail.gmail.com>
X-Gm-Features: AWEUYZnKr8Y-H4FsK-guhyhHxicg1iDHnSI-Q2A1gzO1kxk46bWqe3yORiZ3SvY
Message-ID: <CAD=FV=WoigDDTG6wTK0smsxASVfK5BzzW6KNpKWq97v4GAgvmw@mail.gmail.com>
Subject: Re: [PATCH v7 09/15] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	dmitry.baryshkov@linaro.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, boris.brezillon@collabora.com, 
	l.stach@pengutronix.de, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Feb 24, 2025 at 12:14=E2=80=AFAM Damon Ding <damon.ding@rock-chips.=
com> wrote:
>
> The main modification is moving the DP AUX initialization from function
> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> eDP panel during probing, it is also needed to advance PM operations to
> ensure that eDP controller and phy are prepared for AUX transmission.
>
> Additionally, add support for &drm_dp_aux.wait_hpd_asserted() to help
> confirm the HPD state before doing AUX transfers.

Maybe move the addition of the analogix_dpaux_wait_hpd_asserted() to a
separate patch?


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
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 37 ++++++++++++++-----
>  1 file changed, 28 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers=
/gpu/drm/bridge/analogix/analogix_dp_core.c
> index a57e06d303a1..ff81c37dbe1d 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1548,6 +1548,22 @@ static ssize_t analogix_dpaux_transfer(struct drm_=
dp_aux *aux,
>         return ret;
>  }
>
> +static int analogix_dpaux_wait_hpd_asserted(struct drm_dp_aux *aux, unsi=
gned long wait_us)
> +{
> +       struct analogix_dp_device *dp =3D to_dp(aux);
> +       int val;
> +       int ret;
> +
> +       pm_runtime_get_sync(dp->dev);
> +
> +       ret =3D readx_poll_timeout(analogix_dp_detect_hpd, dp, val, !val,=
 wait_us / 100, wait_us);

More than happy if someone else wants to overrule me, but it seems
weird that you're looping over a function that already has a loop.
Shouldn't you be calling analogix_dp_get_plug_in_status() directly?
...and if "dp->force_hpd" you probably shouldn't be polling at all. If
HPD is not hooked up I think we decided in sn65dsi86 that we should
just sleep for the maximum time (choosing a conservative value if told
to wait forever).


Aside from that and the idea of moving
analogix_dpaux_wait_hpd_asserted() to a separate patch this looks good
to me.


-Doug

