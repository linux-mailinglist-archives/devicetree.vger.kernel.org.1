Return-Path: <devicetree+bounces-228633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E64BEFB36
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 09:40:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 49C55345B2A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 07:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AFA72DFA38;
	Mon, 20 Oct 2025 07:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mW+UemnR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618412DF6E3
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760946025; cv=none; b=GzOquvSIYUyFSogWdH/nXqzDnntdNGqeotuKhuOWbdyP/u7bH3afH72bH6izmyYjcFfsv7AO23z1XpobYNzLHJWOys+Q1p98R6Es56L2oLXwFNEA6F0F3RiLxm4m16A0mdJal4L8PbovQNyD9wGyCOyK8NPjNXgNXEYdAEzi94o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760946025; c=relaxed/simple;
	bh=0wMIPfwxIFmgU2DtKGuEKOz6gPwOombg7G5RLq4Dz+g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aiHfnNlWrnhSRE8v1O4SxboW3eFwa229agqyI27IwLHImDvlKnr3vsztehd7fY5CsBWk2C1juEOUBIqZiGm76qy9Tvy/y+b/gZiqEsIe5+u2BCUyoCsKbSc6unaiacXGbe5FLTFmcn5Sxyd4q+3+3moSaZZButpaGsrkBg4vDMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mW+UemnR; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-63c4b41b38cso4398565a12.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 00:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760946021; x=1761550821; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0wMIPfwxIFmgU2DtKGuEKOz6gPwOombg7G5RLq4Dz+g=;
        b=mW+UemnRCMxYTzmZpUPVdmLtIRd5googovLz4hmOzkrS3Fy3UIPO8jpO8kcKWsMIKt
         OYBRHDK/bnIyUAHl0hVb9wQOZ5ZP5at4jwa1rnx5Mm1TNSH692Ds8zj1TvnuGxVSf3HH
         alZYtZmNd3V7H2lyU2VqwJiStITFJotbsnwqEcJhWtZgPbRVJ/JwXLWbzZyMPe6w+s7e
         FpDTUL6GM2/ZzxAj0wc+6o+apPZqREieC7dnBEGYt0CyoIOQbN9pSr29Mb8B4y/jJMuo
         wMRl/vhbe7hrVi5rtlqKQWsfZPEIL5E9uKwqRAo2V+m2luupbkMirt30kwOFF/370uPi
         U5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760946021; x=1761550821;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0wMIPfwxIFmgU2DtKGuEKOz6gPwOombg7G5RLq4Dz+g=;
        b=JP4fglr+zuIWydVpl4MpJXHuq1m3+8piVc3JJZcr1mM5NRwEnP0wxOhXrUeUKD/yx1
         5w6P0FZXE1sEVkXDg7t1iunR0/tL+xn5A2+gYayPiKFotG204enedOyQeSU7NzL5QqqC
         kX9owJXtayksEwbq2zCX4LTEE1Rl84yZoNOHOk2rsXAQ5rjsqVIgDaDocU4mzLmugwKU
         oLVgOCYBdvxTX4Bs4ZjoqN7VTd+ylUIh8pjU0PJy1wGQAvYERYcA/8MOB0nDh7stYpb5
         yoiYoksWMC49ZmFzRoBBh5feCWRTV/oNe1eJz7QESChsd69WEi6R0Pt1g3L9MA5CRf5i
         Y6AA==
X-Forwarded-Encrypted: i=1; AJvYcCWFQy2i+T9nbHox71QW28/2X09XrsoRsAhDI6vSJ5pCt6YXidJJt7auL03kZ1cj0+5xC0qDF+P5b7iB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5VD7kvGNTs/3retpfjfoz8b/HA4p3riVi4GZfsclygeaWYf4Y
	GeTLt8YXd5X50pXXgAO9dmV04yqY5usc7Yb3AirwZIyA4XcbZ2YsWhbjWCrz0bmpECb7eg8z6ai
	xdpDuREF4+XQ7i05bVwTw4i8c2/xtaFKyUyB46qio6A==
X-Gm-Gg: ASbGncsUHTY7ZbCm17PP0rzJQ/56dSyUwqzkwqOlU7r9+wrnVjySF3Y5GkNIQvcynba
	ygl1VeySSQqrgD3mHWViqXLnpnyF6NqB9wVwZfou049w1/AwsR/HvwN+vCY9t3Jdhx/AtwA2o7x
	blW3rGKJYwEakiY4VBrmbOrXbmo3pZIkkK190LPWmptD+m27dekGXjjyM0eB1HZaW8P+xSN5v3M
	MeTEzDR/YRUpYmHwasT6oRGUFuqzwQAarh7AvcGpNWdDpbGVWO+Utf6Jvmyle5tInY/op6K2EMq
	1N2dYRD21RJjpGKJ
X-Google-Smtp-Source: AGHT+IEO+V8VAFMfi1d+Dpc8VhoXd1xOMdOzj7La5+gPgRBFBmz4EnWtgFm++KSbXHUMJdJsGohBl0OEYJE1bSAL0Zo=
X-Received: by 2002:a17:907:a07:b0:b42:e3fb:c950 with SMTP id
 a640c23a62f3a-b6474940089mr1185686466b.42.1760946019110; Mon, 20 Oct 2025
 00:40:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-5-b98aedaa23ee@oss.qualcomm.com>
 <CACMJSetWthCcJo8v7EuUK-aDKhf5KTNG5WQQ9aTQu62B+E=DMA@mail.gmail.com> <8fb6e8e0-cdca-0bd5-d0fe-56b5f6d27a5c@oss.qualcomm.com>
In-Reply-To: <8fb6e8e0-cdca-0bd5-d0fe-56b5f6d27a5c@oss.qualcomm.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Mon, 20 Oct 2025 09:40:08 +0200
X-Gm-Features: AS18NWDQAFben5J2E63tcGMgXbcz7DeN5SPmzBXSPc44YmLC1GOGJsimgnGM4cs
Message-ID: <CACMJSetTrze028iXmH3i=JguJy=aNOMcnkLhO1ewYNiusvVmgA@mail.gmail.com>
Subject: Re: [PATCH v16 05/14] power: reset: reboot-mode: Expose sysfs for
 registered reboot_modes
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Souvik Chakravarty <Souvik.Chakravarty@arm.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Yan <andy.yan@rock-chips.com>, Mark Rutland <mark.rutland@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Vinod Koul <vkoul@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	John Stultz <john.stultz@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, Stephen Boyd <swboyd@chromium.org>, 
	Andre Draszik <andre.draszik@linaro.org>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	Elliot Berman <quic_eberman@quicinc.com>, Srinivas Kandagatla <srini@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 17 Oct 2025 at 21:40, Shivendra Pratap
<shivendra.pratap@oss.qualcomm.com> wrote:
>
> >
> > If you're using devres here - at least make it obvious by adding the
> > devm_ prefix to the function name and make it take an explicit struct
> > device * parameter so that it's clear who owns the managed resource.
> >
>
> sure. we can add devm_ prefix to the function name.
> reboot->reboot_dev is an internal member of struct reboot_mode_driver *reboot.
> The struct reboot_mode_driver *reboot is owned by the calling driver.
> If we want to PASS reboot->reboot_dev to the devm_ prefixed function call, we
> will need to kind of split create_reboot_mode_device into two calls - device_create
> in a separate function and then call the devm_ prefix function where we add the devres_alloc.
> Can you suggest a bit more on this?
>

Ah, ok I missed the broken logic here. Devres should only be used in
devices already *attached* to a driver as all managed resources will
get released on driver *detach*. What you have here may "work" by
accident but that's not correct and is very fragile as soon as you
have some non-standard behavior or error paths. Devres won't fly here,
please just use regular allocation and free whatever you need in the
corresponding release/free/whatever routine.

Bart

