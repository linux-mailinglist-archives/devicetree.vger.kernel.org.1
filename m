Return-Path: <devicetree+bounces-127366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B519E5427
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70CD9283C23
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A58207DE2;
	Thu,  5 Dec 2024 11:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CVH1EBpy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577CB207DE1
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733398851; cv=none; b=Vc4QdyUwa+DDpRMg7glTwqz29UQLykHhQoLAN8ImhvefykViPfssdjIGMN/Ktc8m7WsaDYvfNPrmgq9aBFu/VxNx5KtIrXpI/5JA7u60s/L7xKGSN+NFaiAsLQtHlS38DS7tnMBH6GsVnZ4k7rqNfOU2SPybgRYFsILEne42g0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733398851; c=relaxed/simple;
	bh=MgNShRnQp/aT/PaWLKJTQ9YBqwcVrKGxN8gk7Ft9IOw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fIsiTQnjAACyXhP34yRY+6d+LBlOuW+Dwp7NCZbCK8AOlAXhRe1W5VEqj/RkT5R/D1XREozQRgdZn/CK73YPK+eDRvdOQiKiPJ75APFLAb1j8EFKdgsS2o97FDB6PsOZisoRUaFg2dW6JYJ8gmIdxlCjwvMiTUd41PpMqMVtgHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CVH1EBpy; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e397269c68fso1123447276.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733398848; x=1734003648; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kVlR8SfhnG5cey0ump1Xp1q6+3VfWCJyhprNP3dwbtc=;
        b=CVH1EBpypHoebKjRU1NfKKjNaVmOWbZrI8u4mH59Yie+JzImTf6j3ju5VOxZFRiq47
         JEPN7niTFkYN833oi5NQDT5rR877kK3OUNAl0Q4d9mOISPixS5t9aSNhumwZEoPlCgA2
         NXpfHLhOOsN22IGQpt4R+AiShFzyOh3vTkX8gTQBRCrAeDBk48NvjKPD//YwbNAY7uZF
         WeWKKap6hKBuLTlCbzfKu18PaBgFYG0Ih9NhV6oik4vSpF327Uoh/jjjR+w7+fEI9d2g
         DIVLNkbmOYREUKWm2H1HGvjst4qMO+7907QqPGhgc5TlBAF7yr4vLmHBbIfDnWrq76U8
         Vb7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733398848; x=1734003648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kVlR8SfhnG5cey0ump1Xp1q6+3VfWCJyhprNP3dwbtc=;
        b=B/34oiWKGSxfJRsiD4mCPwWkZUBuEODn2SDcRfj1pZ0U38b1HiktdQk1fCpp5JStWg
         CXSxvhHxHfa5XkaAzFKZ+px5y4qJsXe0rRSszZTPKTIWVCRyDurIKqmaGgK1iPZcOCwd
         2X81tKzQTIrPxQzvKeUSRCAG08m1xLF1PvCxen7F5BD49AZIrGyzhVLgtZ6xMXaoQ67E
         B6WbPljwgDktC6JBzKS7XFkJ8Wo7nkii2F3OSmlizSzG/ld7wPyjaSXMDp3dOWfb+vlw
         k9D7qcGaGQ61Pcxv5a1WD+CBMLO2Gm2bS136TxGqBjYcVPAJgxwTeZ8KZBk7vp4vu412
         QBlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNAGWXTZ+tblo/Dz+QfiCbpqtPePPtLNdYeulmv0SNyxskILKaIILNe7ypyR/S7hQAK967wvtVNWQy@vger.kernel.org
X-Gm-Message-State: AOJu0YxaqPwm0MWDXntccnplfvgLFeGI4pcNyZrgQlr6tr3NQEraIHIe
	Asbm22JgMMAxYMqhKcHdRlaSQvD2KwxTS0xMaVx8aheDMK9G7SIiBYuVtaexZPUu4q729bh1HOy
	xFzP+IItVTcVcA3cirSZpLwpO6iuImzzfKrFJeQ==
X-Gm-Gg: ASbGnctNmhtr2TAVkjVnr7TbKTiRreAYP5OO1nC8h7zTA/WZb6Q4bOGO5866Ti+dgsn
	eW8ta8B0/tc14v2xNQdBFzIrPDwTBcHdzlvXmc2UP+hDIIA==
X-Google-Smtp-Source: AGHT+IE7HGuIvq1u8h8I8rkPJdzS+9WwLlvVg6WJaLoZvVrKFT+XlrLuu0kqLNSwgkmrfDwW/eoD4F5p5LcplIqXWkE=
X-Received: by 2002:a05:6902:cc5:b0:e39:b0de:fed8 with SMTP id
 3f1490d57ef6-e39d3a293cdmr10638085276.17.1733398848266; Thu, 05 Dec 2024
 03:40:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
 <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
 <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com> <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
 <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com>
In-Reply-To: <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 5 Dec 2024 13:40:37 +0200
Message-ID: <CAA8EJprAFYD6ykN10-r=JwHM4A4XeDDcZVcVWYp_5A5FP-=RyA@mail.gmail.com>
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping configuration
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
Content-Transfer-Encoding: quoted-printable

On Thu, 5 Dec 2024 at 13:28, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>
>
>
> On 12/2/2024 6:46 PM, Dmitry Baryshkov wrote:
> > On Mon, Dec 02, 2024 at 04:40:05PM +0800, Xiangxu Yin wrote:
> >>
> >>
> >> On 11/29/2024 9:50 PM, Dmitry Baryshkov wrote:
> >>> On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com>=
 wrote:
> >>>>
> >>>> Add the ability to configure lane mapping for the DP controller. Thi=
s is
> >>>> required when the platform's lane mapping does not follow the defaul=
t
> >>>> order (0, 1, 2, 3). The mapping rules are now configurable via the
> >>>> `data-lane` property in the devicetree. This property defines the
> >>>> logical-to-physical lane mapping sequence, ensuring correct lane
> >>>> assignment for non-default configurations.
> >>>>
> >>>> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> >>>> ---
> >>>>  drivers/gpu/drm/msm/dp/dp_catalog.c | 11 +++++------
> >>>>  drivers/gpu/drm/msm/dp/dp_catalog.h |  2 +-
> >>>>  drivers/gpu/drm/msm/dp/dp_ctrl.c    |  2 +-
> >>>>  drivers/gpu/drm/msm/dp/dp_panel.c   | 13 ++++++++++---
> >>>>  drivers/gpu/drm/msm/dp/dp_panel.h   |  3 +++
> >>>>  5 files changed, 20 insertions(+), 11 deletions(-)
> >>>>
> >
> >>>> @@ -461,6 +460,7 @@ static int msm_dp_panel_parse_dt(struct msm_dp_p=
anel *msm_dp_panel)
> >>>>         struct msm_dp_panel_private *panel;
> >>>>         struct device_node *of_node;
> >>>>         int cnt;
> >>>> +       u32 lane_map[DP_MAX_NUM_DP_LANES] =3D {0, 1, 2, 3};
> >>>>
> >>>>         panel =3D container_of(msm_dp_panel, struct msm_dp_panel_pri=
vate, msm_dp_panel);
> >>>>         of_node =3D panel->dev->of_node;
> >>>> @@ -474,10 +474,17 @@ static int msm_dp_panel_parse_dt(struct msm_dp=
_panel *msm_dp_panel)
> >>>>                 cnt =3D drm_of_get_data_lanes_count(of_node, 1, DP_M=
AX_NUM_DP_LANES);
> >>>>         }
> >>>>
> >>>> -       if (cnt > 0)
> >>>> +       if (cnt > 0) {
> >>>> +               struct device_node *endpoint;
> >>>> +
> >>>>                 msm_dp_panel->max_dp_lanes =3D cnt;
> >>>> -       else
> >>>> +               endpoint =3D of_graph_get_endpoint_by_regs(of_node, =
1, -1);
> >>>> +               of_property_read_u32_array(endpoint, "data-lanes", l=
ane_map, cnt);
> >>>> +       } else {
> >>>>                 msm_dp_panel->max_dp_lanes =3D DP_MAX_NUM_DP_LANES; =
/* 4 lanes */
> >>>> +       }
> >>>
> >>> Why? This sounds more like dp_catalog or (after the refactoring at
> >>> [1]) dp_ctrl. But not the dp_panel.
> >>>
> >>> [1] https://patchwork.freedesktop.org/project/freedreno/series/?order=
ing=3D-last_updated
> >>>
> >> We are used the same prop 'data-lanes =3D <3 2 0 1>' in mdss_dp_out to=
 keep similar behaviour with dsi_host_parse_lane_data.
> >> From the modules used, catalog seems more appropriate, but since the m=
ax_dp_lanes is parsed at dp_panel, it has been placed here.
> >> Should lane_map parsing in msm_dp_catalog_get, and keep max_dp_lanes p=
arsing at the dp_panel?
> >
> > msm_dp_catalog_get() is going to be removed. Since the functions that
> > are going to use it are in dp_ctrl module, I thought that dp_ctrl.c is
> > the best place. A better option might be to move max_dp_lanes and
> > max_dp_link_rate to dp_link.c as those are link params. Then
> > lane_mapping also logically becomes a part of dp_link module.
> >
> > But now I have a more important question (triggered by Krishna's email
> > about SAR2130P's USB): if the lanes are swapped, does USB 3 work on tha=
t
> > platform? Or is it being demoted to USB 2 with nobody noticing that?
> >
> > If lanes 0/1 and 2/3 are swapped, shouldn't it be handled in the QMP
> > PHY, where we handle lanes and orientation switching?
> >
> I have checked the DP hardware programming guide and also discussed it wi=
th Krishna.
>
> According to the HPG section '3.4.2 PN and Lane Swap: PHY supports PN swa=
p for mainlink and AUX, but it doesn't support lane swap feature.'
>
> The lane swap mainly refers to the logical to physical mapping between th=
e DP controller and the DP PHY. The PHY handles polarity inversion, and the=
 lane map does not affect USB behavior.
>
> On the QCS615 platform, we have also tested when DP works with lane swap,=
 other USB 3.0 ports can works normally at super speed.

"Other USB 3.0 ports"? What does that mean? Please correct me if I'm
wrong, you should have a USB+DP combo port that is being managed with
combo PHY. Does USB 3 work on that port?

In other words, where the order of lanes is actually inverted? Between
DP and combo PHY? Within combo PHY? Between the PHY and the pinout?
Granted that SM6150 was supported in msm-4.14 could you possibly point
out a corresponding commit or a set of commits from that kernel?

>
> Additionally, if it were placed on the PHY side, the PHY would need acces=
s to dp_link=E2=80=99s domain which can access REG_DP_LOGICAL2PHYSICAL_LANE=
_MAPPING.

I was thinking about inverting the SW_PORTSEL_VAL bit.

> Therefore, we believe that the  max_dp_link_rate,max_dp_lanes and lane_ma=
p move to dp_link side is better.
>
> >>>> +
> >>>> +       memcpy(msm_dp_panel->lane_map, lane_map, msm_dp_panel->max_d=
p_lanes * sizeof(u32));
> >>>>
> >>>>         msm_dp_panel->max_dp_link_rate =3D msm_dp_panel_link_frequen=
cies(of_node);
> >>>>         if (!msm_dp_panel->max_dp_link_rate)
> >>>> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.h b/drivers/gpu/drm/msm=
/dp/dp_panel.h
> >>>> index 0e944db3adf2f187f313664fe80cf540ec7a19f2..7603b92c32902bd3d448=
5539bd6308537ff75a2c 100644
> >>>> --- a/drivers/gpu/drm/msm/dp/dp_panel.h
> >>>> +++ b/drivers/gpu/drm/msm/dp/dp_panel.h
> >>>> @@ -11,6 +11,8 @@
> >>>>  #include "dp_aux.h"
> >>>>  #include "dp_link.h"
> >>>>
> >>>> +#define DP_MAX_NUM_DP_LANES    4
> >>>> +
> >>>>  struct edid;
> >>>>
> >>>>  struct msm_dp_display_mode {
> >>>> @@ -46,6 +48,7 @@ struct msm_dp_panel {
> >>>>         bool video_test;
> >>>>         bool vsc_sdp_supported;
> >>>>
> >>>> +       u32 lane_map[DP_MAX_NUM_DP_LANES];
> >>>>         u32 max_dp_lanes;
> >>>>         u32 max_dp_link_rate;
> >>>>
> >>>>
> >>>> --
> >>>> 2.25.1
> >>>>
> >>>
> >>>
> >>
> >>
> >> --
> >> linux-phy mailing list
> >> linux-phy@lists.infradead.org
> >> https://lists.infradead.org/mailman/listinfo/linux-phy
> >
>


--=20
With best wishes
Dmitry

