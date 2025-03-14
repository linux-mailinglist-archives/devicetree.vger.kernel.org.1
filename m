Return-Path: <devicetree+bounces-157392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB40A60789
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 03:35:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 902B119C000C
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 02:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F05D82AE77;
	Fri, 14 Mar 2025 02:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cHckWKP3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2273626AD9
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 02:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741919754; cv=none; b=LerBBzk0VOei8pq27Fi2U/nmq+THV5W+llwjzJor5cJWJKznG+4jNv+YHOA7hcFek6Ig63RdW6AwfIj4zrH7IoDJ+UPds6bSWa5w/kLxkPRPAcYN/JK6pelOtpTMFznAOcjCHoGFyB/NlU4jG5MgWh//hX+CRUdnkqQZGo2rxR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741919754; c=relaxed/simple;
	bh=Xd6aiicqCrN8dWJ0GM6H7CcuOeCIMgVg/AOHOO6UJqc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ncFwRuXFXGMBRMJDTjfthpH9rW8b7u7sh3F2NtTVD5ZSuNZhgM7+i+hFq2iKS/5Z/jjnMj37atUP9HlXzIY7fnp1tRxGyA8pyw1MzHeBbo3ID2wtU28/ExHJEpZY17wkR6wssRk6HTuruKY8I1ENHv1duLCZRhMXh/23Ete3jdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cHckWKP3; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e56b229d60so5068204a12.0
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 19:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741919750; x=1742524550; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=il06D9hr0Fc9RDaH12vgTcO4maMntEHFOsv/sipTbFw=;
        b=cHckWKP3P4SdfHb4Jh22xNCyfljzKACcehTCNV88msjVCcRkK2XXsclJORd9707DcH
         Ti8Eqy5WgVASAF2pRinikjQNdzIh1t3bmeEF4JOobQUwHsiQlcleU98YfKE06UvTcNqv
         p4hGROzrmVY3fYrWFEFKg+xaIjuTibDRLjQ2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741919750; x=1742524550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=il06D9hr0Fc9RDaH12vgTcO4maMntEHFOsv/sipTbFw=;
        b=WiPol5a1suWGz93AVcEp9uvaImcSafYBMu/u4tujDjEemlI6O2oGlNSvqqHUT6JKJt
         qzY/YbJbBTVYMoQtFQd+Lmy7XG0vqC/6wOV9lgKvuWv2cCfVRgenmuN0sX1BFCXr0J2N
         7C21lcVeoPmZvE8fdWAS73scTGMTP71BpnSFs92u3I1RFJzx6K5Ldnxzp7sGUyRlj/Tu
         WyGQquSPk+D9KWKOw6imX7MPNmYbdMvl5NmyJ3d8/IqzjWvd+nxdsW6Sr3wgGL+GPOmh
         v4ANzI6b1zrQYrrqisKV6+lWm9tuC37dchf9zeP3PfX4n4EBd2AfQuv2B5eppLjU/YuP
         00Lw==
X-Forwarded-Encrypted: i=1; AJvYcCUzdOgFymE7GL1A6ZX1f7CV3fu95+MXB4UA8kXykjJIbLhicSGhFZEW6L+qIZAMSqL/PJMI/jNGF1LF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0bqtDdduXHjH99C+V6XvAf8d+0sZpTH+TnBizCGAinlyNK7cY
	sjiE3WZ9Z+zHdcOj6rZylwmfvdOJ8wTZVhDxBXYPz+89moAv47VFj/mdq212wwxW8FFpHAmxApp
	FVgXg
X-Gm-Gg: ASbGnctpWtasAYSyzZkljDD8YvOIgLxvEP8MC1D/kv8+zxO8Tcrsp4vMWhbxQphOLZs
	UVsa7yo3xnfR6Sr1qxkfZaC6tWEHzl/8R1OyML1uAk+8pXTBIxela40l9LEKe3CELk4OoMxbtn4
	NW15Y9zpWiuL8Y8WUDQSRkAlIFp3p2az0w5Bg8hG+cw365wMF8EYnBE0fueXx40trPrrVRG5Xq2
	pUiHXraPR8X8UUgKyLT1gTgHMX2TFe16SbZLmKU090hmRd2b0GBBNwJPnncbvpBH5uXFD9PmMjh
	WsBunaS2POTXqVn80sq8vS2CGIaA3o3hS1lY6EFTaSvzUdNB78WODXcf9M+E7FoefoSKiAAOuet
	B6xfVjIJV
X-Google-Smtp-Source: AGHT+IHNmaoD8mXWXwtCJEPByA0nXr/VaBU7OIF15GCSLego3x+dHamTRq4p7x19U7yj+MSkRBj6xw==
X-Received: by 2002:a17:907:2dac:b0:ac1:415c:29df with SMTP id a640c23a62f3a-ac3311b2637mr62955366b.5.1741919750075;
        Thu, 13 Mar 2025 19:35:50 -0700 (PDT)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com. [209.85.208.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac31485896asm154242966b.84.2025.03.13.19.35.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 19:35:49 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e614da8615so3133738a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 19:35:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXLLJzb+/IfPHctVgVhaRDmf7M4xumiBneFLnYDjaXuwGxCLMv6tQXQVS8i4k7DyaGEtAGFiWNTAfUJ@vger.kernel.org
X-Received: by 2002:a05:6512:238b:b0:549:88b8:ccad with SMTP id
 2adb3069b0e04-549c3f97e1amr221177e87.20.1741919289506; Thu, 13 Mar 2025
 19:28:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250310104114.2608063-1-damon.ding@rock-chips.com> <20250310104114.2608063-9-damon.ding@rock-chips.com>
In-Reply-To: <20250310104114.2608063-9-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Mar 2025 19:27:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XYt894pPyvRxHAe1LjCXEorzB3xBkAKZzE6Fntfac5GQ@mail.gmail.com>
X-Gm-Features: AQ5f1JrcEIf4cAvd2mSC-J3hgcRSHWlS6TAPo8G1EtX7yAuKQEhPcQq-mGynGdM
Message-ID: <CAD=FV=XYt894pPyvRxHAe1LjCXEorzB3xBkAKZzE6Fntfac5GQ@mail.gmail.com>
Subject: Re: [PATCH v8 08/13] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
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
> Move drm_of_find_panel_or_bridge() a little later and combine it with
> component_add() into a new function rockchip_dp_link_panel(). The functio=
n
> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> aiding to support for obtaining the eDP panel via the DP AUX bus.
>
> If failed to get the panel from the DP AUX bus, it will then try the othe=
r
> way to get panel information through the platform bus.
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>
> ---
>
> Changes in v4:
> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>   component_add() when getting panel from the DP AUX bus
>
> Changes in v5:
> - Use the functions exported by the Analogix side to get the pointers of
>   struct analogix_dp_plat_data and struct drm_dp_aux.
> - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
>
> Changes in v6:
> - Keep drm_err() in rockchip_dp_poweron()
> - Pass 'dp' in drm_...() rather than 'dp->drm_dev'
>
> Changes in v7:
> - Include the drm_dp_aux_bus.h for devm_of_dp_aux_populate_bus()
> - Use dev_err_probe() for the return value check of
>   devm_of_dp_aux_populate_bus()
> - Select DRM_DISPLAY_DP_AUX_BUS if ROCKCHIP_ANALOGIX_DP
> - Restore the error check for drm_of_find_panel_or_bridge() which was
>   removed by mistake
>
> Changes in v8:
> - Add comments when drm_of_find_panel_or_bridge() returns -ENODEV
> - Remove some redundant return cases
> - Add comments when devm_of_dp_aux_populate_bus() returns -ENODEV
> ---
>  drivers/gpu/drm/rockchip/Kconfig              |  1 +
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 42 +++++++++++++++----
>  2 files changed, 34 insertions(+), 9 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

