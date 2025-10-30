Return-Path: <devicetree+bounces-233144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 209A4C1F680
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:59:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0994B403D1C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E9834DB4C;
	Thu, 30 Oct 2025 09:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zMVBwFMB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C47437A3D9
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761818337; cv=none; b=SiQBngLf6eYxHOaEfENBe/8e4V1bfM25Ejh8lupvjJpD3PVKhYcgmWHPk61sxyxWUvRa1HSkNBqclnchb1j5dF/1VQqER8nKeW7z1yvUa10sAjBTftOGnU4GBF5QkcKI9q7KRVn1SlGwElbNht+u7Ra1k8Zuv73PZMNJt51yJPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761818337; c=relaxed/simple;
	bh=6V7E5juvtmdc1T8UbWt2fAasDbg+fibDjemIvVt3gBc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YgINqiUoYjoZg/6I7HDC1FfLoehMFONZSgPfCyl2VenWrVsBEBCBwO0/jhFHjb7dMEh9wAgXe8VQqqTq1oxxNpEH3Jj5N7PV65xb5qp04xwWyf5hBns368AITen1K9mXZ5zafe+BUDUbqQDzuWzu7EukGG0Yf1A2ZxUTjptc3ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zMVBwFMB; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8a1744d9b8fso112504185a.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761818333; x=1762423133; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=absgbM/LagsR81VTr9YW+eGimVEtdVPICEXyNcDYF+E=;
        b=zMVBwFMBfNVLLqszDZUg3VSvK6b1j8PxkjuEA3NCd1YmJkdWdqcEaqJQXwxydav0m6
         0jY0cG9z5oXDZ0PHCk5RHfdo9AyU3zFHiNUYXO4eCNJmhXLyIP6DzQSojw1aat5tABlz
         ecbBH1ca2UhB3x3KEGU106I3FD2YwV10RNu4IWJwCYX54Q8+s6LazNH2WwgsSf108Mgs
         VWN9dceg1gsw/brrnLxKEKoUWwN/RvMtXr1chT55zK5eJ/ckC4P1dq4pL4dfQDnG6Vcw
         al/pcgzSIsIIDu7ICO9lxwqoUeVAehcT2MuDX6gHuGD9JGZTCIJ/3e4wqNfALctz2ZOT
         9baw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761818333; x=1762423133;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=absgbM/LagsR81VTr9YW+eGimVEtdVPICEXyNcDYF+E=;
        b=oz7xvlXGsmjdP/woRDy2kFJLtYUpSjdnvHBmtvJH8qoMzewv5ho92UpexDKv40PVAo
         vP7IXdeKiuFproDv6QPcpBOZuTSKk/rZD6G3Phcxidqu9RL65OJs8PhhMtoqju15yly2
         wwFokk9kb+R1KCBHEMCUIu9JMD5VGRjopmaplq34PgdoqH8x69Gd5jWvFfVVl18UF4xi
         f592fxA7QnNwcNcmCiZR/GxAznBeShWhPj4EAXOsf0cteq7mDTcP+NatQ1UbQHjL2/cZ
         +V7bZZuyqjOU3BmCoW/Vt5jA1W/eIydDFm5TicfllAo0Op/kjqaE4mj7dU4ymb847wZI
         Aa7w==
X-Forwarded-Encrypted: i=1; AJvYcCUA/DScGG2rGIERvAv4FLS/ywj+AYNVB4THj7RMuD7e5gu9lCWnVpK2S8rMsFyopIw0bE0zAcsuFBhr@vger.kernel.org
X-Gm-Message-State: AOJu0YzSVrs6nSMReHqZ6GG+PviTCxUaY5POzTIo0QhQDVZQuCQopTnL
	bc7TwfoK5OmwE9WaWSMfLVGqSSzOr5NESe1o18aMIwXC+/E5mqma9BCEGH+9N8phgzT44JzosU2
	B67mz2PFuLMcfP+bB2avBBiPEdQrMKGIh9IYpumsrYA==
X-Gm-Gg: ASbGnctTxWjm8XYfFPwsrWD/drT5loqC7Jku+v7zcDc58lM0i6haJ6H7kRPSuF3WAo2
	pSnY6y6Cs55t7EHm8vXfSX0Erd7zjTVddpft93wLz0gAaDBMLk/75YsaDZYSC6/XO8IZcwejPwL
	K/twXVJmq5PfDsYDVZN6PURhT2VgLglDsbdQ7TQAb71D5AmCCbmpZ40zQCqN0YfHhZSLakwJvGz
	aS98k/1hvjvim064nEwDeJoAsRNVUQSmWvS4T/+3KA5GOlmJAb07uKJ1EnyO69ORpgKY44ucx3j
	uTUPGjiRnBDMEsTeUA==
X-Google-Smtp-Source: AGHT+IFUqnazSY7z2FvEnJeUXVSF4JyDn7tHHUK1IgsgMoaK9NxJ/ZQbLMAQh5fAN6xuof8Hnoac1Yfo6fFL9g5N6Eo=
X-Received: by 2002:a05:620a:290b:b0:8a3:cd9e:e3f6 with SMTP id
 af79cd13be357-8a8e30e4888mr842034085a.7.1761818333214; Thu, 30 Oct 2025
 02:58:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027-cpu_cluster_component_pm-v1-0-31355ac588c2@oss.qualcomm.com>
 <CAJ9a7VipQh=y0o+6k=fLMMK408E5eGD6vhY2TKBMm+q63NUiWA@mail.gmail.com> <7451a3ae-2b3f-4e07-b93c-0507436d0f33@oss.qualcomm.com>
In-Reply-To: <7451a3ae-2b3f-4e07-b93c-0507436d0f33@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 30 Oct 2025 09:58:41 +0000
X-Gm-Features: AWmQ_bl6dSnsH1lqrV1OCHFJI3NpjO7q1p6vQItR60dxg6XPfOvLS9hTosbgaMs
Message-ID: <CAJ9a7VgxpQ5gTXpaW5pBb+dpZZhXAkrOtxkkiK-KUmvipPm5UQ@mail.gmail.com>
Subject: Re: [PATCH 00/12] coresight: Add CPU cluster funnel/replicator/tmc support
To: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Leo Yan <leo.yan@linux.dev>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, kernel@oss.qualcomm.com, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, 30 Oct 2025 at 07:51, yuanfang zhang
<yuanfang.zhang@oss.qualcomm.com> wrote:
>
>
>
> On 10/29/2025 7:01 PM, Mike Leach wrote:
> > Hi,
> >
> > This entire set seems to initially check the generic power domain for
> > a list of associated CPUs, then check CPU state for all other
> > operations.
> >
> > Why not simply use the generic power domain state itself, along with
> > the power up / down notifiers to determine if the registers are safe
> > to access? If the genpd is powered up then the registers must be safe
> > to access?
> >
> > Regards
> >
> > Mike
> >
>
> Hi Mike,
>
> Hi,
>
> yes, when genpd is powered up then register can be accessed. but have blo=
w problems:
>

The point I was making is to use genpd / notifications for determine
if the device is powered so you know if it is safe to use registers.
This is different from the faults you mention below in your power
infrastructure.
You are reading the dev->pm_domain to extract the cpu map then the
notfiers and state must also be available. If you could use CPUHP
notifiers then genpd notifiers would also work.
However, one issue I do see with this is that there is no code added
to the driver to associate the dev with the pm_domain which would
normally be there so I am unclear how this actually works.

Associating a none CPU device with a bunch of CPUs does not seem
correct. You are altering a generic coresight driver to solve a
specific platform problem, when other solutions should be used.

> 1. pm_runtime_sync can trigger cluster power domian power up notifier but=
 not really
> power up the cluster, and not able to distinguish whether it is a real po=
wer up notifier
> or triggered by pm_runtime_sync.
> 2. Using the power up/down notifier cannot actively wake up the cluster p=
ower,
> which results in the components related to this cluster failing to be ena=
bled when the cluster
> power off.
> 3. Using the power up/down notifier for register access does not guarante=
e
> the correct path enablement sequence.
>

Does all this not simply mean that you need to fix your power
management drivers / configuration so that it works correctly, rather
than create a poor workaround in unrelated drivers such as the
coresight devices?

Thanks and  Regards



Mike

> thanks,
> yuanfang
>
> > On Tue, 28 Oct 2025 at 06:28, Yuanfang Zhang
> > <yuanfang.zhang@oss.qualcomm.com> wrote:
> >>
> >> This patch series introduces support for CPU cluster local CoreSight c=
omponents,
> >> including funnel, replicator, and TMC, which reside inside CPU cluster
> >> power domains. These components require special handling due to power
> >> domain constraints.
> >>
> >> Unlike system-level CoreSight devices, CPU cluster local components sh=
are the
> >> power domain of the CPU cluster. When the cluster enters low-power mod=
e (LPM),
> >> the registers of these components become inaccessible. Importantly, `p=
m_runtime_get`
> >> calls alone are insufficient to bring the CPU cluster out of LPM, maki=
ng
> >> standard register access unreliable in such cases.
> >>
> >> To address this, the series introduces:
> >> - Device tree bindings for CPU cluster local funnel, replicator, and T=
MC.
> >> - Introduce a cpumask to record the CPUs belonging to the cluster wher=
e the
> >>   cpu cluster local component resides.
> >> - Safe register access via smp_call_function_single() on CPUs within t=
he
> >>   associated cpumask, ensuring the cluster is power-resident during ac=
cess.
> >> - Delayed probe support for CPU cluster local components when all CPUs=
 of
> >>   this CPU cluster are offline, re-probe the component when any CPU in=
 the
> >>   cluster comes online.
> >> - Introduce `cs_mode` to link enable interfaces to avoid the use
> >>   smp_call_function_single() under perf mode.
> >>
> >> Patch summary:
> >> Patch 1: Adds device tree bindings for CPU cluster funnel/replicator/T=
MC devices.
> >> Patches 2=E2=80=933: Add support for CPU cluster funnel.
> >> Patches 4-6: Add support for CPU cluster replicator.
> >> Patches 7-10: Add support for CPU cluster TMC.
> >> Patch 11: Add 'cs_mode' to link enable functions.
> >> Patches 12-13: Add Coresight nodes for APSS debug block for x1e80100 a=
nd
> >> fix build issue.
> >>
> >> Verification:
> >>
> >> This series has been verified on sm8750.
> >>
> >> Test steps for delay probe:
> >>
> >> 1. limit the system to enable at most 6 CPU cores during boot.
> >> 2. echo 1 >/sys/bus/cpu/devices/cpu6/online.
> >> 3. check whether ETM6 and ETM7 have been probed.
> >>
> >> Test steps for sysfs mode:
> >>
> >> echo 1 >/sys/bus/coresight/devices/tmc_etf0/enable_sink
> >> echo 1 >/sys/bus/coresight/devices/etm0/enable_source
> >> echo 1 >/sys/bus/coresight/devices/etm6/enable_source
> >> echo 0 >/sys/bus/coresight/devices/etm0/enable_source
> >> echo 0 >/sys/bus/coresight/devicse/etm6/enable_source
> >> echo 0 >/sys/bus/coresight/devices/tmc_etf0/enable_sink
> >>
> >> echo 1 >/sys/bus/coresight/devices/tmc_etf1/enable_sink
> >> echo 1 >/sys/bus/coresight/devcies/etm0/enable_source
> >> cat /dev/tmc_etf1 >/tmp/etf1.bin
> >> echo 0 >/sys/bus/coresight/devices/etm0/enable_source
> >> echo 0 >/sys/bus/coresight/devices/tmc_etf1/enable_sink
> >>
> >> echo 1 >/sys/bus/coresight/devices/tmc_etf2/enable_sink
> >> echo 1 >/sys/bus/coresight/devices/etm6/enable_source
> >> cat /dev/tmc_etf2 >/tmp/etf2.bin
> >> echo 0 >/sys/bus/coresight/devices/etm6/enable_source
> >> echo 0 >/sys/bus/coresight/devices/tmc_etf2/enable_sink
> >>
> >> Test steps for sysfs node:
> >>
> >> cat /sys/bus/coresight/devices/tmc_etf*/mgmt/*
> >>
> >> cat /sys/bus/coresight/devices/funnel*/funnel_ctrl
> >>
> >> cat /sys/bus/coresight/devices/replicator*/mgmt/*
> >>
> >> Test steps for perf mode:
> >>
> >> perf record -a -e cs_etm//k -- sleep 5
> >>
> >> Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
> >> ---
> >> Yuanfang Zhang (12):
> >>       dt-bindings: arm: coresight: Add cpu cluster tmc/funnel/replicat=
or support
> >>       coresight-funnel: Add support for CPU cluster funnel
> >>       coresight-funnel: Handle delay probe for CPU cluster funnel
> >>       coresight-replicator: Add support for CPU cluster replicator
> >>       coresight-replicator: Handle delayed probe for CPU cluster repli=
cator
> >>       coresight-replicator: Update mgmt_attrs for CPU cluster replicat=
or compatibility
> >>       coresight-tmc: Add support for CPU cluster ETF and refactor prob=
e flow
> >>       coresight-tmc-etf: Refactor enable function for CPU cluster ETF =
support
> >>       coresight-tmc: Update tmc_mgmt_attrs for CPU cluster TMC compati=
bility
> >>       coresight-tmc: Handle delayed probe for CPU cluster TMC
> >>       coresight: add 'cs_mode' to link enable functions
> >>       arm64: dts: qcom: x1e80100: add Coresight nodes for APSS debug b=
lock
> >>
> >>  .../bindings/arm/arm,coresight-dynamic-funnel.yaml |  23 +-
> >>  .../arm/arm,coresight-dynamic-replicator.yaml      |  22 +-
> >>  .../devicetree/bindings/arm/arm,coresight-tmc.yaml |  22 +-
> >>  arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 885 ++++++++++++=
+++++++++
> >>  arch/arm64/boot/dts/qcom/x1p42100.dtsi             |  12 +
> >>  drivers/hwtracing/coresight/coresight-core.c       |   7 +-
> >>  drivers/hwtracing/coresight/coresight-funnel.c     | 260 +++++-
> >>  drivers/hwtracing/coresight/coresight-replicator.c | 343 +++++++-
> >>  drivers/hwtracing/coresight/coresight-tmc-core.c   | 396 +++++++--
> >>  drivers/hwtracing/coresight/coresight-tmc-etf.c    | 105 ++-
> >>  drivers/hwtracing/coresight/coresight-tmc.h        |  10 +
> >>  drivers/hwtracing/coresight/coresight-tnoc.c       |   3 +-
> >>  drivers/hwtracing/coresight/coresight-tpda.c       |   3 +-
> >>  include/linux/coresight.h                          |   3 +-
> >>  14 files changed, 1912 insertions(+), 182 deletions(-)
> >> ---
> >> base-commit: 01f96b812526a2c8dcd5c0e510dda37e09ec8bcd
> >> change-id: 20251016-cpu_cluster_component_pm-ce518f510433
> >>
> >> Best regards,
> >> --
> >> Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
> >>
> >
> >
>


--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

