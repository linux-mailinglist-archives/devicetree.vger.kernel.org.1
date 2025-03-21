Return-Path: <devicetree+bounces-159594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81551A6B7E4
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 10:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB0681899064
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 09:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B081F1527;
	Fri, 21 Mar 2025 09:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="AVcq+OYW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5660E1F0E34
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 09:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742550212; cv=none; b=QbX/3ZQIb0rv2lI/IFY95rpa11ILxdjdV4vHrRlyYZAJnr5RKpkPO2KcZB2qTWnN7uaYYD1ZUNBzXlOZR5nymaVNxZ9VeGVbFpU8jaCml35daeQhfV9zGVHdh/oP8a0aHtgOvyteHQFvpsEfnQ1yMV1juBxeZ03IN32fFQFrj8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742550212; c=relaxed/simple;
	bh=DRBplq8aKI0ku9BkKb564kLsXB+P8qItF8OLlfaPMoI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OMwQZYlBYd9/OSOX7acfBwjSsWXcd0FWaTnzGLwnkMgU5HqpV0OwVyCo3hSGglyHpUGVq4Dhm+A3aMYlVWL/6X8SKTfcCHjebySsZG/Yuh3GTDRNJYryjcqQhEKBmWNqz2KevNsEBrVDyd/arizsMKMYQwPTawEzLlu3fcwgr08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=AVcq+OYW; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5499c5d9691so1938138e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 02:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1742550207; x=1743155007; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CgGaJaPa/jEPScVXsjWC4390D+TFpvglNfRjMg/X9O0=;
        b=AVcq+OYWi/89Ti7sWHSrHWkZa3upXFtsa/m5545IZ4yJYvzOiwML6YtJXaQ9EJzdB+
         LyBxyAlLqMv8bgggp9x3nOyO5bOb/nwMYNO6x0p/z3TIjLIWWXlnCiZE/7ZVwvMiaybg
         1GSRQamA+vlciqfq+Cr8e8OplikPoSG2nt8WrAZoTA5OOsqlko7aL+UAluwyzKlSiPPo
         zXQ3XDQklNMqpilNXE51Nw7HISdlPQ6OQXNTaR8Jpr+FZ/O6h0i6G8rkzcOHM/ogLlRm
         3VvCOfXLq/e+YNv0rfJ9ZbKCETLGzRdQ4GOJwjHM1C6XZUMCpxkg9qmPCcbRr0wHrhpQ
         OdaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742550207; x=1743155007;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CgGaJaPa/jEPScVXsjWC4390D+TFpvglNfRjMg/X9O0=;
        b=dNaYFPeYQb4rD4pmMlkUccW4ilojNtVicmGIPCHnubIGab84/K9hB5o6tMCkNuT9G1
         QR4bamloJncaGU8QoQhb/ixqSbamwnJMYINbWsiM8px2chxYIHb9LFpKL2Qf2pSr+PVq
         gEO7dBizpei+yplXhUCbTv0WOpJ87qSLgNsM0mX9iDut1wF+ksuWJzZTRDZj9c4zirnU
         bOlNmgTR5N6lvEZOYTo4Qjeww3j0Kgs1NALzxcT+P+baXXvaYSsXDx0xuelrFTPhDseM
         qLe5RSQ1HPYWBLLzbx0SK9Q8KCHaUifIvJtX3o02eDhTdfpbC7HkfW0u9a3NyK/gBJa+
         Ihng==
X-Forwarded-Encrypted: i=1; AJvYcCVC+gKONoIdOtI4rVcD3+F8W5QK03ervd37BsiJphaTDj54vgdxfgqoZ4NfXpRRXYriv9eCwTdASBRi@vger.kernel.org
X-Gm-Message-State: AOJu0Yzshpt7S7v0h6fjD2hahlN5kRi34OAomQmf/ZPeC01z25mT4t+L
	v8ezcg+u/B5rsMmZ/MRCvlS32zryK0X1IaQzEp+pPGZvXUi/PRhVGZDCyg4JmkFhId51J0n52e6
	U18cCQrrOe2wFpY6xgGeq4UtRx+gCOBcxWL7hew==
X-Gm-Gg: ASbGncv5YqtVYRX6t1xfW9ysKCs0ym4tvPHdjKbMrCmjnZIBLiAzp4oesGVyfWBtN6V
	MCvP95gSes2QNPfHDgFWwRGX+0m24evewNPFHF0Ii4YlLGgXy4ciEqRQRw4ndUIfZ+RWh+kXQa8
	qoE5/JfZWU4dy17ezs2sGQzbtsQ5mKAreFcgwvimbRdUKeS2wP0H7HzPkRDg==
X-Google-Smtp-Source: AGHT+IEDdJoaJq6teyJiW13G+bIfvvL5/3c4aVZ249NYoi9wkGLc1z6wYCrInzpYKLkQcy/ueE7DfYIIW3z1gg4d79A=
X-Received: by 2002:a05:6512:1314:b0:54a:cbfb:b62e with SMTP id
 2adb3069b0e04-54ad64f6791mr932986e87.35.1742550207212; Fri, 21 Mar 2025
 02:43:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320055502.274849-1-quic_wenbyao@quicinc.com>
 <20250320055502.274849-2-quic_wenbyao@quicinc.com> <694b6638-92b2-4ac0-a175-bd29aea6cba9@kernel.org>
In-Reply-To: <694b6638-92b2-4ac0-a175-bd29aea6cba9@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 21 Mar 2025 10:43:16 +0100
X-Gm-Features: AQ5f1Jo9naRtRxBQvHi76DCGdYFDD5Qh6BXFBrW4RyaSHcjfJlIGHOXa5xvXdjg
Message-ID: <CAMRc=MfZrRp=VuEOLuMY_04JdyRrD+joGL56LwRFQ-+D-8Z_6w@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] arm64: defconfig: enable PCI Power Control for PCIe3
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, andersson@kernel.org, konradybcio@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org, 
	quic_qianyu@quicinc.com, sfr@canb.auug.org.au, 
	linux-arm-kernel@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 21, 2025 at 8:37=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 20/03/2025 06:55, Wenbin Yao wrote:
> > From: Qiang Yu <quic_qianyu@quicinc.com>
> >
> > Enable the pwrctrl driver, which is utilized to manage the power suppli=
es
> > of the devices connected to the PCI slots. This ensures that the voltag=
e
> > rails of the x8 PCI slots on the X1E80100 - QCP can be correctly turned
> > on/off if they are described under PCIe port device tree node.
> >
> > Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfi=
g
> > index 85ec2fba1..de86d1121 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -245,6 +245,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=3Dy
> >  CONFIG_PCI_ENDPOINT=3Dy
> >  CONFIG_PCI_ENDPOINT_CONFIGFS=3Dy
> >  CONFIG_PCI_EPF_TEST=3Dm
> > +CONFIG_PCI_PWRCTL_SLOT=3Dy
> Bartosz,
>
> Wasn't the intention to select it the same way as PCI_PWRCTL_PWRSEQ is
> selected?
>
> Best regards,
> Krzysztof
>

For sure. I would expect there to be something like:

select PCI_PWRCTL_SLOT if ARCH_QCOM

in Kconfig and nothing in defconfig.

Bartosz

