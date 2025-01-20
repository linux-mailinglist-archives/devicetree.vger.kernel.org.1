Return-Path: <devicetree+bounces-139654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A214DA167DC
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:04:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC354169E81
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03B0518F2DF;
	Mon, 20 Jan 2025 08:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="l5EG5S2u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9050718EFED
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 08:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737360261; cv=none; b=hdjXKEB2P0/zQsouSOGew9Ir7w+MZbs4R/58qH43akfra4Qotdykd7GXxfJo9Qxe6BLaarAPk1jO2XsABO5NL0KmOgMatpOrZEvLI6TXBvez3tWXiuHCrgcOLdvDemjZzBgxKJRTxLfCXjLbVRaDPPyvmdf0hJpKxT4q1MUXnOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737360261; c=relaxed/simple;
	bh=lT5JF5HgoPBRjW9SoKsCdI1/2FeeBoept3LHVgth5Vc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Cr4kvV2dcgExxtj0xiM4qWZMghfTVrgrdjfvCpuSuwHVHvpagV2iI3wOQu6qN+ftJ6q0sVLocchxqL/g/Ai3rbrOLsmskTF74uQuKS+o44eFokUIOxgfm5/q8fFGoa9/h8mon5zwmtIfF+t6LA1aAL2SfNSaygCHaLdW8JH05k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=l5EG5S2u; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so5542058e87.1
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 00:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737360257; x=1737965057; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xl0TULSGKJYmlTvA4jtWT5x55nWtQt0smZI+nT9oTjU=;
        b=l5EG5S2uGdrdp6nPb/g3BhP9B8cQ5iaF8cxpn1ecZDmGg52tv67N8bAsPkSoIXPdvl
         393UwjD6J+rnW9B/WmNDZ+Fz1quWaW+1oxOlCG1udHyqPAAfYy3ku48iPeIBVkCuihZ0
         xeg/doDIMHab5uynYUWF368gaNMgM7Mk4Jxmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737360257; x=1737965057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xl0TULSGKJYmlTvA4jtWT5x55nWtQt0smZI+nT9oTjU=;
        b=LV8qby3wMBOCcIHoMuSRjZzKUS6lLWIvhFuC70/SRgkANH86QdQZloupk8LVDdejSa
         Pf9ahovB6xF95P5xm4A4dUuYUcTytjFqMDCgF31kO4lMGqN4nYK7CDJWUKSjz2ZrdA0F
         jWD1WmNPlISb6zS7MqltsWZTU4RB0OIJzkocvZ3Vz5grJULNeMJLLN1yN6cyzH8CG5Gu
         IFvh+KiTZ9znLYeN6S8soNMyNRgCmzcTdgZpBFpTZy4A6/zm3acTQiR3OYUiNj3rANCM
         5nYBVNAVOe+s8BBigSqMQePAzH9yJJE0JBr7HtxOhk8tP54NPVKbcjuyI3oD3/DGQ4kW
         hVgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVoRKfzPuDpah7UsNY8DYu2KWTE4vcRgaMCOHZsmMFgm4yBqENrKuDt8DLyLitjbYt2R/77pbzZ0eIG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn8o9efWWLjxH6sj3CGBPodHLjtwB934+v+JIjL5Ca0p+w0Hia
	A/ovwcu9TGu4OV4UupTIZ1yrVD/4VM7sBPtnRoBX2p+l/wjavi3leJZFiofXACqHp0P/zEO1KBx
	reqm+idXBt0yUtkL6Gjsi9rzf5rUYfIl4Rkwv
X-Gm-Gg: ASbGncul+zF516wfZcRlc2qixL5L3jdQ/8btuNAsOMjui8IpqS4zp0a8Gl0KLc8v3GO
	7/YE3BKZOMfOQvDRjk1Uu7ENEbCwC0Fl3z3ptK7J6SrEDHm5OxSmYvcaJowAMD0c5EytUrBpSNy
	iwZos=
X-Google-Smtp-Source: AGHT+IEQrTie+O4cAkY3+JXkXbqlD1NqeUIiKwN+qKQD/mH2Wq2ljFx0J58xhGiaDGYuoFl3hpgu4UgQF0+WR0384SM=
X-Received: by 2002:a05:6512:3987:b0:540:2fd2:6b85 with SMTP id
 2adb3069b0e04-5439bf92763mr3747982e87.13.1737360257490; Mon, 20 Jan 2025
 00:04:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com> <20250110123835.2719824-9-paul-pl.chen@mediatek.com>
In-Reply-To: <20250110123835.2719824-9-paul-pl.chen@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 20 Jan 2025 16:04:06 +0800
X-Gm-Features: AbW1kvYdkel9YDY-GbFolQ2l-eDqvRFV-zDcl_0W9Kl2UgH5F4F_uiCQO4ykbAw
Message-ID: <CAGXv+5ERJZiV+XGr1vs5KV7rM5QazEuedkW2o8AspnK_Zu-XCw@mail.gmail.com>
Subject: Re: [PATCH 07/12] soc: mediatek: mutex: add mutex support for MT8196
To: "paul-pl.chen" <paul-pl.chen@mediatek.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	chunkuang.hu@kernel.org, angelogioacchino.delregno@collabora.com, 
	devicetree@vger.kernel.org, xiandong.wang@mediatek.com, 
	jason-jh.lin@mediatek.com, singo.chang@mediatek.com, treapking@chromium.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, nancy.lin@mediatek.com, 
	linux-mediatek@lists.infradead.org, sunny.shen@mediatek.com, 
	p.zabel@pengutronix.de, sirius.wang@mediatek.com, matthias.bgg@gmail.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 8:46=E2=80=AFPM paul-pl.chen <paul-pl.chen@mediatek=
.com> wrote:
>
> From: "Nancy.Lin" <nancy.lin@mediatek.com>
>
> Add mutex support the main and external display for MT8196.
>
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> Signed-off-by: Paul-pl.Chen <paul-pl.chen@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-mutex.c       | 233 +++++++++++++++++++++++--
>  include/linux/soc/mediatek/mtk-mutex.h |   2 +
>  2 files changed, 222 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-mutex.c b/drivers/soc/mediatek/mtk-=
mutex.c
> index 5250c1d702eb..c08eb3cc71eb 100644
> --- a/drivers/soc/mediatek/mtk-mutex.c
> +++ b/drivers/soc/mediatek/mtk-mutex.c
> @@ -19,6 +19,7 @@
>  #define MT2701_MUTEX0_SOF0                     0x30
>  #define MT8183_MUTEX0_MOD0                     0x30
>  #define MT8183_MUTEX0_SOF0                     0x2c
> +#define MT8196_MUTEX0_MOD0                     0x34
>
>  #define DISP_REG_MUTEX_EN(n)                   (0x20 + 0x20 * (n))
>  #define DISP_REG_MUTEX(n)                      (0x24 + 0x20 * (n))
> @@ -236,6 +237,47 @@
>  #define MT8195_MUTEX_MOD_MDP_WROT2             32
>  #define MT8195_MUTEX_MOD_MDP_WROT3             33
>
> +/* OVLSYS */
> +#define MT8196_MUTEX_MOD0_OVL_EXDMA2           2
> +#define MT8196_MUTEX_MOD0_OVL_EXDMA3           3
> +#define MT8196_MUTEX_MOD0_OVL_EXDMA4           4
> +#define MT8196_MUTEX_MOD0_OVL_EXDMA5           5
> +#define MT8196_MUTEX_MOD0_OVL_EXDMA6           6
> +#define MT8196_MUTEX_MOD0_OVL_EXDMA7           7
> +#define MT8196_MUTEX_MOD0_OVL_EXDMA8           8
> +#define MT8196_MUTEX_MOD0_OVL_EXDMA9           9
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER1         11
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER2         12
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER3         13
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER4         14
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER5         15
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER6         16
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER7         17
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER8         18
> +#define MT8196_MUTEX_MOD0_OVL_BLENDER9         19
> +#define MT8196_MUTEX_MOD0_OVL_OUTPROC0         20
> +#define MT8196_MUTEX_MOD0_OVL_OUTPROC1         21
> +#define MT8196_MUTEX_MOD0_OVL_OUTPROC2         22
> +#define MT8196_MUTEX_MOD1_OVL_DLO_ASYNC5       (32 + 16)
> +#define MT8196_MUTEX_MOD1_OVL_DLO_ASYNC6       (32 + 17)
> +
> +/* DISP0 */
> +#define MT8196_MUTEX_MOD0_DISP_DLI_ASYNC0      16
> +#define MT8196_MUTEX_MOD0_DISP_DLI_ASYNC1      17
> +#define MT8196_MUTEX_MOD0_DISP_DLI_ASYNC8      24
> +#define MT8196_MUTEX_MOD1_DISP_DLO_ASYNC1      (32 + 1)
> +#define MT8196_MUTEX_MOD1_DISP_DLO_ASYNC2      (32 + 2)
> +#define MT8196_MUTEX_MOD1_DISP_DLO_ASYNC3      (32 + 3)
> +
> +/* DISP1 */
> +#define MT8196_MUTEX_MOD0_DISP1_DLI_ASYNC21    1
> +#define MT8196_MUTEX_MOD0_DISP1_DLI_ASYNC22    2
> +#define MT8196_MUTEX_MOD0_DISP1_DLI_ASYNC23    3
> +#define MT8196_MUTEX_MOD0_DISP1_DP_INTF0       13
> +#define MT8196_MUTEX_MOD0_DISP1_DP_INTF1       14
> +#define MT8196_MUTEX_MOD0_DISP1_DSI0           23
> +#define MT8196_MUTEX_MOD0_DISP1_DVO            29
> +
>  #define MT8365_MUTEX_MOD_DISP_OVL0             7
>  #define MT8365_MUTEX_MOD_DISP_OVL0_2L          8
>  #define MT8365_MUTEX_MOD_DISP_RDMA0            9
> @@ -295,6 +337,12 @@
>  #define MT8195_MUTEX_SOF_DP_INTF1              4
>  #define MT8195_MUTEX_SOF_DPI0                  6 /* for HDMI_TX */
>  #define MT8195_MUTEX_SOF_DPI1                  5 /* for digital video ou=
t */
> +#define MT8196_MUTEX_SOF_DSI0                  1
> +#define MT8196_MUTEX_SOF_DSI1                  2
> +#define MT8196_MUTEX_SOF_DSI2                  4
> +#define MT8196_MUTEX_SOF_DPI0                  5
> +#define MT8196_MUTEX_SOF_DPI1                  6
> +#define MT8196_MUTEX_SOF_DVO0                  7
>
>  #define MT8183_MUTEX_EOF_DSI0                  (MT8183_MUTEX_SOF_DSI0 <<=
 6)
>  #define MT8183_MUTEX_EOF_DPI0                  (MT8183_MUTEX_SOF_DPI0 <<=
 6)
> @@ -307,6 +355,12 @@
>  #define MT8195_MUTEX_EOF_DP_INTF1              (MT8195_MUTEX_SOF_DP_INTF=
1 << 7)
>  #define MT8195_MUTEX_EOF_DPI0                  (MT8195_MUTEX_SOF_DPI0 <<=
 7)
>  #define MT8195_MUTEX_EOF_DPI1                  (MT8195_MUTEX_SOF_DPI1 <<=
 7)
> +#define MT8196_MUTEX_EOF_DSI0                  (MT8196_MUTEX_SOF_DSI0 <<=
 7)
> +#define MT8196_MUTEX_EOF_DSI1                  (MT8196_MUTEX_SOF_DSI1 <<=
 7)
> +#define MT8196_MUTEX_EOF_DSI2                  (MT8196_MUTEX_SOF_DSI2 <<=
 7)
> +#define MT8196_MUTEX_EOF_DPI0                  (MT8196_MUTEX_SOF_DPI0 <<=
 7)
> +#define MT8196_MUTEX_EOF_DPI1                  (MT8196_MUTEX_SOF_DPI1 <<=
 7)
> +#define MT8196_MUTEX_EOF_DVO0                  (MT8196_MUTEX_SOF_DVO0 <<=
 7)
>
>  struct mtk_mutex {
>         u8 id;
> @@ -323,6 +377,7 @@ enum mtk_mutex_sof_id {
>         MUTEX_SOF_DSI3,
>         MUTEX_SOF_DP_INTF0,
>         MUTEX_SOF_DP_INTF1,
> +       MUTEX_SOF_DVO0,
>         DDP_MUTEX_SOF_MAX,
>  };
>
> @@ -333,6 +388,7 @@ struct mtk_mutex_data {
>         const u16 mutex_mod_reg;
>         const u16 mutex_sof_reg;
>         const bool no_clk;
> +       const bool need_sof_mod;
>  };
>
>  struct mtk_mutex_ctx {
> @@ -621,6 +677,64 @@ static const u8 mt8195_mutex_table_mod[MUTEX_MOD_IDX=
_MAX] =3D {
>         [MUTEX_MOD_IDX_MDP_WROT3] =3D MT8195_MUTEX_MOD_MDP_WROT3,
>  };
>
> +static const u8 mt8196_mutex_mod[DDP_COMPONENT_ID_MAX] =3D {
> +       [DDP_COMPONENT_OVL0_EXDMA2] =3D MT8196_MUTEX_MOD0_OVL_EXDMA2,
> +       [DDP_COMPONENT_OVL0_EXDMA3] =3D MT8196_MUTEX_MOD0_OVL_EXDMA3,
> +       [DDP_COMPONENT_OVL0_EXDMA4] =3D MT8196_MUTEX_MOD0_OVL_EXDMA4,
> +       [DDP_COMPONENT_OVL0_EXDMA5] =3D MT8196_MUTEX_MOD0_OVL_EXDMA5,
> +       [DDP_COMPONENT_OVL0_EXDMA6] =3D MT8196_MUTEX_MOD0_OVL_EXDMA6,
> +       [DDP_COMPONENT_OVL0_EXDMA7] =3D MT8196_MUTEX_MOD0_OVL_EXDMA7,
> +       [DDP_COMPONENT_OVL0_EXDMA8] =3D MT8196_MUTEX_MOD0_OVL_EXDMA8,
> +       [DDP_COMPONENT_OVL0_EXDMA9] =3D MT8196_MUTEX_MOD0_OVL_EXDMA9,
> +       [DDP_COMPONENT_OVL0_BLENDER1] =3D MT8196_MUTEX_MOD0_OVL_BLENDER1,
> +       [DDP_COMPONENT_OVL0_BLENDER2] =3D MT8196_MUTEX_MOD0_OVL_BLENDER2,
> +       [DDP_COMPONENT_OVL0_BLENDER3] =3D MT8196_MUTEX_MOD0_OVL_BLENDER3,
> +       [DDP_COMPONENT_OVL0_BLENDER4] =3D MT8196_MUTEX_MOD0_OVL_BLENDER4,
> +       [DDP_COMPONENT_OVL0_BLENDER5] =3D MT8196_MUTEX_MOD0_OVL_BLENDER5,
> +       [DDP_COMPONENT_OVL0_BLENDER6] =3D MT8196_MUTEX_MOD0_OVL_BLENDER6,
> +       [DDP_COMPONENT_OVL0_BLENDER7] =3D MT8196_MUTEX_MOD0_OVL_BLENDER7,
> +       [DDP_COMPONENT_OVL0_BLENDER8] =3D MT8196_MUTEX_MOD0_OVL_BLENDER8,
> +       [DDP_COMPONENT_OVL0_BLENDER9] =3D MT8196_MUTEX_MOD0_OVL_BLENDER9,
> +       [DDP_COMPONENT_OVL0_OUTPROC0] =3D MT8196_MUTEX_MOD0_OVL_OUTPROC0,
> +       [DDP_COMPONENT_OVL0_OUTPROC1] =3D MT8196_MUTEX_MOD0_OVL_OUTPROC1,
> +       [DDP_COMPONENT_OVL0_DLO_ASYNC5] =3D MT8196_MUTEX_MOD1_OVL_DLO_ASY=
NC5,
> +       [DDP_COMPONENT_OVL0_DLO_ASYNC6] =3D MT8196_MUTEX_MOD1_OVL_DLO_ASY=
NC6,
> +       [DDP_COMPONENT_OVL1_EXDMA2] =3D MT8196_MUTEX_MOD0_OVL_EXDMA2,
> +       [DDP_COMPONENT_OVL1_EXDMA3] =3D MT8196_MUTEX_MOD0_OVL_EXDMA3,
> +       [DDP_COMPONENT_OVL1_EXDMA4] =3D MT8196_MUTEX_MOD0_OVL_EXDMA4,
> +       [DDP_COMPONENT_OVL1_EXDMA5] =3D MT8196_MUTEX_MOD0_OVL_EXDMA5,
> +       [DDP_COMPONENT_OVL1_EXDMA6] =3D MT8196_MUTEX_MOD0_OVL_EXDMA6,
> +       [DDP_COMPONENT_OVL1_EXDMA7] =3D MT8196_MUTEX_MOD0_OVL_EXDMA7,
> +       [DDP_COMPONENT_OVL1_EXDMA8] =3D MT8196_MUTEX_MOD0_OVL_EXDMA8,
> +       [DDP_COMPONENT_OVL1_EXDMA9] =3D MT8196_MUTEX_MOD0_OVL_EXDMA9,
> +       [DDP_COMPONENT_OVL1_BLENDER1] =3D MT8196_MUTEX_MOD0_OVL_BLENDER1,
> +       [DDP_COMPONENT_OVL1_BLENDER2] =3D MT8196_MUTEX_MOD0_OVL_BLENDER2,
> +       [DDP_COMPONENT_OVL1_BLENDER3] =3D MT8196_MUTEX_MOD0_OVL_BLENDER3,
> +       [DDP_COMPONENT_OVL1_BLENDER4] =3D MT8196_MUTEX_MOD0_OVL_BLENDER4,
> +       [DDP_COMPONENT_OVL1_BLENDER5] =3D MT8196_MUTEX_MOD0_OVL_BLENDER5,
> +       [DDP_COMPONENT_OVL1_BLENDER6] =3D MT8196_MUTEX_MOD0_OVL_BLENDER6,
> +       [DDP_COMPONENT_OVL1_BLENDER7] =3D MT8196_MUTEX_MOD0_OVL_BLENDER7,
> +       [DDP_COMPONENT_OVL1_BLENDER8] =3D MT8196_MUTEX_MOD0_OVL_BLENDER8,
> +       [DDP_COMPONENT_OVL1_BLENDER9] =3D MT8196_MUTEX_MOD0_OVL_BLENDER9,
> +       [DDP_COMPONENT_OVL1_OUTPROC0] =3D MT8196_MUTEX_MOD0_OVL_OUTPROC0,
> +       [DDP_COMPONENT_OVL1_OUTPROC1] =3D MT8196_MUTEX_MOD0_OVL_OUTPROC1,
> +       [DDP_COMPONENT_OVL1_DLO_ASYNC5] =3D MT8196_MUTEX_MOD1_OVL_DLO_ASY=
NC5,
> +       [DDP_COMPONENT_OVL1_DLO_ASYNC6] =3D MT8196_MUTEX_MOD1_OVL_DLO_ASY=
NC6,
> +       [DDP_COMPONENT_DLI_ASYNC0] =3D MT8196_MUTEX_MOD0_DISP_DLI_ASYNC0,
> +       [DDP_COMPONENT_DLI_ASYNC1] =3D MT8196_MUTEX_MOD0_DISP_DLI_ASYNC1,
> +       [DDP_COMPONENT_DLI_ASYNC8] =3D MT8196_MUTEX_MOD0_DISP_DLI_ASYNC8,
> +       [DDP_COMPONENT_DLO_ASYNC1] =3D MT8196_MUTEX_MOD1_DISP_DLO_ASYNC1,
> +       [DDP_COMPONENT_DLO_ASYNC2] =3D MT8196_MUTEX_MOD1_DISP_DLO_ASYNC2,
> +       [DDP_COMPONENT_DLO_ASYNC3] =3D MT8196_MUTEX_MOD1_DISP_DLO_ASYNC3,
> +       [DDP_COMPONENT_DLI_ASYNC21] =3D MT8196_MUTEX_MOD0_DISP1_DLI_ASYNC=
21,
> +       [DDP_COMPONENT_DLI_ASYNC22] =3D MT8196_MUTEX_MOD0_DISP1_DLI_ASYNC=
22,
> +       [DDP_COMPONENT_DLI_ASYNC23] =3D MT8196_MUTEX_MOD0_DISP1_DLI_ASYNC=
23,
> +       [DDP_COMPONENT_DVO0] =3D MT8196_MUTEX_MOD0_DISP1_DVO,
> +       [DDP_COMPONENT_DP_INTF0] =3D MT8196_MUTEX_MOD0_DISP1_DP_INTF0,
> +       [DDP_COMPONENT_DP_INTF1] =3D MT8196_MUTEX_MOD0_DISP1_DP_INTF1,
> +       [DDP_COMPONENT_DSI0] =3D MT8196_MUTEX_MOD0_DISP1_DSI0,
> +};
> +
>  static const u8 mt8365_mutex_mod[DDP_COMPONENT_ID_MAX] =3D {
>         [DDP_COMPONENT_AAL0] =3D MT8365_MUTEX_MOD_DISP_AAL,
>         [DDP_COMPONENT_CCORR] =3D MT8365_MUTEX_MOD_DISP_CCORR,
> @@ -704,6 +818,17 @@ static const u16 mt8195_mutex_sof[DDP_MUTEX_SOF_MAX]=
 =3D {
>                 MT8195_MUTEX_SOF_DP_INTF1 | MT8195_MUTEX_EOF_DP_INTF1,
>  };
>
> +static const u16 mt8196_mutex_sof[DDP_MUTEX_SOF_MAX] =3D {
> +       [MUTEX_SOF_SINGLE_MODE] =3D MUTEX_SOF_SINGLE_MODE,
> +       [MUTEX_SOF_DSI0] =3D MT8196_MUTEX_SOF_DSI0 | MT8196_MUTEX_EOF_DSI=
0,
> +       [MUTEX_SOF_DSI1] =3D MT8196_MUTEX_SOF_DSI1 | MT8196_MUTEX_EOF_DSI=
1,
> +       [MUTEX_SOF_DP_INTF0] =3D
> +               MT8196_MUTEX_SOF_DPI0 | MT8196_MUTEX_EOF_DPI0,
> +       [MUTEX_SOF_DP_INTF1] =3D
> +               MT8196_MUTEX_SOF_DPI1 | MT8196_MUTEX_EOF_DPI1,
> +       [MUTEX_SOF_DVO0] =3D MT8196_MUTEX_SOF_DVO0 | MT8196_MUTEX_EOF_DVO=
0,
> +};
> +
>  static const struct mtk_mutex_data mt2701_mutex_driver_data =3D {
>         .mutex_mod =3D mt2701_mutex_mod,
>         .mutex_sof =3D mt2712_mutex_sof,
> @@ -797,6 +922,14 @@ static const struct mtk_mutex_data mt8195_vpp_mutex_=
driver_data =3D {
>         .mutex_table_mod =3D mt8195_mutex_table_mod,
>  };
>
> +static const struct mtk_mutex_data mt8196_mutex_driver_data =3D {
> +       .mutex_mod =3D mt8196_mutex_mod,
> +       .mutex_sof =3D mt8196_mutex_sof,
> +       .mutex_mod_reg =3D MT8196_MUTEX0_MOD0,
> +       .mutex_sof_reg =3D MT2701_MUTEX0_SOF0,
> +       .need_sof_mod =3D true,
> +};
> +
>  static const struct mtk_mutex_data mt8365_mutex_driver_data =3D {
>         .mutex_mod =3D mt8365_mutex_mod,
>         .mutex_sof =3D mt8183_mutex_sof,
> @@ -847,6 +980,53 @@ void mtk_mutex_unprepare(struct mtk_mutex *mutex)
>  }
>  EXPORT_SYMBOL_GPL(mtk_mutex_unprepare);
>
> +void mtk_mutex_write_comp_sof(struct mtk_mutex *mutex,
> +                             enum mtk_ddp_comp_id id)
> +{
> +       struct mtk_mutex_ctx *mtx =3D container_of(mutex, struct mtk_mute=
x_ctx,
> +                                                mutex[mutex->id]);
> +       unsigned int sof_id =3D 0;
> +
> +       WARN_ON(&mtx->mutex[mutex->id] !=3D mutex);
> +
> +       switch (id) {
> +       case DDP_COMPONENT_DSI0:
> +               sof_id =3D MUTEX_SOF_DSI0;
> +               break;
> +       case DDP_COMPONENT_DSI1:
> +               sof_id =3D MUTEX_SOF_DSI0;
> +               break;
> +       case DDP_COMPONENT_DSI2:
> +               sof_id =3D MUTEX_SOF_DSI2;
> +               break;
> +       case DDP_COMPONENT_DSI3:
> +               sof_id =3D MUTEX_SOF_DSI3;
> +               break;
> +       case DDP_COMPONENT_DPI0:
> +               sof_id =3D MUTEX_SOF_DPI0;
> +               break;
> +       case DDP_COMPONENT_DPI1:
> +               sof_id =3D MUTEX_SOF_DPI1;
> +               break;
> +       case DDP_COMPONENT_DP_INTF0:
> +               sof_id =3D MUTEX_SOF_DP_INTF0;
> +               break;
> +       case DDP_COMPONENT_DP_INTF1:
> +               sof_id =3D MUTEX_SOF_DP_INTF1;
> +               break;
> +       case DDP_COMPONENT_DVO0:
> +               sof_id =3D MUTEX_SOF_DVO0;
> +               break;
> +       default:
> +               break;
> +       }
> +
> +       writel_relaxed(mtx->data->mutex_sof[sof_id],
> +                      mtx->regs +
> +                      DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_reg, mutex=
->id));
> +}
> +EXPORT_SYMBOL_GPL(mtk_mutex_write_comp_sof);

This duplicates the code in `mtk_mutex_add_comp()`. If the write to the
MUTEX_SOF register can be reordered to before the MUTEX_MOD* register,
I suggest replacing the existing code in `mtk_mutex_add_comp()` with
a call to this new function. In essence "move the existing SOF code
to a new helper function that is exported".

>  void mtk_mutex_add_comp(struct mtk_mutex *mutex,
>                         enum mtk_ddp_comp_id id)
>  {
> @@ -883,6 +1063,9 @@ void mtk_mutex_add_comp(struct mtk_mutex *mutex,
>         case DDP_COMPONENT_DP_INTF1:
>                 sof_id =3D MUTEX_SOF_DP_INTF1;
>                 break;
> +       case DDP_COMPONENT_DVO0:
> +               sof_id =3D MUTEX_SOF_DVO0;
> +               break;
>         default:
>                 if (mtx->data->mutex_mod[id] < 32) {
>                         offset =3D DISP_REG_MUTEX_MOD(mtx->data->mutex_mo=
d_reg,
> @@ -891,7 +1074,8 @@ void mtk_mutex_add_comp(struct mtk_mutex *mutex,
>                         reg |=3D 1 << mtx->data->mutex_mod[id];
>                         writel_relaxed(reg, mtx->regs + offset);
>                 } else {
> -                       offset =3D DISP_REG_MUTEX_MOD2(mutex->id);
> +                       offset =3D DISP_REG_MUTEX_MOD1(mtx->data->mutex_m=
od_reg,
> +                                                    mutex->id);

This needs to be a separate patch replacing MOD2 with MOD1, and
explain why this doesn't break existing platforms:

    On existing platforms with mutex IDs larger than 32 (MT8188 and
    MT8195), MOD2 =3D=3D MOD + 0x4 =3D=3D MOD1.

And the MOD2 macro should be removed in the same patch to avoid misuse
in the future.

>                         reg =3D readl_relaxed(mtx->regs + offset);
>                         reg |=3D 1 << (mtx->data->mutex_mod[id] - 32);
>                         writel_relaxed(reg, mtx->regs + offset);
> @@ -899,6 +1083,22 @@ void mtk_mutex_add_comp(struct mtk_mutex *mutex,
>                 return;
>         }
>
> +       if (mtx->data->need_sof_mod) {
> +               if (mtx->data->mutex_mod[id] < 32) {
> +                       offset =3D DISP_REG_MUTEX_MOD(mtx->data->mutex_mo=
d_reg,
> +                                                   mutex->id);
> +                       reg =3D readl_relaxed(mtx->regs + offset);
> +                       reg |=3D 1 << mtx->data->mutex_mod[id];
> +                       writel_relaxed(reg, mtx->regs + offset);
> +               } else {
> +                       offset =3D DISP_REG_MUTEX_MOD1(mtx->data->mutex_m=
od_reg,
> +                                                    mutex->id);
> +                       reg =3D readl_relaxed(mtx->regs + offset);
> +                       reg |=3D 1 << (mtx->data->mutex_mod[id] - 32);
> +                       writel_relaxed(reg, mtx->regs + offset);
> +               }
> +       }
> +

This directly duplicates the block above. Something is wrong here.

>         writel_relaxed(mtx->data->mutex_sof[sof_id],
>                        mtx->regs +
>                        DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_reg, mutex=
->id));
> @@ -924,26 +1124,32 @@ void mtk_mutex_remove_comp(struct mtk_mutex *mutex=
,
>         case DDP_COMPONENT_DPI1:
>         case DDP_COMPONENT_DP_INTF0:
>         case DDP_COMPONENT_DP_INTF1:
> +       case DDP_COMPONENT_DVO0:
>                 writel_relaxed(MUTEX_SOF_SINGLE_MODE,
>                                mtx->regs +
>                                DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_re=
g,
>                                                   mutex->id));
>                 break;
>         default:
> -               if (mtx->data->mutex_mod[id] < 32) {
> -                       offset =3D DISP_REG_MUTEX_MOD(mtx->data->mutex_mo=
d_reg,
> -                                                   mutex->id);
> -                       reg =3D readl_relaxed(mtx->regs + offset);
> -                       reg &=3D ~(1 << mtx->data->mutex_mod[id]);
> -                       writel_relaxed(reg, mtx->regs + offset);
> -               } else {
> -                       offset =3D DISP_REG_MUTEX_MOD2(mutex->id);
> -                       reg =3D readl_relaxed(mtx->regs + offset);
> -                       reg &=3D ~(1 << (mtx->data->mutex_mod[id] - 32));
> -                       writel_relaxed(reg, mtx->regs + offset);
> -               }
>                 break;
>         }
> +
> +       if (!mtx->data->need_sof_mod)
> +               return;
> +
> +       if (mtx->data->mutex_mod[id] < 32) {
> +               offset =3D DISP_REG_MUTEX_MOD(mtx->data->mutex_mod_reg,
> +                                           mutex->id);
> +               reg =3D readl_relaxed(mtx->regs + offset);
> +               reg &=3D ~(1 << mtx->data->mutex_mod[id]);
> +               writel_relaxed(reg, mtx->regs + offset);
> +       } else {
> +               offset =3D DISP_REG_MUTEX_MOD1(mtx->data->mutex_mod_reg,
> +                                            mutex->id);
> +               reg =3D readl_relaxed(mtx->regs + offset);
> +               reg &=3D ~(1 << (mtx->data->mutex_mod[id] - 32));
> +               writel_relaxed(reg, mtx->regs + offset);
> +       }

Why is it OK to move this block, especially now that it has an early
return condition above? The add and remove paths not being the inverse
of each other seems suspect to me.


ChenYu

>  }
>  EXPORT_SYMBOL_GPL(mtk_mutex_remove_comp);
>
> @@ -1134,6 +1340,7 @@ static const struct of_device_id mutex_driver_dt_ma=
tch[] =3D {
>         { .compatible =3D "mediatek,mt8192-disp-mutex", .data =3D &mt8192=
_mutex_driver_data },
>         { .compatible =3D "mediatek,mt8195-disp-mutex", .data =3D &mt8195=
_mutex_driver_data },
>         { .compatible =3D "mediatek,mt8195-vpp-mutex",  .data =3D &mt8195=
_vpp_mutex_driver_data },
> +       { .compatible =3D "mediatek,mt8196-disp-mutex", .data =3D &mt8196=
_mutex_driver_data },
>         { .compatible =3D "mediatek,mt8365-disp-mutex", .data =3D &mt8365=
_mutex_driver_data },
>         { /* sentinel */ },
>  };
> diff --git a/include/linux/soc/mediatek/mtk-mutex.h b/include/linux/soc/m=
ediatek/mtk-mutex.h
> index 635218e3ac68..c15b48f0e4bf 100644
> --- a/include/linux/soc/mediatek/mtk-mutex.h
> +++ b/include/linux/soc/mediatek/mtk-mutex.h
> @@ -69,6 +69,8 @@ enum mtk_mutex_sof_index {
>
>  struct mtk_mutex *mtk_mutex_get(struct device *dev);
>  int mtk_mutex_prepare(struct mtk_mutex *mutex);
> +void mtk_mutex_write_comp_sof(struct mtk_mutex *mutex,
> +                             enum mtk_ddp_comp_id id);
>  void mtk_mutex_add_comp(struct mtk_mutex *mutex,
>                         enum mtk_ddp_comp_id id);
>  void mtk_mutex_enable(struct mtk_mutex *mutex);
> --
> 2.34.1
>
>

