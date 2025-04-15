Return-Path: <devicetree+bounces-167090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F59CA8958B
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:46:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9BB01894F11
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 07:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D87A2797A9;
	Tue, 15 Apr 2025 07:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TqDQl29K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB541C861B
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744703212; cv=none; b=TiaLLj2ip0QFtD+feu8J+9ltrL/x+smYTYFeTQd6kRe47PaiaZiDPvKX7SGi9qneir46y9K5Ti3OZIOi9G1lzrGJRvsiduNcjqG3PwSOiE+kSdIbVC+H3fRB0ho4FybK1hZKsgnNop1/3y2Azs3x+nbrnAJOEmErFIQp8pbOcaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744703212; c=relaxed/simple;
	bh=nY8Tqunj6Ge/7wm9FhZ0tmE7RLL+A9iGIOQS0ueQIEs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sl37g7hdzKiIVJmFHf5pDH4BbdItMFdCViBZPSA0n5Gnp8OBxjDQ5fWUBErq+pKO5EX4rxnG7K7Z1ZsVYDdf33b2oOKG+xJodHZEhLQvTnLCIx2q8l0vE4bjSQ1Awe/WbDMQtr1ALhoI7wYfho9045LW/DxdCrhpyKYpmv63vrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TqDQl29K; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7399a2dc13fso6914165b3a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 00:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744703209; x=1745308009; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0yi1XGyu7vnRMe1p7NI5hUFFuvkRWcO+953pawUCGZw=;
        b=TqDQl29Kth+N0fc4zmL15lAUbjEJU4fVovy2OJNaBUtXnERf97ClzlywuJLOEykYLp
         M4/YphRWw0CiO5N09DAdqt6dLVbXbcXBM7etxFQNQaV3tA9fJQTJgdi82SGoKs9DvQTx
         /YMq+MtgqAzecRgFY5VXyxo7lVnDYSJ9h67lY2RNg6VNXFM2t5IeHuYzebX9O2G7/cDc
         TAZXa/kANiOC81J4hSsF+Vv7Lwtb6tCHMr84FmIXWNp7F2abwFyFbiQlaFzmRw9nE9d0
         3koSyVNLUeWAtrXzhhk/1Tc6xcgS7GubyQdQEENkObOcCH4mKKG3pOX0XqP6h7rNg8Z4
         tKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744703209; x=1745308009;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0yi1XGyu7vnRMe1p7NI5hUFFuvkRWcO+953pawUCGZw=;
        b=jQAW2jOPFlhQCZba4SpqSy5VnJ1hmqiEpJyf1gPd5/qTiBnVFY/zTv5gksPANjfp4b
         kMM+enyLnPeqW32K9SWvAbxuX6dvBqb3pQige03azJ6+h27nFtRDTrhy8DgfzucJpsSt
         2COWrrfPOaZhPdY3ocrYCZL9YWrTPlZA4YWcKPQ1CJwsfgG3R4Jxwy+ldoDHJwIx61Mo
         hJntM8I25OZwGaAhUuB52C2NhOUo3lQrnpNLQUZ2rmxNdi18GZCzYUUXqIWlINRZc3Aa
         OxSfdXhCs4Zp6E6056VDR/ogT7Gb1ezMSpIWBLe1vL2VVUzCl81WZInh1bAuYyUug8ZS
         cNag==
X-Forwarded-Encrypted: i=1; AJvYcCXpT84pJ9d4yA/P6EXoYrxfNJVzdPHAI54PK6ANyLW2Gtt+/eYaCNUFq/hZauV2tTvio34LAzaj01iI@vger.kernel.org
X-Gm-Message-State: AOJu0YyYE5PSFro0Tv87CblngLVOgmbDoWlSxT1eANRp0bq8ZCJFPLK8
	16UMO/tZS+bMqX4B15AlBw/TryrR81Y50WqlGZj72yiFhcJrGdIat+YWQY0p5w==
X-Gm-Gg: ASbGncvrqp/fD8rU3b6fuxe4E3lkpgWOGPTH0U4FR4fG31TIUcFC5qoUmW0sS1Ygz3r
	vHMKpj/Ha+O477sz6VBGU9Vkyd4xE6tarycIkM2flvjIbISK5CvFJmhLc57K3hOgMtYk1Y17S5H
	4mfU4HWLqAmIqZtB4nWk5QaoAArv9XdSmiu5e9zuw1BIJQ7kgbNQ9ZZS9M8ZyZhRuk6nymKOx+i
	Q1E1XS/g5NQJ0NmbQyaiGFqQW5FuyMFdmZsFq60eQENirhYhidzCWxmSateGXV0RUR80kUlMORI
	KTK6vUfOsh0llqLpW4544SVPjli8bFnAikeQ3vHZPryO+lszDw==
X-Google-Smtp-Source: AGHT+IGTCKyO+F34iBxsSLbuw7BRnf112WGbpw40IN8bUUZot9bE4g6Xr02iDin0+FeT5ut+LRJNkA==
X-Received: by 2002:a05:6a00:3d46:b0:735:d89c:4b8e with SMTP id d2e1a72fcca58-73bd1196ea5mr19849919b3a.5.1744703208693;
        Tue, 15 Apr 2025 00:46:48 -0700 (PDT)
Received: from thinkpad ([120.60.71.35])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd21949dasm7848682b3a.35.2025.04.15.00.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 00:46:48 -0700 (PDT)
Date: Tue, 15 Apr 2025 13:16:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, 
	quic_mrana@quicinc.com
Subject: Re: [PATCH v2 2/3] arm64: qcom: sc7280: Move phy, perst to root port
 node
Message-ID: <ebx53jr7enadvxgywt7nuoxfvvspxvvsiecmpuw3f2qqljj3fd@zwsjtcrpxsh6>
References: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
 <20250414-perst-v2-2-89247746d755@oss.qualcomm.com>
 <511f8414-bbb1-4069-a0a6-f7505190c1e0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <511f8414-bbb1-4069-a0a6-f7505190c1e0@linaro.org>

On Mon, Apr 14, 2025 at 02:49:00PM +0200, Caleb Connolly wrote:
> 
> 
> On 4/14/25 07:39, Krishna Chaitanya Chundru wrote:
> > Move phy, perst, to root port from the controller node.
> > 
> > Rename perst-gpios to reset-gpios to align with the expected naming
> > convention of pci-bus-common.yaml.
> > 
> > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > ---
> >   arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 5 ++++-
> >   arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 5 ++++-
> >   arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 5 ++++-
> >   arch/arm64/boot/dts/qcom/sc7280.dtsi           | 6 ++----
> >   4 files changed, 14 insertions(+), 7 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > index 7a36c90ad4ec8b52f30b22b1621404857d6ef336..3dd58986ad5da0f898537a51715bb5d0fecbe100 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > @@ -709,8 +709,11 @@ &mdss_edp_phy {
> >   	status = "okay";
> >   };
> > +&pcie1_port0 {
> > +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +};
> > +
> >   &pcie1 {
> > -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> >   	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
> >   	pinctrl-names = "default";
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > index 2ba4ea60cb14736c9cfbf9f4a9048f20a4c921f2..ff11d85d015bdab6a90bd8a0eb9113a339866953 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > @@ -472,10 +472,13 @@ &pcie1 {
> >   	pinctrl-names = "default";
> >   	pinctrl-0 = <&pcie1_clkreq_n>, <&ssd_rst_l>, <&pe_wake_odl>;
> > -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> >   	vddpe-3v3-supply = <&pp3300_ssd>;
> >   };
> > +&pcie1_port0 {
> > +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +};
> > +
> >   &pm8350c_pwm {
> >   	status = "okay";
> >   };
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > index 7370aa0dbf0e3f9e7a3e38c3f00686e1d3dcbc9f..3209bb15dfec36299cabae07d34f3dc82db6de77 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > @@ -414,9 +414,12 @@ &lpass_va_macro {
> >   	vdd-micb-supply = <&vreg_bob>;
> >   };
> > +&pcie1_port0 {
> > +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +};
> > +
> >   &pcie1 {
> >   	status = "okay";
> > -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> >   	vddpe-3v3-supply = <&nvme_3v3_regulator>;
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > index 0f2caf36910b65c398c9e03800a8ce0a8a1f8fc7..376fabf3b4eac34d75bb79ef902c9d83490c45f7 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > @@ -2271,9 +2271,6 @@ pcie1: pcie@1c08000 {
> >   			power-domains = <&gcc GCC_PCIE_1_GDSC>;
> > -			phys = <&pcie1_phy>;
> > -			phy-names = "pciephy";
> 
> Isn't this a huge API breakage that will break using new DT with old
> kernels? It will also break U-boot which uses upstream DT.
> 

That's right.

> This is bad enough, but at least let's break it a clean break by changing
> all platforms at once.
> 

Even though converting all platforms is the end goal, I don't think converting
all of them in a single patch is going to do any good.

> As I understand it, we seem to allow these breakages in DT for now (and this
> patch landing will confirm that), but perhaps we could at least track them
> somewhere or at acknowledge the breakage with a tag in the commit message
> pointing to the relevant dt-bindings patch.
> 

I'll leave the decision of breaking old kernels to DT maintainers, but I'd
atleast prefer to use this in upcoming targets. So the binding and driver
changes can go any time.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

