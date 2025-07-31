Return-Path: <devicetree+bounces-200934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFF5B16B08
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 06:03:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38C7018C6CE6
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 04:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C105D18C322;
	Thu, 31 Jul 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ixO+MeEr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC916D17
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 04:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753934633; cv=none; b=tHaLW5sROvswATEP9f0AlPOGp/dCC7Julr5PxEdl5kJVOhH5KbYQtXEx2yvSIm0jLP1oDJQuYWYmU+qVyd+KcAm2iNm49rR+DlPY32ZsC83HYp708GVfrppUpjQvldCk4hvS40hqMyCI57pyLZHbCZFJHipOQmRlY7fcOUpgw0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753934633; c=relaxed/simple;
	bh=/ja0EnpPMJAy1a6pZm+E6r8QXYWmEMOdxVyXZuJR5eE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZT+1JnSr79brw+gv3is/0s7Bo+A0YrvMgigkj1bX5Ip+VZVt9fmkkCMxP66S8gIPZ4xcql+1QYUR4wf5E1mMPEOFPAOpafoflzmw6RaC9J4VIVj9sxpj4VZy5obsOLHNKuC5OTt2PnQgW2bTeH7buIH4ZNI+2BsTEdOzdu9M+ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ixO+MeEr; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5379498da7eso1144167e0c.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753934631; x=1754539431; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l1REz7lxNqCP0vRE/ucDmbyORYxFecR0vhh1/DbBdVo=;
        b=ixO+MeErDzIYBgca3U5srSgSpk7GVV0YnMBR6e5bAD2iIi7eXJf1LvicgQeC8dAWcT
         A3H2xDPs5L/7pVM5b5aWLlINdVYlS8kPBYjq37MG9BGFwh7HkgrSJhb17RLkzLpslVHd
         HJS1vuKEGTNu/eSP4LfkqQNxGThf8UobPwwSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753934631; x=1754539431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l1REz7lxNqCP0vRE/ucDmbyORYxFecR0vhh1/DbBdVo=;
        b=qRAgTCDBXB5NKSOLbHCN1CSvbFM6ZmihiIZ9NypGnnsKwS+2TrijAT0I8VF3If6AzG
         1qhtV9M8fgqHuvxAPm2T4jfT4Fp6GiHFuan+omTpjg2xYVq7henjNoU/WBMMwvNmBPFm
         RwX9ZoKi4l+lASEXl19osfKUYoOY1CHWpSo5Oxl21HeSX055hiZsrgi9LEPCxhYNmN9M
         qY5KjHP4xSaAQPXTSJu8GnDawuE7tBkjyemhz2wZ9gmt33giSefmC4xRzwS9NmBo56ou
         5f8b1VgUxndrF9R2Gyb8Ue56zYRz/jNDKhUht7OiTWqtzmfjx6tG9R8CBVtXSl1eZdLj
         y8sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMMeVHr/xqLL3PL4yHRx1a1h2ntfSvndCBu89V5/O01SF55j+gifPbddoQgB3WLebgb6Rvxjb0CPAG@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5jxUvzT+ZFtZHNRsiDtisJ/Uxc6cfoWglr3WS/j0rG8P5qUfz
	u4o8/3vargILo6HfrS+N6ZcNud/T3SvuPwntczTUOWKcdZ7CCLEDwKCvie8zOQ4EavOAgvjtVyy
	sx3o=
X-Gm-Gg: ASbGncvbdY8l4qNp++YX3XzgBf1UIyZuJxjIivLud2/pQ7+m+AtdpcuQ4zMtDrHF7hH
	5mYnTM3XxM0+Io1hMYdxFcdpLrdAcqTI2/QJ58ZqkwIaoNqQGOretGkdW73KFWLjv9a5B+8SC+0
	2XK+dZeIgexU872xo6wGXzSNHbwXkQOKCeezZeszxgq4AEA1LC8fi0RtWYdVi7eX5YbiIzfPaTw
	5Gu0qmMtYDHgdEJyazo5YaF0DYeXWXALSF2Kxso4M5CSQ7eK+wPP5rG0FSjmZt3QMz/ms3dB9Ot
	VKskko5pJBoWgH+kg+k6xZXc4Ng8tTz5OPsvXsK0ZRatgQFIfqHLdTY87lSgS9c2iqtq5oEMIkw
	iU5si2IrT9Qq+1dbfeDgQ90XfIVsftPxs8s2aJRWFStLRfjyvC6Uk/j6atQ==
X-Google-Smtp-Source: AGHT+IEFUNMV2dArof8ZUXPKKH7JpppPIRmWynMYnikwJiuKYZMaN9qSCjfbGIwihEcg5RzbaTTpog==
X-Received: by 2002:a05:6122:180f:b0:539:299c:8696 with SMTP id 71dfb90a1353d-53938867352mr260296e0c.7.1753934631011;
        Wed, 30 Jul 2025 21:03:51 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-53936d10f3asm186084e0c.26.2025.07.30.21.03.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 21:03:50 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-4f2f2f22c1aso265929137.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:03:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUCf3PCj1wgk7Pt8Kg9M1YVqyU3o6fUo5GNWZy+nZYMwefaZ/+j1R/dOZzsd8/uvwsCVVkfQsATBZBA@vger.kernel.org
X-Received: by 2002:a05:6102:5122:b0:4e7:be09:df07 with SMTP id
 ada2fe7eead31-4fc100ad7d7mr227087137.12.1753934630495; Wed, 30 Jul 2025
 21:03:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250730152128.311109-1-laura.nao@collabora.com> <20250730152128.311109-5-laura.nao@collabora.com>
In-Reply-To: <20250730152128.311109-5-laura.nao@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 31 Jul 2025 12:03:14 +0800
X-Gmail-Original-Message-ID: <CAC=S1ngvS9z-KOZXeV4kLiW_pDx2F+3AOMcTokaq9O=-E4Pneg@mail.gmail.com>
X-Gm-Features: Ac12FXze0WWvW6KolXpxHVZ5mr5bsteDEMGk6n5CvaPH_JsjnG6BTJ_hncHj4Ic
Message-ID: <CAC=S1ngvS9z-KOZXeV4kLiW_pDx2F+3AOMcTokaq9O=-E4Pneg@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] thermal: mediatek: lvts: Add platform ops to
 support alternative conversion logic
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

On Wed, Jul 30, 2025 at 11:35=E2=80=AFPM Laura Nao <laura.nao@collabora.com=
> wrote:
>
> Introduce lvts_platform_ops struct to support SoC-specific versions of
> lvts_raw_to_temp() and lvts_temp_to_raw() conversion functions.
>
> This is in preparation for supporting SoCs like MT8196/MT6991, which
> require a different lvts_temp_to_raw() implementation.
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>  drivers/thermal/mediatek/lvts_thermal.c | 46 +++++++++++++++++++++++--
>  1 file changed, 43 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/me=
diatek/lvts_thermal.c
> index 8398af657ba2..6e4a35ecaf34 100644
> --- a/drivers/thermal/mediatek/lvts_thermal.c
> +++ b/drivers/thermal/mediatek/lvts_thermal.c
> @@ -125,8 +125,14 @@ struct lvts_ctrl_data {
>                         continue; \
>                 else
>
> +struct lvts_platform_ops {
> +       int (*lvts_raw_to_temp)(u32 raw_temp, int temp_factor);
> +       u32 (*lvts_temp_to_raw)(int temperature, int temp_factor);
> +};
> +
>  struct lvts_data {
>         const struct lvts_ctrl_data *lvts_ctrl;
> +       struct lvts_platform_ops ops;

nit: I think this can also be a const struct, since ops are all
initialized in the platform data and never change.

Anyway, the changes look good IMO, so
Reviewed-by: Fei Shao <fshao@chromium.org>

>         const u32 *conn_cmd;
>         const u32 *init_cmd;
>         int num_cal_offsets;

[...]

