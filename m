Return-Path: <devicetree+bounces-156925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7228A5DE3F
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 14:40:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 396001898ACD
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 13:41:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F97C24A079;
	Wed, 12 Mar 2025 13:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fQeLwxt4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E20924338F
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 13:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741786845; cv=none; b=eS0K18xyMHJ/oygwQaMOyt/pNfQ4QZzZxtR/a/od7fm7ff0RV2F9aW8gyoET6edquQ5LfaZYM/fE1Z+++XKq/TRb1jbsKJi06gWdmUQW828R4S7xKDcAH+CXG7PpasB6OiiGamJWtnBHHgdqoexkTEHUol2q8bXrNuwsnfvC2N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741786845; c=relaxed/simple;
	bh=0FOWGVHaDhMSxLZhQBp1F9w7MDPsHSbh2U8xICqQlwU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jS+6Vv4LnDHV+bazuAu9tJPD390gUIvoULGqlL7fnf/84Hx2RICxAwbRJuItMc6z84YCf07/OQZy6j08PMabEtZX5gbskYbT6iKZYR8dQU9Z3xbV6g1HB1X8TSRUl+jB+kx6EEy1btTiTf8nxqFHARIyq2ConrQZnCqiSRPB/H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fQeLwxt4; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6fda22908d9so50523817b3.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 06:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741786841; x=1742391641; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hhrcmi0xUiqdLtVh1GRjRH+/GSXbagDIYdSQNFjxy8U=;
        b=fQeLwxt4RqfG1IlXdtIoPtuWEBpisLtm5hnyvnUcrXThbNA2I/jQKEFVcFaq4USUYK
         PRWpDtV4wuPJspJQnFW1Vna/Tz4aMSAiKsuqKursS+9tGKjBqw2732eQ9b2fms4qCCJM
         F8OPVozdWm5SO8Tpnh8zq/Knw+6O7It/payS+jk4W9TNyZo+AwTQaXNYjuarsyHgVtaO
         rqffr4q3hKrbdeOlvlE9c/z0FdZFsNNDhulLUjJ7M1grlVymfnDFq0Zp71pP5LD5dqHD
         s0ML2ZwGkmTt6Nd2mSrpVBjxUWSgcz6gQAJjfAryxcrfWvhQWbZuIcQ7VtPIRgtU2ZiZ
         IDZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741786841; x=1742391641;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hhrcmi0xUiqdLtVh1GRjRH+/GSXbagDIYdSQNFjxy8U=;
        b=ZYXYz8vKXOeRjTpJnvdunsqEAiDSHBHOLv36S8bjzs2l0E7evob3vD0z2pv+2gtNf0
         ZAskVNKkTQaVUiS4HGdec/Q7TzoFoDqJfCZtVJxGrSOBkHmNRZgbkooR3471Z4NAc4G/
         arfw1Rj88Q85Yg0RGAHMcQZvgl8FJSx7UF5MTN/SRbNN8ax7tUyEl1Qjw2cy+EIWC9fk
         mdnuI30cbcuxbbY2cvVmPnLXKuwDNSeI1ITZVW/On3o4djT8FyeWMcL7lyiW1hfzWWCl
         llbwmZg0dPevkuLn/wwsq3RB21UrXDXioUl4/rtylqb+kxAz7T6I1bBKriwJPLvhO0Rk
         6FkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsChVc49saGCYHCMcjcx1FynlmeYyfNMYb++6f2OwJE6KZmV/p8YC/mciwBlDRgd5qq3qRUKebwpcs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6+j5sIaAyJyi17GDOh7k1Esw4FlSpOjGdOf6Ne4l5/axayGEz
	awGu2lCWVHZ88wlj4osQXTwsTRedpeU+dRa+2lc6kaz1QiENRx42XKcHAXI+IovUgWMUueYsWgN
	FBx8v/CzLXLGwYVIy/mmbn3LWxaTspe/5xbBvHA==
X-Gm-Gg: ASbGncvPAGiIRuloq8OecZwe9pCIWtDUPuIeWlojS8RktAcS3p2YFlwfT5THQnT0SvC
	PmRmj5ry0Z2uesDM/m3tfTKzvbIuIhagkI11g8u8MGW3PzOgCZGAaYidYg0ErEYwJoUq2UrPgm8
	a17iNBmKrYfXSCOeXkcCM5Y1QGxmw=
X-Google-Smtp-Source: AGHT+IFJ9p7pfUX7m1bGpDLYs3TL7z5/+KD/9z9ZtEP9BAG4rG+GTMpPFeCO8lp57V6p2dDYRRGpZH8e4zc4/N9bcM8=
X-Received: by 2002:a05:690c:c01:b0:6fe:abff:cb17 with SMTP id
 00721157ae682-6febf383ea4mr321056757b3.26.1741786841208; Wed, 12 Mar 2025
 06:40:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250311172030eucas1p12dda42760f751174e774b8d1a3d3f4cd@eucas1p1.samsung.com>
 <20250311171900.1549916-1-m.wilczynski@samsung.com>
In-Reply-To: <20250311171900.1549916-1-m.wilczynski@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 14:40:05 +0100
X-Gm-Features: AQ5f1JoLxbwoXOsAUDISdJHHCDW9bcjCEK99ID6-ayNeElpEQf9KOoIgkdPs6Yo
Message-ID: <CAPDyKFqeaq5xVNA=0CpMWSt_78qXJsY6+mpE1CSmLrVMQazAjg@mail.gmail.com>
Subject: Re: [PATCH v8 0/5] TH1520 SoC: Add AON firmware & power-domain support
To: Michal Wilczynski <m.wilczynski@samsung.com>, drew@pdp7.com, guoren@kernel.org, 
	wefu@redhat.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, jszhang@kernel.org, m.szyprowski@samsung.com, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 11 Mar 2025 at 18:20, Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> This patch series introduces and documents power management (PM) support and
> the AON firmware driver for the T-Head TH1520 SoC, as used on the LicheePi 4A
> board. While part of a larger effort to enable the Imagination BXM-4-64 GPU
> upstream, these patches can merge independently.
>
> Bigger series cover letter:
> https://lore.kernel.org/all/20250219140239.1378758-1-m.wilczynski@samsung.com/
>
> This series is versioned to maintain continuity with the bigger patchset it is
> a subseries of. Please find below a changelog for the AON & power-domain:

I can pick up patch1 -> patch4 via my pmdomain tree, assuming I can
get an ack from some of the thead-SoC maintainers.

Patch5 is probably better to be routed through the SoC maintainers
tree, but let me know if you prefer me to take this one too.

Kind regards
Uffe


>
> v8:
> - add proper cleanup in the th1520_pd_probe()
> - add "suppress_bind_attrs = true", since there is no need to unbound the driver
>   during runtime. This simplifies the code by eliminating the remove function
>
> v7:
> - add '#include <linux/slab.h", due to kernel robot issue
>
> v6:
> - split the firmware & power-domain patches into a separate series
>
> v5:
> - changed the AON driver to be a set of library functions rather than a
>   standalone driver
>
> v4:
> - added workaround to disable AUDIO power domain to prevent firmware crashes
>
> v3:
>  - consolidated device tree representation by merging aon and power-domain nodes
>    while maintaining separate drivers internally
>  - power-domain driver is now instantiated from within the aon driver
>  - fixed optional module dependencies in Kconfig
>  - added kernel-doc comments for all exported functions
>  - implemented th1520_aon_remove() to properly clean up mailbox channel
>    resources
>
> v2:
>  - introduced a new firmware driver to manage power-related operations.
>  - rewrote the power-domain driver to function alongside the firmware driver.
>    These nodes in the device tree lack direct address spaces, despite
>    representing HW blocks. Control is achieved via firmware protocol messages
>    transmitted through a mailbox to the E902 core.
>  - added new dt-bindings for power and firmware nodes.
>  - ran dtbs_check and dt_binding_check to ensure compliance.
>
> Michal Wilczynski (5):
>   dt-bindings: firmware: thead,th1520: Add support for firmware node
>   firmware: thead: Add AON firmware protocol driver
>   dt-bindings: power: Add TH1520 SoC power domains
>   pmdomain: thead: Add power-domain driver for TH1520
>   riscv: Enable PM_GENERIC_DOMAINS for T-Head SoCs
>
>  .../bindings/firmware/thead,th1520-aon.yaml   |  53 ++++
>  MAINTAINERS                                   |   5 +
>  arch/riscv/Kconfig.socs                       |   1 +
>  drivers/firmware/Kconfig                      |   9 +
>  drivers/firmware/Makefile                     |   1 +
>  drivers/firmware/thead,th1520-aon.c           | 248 ++++++++++++++++++
>  drivers/pmdomain/Kconfig                      |   1 +
>  drivers/pmdomain/Makefile                     |   1 +
>  drivers/pmdomain/thead/Kconfig                |  12 +
>  drivers/pmdomain/thead/Makefile               |   2 +
>  drivers/pmdomain/thead/th1520-pm-domains.c    | 218 +++++++++++++++
>  .../dt-bindings/power/thead,th1520-power.h    |  19 ++
>  .../linux/firmware/thead/thead,th1520-aon.h   | 200 ++++++++++++++
>  13 files changed, 770 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/firmware/thead,th1520-aon.yaml
>  create mode 100644 drivers/firmware/thead,th1520-aon.c
>  create mode 100644 drivers/pmdomain/thead/Kconfig
>  create mode 100644 drivers/pmdomain/thead/Makefile
>  create mode 100644 drivers/pmdomain/thead/th1520-pm-domains.c
>  create mode 100644 include/dt-bindings/power/thead,th1520-power.h
>  create mode 100644 include/linux/firmware/thead/thead,th1520-aon.h
>
> --
> 2.34.1
>

