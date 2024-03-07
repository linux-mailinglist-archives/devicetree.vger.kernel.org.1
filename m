Return-Path: <devicetree+bounces-48989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C0A8748AC
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 08:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2479281F53
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 07:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F58E63101;
	Thu,  7 Mar 2024 07:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NzJXKjz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C875537F7
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 07:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709796487; cv=none; b=amNvlj6V6VS17Vn0BykvOATAy7b8VAn4bGr4JBaIV7VzkcHogwjQR5B8BLe4wcuiYwI1P0vYx0lCN5uSSytB9+Udzj2bBxJzGdxBqxGLoAR1UoQ9h3eR1UkCwBBmiCUCCwl59KKkgpauKq7EjDKOji6mVKt7BxyQb+m5eLIW8tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709796487; c=relaxed/simple;
	bh=nRvpqZSeo211IHPNpxV0/rL9GNvNKFuGiDdi/BrlLFQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s5HAV61f/jO7YHKGybegJDrKi8WlCTsfB6fmWmbGf9KdUXonzfzQKDoR/Wb9xOK69oKKZFGgwDPTJzLsB/EJiUOc2jZtwIhs14RRhencNHmFVDWMD8ZxGCEn9hqMlgeNwrmVO3SjFUscvO5nPoRJgChrNuJCseVp3JwJGw1BMS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NzJXKjz6; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-609acac53d0so5312857b3.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 23:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709796484; x=1710401284; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+NvMV3YbbwNsDNg2xNjkaVv9NB9WVkhCT5DQxlZDqVE=;
        b=NzJXKjz6I6mrzTcDVULWdJFGdGc2bT5x1j96emEwS7VNblgqY+CenHaIrlzZ9OkaLx
         hBg6LBDF8odT7SYjW8MidKewYC6qkE9lB3B+JAOucWmmQhSt76/5kk9ATTWcAsJFyvh0
         TaYvSfmUCpWqPQuTyxFpjIV8tnJNDFXN9/rVt8Cj2xa0Qr9LuKeJxidUCkuYMrZjIjIC
         WNqV8kQhQWlYWNnWtVr7GuNG2FEtM7irrkiFzBY9ozGF1uRN6MxGfEJHU8euaP8iLhGk
         KuxaYkCXz3zqSNAPWQZUlRbpJH910T/YxYjK8fveOq6rKRHwQgRMVy2XgDFomOyfSGsF
         rm9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709796484; x=1710401284;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NvMV3YbbwNsDNg2xNjkaVv9NB9WVkhCT5DQxlZDqVE=;
        b=MHzbw2pQ/T1DhznkmpTkxZaIU7TGP6ddh2zDt5e+rLQt/9ReOJHnbL9axySVReWCqP
         0Bpa+PsgMeI4MRiPVH3AtrsdcWz6KiKV5TVJJ0IFBmpTvK2GKiRudrKg8J5atyeukLvK
         sVgrQpuAZRdbzsB5D20KTro9XkCSOODNV88sdmZnJ8zttcx2aRb1nbg1M9yQ2+R+//li
         WzzlOmGxIRBWtR6VKf3UUzu123Q6jMiiRmFISHPvgvJl29eQmvkEa+dH0oIgC4l6vIrO
         0hKupWSTFHIcm4YVOndJODeoTVj+3zkCF6uT+LpjRzk7hoRYKFT1xZRYOvAIP88Ylqw5
         pwoA==
X-Forwarded-Encrypted: i=1; AJvYcCWb3v0aJS+qnOzqai4e5fV1YwTsxkgDLW4I2SRpcPEM0v1yKomOslPUyA5tbUfTdW+1fkVPq1t3szGPAYHavSt7Ab1kQpIfstN67A==
X-Gm-Message-State: AOJu0YyT9U3vxoKvgNNCYxi7dmGiNWArzZVQRsBVD4e5yyO6dNUy+YwX
	4lfCzjLJztg0gR8MwEaw1qTcuyxW4w5h7c+GlDbzmZfvhnyJdkaDkJYmGFxykVAdy/nYz+nlqfE
	bNfM6m3+3B1SU+aSdZmFdB/ACV8WuFmVvVSQrHw==
X-Google-Smtp-Source: AGHT+IFsMFxq6S8aaXNwS/1Lh7XDFR1WBGP9vScZZoI9JvDBcW7CEkSnz/5FikYHVdegADKiuyK31EKQpqK4uq5LfRM=
X-Received: by 2002:a81:73c1:0:b0:609:9e71:1585 with SMTP id
 o184-20020a8173c1000000b006099e711585mr14122250ywc.3.1709796484213; Wed, 06
 Mar 2024 23:28:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306123006.724934-1-amadeus@jmu.edu.cn> <20240306123006.724934-2-amadeus@jmu.edu.cn>
 <CAA8EJpqYjutM1Kh6QxysB6XNAmXywtOtRJ7KP0LbY5E36kCPvA@mail.gmail.com> <78b1a1a2-a9fa-4b28-9d96-d65bb5517199@gmail.com>
In-Reply-To: <78b1a1a2-a9fa-4b28-9d96-d65bb5517199@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Mar 2024 09:27:53 +0200
Message-ID: <CAA8EJppJBOQh19r4A-igsh5znDE_R6mDNy+ao5ximx7vtsZZvA@mail.gmail.com>
Subject: Re: [PATCH v5 1/1] arm64: dts: qcom: ipq6018: add sdhci node
To: Robert Marko <robimarko@gmail.com>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 22:35, Robert Marko <robimarko@gmail.com> wrote:
>
>
> On 06. 03. 2024. 20:43, Dmitry Baryshkov wrote:
> > On Wed, 6 Mar 2024 at 14:31, Chukun Pan <amadeus@jmu.edu.cn> wrote:
> >> Add node to support mmc controller inside of IPQ6018.
> >> This controller supports both eMMC and SD cards.
> >>
> >> Tested with:
> >>    eMMC (HS200)
> >>    SD Card (SDR50/SDR104)
> >>
> >> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> >> ---
> >>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 19 +++++++++++++++++++
> >>   1 file changed, 19 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> >> index 322eced0b876..420c192bccd9 100644
> >> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> >> @@ -441,6 +441,25 @@ dwc_1: usb@7000000 {
> >>                          };
> >>                  };
> >>
> >> +               sdhc: mmc@7804000 {
> >> +                       compatible = "qcom,ipq6018-sdhci", "qcom,sdhci-msm-v5";
> >> +                       reg = <0x0 0x07804000 0x0 0x1000>,
> >> +                             <0x0 0x07805000 0x0 0x1000>;
> >> +                       reg-names = "hc", "cqhci";
> >> +
> >> +                       interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> >> +                                    <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> >> +                       interrupt-names = "hc_irq", "pwr_irq";
> >> +
> >> +                       clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> >> +                                <&gcc GCC_SDCC1_APPS_CLK>,
> >> +                                <&xo>;
> >> +                       clock-names = "iface", "core", "xo";
> >> +                       resets = <&gcc GCC_SDCC1_BCR>;
> >> +                       max-frequency = <192000000>;
> > If I understand correctly, GCC_SDCC1_APPS_CLK support frequencies up
> > to 384 MHz, but here you are limiting it to 192 MHz. Why is it so?
> >
> > I am not sure that 384MHz is actually supported as IPQ6018 datasheet
> > clearly indicates that HS400 mode is not supported.

I didn't check the datasheet, I opened the gcc-ipq6018.c

> >
> > Regards,
> > Robert
> >
> >> +                       status = "disabled";
> >> +               };
> >> +
> >>                  blsp_dma: dma-controller@7884000 {
> >>                          compatible = "qcom,bam-v1.7.0";
> >>                          reg = <0x0 0x07884000 0x0 0x2b000>;
> >> --
> >> 2.25.1
> >>
> >>
> >



-- 
With best wishes
Dmitry

