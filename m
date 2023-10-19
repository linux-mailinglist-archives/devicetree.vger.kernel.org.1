Return-Path: <devicetree+bounces-10030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0657C7CF6B4
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:27:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96E22B213A4
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5F2B199A3;
	Thu, 19 Oct 2023 11:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L9f38YWU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E98F1947A
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:26:59 +0000 (UTC)
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D21D7134
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:26:56 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so5206053276.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697714816; x=1698319616; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PUrrcj+/ipouo/XR5RIgfw8wVuJ5J+7IILf/FghVZXQ=;
        b=L9f38YWU39ice32PN6Gk6IneWrA7GTaQko/2pMcAvyIFSspRayFYidiSyXxz2TvxN2
         WN+AT23DvUuAmVfiqxO5t7JJvOjTG45teXEl1i17H6KohaXZ2J3HaEv4C1ZzxyqS7CSF
         XDCY/nfkOClC2h/6Idw1icUqG5+fRg1yqlGOJjZgDiNHGJkLpOXPyvs8sHnJj5rhox1B
         BIvDcp+Iy3H/Ax05TllbFrTpBmXIJ/lSJOP4Ebbl8eBdcc+w0f4Mwwh0bcjBz9O7taiH
         WJ9OTdif9c/a0MKh1izip+0iJM2a1P6I0Ba36ezCz5zfbM2xput761mY9GEDuN0WUnMr
         c5jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697714816; x=1698319616;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PUrrcj+/ipouo/XR5RIgfw8wVuJ5J+7IILf/FghVZXQ=;
        b=lmwWfYs3iOKiuRSHIBoIa4qe9Omp80xVrYdsIYQ3O/gd1DQEykmu7t6zlFjhSUKi/2
         InJUTAEs1O1WdXT/UeLi/TrMc2y5sHTOZabLJtebLRxAJ3mB1sFuhT9+pFEh48qUdF6g
         nPqiRetUjsO/AJ7ggwLn9G0VAcK54j6dfRXHqvrLPeJe6xcm6IxHsnzj/nSyS7rqJOe1
         6TDqCM/r0FhtM5PWMue+B6+4kQUwK4MwRr8+zk7MUlMfmN4IS/s1ot7a3Dm2mOq58YvV
         jiZ6hhpi5HR47dXulklmn3Z2pxj5+O1ymj2Q4PRHnch4EPxGU1aahFHQEMfdPfDovqRq
         LOWg==
X-Gm-Message-State: AOJu0YzUOOOpEJaiKRrZLPjMKXhLiDLuoCLaPNZKseKLzfZtGK/MMClU
	hi4qjvDHrvxba1AIFKMgv7xDCQ8rbI5c55amhsMbYN0hITK/W9PxkYc=
X-Google-Smtp-Source: AGHT+IHHpyH97w+iL3El9mSizFMVO4FKJ8HXRgdkh6mPyu1/bq7yU2Ex3EFkQtcuQTKmfRtzWjhohIwy1xpnLV3M9ik=
X-Received: by 2002:a25:ae99:0:b0:d9a:fc8e:7c05 with SMTP id
 b25-20020a25ae99000000b00d9afc8e7c05mr1859738ybj.45.1697714816028; Thu, 19
 Oct 2023 04:26:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>
 <20231018-msm8909-cpufreq-v2-2-0962df95f654@kernkonzept.com> <CAPDyKFot9=M1ooP_Q1AOgG5o_4DTQ2qsyai1ZdXAzBwf89W4uA@mail.gmail.com>
In-Reply-To: <CAPDyKFot9=M1ooP_Q1AOgG5o_4DTQ2qsyai1ZdXAzBwf89W4uA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Oct 2023 13:26:19 +0200
Message-ID: <CAPDyKFr5A-P=UhWs4rUMBWup3pH75WAhcZ56Y2_Sfk3=WfxRCQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] cpufreq: qcom-nvmem: Enable virtual power domain devices
To: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Ilia Lin <ilia.lin@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Stephan Gerhold <stephan@gerhold.net>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Oct 2023 at 12:24, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Wed, 18 Oct 2023 at 10:06, Stephan Gerhold
> <stephan.gerhold@kernkonzept.com> wrote:
> >
> > The genpd core caches performance state votes from devices that are
> > runtime suspended as of commit 3c5a272202c2 ("PM: domains: Improve
> > runtime PM performance state handling"). They get applied once the
> > device becomes active again.
> >
> > To attach the power domains needed by qcom-cpufreq-nvmem the OPP core
> > calls genpd_dev_pm_attach_by_id(). This results in "virtual" dummy
> > devices that use runtime PM only to control the enable and performance
> > state for the attached power domain.
> >
> > However, at the moment nothing ever resumes the virtual devices created
> > for qcom-cpufreq-nvmem. They remain permanently runtime suspended. This
> > means that performance state votes made during cpufreq scaling get
> > always cached and never applied to the hardware.
> >
> > Fix this by enabling the devices after attaching them and use
> > dev_pm_syscore_device() to ensure the power domains also stay on when
> > going to suspend. Since it supplies the CPU we can never turn it off
> > from Linux. There are other mechanisms to turn it off when needed,
> > usually in the RPM firmware (RPMPD) or the cpuidle path (CPR genpd).
>
> I believe we discussed using dev_pm_syscore_device() for the previous
> version. It's not intended to be used for things like the above.
>
> Moreover, I was under the impression that it wasn't really needed. In
> fact, I would think that this actually breaks things for system
> suspend/resume, as in this case the cpr driver's genpd
> ->power_on|off() callbacks are no longer getting called due this,
> which means that the cpr state machine isn't going to be restored
> properly. Or did I get this wrong?

BTW, if you really need something like the above, the proper way to do
it would instead be to call device_set_awake_path() for the device.

This informs genpd that the device needs to stay powered-on during
system suspend (assuming that GENPD_FLAG_ACTIVE_WAKEUP has been set
for it), hence it will keep the corresponding PM domain powered-on
too.

[...]

Kind regards
Uffe

