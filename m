Return-Path: <devicetree+bounces-186221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E65CCADAC05
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:36:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C63118910C3
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 09:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9584273808;
	Mon, 16 Jun 2025 09:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="AgeuWH36"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246FD27057C
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 09:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750066592; cv=none; b=smB9cfMBnxXQKYDFJKgIpWvzbx95XivP+35KIRwYoo+LWAHF5Tq1oIrDDF2aCRR+QKFXe6rrzpDVz8hc8NfX/vEAzq2hb93H59w7+1OXmPqOOwf4+tB7kObbM/2JRa8XNVugYbLDMsBWeqWju4kS0hdZev4fV9bsNQM2+wn7/fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750066592; c=relaxed/simple;
	bh=KrCADh/e0/WAi5hLjFQkisYAiS/EbVbwctSXmQc5IJU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=emg3mS9BE3bQSlrUjc2GFTBmTgBfh1K5Ck6YykI6lZLccI+rS4DVFspWuDEJj9vq16zuYR8+U1amDEi1aRLNiBq5xtvx0oPqP3/x0/sM9fin9fQE4OPZMTPTU4QedPzzePkg37WONEHSIQep8JIu5KA7bOX1wqQJ3DW5SUk+dH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=AgeuWH36; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3da76aea6d5so277785ab.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 02:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1750066590; x=1750671390; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QyIJw42bLVYC1qcn4Rgc4aSobkAPjVXS0kJvM4KjVSE=;
        b=AgeuWH36/S/w6lvERPFuvIgYYlOW7M13U7e1XqpRV22kEsjwjZkwqLcPGY5symc2Y3
         Hc8L66kAlZ5NINflcocMLzyV/mjhvbLpLh+ribsfw//cxOK8W4YtoRQiGe3VD3IWwoWX
         oGSVabmJ3z946fA76V4PFrxavtyo+eyXc/um63hn6NXDcjBAEmXXgAwoMl1tgnw42Ox3
         sz/tSQwtYSXV70NrPEffvgKvNuo9eVlt7bv+/V6cqOXsjpdh0ghHrWzyE+D0yvWSSU71
         czlKKZqXnfahJks0C0ZUgiS9vFubQF65CLaEN9W/45mm/TrrZ+Ix0dEbXoTmLJRht3Wm
         kArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750066590; x=1750671390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QyIJw42bLVYC1qcn4Rgc4aSobkAPjVXS0kJvM4KjVSE=;
        b=PwaNZbkDWdFfzq5eYOsPEavpLwlR5seO4jWlwFa9QfvPZnCDwU9yVs/hzPm4YQSEIh
         nhxN/xuwZnRjjfu7uBsi04zeC5VW+gWQca/TGNxlzzzXy3yEBCJbfCJ1a9pUE6gp+DfT
         aJbtp8vr1CPkFWVVp/4pM4kBaTiZMhMQdTG5X8RNkw40JR2EGoKVzXsWeGR4Z97AQ9Jd
         T17e0nJlp5ogV5eWnCzjg8F+mN0cX8+m3YkBe6t4zKPVQFlpSheGLle2JRgc4qDW4lhs
         oA+DS/inhBINNcoILwo6vccz7HxJM0ErWBZbBGL02KT/wMfPRAFD6TJXnNZghltVq7bb
         6auQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzmDg63bOSi93fkI/iue1+WbFg+C8cfhaocrNZW8EQ+6zJHhI6Ff078jHsiQbjWWa0vKNaq3mKmhKN@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2vwo2hLXXo+gcF6YH6GHYwaDRAyIikO43uaKrhpBWsOgiQrIJ
	Hhk1WY4B9GzucmK480kSCkNneIaOPCPMa2sVwp5Ui1WSjzPLTk+VtjXVZaaSHpKXv5SyurnzpkT
	T/wqjQLEEZWcqkA29ONWG/4OjvcPvSWSWx+v5+qir
X-Gm-Gg: ASbGncvrZf4hIWZSXk3sCS3fGACuT52QNsK9IRZ4xRkk9BjPOdcIQJRKEywXYD1H4py
	MbdMlmnDvXgQA36LWzr2NzyMq9qV/3PO3QqU7k/1YPH9dKXhMw37kZLbqwOipMYfQrsM8b/SnGB
	7Hz9Gig2AEMTQSMT20um7hVzsVr/mqv7BvK+mnLaITsSI1UgMHfFElMLA=
X-Google-Smtp-Source: AGHT+IExfs1Lq6bAplJAKpnyknLozpvmj2f++NKi/uCJl7EYtWLFqXP60HhaEqVs4L7q3T5Sh2zeIsfSjUd+hwvQ/JE=
X-Received: by 2002:a05:6e02:1d9b:b0:3dd:a4b7:c737 with SMTP id
 e9e14a558f8ab-3de09fc2b9emr4321945ab.19.1750066589976; Mon, 16 Jun 2025
 02:36:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250616-apple-cpmu-v7-0-df2778a44d5c@gmail.com>
In-Reply-To: <20250616-apple-cpmu-v7-0-df2778a44d5c@gmail.com>
From: Ian Rogers <irogers@google.com>
Date: Mon, 16 Jun 2025 02:36:18 -0700
X-Gm-Features: AX0GCFtd-Ymhas6vUanWJK_PcvegJqPI2_88M-JzDIHqHHA6qrjOwNHCJCZ3ZL4
Message-ID: <CAP-5=fXSwgxMc+uh=PBAFh4Zm96tL5RDyKPOJ8Q40O4s=EaArA@mail.gmail.com>
Subject: Re: [PATCH RESEND v7 00/21] drivers/perf: apple_m1: Add Apple A7-A11,
 T2 SoC support
To: Nick Chan <towinchenmi@gmail.com>
Cc: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>, 
	Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
	asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 15, 2025 at 6:32=E2=80=AFPM Nick Chan <towinchenmi@gmail.com> w=
rote:
>
> This series adds support for the CPU PMU in the older Apple A7-A11, T2
> SoCs. These PMUs may have a different event layout, less counters, or
> deliver their interrupts via IRQ instead of a FIQ. Since some of those
> older SoCs support 32-bit EL0, counting for 32-bit EL0 also need to
> be enabled by the driver where applicable.
>
> Patch 1 adds the DT bindings.
> Patch 2-7 prepares the driver to allow adding support for those
> older SoCs.
> Patch 8-12 adds support for the older SoCs.
> Patch 13-21 are the DT changes.
>
> Signed-off-by: Nick Chan <towinchenmi@gmail.com>

Hi Nick,

This is substantial work and it looks good to me. Do you know why
there's been little progress on landing these patches? Buggy Apple ARM
PMU support in the kernel has led to reworking the perf tool. It seems
best that we can have the best drivers possible.

Thanks,
Ian

> ---
> Changes in v7:
> - Fix a W=3D1 compile warning in apple_pmu_get_event_idx() as appearently=
 using GENMASK()
> in a function prototype causes a warning in GCC.
> - Link to v6: https://lore.kernel.org/r/20250407-apple-cpmu-v6-0-ae8c2f22=
5c1f@gmail.com
>
> Changes in v6:
> - Rebased on top of v6.15-rc1 (Conflict with FEAT_PMUv3 support for KVM o=
n Apple Hardware)
> - Add patch to skip initialization of PMUv3 remap in EL1 even though not =
strictly needed
> - Include DT patches
> - Link to v5: https://lore.kernel.org/r/20250228-apple-cpmu-v5-0-9e124cd2=
8ed4@gmail.com
>
> Changes in v5:
> - Slightly change "drivers/perf: apple_m1: Add Apple A11 Support", to kee=
p things in
> chronological order.
> - Link to v4: https://lore.kernel.org/r/20250214-apple-cpmu-v4-0-ffca0e45=
147e@gmail.com
>
> Changes in v4:
> - Support per-implementation event attr group
> - Fix Apple A7 event attr groups
> - Link to v3: https://lore.kernel.org/r/20250213-apple-cpmu-v3-0-be7f8ade=
d81f@gmail.com
>
> Changes in v3:
> - Configure PMC8 and PMC9 for 32-bit EL0
> - Remove redundant _common suffix from shared functions
> - Link to v2: https://lore.kernel.org/r/20250213-apple-cpmu-v2-0-87b36193=
2e88@gmail.com
>
> Changes in v2:
> - Remove unused flags parameter from apple_pmu_init_common()
> - Link to v1: https://lore.kernel.org/r/20250212-apple-cpmu-v1-0-f8c7f2ac=
1743@gmail.com
>
> ---
> Nick Chan (21):
>       dt-bindings: arm: pmu: Add Apple A7-A11 SoC CPU PMU compatibles
>       drivers/perf: apple_m1: Only init PMUv3 remap when EL2 is available
>       drivers/perf: apple_m1: Support per-implementation event tables
>       drivers/perf: apple_m1: Support a per-implementation number of coun=
ters
>       drivers/perf: apple_m1: Support configuring counters for 32-bit EL0
>       drivers/perf: apple_m1: Support per-implementation PMU startup
>       drivers/perf: apple_m1: Support per-implementation event attr group
>       drivers/perf: apple_m1: Add Apple A7 support
>       drivers/perf: apple_m1: Add Apple A8/A8X support
>       drivers/perf: apple_m1: Add A9/A9X support
>       drivers/perf: apple_m1: Add Apple A10/A10X/T2 Support
>       drivers/perf: apple_m1: Add Apple A11 Support
>       arm64: dts: apple: s5l8960x: Add CPU PMU nodes
>       arm64: dts: apple: t7000: Add CPU PMU nodes
>       arm64: dts: apple: t7001: Add CPU PMU nodes
>       arm64: dts: apple: s800-0-3: Add CPU PMU nodes
>       arm64: dts: apple: s8001: Add CPU PMU nodes
>       arm64: dts: apple: t8010: Add CPU PMU nodes
>       arm64: dts: apple: t8011: Add CPU PMU nodes
>       arm64: dts: apple: t8012: Add CPU PMU nodes
>       arm64: dts: apple: t8015: Add CPU PMU nodes
>
>  Documentation/devicetree/bindings/arm/pmu.yaml |   6 +
>  arch/arm64/boot/dts/apple/s5l8960x.dtsi        |   8 +
>  arch/arm64/boot/dts/apple/s800-0-3.dtsi        |   8 +
>  arch/arm64/boot/dts/apple/s8001.dtsi           |   8 +
>  arch/arm64/boot/dts/apple/t7000.dtsi           |   8 +
>  arch/arm64/boot/dts/apple/t7001.dtsi           |   9 +
>  arch/arm64/boot/dts/apple/t8010.dtsi           |   8 +
>  arch/arm64/boot/dts/apple/t8011.dtsi           |   9 +
>  arch/arm64/boot/dts/apple/t8012.dtsi           |   8 +
>  arch/arm64/boot/dts/apple/t8015.dtsi           |  24 +
>  arch/arm64/include/asm/apple_m1_pmu.h          |   3 +
>  drivers/perf/apple_m1_cpu_pmu.c                | 807 +++++++++++++++++++=
++++--
>  12 files changed, 871 insertions(+), 35 deletions(-)
> ---
> base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
> change-id: 20250211-apple-cpmu-5a5a3da39483
>
> Best regards,
> --
> Nick Chan <towinchenmi@gmail.com>
>
>

