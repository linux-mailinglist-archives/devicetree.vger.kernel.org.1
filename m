Return-Path: <devicetree+bounces-109980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06042998B18
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 17:12:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F09C1C24329
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 15:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135451CBEA0;
	Thu, 10 Oct 2024 15:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eu1yqvo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B4F1CB33F
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728573140; cv=none; b=I+rW9ejzgDAPVtraaeV88H5thzt3bugT2MsIpGhvTtKDNj0oDy1av4wPMfeRbqXVY21idlnAnm9RMqr8VGn2R9tgqyfY67sLePNe553gCIU/CkL6N1d/s4Q8L20ovRa6w9vRNil4VqN5GTuJhHX5K7bveJhmuRylD2bKEdOFdz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728573140; c=relaxed/simple;
	bh=xO+xrsV0m6ktnljEcqpoAG1lE8azlumTtyyOZH61p8c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HOQCYwFXjwUwQMs5JSIqstclS8rvzIWnw+BdWMoXAKDueRVuHr7slGAfOUePKECPkg80oBwBi/ECRj/dY90F85sqJhWmxikmq3FAUyy6kYsqse5JhHocD96YPTTqEKnXmuUCyA75yHE0ShFloNZ99yMV7OI3aMZcsP5k7cSK1ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eu1yqvo1; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dff1ccdc17bso1151576276.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 08:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728573137; x=1729177937; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8r9lf5vsYGAZg3qoBN90Qx8Rz8zTJDhUxvIq7CGMNYg=;
        b=eu1yqvo1k0jl+i7FS9kr6OszcjHNFc2QBwrvwATsCNEHQHsYdf4+bD6O1R1+RSD4I3
         yBwkWxZu3z6hXXY07vXWBmFa6S2rgmNaaJbyjCP9xjIahmekER+euySLAGvPa8zmEVgg
         kETpYcVfJ0Hzzf/OEYUAsoBX6ovhJf2eBYQDf6zzaNRmhi+6JFVTYCGKGcxItKR+H7sl
         jZ/xwElBE7zUzFqkFBlV3GEJWQnA2llIUeeVnpVkYeaaYA1qQIqPdINL9jLNGycGbMPC
         T4mrDGOZAh+WG1t0mP6pdV3a3IeJU2lXTfPUxN31ajGIf6onbwxf4d5s1cO+FfP914bh
         Flgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728573137; x=1729177937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8r9lf5vsYGAZg3qoBN90Qx8Rz8zTJDhUxvIq7CGMNYg=;
        b=R1k94Eoj2d4PRPrQc2BqnvFlgwU4yZJEQ8ckl51yvhxeh7DdOPiyHmp6kFr34SDyfe
         wswTwAi/7B/aYZMy7V7yZ1NQdqzS6HzP4B9PW5nFu0N06QyTkBKlWPFii/CqvpjUXDBS
         toZPIQomlE3j5ZEdiWgyJ0XQgZYTdl6uIU9xvpWHkh09Hw2QYi2QGygCaVa7v9W4hTeu
         xkEXc88EpFyzinvCkyfONFyVTjzKhoDiXPMFUF3Uao0m83SdzfNPcZJQmHIk5SN7/O+e
         LUnqNF8oVZyJDWnIbjHpsSHCnWi/1nOLAJsy9zDrepz5+oR19E++Y3AuFPrXBEVjSTqL
         dcvA==
X-Forwarded-Encrypted: i=1; AJvYcCWD+LJVWTpLusyPND1MWpIQMqCBe08aMiQRfqF203kRroLt7TIx1RnBvZ/ydFBvyPQWeLUJZLt2J7zn@vger.kernel.org
X-Gm-Message-State: AOJu0YzbOxBhXqTdU7J4QSxuzvZPjy9VgK1wl241MOLE7j4GRF9dRomF
	BRE8Cie1nA9Ns28g+XTg34A6jdH3EpO3Fp/WcRXNum5M8KPI/sTjHWaSAnHpKQOtGc6sA0BKzok
	Xh63cfJA8m6ZBEYe8xBLUKPSd1DtwTwMKw5K+OA==
X-Google-Smtp-Source: AGHT+IEaEnIgwjZvAhRFQl53GhDBElGnM3KPGeMsZ+GGPwd8gASrTFJB007EfgE2E3zzOPq9Cvir8gU+v2p8b/OdcZA=
X-Received: by 2002:a05:6902:726:b0:e28:ec71:eb87 with SMTP id
 3f1490d57ef6-e2909c00af1mr4623491276.4.1728573137216; Thu, 10 Oct 2024
 08:12:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241009195636.2649952-1-quic_kriskura@quicinc.com>
 <20241009195636.2649952-2-quic_kriskura@quicinc.com> <xwidjnw3fqc2slwl3vftw7yi4j7juiw6rwszjhtxepqd6zz33s@ncoi4aikbb4e>
 <fe3ebd31-946c-499f-ac96-2cf71c6752e6@quicinc.com>
In-Reply-To: <fe3ebd31-946c-499f-ac96-2cf71c6752e6@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 10 Oct 2024 18:12:05 +0300
Message-ID: <CAA8EJpojz9-xhoxdp78b5=6R8gpjjHQgjb_P0LGfHs4PsdS3vA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: Add support for usb nodes on QCS8300
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 10 Oct 2024 at 17:57, Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
>
>
> On 10/10/2024 7:52 PM, Dmitry Baryshkov wrote:
> > On Thu, Oct 10, 2024 at 01:26:35AM GMT, Krishna Kurapati wrote:
> >> Add support for USB controllers on QCS8300. The second
> >> controller is only High Speed capable.
> >>
> >> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/qcs8300.dtsi | 165 ++++++++++++++++++++++++++
> >>   1 file changed, 165 insertions(+)
> >
> > [...]
> >
> >> +
> >> +            usb_2: usb@a4f8800 {
> >> +                    compatible = "qcom,qcs8300-dwc3", "qcom,dwc3";
> >> +                    reg = <0x0 0x0a4f8800 0x0 0x400>;
> >> +                    #address-cells = <2>;
> >> +                    #size-cells = <2>;
> >> +                    ranges;
> >> +
> >> +                    clocks = <&gcc GCC_CFG_NOC_USB2_PRIM_AXI_CLK>,
> >> +                             <&gcc GCC_USB20_MASTER_CLK>,
> >> +                             <&gcc GCC_AGGRE_USB2_PRIM_AXI_CLK>,
> >> +                             <&gcc GCC_USB20_SLEEP_CLK>,
> >> +                             <&gcc GCC_USB20_MOCK_UTMI_CLK>;
> >> +                    clock-names = "cfg_noc",
> >> +                                  "core",
> >> +                                  "iface",
> >> +                                  "sleep",
> >> +                                  "mock_utmi";
> >> +
> >> +                    assigned-clocks = <&gcc GCC_USB20_MOCK_UTMI_CLK>,
> >> +                                      <&gcc GCC_USB20_MASTER_CLK>;
> >> +                    assigned-clock-rates = <19200000>, <120000000>;
> >> +
> >> +                    interrupts-extended = <&intc GIC_SPI 444 IRQ_TYPE_LEVEL_HIGH>,
> >> +                                          <&intc GIC_SPI 443 IRQ_TYPE_LEVEL_HIGH>,
> >> +                                          <&pdc 10 IRQ_TYPE_EDGE_BOTH>,
> >> +                                          <&pdc 9 IRQ_TYPE_EDGE_BOTH>;
> >> +                    interrupt-names = "pwr_event",
> >> +                                      "hs_phy_irq",
> >> +                                      "dp_hs_phy_irq",
> >> +                                      "dm_hs_phy_irq";
> >> +
> >> +                    power-domains = <&gcc GCC_USB20_PRIM_GDSC>;
> >> +                    required-opps = <&rpmhpd_opp_nom>;
> >> +
> >> +                    resets = <&gcc GCC_USB20_PRIM_BCR>;
> >> +
> >> +                    interconnects = <&aggre1_noc MASTER_USB2 0 &mc_virt SLAVE_EBI1 0>,
> >> +                                    <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB2 0>;
> >> +                    interconnect-names = "usb-ddr", "apps-usb";
> >
> > As this is a USB2-only host, shouldn't it also have qcom,select-utmi-as-pipe-clk ?
> >
>
> Hi Dmitry,
>
> Thanks for the catch. You are right, it needs to be added according to
> bindings. Since I would be sending another patch after this series to
> enable the second controller, would it be fine if I add it in that patch
> or do you suggest updating this one.

I think it's better to fix it from the beginning.

>
> Also I see some others are not using it as well, like sc7280 which also
> might need to be updated.

Interesting enough I don't see this option being enabled on SC7280 platforms.

>
> Regards,
> Krishna,
>
> >> +
> >> +                    status = "disabled";
> >> +
> >> +                    usb_2_dwc3: usb@a400000 {
> >> +                            compatible = "snps,dwc3";
> >> +                            reg = <0x0 0x0a400000 0x0 0xe000>;
> >> +                            interrupts = <GIC_SPI 442 IRQ_TYPE_LEVEL_HIGH>;
> >> +                            iommus = <&apps_smmu 0x20 0x0>;
> >> +                            phys = <&usb_2_hsphy>;
> >> +                            phy-names = "usb2-phy";
> >> +                            snps,dis_u2_susphy_quirk;
> >> +                            snps,dis_enblslpm_quirk;
> >> +                    };
> >> +            };
> >>      };
> >>
> >>      arch_timer: timer {
> >> --
> >> 2.34.1
> >>
> >



-- 
With best wishes
Dmitry

