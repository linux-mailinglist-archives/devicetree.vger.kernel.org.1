Return-Path: <devicetree+bounces-8829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AADA7CA432
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:33:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CACD31C2093B
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B371CA86;
	Mon, 16 Oct 2023 09:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3lOy9a5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE9B8482
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:33:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AEA4C433AD
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697448792;
	bh=DBt7lyUHYvCXUBZt2LPp0v0GAfbjDSBNVaR8OunA9u4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=c3lOy9a5RzKGRI3GfbIwr08KNxULZgsy2PR7jpXI/v0e68ixDu7CidLzypTTmn3m6
	 WKgoWpiiUTvG8CvOnt6lgXwHOXV3ymxLiSxYb81rgOcwFKKBDVa7SSsrnGOurmx+d5
	 I7jxEvHIi+Z5vxYxU4o2VjPx52DVlE8llNBsqx3d6G0kOlbXgGfT5lu9SLZjT+12Ts
	 VX2xiZ9QsHbjfJ0Spter1z6hhblto4eYF861Dtc1h25q94t8DQkJ+paNZFdvzv7hg8
	 a2LY15OhJmTix1l4hGFJUzfiUZE2qIOnP7ZzZT2sQ+PLzjEvjzVA6gv9PUmZo/ntGe
	 MWWSCs6Mvcvyw==
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6bd32d1a040so1310853b3a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:33:12 -0700 (PDT)
X-Gm-Message-State: AOJu0Yxf5xo4xMhl4vXLiFVAaJZI01gOfOzyCAdHjmhmE9j5Kb1XrMjN
	0l4cGUcRUM8uykp80XEmhrgUZjZwjAwW7+ckFG6HWA==
X-Google-Smtp-Source: AGHT+IH6bsBjg9dmPxALknay8+6CXpFs3GzPg+s6/BIuFJVsOhNDLzp58nBxP57YuNnjGBgTvodNycBsBNWhnkLeTC8=
X-Received: by 2002:a05:6a20:1586:b0:173:e36c:6d03 with SMTP id
 h6-20020a056a20158600b00173e36c6d03mr16851842pzj.22.1697448791926; Mon, 16
 Oct 2023 02:33:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230821034008.3876938-1-victor.liu@nxp.com> <20230821034008.3876938-4-victor.liu@nxp.com>
In-Reply-To: <20230821034008.3876938-4-victor.liu@nxp.com>
From: Robert Foss <rfoss@kernel.org>
Date: Mon, 16 Oct 2023 11:33:01 +0200
X-Gmail-Original-Message-ID: <CAN6tsi7hafwVmJDpDXTw14Qq28ZyjZYq9LeM6tq-REhrpD7pZQ@mail.gmail.com>
Message-ID: <CAN6tsi7hafwVmJDpDXTw14Qq28ZyjZYq9LeM6tq-REhrpD7pZQ@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 3/9] drm/bridge: synopsys: dw-mipi-dsi: Force
 input bus flags
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
> The DATAEN_ACTIVE_LOW bit in DSI_DPI_CFG_POL register is set to zero,
> so set the DRM_BUS_FLAG_DE_HIGH flag in input_bus_cfg.flags.  It appears
> that the DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE flag also makes sense, so
> set it in input_bus_cfg.flags too.  With this patch, the flags set by
> drm_atomic_bridge_propagate_bus_flags() are overridden (see comment in
> that function) in case any downstream bridges propagates invalid flags
> to this bridge.  A real problematic case is to connect a RM67191 MIPI
> DSI panel whose driver sets DRM_BUS_FLAG_DE_LOW and
> DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE bus flags.
>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v1->v3:
> * No change.
>
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/=
drm/bridge/synopsys/dw-mipi-dsi.c
> index 945d46a76995..ed9288a9c444 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -23,6 +23,7 @@
>  #include <drm/bridge/dw_mipi_dsi.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_connector.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_modes.h>
> @@ -567,6 +568,17 @@ dw_mipi_dsi_bridge_atomic_get_input_bus_fmts(struct =
drm_bridge *bridge,
>         return input_fmts;
>  }
>
> +static int dw_mipi_dsi_bridge_atomic_check(struct drm_bridge *bridge,
> +                                          struct drm_bridge_state *bridg=
e_state,
> +                                          struct drm_crtc_state *crtc_st=
ate,
> +                                          struct drm_connector_state *co=
nn_state)
> +{
> +       bridge_state->input_bus_cfg.flags =3D
> +               DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDG=
E;
> +
> +       return 0;
> +}
> +
>  static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
>  {
>         u32 val;
> @@ -1036,6 +1048,7 @@ static const struct drm_bridge_funcs dw_mipi_dsi_br=
idge_funcs =3D {
>         .atomic_duplicate_state =3D drm_atomic_helper_bridge_duplicate_st=
ate,
>         .atomic_destroy_state   =3D drm_atomic_helper_bridge_destroy_stat=
e,
>         .atomic_get_input_bus_fmts =3D dw_mipi_dsi_bridge_atomic_get_inpu=
t_bus_fmts,
> +       .atomic_check           =3D dw_mipi_dsi_bridge_atomic_check,
>         .atomic_reset           =3D drm_atomic_helper_bridge_reset,
>         .atomic_pre_enable      =3D dw_mipi_dsi_bridge_atomic_pre_enable,
>         .atomic_enable          =3D dw_mipi_dsi_bridge_atomic_enable,
> --
> 2.37.1
>

Reviewed-by: Robert Foss <rfoss@kernel.org>

