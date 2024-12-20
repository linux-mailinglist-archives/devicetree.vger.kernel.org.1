Return-Path: <devicetree+bounces-132924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B32C9F8BE7
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 06:37:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0264165E0C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 05:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D27A13B58D;
	Fri, 20 Dec 2024 05:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XWd8kktx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD187083C
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734673046; cv=none; b=uJRI6ucwUHH7Oe7jB1TDqkN8ufSUfWA/e66qUS/EpIZy+BMcrBnXD0nhcbhdMc0IdeAA4IF8TmHUm2vR4T8GItgcK7ZNB9UhehvKCHsc1H3lKFJE0brF6vCfal4HQOiNWBSFCSDaeEUWuC7E/sFsaTL/PQ0PiRJY8q08xQOTFE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734673046; c=relaxed/simple;
	bh=XpJpLFFkJ16omU+IKidVVorzb9CZHqSAnRML/ega+dY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dr8BOCzAqFjVDSTEyDksQrpUVSY7IBAiPowZPj24qi4EV5TotYrle9lr/DZAKXFQ9fa/gTb39NUAUdSj2LfA/BI2Gz5/iSSDRn6UkpXpW63wPhEGp2TbobWTNC7hzTgCVNv6YwwKnwUEJz1qfXdZXIEB7FDpB+nB5Y4PtL2iYRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XWd8kktx; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6f150ddc86dso13047207b3.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734673042; x=1735277842; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eLpODaYRyFEauMGVSyk9T1QhhMdmd8z0vW52xuJIe/8=;
        b=XWd8kktx/lmqpI2wmQMw3/vqVFyGsNbfW8K9RPMy4AK9wE7Dc1xChlhSGW0wPhiXz0
         cQ4Dw5LQRJ0OPnWN9CRaqdFQxnwbOqEAz8Unam/7/idra9Nbq7NtbZTO3j5E/SwzF/kp
         H4GjhgoE60fHI9gwmS1Ky80MqPW9gbrfiXmzJF/gvne1941goUt+mZTUtZYfAMfu+Wo9
         JRjNt1cTIr1LUWrWCbe+NjX1vWOdnPAtOkPK/M3haBqeR2nkwO8Fn4/AIcVDrVHhrcLA
         ajotBPh3BDBhnqq/nFs7pzGOoNCYoWl39fRlT6WztYxMEyhYVndH2cgFm93jCSkkpF0W
         g5xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734673042; x=1735277842;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eLpODaYRyFEauMGVSyk9T1QhhMdmd8z0vW52xuJIe/8=;
        b=dbSskku7+FfebRosBDZh2Ga3glHGIcM/7OnjUhasEV9yGQd+fN8ETOp6A78RwZ6A/z
         qfB2ZJSHEXH+nqIasui2rM37yXxZSe2cxr/+jfsqGW6eXc0K8Dihk+oX3NdJFpnu3Qdw
         p1JKtit14jHjLHWdI+Q4Oc9BUEJyDmrMwDawV6cCV8R7tPZcFDeqSiJGBY2mfZg1Wh1C
         w8TK7F/ICy4qIbm6ivPyixLmmDYUHvFJ5o/A0Acg/u/cwL+64fUGwRFEkl0j6izPW2Xc
         ErfUnE3Z/9zHvV8bUQ01Jx4pAZtoAB13QXSE9soc+k21MxxyIRTKy2u4xYPKyo6wpR5K
         SdKw==
X-Forwarded-Encrypted: i=1; AJvYcCU6E8t8pPOK4tXH5wB/WLhsnKjAAuftqHcgHU7XbznlCIY7qkhzBjGNo3wMrZK320aAhaartvZPPxsc@vger.kernel.org
X-Gm-Message-State: AOJu0YwWKSrIyVhlxJAQN8mrdZIXyjTqi0ZeYG0WKVS0pgQIsEufxLXD
	ncSi7jc+8iI5OLXyps0Spxv190+dw6yuM7cHBVVxcsR3q3Q7sR4iu3IN9QQ1/rPW6XJp81kGF18
	QkI7pxnwXkR9IuL1P3PREan89GE08bOXTe/Lr6w==
X-Gm-Gg: ASbGncvyOxPxxceT1de1O5ksGyfhHM9KtNoLVRVSCQ2hI8I8S3cnNuhNHp0MV4H9BT+
	tt42DiJD+ywSVd4KCC0H3d7mDW8m3vnHOby1ueQKJX+weuWN20y5M
X-Google-Smtp-Source: AGHT+IFGtCjCZ+VojYNyMK2Y/K7VXCStGJjA+69HR5EsAR1bloqgbrLQAQ6WEmjrZhxmttZwb8bmMWY+OJBKwRQPbj4=
X-Received: by 2002:a05:690c:f84:b0:6ef:9017:3cc8 with SMTP id
 00721157ae682-6f3f8219d5bmr11574697b3.31.1734673042550; Thu, 19 Dec 2024
 21:37:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-8-damon.ding@rock-chips.com> <a6vvydjbx3hbckoy74iiyzguyyacwvdh6iirqydjfvhwgocw3a@knecggjcbcid>
 <654c30ec-7d7e-4956-9a48-15bfcea34acc@rock-chips.com>
In-Reply-To: <654c30ec-7d7e-4956-9a48-15bfcea34acc@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 20 Dec 2024 07:37:11 +0200
Message-ID: <CAA8EJpqk-iim668ZTzQaROJmkTr2COBwA5G9Eg73uLE28XHYpg@mail.gmail.com>
Subject: Re: [PATCH v3 07/15] drm/bridge: analogix_dp: Add support for phy configuration.
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 20 Dec 2024 at 05:37, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/20 8:13, Dmitry Baryshkov wrote:
> > On Thu, Dec 19, 2024 at 04:05:56PM +0800, Damon Ding wrote:
> >> Add support to configurate link rate, lane count, voltage swing and
> >> pre-emphasis with phy_configure(). It is helpful in application scenarios
> >> where analogix controller is mixed with the phy of other vendors.
> >>
> >> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >>
> >> ---
> >>
> >> Changes in v2:
> >> - remove needless assignments for phy_configure()
> >> - remove unnecessary changes for phy_power_on()/phy_power_off()
> >> ---
> >>   .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
> >>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 56 +++++++++++++++++++
> >>   2 files changed, 57 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> >> index 6f10d88a34c5..9429c50cc1bc 100644
> >> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> >> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> >> @@ -1696,6 +1696,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
> >>      if (dp->plat_data->power_on)
> >>              dp->plat_data->power_on(dp->plat_data);
> >>
> >> +    phy_set_mode(dp->phy, PHY_MODE_DP);
> >>      phy_power_on(dp->phy);
> >>
> >>      analogix_dp_init_dp(dp);
> >> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> >> index 3afc73c858c4..613ce504bea6 100644
> >> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> >> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> >> @@ -11,6 +11,7 @@
> >>   #include <linux/gpio/consumer.h>
> >>   #include <linux/io.h>
> >>   #include <linux/iopoll.h>
> >> +#include <linux/phy/phy.h>
> >>
> >>   #include <drm/bridge/analogix_dp.h>
> >>
> >> @@ -513,10 +514,25 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
> >>   void analogix_dp_set_link_bandwidth(struct analogix_dp_device *dp, u32 bwtype)
> >>   {
> >>      u32 reg;
> >> +    int ret;
> >>
> >>      reg = bwtype;
> >>      if ((bwtype == DP_LINK_BW_2_7) || (bwtype == DP_LINK_BW_1_62))
> >>              writel(reg, dp->reg_base + ANALOGIX_DP_LINK_BW_SET);
> >> +
> >> +    if (dp->phy) {
> >> +            union phy_configure_opts phy_cfg = {0};
> >> +
> >> +            phy_cfg.dp.lanes = dp->link_train.lane_count;
> >
> > Should not be necessary, you are only setting the .set_rate.
>
> Indeed, this can be dropped.
>
> >
> >> +            phy_cfg.dp.link_rate =
> >> +                    drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
> >> +            phy_cfg.dp.set_rate = true;
> >> +            ret = phy_configure(dp->phy, &phy_cfg);
> >> +            if (ret && ret != -EOPNOTSUPP) {
> >> +                    dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> >> +                    return;
> >> +            }
> >> +    }
> >>   }
> >>
> >>   void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
> >> @@ -530,9 +546,22 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
> >>   void analogix_dp_set_lane_count(struct analogix_dp_device *dp, u32 count)
> >>   {
> >>      u32 reg;
> >> +    int ret;
> >>
> >>      reg = count;
> >>      writel(reg, dp->reg_base + ANALOGIX_DP_LANE_COUNT_SET);
> >> +
> >> +    if (dp->phy) {
> >> +            union phy_configure_opts phy_cfg = {0};
> >> +
> >> +            phy_cfg.dp.lanes = dp->link_train.lane_count;
> >> +            phy_cfg.dp.set_lanes = true;
> >> +            ret = phy_configure(dp->phy, &phy_cfg);
> >> +            if (ret && ret != -EOPNOTSUPP) {
> >> +                    dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> >> +                    return;
> >> +            }
> >> +    }
> >>   }
> >>
> >>   void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
> >> @@ -546,10 +575,37 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
> >>   void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp)
> >>   {
> >>      u8 lane;
> >> +    int ret;
> >>
> >>      for (lane = 0; lane < dp->link_train.lane_count; lane++)
> >>              writel(dp->link_train.training_lane[lane],
> >>                     dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL + 4 * lane);
> >> +
> >> +    if (dp->phy) {
> >> +            union phy_configure_opts phy_cfg = {0};
> >> +
> >> +            for (lane = 0; lane < dp->link_train.lane_count; lane++) {
> >> +                    u8 training_lane = dp->link_train.training_lane[lane];
> >> +                    u8 vs, pe;
> >> +
> >> +                    vs = (training_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
> >> +                         DP_TRAIN_VOLTAGE_SWING_SHIFT;
> >> +                    pe = (training_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> >> +                         DP_TRAIN_PRE_EMPHASIS_SHIFT;
> >> +                    phy_cfg.dp.voltage[lane] = vs;
> >> +                    phy_cfg.dp.pre[lane] = pe;
> >> +            }
> >> +
> >> +            phy_cfg.dp.lanes = dp->link_train.lane_count;
> >> +            phy_cfg.dp.link_rate =
> >> +                    drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
> >
> > This two should not be necessary, please drop them.
>
> These two are necessary for rk_hdptx_phy_set_voltage(), so they cannot
> be dropped.

Please review the documentation for struct phy_configure_opts_dp and
fix your PHY driver to skip the values for which the .set_foo isn't
set. Then you might have to change this part.
You are setting just .set_voltages. It means that the rate and .lanes
shouldn't be changed and can be used as they were set by the previous
calls to phy_configure().

>
> >
> >> +            phy_cfg.dp.set_voltages = true;
> >> +            ret = phy_configure(dp->phy, &phy_cfg);
> >> +            if (ret && ret != -EOPNOTSUPP) {
> >> +                    dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> >> +                    return;
> >> +            }
> >> +    }
> >>   }
> >>
> >>   u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
> >> --
> >> 2.34.1
> >>
> >
>
> Best regards,
> Damon
>


-- 
With best wishes
Dmitry

