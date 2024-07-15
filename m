Return-Path: <devicetree+bounces-85720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F0593131F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 13:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46F6CB21B16
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 11:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88DD0184122;
	Mon, 15 Jul 2024 11:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HzwBPX++"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F3A4500D
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 11:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721043161; cv=none; b=O2XXDB+Th78mnTRznGIH53gaS9FiuTirU3ykFKge2Ejiz82+IXd8wvvmD+kvll6BKS9l20flcRCIjGDjhvu/eikeLvqyXJrbwojEO9vFguhzoFmnCw53hWeI27r9cWbrkQ320QBhMtgjb3eINI3V3/lfl9uTiKzdxgUXUmX1Kcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721043161; c=relaxed/simple;
	bh=PXPBVmU9s68tux9iTpqyeS/tkuQKoau0BnAS4oqGhT0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jP/UveF7OGb5Tgp4ROI5YM2Gn+kT8Qadxur5cE/3Nvd5Q7FOFkT722xomEd+R18nvSyA+bUnaupB45gRPrq7Oa7wDs7i5MrIxB0k/8t9XBSr82R5ViifHMre9Tnduetq5NofLhiORPzBluRm2T+yAaVyPMIkTLywprq/jf7DplE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HzwBPX++; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e03a581276eso3572733276.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 04:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721043159; x=1721647959; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jogpdw07nqWdBOTLr4+aPckD0RPbKM+NzNUz/Z1iCeg=;
        b=HzwBPX++brdOLUXvFsP/TG5qJ5s1QZXnDrvLr1t4ANmZbG+ak8ZY1du9quhCuNPUVM
         d69P5SeJz9uiUMz7EAuG/35iVKnRotI/ewfuSr9AwxGlMHVo/b0WRlHFIjiy1s/6C91d
         3O25wvWznDTNVLs5cVsavFRtWy0XZ1kXHOevvcXCNOev5NWQ4IizYvS1101s1p1dVhEG
         DqEUYpd99Ad+ChOSS2T/rhMY8lD1UQzVQ3Ep/ajLiyTfw00umlaqsvtd4xGnm4cm7rjg
         34R2Jc1XFz2lUTbDx3nf5l4aQQYaoyX1TW6XwTysChBrBqhKyGqnD0cL9u4VeZnMT9kv
         Pxuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721043159; x=1721647959;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jogpdw07nqWdBOTLr4+aPckD0RPbKM+NzNUz/Z1iCeg=;
        b=RH5PxMwSPCOV4ksK1+uTNkxXmklnqcEj2081IfZ3+9W5Xd+JcnMvxYzZMZ6juIX5Md
         gI5wmunYPs+EkRReCavO2L8fv09K6vqx6NI7AqNYq84NHFrIIGsvI9+G5K6MQGyWjdJv
         o/8kK0gpukTgUHDN/n3+vEocYMRqdbFWON7kvI3Jc505U48gQkMxGBbWqzNAU0+F2AoU
         C03aUlzad5ppExbr3/+nwd6b/uHrIwbCkijGc7WrBm4CKZ1tq+2KI8lOOMmxBCQz1u9o
         WL4jKXbVVg93NvkkV5C/5Hxnxv/9t5mD2jWPiOSHihqAUHfUXapwcYkuBSf7FJkPowMb
         jTsg==
X-Forwarded-Encrypted: i=1; AJvYcCWTVM8VhynDxMIJnFI1BCjMPNsySnbnU33zH+T31Bs+S3+2q982i7FXb+zJWnuRLmW7hqG9WOizadtEKoDX9GQmx93vSMtIKoB2+Q==
X-Gm-Message-State: AOJu0YzzsVdnER8u/9UC20pchUzpqy0ksZnSjsepx7DToWYKRC9Fozi2
	ERPdf/A6DL5qn2ZvhzU2cC1M68kizPVcJLv1c/qkB0NC4wKPZXzciTmolUX0Ro6szTNgDev/4/M
	sSWIyypIvVQjt3ijv0cVWhO0z2AAyxyZ1J9Kh0Q==
X-Google-Smtp-Source: AGHT+IF9lmgFAw7fB03mWJ+kiazuSLnjkXpBjqshoqF+XqRzDmcbRiL7gcCzcPqwVVHx94WtpgGBV68SYHs6dWv1J/U=
X-Received: by 2002:a25:2704:0:b0:e03:5f7f:1215 with SMTP id
 3f1490d57ef6-e041b095eb0mr21171574276.38.1721043158913; Mon, 15 Jul 2024
 04:32:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715031845.6687-1-lvzhaoxiong@huaqin.corp-partner.google.com> <20240715031845.6687-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240715031845.6687-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jul 2024 14:32:26 +0300
Message-ID: <CAA8EJpp8LvzKdHR2y-f-qtfx-fLSOwxG_CXTCrtV6JWnzX_YmQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] drm/panel: boe-th101mb31ig002 : Fix the way to get
 porch parameters
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com, 
	mripard@kernel.org, dianders@google.com, hsinyi@google.com, 
	awarnecke002@hotmail.com, quic_jesszhan@quicinc.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Jul 2024 at 06:19, Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> The current driver can only obtain the porch parameters
> of boe-th101mb31ig002. Modify it to obtain the porch
> parameters of the panel currently being used.
>
> Fixes: 24179ff9a2e4524 ("drm/panel: boe-th101mb31ig002 : Make it compatible with other panel.")
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>

No empty line between Fixed and Sign-off-by


> ---
>  drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> index b55cf80c5522..d4e4abd103bb 100644
> --- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> +++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> @@ -312,15 +312,14 @@ static int boe_th101mb31ig002_get_modes(struct drm_panel *panel,
>         struct boe_th101mb31ig002 *ctx = container_of(panel,
>                                                       struct boe_th101mb31ig002,
>                                                       panel);
> +       const struct drm_display_mode *desc_mode = ctx->desc->modes;
>         struct drm_display_mode *mode;
>
> -       mode = drm_mode_duplicate(connector->dev,
> -                                 &boe_th101mb31ig002_default_mode);
> +       mode = drm_mode_duplicate(connector->dev, desc_mode);
>         if (!mode) {
>                 dev_err(panel->dev, "Failed to add mode %ux%u@%u\n",
> -                       boe_th101mb31ig002_default_mode.hdisplay,
> -                       boe_th101mb31ig002_default_mode.vdisplay,
> -                       drm_mode_vrefresh(&boe_th101mb31ig002_default_mode));
> +                       desc_mode->hdisplay, desc_mode->vdisplay,
> +                       drm_mode_vrefresh(desc_mode));
>                 return -ENOMEM;

Please add a followup switching to drm_connector_helper_get_modes_fixed()

>         }
>
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

