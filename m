Return-Path: <devicetree+bounces-167891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B60A0A90A7A
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 19:51:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E0391906F49
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 17:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EDA8218AB9;
	Wed, 16 Apr 2025 17:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="cPZHhQRz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2302218EB8
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 17:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744825895; cv=none; b=QD+BCd1/6IMP0ogahpfPVFWHPol4oMSXZPJvCDpOHVrgFyWQlRYdmL/uttdT/j2A0xmtbfkeYcUQCZIJEOXvOCD65loJwE4+Bi/iZP3YweWchIXKWmW/9FXUwolPQrQTjTzTdZNaJWd1Wiaks1po+U2Zja8CAteSXIDRafmxnGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744825895; c=relaxed/simple;
	bh=TBZ3+IULu0N+duqvjfzo4MbqJH8vZN2SCabf43+KQyI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HSdOv/Pwab54Vvm8dJbarxufazT94GR97Ccbjesfpte6bVDPyOSNLD89qAGNSMB4Jiy+RqTama3JUdZXx+2TCYXnhyllpZyk1o1sSQKGGStTa9rm89LafbABNbdwCvjTxrVY74TtKtq8h/H+Bd2G+cTeqbULZqK2Aj69rWr7Id8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=cPZHhQRz; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-ac2dfdf3c38so1335305466b.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 10:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744825891; x=1745430691; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7xlBoDFGfwAiK0YOXlC4SwDB4WdN2STB65PhvVY3kGQ=;
        b=cPZHhQRzzydDIk7JgVIWYDsaKXxgVTfyDSeP7v8JK8BDcHa2puEK1LNdNqVYhBKuFO
         rPWDic4nMpbi7UXdJ0mpxoF3fKY5dF0k8/9Vgu68txTMuYlwpOf7JelTsg5c9ipwlPeO
         BJepNfAEVEjQrpVfMA0TFqhm7L8CD8WEl/ZU2KFgFIJ2yegC61g2i1WbMi1wPijepvvu
         fJkh9d1Js9YEO3sWWrmlqFnhj/+6kDbMmOV2cPIFo8ByePmcmg62HQhcghoJicMoI4/7
         qqucvQxh4jWl7IWNIVanfIzUZSZmxOw5yf+ztwVNGDG2B6x7do/OYOu/JvJ1Zi0q9YeL
         F7jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744825891; x=1745430691;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7xlBoDFGfwAiK0YOXlC4SwDB4WdN2STB65PhvVY3kGQ=;
        b=FcMH6/ImC1z/1lMeDt14tfmF6M65dBoQEqTrWlmaYRs9JG1zu4QvgdATn6eG86+UZP
         0o1Jvsl1vNXhMEVMw3GMnUKo1orKLur69sxSbfQxI9xvKBoetDhhmnM6YU4i1hJWVRa+
         qTiBmuBIdjlL55/pSBGIMWTGHSNL5rOh4FZqENnwLM23Xyem75F20ZyLl/nOpLDyxKmS
         Vd1GtGDtDneO/X5V5W8mCEzuq2DYlyI6WIzCmjz+Hcv1jGLEx3VOi8H5vXck6aC4rKxF
         PaU79OIkXfmusgeNrzawEQhQo5RdF9guzVdMdtb1T9o2LtYZcm2snGa1PnqpaM4AHi3x
         kjvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGNtSNFc2DH/8dqRWZ7uKPp6FP7YT/XD0W8Rbw5b5NOysDT88uUYI2LQtHvBlWSHPPm7cm9wK/z9kD@vger.kernel.org
X-Gm-Message-State: AOJu0YwXjvh6PsuyxWTpylGpeEumv+hNSAA+xe0p0+eMx8SS2Zy3Jz5P
	q9ONLoq8SWCg++/zyFObLUNm2innMli3KWvuoz8Fo/ca5EIS3mxLWO/WYikq+yU=
X-Gm-Gg: ASbGncuxuSn3C+7wmK0TSgXAIrHtszTE9q4tMJLhSFWe1VBaVC882DV0KCwur4cEu69
	sipKa1p7mST+0a0cpcHYKKyDIhxiNwm6ICEzvOWT5/dgy2Keoexj41vB4m9kf7u9Bbz1KH8r3KP
	1w+uCFKcqFFa0x1lepF7gR3qDMF1p1/EbL/6FU9NZoQSfD/VSuDu2TUOphpoepAitO8Zk4UucKR
	vz8C4OCHu1uRNld4SyYuZH+fplhrkxOobceYr+OjBwXMxcSEoBDYQ7cpXi8265oTEeQk+O2cV2i
	mpIKaIOua880jLp0JsWVrY82awBnLcQlH2Y37pTprwUfASYZhwoiuShoniplItNzUsfFCdc=
X-Google-Smtp-Source: AGHT+IG8ocY2R4u3MSMUM8wLm0cAOVd+8ApQg05RyBRV3UoKUWOsni8cwFhkPXwWINMuR8awGmVJfQ==
X-Received: by 2002:a17:907:3d0e:b0:ac3:853e:4345 with SMTP id a640c23a62f3a-acb42ac181emr250869466b.45.1744825891181;
        Wed, 16 Apr 2025 10:51:31 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cde06f8sm167165366b.61.2025.04.16.10.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 10:51:30 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Wed, 16 Apr 2025 19:52:54 +0200
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com
Subject: Re: [PATCH v8 10/13] arm64: dts: Add overlay for RP1 device
Message-ID: <Z__udrXkRz-5DSB6@apocalypse>
References: <cover.1742418429.git.andrea.porta@suse.com>
 <ab9ab3536baf5fdf6016f2a01044f00034189291.1742418429.git.andrea.porta@suse.com>
 <abb3405a-45fb-4425-a817-89a03b0c16c4@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abb3405a-45fb-4425-a817-89a03b0c16c4@gmx.net>

Hi Stefan,

On 13:38 Mon 14 Apr     , Stefan Wahren wrote:
> Hi Andrea,
> 
> just a nit. Could you please add "broadcom:" to the subject?

Consider it done.

Many thanks,
Andrea

> 
> Am 19.03.25 um 22:52 schrieb Andrea della Porta:
> > Define the RP1 node in an overlay. The inclusion tree is
> > as follow (the arrow points to the includer):
> > 
> >                        rp1.dtso
> >                            ^
> >                            |
> > rp1-common.dtsi ----> rp1-nexus.dtsi
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> > This patch can be considered optional, since it fills just the second
> > scenario as detailed in [1], which is the RP1 DT node loaded from a dtb
> > overlay by the FW at early boot stage.
> > This may be useful for debug purpose, but as such not strictly necessary.
> > 
> > [1] https://lore.kernel.org/all/CAMEGJJ0f4YUgdWBhxvQ_dquZHztve9KO7pvQjoDWJ3=zd3cgcg@mail.gmail.com/#t
> > ---
> >   arch/arm64/boot/dts/broadcom/Makefile |  3 ++-
> >   arch/arm64/boot/dts/broadcom/rp1.dtso | 11 +++++++++++
> >   2 files changed, 13 insertions(+), 1 deletion(-)
> >   create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso
> > 
> > diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
> > index 4836c6da5bee..58293f9c16ab 100644
> > --- a/arch/arm64/boot/dts/broadcom/Makefile
> > +++ b/arch/arm64/boot/dts/broadcom/Makefile
> > @@ -13,7 +13,8 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
> >   			      bcm2837-rpi-3-b.dtb \
> >   			      bcm2837-rpi-3-b-plus.dtb \
> >   			      bcm2837-rpi-cm3-io3.dtb \
> > -			      bcm2837-rpi-zero-2-w.dtb
> > +			      bcm2837-rpi-zero-2-w.dtb \
> > +			      rp1.dtbo
> >   subdir-y	+= bcmbca
> >   subdir-y	+= northstar2
> > diff --git a/arch/arm64/boot/dts/broadcom/rp1.dtso b/arch/arm64/boot/dts/broadcom/rp1.dtso
> > new file mode 100644
> > index 000000000000..ab4f146d22c0
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/broadcom/rp1.dtso
> > @@ -0,0 +1,11 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +&pcie2 {
> > +	#address-cells = <3>;
> > +	#size-cells = <2>;
> > +
> > +	#include "rp1-nexus.dtsi"
> > +};
> 

