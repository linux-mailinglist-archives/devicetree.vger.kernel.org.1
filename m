Return-Path: <devicetree+bounces-148999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9B9A3DF08
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6333169978
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230AD1FDA8E;
	Thu, 20 Feb 2025 15:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yzfyUaei"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459C61FA84F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740066162; cv=none; b=NfG7A7IEKN4AasdXHqSI5KCfXSPFfJJ8Xfsbdf0D9VYp5oJt/O1pvxekEixjIuXq3BJUsCnOmfLYC4gHXoWErjA3Jl57/9vq6qcbZAL7ZNBmDID+vmdWnoZXQr+HOVk4hrlwmrRo6pTsWhHLiyOcpfv1Vbz2iZS8BYpygrUVMXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740066162; c=relaxed/simple;
	bh=ujRn8n7GidyCxxK9ZmLQoL5PmhUD3AHxBU7IMcuJFVU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WYnHg3gQJ4iPZc9tAK7+93QClcC5yYDE8ccALqsA/iyBKVunjJfE1Oof+4MIPJOAn/IkzsQiwitKOYF9R0JKkZvWT4M8jsn+aSICi9CC8J0aa0OwyPMcXg4LNbADIRZGl87DLlIPhRu7qnyNRA28m/VRjeA9W+oOAndY1O6cJxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yzfyUaei; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6fba8e84d3cso8956087b3.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740066159; x=1740670959; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5FyY/uqpI1+/qb2X9DvR/LN4Auweuub6T5/j2p07sJM=;
        b=yzfyUaeibNCo2pRy4jNKBJdOR/kKRbjKmdncbqjruS2ZqUAJMGh/T2+CfL4keyWP2h
         um21foVJDz4TlMcyvN3RFvMrAdgPFUXy+BN/ikBWRoubxr0SpZ4Oii4SsKuGG3mJ59nY
         429xD0ShzN2gqtdubxuab8864arn66MjNqi1h6tPPpRqHWTBzAbbfW9MItE8Tb+aSgL8
         9J60QsyM7OaKJ3flolOI9O5/xmO1TdEdOCETiiZwCxF0HfAfS//IwWO9AVHKs0knwsmB
         XirpDgsA8m1g7fbpcI95pWisjyzCneJgO19S7OIBTDRh4QEXVdApshJYimJKlPbyQ95b
         CDyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740066159; x=1740670959;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5FyY/uqpI1+/qb2X9DvR/LN4Auweuub6T5/j2p07sJM=;
        b=aip6CE7R8SPmqBGSSZmE+3mXP6F5seBfTQU4NC/nsQF6MF2q0ZgcdNKLnkWn1PSDh+
         BuyILoyMXNC5Mj6H+UUCC2puHLj68Ohk3XAaluY8OYf+WbuNQXVSSjhoLtOq6wXd+B+a
         +ny+s4nP8jP6k0aNG913QWjoWjvwxEm9PQDp6EiDw86ZhApwqLsfSJXtbBQsYnWwFvwr
         V+ths7odlnt0qGaAQLTApR8mIk/nJ3qoZfnI+znz7g0x+JrouIU1KGANv6RpNxENNwGc
         0NpDPWWZoWnSp81+2sw3Ygx0GXnx2s2lm3tf5ay6Cvdp2te/bHVsoWmUddL/mx5k263t
         LPow==
X-Forwarded-Encrypted: i=1; AJvYcCXpe/77iL1d8vK8i6B31o3hBys3YdKgT4F6b5nWBgCKk71RfQooU/VeN33yMNPS93y4WSuuiI8jYElO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw44edBsmYyllCRG57pscQpmfgWVJDZU6/YpTeqTTydvkJgwHWN
	zoN7KFF9mrmkE7Wvto/UJWMnJNR7vGRgn8kAdQuOgNVUObokfhVMa1nbR9c0jxl3AkXaVv7irrn
	j9woc/fsqmejQXS2Fl+z/zwyvQlqsGzsByErRPw==
X-Gm-Gg: ASbGncuvceVOYIk83udKhD+Z6c/8MAyvz8ohc/wJcTaS9ACYw3Z/oX6PWJJ+suKkxbv
	kt95O1UNcWf46utiV92iz+0sKT06hq75TH5GWdYXhS6emJRtnwaS/Tgx2hA3TeIgfBddlUQKTp8
	uh
X-Google-Smtp-Source: AGHT+IEz/BdkBxzruDv1BnRXbsP+TA9e8Vw4LtNbmAaEcBP0MwtZCiysLe/spHraIOiIlseufiQMsXOwHbIUKyc7fcQ=
X-Received: by 2002:a05:690c:498c:b0:6ee:8363:96d3 with SMTP id
 00721157ae682-6fb5831dcddmr207514557b3.27.1740066158995; Thu, 20 Feb 2025
 07:42:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220-dual-dsi-v2-0-6c0038d5a2ef@linaro.org>
 <20250220-dual-dsi-v2-5-6c0038d5a2ef@linaro.org> <iibq3orsb7uf44luz2he2auox43ki42m2z4nnderyqlhypvfgo@pwqpvua6vuyo>
In-Reply-To: <iibq3orsb7uf44luz2he2auox43ki42m2z4nnderyqlhypvfgo@pwqpvua6vuyo>
From: Jun Nie <jun.nie@linaro.org>
Date: Thu, 20 Feb 2025 23:42:28 +0800
X-Gm-Features: AWEUYZkhT707fwgCYjUo1mZOa8BNPphgYLuTOs0pu7OSbwGyUxHGJN7uYb0yFbQ
Message-ID: <CABymUCNajuc8WnWgf2JehFYUY-MqxCYmD=By8nY-JppxYHsyNw@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] drm/msm/dsi: Support DSC for dual panel case
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dmitry Baryshkov <dmitry.baryshkov@linaro.org> =E4=BA=8E2025=E5=B9=B42=E6=
=9C=8820=E6=97=A5=E5=91=A8=E5=9B=9B 18:39=E5=86=99=E9=81=93=EF=BC=9A
>
> On Thu, Feb 20, 2025 at 06:07:56PM +0800, Jun Nie wrote:
> > There is dual DSI case that every DSI link is connected to an independe=
nt
> > panel. In this dual panel case, the frame width for DSC on each link sh=
ould
> > be halved to support the usage case.
>
> Isn't it the case for the DSI panel utilizing two DSI links?

The added case here is 2 DSI panel utilizing two DSI links, 1 DSI link
in each panel.
I assume default case is 1 panel with 2 DSI link, such as Marijn's case.
>
> >
> > Signed-off-by: Jun Nie <jun.nie@linaro.org>
> > ---
> >  drivers/gpu/drm/msm/dsi/dsi.h         |  3 ++-
> >  drivers/gpu/drm/msm/dsi/dsi_host.c    | 13 +++++++++----
> >  drivers/gpu/drm/msm/dsi/dsi_manager.c | 10 ++++++++--
> >  3 files changed, 19 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/dsi/dsi.h b/drivers/gpu/drm/msm/dsi/ds=
i.h
> > index 35b90c462f637111159b204269ce908614a21586..5a8978bed9f4ca897b418ce=
d60194042d9dd8d05 100644
> > --- a/drivers/gpu/drm/msm/dsi/dsi.h
> > +++ b/drivers/gpu/drm/msm/dsi/dsi.h
> > @@ -74,7 +74,8 @@ void msm_dsi_host_enable_irq(struct mipi_dsi_host *ho=
st);
> >  void msm_dsi_host_disable_irq(struct mipi_dsi_host *host);
> >  int msm_dsi_host_power_on(struct mipi_dsi_host *host,
> >                       struct msm_dsi_phy_shared_timings *phy_shared_tim=
ings,
> > -                     bool is_bonded_dsi, struct msm_dsi_phy *phy);
> > +                     bool is_bonded_dsi, bool is_dual_panel,
> > +                     struct msm_dsi_phy *phy);
> >  int msm_dsi_host_power_off(struct mipi_dsi_host *host);
> >  int msm_dsi_host_set_display_mode(struct mipi_dsi_host *host,
> >                                 const struct drm_display_mode *mode);
> > diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/d=
si/dsi_host.c
> > index 976c5d82a2efa0fc51657b8534675890be7c33a6..752a97f7181c30dade0a774=
5492bf16649b3197b 100644
> > --- a/drivers/gpu/drm/msm/dsi/dsi_host.c
> > +++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
> > @@ -902,7 +902,8 @@ static void dsi_update_dsc_timing(struct msm_dsi_ho=
st *msm_host, bool is_cmd_mod
> >       }
> >  }
> >
> > -static void dsi_timing_setup(struct msm_dsi_host *msm_host, bool is_bo=
nded_dsi)
> > +static void dsi_timing_setup(struct msm_dsi_host *msm_host, bool is_bo=
nded_dsi,
> > +                          bool is_dual_panel)
> >  {
> >       struct drm_display_mode *mode =3D msm_host->mode;
> >       u32 hs_start =3D 0, vs_start =3D 0; /* take sync start as 0 */
> > @@ -947,7 +948,10 @@ static void dsi_timing_setup(struct msm_dsi_host *=
msm_host, bool is_bonded_dsi)
> >                       return;
> >               }
> >
> > -             dsc->pic_width =3D mode->hdisplay;
> > +             if (is_dual_panel)
> > +                     dsc->pic_width =3D hdisplay;
> > +             else
> > +                     dsc->pic_width =3D mode->hdisplay;
> >               dsc->pic_height =3D mode->vdisplay;
> >               DBG("Mode %dx%d\n", dsc->pic_width, dsc->pic_height);
> >
> > @@ -2369,7 +2373,8 @@ static void msm_dsi_sfpb_config(struct msm_dsi_ho=
st *msm_host, bool enable)
> >
> >  int msm_dsi_host_power_on(struct mipi_dsi_host *host,
> >                       struct msm_dsi_phy_shared_timings *phy_shared_tim=
ings,
> > -                     bool is_bonded_dsi, struct msm_dsi_phy *phy)
> > +                     bool is_bonded_dsi, bool is_dual_panel,
> > +                     struct msm_dsi_phy *phy)
> >  {
> >       struct msm_dsi_host *msm_host =3D to_msm_dsi_host(host);
> >       const struct msm_dsi_cfg_handler *cfg_hnd =3D msm_host->cfg_hnd;
> > @@ -2412,7 +2417,7 @@ int msm_dsi_host_power_on(struct mipi_dsi_host *h=
ost,
> >               goto fail_disable_clk;
> >       }
> >
> > -     dsi_timing_setup(msm_host, is_bonded_dsi);
> > +     dsi_timing_setup(msm_host, is_bonded_dsi, is_dual_panel);
> >       dsi_sw_reset(msm_host);
> >       dsi_ctrl_enable(msm_host, phy_shared_timings, phy);
> >
> > diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/ms=
m/dsi/dsi_manager.c
> > index be13bf682a9601484c9c14e8419563f37c2281ee..158b6cc907cb39cc3b182d3=
088b793d322a3527c 100644
> > --- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
> > +++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
> > @@ -24,6 +24,7 @@ struct msm_dsi_manager {
> >       struct msm_dsi *dsi[DSI_MAX];
> >
> >       bool is_bonded_dsi;
> > +     bool is_dual_panel;
> >       bool is_sync_needed;
> >       int master_dsi_link_id;
> >  };
> > @@ -31,6 +32,7 @@ struct msm_dsi_manager {
> >  static struct msm_dsi_manager msm_dsim_glb;
> >
> >  #define IS_BONDED_DSI()              (msm_dsim_glb.is_bonded_dsi)
> > +#define IS_DUAL_PANEL()              (msm_dsim_glb.is_dual_panel)
> >  #define IS_SYNC_NEEDED()     (msm_dsim_glb.is_sync_needed)
> >  #define IS_MASTER_DSI_LINK(id)       (msm_dsim_glb.master_dsi_link_id =
=3D=3D id)
> >
> > @@ -55,6 +57,7 @@ static int dsi_mgr_parse_of(struct device_node *np, i=
nt id)
> >               msm_dsim->is_bonded_dsi =3D of_property_read_bool(np, "qc=
om,dual-dsi-mode");
> >
> >       if (msm_dsim->is_bonded_dsi) {
> > +             msm_dsim->is_dual_panel =3D of_property_read_bool(np, "qc=
om,dual-panel");
> >               if (of_property_read_bool(np, "qcom,master-dsi"))
> >                       msm_dsim->master_dsi_link_id =3D id;
> >               if (!msm_dsim->is_sync_needed)
> > @@ -214,6 +217,7 @@ static int dsi_mgr_bridge_power_on(struct drm_bridg=
e *bridge)
> >       struct mipi_dsi_host *host =3D msm_dsi->host;
> >       struct msm_dsi_phy_shared_timings phy_shared_timings[DSI_MAX];
> >       bool is_bonded_dsi =3D IS_BONDED_DSI();
> > +     bool is_dual_panel =3D IS_DUAL_PANEL();
> >       int ret;
> >
> >       DBG("id=3D%d", id);
> > @@ -222,7 +226,8 @@ static int dsi_mgr_bridge_power_on(struct drm_bridg=
e *bridge)
> >       if (ret)
> >               goto phy_en_fail;
> >
> > -     ret =3D msm_dsi_host_power_on(host, &phy_shared_timings[id], is_b=
onded_dsi, msm_dsi->phy);
> > +     ret =3D msm_dsi_host_power_on(host, &phy_shared_timings[id],
> > +                                 is_bonded_dsi, is_dual_panel, msm_dsi=
->phy);
> >       if (ret) {
> >               pr_err("%s: power on host %d failed, %d\n", __func__, id,=
 ret);
> >               goto host_on_fail;
> > @@ -230,7 +235,8 @@ static int dsi_mgr_bridge_power_on(struct drm_bridg=
e *bridge)
> >
> >       if (is_bonded_dsi && msm_dsi1) {
> >               ret =3D msm_dsi_host_power_on(msm_dsi1->host,
> > -                             &phy_shared_timings[DSI_1], is_bonded_dsi=
, msm_dsi1->phy);
> > +                             &phy_shared_timings[DSI_1], is_bonded_dsi=
,
> > +                             is_dual_panel, msm_dsi1->phy);
> >               if (ret) {
> >                       pr_err("%s: power on host1 failed, %d\n",
> >                                                       __func__, ret);
> >
> > --
> > 2.34.1
> >
>
> --
> With best wishes
> Dmitry

