Return-Path: <devicetree+bounces-229784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6C6BFC10A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 91D8856275F
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1229426ED55;
	Wed, 22 Oct 2025 12:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EaKCGn9K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D7A26ED52
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 12:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761137918; cv=none; b=b8sJDSx3BjqnYptk3tc6jjoCIlJzuwT91j7Dnl0SpElsGbt+tMFUjTMYMniJEsr9w/rFRPZnUGTibLLjzH9twDhlEiBUrUl77k2dzZE21XMzwn/iDPXzier+XQL3ozzDfd6twNBzSz4DobNQXOI/s/Oea5kzqnj+05+ChiqaEiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761137918; c=relaxed/simple;
	bh=H4pCf2E8dk4WvlnMMwozrZLRBkTXI8sJf6rrBnOqLaE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BzKd9aUTZir+aF+CdeScPwexCx+FtCMgFjQB1GpYloXaWYhbXDjHAc2kvwDD//7zkLCDdF6eHY/oRk6Jo8mmRq0ahe4LhdOAsPc94QBsTIaQy+J6NwpmOzFF+W12Y2Dqch/t//AuXAiM+BsMWFSCddMwchCzKiUi8YliDNyvslY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EaKCGn9K; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-63e0fa0571fso6609089d50.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 05:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761137915; x=1761742715; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rjG53ExIK1WFjeDIAAZczTfr0kaW2lHML1A9qjZU6Y8=;
        b=EaKCGn9KDwPXk4eytrlDByFi/M1eyHOrNFWnuB3s/7rLPCbgShnVLR3Fq009a05a2d
         GlgTmj/EZ8PT2DgrWQBjjnCHLoogCvYFaicEJo6uuJIsbp5hBgk77FuJqnnihmzoJcH3
         46zczdRg0knhdxFz7kdgkPzYf87Cu6aThkkv1L5cj5uH5SeCfbPVYKqjJ9Xb2dLhGjd+
         F/Ox6WDawhFarBzVTCFUQBC5qnzsp8m4YXN+bMV8FBlYbhJoS0Vbjl3+luTP8PLoMGKD
         X3pejzAtPns3kjKQezl3xPSrJdnOfMClojpysZovOrj4rRwLpWPE4u1XJvXfpjfxAwW/
         bFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761137915; x=1761742715;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rjG53ExIK1WFjeDIAAZczTfr0kaW2lHML1A9qjZU6Y8=;
        b=GdkTIqgZgYOnen+2khJT/dxbKrXj8T9Nj1ZBRzMcR0Fq1d45fbKTd1b2Qis8Jtpvm1
         uedt/YlExeJSQd/8vgVVKKYub9tXLBnnFyGbjLnMTWrRNVvzCVLu367AqfssIIpIuo3U
         TTNybytu3/bLo5I9LWTkCqmT6y9g731vEatweAtHSfx25uHELG09dj7FFhZGvNx6TG75
         o6sKy2yrweRHFKUx4hywSO6fsbLggbWhhH9tjI7SYq23i4KWUWZX/Kjaa7OTotw2gq1m
         JvS6o31KhzbuJoReIVMPKH9HGxhgZk/+DlgORLtUC+qNL5hwHeJD0AGq4HrgsFvnaYF8
         ljNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVWDblC5ALhB4q6E9bbWHmUGRfRUwcwx2g48InWQP1mb0xd3ZmmWg7U97N+uSU92XFBDahr5jtDWXk@vger.kernel.org
X-Gm-Message-State: AOJu0YxjoK+knqpKykNaDYzREoKWO8tGbivEjWVBdnlK9qFl6iT1F8cV
	ZsyL4LRwBlJVFgg9MQhHQMiDbgH84B9rYlYlAjijO+u1noK7yHvXMzNqWRq5SJofU8ReHnEWaiH
	LwpbMV/VaEzlMI7+Y9Gmo2GstWYYlFudXDvN4IMksRw==
X-Gm-Gg: ASbGncs87vSMMmu8X9Nek3chvO+nENwvNMDxW4AEJXxW2odP5SxX728aLc+xZugZWHB
	uE0NKE6M3WVI076OhM5cScZSSyYkZa7ApfuuTvfotw4ZqZ2RSzSxyOWgsTfM8V0D2ad3KKBP5+n
	RSTcBHQeKFWqCmzZlTNY+v5PcW6cI2ItzZGLUZ+RTA6ZP+fa7USzFKAS9Xiyi9Hw9sN9gkdiE3a
	0guAWrOTR/YftPLGD52WODScWlnhjr185NDpRu7D2n98jEOgajIfYGT25oalox0e/FoqziN
X-Google-Smtp-Source: AGHT+IEpKfqQAP/glDCUgAVJgatRBUGG4LJgEA2qJzeL/hKIAfZyo7XzIeJETd/S1CbVK1X+8E38/575DImRXb9n0+g=
X-Received: by 2002:a05:690e:4182:b0:63c:da95:21a4 with SMTP id
 956f58d0204a3-63e161b6c8bmr15719971d50.25.1761137915143; Wed, 22 Oct 2025
 05:58:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925143122.39796-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250925143122.39796-1-angelogioacchino.delregno@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Oct 2025 14:57:59 +0200
X-Gm-Features: AS18NWBK_6SEKp0LPrIDEzZP10EAnrhsIWSa5DHPeYttYjGzKLOmquHgZnWl3Xc
Message-ID: <CAPDyKFq9oxUfdfF-TOGLgi7b4aYay40H-VaEq-s=C3F2eVOBVw@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] pmdomain: mediatek: Add HWVoter and MT8196 Support
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, nfraprado@collabora.com, fshao@chromium.org, 
	y.oudjana@protonmail.com, wenst@chromium.org, mandyjh.liu@mediatek.com, 
	mbrugger@suse.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 16:31, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The initial series [1] was refactoring the bus protection regmap retrieval,
> adding modem power sequences and support for the RTFF hardware found in newer
> generation MediaTek SoCs - and adding support for Hardware Voter, HWCCF Infra
> power on, and MT8196 domains.
>
> That series was doing a bit too much in one shot, and then a discussion about
> the whole Hardware Voter started, so I decided to split that in two parts:
> one dedicated only to the refactoring, modem and RTFF [2], and one that only
> introduces MT8196-specific parts.
>
> Since the refactoring series [2] was merged upstream and the Hardware Voter
> discussion came to an agreement on how to proceed (resulting in all of the
> MT8196 clock drivers being also merged upstream), it is now time to send
> the final piece of the Power Domains (MTCMOS) support for the MediaTek
> Kompanio Ultra (MT8196) SoC.
>
> So - this series finally adds support for handling the Hardware Voter type
> of power domains in the MT8196 SoC, for secure infracfg power control, and
> for all of the power domains found in the MT8196 SoC - using all of the
> newly introduced support (HWV, RTFF, etc).
>
> This series was tested on multiple MT8196 Chromebooks now for more than 3
> months, and works just great; the last test was performed on the Collabora
> MediaTek integration kernel tree based on next-20250909.
>
> P.S.: This is a v2 because the initial series ([1] v1) contained patches
>       that I am sending in this series.
>
> [1]: https://lore.kernel.org/all/20250623120154.109429-1-angelogioacchino.delregno@collabora.com/
> [2]: https://lore.kernel.org/all/CAPDyKFoe9=4KgOsPUX6FOE+yPxdUqAxRec5yKY2h6uFOeUvvDQ@mail.gmail.com/
>
> AngeloGioacchino Del Regno (5):
>   dt-bindings: power: Add support for MT8196 power controllers
>   pmdomain: mediatek: Add support for Hardware Voter power domains
>   pmdomain: mediatek: Add support for secure HWCCF infra power on
>   pmdomain: mediatek: Add support for MT8196 SCPSYS power domains
>   pmdomain: mediatek: Add support for MT8196 HFRPSYS power domains
>
>  .../power/mediatek,power-controller.yaml      |   4 +
>  drivers/pmdomain/mediatek/mt8196-pm-domains.h | 625 ++++++++++++++++++
>  drivers/pmdomain/mediatek/mtk-pm-domains.c    | 305 ++++++++-
>  drivers/pmdomain/mediatek/mtk-pm-domains.h    |  49 +-
>  .../dt-bindings/power/mediatek,mt8196-power.h |  58 ++
>  5 files changed, 1012 insertions(+), 29 deletions(-)
>  create mode 100644 drivers/pmdomain/mediatek/mt8196-pm-domains.h
>  create mode 100644 include/dt-bindings/power/mediatek,mt8196-power.h
>
> --
> 2.51.0
>

The series applied for next, thanks!

Kind regards
Uffe

