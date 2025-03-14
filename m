Return-Path: <devicetree+bounces-157391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6409BA6077E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 03:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 253FA19C3983
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 02:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3920738F82;
	Fri, 14 Mar 2025 02:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ItJMoRmg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB9312B94
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 02:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741919294; cv=none; b=Tn3a8HDeD+Am9W0R2HUvaIkuQLTnnI64jb2n1AYpJo5rr+ieg0yFjwyoBukOnHLBrEciSqCZTenoN2DhBD1JpM/qzAT37BkKax6HIvEzrxWOP97LR1j3Ej/t7hOiHcBYzavd0csPAB8NPb21SaBIAv1el91bWOwXCYTYI0BcQXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741919294; c=relaxed/simple;
	bh=loebAbx3vNDj+ikpiNeciMGVKZMUSmC7NgxZ7+uX4bc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rPm1EfljGSd0uqp/4O7dYlwl/q7CnE6J2WqtCSg6PRdSvjkey4pf5gUmeeri7FwTq8YL2DvGS/tGihdKoqNFsk1cw7+i7bzTBfRZMPBoeMG8to0zBQyTs2y1saklaHbKf+BX8fmfdakuB/IZY7B94mrRedhxarbNt+cKzy/bf9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ItJMoRmg; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30bef9b04adso16720801fa.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 19:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741919288; x=1742524088; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VK4KlxY3uUa17qisCA7GoD5gggjvWR4zuA8FgG9CVRU=;
        b=ItJMoRmg1QrRgGeTmUTIxInLxrqWz3OYQgq1iL7MdTcr3XmdhPcKh89Si4wvSWRF2e
         OlJhKWLW818tPcpzt3csu0skKi63B6AC/8pJoM7v5BlcN0Rww6CcYZwKpXN4ST6OxIpT
         CWBHaNEILpSTJfr8acKRtQXQAg7dS0eEcE+7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741919288; x=1742524088;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VK4KlxY3uUa17qisCA7GoD5gggjvWR4zuA8FgG9CVRU=;
        b=xJJx0VfChSZ5fVKdJggy9YSmv2FEGdXMfGqL3TwbavvZ10PZULCi935+AWtddzIU+s
         brLDQF2iWWXQyxrYPRvyTxmmmjfxtzwi9jqgiRWTu1GRHa/KBP3DnYxVupXNYZUKwqzb
         75w5z+efNAD2VIUmItSeqc9GGC/KPPVD80BJ2y0hU1ILPfsHhui+pWAvlZ9APE9nhQiK
         xsDa1tKMWgRLmH/vTOclpNJQEctdknwEez6gYlLOrLj8cDalyBszfZdagRgRc19eGS4k
         1yqSWq3z35cRojwsg94+jjcgwGoVAgTJxrp5Mz06bM4CJy872s1rLUCyAoW4L6CyVXyY
         GiRg==
X-Forwarded-Encrypted: i=1; AJvYcCXqJ6dL+s+O9edJBfWwZD8GVrIqLzeNoRKrmyoN4ajS2SNLidp5Pg9KxmxQ1KeHcCtig+q19LCxFQ9z@vger.kernel.org
X-Gm-Message-State: AOJu0YyQNzKRUPmuTkjqKcrHVwWvoduuWMtun+o4/RcGL3JVd0am80oH
	dXUQNNA80s1Vpn2Qaqmr/vZ8M9Mo7kDNf4elkgRlyUsNLuNhQmMWlYw2cwtXaxNElwbqEYXd1sg
	xOQ==
X-Gm-Gg: ASbGncujMLkZJoL2YD13eOCkLz3/n5ppfrtMwGRbRfOW2JjkY2QcMqj17CiupAPjNTI
	D/spm/WRQ4No5id97BhIyEW8k5VuD3RHl2GxQdOkg/nCIL3ZQqyDfVLGkZUdTsrxZiLqYv3Bwuc
	TIEgJyvQX9u1BDtomLEooAPfrddQRYAWX5dLMBLvFuFG5g5u/J+xJ9beQ1V6NyMSn26cs4kcxll
	/zhkcTLgDn1OfC1FqFoO8O2wPLZ4s1ccd8AiWHA5pCrbiVIL/dEyEwUrYkVuk5WxGeiHm5XMwhX
	KOAPNo17oXnS9rwyEBYCTdL42o/HpmZ3/5oofF0xUbofPM7tUlLolnba+HlG/30xWQXoxCXSgnG
	xV0aQPC9BloTg
X-Google-Smtp-Source: AGHT+IFvTNApC4alWbsfwOzqBVB2sRBjqrObx+Yfyj0s+DRxl+Z7YCjCe4mxHIeZRltihqoDPLiG7w==
X-Received: by 2002:a05:6512:108b:b0:549:5769:6ae3 with SMTP id 2adb3069b0e04-549c38d2fb9mr203504e87.6.1741919288091;
        Thu, 13 Mar 2025 19:28:08 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a73ffsm374875e87.216.2025.03.13.19.28.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 19:28:07 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30613802a04so17830201fa.2
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 19:28:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUmbWNK+Ob3o1e7rp28VPyCdPc9jLC4J1SdQO+Ug4yidoWCSLBF+IkNpc09CoaGX+MqIzC8XO0rwEbL@vger.kernel.org
X-Received: by 2002:a05:6512:3a8e:b0:549:4d78:2418 with SMTP id
 2adb3069b0e04-549c38f7d9cmr254376e87.27.1741919283647; Thu, 13 Mar 2025
 19:28:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250310104114.2608063-1-damon.ding@rock-chips.com> <20250310104114.2608063-8-damon.ding@rock-chips.com>
In-Reply-To: <20250310104114.2608063-8-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Mar 2025 19:27:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XigZ7k9ZmyT8wEeJKB79ef4ut7XrKdmXGqLbwdbxwe_w@mail.gmail.com>
X-Gm-Features: AQ5f1JqOO-vARbb-qxWvQyFu_Kv3lXKxcHR_dDdzPTPbj0JZAG253PMvReLZCQo
Message-ID: <CAD=FV=XigZ7k9ZmyT8wEeJKB79ef4ut7XrKdmXGqLbwdbxwe_w@mail.gmail.com>
Subject: Re: [PATCH v8 07/13] drm/bridge: analogix_dp: Add support for &drm_dp_aux.wait_hpd_asserted()
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, dmitry.baryshkov@linaro.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, 
	boris.brezillon@collabora.com, l.stach@pengutronix.de, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 10, 2025 at 3:42=E2=80=AFAM Damon Ding <damon.ding@rock-chips.c=
om> wrote:
>
> Add analogix_dpaux_wait_hpd_asserted() to help confirm the HPD state
> before doing AUX transfers.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers=
/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 2b76a9cf3bcb..b7e143b3ff75 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1548,6 +1548,26 @@ static ssize_t analogix_dpaux_transfer(struct drm_=
dp_aux *aux,
>         return ret;
>  }
>
> +static int analogix_dpaux_wait_hpd_asserted(struct drm_dp_aux *aux, unsi=
gned long wait_us)
> +{
> +       struct analogix_dp_device *dp =3D to_dp(aux);
> +       int val;
> +       int ret;
> +
> +       if (dp->force_hpd)
> +               return 0;

As mentioned previously [1], it's _possible_ that this should have a
delay like we had in sn65dsi86, though maybe that was to deal with
legacy device trees? It's been a while. Oh, I remember. It's because
even if HPD was hooked up to the controller like it's supposed to be
we don't actually implement HPD in the driver for the eDP controller
(long story). ...so we worked around that with a delay.

Right, so your code looks correct. :-)

[1] https://lore.kernel.org/r/CAD=3DFV=3DWoigDDTG6wTK0smsxASVfK5BzzW6KNpKWq=
97v4GAgvmw@mail.gmail.com

Reviewed-by: Douglas Anderson <dianders@chromium.org>

