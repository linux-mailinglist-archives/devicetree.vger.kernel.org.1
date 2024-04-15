Return-Path: <devicetree+bounces-59316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 871A38A4ADD
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 10:53:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E75DA1F21F97
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 08:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69A1B3B18D;
	Mon, 15 Apr 2024 08:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="SeFsdH17"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD73D3A29A
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 08:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713171188; cv=none; b=bVhKhaBejBAwA8ZVQ2z5Ieyr6qu5QAMVzisNFZrEKPO36j8hThVhs3i+fKNg95qb/PSl2nDSV0sjwt27A1kqmaHZQHceNVTW1tM2/N5wT58cFpq+zaGobu6aopA5z+vs5TOX4jBPAzQurgiofY8B5btCa6SBm1B5j42GZXwxjZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713171188; c=relaxed/simple;
	bh=bnWlog0y4bN4WZfNS47LmbCRbE8trcNL1TvxiAUYcAo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oCU+P/9YtYGA9c0Xp/U/voPGaOeTNYXU9bKflXcT/NaM5hRAsWaYUYdq0N2iI63b6MESj8UqyNO9U94Fi4vfaz4SKaPdmYXihTNOKAgK0ThIBKnozp4q2/sqnbs5aPFslKJaFjal0oA8tCITYUp9/iW6CWjoMnQ1VIhSZRW0V6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=SeFsdH17; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dcd9e34430cso3125291276.1
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 01:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1713171185; x=1713775985; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZZ1xbbcbi2PHmTU6OF8vjn6o1DKOJxbx1zIcDvksvVQ=;
        b=SeFsdH17e1W9yTjRQTRTAiBgLmlZGxcMEUE3eZGSaWG212MDmRuYMxZAig42hmklPx
         nfV7VcHB+oti6nSi/aEAsiZxKNBnrmIn46SayLGW2oOAQdr37k5NxigNWyEmqNCTbkML
         zSTvFLpoXeUy2L0hsz/fqUGVrKzd2Mp7vXjI4IJAe+wcU5es4D1lq2ZJZ0Sx6m8PJ7Av
         +oBPGy8zNiQizNStq9LRuCzg1t4ENNrw8BSxhMXqfunZo2Lc/7w12/KaLVMItOyDS0/Z
         5vDLJM5YOTMI26fuua+LXC/YXiQXy3XbFtyNico3mm6idmJByjNmJzrrYwRLc7nvHSA/
         gYZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713171185; x=1713775985;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZZ1xbbcbi2PHmTU6OF8vjn6o1DKOJxbx1zIcDvksvVQ=;
        b=DyUYpSMISTBPGSqd26sMP7G8tgJWO10SexxNO507J95Dx7sUM1eh3k1h7T01BxD2WN
         CMQO/b0XJSYb/+gV6ThtgIBCEtdEwBE2xFYktTEK1HwIbfCf9D41R2xrxplvKAnlAi24
         RMC1keIHs5R0a9we9bSivsUhYw8XEhh4JykUGKTQVawKuVeS7uac/xGzJntTZkLL06Gh
         0yQLhGL5XZ+Kp873soJ69ubTOW7UK9VMU6l8u+6srvotTBCyF/0m/NIR7Le6ye43W9a7
         PapvASWGJTb/BVYtnLfMao3zsbC0bzjZK07QNTD0bqGp+Ff3lPwdRF6LWuhlGyb+5ppH
         IwmQ==
X-Forwarded-Encrypted: i=1; AJvYcCV52fKMw/5IKLtfl/cI2fUkEZztPddE9yef0dJKG5niP4mjwhOhqvOQ3QcO3Gaw5Z7BP7PzPuxd2tBEx1eiOFfQf0i08hpSYFT7Nw==
X-Gm-Message-State: AOJu0YxP6DceYFjS1U3vt0Q7mYhdzAHvslj0zzYZ7o2soBOiUbA2pi5t
	RYdoFflF5TVqQyCpzOH95ku8nWQWve8CcFuOS4pSU5P/mEPIQ65tCvexxQEBHFyLtIh7Ejsm7Hs
	z7DUgV4RPJbozRc72iiqT7UagqvLP0njvWEDPyQ==
X-Google-Smtp-Source: AGHT+IFJbL090k1ujMdhoHBuRAuqn8RndPzBOrxsylJHE/9nowfFnHodh0UXrHCjiHc2lZ6BeIyZaM4TTcpqN8OFnWc=
X-Received: by 2002:a25:9e05:0:b0:dcc:99b6:830b with SMTP id
 m5-20020a259e05000000b00dcc99b6830bmr8838308ybq.19.1713171185683; Mon, 15 Apr
 2024 01:53:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1713036964.git.andrea.porta@suse.com> <0ab5a768d686cb634f7144da266c9246e9e90cb4.1713036964.git.andrea.porta@suse.com>
 <d7b884dd-9b70-41c3-ac2a-66b54c26d08a@gmx.net>
In-Reply-To: <d7b884dd-9b70-41c3-ac2a-66b54c26d08a@gmx.net>
From: Phil Elwell <phil@raspberrypi.com>
Date: Mon, 15 Apr 2024 09:52:54 +0100
Message-ID: <CAMEGJJ2R-WEqs+LgqMwDQJ_QHF840RYAqVGkbWxBs70anv6M4w@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: broadcom: Add support for BCM2712
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Andrea della Porta <andrea.porta@suse.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Jonathan Bell <jonathan@raspberrypi.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-kernel@vger.kernel.org, 
	Al Cooper <alcooperx@gmail.com>, linux-mmc@vger.kernel.org, 
	Kamal Dasu <kamal.dasu@broadcom.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Stefan,


On Mon, 15 Apr 2024 at 09:20, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Phil,
>
> Am 14.04.24 um 00:14 schrieb Andrea della Porta:
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >   arch/arm64/boot/dts/broadcom/Makefile         |   1 +
> >   .../boot/dts/broadcom/bcm2712-rpi-5-b.dts     | 313 +++++++
> >   arch/arm64/boot/dts/broadcom/bcm2712-rpi.dtsi |  81 ++
> >   arch/arm64/boot/dts/broadcom/bcm2712.dtsi     | 841 ++++++++++++++++++
> >   4 files changed, 1236 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> >   create mode 100644 arch/arm64/boot/dts/broadcom/bcm2712-rpi.dtsi
> >   create mode 100644 arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
> > index 8b4591ddd27c..92565e9781ad 100644
> > --- a/arch/arm64/boot/dts/broadcom/Makefile
> > +++ b/arch/arm64/boot/dts/broadcom/Makefile
> > @@ -6,6 +6,7 @@ DTC_FLAGS := -@
> >   dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
> >                             bcm2711-rpi-4-b.dtb \
> >                             bcm2711-rpi-cm4-io.dtb \
> > +                           bcm2712-rpi-5-b.dtb \
> >                             bcm2837-rpi-3-a-plus.dtb \
> >                             bcm2837-rpi-3-b.dtb \
> >                             bcm2837-rpi-3-b-plus.dtb \
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > new file mode 100644
> > index 000000000000..2ce180a54e5b
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > @@ -0,0 +1,313 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/pwm/pwm.h>
> > +#include <dt-bindings/reset/raspberrypi,firmware-reset.h>
> > +
> > +#define spi0 _spi0
> > +#define uart0 _uart0
> > +
> > +#include "bcm2712.dtsi"
> > +
> > +#undef spi0
> > +#undef uart0
> > +
> > +/ {
> > +     compatible = "raspberrypi,5-model-b", "brcm,bcm2712";
> > +     model = "Raspberry Pi 5";
> > +
> >
> according to this downstream commit [1] it's just called "Raspberry Pi
> 5" without Model B, but the filename and the compatible says something
> different. Is there still a chance to get this consistent or is it too
> late because the firmware expect the compatible?
>
> [1] -
> https://github.com/raspberrypi/linux/commit/99e359d2f2da2c820fd2a30b1ad08b32c9549adb

Nothing cares about the compatible string, but the product name was
changed too late for the firmware, which expects the current DTB file
name. I'm happy with the naming as it stands, since we use Pi 4 to
refer to all the BCM2711-based devices, and Pi 5 can include CM5.

Phil

