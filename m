Return-Path: <devicetree+bounces-8831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA1E7CA439
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:34:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8514B20C66
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4921CA8C;
	Mon, 16 Oct 2023 09:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0DtvVgd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF668482
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:34:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 440F5C433CD
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697448854;
	bh=1ZwtRFb4EzyJlbK3hd1LniC6j/t2VX26H5GNIcREqD0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=q0DtvVgdMgrJPOA/hAbpDhgYcpY3OSUs3wiRiFUwqGM8rnm0DSawBlbhaCswBl+qi
	 kWdz10ZAhbRBojHj9n9/B39yXjhrzjAU9fYSoH/lQrh/YBSSwhMigynGl6s+mBpqsz
	 YSHb9bVxl+aBL/Y02EymoQ2Q82m8rzPSMK1vGT+kWoaSBCgS/Z9uEO+OmsjaigB1lA
	 /z8Tbt7vpEp8jdGSBMbWXIL2ikH4eAHBtz/+H7s5GJd4blH+73tJjwjwywOUQXN8Nj
	 uvemitZR1vV+2czasMYJSc1u/TgrksvCx2CWwhOjFtz5wCCxwJEmdE9iDF+XoeYGLY
	 ppw9vJB4ry3uQ==
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6b1d1099a84so2731213b3a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:34:14 -0700 (PDT)
X-Gm-Message-State: AOJu0Ywl9yqlawEYRfao59i9mjheIgu++nYlir6pk6JX0569zaijdMEp
	s4NcCtYNZtn/WmAP2wjS9w6VDwVTpJRtOx01/lUuGg==
X-Google-Smtp-Source: AGHT+IF8zGPJ/zVRcQSJygFj3J6dzs7nZjvd/zcHDk/3A2308fGqUsLgeww1PdPVk3azwDWmsq6TJ+3kDdz+CrnfDGs=
X-Received: by 2002:a05:6a20:1608:b0:15e:9c50:73ee with SMTP id
 l8-20020a056a20160800b0015e9c5073eemr41561350pzj.53.1697448853836; Mon, 16
 Oct 2023 02:34:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230821034008.3876938-1-victor.liu@nxp.com> <20230821034008.3876938-3-victor.liu@nxp.com>
In-Reply-To: <20230821034008.3876938-3-victor.liu@nxp.com>
From: Robert Foss <rfoss@kernel.org>
Date: Mon, 16 Oct 2023 11:34:02 +0200
X-Gmail-Original-Message-ID: <CAN6tsi6qPR9Uf6rLH+Ztvov1m8BLTkfToGooBOv2RALZzgcFOg@mail.gmail.com>
Message-ID: <CAN6tsi6qPR9Uf6rLH+Ztvov1m8BLTkfToGooBOv2RALZzgcFOg@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 2/9] drm/bridge: synopsys: dw-mipi-dsi: Add
 input bus format negotiation support
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, andrzej.hajda@intel.com, 
	alexander.stein@ew.tq-group.com, Laurent.pinchart@ideasonboard.com, 
	krzysztof.kozlowski+dt@linaro.org, zyw@rock-chips.com, sam@ravnborg.org, 
	raphael.gallais-pou@foss.st.com, jernej.skrabec@gmail.com, 
	jagan@amarulasolutions.com, linux-imx@nxp.com, conor+dt@kernel.org, 
	kernel@pengutronix.de, jonas@kwiboo.se, s.hauer@pengutronix.de, 
	robh+dt@kernel.org, neil.armstrong@linaro.org, yannick.fertre@foss.st.com, 
	hjc@rock-chips.com, philippe.cornu@foss.st.com, shawnguo@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 21, 2023 at 5:37=E2=80=AFAM Liu Ying <victor.liu@nxp.com> wrote=
:
>
> Introduce ->get_input_bus_fmts() callback to struct dw_mipi_dsi_plat_data
> so that vendor drivers can implement specific methods to get input bus
> formats for Synopsys DW MIPI DSI.
>
> While at it, implement a generic callback for ->atomic_get_input_bus_fmts=
(),
> where we try to get the input bus formats through pdata->get_input_bus_fm=
ts()
> first.  If it's unavailable, fall back to the only format - MEDIA_BUS_FMT=
_FIXED,
> which matches the default behavior if ->atomic_get_input_bus_fmts() is no=
t
> implemented as ->atomic_get_input_bus_fmts()'s kerneldoc indicates.
>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v1->v3:
> * No change.
>
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 30 +++++++++++++++++++
>  include/drm/bridge/dw_mipi_dsi.h              | 11 +++++++
>  2 files changed, 41 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/=
drm/bridge/synopsys/dw-mipi-dsi.c
> index ba3cd2a3e339..945d46a76995 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -12,6 +12,7 @@
>  #include <linux/component.h>
>  #include <linux/debugfs.h>
>  #include <linux/iopoll.h>
> +#include <linux/media-bus-format.h>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
> @@ -538,6 +539,34 @@ static const struct mipi_dsi_host_ops dw_mipi_dsi_ho=
st_ops =3D {
>         .transfer =3D dw_mipi_dsi_host_transfer,
>  };
>
> +static u32 *
> +dw_mipi_dsi_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
> +                                            struct drm_bridge_state *bri=
dge_state,
> +                                            struct drm_crtc_state *crtc_=
state,
> +                                            struct drm_connector_state *=
conn_state,
> +                                            u32 output_fmt,
> +                                            unsigned int *num_input_fmts=
)
> +{
> +       struct dw_mipi_dsi *dsi =3D bridge_to_dsi(bridge);
> +       const struct dw_mipi_dsi_plat_data *pdata =3D dsi->plat_data;
> +       u32 *input_fmts;
> +
> +       if (pdata->get_input_bus_fmts)
> +               return pdata->get_input_bus_fmts(pdata->priv_data,
> +                                                bridge, bridge_state,
> +                                                crtc_state, conn_state,
> +                                                output_fmt, num_input_fm=
ts);
> +
> +       /* Fall back to MEDIA_BUS_FMT_FIXED as the only input format. */
> +       input_fmts =3D kmalloc(sizeof(*input_fmts), GFP_KERNEL);
> +       if (!input_fmts)
> +               return NULL;
> +       input_fmts[0] =3D MEDIA_BUS_FMT_FIXED;
> +       *num_input_fmts =3D 1;
> +
> +       return input_fmts;
> +}
> +
>  static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
>  {
>         u32 val;
> @@ -1006,6 +1035,7 @@ static int dw_mipi_dsi_bridge_attach(struct drm_bri=
dge *bridge,
>  static const struct drm_bridge_funcs dw_mipi_dsi_bridge_funcs =3D {
>         .atomic_duplicate_state =3D drm_atomic_helper_bridge_duplicate_st=
ate,
>         .atomic_destroy_state   =3D drm_atomic_helper_bridge_destroy_stat=
e,
> +       .atomic_get_input_bus_fmts =3D dw_mipi_dsi_bridge_atomic_get_inpu=
t_bus_fmts,
>         .atomic_reset           =3D drm_atomic_helper_bridge_reset,
>         .atomic_pre_enable      =3D dw_mipi_dsi_bridge_atomic_pre_enable,
>         .atomic_enable          =3D dw_mipi_dsi_bridge_atomic_enable,
> diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mip=
i_dsi.h
> index f54621b17a69..246650f2814f 100644
> --- a/include/drm/bridge/dw_mipi_dsi.h
> +++ b/include/drm/bridge/dw_mipi_dsi.h
> @@ -11,7 +11,10 @@
>
>  #include <linux/types.h>
>
> +#include <drm/drm_atomic.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_connector.h>
> +#include <drm/drm_crtc.h>
>  #include <drm/drm_modes.h>
>
>  struct drm_display_mode;
> @@ -56,6 +59,14 @@ struct dw_mipi_dsi_plat_data {
>                                            unsigned long mode_flags,
>                                            u32 lanes, u32 format);
>
> +       u32 *(*get_input_bus_fmts)(void *priv_data,
> +                                  struct drm_bridge *bridge,
> +                                  struct drm_bridge_state *bridge_state,
> +                                  struct drm_crtc_state *crtc_state,
> +                                  struct drm_connector_state *conn_state=
,
> +                                  u32 output_fmt,
> +                                  unsigned int *num_input_fmts);
> +
>         const struct dw_mipi_dsi_phy_ops *phy_ops;
>         const struct dw_mipi_dsi_host_ops *host_ops;
>
> --
> 2.37.1
>

Reviewed-by: Robert Foss <rfoss@kernel.org>

