Return-Path: <devicetree+bounces-230380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D04B4C02040
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 17:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 651043AB805
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D982732E74B;
	Thu, 23 Oct 2025 15:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dT7+pwoO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06BD2222A0
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761231776; cv=none; b=TLErNvK5LVPOxTeZxLTAsB2N9O2q/HQ4ss7v7a/HoMnfdACfEiHckXavUU6bZcQ7b5f1ywB83qHadg8eYF8CqzdmxeQRGAmtWxyT+4Pz6kQ6DnWXqV9kNUXv1Jpy/Ia17++CYjf7riz9ChfIYkay/H4S4alQhnOb+rriL9kf4Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761231776; c=relaxed/simple;
	bh=qK5aw0ySKCWWtM8T+Ckc0U2FXVFfBi7RX+UnHhpIFyk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WIsC+G+pqXH+Oph6a1nnKLgAcHdEwC2fOMpYEE1pKrhzUSn2KKf5e9/itvqwIzsVzxUhVmpaH3UKUBccsOygZKu0UWpLSNwVUF4FKEPaWdPruzfnDKAboLnueREhEjZpzcLHexTk3h4JnEfEIV3KIUCtULn+5lyUaSYxV6kaHP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dT7+pwoO; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b6d5c59f2b6so107463066b.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761231773; x=1761836573; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qK5aw0ySKCWWtM8T+Ckc0U2FXVFfBi7RX+UnHhpIFyk=;
        b=dT7+pwoOmBE9pvdb88UHTh9cJONeRxz81L+szJOPLewGCYbE3lwwal6UeLeNbcAxg3
         B9UzIdxFKYaiZIV+Sr4LZ9tGVxlQ02/rhOqwJrpc8P0+zTRuy3w3eKQuNU3+7yGjcJy7
         ZuD3PDO+GiuQ9VUMBlmoDJX6Kb5F2vmMRigqRJw7uO041YiCBDVUr3SbXg/w1+Ftmxlp
         xVFILVx6Q2QQkSySQJIzY9F+tgCMQbN9ZwDlYfGDQ+0DanNYKg1x/piKlEsmYDS35A0t
         FxwWEjhh24TcnIUHGAJSrlyWqJKCv3SeMusCCNNe0eN0Pzp1hp4r0fcwmo+m7VJM9lnC
         50DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761231773; x=1761836573;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qK5aw0ySKCWWtM8T+Ckc0U2FXVFfBi7RX+UnHhpIFyk=;
        b=w/kyFn8UqwRQp95nxNHNEEy7paDeN3op1tpQ3em9yqz4atxsVoNiPvIlpkpWWr65AC
         DvjbW46gBpceHUDeeMXbqT/RFAnjrm4hCCtcbpcF1ykkQBpwetgzFdfXLbFvMHzoMNT3
         T8u5QNwvCAohXen22yBC35+w5FX3WuU9TodM37Al/vx8lR4nlLK5E+32442BwJS3lKIg
         1MaN9Grj1HH/03hx3UduNV+7sKDKywFWTnS2SEyB5HZMccmgp2nHN1p9GiGz+rQpPAWY
         teath+3rzVy5ODc2ytM1ZdmcrZolgOlD+oDIBwlMlAWveapPXsQosINJtY3EuK59q/uL
         SLYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO255ARys1Lyj7tduvWsF7J7Jl7Sdny9OWooy9j9ZjjbfOs82Cq2W9fpdH8rhgEMqkxq/uMe4qGeZB@vger.kernel.org
X-Gm-Message-State: AOJu0YwsmQNqwUbGgSUavf7FzktLTfqAL910mXfcQ13625Gv8jPxsG0V
	xIGQN5EBzlaRpSDmI8df2GG3ZBhvh19Pw6YAqi0u5EflRm5DToRqMhyUrScowqPC9DfC7ZYdfTY
	ckMiu3uAl1N1Kc8D3VVRM7THpJ3Zfs1lwQ9iWGysA5g==
X-Gm-Gg: ASbGncuOu8pznv8W8XGdNPTM1TXOXFEAIJuOjvs/JsCGR+2v5zW2+yKUUJCfyLije1C
	CwcMWo4S8W2b1v59070RnvSXdb4AAVqkUCex+iV33MlqWKyGkAa+tykcFSzsUWtpkL/1aZ4PQNZ
	mBlKAVJ38PWoVVZAnZH2eQJg4cA6LhlSOLT+gtQnofPYgmcTft33Umouc+EX1ndSofricuaxm/e
	McqvO9/tgUGXY3XKDc8HSBVQrVvGL9I/Bmw42LNDY1LMMMroxWPH8OkFOSvTnOdDstuQ64wP2Dg
	iIsUFV0ehj0SYjo=
X-Google-Smtp-Source: AGHT+IFiT0IsifyoC4o9f6+8ie2I7nihSahQgM48GLh9H5e00zMiqsl4ryTGE/fKqLxHLO2ruCiUMTfjNs7pKOpZ3u8=
X-Received: by 2002:a17:907:868f:b0:b6d:5b0a:bc3f with SMTP id
 a640c23a62f3a-b6d5b0ad244mr179348466b.24.1761231772916; Thu, 23 Oct 2025
 08:02:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-5-b98aedaa23ee@oss.qualcomm.com>
 <CACMJSetWthCcJo8v7EuUK-aDKhf5KTNG5WQQ9aTQu62B+E=DMA@mail.gmail.com>
 <8fb6e8e0-cdca-0bd5-d0fe-56b5f6d27a5c@oss.qualcomm.com> <CACMJSetTrze028iXmH3i=JguJy=aNOMcnkLhO1ewYNiusvVmgA@mail.gmail.com>
 <efc84b92-43f9-ba25-1259-ae3907273af4@oss.qualcomm.com>
In-Reply-To: <efc84b92-43f9-ba25-1259-ae3907273af4@oss.qualcomm.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Thu, 23 Oct 2025 17:02:41 +0200
X-Gm-Features: AS18NWDhrwCWj5OatrU3wL3rcQVr8s37dYpX7bYhPrL9Oq2ex-mSUqkHzN71als
Message-ID: <CACMJSetctEH4K58R9JvSYNzzYgE0NGMsAr5JxiZ4RH_3T08x-A@mail.gmail.com>
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

On Wed, 22 Oct 2025 at 16:21, Shivendra Pratap
<shivendra.pratap@oss.qualcomm.com> wrote:
>
>
>
> On 10/20/2025 1:10 PM, Bartosz Golaszewski wrote:
> > On Fri, 17 Oct 2025 at 21:40, Shivendra Pratap
> > <shivendra.pratap@oss.qualcomm.com> wrote:
> >>
> >>>
> >>> If you're using devres here - at least make it obvious by adding the
> >>> devm_ prefix to the function name and make it take an explicit struct
> >>> device * parameter so that it's clear who owns the managed resource.
> >>>
> >>
> >> sure. we can add devm_ prefix to the function name.
> >> reboot->reboot_dev is an internal member of struct reboot_mode_driver *reboot.
> >> The struct reboot_mode_driver *reboot is owned by the calling driver.
> >> If we want to PASS reboot->reboot_dev to the devm_ prefixed function call, we
> >> will need to kind of split create_reboot_mode_device into two calls - device_create
> >> in a separate function and then call the devm_ prefix function where we add the devres_alloc.
> >> Can you suggest a bit more on this?
> >>
> >
> > Ah, ok I missed the broken logic here. Devres should only be used in
> > devices already *attached* to a driver as all managed resources will
> > get released on driver *detach*. What you have here may "work" by
> > accident but that's not correct and is very fragile as soon as you
> > have some non-standard behavior or error paths. Devres won't fly here,
> > please just use regular allocation and free whatever you need in the
> > corresponding release/free/whatever routine.
>
> Thanks, got the problem here. Was using devres to associate the reboot_mode struct
> with the driver, so that it could be retrieved later when reboot_modes_show is called.
>
> When reboot_modes_show is invoked, there's no direct way to identify which reboot_mode
> instance is tied to the current driver, as multiple drivers can register with the reboot-mode
> framework at the same time. Without devres, will need to maintain a global list of mapping for
> all device driver structs and their corresponding reboot_mode struct. Then reboot_modes_show
> would have to look up the correct reboot_mode struct using the device driver's pointer.
>
> Hope its ok to maintain that separate logic here?
>

Why can't you just do:

device_create(rb_class, NULL, 0, data reboot->driver_name);

Where data is whatever driver data you want to associate with the new
class device? You can then retrieve it with dev_get_drvdata() in
callbacks.

Bartosz

