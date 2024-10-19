Return-Path: <devicetree+bounces-113214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F8A9A4EB5
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 16:38:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A449AB20ADD
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 14:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A09149C4F;
	Sat, 19 Oct 2024 14:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tfx5eoxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F5973477
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 14:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729348712; cv=none; b=od8QWkzePRAIXIA8kdAgFpe4sH6UaCNzmnIGil7vT6yGxxl4tr5Dre9HzlKrLnzDpWADNgZHX7EwsTtwYRuPu9WFOkJE+I7HdykqzU1xtCFS2tcG+XbHZxIUBTQ113ixJR/wJ0a4B4rd8KnmZ+qhgBtYs4Lj2SgIz/hzpr3uyGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729348712; c=relaxed/simple;
	bh=uSr8iW8u072v5rIzh2Xvj2FyMIHzFYehI3ht9DlONgY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SejqcRE5wTbJYVMLLKy8eF5F7aIKoIZP32aXpYoygD048zCYO5/gCfyK7FoD2lC4fk9vDEiv3+uNQy0TiQZ9sNEhSnz/N5ew8mePvqtEkmu1/v8JXIC+Wi1aagsbyrkWiGN2D/8z1tzeM+tGvgroIzevgxp7HvHsY16ZUo3M0nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tfx5eoxT; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539fb49c64aso4433026e87.0
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 07:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729348708; x=1729953508; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mZ3yQ1UiurVnRgduM5emLowFyOjkjJUfniSP6diFGgE=;
        b=Tfx5eoxTgECFR9oPkbucJ2Z1Q3b57CxDo6YS6+NfBn/zf9qBUQ26uWBsiA65gPsKas
         1bXmP8lRTspgVwxAKa8muq0ibKTVsTQWtCArFKHfnIUXvSooiCHBFpFEZEgvThdSeuky
         LpZMnSJskZ+cpKMvooRY7OBGi7jeYziKWS4uQPvKwszeNLpkXOl2Nun+Hy+cBH+jTVn4
         n4wv2HYBLw5IYrDTivk/SgvriFD27O9jeiUZNB0wl/fFgHFI3NVvTHU6c3GfnZTwzmE2
         76KhOOBhVi1+3X+COGkG3oOE2JGgIE2qPV6plHlRmsYpyN6xFBp36fAWNVz9MYdCj2bc
         4+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729348708; x=1729953508;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mZ3yQ1UiurVnRgduM5emLowFyOjkjJUfniSP6diFGgE=;
        b=XP/obPGRA79KI2F5LFa8NAA4PPRcRoEVewMWstuZKDxJMkypsWrMqHkY+A/6pwgtlZ
         +Q3fYV8dCeboaAoui3SKShy35q3MVGuCLO2DPISviRY+yOf6+Nhk+aPAcIxX6JJhxFIK
         ARIwHNO3ttYC9cRn394m2vl5mQFBVEY2ccL5X4hrh/+m5R0nPm+3YkFQGg3tjinDssCP
         SD0ii4+IUoUYXqGvvm+QR/t2uNJkIA3U4d4bc2dkTABXhzEtAnD2G6vva/NP2J3qViPC
         O/C7fTHV9Fhq5rJZRTZERBJCyFkohOMXqmrTa69Pz+qGgtgGpXFGvGhIPJjKOollDVYr
         imwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWI1dhZrDlWwpM8fgRDqUjWT/8aBfTj73GSRAwZJA5CDrEG/ZGp1WB77HNwd1eVG8QmBqHxhgX500+z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2NGSLbHp7+JCTWq88yg3KwZ7OEVHLzxwCUrYObNgDtYcwAeFU
	Ava37f3GjgXPRxyQ+jOESPUeTgrWRkdL9ZB451DPhi8n1KpNO2yQf+rlNrx763c=
X-Google-Smtp-Source: AGHT+IGnt7E9LzAEkP0FypPLsT5f0JfGLMaOFtDn02NOfEsnFzpNbn/3gWRj0jSNp1qcIMjsdz4/OQ==
X-Received: by 2002:a05:6512:350f:b0:536:55cc:963e with SMTP id 2adb3069b0e04-53a154ca15bmr3965578e87.44.1729348708487;
        Sat, 19 Oct 2024 07:38:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151f0b42sm543903e87.168.2024.10.19.07.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 07:38:28 -0700 (PDT)
Date: Sat, 19 Oct 2024 17:38:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Lee Jones <lee@kernel.org>, Amit Kucheria <amitk@kernel.org>, 
	Thara Gopinath <thara.gopinath@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, iommu@lists.linux.dev
Subject: Re: [PATCH RFC 14/14] arm64: dts: qcom: Add Xiaomi Redmi 5A
Message-ID: <jj4ky6uuidv3rdjl7q4ehe7cdgcjxtnmtcufmy462gznkjiex2@pptv6aufsudj>
References: <20241019-msm8917-v1-0-f1f3ca1d88e5@mainlining.org>
 <20241019-msm8917-v1-14-f1f3ca1d88e5@mainlining.org>
 <pyr3t3kcpjj5zor226fwembjsbpp5zh7mpe2a3bqmwnbqccj7h@a55efscym3s7>
 <46f7b167220a7d54242e9457d00d67e2@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <46f7b167220a7d54242e9457d00d67e2@mainlining.org>

On Sat, Oct 19, 2024 at 03:57:54PM +0200, barnabas.czeman@mainlining.org wrote:
> On 2024-10-19 15:48, Dmitry Baryshkov wrote:
> > On Sat, Oct 19, 2024 at 01:50:51PM +0200, Barnab�s Cz�m�n wrote:
> > > Add initial support for Xiaomi Redmi 5A (riva).
> > > 
> > > Signed-off-by: Barnab�s Cz�m�n <barnabas.czeman@mainlining.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/Makefile                |   1 +
> > >  arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts | 295
> > > +++++++++++++++++++++++
> > >  2 files changed, 296 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/Makefile
> > > b/arch/arm64/boot/dts/qcom/Makefile
> > > index 065bb19481c16db2affd291826d420c83a89c52a..79add0e07d8a5f3362d70b0aaaaa9b8c48e31239
> > > 100644
> > > --- a/arch/arm64/boot/dts/qcom/Makefile
> > > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > > @@ -59,6 +59,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+=
> > > msm8916-wingtech-wt86518.dtb
> > >  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-wingtech-wt86528.dtb
> > >  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-wingtech-wt88047.dtb
> > >  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-yiming-uz801v3.dtb
> > > +dtb-$(CONFIG_ARCH_QCOM)	+= msm8917-xiaomi-riva.dtb
> > >  dtb-$(CONFIG_ARCH_QCOM)	+= msm8929-wingtech-wt82918hd.dtb
> > >  dtb-$(CONFIG_ARCH_QCOM)	+= msm8939-huawei-kiwi.dtb
> > >  dtb-$(CONFIG_ARCH_QCOM)	+= msm8939-longcheer-l9100.dtb
> > > diff --git a/arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts
> > > b/arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts
> > > new file mode 100644
> > > index 0000000000000000000000000000000000000000..7553f73603fc87797b0d424a2af6f2da65c90f5f
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts
> > > @@ -0,0 +1,295 @@
> > > +// SPDX-License-Identifier: BSD-3-Clause
> > > +/*
> > > + * Copyright (c) 2023, Barnabas Czeman
> > > + */
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include <dt-bindings/arm/qcom,ids.h>
> > > +#include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/input/linux-event-codes.h>
> > > +#include <dt-bindings/leds/common.h>
> > > +#include "msm8917.dtsi"
> > > +#include "pm8937.dtsi"
> > > +
> > > +/ {
> > > +	model = "Xiaomi Redmi 5A (riva)";
> > > +	compatible = "xiaomi,riva", "qcom,msm8917";
> > > +	chassis-type = "handset";
> > > +
> > > +	qcom,msm-id = <QCOM_ID_MSM8917 0>;
> > > +	qcom,board-id = <0x1000b 2>, <0x2000b 2>;
> > 
> > Is this required to boot?
> Yes

Hmm, did you verify the dts against DT bindings? I think you need to fix
them.


-- 
With best wishes
Dmitry

