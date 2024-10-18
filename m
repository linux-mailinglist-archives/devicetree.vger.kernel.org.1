Return-Path: <devicetree+bounces-112995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 281B99A429E
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 17:39:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4775D1C2127B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 15:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B332022D6;
	Fri, 18 Oct 2024 15:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UkMjGaYO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFD6201267
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729265936; cv=none; b=YpExtLnRFb4iR5G3Pj5wdNgqXEGRy7RkQu6PsJmM8KuE+zWDreenxLLifpSy5KkFTJxGHle809pXkmidMqqd3NpfMgrCQdzTfSq6gN9sSHThx5ztmoTGnKsHe8vQxf51NEfPocl/pMxjvJywLxSWMm9lLx9o/UDsExPGlBV4m4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729265936; c=relaxed/simple;
	bh=uxi1OQOzkpqjBsttpbYxBDUhlZCDok1vzymmwSbNxGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pQxelXaqs9smFoOgpM2b59lsdEPOrfbIPOFciEIbhwssm7RJqSeBsBkYl/zhMq3AOcs7HFjCRv+IIG2dIHKlxx4yyuXgu2a6d4OytjuJphYC20gWSjB3CvALQ+M1hd6vxR5UX3vC4H5pINqz/POJzpmTMWYZ7OxbrpdUg4j6Fvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UkMjGaYO; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539ee1acb86so187172e87.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729265931; x=1729870731; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGZilrMaCPY/RlLKnQENee50lNaEUfTtoARSumrgroE=;
        b=UkMjGaYOcJDy3MHJ3as4LBCmJXHLrdJrI/GjwV1GA5e+SmfGgNogVH4PcarvJ2dAjT
         OIy7VXmFzzOV2VF8nIqhZuYVcKC9k8rC3bj9h7JLmIjctnoJw5RSBcqkGab4SUP/MbKh
         pFarrj8EOdW8bF/8ObSDWdj/CQmulb7mEpqLyjimvyRqC76W0tmlviW2Ear1D+NcmBjr
         4T8HirismmD1k80KEOr4a35qFK2KF2mfDMZVdGDVQqQLTf140JP7WXgzyUgsvsWvFnZK
         2LSAzll7MywWGxlZtsba7RPo7N4FWV7Tou73rQ9ktY/hY20kKb2daG95CdkWc20EqcHJ
         Z9rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729265931; x=1729870731;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZGZilrMaCPY/RlLKnQENee50lNaEUfTtoARSumrgroE=;
        b=HI+/vDEigdFJEPiyyUbV++F0RZRn3pZ7ppo7TfRf6EektBtsZoBn5ps9AW4fqtY2pJ
         TIW4rTwqRoPt9koHVSeEljaeT+eJqCDnTtnFZKuwF/nPg6Ayg6wXTydGeUBqB9/yqYT+
         yucHQMhsJqQPlL5nX9F+d0cdIPX/gqTOg2T6kjF8Dn46cShjs9IvZM295Qs2aQYTy3XC
         v2pFEqKjYcCoCnNsi9J9j1UNXjgSezgHyepxK7yII5f0ehYLRY1zYJ6NY/hbN9WPISWw
         UdO8XMDlCU+dH4VdVOmnwckv9uB24+7+cW7QF7V2sN9rrdEhvw+WkKUkdys3uFTR56ms
         7deA==
X-Forwarded-Encrypted: i=1; AJvYcCX460GSx8sxJMQXYZNkv7Y4KbBrx1UnikSjvR09MK/5rnm1lt8eDH/c3tPAQ90VX0EwAHBGeaGPo47v@vger.kernel.org
X-Gm-Message-State: AOJu0YwmqalcS3hfOPxQoRsyyjJwD2dxD8yAJ7aQeoU5PEn5dzRCqPr+
	GG1sLMbtevciLCxDS+t4zTkb9o6q5nYUIgTevDD3sMdpjYeDHJqjRqPuFjDUfMU=
X-Google-Smtp-Source: AGHT+IGPxdR5IjipXz8Z5jLLpSRS/Ug36kYGe2HYxW1QPJYSzrMZ+7vrq7n1t4UL0NTRyaJjVPQBCQ==
X-Received: by 2002:a05:6512:33d3:b0:536:9f02:17b4 with SMTP id 2adb3069b0e04-53a1544961amr1854340e87.40.1729265931172;
        Fri, 18 Oct 2024 08:38:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151f0bdbsm245785e87.175.2024.10.18.08.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 08:38:49 -0700 (PDT)
Date: Fri, 18 Oct 2024 18:38:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jie Luo <quic_luoj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com, quic_suruchia@quicinc.com, 
	quic_pavir@quicinc.com, quic_linchen@quicinc.com, quic_leiwei@quicinc.com, 
	bartosz.golaszewski@linaro.org, srinivas.kandagatla@linaro.org
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add CMN PLL node for IPQ9574 SoC
Message-ID: <cqgkc3qpupbv47rqxiyhe2m466zxcxepyfcgyaieo2sggffprx@mstqi4pqoiqc>
References: <20241015-qcom_ipq_cmnpll-v4-0-27817fbe3505@quicinc.com>
 <20241015-qcom_ipq_cmnpll-v4-4-27817fbe3505@quicinc.com>
 <abro3enahzbugcwokcyyhwybbokestbigvzhywxhnfrdjihni3@7ej2hkgbgtf6>
 <b336724c-1fea-4e1e-9477-66f53d746f09@quicinc.com>
 <CAA8EJprVNOLO-CoorNhvKrrSD1bNKdFrzth5BL0GHXffPv62jw@mail.gmail.com>
 <32dbf7ee-1190-401c-b6b1-bc8c70a5158c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <32dbf7ee-1190-401c-b6b1-bc8c70a5158c@quicinc.com>

On Fri, Oct 18, 2024 at 10:03:08PM +0800, Jie Luo wrote:
> 
> 
> On 10/18/2024 4:11 PM, Dmitry Baryshkov wrote:
> > On Fri, 18 Oct 2024 at 09:55, Jie Luo <quic_luoj@quicinc.com> wrote:
> > > 
> > > 
> > > 
> > > On 10/18/2024 6:32 AM, Dmitry Baryshkov wrote:
> > > > On Tue, Oct 15, 2024 at 10:16:54PM +0800, Luo Jie wrote:
> > > > > The CMN PLL clock controller allows selection of an input
> > > > > clock rate from a defined set of input clock rates. It in-turn
> > > > > supplies fixed rate output clocks to the hardware blocks that
> > > > > provide ethernet functions such as PPE (Packet Process Engine)
> > > > > and connected switch or PHY, and to GCC.
> > > > > 
> > > > > Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> > > > > ---
> > > > >    arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi |  6 +++++-
> > > > >    arch/arm64/boot/dts/qcom/ipq9574.dtsi            | 20 +++++++++++++++++++-
> > > > >    2 files changed, 24 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> > > > > index 91e104b0f865..77e1e42083f3 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> > > > > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> > > > > @@ -3,7 +3,7 @@
> > > > >     * IPQ9574 RDP board common device tree source
> > > > >     *
> > > > >     * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
> > > > > - * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
> > > > > + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
> > > > >     */
> > > > > 
> > > > >    /dts-v1/;
> > > > > @@ -164,6 +164,10 @@ &usb3 {
> > > > >       status = "okay";
> > > > >    };
> > > > > 
> > > > > +&cmn_pll_ref_clk {
> > > > > +    clock-frequency = <48000000>;
> > > > > +};
> > > > > +
> > > > >    &xo_board_clk {
> > > > >       clock-frequency = <24000000>;
> > > > >    };
> > > > > diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > > > > index 14c7b3a78442..93f66bb83c5a 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > > > > +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > > > > @@ -3,10 +3,11 @@
> > > > >     * IPQ9574 SoC device tree source
> > > > >     *
> > > > >     * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
> > > > > - * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
> > > > > + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
> > > > >     */
> > > > > 
> > > > >    #include <dt-bindings/clock/qcom,apss-ipq.h>
> > > > > +#include <dt-bindings/clock/qcom,ipq-cmn-pll.h>
> > > > >    #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
> > > > >    #include <dt-bindings/interconnect/qcom,ipq9574.h>
> > > > >    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > > > @@ -19,6 +20,11 @@ / {
> > > > >       #size-cells = <2>;
> > > > > 
> > > > >       clocks {
> > > > > +            cmn_pll_ref_clk: cmn-pll-ref-clk {
> > > > > +                    compatible = "fixed-clock";
> > > > > +                    #clock-cells = <0>;
> > > > > +            };
> > > > 
> > > > Which block provides this clock? If it is provided by the external XO
> > > > then it should not be a part of the SoC dtsi.
> > > 
> > > The on-chip WiFi block supplies this reference clock. So keeping it in
> > > the SoC DTSI is perhaps appropriate.
> > 
> > Then maybe it should be provided by the WiFi device node? At least you
> > should document your design decisions in the commit message.
> 
> This CMN PLL reference clock is fixed rate and is automatically
> generated by the SoC's internal Wi-Fi hardware block with no software
> configuration required from the Wi-Fi side.
> 
> Sure, I will enhance the commit message to add the information on the
> fixed reference clock from Wi-Fi block. Hope this is ok.

We have other fixed clocks which are provided by hardware blocks.
Without additional details it is impossible to answer whether it is fine
or not.

> 
> > 
> > Also, I don't think this node passes DT schema validation. Did you check it?
> 
> Yes, the DT is validated against the schema, I have shared the logs
> below. Could you please let me know If anything needs rectification?

I see, you are setting the cmn_pll_ref_clk frequency in the
ipq9574-rdp-common.dtsi file. If the PLL is internal to the SoC, why is
the frequency set outside of it? Is it generated by multiplying the XO
clk? Should you be using fixed-factor clock instead?

-- 
With best wishes
Dmitry

