Return-Path: <devicetree+bounces-200931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97267B16AC7
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 05:18:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD944174106
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 03:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE28217C220;
	Thu, 31 Jul 2025 03:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Hp+Y6hTC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281731C5F06
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753931915; cv=none; b=GsIxNnnGOpjPYH6rZ7+13YP3roL5BAsaS2XpAUS34EsitN0q3gO8ItfjWb0G9V4MKFJx8Ihmqe8C/ZtveyZlyw0Hj0019apn/g1gwbtUmrHB5DO9d9M3nlVv/55LFlW6ZTWIaWfbdmdL0gP2OPHk/WM+vCX6PDlzkjyls98Uaus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753931915; c=relaxed/simple;
	bh=DIM3U/viUk7et9FK4/5wZRJ741E/C+ZgyDud3Xa0d+8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pde0i7OU8z0trH7MThkMN4sPO9FtaLqNOE/mdv08C8RNjeO4YfWInbFgWYLLYU2ATtXJMhiY3/0lUXl9XSo83qxXmEdXiYFsXyBgMmtFriCCo+//gdlegRJJ77mIG0tfl8nl/8OL1YKLr85YFU8d5pc0CAfjVQAv21XX9TV64K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Hp+Y6hTC; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-73e88bc3796so245453a34.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 20:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753931913; x=1754536713; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQz3EwDsCOo1XFmvxHoa4HIcyhVHPzzMG2oMGGNImxA=;
        b=Hp+Y6hTC50hNuRWPaSrESaqLIQkNstPZBnAOG0Hy4t9HrXpki8EMhP8pCXPg5q/n+3
         FsMNWZh5kKCsclPRk17k/ahO9sBs24gSQGdoU9/hMAUFMIw6lVlWlPmmIvW1cMeCvYkO
         iBe6hyyieS+fVQo9uIxH6fPu8nDt1F3C1zoTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753931913; x=1754536713;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IQz3EwDsCOo1XFmvxHoa4HIcyhVHPzzMG2oMGGNImxA=;
        b=gsaiWzPsdfKE2EQr4U4GoyQA5X/bK+6hWT+AvD2m2I/UfuAKDmzmieQIKVHQuYhAoa
         fadu1G3XCKS3i6P44YMEOTnMy82Zu32UxC4IFFOMn0alEYL+uPUstARuq54uKNPD8CIK
         AGFmCfzGILUi0QOonkO4zXnvIIiEWxubERJcVScjjbpLXe4Iy1s/bMxE6RaUhl1RwOD+
         yiWJFRIwaRVB0o5n7kyHkNyErlAQpcZPK8ksN01+TxCuXGNUeg31szz/R2R7fWULOn6p
         Lrr0R0pF17+6BB+yAc7HAghs9CE8okrSz+oIuQ8TbnYT6dsEHmthCcNsweLd7L1OxhvT
         wxrQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9h4QMM9nIRqSJps0YI03ltKjKVtFGD9P5XWYKueUY/Q6qPgy6czF8L9Qfe0fTmul8Gu92Zppnt8Wg@vger.kernel.org
X-Gm-Message-State: AOJu0YwmbP2Kek/ll/ib1r1QKFYdEsP079qFBLpOIpY8gqpgIXpdRBcv
	g4av5nuY7jakfkhwIUGVo/A/CpHtS42iUctvUMJCknt04dGGlJgvjEJHkypgbeD0GrPrWC+4QkU
	x+T4=
X-Gm-Gg: ASbGnct6+Luyd07m2dsC9cOlY+NIgYPv8h7/cxb0yp9ET1dVJQUbS9LoZD3jp8D2yOe
	Idb1iOWoup4KHjIzq/CtqAN8iimuENWisZHiWiop4My6wNe/dGG9e1nUZ9U38weYN1syylTxk6s
	yDZwVEblgUhN71fw/Fhih21KLYEgJyhbEhLv1ETbdGk9PWvQlW2xxzr8+tQLM+VaDdN71fo7SvL
	KNhddL490yinnlNzuo8PFYUdfv9J8+t8va1+FFfKPhKAN6A5H/oHOOETiakbNzCf/57fyHi8ZLd
	ax5vwdcq0ZteLHzR7N6V8EZKfA6HNiuTum1WwNhAcVO80uR8W3fklV2ruf1Tk1/o3eZHij66q6z
	Xd3oxR5yqB5GMoaY4IwApEHL5i4LaikObgaS4AQeyjGIOwqDursV5ipx86g==
X-Google-Smtp-Source: AGHT+IFa06FQDbRmZNrFbXA3YbPTDI7tGoRvWKcAnC/vHNVsmt22tZRjzTlqg4iJcdMtsbjTYHzvFA==
X-Received: by 2002:a05:6830:71a5:b0:73e:94d4:ec2 with SMTP id 46e09a7af769-74177a43023mr4000857a34.2.1753931912855;
        Wed, 30 Jul 2025 20:18:32 -0700 (PDT)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com. [209.85.161.53])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-74186dacfcesm133558a34.47.2025.07.30.20.18.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 20:18:32 -0700 (PDT)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-60402c94319so268256eaf.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 20:18:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWRreNKMTq+3EMyXJmuQ4LhNjvulN6VJcN3CsLzH8+/S0+rlWf0qhWMOdh9JxgMHa/rrnBkI3u9nfkA@vger.kernel.org
X-Received: by 2002:a05:6102:3e86:b0:4f9:d929:8558 with SMTP id
 ada2fe7eead31-4fbe7f5a8ecmr3674144137.10.1753931451474; Wed, 30 Jul 2025
 20:10:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250730152128.311109-1-laura.nao@collabora.com> <20250730152128.311109-3-laura.nao@collabora.com>
In-Reply-To: <20250730152128.311109-3-laura.nao@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 31 Jul 2025 11:10:15 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhEiWmFkVMVGqg97TqXQqLhP0KZkQvq+F=k_hS_Jg297Q@mail.gmail.com>
X-Gm-Features: Ac12FXxQNf_MHWgJFTLhQCBFRAD1HLcfHVxkjg6vNoUDqC6XlmkmVeEw5sZ-QQw
Message-ID: <CAC=S1nhEiWmFkVMVGqg97TqXQqLhP0KZkQvq+F=k_hS_Jg297Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] thermal/drivers/mediatek/lvts: Make number of
 calibration offsets configurable
To: Laura Nao <laura.nao@collabora.com>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, andrew-ct.chen@mediatek.com, 
	kernel@collabora.com, nfraprado@collabora.com, arnd@arndb.de, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, u.kleine-koenig@baylibre.com, 
	linux-arm-kernel@lists.infradead.org, wenst@chromium.org, 
	linux-mediatek@lists.infradead.org, bchihi@baylibre.com, 
	colin.i.king@gmail.com, lala.lin@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2025 at 11:30=E2=80=AFPM Laura Nao <laura.nao@collabora.com=
> wrote:
>
> MT8196/MT6991 use 2-byte eFuse calibration data, whereas other SoCs
> supported by the driver rely on 3 bytes. Make the number of calibration
> bytes per sensor configurable, enabling support for SoCs with varying
> calibration formats.
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  drivers/thermal/mediatek/lvts_thermal.c | 32 +++++++++++++++++--------
>  1 file changed, 22 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/me=
diatek/lvts_thermal.c
> index f4d1e66d7db9..05aa8895ccce 100644
> --- a/drivers/thermal/mediatek/lvts_thermal.c
> +++ b/drivers/thermal/mediatek/lvts_thermal.c
> @@ -96,12 +96,14 @@
>
>  #define LVTS_MINIMUM_THRESHOLD         20000
>
> +#define LVTS_MAX_CAL_OFFSETS           3
> +
>  static int golden_temp =3D LVTS_GOLDEN_TEMP_DEFAULT;
>  static int golden_temp_offset;
>
>  struct lvts_sensor_data {
>         int dt_id;
> -       u8 cal_offsets[3];
> +       u8 cal_offsets[LVTS_MAX_CAL_OFFSETS];
>  };
>
>  struct lvts_ctrl_data {
> @@ -127,6 +129,7 @@ struct lvts_data {
>         const struct lvts_ctrl_data *lvts_ctrl;
>         const u32 *conn_cmd;
>         const u32 *init_cmd;
> +       int num_cal_offsets;
>         int num_lvts_ctrl;
>         int num_conn_cmd;
>         int num_init_cmd;
> @@ -711,7 +714,7 @@ static int lvts_calibration_init(struct device *dev, =
struct lvts_ctrl *lvts_ctrl
>                                         u8 *efuse_calibration,
>                                         size_t calib_len)
>  {
> -       int i;
> +       int i, j;
>         u32 gt;
>
>         /* A zero value for gt means that device has invalid efuse data *=
/
> @@ -720,17 +723,18 @@ static int lvts_calibration_init(struct device *dev=
, struct lvts_ctrl *lvts_ctrl
>         lvts_for_each_valid_sensor(i, lvts_ctrl_data) {
>                 const struct lvts_sensor_data *sensor =3D
>                                         &lvts_ctrl_data->lvts_sensor[i];
> +               u32 calib =3D 0;
>
> -               if (sensor->cal_offsets[0] >=3D calib_len ||
> -                   sensor->cal_offsets[1] >=3D calib_len ||
> -                   sensor->cal_offsets[2] >=3D calib_len)
> -                       return -EINVAL;
> +               for (j =3D 0; j < lvts_ctrl->lvts_data->num_cal_offsets; =
j++) {
> +                       u8 offset =3D sensor->cal_offsets[j];
> +
> +                       if (offset >=3D calib_len)
> +                               return -EINVAL;
> +                       calib |=3D efuse_calibration[offset] << (8 * j);
> +               }
>
>                 if (gt) {
> -                       lvts_ctrl->calibration[i] =3D
> -                               (efuse_calibration[sensor->cal_offsets[0]=
] << 0) +
> -                               (efuse_calibration[sensor->cal_offsets[1]=
] << 8) +
> -                               (efuse_calibration[sensor->cal_offsets[2]=
] << 16);
> +                       lvts_ctrl->calibration[i] =3D calib;
>                 } else if (lvts_ctrl->lvts_data->def_calibration) {
>                         lvts_ctrl->calibration[i] =3D lvts_ctrl->lvts_dat=
a->def_calibration;
>                 } else {
> @@ -1763,6 +1767,7 @@ static const struct lvts_data mt7988_lvts_ap_data =
=3D {
>         .temp_factor    =3D LVTS_COEFF_A_MT7988,
>         .temp_offset    =3D LVTS_COEFF_B_MT7988,
>         .gt_calib_bit_offset =3D 24,
> +       .num_cal_offsets =3D 3,
>  };
>
>  static const struct lvts_data mt8186_lvts_data =3D {
> @@ -1776,6 +1781,7 @@ static const struct lvts_data mt8186_lvts_data =3D =
{
>         .temp_offset    =3D LVTS_COEFF_B_MT7988,
>         .gt_calib_bit_offset =3D 24,
>         .def_calibration =3D 19000,
> +       .num_cal_offsets =3D 3,
>  };
>
>  static const struct lvts_data mt8188_lvts_mcu_data =3D {
> @@ -1789,6 +1795,7 @@ static const struct lvts_data mt8188_lvts_mcu_data =
=3D {
>         .temp_offset    =3D LVTS_COEFF_B_MT8195,
>         .gt_calib_bit_offset =3D 20,
>         .def_calibration =3D 35000,
> +       .num_cal_offsets =3D 3,
>  };
>
>  static const struct lvts_data mt8188_lvts_ap_data =3D {
> @@ -1802,6 +1809,7 @@ static const struct lvts_data mt8188_lvts_ap_data =
=3D {
>         .temp_offset    =3D LVTS_COEFF_B_MT8195,
>         .gt_calib_bit_offset =3D 20,
>         .def_calibration =3D 35000,
> +       .num_cal_offsets =3D 3,
>  };
>
>  static const struct lvts_data mt8192_lvts_mcu_data =3D {
> @@ -1815,6 +1823,7 @@ static const struct lvts_data mt8192_lvts_mcu_data =
=3D {
>         .temp_offset    =3D LVTS_COEFF_B_MT8195,
>         .gt_calib_bit_offset =3D 24,
>         .def_calibration =3D 35000,
> +       .num_cal_offsets =3D 3,
>  };
>
>  static const struct lvts_data mt8192_lvts_ap_data =3D {
> @@ -1828,6 +1837,7 @@ static const struct lvts_data mt8192_lvts_ap_data =
=3D {
>         .temp_offset    =3D LVTS_COEFF_B_MT8195,
>         .gt_calib_bit_offset =3D 24,
>         .def_calibration =3D 35000,
> +       .num_cal_offsets =3D 3,
>  };
>
>  static const struct lvts_data mt8195_lvts_mcu_data =3D {
> @@ -1841,6 +1851,7 @@ static const struct lvts_data mt8195_lvts_mcu_data =
=3D {
>         .temp_offset    =3D LVTS_COEFF_B_MT8195,
>         .gt_calib_bit_offset =3D 24,
>         .def_calibration =3D 35000,
> +       .num_cal_offsets =3D 3,
>  };
>
>  static const struct lvts_data mt8195_lvts_ap_data =3D {
> @@ -1854,6 +1865,7 @@ static const struct lvts_data mt8195_lvts_ap_data =
=3D {
>         .temp_offset    =3D LVTS_COEFF_B_MT8195,
>         .gt_calib_bit_offset =3D 24,
>         .def_calibration =3D 35000,
> +       .num_cal_offsets =3D 3,
>  };
>
>  static const struct of_device_id lvts_of_match[] =3D {
> --
> 2.39.5
>
>

