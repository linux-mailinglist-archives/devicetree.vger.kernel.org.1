Return-Path: <devicetree+bounces-8828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 158207CA42B
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:31:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CEB41C20929
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5623C1C6B8;
	Mon, 16 Oct 2023 09:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4MOcFg1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364258482
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:31:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8573C43395
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697448690;
	bh=YD1pOXaF0MDt7HSRIm5Qk+XONV9K3q5VwtsmFICAcLo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=k4MOcFg1BXUE/srqwo67HqlgAEVQQVavXI4Endo/7E5nh6LMQ4uHJ5lrgAYr0R7SZ
	 pGf+89L7tG2KqoGv4r6mpJAuXFCfASuM/UHzWBLF4pcxWn9bd/xs1ViGriY2z41iec
	 NVbI6H0S52c5xPE0/ICyQDC/piCaiIzFIsWu1KwyObHjYf//TMIhif1WNipPrJBe8h
	 CF5fVmHAAygSziC0vBjkx/6g4uk6knz6viAtyZfI1+DMXR2aEpoRBqRnu44Vf708cv
	 w1zf9MiuXOa5LMPLo9EKqI9O4rk1d6WjP2UCnEzyCpIiR5sgv+xPS2iUsC4iyIim4j
	 q8tFsuWZyiXMw==
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1c8a1541232so37069515ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:31:30 -0700 (PDT)
X-Gm-Message-State: AOJu0YzpirJYAQ/Ktf83DksnlNRaf4ygIFdszCxmkJnPhsw3Auckc6lj
	i3kZNBGvW7b1/DSQ7/0Dh9SYBrrv/5pl6iBpkC55WQ==
X-Google-Smtp-Source: AGHT+IGuAte+Sk8BC41gI0Ofl+D+wCmH3/tS5o5YUOmqbVY0bQWJGeHaAOWe3/gtISyD2PFz2F++nUlxzGGbCPuSU5A=
X-Received: by 2002:a17:90a:117:b0:273:4944:2eba with SMTP id
 b23-20020a17090a011700b0027349442ebamr29749474pjb.40.1697448690010; Mon, 16
 Oct 2023 02:31:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230821034008.3876938-1-victor.liu@nxp.com> <20230821034008.3876938-5-victor.liu@nxp.com>
In-Reply-To: <20230821034008.3876938-5-victor.liu@nxp.com>
From: Robert Foss <rfoss@kernel.org>
Date: Mon, 16 Oct 2023 11:31:19 +0200
X-Gmail-Original-Message-ID: <CAN6tsi6xecKbq426BJ8xL92Ox=tPApJe0SzGog7gZY4E1c9s6w@mail.gmail.com>
Message-ID: <CAN6tsi6xecKbq426BJ8xL92Ox=tPApJe0SzGog7gZY4E1c9s6w@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 4/9] drm/bridge: synopsys: dw-mipi-dsi: Add mode
 fixup support
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
> Vendor drivers may need to fixup mode due to pixel clock tree limitation,
> so introduce the ->mode_fixup() callcack to struct dw_mipi_dsi_plat_data
> and call it at atomic check stage if available.
>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v1->v3:
> * No change.
>
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 14 ++++++++++++++
>  include/drm/bridge/dw_mipi_dsi.h              |  3 +++
>  2 files changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/=
drm/bridge/synopsys/dw-mipi-dsi.c
> index ed9288a9c444..b2da803c9de7 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -573,9 +573,23 @@ static int dw_mipi_dsi_bridge_atomic_check(struct dr=
m_bridge *bridge,
>                                            struct drm_crtc_state *crtc_st=
ate,
>                                            struct drm_connector_state *co=
nn_state)
>  {
> +       struct dw_mipi_dsi *dsi =3D bridge_to_dsi(bridge);
> +       const struct dw_mipi_dsi_plat_data *pdata =3D dsi->plat_data;
> +       bool ret;
> +
>         bridge_state->input_bus_cfg.flags =3D
>                 DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDG=
E;
>
> +       if (pdata->mode_fixup) {
> +               ret =3D pdata->mode_fixup(pdata->priv_data, &crtc_state->=
mode,
> +                                       &crtc_state->adjusted_mode);
> +               if (!ret) {
> +                       DRM_DEBUG_DRIVER("failed to fixup mode " DRM_MODE=
_FMT "\n",
> +                                        DRM_MODE_ARG(&crtc_state->mode))=
;
> +                       return -EINVAL;
> +               }
> +       }
> +
>         return 0;
>  }
>
> diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mip=
i_dsi.h
> index 246650f2814f..65d5e68065e3 100644
> --- a/include/drm/bridge/dw_mipi_dsi.h
> +++ b/include/drm/bridge/dw_mipi_dsi.h
> @@ -59,6 +59,9 @@ struct dw_mipi_dsi_plat_data {
>                                            unsigned long mode_flags,
>                                            u32 lanes, u32 format);
>
> +       bool (*mode_fixup)(void *priv_data, const struct drm_display_mode=
 *mode,
> +                          struct drm_display_mode *adjusted_mode);
> +
>         u32 *(*get_input_bus_fmts)(void *priv_data,
>                                    struct drm_bridge *bridge,
>                                    struct drm_bridge_state *bridge_state,
> --
> 2.37.1
>

Reviewed-by: Robert Foss <rfoss@kernel.org>

