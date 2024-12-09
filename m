Return-Path: <devicetree+bounces-128907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BCD9E9C9B
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 18:07:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFF391883C76
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E79E514F9E2;
	Mon,  9 Dec 2024 17:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b="MVQfl6qR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1361C14F9F3
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 17:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733763979; cv=none; b=RvXSddvAdxjOIm795ZvkUeicHM2KvzXhR3Uo11SooNZIfY3GNKqODoGJSsGm3RBwDfD79d+/VmCGgPr/v+D82ckf7uBjJ2J5QA31BZlK1EibqRGAhhriLmr9HWzHLN9hCWsnafXFrfey6TjeQmYFTS2rVwT7gB4fsGQdTKZ8Vdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733763979; c=relaxed/simple;
	bh=6+XCxMtIvCsh/Y9Qewt3nUU3z+muuw9IGNmv2j6vGek=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SpvFYuHzlcAs/37mKg12b8hNpUxfqNt7sv0QZ/G3IRFAqDhzBx4QrCmJuItqGWIwoAhI2GkQvAXwhNTVDXkWwvt0noOBdbdONdF7bwkhYWWnYLpk4NkOYHc8CNbGPtsExshAXHULpCHANss+ce14cZXCqdKECSah++gty8/ZQLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org; spf=pass smtp.mailfrom=fooishbar.org; dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b=MVQfl6qR; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fooishbar.org
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6d88cb85987so36991876d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 09:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1733763977; x=1734368777; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CEAfsLVBfsGUy76+oFFFHqlf6kVm31lMCS/pgQCj+NM=;
        b=MVQfl6qRzf+qh93kCkLzviZeu8d5PddWm/eJ0VDPMHKjAX/sckL5KdQytSF+BR5G0C
         YfnqcrwJGHmhAEUbqKNRA65yloAOBrp6zKB3MxlFiIPvkxQpngSNniKeNqOOsFPv5BP/
         zsERfLgXHMvGQYZ8NwNpowflCMsyXH1pDD8uv+SHLS38My9Q/4np9xovo+jrBMPVtsrt
         Y4yYN4i31pf/VlkZTH/4t1udITg71S1z6r3JE3RpB/9WHtDX4pqDVSv8r7k/5EA6Nt1A
         SG2b/GVLflGxHy8Mx2ecbgssGVvRwzqM0Wv9jz2wGWfAPmlczVZCVR//ASgIz6XQAc7F
         CoeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733763977; x=1734368777;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CEAfsLVBfsGUy76+oFFFHqlf6kVm31lMCS/pgQCj+NM=;
        b=qGsVAomzBHMnMnAmO10OF4gkaeLWhCHhtLoHXbex8zPIbxvs2yhRUt8/tUxOdVH8Sk
         okMaN/ua8kmuQcnn2/uR+Q4kTOYGEVVUi4vi+VqLXqC5FQZHOoLkGHO0qIEJZqge8YKb
         uY1x/6zNIhfG44gA825FwdHR6bcNBEdx/b+fEp2/ugqGznktu7l+QmvUquzE2j+HOVsi
         t6MUwj8WKk3AmJ0l5k9FDBj8MRKMPtUpOjx0bNZku/eeuwlTgKok3b5wDpzqSh7FXxPs
         vqR9XshuEqdVTz9xFTNMkbZowkA5tD1qPLeRxGv6p/Vs2og8hCIDyYxNjPFwic19hBUB
         Vasw==
X-Forwarded-Encrypted: i=1; AJvYcCXMA5VzJ4BWNMyX84Jqi/z9BZrWig7AFZHLMf8kwb4+eSuz/IbvchuCQXOq9CC76/XEtzYNIHZGuPVo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8TtBSc8nurD84YJCCO/J6TtPB/LUQumAtUhzTeVAVVxm5FhYX
	Dlminr35rZso9QERGLEVyARNsEaeCPb4fP0DDrYTgAqkeQ2kRp9Mv9bMT0oubTjaJSF4ffpdBvZ
	iar9cjunEi9SM8xPtAUUhtBK9uBo5Qc/afzXBzg==
X-Gm-Gg: ASbGnct2IIYwp97jkD8xXBrxAxz0ViJ2NHLSPj9a161GRDOtmwOUm37sZ/eQrj3daj8
	V8NI6g5mSqli5GaCzUyQYpkbvacr9
X-Google-Smtp-Source: AGHT+IGAVS5+GIVv09oM5aUfkNYSqKqLURj0uHGDQYo0Hnrn9PDydwzeP97lSsusJEmrWZvi9Pv6yK2sFETMgjF0y6Y=
X-Received: by 2002:ad4:5f8d:0:b0:6d8:8283:4466 with SMTP id
 6a1803df08f44-6d9213835acmr1371546d6.18.1733763976815; Mon, 09 Dec 2024
 09:06:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241209122943.2781431-1-andyshrk@163.com> <20241209123215.2781721-1-andyshrk@163.com>
In-Reply-To: <20241209123215.2781721-1-andyshrk@163.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 9 Dec 2024 17:06:05 +0000
Message-ID: <CAPj87rO0MG2yE_NTndbxQ77rW-p6-ht5kx5vsaOZikQfVmwrgg@mail.gmail.com>
Subject: Re: [PATCH v5 08/18] drm/rockchip: vop2: Add check for 32 bpp format
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	s.hauer@pengutronix.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, detlev.casanova@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"

Hi Andy,

On Mon, 9 Dec 2024 at 12:32, Andy Yan <andyshrk@163.com> wrote:
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index bd8db45eeba6..1f101a3c3942 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1224,7 +1224,15 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
>                                 return -EINVAL;
>                         }
>                 }
> +       }
>
> +       if (fb->format->format == DRM_FORMAT_XRGB2101010 || fb->format->format == DRM_FORMAT_XBGR2101010) {
> +               if (vop2->data->soc_id == 3588) {
> +                       if (!rockchip_afbc(plane, fb->modifier)) {
> +                               drm_err(vop2->drm, "Unsupported linear 32 bpp for %s\n", win->data->name);
> +                               return -EINVAL;
> +                       }
> +               }

Please do this in the format_mod_supported() hook, so userspace can
see the true support of each format/modifier per plane. This will then
be checked in drm_atomic_plane_check() so you don't need to open-code
it here.

Cheers,
Daniel

