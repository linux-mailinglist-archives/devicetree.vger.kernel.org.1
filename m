Return-Path: <devicetree+bounces-102687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C85977F14
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 13:59:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C258C287EA8
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 11:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551351D88C3;
	Fri, 13 Sep 2024 11:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m3s4Ah1f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16181D88AA
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 11:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726228789; cv=none; b=S6uafhnQ2Rdp4ns9SIJxj16Pl5zc7qfaiF51jct1fkEGA8M2bwqAQAOWYXuw9PdS2n13xX3gxMIrEarx0g8ZTWwQ4VB6h5OfOdcP8GcFYCTiiYH2iXxROSUn/SI0w992FN4whNna5AHLqvHIgHDDdi9Hudn2G9D7oI2TiQRltYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726228789; c=relaxed/simple;
	bh=mSIKzw6GBbfHT6fBamDS/L7dH8tpO0k4aw6Vo0YRxWM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SbTby4cC5e7j3ufFLNxRkEgQq/a2zNAVevVKcQwYCMPBUncXXYAjLTNxW4c7UCqY2mTinjaGfTCjZo316IBPeenjRyq9NtPwbX5sCcg2IjbrIZO/U6lx6oxrqM7Jq6tVz4tdZnA4xrVoPq+0bLI6xvnP3yZpqi25rDOe/syEsfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m3s4Ah1f; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e1a989bd17aso808249276.1
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 04:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726228787; x=1726833587; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mOqSWoVVgxQJOQAhgQdENKJFx3Lm/FQXzowZmdyKWa0=;
        b=m3s4Ah1fNbOfkQ4b7lqYX4uPIy3xnlE1ehoIZcfedP1JwKe8flgWteDpUp8FR3+2UV
         2445K78Jj5TonekpQMlyOX45j2NLM9q5idtUXeD1d/RzKaWQ8tzKsT2RrmJo+8nfUdaG
         0G9aRTEt6/szAa7dlGvKkUgyPfWZiXSOvGuhRUvKvBzWwt/HTPeoQxc3BmIyUj/wB+Yu
         spFsktIFCLf2MqdCg+9TCCDXJ0qZ0zdIkfebzrqSzyGhfLRbYhpulNEMjqkfSwX73hp3
         sW+4bjvHrd2YpHgCgyqW/rxcYoIxwaH7gh5PSp0iMcvxmFHByI5RylMXuyWlYTKy4Lcc
         T+Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726228787; x=1726833587;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mOqSWoVVgxQJOQAhgQdENKJFx3Lm/FQXzowZmdyKWa0=;
        b=qLxf8KkgB6XnDQhvNhQmEmKS8o3nZlkYQRWG5Q95XCRNxX/fwJdsU4InSGupxO5l/H
         11EDYaR8o83WFFpja5FPicAJNczePuV5UeWwlGKxhviI+DKlRY2VjZLJe6DHUTQjFKZ1
         NX5AGT6t9gDgdQCuQGtuynGTTU8Bq8y2ezTEwln1b3lN//crJX4Ey6gjHqyZNiCbNNF+
         TBP9uXGqVMa17FnmvX5YGXXyiS7LB0YAT8gFCD1H3vZWoX50KlfhXjT4+8E9Pj8mxvoy
         BI2Lh9dRyQqt0W6TWEdSaWQb9yFe2oHjgKIKB/g0mQ6DsokHXZ7/NGHHG+PbhS2TYFCM
         U3fg==
X-Forwarded-Encrypted: i=1; AJvYcCXmzQWfDiSVhRgBwWQa9PmBA/dwA8FYTNCnpiKqtODJRPgo0RSWD7RUntQBMntWicVRL8RH0PCTEWNc@vger.kernel.org
X-Gm-Message-State: AOJu0YxRCv2Il1EqsWPNu/j5vhVo9rbimnHtzN3Y77Se/vNCCVMYEtq9
	IE1I3o/C1T4E1IGSBpJWABp2lCDc9sIWQuUDwkp75MV49PK6kWWFKDmW7wS/qoiVcM6XNV4TYS6
	42PahMd9uR5zA3VOJxnB72aW2e1Kx9wQnaIw0hA==
X-Google-Smtp-Source: AGHT+IHM1X3EHwXtm6QQqZ678gEGjQCRRGmBLUwhI1ITxw/fftN+ymx5qB1IfKiXnwbBzeeP79whlwcpu4SI+UgVRwo=
X-Received: by 2002:a05:6902:1581:b0:e16:6feb:e615 with SMTP id
 3f1490d57ef6-e1db019494bmr1895157276.48.1726228786700; Fri, 13 Sep 2024
 04:59:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
In-Reply-To: <20240910180530.47194-1-sebastian.reichel@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 13 Sep 2024 13:59:10 +0200
Message-ID: <CAPDyKFoMyGUagDdjdaBJXL_OEgewQjCeJcBBK+2PFk=vd+kjRg@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Fix RK3588 GPU domain
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 10 Sept 2024 at 20:05, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
>
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
>
> This series first does some cleanups in the Rockchip power domain
> driver and changes the driver, so that it no longer tries to continue
> when it fails to enable a domain. This gets rid of the SError interrupt
> and long backtraces. But the kernel still hangs when it fails to enable
> a power domain. I have not done further analysis to check if that can
> be avoided.
>
> Last but not least this provides a fix for the GPU power domain failing
> to get enabled - after some testing from my side it seems to require the
> GPU voltage supply to be enabled.
>
> I'm not really happy about the hack to get a regulator for a sub-node
> in the 5th patch, which I took over from the Mediatek driver. But to
> get things going and open a discussion around it I thought it would be
> best to send a first version as soon as possible.

That creates a circular dependency from the fw_devlink point of view.

I assume that isn't a problem and fw_devlink takes care of this, so
the  GPU power domain still can probe?

Other than this, I think this looks okay to me.

Kind regards
Uffe

>
> Greetings,
>
> -- Sebastian
> Sebastian Reichel (6):
>   pmdomain: rockchip: forward rockchip_do_pmu_set_power_domain errors
>   pmdomain: rockchip: cleanup mutex handling in rockchip_pd_power
>   pmdomain: rockchip: reduce indention in rockchip_pd_power
>   dt-bindings: power: rockchip: add regulator support
>   pmdomain: rockchip: add regulator support
>   arm64: dts: rockchip: Add GPU power domain regulator dependency for
>     RK3588
>
>  .../power/rockchip,power-controller.yaml      |   3 +
>  .../boot/dts/rockchip/rk3588-armsom-sige7.dts |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   2 +-
>  .../boot/dts/rockchip/rk3588-coolpi-cm5.dtsi  |   4 +
>  .../rockchip/rk3588-friendlyelec-cm3588.dtsi  |   4 +
>  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   4 +
>  .../boot/dts/rockchip/rk3588-ok3588-c.dts     |   4 +
>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   |   4 +
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |   4 +
>  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi |   4 +
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   4 +
>  .../dts/rockchip/rk3588s-khadas-edge2.dts     |   4 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |   4 +
>  drivers/pmdomain/rockchip/pm-domains.c        | 130 +++++++++++++-----
>  14 files changed, 144 insertions(+), 35 deletions(-)
>
> --
> 2.45.2
>

