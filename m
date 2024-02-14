Return-Path: <devicetree+bounces-41538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 418068542D8
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 07:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C857B2527D
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 06:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C79310A36;
	Wed, 14 Feb 2024 06:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eq6AOaj9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B50C2FE
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 06:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707892563; cv=none; b=mZx7knaQtfkC7mMqLn9Rws65pM0+L/k9xSL50ybf+Maa2yo9nV7alw+oOsY1s9u2lj046BOLocuu9g6BfMHii/UI1PzD2aBOTmNyZUjT5natscfq0UQ7L7w1U0wcA6lrd2MXJEGs4ex5PQcUZRW1Xeg5TlNDzt//WCOpNFQsWmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707892563; c=relaxed/simple;
	bh=S0n0jL6+mRYRMYvMwHnUkELzPpbyDPaR1URF6rkE1lQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p/n2/DKHpi26l7ag1en+pzShuXd68B/SpfV7tdso1/rIdRr5pyT5JweCU37DcreXJFsKBzaG4c+UyQ7nIcyQKg6w0D7Eu9WrfzI1gzXq/+M1rUTyPUorf7y9kX4peJ0+FnbunEywzCUeF8th0kFAXfFbhts1+G6EzZWZ0U/Af5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eq6AOaj9; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-5d8df34835aso339005a12.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 22:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707892561; x=1708497361; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QGcxOyI3gqRHqjaeGgz6cLsEEU9nKKLG3Qcn8Q9LRis=;
        b=eq6AOaj9OPoWEtHfaR+s6/ZYiKHPPsLCOMfZsKHuupE2/tFbjaE71L4zUq3e3o+bT6
         MCfflegwlpOXAMMGYTFaRZNxOMIxxVVPt5qanA2uIsxZlwUV0X0Ju8E17zpZug/+a79H
         1xY9EIPQ291ms549zlTN0z6bfQiLXAWxlMN6Lx78g+GXUcRrNGgLVRIIxlkJntEC6Ymt
         OGKaFrgof2GLlATs94EjhU0uPydQZCXQ92obUS/FVVpwBDDu/PWfWHeuFPmrnFN5ZUyX
         YTW3HmJH1lBfkBSPor/YP7SG5XggbWldg1l4FZGXD+lihR2q1kU4JIdbXN3ZoIXtd/iJ
         5e0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707892561; x=1708497361;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QGcxOyI3gqRHqjaeGgz6cLsEEU9nKKLG3Qcn8Q9LRis=;
        b=LaWxflIB9fbw0gk9fqzojChxGYAbMU5EtOEyvcWLOrif8VylOiwEnj7ft8dY1YJnAi
         7v9RukltAePlV48O9FICzUpJsnggeaq4p5MrgYehbd5+kSmeTxxNPramgffwghsVLNdJ
         k4VAYj1cG36izMP0nqJengckRzWeEo9dL1g9fsa4UurRnh9y391filhyZq/Kx6hGM+ow
         rHpuVXUQUIMn0J9Z+IFPJfIEew/QUalf6Qpmq32zcHtIwIN/WrGe2fIaTvXjyfHzvjz4
         sS9dXNwwv5h3qmFOl64jnh2pT6bQ9eJlPr1k0WKottAZ6DZgDCdNkfLKlWze7uIoAFqQ
         oXDA==
X-Forwarded-Encrypted: i=1; AJvYcCUsL8J81tJ3FSJwtoy0NCvtVDr2yubea2WdlWiwgj/JEq7nS/PKmBFJNJROYTEJydAkNfpg6YBz1azuktKSPpXwcr59dTEPphH2Bw==
X-Gm-Message-State: AOJu0YxnA9KL0mUpKfM4/uz/rQ21d9vWoTlBDH7KpoYVnEl60QNeskTx
	zJEiYHs9EVUIzuncVWzyBIKfS/c3N6+8x6/jpNyVEDXbqCzqg7vw2fmSVOZ7EQ==
X-Google-Smtp-Source: AGHT+IEaCZgvXP49NlvjV+Z1BkxQbusXcCEQreHzCFLxhaXcni5m5Fu/GlhKKaqiQHs2Wc0a1/f5Fg==
X-Received: by 2002:a17:90a:df86:b0:296:66a4:2e6c with SMTP id p6-20020a17090adf8600b0029666a42e6cmr1576120pjv.23.1707892560535;
        Tue, 13 Feb 2024 22:36:00 -0800 (PST)
Received: from thinkpad ([103.28.246.124])
        by smtp.gmail.com with ESMTPSA id d30-20020a17090a6f2100b0029899165611sm643285pjk.35.2024.02.13.22.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 22:36:00 -0800 (PST)
Date: Wed, 14 Feb 2024 12:05:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/10] arm64: dts: qcom: sc8280xp: enable GICv3 ITS for
 PCIe
Message-ID: <20240214063554.GC4618@thinkpad>
References: <20240212165043.26961-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240212165043.26961-1-johan+linaro@kernel.org>

On Mon, Feb 12, 2024 at 05:50:33PM +0100, Johan Hovold wrote:
> This series addresses a few problems with the sc8280xp PCIe
> implementation.
> 
> The DWC PCIe controller can either use its internal MSI controller or an
> external one such as the GICv3 ITS. Enabling the latter allows for
> assigning affinity to individual interrupts, but results in a large
> amount of Correctable Errors being logged on both the Lenovo ThinkPad
> X13s and the sc8280xp-crd reference design.
> 
> It turns out that these errors are always generated,

How did you confirm this?

> but for some yet to
> be determined reason, the AER interrupts are never received when using
> the internal MSI controller, which makes the link errors harder to
> notice.
> 

If you manually inject the errors using "aer-inject", are you not seeing the AER
errors with internal MSI controller as well?

> On the X13s, there is a large number of errors generated when bringing
> up the link on boot. This is related to the fact that UEFI firmware has
> already enabled the Wi-Fi PCIe link at Gen2 speed and restarting the
> link at Gen3 generates a massive amount of errors until the Wi-Fi
> firmware is restarted.
> 
> A recent commit enabling ASPM on certain Qualcomm platforms introduced
> further errors when using the Wi-Fi on the X13s as well as when
> accessing the NVMe on the CRD. The exact reason for this has not yet
> been identified, but disabling ASPM L0s makes the errors go away. This
> could suggest that either the current ASPM implementation is incomplete
> or that L0s is not supported with these devices.
> 

What are those "further errors" you are seeing with ASPM enabled? Are those
errors appear with GIC ITS or with internal MSI controller as well?

> Note that the X13s and CRD use the same Wi-Fi controller, but the errors
> are only generated on the X13s. The NVMe controller on my X13s does not
> support L0s so there are no issues there, unlike on the CRD which uses a
> different controller. The modem on the CRD does not generate any errors,
> but both the NVMe and modem keeps bouncing in and out of L0s/L1 also
> when not used, which could indicate that there are bigger problems with
> the ASPM implementation. I don't have a modem on my X13s so I have not
> been able to test whether L0s causes an trouble there.
> 
> Enabling AER error reporting on sc8280xp could similarly also reveal
> existing problems with the related sa8295p and sa8540p platforms as they
> share the base dtsi.
> 
> The last four patches, marked as RFC, adds support for disabling ASPM
> L0s in the devicetree and disables it selectively for the X13s Wi-Fi
> and CRD NVMe. If it turns out that the Qualcomm PCIe implementation is
> incomplete, we may need to disable ASPM (L0s) completely in the driver
> instead.
> 

If the device is not supporting L0s, then it as to be disabled in the device,
not in the PCIe controller, no?

> Note that disabling ASPM L0s for the X13s Wi-Fi does not seem to have a
> significant impact on the power consumption 
> 
> The DT bindings and PCI patch are expected to go through the PCI tree,
> while Bjorn A takes the devicetree updates through the Qualcomm tree.
> 

Since I took a stab at enabling the GIC ITS previously, I noticed that the NVMe
performance got a slight dip. And that was one of the reasons (apart from AER
errors) that I never submitted the patch.

Could you share the NVMe benchmark (fio) with this series?

> Johan
> 
> 
> Johan Hovold (10):
>   dt-bindings: PCI: qcom: Allow 'required-opps'
>   dt-bindings: PCI: qcom: Do not require 'msi-map-mask'
>   arm64: dts: qcom: sc8280xp: add missing PCIe minimum OPP
>   arm64: dts: qcom: sc8280xp-crd: limit pcie4 link speed
>   arm64: dts: qcom: sc8280xp-x13s: limit pcie4 link speed
>   arm64: dts: qcom: sc8280xp: enable GICv3 ITS for PCIe

Is this patch based on the version I shared with you long back? If so, I'd
expect to have some credit. If you came up with your own version, then ignore
this comment.

- Mani

>   dt-bindings: PCI: qcom: Allow 'aspm-no-l0s'
>   PCI: qcom: Add support for disabling ASPM L0s in devicetree
>   arm64: dts: qcom: sc8280xp-crd: disable ASPM L0s for NVMe
>   arm64: dts: qcom: sc8280xp-x13s: disable ASPM L0s for Wi-Fi
> 
>  .../devicetree/bindings/pci/qcom,pcie.yaml    |  6 +++++-
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  4 ++++
>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  3 +++
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 17 +++++++++++++++-
>  drivers/pci/controller/dwc/pcie-qcom.c        | 20 +++++++++++++++++++
>  5 files changed, 48 insertions(+), 2 deletions(-)
> 
> -- 
> 2.43.0
> 

-- 
மணிவண்ணன் சதாசிவம்

