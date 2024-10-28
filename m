Return-Path: <devicetree+bounces-116410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF409B2CA5
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 417DDB22B45
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 338951D433F;
	Mon, 28 Oct 2024 10:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="orc203Hr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B3751D0F56
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730110831; cv=none; b=Ema/pVIEMOQp8eOeLCCIgj/DcX1AQMkEi4E/Wi2STgrUUyxDpWnjinJWuGOchXStYCTJOnUYWJ1zyfyvrlvDJs6/3nBhr7sIFCf6I8AYz+e+SUOo8zeXFHgFp2IUDqxqdBsR1yL3eBpfMC9eqUSZ70+CGltDFUOm/cnKZYopizQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730110831; c=relaxed/simple;
	bh=+AkYyoEAKkcOYov4gBkoQW10ALBeuyvqIJK5nNUYO8s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C89US83PVrwxPiUTCDGsbtCmvBHfmyW32SHErDTOmekQ8BDLWjDWXagy5+/CYBosP0H9uXGrY3d61kbZYuoCeCeyKfuQy8OkhhLzEKR4Zr9080sLhEkgZ2LzojBLvUhKuyTGTaPpTF1bOa4K+MOc1999Y5/LzaCIRj+K7+Y89cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=orc203Hr; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6ea11b32ab4so3325077b3.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 03:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730110826; x=1730715626; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TU2sdGJHKvD0taxHYBsyanzPD/VqU1wUV5/5j1d0+s8=;
        b=orc203Hr6ImrbOuohwYUFpMt1Ocb2XlZqR/UaKtjNVto062KYxpWTFsTNyrGioyy38
         3CiWqttVzYmQhOp+vA+sTeghXjYHwiNidvPhAAIv1gMvALBeduS+nyZ1IepjCytXYF4O
         pcqAQnUyr1EOJtnVjORO65pyR2q0d+6CA2k9Y63t6tMoe+tLQAc87ww1p2TuHtzZj7Ct
         f9WOTjMUM+AZf8ipGJzH3XPT3sdzv5fHkY4VW0lyd2WU5rud68MGgmP4aSXi41k1XhlV
         Cyp/NXRah+rhlstXxJzlFm4ry69WTVQg9RH8zQ6h+s8W8S0pfu2HBIplGxdA6jkaLVL6
         1iCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730110826; x=1730715626;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TU2sdGJHKvD0taxHYBsyanzPD/VqU1wUV5/5j1d0+s8=;
        b=lvpnJG0FnTuVO5ULljiGCG/oIKQLPtGqapCf1O1Hp4Oe2RHcSuJ2mSfel2/WalYEKQ
         eY47u6VVaYbbxwGrNXN6Rhd7YCzlQEHOYr2HQOmt/G8VmLc/6Vd6UJvNXsnC2igaB40O
         1ypyOPOqNkcA9xQLrwvbDCLzLOob2Krus9f62djREBLM3Hz3i2D+EMU/YIICg0WEAbVg
         3rhMhvm1uBDQkHl64ffnGdbiMbhJP8UzyemBuRQSSiyLlfhfOd1Z+7/dW+SGkRup+XTM
         DP2kgSTvva3C9/+sm/9woaF5b81RrguotF58SATtlb9jWxaTcJY7GpS/n8z6pyvILGFV
         RLNw==
X-Forwarded-Encrypted: i=1; AJvYcCUWyJYz0PW84UIHbRt3FKPFl+ndNt21ZnxHBO0/yriw811nMBdNu83gCGAQ/kNN7Y0T1LEOHdVWAOO1@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp+htvsHZyJlHRFJQ9xdYYvqPhz+f0ZsBZrdafFB5e99N9OwI1
	wFqXC8FPnzYhm/4XYWrLbiKAOWYajZO27H8l26Hc2Jl/gpmY4RUj+91DYXCA6OfYLG5Q0907Ri+
	3OENRdknGfEl2NsL71vzCdnscJywHX64Y5P8xWQ==
X-Google-Smtp-Source: AGHT+IHKdCACUXqx7Rdwg/Prh7fz9WsgaRfTmIR4UCFC4hi7xMX8hmTZVx47XtOQhuApr5txecXLMxKkQJeYoI3DfdM=
X-Received: by 2002:a05:690c:6303:b0:6e3:c92c:1d57 with SMTP id
 00721157ae682-6e842f91cf4mr107258157b3.2.1730110826498; Mon, 28 Oct 2024
 03:20:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241028023740.19732-1-victor.liu@nxp.com>
In-Reply-To: <20241028023740.19732-1-victor.liu@nxp.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 28 Oct 2024 12:19:50 +0200
Message-ID: <CAA8EJprFBbC_=kBHi86j-nE_K68QeG+c2OBzJCbUyNWs5zQK0Q@mail.gmail.com>
Subject: Re: [PATCH v4 00/13] Add ITE IT6263 LVDS to HDMI converter support
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quic_jesszhan@quicinc.com, mchehab@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	sakari.ailus@linux.intel.com, hverkuil@xs4all.nl, 
	tomi.valkeinen@ideasonboard.com, quic_bjorande@quicinc.com, 
	geert+renesas@glider.be, arnd@arndb.de, nfraprado@collabora.com, 
	thierry.reding@gmail.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	sam@ravnborg.org, marex@denx.de, biju.das.jz@bp.renesas.com
Content-Type: text/plain; charset="UTF-8"

Hi,

On Mon, 28 Oct 2024 at 04:37, Liu Ying <victor.liu@nxp.com> wrote:
>
> Hi,
>
> This patch series aims to add ITE IT6263 LVDS to HDMI converter on
> i.MX8MP EVK.  Combined with LVDS receiver and HDMI 1.4a transmitter,
> the IT6263 supports LVDS input and HDMI 1.4 output by conversion
> function.  IT6263 product link can be found at [1].
>
> Patch 1 is a preparation patch to allow display mode of an existing
> panel to pass the added mode validation logic in patch 3.
>
> Patch 2 allows i.MX8MP LVDS Display Bridge(LDB) bridge driver to find
> the next non-panel bridge, that is the IT6263 in this case.
>
> Patch 3 adds mode validation logic to i.MX8MP LDB bridge driver against
> "ldb" clock so that it can filter out unsupported display modes read
> from EDID.
>
> Patch 4 adds MEDIA_BUS_FMT_RGB101010_1X7X5_{SPWG,JEIDA} support, as they
> are supported by IT6263(with LVDS data bit reversed order).
>
> Patch 5 makes drm_of.c use MEDIA_BUS_FMT_RGB101010_1X7X5_{JEIDA,SPWG}.
>
> Patch 6 supports getting dual-link LVDS pixel order for the sink side as
> needed by IT6263 driver.
>
> Patch 7 documents jeida-30 and vesa-30 data mappings in lvds-data-mapping.yaml,
> as needed by IT6263 DT binding.
>
> Patch 8 extracts common dual-link LVDS display properties into new
> lvds-dual-ports.yaml so that IT6263 DT binding can reference it.
>
> Patch 9 adds DT binding for IT6263.
>
> Patch 10 adds IT6263 bridge driver.  Only video output is supported.
>
> Patch 11 adds DT overlays to support NXP adapter cards[2][3] with IT6263
> populated.
>
> Patch 12 enables the IT6263 bridge driver in defconfig.
>
> Patch 13 updates MAINTAINERS to add maintainer for IT6263 driver.

This has pretty complicated structure from the merging point of view.

I propose we take patches 6, 8, 9 (without 30-bit formats, they can be
dropped while applying), 11, 12 (?) and 13 through drm-misc in one
batch (once DT maintainers review the binding parts). This looks like
a minimal set, having no extra dependencies.

The second set might be 4, 5 + new patch, re-adding 30-bit formats to
IT6263 binding (no driver changes are necessary). This can go in
separately, after an Ack from media maintainers.

Of course both sets can go together if linux-media maintainers reacts
quickly and ack merging media-formats patch through drm-misc tree.

The rest of the patches don't have such strong dependencies and go in
once ready / reviewed.

WDYT?

-- 
With best wishes
Dmitry

