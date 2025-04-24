Return-Path: <devicetree+bounces-170313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4F8A9A777
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 11:11:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 833B61B65D7E
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 09:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAA6C214A7D;
	Thu, 24 Apr 2025 09:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TZdjTGGc"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA980212FAB
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745485890; cv=none; b=WJ7GeNhI9lESP8S5twQOMtqJMiDWEaYsgE5NXWS3n5UMmOONL5xrWJl9Xo11ENwp7E2HyIhMD6455gD24X1/P7ZWK9nac1KJ/DcbfCf00mN19d1adiPKDNSvrjCnVleTC3AyQewMaMKaPOJKT8sihdxHT4NB+RADjyOzhUcBKQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745485890; c=relaxed/simple;
	bh=D0+QLnTTaA8BoAdM+fBMbb/li+nh5U0QU3E85OBSLLA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KJa25l6uybl/s429G3I12yCiWAC25oFIL5K6x5e5kaiPZFXp3eb3N2mSN5qiuFTveWYsDUOR9/LzwnrOXS55OtJ16M4GMPhNlaaHIFHqGwxCzHHD44xWlriXoPTPgnhkpVOf4QWmp6uN5fuHZg32tOZLCAduTZsQCXhruyV7FRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TZdjTGGc; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745485887;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S9HOt8K1x3ctE3BWSKA9qeH3oq86sKFq23Km/AG9m9c=;
	b=TZdjTGGcGrUHiUkxUuhIunpVridkjD7XXrkiVfz4ivEQmnEP8DbVYCxT031DzigF5W8P0k
	Hmg1t7ngSt7Zh8/kCfit5DEvBhw6ovqHdOvT92WtA3yK8cIFwQu2iJ/9Gv6DaDkcaFjfDI
	TICTOlGceAsOPo9qBxKKhmdr7BxnD98=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-488-5N9JKohxOnOqVuUup_9ciQ-1; Thu, 24 Apr 2025 05:11:26 -0400
X-MC-Unique: 5N9JKohxOnOqVuUup_9ciQ-1
X-Mimecast-MFC-AGG-ID: 5N9JKohxOnOqVuUup_9ciQ_1745485885
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-72b7c2161ceso196915a34.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 02:11:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745485885; x=1746090685;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9HOt8K1x3ctE3BWSKA9qeH3oq86sKFq23Km/AG9m9c=;
        b=wiKdP/NIQp76C+bim8ZftFxk1KKyCZbbK3d6dk0ca1Ee+lSInaUYCK2RrqxBDWr4SB
         30CSmQUWUK08wtWMgFxsN7+19fakkDdf/EiAngpnUJe3eFgDxKOD8h3RvGzCZpUIveqK
         Wcm0NJuzWQkGCYZocI7dkGrMWlYgptTyKn5Iev03TQWuAh50ZxA990hEIPkbQK96ZFLh
         PvpCdwiO/a+p7J8HOxjvvHNBie7R7L9iFoPQ8QnAFHVG+0cDYh+KPrZAj9aOwNPK0mfR
         9SfW+3SPdk6hOx7rkzmYQI63LHQOQTVYbA4186QYQKHivewWqiQ8suhI7HYX1/aXL/d4
         vwFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpAr0rmDCQMz+c+11+MXbrGQeH/HcouQHLCL2PTr+sMomd6kzGAz2SjINCh93JAuIx63Ahg0M50qtI@vger.kernel.org
X-Gm-Message-State: AOJu0YyQw59Y0wro76w3HbJZ63ASnHxw2ccb+ehuQPT13wDmFGwQrY10
	D7vjKpB7TcJhcYwSrD9yKHU6HS39bZRSwOR09aXYIzGx3IIbYtccLqmTLxv58qD3w12ZTQnIFqn
	yEPz7AL82XVGj7EbKaoV34O7zaA5SPZuYFDpjPz41w6G2zm5zeBl/85jIWAXBjTNuJQ61+vvT4X
	BxFqHSQ1tX1A3NnIQ8Pl8DVMznBOKiDxFQtA==
X-Gm-Gg: ASbGnctBtA9OZ5+FgaCmf7ymuopkRHkEaqEzp4RoBdRSKcZd6ZmO4E9ZrSLzoC57pEJ
	074GKC2NOWeqBwusn0rRjZCyZVlMjDQdUOg+Y1siip5hp1Vuqnz9B+mrGy2Z8U4Twc54=
X-Received: by 2002:a05:6871:7406:b0:2c8:234d:971b with SMTP id 586e51a60fabf-2d96e6aa4ebmr380763fac.9.1745485885529;
        Thu, 24 Apr 2025 02:11:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFK7qUeJJwQjklraK2nHiUwpH65h8T9xweuQl27N0LwRhvIakqeaQOVUhg1tEDsLwCPFdAeBvDc3b678FCalLc=
X-Received: by 2002:a05:6871:7406:b0:2c8:234d:971b with SMTP id
 586e51a60fabf-2d96e6aa4ebmr380751fac.9.1745485885149; Thu, 24 Apr 2025
 02:11:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250415072724.3565533-1-peter.chen@cixtech.com>
In-Reply-To: <20250415072724.3565533-1-peter.chen@cixtech.com>
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Thu, 24 Apr 2025 11:11:00 +0200
X-Gm-Features: ATxdqUE5d3FPvXzpICK8B6GZkItGWuDz2HbxbB6ClXETUq4KFHFcvwKgyIo7a18
Message-ID: <CALE0LRsnuAfaXWPvZAktRk-RKkbhv9DAvdfAfg-AwbMbPynsig@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] arm64: Introduce CIX P1 (SKY1) SoC
To: Peter Chen <peter.chen@cixtech.com>
Cc: soc@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, 
	jassisinghbrar@gmail.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	cix-kernel-upstream@cixtech.com, maz@kernel.org, kajetan.puchalski@arm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Peter,

On Tue, Apr 15, 2025 at 9:30=E2=80=AFAM Peter Chen <peter.chen@cixtech.com>=
 wrote:
>
> Cixtech P1 (internal name sky1) is high performance generic Armv9 SoC.
> Orion O6 is the Arm V9 Motherboard built by Radxa. You could find brief
> introduction for SoC and related boards at:
> https://radxa.com/products/orion/o6#overview
>
> In this series, we add initial SoC and board support for Kernel building.
> Patch 1-2: add dt-binding doc for CIX and its sky1 SoC
> Patch 3-4: add Arm64 build support
> Patch 5-7: add CIX mailbox driver which needs to support SCMI clock proto=
col.
> Patch 8-9: add initial dts support for SoC and Orion O6 board

Many thanks for these patches, with these I was able to run the latest
mainline kernel on boot to the console on my Orion O6 board. I think
others already tested just wanted to point out if you can keep me in
the loop, thanks.

If you feel is useful you can add:

Tested-by: Enric Balletbo i Serra <eballetb@redhat.com>

Thanks,
  Enric

> Patch 10: add MAINTAINERS entry
>
> Currently, to run upstream kernel at Orion O6 board, you need to
> use BIOS released by Radxa, and add "clk_ignore_unused=3D1" at bootargs.
> https://docs.radxa.com/en/orion/o6/bios/install-bios
>
> Changes for v6:
> - Rebase to v6.15-rc2
> - Add mailbox driver
> - Add device tree description for uart, mailbox and scmi firmware (for cl=
ock).
>
> Changes for v5:
> - Patch 5: Delete pmu-spe node which need to refine, and add it in future
> - Patch 6: Refine MAINTAINERS for all CIX SoC and adding code tree locati=
on
>
> Changes for v4:
> - Move add MAINTAINERS entry patch to the last, and add two dts files ent=
ry in it.
> - Add three Krzysztof Kozlowski's Reviewed-by Tags
> - For sky1.dtsi, makes below changes:
>         - Add ppi-partition entry for gic-v3 node, and let pmu-a520 and p=
mu-a720's interrupt entry
>         get its handle
>         - Remove gic-v3's #redistributor-regions and redistributor-stride=
 properties
>         - Change gic-v3's #interrupt-cells as 4, and change all interrupt=
 specifiers accordingly
>         - Remove "arm,no-tick-in-suspend" for timer due to global counter=
 is at always-on power domain
>         - Remove timer's clock frequency due to firmware has already set =
it
>
> Changes for v3:
> - Patch 1: Add Krzysztof Kozlowski's Acked-by Tag
> - Patch 2: Add Krzysztof Kozlowski's Reviewed-by Tag
> - Patch 6: Fix two dts coding sytle issues
>
> Changes for v2:
> - Pass dts build check with below commands:
> make O=3D$OUTKNL dt_binding_check DT_SCHEMA_FILES=3Dvendor-prefixes.yaml
> make O=3D$OUTKNL dt_binding_check DT_SCHEMA_FILES=3Darm/cix.yaml
> make O=3D$OUTKNL CHECK_DTBS=3Dy W=3D1 cix/sky1-orion-o6.dtb
> - Re-order the patch set, and move vendor-perfixes to the 1st patch.
> - Patch 4: Ordered Kconfig config entry by alpha-numerically
> - Patch 5: Corrects the Ack tag's name
> - Patch 6: see below.
> 1) Corrects the SoF tag's name
> 2) Fix several coding sytle issues
> 3) move linux,cma node to dts file
> 4) delete memory node, memory size is passed by firmware
> 5) delete uart2 node which will be added in future patches
> 6) Improve for pmu and cpu node to stands for more specific cpu model
> 7) Improve the timer node and add hypervisor virtual timer irq
>
> Fugang Duan (1):
>   arm64: Kconfig: add ARCH_CIX for cix silicons
>
> Gary Yang (1):
>   dt-bindings: clock: cix: Add CIX sky1 scmi clock id
>
> Guomin Chen (2):
>   dt-bindings: mailbox: add cix,sky1-mbox
>   mailbox: add CIX mailbox driver
>
> Peter Chen (6):
>   dt-bindings: vendor-prefixes: Add CIX Technology Group Co., Ltd.
>   dt-bindings: arm: add CIX P1 (SKY1) SoC
>   arm64: defconfig: Enable CIX SoC
>   arm64: defconfig: enable CIX mailbox
>   arm64: dts: cix: add initial CIX P1(SKY1) dts support
>   MAINTAINERS: Add CIX SoC maintainer entry
>
>  .../devicetree/bindings/arm/cix.yaml          |  26 +
>  .../bindings/mailbox/cix,sky1-mbox.yaml       |  71 ++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  MAINTAINERS                                   |  11 +
>  arch/arm64/Kconfig.platforms                  |   6 +
>  arch/arm64/boot/dts/Makefile                  |   1 +
>  arch/arm64/boot/dts/cix/Makefile              |   2 +
>  arch/arm64/boot/dts/cix/sky1-orion-o6.dts     |  39 ++
>  arch/arm64/boot/dts/cix/sky1.dtsi             | 335 ++++++++++
>  arch/arm64/configs/defconfig                  |   2 +
>  drivers/mailbox/Kconfig                       |  10 +
>  drivers/mailbox/Makefile                      |   2 +
>  drivers/mailbox/cix-mailbox.c                 | 632 ++++++++++++++++++
>  include/dt-bindings/clock/sky1-clk.h          | 279 ++++++++
>  14 files changed, 1418 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/cix.yaml
>  create mode 100644 Documentation/devicetree/bindings/mailbox/cix,sky1-mb=
ox.yaml
>  create mode 100644 arch/arm64/boot/dts/cix/Makefile
>  create mode 100644 arch/arm64/boot/dts/cix/sky1-orion-o6.dts
>  create mode 100644 arch/arm64/boot/dts/cix/sky1.dtsi
>  create mode 100644 drivers/mailbox/cix-mailbox.c
>  create mode 100644 include/dt-bindings/clock/sky1-clk.h
>
> --
> 2.25.1
>
>


