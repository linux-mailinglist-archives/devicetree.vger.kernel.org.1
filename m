Return-Path: <devicetree+bounces-221223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCC7B9DCFC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:09:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56F84176F8D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DA92EA166;
	Thu, 25 Sep 2025 07:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HhcXa2Ll"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758042E975A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758784063; cv=none; b=T1P8ut8DQo1JDJP26Nm6pLsI0DclDsv9lC8zuY+M1wgwIfE8EYj3neEZP/U6gr8JPYgKRFlN6owC9kttS0AweNA+hTgbxg6cgSVYOInT9i6Lcys8xUoqfAxFhpMXrtOo6lKS2t8oCXRE478yUrHXEpAc6NyS0jxcsP2bxghM+wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758784063; c=relaxed/simple;
	bh=Kbtcfq5fyQYZlcBGejdCLI77Fe0u0uCO6YU/9uf+Ivc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DX8Qc7Ov2PnsN/AevQb0LX0J+hEuWU5gYaLPbFrfBSZIsVvkg4w1wKqVmQBz9uCSBrWibvLP3IK3XTbWZYz0NIPt/w3knbY3oRslx43lM3vx+x8m2eWB16psQdYYzEDPVNFsHZwX8hfZgBb2AygJMw3k7Dxe37X7wMHJ0k5My5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HhcXa2Ll; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-6360f986fb0so271869d50.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758784060; x=1759388860; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fUjZGyLU19RcwCrMKmops0qcnCk7VMqAFUtNT7ECI+o=;
        b=HhcXa2Llbllu2zSzOIePncoq/o3/fSCOmte8S/uY2RTPk9/RiDjsDw5dA1oGMUyaXH
         58TiEd1SSNJBW7CRK0aSNMSkGVKYRSUllIT9445IOMQwCuKY9P0VGcfB6EZ2NIksiXys
         KleXm4z57GW2OETykDwMQPO/DT7I+JWRfOlzqFn5S9/HWVB/ZCnX8kfkSNm8WW572ADV
         CgysOXPXba1Sb2rIXjopLd5TRfLY3Vfw/QfCvAJesb86CluiCntQezJhQmG/K8x5PVtb
         mS6/Mq33gZVgq9ntrUZQZuZH8exIQz+sp7nPl2unqwGbhmA/0z5t11wFrzA1vQvtL3pJ
         pHRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758784060; x=1759388860;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fUjZGyLU19RcwCrMKmops0qcnCk7VMqAFUtNT7ECI+o=;
        b=IhtWeZE50Cm243ECULnH6+msBUwopdZfXVFp03cjoLiq4JEcGQkNaz+7lUS2scnxCj
         w29+f9EcXgrCnH3yyP2cO5QC5mD/ypcrzM/JS22c4EnrGA4JrMWgk5ZJazphB5tvGQlT
         tCjUYANdOWFd2ugdYGizo/0WXcHeukjEb7++ylgEkpMPYW67dbpXuLys8ChgffWwjaNs
         SLR0lKdusMQ87NwnE4QruWKJMmKsPtpMLdlSUKs4WPXw04iSVfvBlUUT0/87YiRFdMWq
         MySlm/Zkna2eWVZ7LYg0we7W6nNPejAXeBG7jKBpYyag0HqkS5/jKi5FT9fXuya4GTIn
         DLrw==
X-Forwarded-Encrypted: i=1; AJvYcCXI+WYWAS/enTX7Ed1v/7ICGYoZ7xCzGJZeR7ohA83G1QOXgkixNlxYFs+GgBmkmmMzsTFa66TbolSU@vger.kernel.org
X-Gm-Message-State: AOJu0YxGR+utxvSzZl0CedJspCP4EpfjRXhLcqYQ6NSsEd6lyy1LY0+D
	ykcgr1YcXcPrv3f+jk1DzXVqcM8G5h4WBHQfOPFDD1t5avZ8zRVzjrYfN4a3GQ/Uevhj6RkCSwm
	p2/EQf9C5gAs1DQCHvoqXlrOM+Xarxiv+0nOxQxEgxQ==
X-Gm-Gg: ASbGncvccV4SMx7Po5GUDgh45AZREqtU9xVPKF4vhRJnNgO5fbJkhF6v4yTZQKKGAwP
	7pSH2h0u09uEOG6C3lI+HVssTJk0EmtDTB/IysthkYqOlMSnngpXB/NKmX3sCxIMuz6GxYw/DLv
	KM0Bh6aRX9U+dYA+CWIO9gY3LRwIoJe+9THx/ym0GijZG3YpKXl0Ouy1X6cyCotPzIZ6JvnZXf4
	HUKGmdh2c/C+K4q8H8=
X-Google-Smtp-Source: AGHT+IE/1OBpeA99Fiz9qQHctTOBOmzg3ShTn+n3h2sPgqDM5viSZqLLP6KS9wKGApYeUgzJ2QakSD5Xgh2kbf5v4G8=
X-Received: by 2002:a05:690e:15d3:b0:633:bbf3:6f47 with SMTP id
 956f58d0204a3-6361a70dfe7mr1067697d50.6.1758784060255; Thu, 25 Sep 2025
 00:07:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-dsi-dual-panel-upstream-v3-0-6927284f1098@linaro.org>
 <20250924-dsi-dual-panel-upstream-v3-1-6927284f1098@linaro.org> <5b75dckankcx55gbm734a23rvqxdbprlus3nkvqfry7lz5ksjf@jjmfsbiwqny6>
In-Reply-To: <5b75dckankcx55gbm734a23rvqxdbprlus3nkvqfry7lz5ksjf@jjmfsbiwqny6>
From: Jun Nie <jun.nie@linaro.org>
Date: Thu, 25 Sep 2025 15:07:28 +0800
X-Gm-Features: AS18NWCK3VUPymi0j56jgt9f35ZcIhzOf9s-0_IEyrE9TQ0T232i-Rva5B1N9-o
Message-ID: <CABymUCNZmxzRaVVLU=U9QPupK0KpW_C1eqa8t_ijL6B5EdgnAw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] drm/msm/dsi: support DSC configurations with
 slice_per_pkt > 1
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
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jonathan Marek <jonathan@marek.ca>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> =E4=BA=8E2025=E5=B9=B4=
9=E6=9C=8825=E6=97=A5=E5=91=A8=E5=9B=9B 03:10=E5=86=99=E9=81=93=EF=BC=9A
>
> On Wed, Sep 24, 2025 at 11:08:10PM +0800, Jun Nie wrote:
> > Some panels support multiple slice to be sent in a single DSC packet. A=
nd
>
> s/support/require/
>
> If the panel supports something, then we can omit that and send 1 slice
> as we currently do. If the panel requires multiple slices, it's
> mandatory.
>
> > this feature is a must for specific panels, such as JDI LPM026M648C. Ad=
d a
>
> A panel driver which executes this API is appreciated. Otherwise in a
> few months / years somebody will submit a patch 'field foo is not used
> by the kernel drivers, drop it'.

OK, will add a panel driver in next version.
>
> > dsc_slice_per_pkt member into struct mipi_dsi_device and support the
> > feature in msm mdss driver.
> >
> > Co-developed-by: Jonathan Marek <jonathan@marek.ca>
> > Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> > Signed-off-by: Jun Nie <jun.nie@linaro.org>
> > ---
> >  drivers/gpu/drm/msm/dsi/dsi_host.c | 25 ++++++++++---------------
> >  include/drm/drm_mipi_dsi.h         |  2 ++
> >  2 files changed, 12 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/d=
si/dsi_host.c
> > index f297e3de8c3dc4e1326e70c78c046b5a19568cef..de51cb02f267205320c5a94=
fc4188413e05907e6 100644
> > --- a/drivers/gpu/drm/msm/dsi/dsi_host.c
> > +++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
> > @@ -157,6 +157,7 @@ struct msm_dsi_host {
> >
> >       struct drm_display_mode *mode;
> >       struct drm_dsc_config *dsc;
> > +     unsigned int dsc_slice_per_pkt;
> >
> >       /* connected device info */
> >       unsigned int channel;
> > @@ -849,17 +850,10 @@ static void dsi_update_dsc_timing(struct msm_dsi_=
host *msm_host, bool is_cmd_mod
> >       slice_per_intf =3D dsc->slice_count;
> >
> >       total_bytes_per_intf =3D dsc->slice_chunk_size * slice_per_intf;
> > -     bytes_per_pkt =3D dsc->slice_chunk_size; /* * slice_per_pkt; */
> > +     bytes_per_pkt =3D dsc->slice_chunk_size * msm_host->dsc_slice_per=
_pkt;
> >
> >       eol_byte_num =3D total_bytes_per_intf % 3;
> > -
> > -     /*
> > -      * Typically, pkt_per_line =3D slice_per_intf * slice_per_pkt.
> > -      *
> > -      * Since the current driver only supports slice_per_pkt =3D 1,
> > -      * pkt_per_line will be equal to slice per intf for now.
> > -      */
> > -     pkt_per_line =3D slice_per_intf;
> > +     pkt_per_line =3D slice_per_intf / msm_host->dsc_slice_per_pkt;
> >
> >       if (is_cmd_mode) /* packet data type */
> >               reg =3D DSI_COMMAND_COMPRESSION_MODE_CTRL_STREAM0_DATATYP=
E(MIPI_DSI_DCS_LONG_WRITE);
> > @@ -1008,12 +1002,8 @@ static void dsi_timing_setup(struct msm_dsi_host=
 *msm_host, bool is_bonded_dsi)
> >               else
> >                       /*
> >                        * When DSC is enabled, WC =3D slice_chunk_size *=
 slice_per_pkt + 1.
> > -                      * Currently, the driver only supports default va=
lue of slice_per_pkt =3D 1
> > -                      *
> > -                      * TODO: Expand mipi_dsi_device struct to hold sl=
ice_per_pkt info
> > -                      *       and adjust DSC math to account for slice=
_per_pkt.
> >                        */
> > -                     wc =3D msm_host->dsc->slice_chunk_size + 1;
> > +                     wc =3D msm_host->dsc->slice_chunk_size * msm_host=
->dsc_slice_per_pkt + 1;
> >
> >               dsi_write(msm_host, REG_DSI_CMD_MDP_STREAM0_CTRL,
> >                       DSI_CMD_MDP_STREAM0_CTRL_WORD_COUNT(wc) |
> > @@ -1623,8 +1613,13 @@ static int dsi_host_attach(struct mipi_dsi_host =
*host,
> >       msm_host->lanes =3D dsi->lanes;
> >       msm_host->format =3D dsi->format;
> >       msm_host->mode_flags =3D dsi->mode_flags;
> > -     if (dsi->dsc)
> > +     if (dsi->dsc) {
> >               msm_host->dsc =3D dsi->dsc;
> > +             msm_host->dsc_slice_per_pkt =3D dsi->dsc_slice_per_pkt;
> > +             /* for backwards compatibility, assume 1 if not set */
> > +             if (!msm_host->dsc_slice_per_pkt)
> > +                     msm_host->dsc_slice_per_pkt =3D 1;
>
> msm_host->dsc_slice_per_pkt =3D dsi->dsc_slice_per_pkt ?: 1;
>
> Yes, I think it's more ideomatic.

Will add the change.
>
> > +     }
> >
> >       ret =3D dsi_dev_attach(msm_host->pdev);
> >       if (ret)
> > diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
> > index 6d2c08e8110151a97620389197f1ef79c058329d..5a85ba01f402a3866b70828=
391bb417bb8dd5956 100644
> > --- a/include/drm/drm_mipi_dsi.h
> > +++ b/include/drm/drm_mipi_dsi.h
> > @@ -182,6 +182,7 @@ struct mipi_dsi_device_info {
> >   * be set to the real limits of the hardware, zero is only accepted fo=
r
> >   * legacy drivers
> >   * @dsc: panel/bridge DSC pps payload to be sent
> > + * @dsc_slice_per_pkt: number of DSC slices to be sent as in a single =
packet
>
> s/as //

Will do.
>
> >   */
> >  struct mipi_dsi_device {
> >       struct mipi_dsi_host *host;
> > @@ -196,6 +197,7 @@ struct mipi_dsi_device {
> >       unsigned long hs_rate;
> >       unsigned long lp_rate;
> >       struct drm_dsc_config *dsc;
> > +     unsigned int dsc_slice_per_pkt;
>
> Why is it a part of the DSI device config? What if a device specifies
> dsc_slice_per_pkt, but not DSC config? What are the legit boundaries for
> this field?

You are right. drm_dsc_config is better place to add the info. Thus only
panels that support DSC can convey the info to host.
>
> >  };
> >
> >  /**
> >
> > --
> > 2.34.1
> >
>
> --
> With best wishes
> Dmitry

