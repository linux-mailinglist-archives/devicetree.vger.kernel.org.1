Return-Path: <devicetree+bounces-125549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1AE9DE817
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 14:53:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B33E3161283
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 13:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8D519F430;
	Fri, 29 Nov 2024 13:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sB6OaG1q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB2819E804
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 13:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732888428; cv=none; b=T8ir72hxEkXDK8NLA99zixn8VTMwRsjbWPzaqkUbbGY1P9CJVYz2/PO2gv3bzUkoQ2EIYH1litOiTcwFyRPWZtMj/xSlxEODXjv4od2D0vRNY5IlYYJ6Dz7fYPkQOtWz5cfU1nGGoHRyQMeiRGy0RcTbNrCrrE4CFm9KbMX0ojQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732888428; c=relaxed/simple;
	bh=+dRJ7NHpUJ00cNs7INzOtHylGUJyGub0iEwQeE6ZSZI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Uz0W7FyzoWd0us4kklF11hLVwc7vU+QYJuVchHqRPpqjfK2/faA4I+kIjNtM/ht1TItNjPWLSwzLyHI3E3Dh4Ohcid7RkPUQKgNmfwaMHN97Txs46vBOmA7fVqVXIL9RXVl1AXOLe0busR0zExaeIVnJAgV4dV/j2lP5/XzYlrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sB6OaG1q; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5d0bdeb0374so371378a12.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 05:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732888425; x=1733493225; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n/Ur8aJlkZb2O0WBY+Ja+CLRvhD2wQCX6NK6ury26eQ=;
        b=sB6OaG1qp3BfWCImDLDbED5L9XHS3l9crclnjuRQGho++U9PYISrS9y355mlt5auEG
         MlvJX3Xs07Po564y+EAdBltgBl1fLcsBtT0hRmu7Jn15s29AdQtpKJBskkiliNuU4siJ
         itCGcUUyWLciFXKclpgZq7GBgTSFNlz/eprscdCKb5YbY18aLtlZ+NtbKAqY472cZZYT
         DZXu5fG20L6dI+Tvw34axbuJ6wdtaJElORbIqvFWgTfOj6ZEgd3x/plDwGp70F/RI06P
         hn5Ejk6mO6h2N6mwbS2W5LWtjrOn3nIuY47MSES9RvnAba66feozK12LBcBZz09XMMvD
         ljqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732888425; x=1733493225;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n/Ur8aJlkZb2O0WBY+Ja+CLRvhD2wQCX6NK6ury26eQ=;
        b=IlEujpi0nAXyCx79LK3YdDF+d+6U1lrekl1eKYmqWEJc/DckjqToXTi5rNw67+9xTl
         dogaVcQFds28ybGXeg1c122dAnjCuMWyyoTptPp9mCDZoFQ89Uk9xNsc7XyZ7EAsaj4c
         QICjIH/hxWm5E6XhPacNwCq7LkSDVGY4/0UbEpsHJr91RCarvvgucAt0ji9amTFjx3w3
         xtqEkeXEWapS3A5lVRitSUQPW3cXT1GuT2mR7qjy4M8eEbDmek5U4AtYOEpxWCUNIdD+
         +vZC14p2rcZZyhed4TR+4dwIjYZVrudV/U7c2lGcV+L00UtCn+Kh9+VpaYGV3sNURHPj
         WWGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXQ7ERtqn47CMpbZ91xZXT9mI95CCH8B3pssKkOlhrYepbHFVnm3GV9LKkZx4cx848bYSj4XIvO2nC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvy1ek1SSW+oL2QQH9hKv4VW6VnOkCiVP3gEediJwc7R111Vfp
	gpT7eq1UPsOd9vmnYbfN6MwKdK8KYA1dW6lauqMAHQb4Qra0c2/iQrzWhBHshCWixcMbTcLF8Ep
	SdIbMjMZPw0NYTT0lDlLQ5nn7J6NZxqUHj/J7hQ==
X-Gm-Gg: ASbGncsMlyhyvViRkkDQWhBwC2TpAxbHRyH074z2lrj9bddu+H637Vs5VbTuw+DUy+A
	g0gQwFFaQQAbyZqu+DN4ITA1NYhMIYug=
X-Google-Smtp-Source: AGHT+IGCwqeDEnJNo83WNtmzKMJUwft+OKQaPAZ33baZKMDUQiMMr0XiZGEiUd02VQ36AikNgL9bZwlAshMXxuPC8CM=
X-Received: by 2002:a05:6402:5194:b0:5cf:f319:4525 with SMTP id
 4fb4d7f45d1cf-5d080c4d37fmr10845661a12.22.1732888425147; Fri, 29 Nov 2024
 05:53:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 29 Nov 2024 15:53:37 +0200
Message-ID: <CAA8EJpoN1qBHyZrQJT_=e_26+tcaKRnSrhtxrK6zBP4BwpL=Hg@mail.gmail.com>
Subject: Re: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>
> Add a mechanism to retry Link Training 2 by lowering the pattern level
> when the link training #2 first attempt fails. This approach enhances
> compatibility, particularly addressing issues caused by certain hub
> configurations.

Please reference corresponding part of the standard, describing this lowering.

>
> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 34 ++++++++++++++++++++++++++++++----
>  1 file changed, 30 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index 49c8ce9b2d0e57a613e50865be3fe98e814d425a..b1862294cb98c9f756b0108b7670cb42de37bae4 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -1220,7 +1220,7 @@ static void msm_dp_ctrl_clear_training_pattern(struct msm_dp_ctrl_private *ctrl)
>  }
>
>  static int msm_dp_ctrl_link_train_2(struct msm_dp_ctrl_private *ctrl,
> -                       int *training_step)
> +                       int *training_step, bool downgrade)
>  {
>         int tries = 0, ret = 0;
>         u8 pattern;
> @@ -1243,6 +1243,28 @@ static int msm_dp_ctrl_link_train_2(struct msm_dp_ctrl_private *ctrl,
>                 state_ctrl_bit = 2;
>         }
>
> +       /*
> +        * DP link training uses the highest allowed pattern by default.
> +        * If it fails, the pattern is downgraded to improve cable and monitor compatibility.
> +        */
> +       if (downgrade) {
> +               switch (pattern) {
> +               case DP_TRAINING_PATTERN_4:
> +                       pattern = DP_TRAINING_PATTERN_3;
> +                       state_ctrl_bit = 3;
> +                       break;
> +               case DP_TRAINING_PATTERN_3:
> +                       pattern = DP_TRAINING_PATTERN_2;
> +                       state_ctrl_bit = 2;
> +                       break;
> +               default:
> +                       break;
> +               }
> +       }
> +
> +       drm_dbg_dp(ctrl->drm_dev, "pattern(%d) state_ctrl_bit(%d) downgrade(%d)\n",
> +               pattern, state_ctrl_bit, downgrade);
> +
>         ret = msm_dp_catalog_ctrl_set_pattern_state_bit(ctrl->catalog, state_ctrl_bit);
>         if (ret)
>                 return ret;
> @@ -1311,10 +1333,14 @@ static int msm_dp_ctrl_link_train(struct msm_dp_ctrl_private *ctrl,
>         /* print success info as this is a result of user initiated action */
>         drm_dbg_dp(ctrl->drm_dev, "link training #1 successful\n");
>
> -       ret = msm_dp_ctrl_link_train_2(ctrl, training_step);
> +       ret = msm_dp_ctrl_link_train_2(ctrl, training_step, false);
>         if (ret) {
> -               DRM_ERROR("link training #2 failed. ret=%d\n", ret);
> -               goto end;
> +               drm_dbg_dp(ctrl->drm_dev, "link training #2 failed, retry downgrade.\n");
> +               ret = msm_dp_ctrl_link_train_2(ctrl, training_step, true);
> +               if (ret) {
> +                       DRM_ERROR("link training #2 failed. ret=%d\n", ret);
> +                       goto end;
> +               }
>         }
>
>         /* print success info as this is a result of user initiated action */
>
> --
> 2.25.1
>


-- 
With best wishes
Dmitry

