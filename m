Return-Path: <devicetree+bounces-221225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 578E2B9DD1A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:11:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93A687A39BF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 125312E92D1;
	Thu, 25 Sep 2025 07:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bcQvpOqV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FE0219A7D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758784250; cv=none; b=qCO/MdQukBghGbyCMuvUO+fvVB/usEeeU+5/xS8ZYG/QbqkVwshehChC1dCRbCQ1A+tQW7gFg8Rut9jtVlY28PgjU2v9Sjkhe4/eQr604j0NU+wDNMvuwY4ZiGQGwmb7SfQZbxU27orlWX6iS5plE5urpRmDOme6BzCwNtnidlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758784250; c=relaxed/simple;
	bh=nt9UhBR6lM/h1AHxl80XKGo62OCVljiHOeH468JvYF0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l15sGMwSN75BkYYC9NTKv19n/j4oOuf2FKY30TZFtYlw+4c4LgLyIhZ4qjvkJ9FHrWYWYF/W92lLpW6awRa+ohMh5y+RMMqNUXxXHUV48jq2w/sAbd+aKlTVaXisax8itvA0izV8v47+9og6jfbPV3DL7P2A50TuyNF2E2fcYpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bcQvpOqV; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-6352c8b683eso407574d50.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758784246; x=1759389046; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iQb6C3ttjciQrH1J6+L7MgPLJCUOx0fYYmrUWrGIRb8=;
        b=bcQvpOqV2pWuyzULZJjJlYuq5M7Ll2TbVa8zpoAvfXNr83hFR5ealC9c8sju/2GnPM
         cSi3VNq8lhX/xcR8WvxxHtgtgoQbX6AVq2gjB+3ru4Mmu5PPw5sU5NM6WlybocXhY8cw
         lA8JqnouwqIzRcVaAHkm4C2aFMO2sssJJzilyqT44yPhHQ60u+N0dj6kdGaPmxVQAqMx
         K8LeQtf+cp7fn9QeTgfu3XgmJ9lfy0pCPtcWDQRCaIYtMPhelSVLFLiYuAFNyKZupYgV
         43PYAhxTG0Utq9quLqE+hlvomHjwedGAqG5KbPIdEVIjLs0+ANTjzABzuQkiviG/0T6F
         1drw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758784246; x=1759389046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iQb6C3ttjciQrH1J6+L7MgPLJCUOx0fYYmrUWrGIRb8=;
        b=tOeAtXG7CH852Hyh/KPINg//PmWp6ozgyC8GS2d0KfYqdHeBjjHuuDQvTIJvLtoUDj
         nhiC+ELmc6oHs89uFgIR2+RuKcZSuOollQVqAA7ZnnFxYuxXDr1topn3vWM4UFVtT2s6
         3YQO/q4ykTJUvQzMl6NfgT9sXacMaY59yN9BvHuuWq2r6vjXUH5s4JxBL4nwv1s86gHu
         GonBWq28XLriqtymw5UB5PevQws9Bn4NbdKZ6U+/afQaErAR9/D7v2KMD34R07WUROzl
         7ODjUMYhO5PEChbhw8GUi/nTBoIbFy/Skk8aKK998QaKkDpwVGybmXPRMhtdCoyHpnEL
         5/aQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzikz8QuLFuDvnJDDkkU4Xa8+SUv0FiQARuLELRpY1Xvm5dy8fm7RMG54RuTYtpFhgGl0gQPXarls2@vger.kernel.org
X-Gm-Message-State: AOJu0YyJJJ69ElSke1qWlnPNrIKoF/Z+i9GoGdbDd1WGBAz1V2p4UPm6
	+xf7fGX/32lptNvAsdqNZ4BXBeTJj9YQRDK2IZipQdj+0nSZ+/BWyQdkq3Cfmw5vxjTOBsvRh3W
	xSY9W2CImS+S3l2XUF8fNNepp/H21A6Exuntt/mqWJQ==
X-Gm-Gg: ASbGncssNQYHkWE6yj55TKjwM7dw9zcJdCl9jPY087fnzx5Sf1KEYx/yeBrV6ASgXKQ
	J4LNF3wZnnW64L1b3uclFg8sEYF/fBDDpLWT6xI61lRaxKDw6WmLXssYXyuX4JsPQTNupP2tajo
	0WHa2f4rQNO+ewA0Wl0rdELyjxfFRcXYRgTCIrgkVSU0xdxPdhyj5Reudb+IFZ2HHlCPUJ2DJw5
	4yAAKgvYKElmU+X8nA=
X-Google-Smtp-Source: AGHT+IH2nB64sZM1uazTNjqpZvzrzocGQiVD/Q+ub5hgCK4Vy30NwPZyFUTfLzh70x15UYl3iWsRdzrjakrOb8ae4F8=
X-Received: by 2002:a05:690e:2508:b0:635:4ecd:75a4 with SMTP id
 956f58d0204a3-6361a8ad38amr1112652d50.50.1758784246352; Thu, 25 Sep 2025
 00:10:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-dsi-dual-panel-upstream-v3-0-6927284f1098@linaro.org>
 <20250924-dsi-dual-panel-upstream-v3-2-6927284f1098@linaro.org> <CAO9ioeW2AHDM3KSRu-WOvy+1De9tqfhrCNozw5Wkh=CJDHxFYg@mail.gmail.com>
In-Reply-To: <CAO9ioeW2AHDM3KSRu-WOvy+1De9tqfhrCNozw5Wkh=CJDHxFYg@mail.gmail.com>
From: Jun Nie <jun.nie@linaro.org>
Date: Thu, 25 Sep 2025 15:10:35 +0800
X-Gm-Features: AS18NWAPf9tdpp_gChgD_gM1WzlnnA0bBkACDBIPWpyv07LUDbDFj0oLZcuPUcU
Message-ID: <CABymUCP2m-Z1spkAydryNWfysXTVma_H=7w=0GYL6+aH5KW9QA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] drm/mipi-dsi: Add flag to support dual-panel configurations
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> =E4=BA=8E2025=E5=B9=B4=
9=E6=9C=8825=E6=97=A5=E5=91=A8=E5=9B=9B 02:02=E5=86=99=E9=81=93=EF=BC=9A
>
> On Wed, 24 Sept 2025 at 18:08, Jun Nie <jun.nie@linaro.org> wrote:
> >
> > Some devices treat two independent physical DSI panels as a single
> > logical panel from the CRTC's perspective. However, two separate DSI
> > hosts are still required to drive the panels individually.
> >
> > Introduce a `dual_panel` flag to the `mipi_dsi_device` struct. This
> > allows a panel driver to inform the DSI host that it is part of a
> > dual-panel setup, enabling the host to coordinate both physical
> > displays as one.
>
> How is it being set?

This is set by panel driver in probe(). You mean this should be documented
here, right?

> >
> > Signed-off-by: Jun Nie <jun.nie@linaro.org>
> > ---
> >  include/drm/drm_mipi_dsi.h | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
> > index 5a85ba01f402a3866b70828391bb417bb8dd5956..0faff285d9ffeb19e4523cd=
c7bf21c1ec20e6eff 100644
> > --- a/include/drm/drm_mipi_dsi.h
> > +++ b/include/drm/drm_mipi_dsi.h
> > @@ -170,6 +170,7 @@ struct mipi_dsi_device_info {
> >   * @host: DSI host for this peripheral
> >   * @dev: driver model device node for this peripheral
> >   * @attached: the DSI device has been successfully attached
> > + * @dual_panel: the DSI device is one instance of dual panel
> >   * @name: DSI peripheral chip type
> >   * @channel: virtual channel assigned to the peripheral
> >   * @format: pixel format for video mode
> > @@ -188,6 +189,7 @@ struct mipi_dsi_device {
> >         struct mipi_dsi_host *host;
> >         struct device dev;
> >         bool attached;
> > +       bool dual_panel;
> >
> >         char name[DSI_DEV_NAME_SIZE];
> >         unsigned int channel;
> >
> > --
> > 2.34.1
> >
>
>
> --
> With best wishes
> Dmitry

