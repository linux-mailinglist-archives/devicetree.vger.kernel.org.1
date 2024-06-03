Return-Path: <devicetree+bounces-71700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 691B08D7A6E
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 05:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A7471C20971
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 03:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B358C208CE;
	Mon,  3 Jun 2024 03:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lYrTC0Oa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFBF18622
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717385155; cv=none; b=KE8S5Y4UMmlIwAyZIUV06pDCiRsaaAsnGmBF0Na2WngQMCsT3luwdJGMZd5Csh39mHzGOFNGa0LmmnfCWYe+s4v68kVPTcUdNgOQc2+3XEx0vVECwdz7xYX9Jk0AdHQQto1JUM7eTyx+0ucAB4LX2fpGquL5E/NdoBRTVC1Ei3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717385155; c=relaxed/simple;
	bh=7psbjz/050e5GpHnO0rvAexu3PAbhO3mMI4PEs9xD70=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QjalNGH0uPsuGhlGlFxPh/t0Ipaw8RTSug7BSZMlONu1IZ1IIchjaoAno+mSRWjJJLlHQoKzIygDyRz0AKaliUthVZmGn2Dl2Fq28y9BONy6kVQf+Sa9vfJUXSyTutE6SVe8H2Y/m1OGwhPm9e6qTnqQfNOsP0wdDIL9GckAC4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lYrTC0Oa; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-35dbdd76417so2217479f8f.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 20:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717385152; x=1717989952; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+v70MlxPx26RmqrAm4uPG5jCKQlv/XwKZGoTtit7GE=;
        b=lYrTC0OaeFT1ntqJAZTUmzWtixV7gHy73lHrDh2M8gwV2CPlwgM3DQKZwlwviI7CNR
         nmG6A43Z0wwH5Wzd2sYXOMKUZyaFILUkHXdvXDqLAqb0Ws9+ikFgpEhX8XEZ74BkPhvN
         DOQmF7FwgO5s7KjAGU1vkiChgA7iCb7hIfnAoeqscpe722dn57lbKONO4LrD0S/cpxYo
         balxM1iGsyeUyLuYD3uwEo1KmrP8aV2dHAofCuTFKqou144COLZfmBoUP5GBvlhQ2het
         qMs9tLTfNc0LIQr6w9xKbz9QZ0AoaKAE8cpzQLvLhiTeJtN4LMXiT/AWcPHOv4SivDtA
         RFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717385152; x=1717989952;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4+v70MlxPx26RmqrAm4uPG5jCKQlv/XwKZGoTtit7GE=;
        b=Je06Qr4TIa44qwx1pCW9iJrMKMxx6RgJBbZ8tj6POmZoIv9AB5XgEaRBldigWYFiuP
         sppCEhEy6jwzeWvtSaP8LHlnUojR0OGHXexVdhSabkRuAjNERFvtYFjmm3oCgX1rsNrd
         Qn3KOBI5BHhxUTmRKgU9tzPeeMvSR6mn/aztzmATln9IqU/quoXd2xTQiK316r067ZJm
         fVcXzcO7QZQNEhXk4IkmGX0f5+DTyUoMxt5ghcE+jIevumy4gqJ8yB/6s0KC4RtmCpWa
         +OKYqJAS6lhvuM4Z1ktjMtkowlz8XfvzdThbuSEkWX9OiQ6hQU0upADMLt5QF3uEF5qr
         JRFA==
X-Forwarded-Encrypted: i=1; AJvYcCUkw8aS63OqDWG/BnNDk8+GVKslvDRBN2aDWLNQe+ZgQYVLmbYtvxx+vhzOq1JZ33KKG5nIUkgqfGp7k9mPJYwigCaD0Yvml8VC8g==
X-Gm-Message-State: AOJu0Yw9A65aFbwHvTc5xGpqc5zTzlAfc73QvPyeH73h7TldvYt85Gvc
	uUS8hWvo5zO3KSee/8XeYZNOSGacSCyxb52lN7p7IkK3OzKAvK7YqwPt4+HqC8bl3fuWHKEez+5
	S4MPsRJdh+HmirWECrFJs5BMcYzk=
X-Google-Smtp-Source: AGHT+IEZOMMK26fX+knYHoHceWWilwaB/46tXNfYgD7aKzJmhSx5uf/igZymrM/R6chuBlOLL1Du475O+oQnjqyHyYM=
X-Received: by 2002:adf:eb11:0:b0:35e:f0e:1ba0 with SMTP id
 ffacd0b85a97d-35e0f268722mr6796950f8f.19.1717385151461; Sun, 02 Jun 2024
 20:25:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
In-Reply-To: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
From: Chris Healy <cphealy@gmail.com>
Date: Sun, 2 Jun 2024 20:25:39 -0700
Message-ID: <CAFXsbZo3miDMQ7SDktRP_DOzMy2JTFz4AsuMp78jLQGauTNsmA@mail.gmail.com>
Subject: Re: [PATCH v3 00/12] drm/imx/ipuv3: switch LDB and parallel-display
 driver to use drm_bridge_connector
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On an i.MX53 QSB with HDMI daughter board, this patch series is:

Tested-by: Chris Healy <cphealy@gmail.com>

HDMI output still works correctly and the bridges file reflects the changes=
:

Before:

root:/sys/kernel/debug/dri/display-subsystem/encoder-0 cat bridges
bridge[0]: 0xc0fa76d8
        type: [0] Unknown
        ops: [0x0]
bridge[1]: 0xc0fba03c
        type: [0] Unknown
        OF: /soc/bus@60000000/i2c@63fc4000/bridge-hdmi@39:sil,sii9022
        ops: [0x7] detect edid hpd


After:

root:/sys/kernel/debug/dri/display-subsystem/encoder-0 cat bridges
bridge[0]: 0xc0fa76d8
        type: [0] Unknown
        ops: [0x0]
bridge[1]: 0xc0fb9f5c
        type: [0] Unknown
        OF: /soc/bus@60000000/i2c@63fc4000/bridge-hdmi@39:sil,sii9022
        ops: [0x7] detect edid hpd
bridge[2]: 0xc0fb9794
        type: [11] HDMI-A
        OF: /connector-hdmi:hdmi-connector
        ops: [0x0]

On Sun, Jun 2, 2024 at 5:04=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The IPUv3 DRM i.MX driver contains several codepaths for different
> usescases: both LDB and paralllel-display drivers handle next-bridge,
> panel and the legacy display-timings DT node on their own.
>
> Drop unused ddc-i2c-bus and edid handling (none of the DT files merged
> upstream ever used these features), switch to panel-bridge driver,
> removing the need to handle drm_panel codepaths separately and finally
> switch to drm_bridge_connector, removing requirement for the downstream
> bridges to create drm_connector on their own.
>
> This has been tested on the iMX53 with the DPI panel attached to LDB via
> LVDS decoder, using all possible usecases (lvds-codec + panel, panel
> linked directly to LDB node and the display-timings node).
>
> To be able to test on the iMX53 QSRB with the HDMI cape apply [1], [2]
>
> [1] https://lore.kernel.org/all/20240514030718.533169-1-victor.liu@nxp.co=
m/
> [2] https://lore.kernel.org/all/20240602-imx-sii902x-defconfig-v1-1-71a6c=
382b422@linaro.org/
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Changes in v3:
> - Notice (soft) dependencies in the cover letter (Chris)
> - Select DRM_BRIDGE instead of depending on it (Philipp)
> - Dropped unused selection of DRM_PANEL (Philipp)
> - Added missing include of <drm/bridge/imx.h> to parallel-display.c
>   (Philipp)
> - Link to v2: https://lore.kernel.org/r/20240331-drm-imx-cleanup-v2-0-d81=
c1d1c1026@linaro.org
>
> Changes in v2:
> - Fixed drm_bridge_attach flags in imx/parallel-display driver.
> - Moved the legacy bridge to drivers/gpu/drm/bridge
> - Added missing EXPORT_SYMBOL_GPL to the iMX legacy bridge
> - Link to v1: https://lore.kernel.org/r/20240311-drm-imx-cleanup-v1-0-e10=
4f05caa51@linaro.org
>
> ---
> Dmitry Baryshkov (12):
>       dt-bindings: display: fsl-imx-drm: drop edid property support
>       dt-bindings: display: imx/ldb: drop ddc-i2c-bus property
>       drm/imx: cleanup the imx-drm header
>       drm/imx: parallel-display: drop edid override support
>       drm/imx: ldb: drop custom EDID support
>       drm/imx: ldb: drop custom DDC bus support
>       drm/imx: ldb: switch to drm_panel_bridge
>       drm/imx: parallel-display: switch to drm_panel_bridge
>       drm/imx: add internal bridge handling display-timings DT node
>       drm/imx: ldb: switch to imx_legacy_bridge / drm_bridge_connector
>       drm/imx: parallel-display: switch to imx_legacy_bridge / drm_bridge=
_connector
>       drm/imx: move imx_drm_connector_destroy to imx-tve
>
>  .../bindings/display/imx/fsl-imx-drm.txt           |   2 -
>  .../devicetree/bindings/display/imx/ldb.txt        |   1 -
>  drivers/gpu/drm/bridge/imx/Kconfig                 |  10 +
>  drivers/gpu/drm/bridge/imx/Makefile                |   1 +
>  drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c     |  85 +++++++++
>  drivers/gpu/drm/imx/ipuv3/Kconfig                  |  10 +-
>  drivers/gpu/drm/imx/ipuv3/imx-drm-core.c           |   7 -
>  drivers/gpu/drm/imx/ipuv3/imx-drm.h                |  14 --
>  drivers/gpu/drm/imx/ipuv3/imx-ldb.c                | 203 +++++----------=
------
>  drivers/gpu/drm/imx/ipuv3/imx-tve.c                |   8 +-
>  drivers/gpu/drm/imx/ipuv3/parallel-display.c       | 139 +++-----------
>  include/drm/bridge/imx.h                           |  13 ++
>  12 files changed, 187 insertions(+), 306 deletions(-)
> ---
> base-commit: 850ca533e572247b6f71dafcbf7feb0359350963
> change-id: 20240310-drm-imx-cleanup-10746a9b71f5
>
> Best regards,
> --
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>

