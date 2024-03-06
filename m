Return-Path: <devicetree+bounces-48684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D45718730EB
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:39:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04F081C23F65
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BCFA5D75D;
	Wed,  6 Mar 2024 08:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hptdLoP1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE795D74F
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 08:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709714374; cv=none; b=o0JdCRCxQsGjxiNb897CHK0bx6peiYPCCKgnFYEX9ajUSXUxPR76BsBv+XHWJ94f71Zsh7LNE3V2WINytohldGoEAXORuE7PhSv5QHA0kq8a2TGZK7yld5HZLhi0P/fegNs1r7LPAcFFAfCjtzSOTLA42/2TNmOGwmYsbm5O5FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709714374; c=relaxed/simple;
	bh=QlH3Wow2rZzvmp6ckeHeqUHMD2Vdr13Mh65ALOXij+A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GhTAyIRwIMJ6EYg/3vrUCTZC+sBwZtuy1Y7eR+QF5lBATeoU6qzm490PgXm9RPgzMT9+jOGnq1m9uJj1DRvtqdSJw3wFCrmMgpinoofHMpXI+dzGLbGiVZ/YfctXpAtXiEQxZbkIEcxCVR+GnzDPDrCmINsTdrN2BAaLHYaX7Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hptdLoP1; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1dd10a37d68so28293685ad.2
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 00:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709714372; x=1710319172; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OLL4vtiaVuob8hMTl3EPZBu7b8uDGWEMU5ByLQSiHn4=;
        b=hptdLoP1UShB2ofMJ7Gz6+WeW+nuQOGGp0XiOF9jsDU2i9pH+z/tkz4d5E+YkwRqAu
         b9fTWJ0xwHBff+HbJakf29RuyBMq21vyO82o9iEMK1kz/t555NUjlVWAjrf/2OT/FIJj
         xbv/2XtmkJZXsdndDd1Ji23JEyZQH1IqroTh4ktT9cU+n2cbZBOrKdZB7SK4Jc9Vcmyf
         DYKeDCx6YQeyKdevF8Blf/wwbFxd9LbwQcLOBz0jNp1zWPN8nnkdlSVGlgeJxbP95mar
         W0ksywNPNg2YAwPjYA0gnNFK5e0CnqDySogH1D6dWttVNCGaCgpZZl1UszNN/DrUoN1W
         tLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709714372; x=1710319172;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OLL4vtiaVuob8hMTl3EPZBu7b8uDGWEMU5ByLQSiHn4=;
        b=jo3G0Gpismz/M8U0XW5AeWQJJ4g6gAJf1yUAehw/F+UEXb/mTMvwEM4ypBdra5jIKD
         RbLgfaDOlWpMVeaf5j806kTc7R3wCCCWApssE/MaQtdPbPRb1Fq2QA26gjhsZGhQfy+R
         AIuwkIKeexssGvZef7IfJ+YADSvZcKH8XwXmHRr04v8XCzPecjrxCdTFsP3fZjMxdeQ1
         /TLJGdSOZHpNaGgXjPr68zBZdreEoecU7D1884DD8xij0wPphX2P1Fyd/CxOAUYNQRRZ
         Nqv6Cm7kv6hQYtj4WT/3VpxBqd5zli0jkq0YTIN51FGYaYMplID1s2XiPoeL6ZV20vsH
         BaSw==
X-Forwarded-Encrypted: i=1; AJvYcCXDxhKzk/H3ehILGj3IQ0uHH3fQxvgDrdaPyZ4l3onqcUix3iatvxuu+xsdDWeyMoAqR+ee9VC8vM6nDloWOHvRpGkc3Phy5FjMRA==
X-Gm-Message-State: AOJu0Yzz6mOpSi6L/9erBcG8dc9/eu7/M7051EkZ7G9z8xLuzJ1/HcEt
	cWthYxZ4vu60bYfYW0xPSPneRogLl/OKvMt7l0k5vuvON/xZpcwx4vlLr8NVEQ==
X-Google-Smtp-Source: AGHT+IEKcpq6WpONUJLlWmUdwNrA2CS8okOHDA4GD4M4FYuHGBHkQTrblblynQVMeIuI6ij6U423FQ==
X-Received: by 2002:a17:902:7845:b0:1dc:b382:da8d with SMTP id e5-20020a170902784500b001dcb382da8dmr3856250pln.38.1709714371623;
        Wed, 06 Mar 2024 00:39:31 -0800 (PST)
Received: from thinkpad ([117.248.1.194])
        by smtp.gmail.com with ESMTPSA id u9-20020a170902e80900b001d9a42f6183sm11962904plg.45.2024.03.06.00.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 00:39:31 -0800 (PST)
Date: Wed, 6 Mar 2024 14:09:25 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/10] arm64: dts: qcom: sc8280xp: PCIe fixes and
 GICv3 ITS enable
Message-ID: <20240306083925.GB4129@thinkpad>
References: <20240305081105.11912-1-johan+linaro@kernel.org>
 <20240306063302.GA4129@thinkpad>
 <ZegZMNWxCnLbHDxP@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZegZMNWxCnLbHDxP@hovoldconsulting.com>

On Wed, Mar 06, 2024 at 08:20:16AM +0100, Johan Hovold wrote:
> On Wed, Mar 06, 2024 at 12:03:02PM +0530, Manivannan Sadhasivam wrote:
> > On Tue, Mar 05, 2024 at 09:10:55AM +0100, Johan Hovold wrote:
> > > This series addresses a few problems with the sc8280xp PCIe
> > > implementation.
> > > 
> > > The DWC PCIe controller can either use its internal MSI controller or an
> > > external one such as the GICv3 ITS. Enabling the latter allows for
> > > assigning affinity to individual interrupts, but results in a large
> > > amount of Correctable Errors being logged on both the Lenovo ThinkPad
> > > X13s and the sc8280xp-crd reference design.
> > > 
> > > It turns out that these errors are always generated, but for some yet to
> > > be determined reason, the AER interrupts are never received when using
> > > the internal MSI controller, which makes the link errors harder to
> > > notice.
> 
> > > Enabling AER error reporting on sc8280xp could similarly also reveal
> > > existing problems with the related sa8295p and sa8540p platforms as they
> > > share the base dtsi.
> > > 
> > > After discussing this with Bjorn Andersson at Qualcomm we have decided
> > > to go ahead and disable L0s for all controllers on the CRD and the
> > > X13s.
>  
> > Just received confirmation from Qcom that L0s is not supported for any of the
> > PCIe instances in sc8280xp (and its derivatives). Please move the property to
> > SoC dtsi.
> 
> Ok, thanks for confirming. But then the devicetree property is not the
> right way to handle this, and we should disable L0s based on the
> compatible string instead.
> 

Hmm. I checked further and got the info that there is no change in the IP, but
the PHY sequence is not tuned correctly for L0s (as I suspected earlier). So
there will be AERs when L0s is enabled on any controller instance. And there
will be no updated PHY sequence in the future also for this chipset.

So yeah, let's disable it in the driver instead.

> > > As we are now at 6.8-rc7, I've rebased this series on the Qualcomm PCIe
> > > binding rework in linux-next so that the whole series can be merged for
> > > 6.9 (the 'aspm-no-l0s' support and devicetree fixes are all marked for
> > > stable backport anyway).
> 
> I'll respin the series. Looks like we've already missed the chance to
> enable ITS in 6.9 anyway.
> 

Sounds good, thanks!

- Mani

-- 
மணிவண்ணன் சதாசிவம்

