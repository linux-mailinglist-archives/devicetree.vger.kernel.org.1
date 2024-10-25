Return-Path: <devicetree+bounces-115451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF8E9AF948
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 07:49:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F015281DBD
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 05:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB97018E76C;
	Fri, 25 Oct 2024 05:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c/CKEtQf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CAE18CC01
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 05:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729835342; cv=none; b=E1MGykWg3wH9VkF/JjoD7oWUWwy8jWb2qI1jvRM9NZx7HDLl1s/LJ9IdXm25xnWMe97TnhztLvsY0Z5yUzOFPxefU8S5P1V6XZNH5O771ev/bIBH9erNDDJ0IVIw/gs+ohB4GqWfJ6LOgl8Rc1u9rcgN7wDPcDOlEn6wDs6H4Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729835342; c=relaxed/simple;
	bh=3YLKOAKdedA794EBEEELdq9D/mc6G2/g5JyWa14ZmW4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jievFPWruFTJYkaPi25PhZPrpDlkNNghr+i+kqj92+ARt1/CG8fxXHgAAcipb1sbE0kZRsogvOWM3dtpTBcFUlNT51y5TMqncC8732GGYAaksVt//Xt9u3lcJ4iNn89eVtixWT/K9bXQ4ZsEwh2dXC1i3ErVir4gPL7on1LlPwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c/CKEtQf; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6e35bf59cf6so27819757b3.0
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 22:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729835339; x=1730440139; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HuBj6jHH+2hH/HnRC6bTykIAkOcHwoEScoSLgxcpErQ=;
        b=c/CKEtQfgEKQcf05zAJtGEoeWRcVnWisyYVEHG0qNpNwbfN/etepON+YpfHJQobOrP
         IcheKezQ4ObZnV4KzwPsv/sXWCSImDQ6nwX+DNZJ2MEPYi02ohWcQL+jFhgwJL2qlTqD
         e82aqj02ahASm/zlpAU3gG1ZaccUH5llWSPG7l6Tqkonz2sCgMODeSWiZCAzo0vFatr9
         aYxFVCpqv60yKLz6/pKbubwirvm2e7EOkzdJoklop7HdH+AGztlPoeNobPwLlDPDps8R
         Vp+C/Xokc83Luj8ceCctUngWf7XHT+eXjHVOJiXoigtYrzFPnetCWv7wrIyN3tx2WzjP
         54vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729835339; x=1730440139;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HuBj6jHH+2hH/HnRC6bTykIAkOcHwoEScoSLgxcpErQ=;
        b=DyObGg2tfZtNBeXxOEM8uYkVD6nReE8OYvgRCOAEyiqSnZ62hEldIeev3xR4nN46+h
         upqaTPMcZhYMYZXh+XeImJkU0I8CXCAiKc93R1ULMUL8pdVYqFiWHAZxfyVj0nYJeMdY
         AAMBdRBmt68Y36MCDwOzcDkH7idMYSq5+0HzgOD3/E/Oy5Q3v46NcvvKyBDyjy9sMbZs
         p2pi30PHH3vzPCZ5ZUM7enIUUtOgdzz2I5BsUL9ZDWeUQpEhgFQFrLxT/BaUWibZdLjF
         oz1xFjka3+jaL9nc/loH8xFw+96uAPxai6VwKjCfqpUlIXv8tu9ETZGlNvr2NPRYET16
         izVA==
X-Forwarded-Encrypted: i=1; AJvYcCUGmUkuErbWD+hrbqahk/o0ldnOp83+LxFrZuTHRIBs2gPqYpjy2G/4Ma+M+GOtRw5ss6rRQGz4UPcg@vger.kernel.org
X-Gm-Message-State: AOJu0YxwDGnz6qswwZPW85PKJZw/rkvO02oRXKEp4Wo8Tpe4bq1kjYNy
	3jxru8JNG3373b1fmEqMQBaTC4aJjwjOX21pObKG7zB3fjam/NEbVdLEbgSdWMV0E22/lnk/wtO
	JKfnioqzM0jndUNXU0lXQ0iMfNrdpoSOMNFBIuw==
X-Google-Smtp-Source: AGHT+IE/2A2wcTRWtJIdxZFRWU2jMnFi993sbCQCkQ/aUt0tW3T8bN0qOPk5do1LQHq+4wKE6dywoyXSXH+Knynop1g=
X-Received: by 2002:a05:690c:f8a:b0:6e2:5a6f:d90b with SMTP id
 00721157ae682-6e84a7e69dfmr45932207b3.2.1729835339441; Thu, 24 Oct 2024
 22:48:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241023092708.604195-1-quic_yuanjiey@quicinc.com>
 <20241023092708.604195-3-quic_yuanjiey@quicinc.com> <xfy335jzh5t5a7fdrjfswerjdze3vaybf7rvkxnae3cv3xaii7@rn7iqwga2p62>
 <ZxsJp6XtJSfnNJqH@cse-cd02-lnx.ap.qualcomm.com>
In-Reply-To: <ZxsJp6XtJSfnNJqH@cse-cd02-lnx.ap.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 25 Oct 2024 08:48:48 +0300
Message-ID: <CAA8EJprVrCr11qkZjvzKhbZ=BvGRvbvCK-KsAhWiG48dOXQHvw@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] arm64: dts: qcom: qcs615: add SD and emmc node
To: Yuanjie Yang <quic_yuanjiey@quicinc.com>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, bhupesh.sharma@linaro.org, andersson@kernel.org, 
	konradybcio@kernel.org, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	quic_tingweiz@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 25 Oct 2024 at 06:00, Yuanjie Yang <quic_yuanjiey@quicinc.com> wrote:
>
> On Thu, Oct 24, 2024 at 11:42:26PM +0300, Dmitry Baryshkov wrote:
> > On Wed, Oct 23, 2024 at 05:27:07PM +0800, Yuanjie Yang wrote:
> > > Add SD and emmc support to the QCS615 Ride platform. The SD controller
> > > and emmc controller of QCS615 are derived from SM6115. Include the
> > > relevant binding documents accordingly. Additionally, configure
> > > emmc-related and SD-related opp, power, and interconnect settings
> > > in the device tree.
> > >
> > > Signed-off-by: Yuanjie Yang <quic_yuanjiey@quicinc.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/qcs615.dtsi | 198 +++++++++++++++++++++++++++
> > >  1 file changed, 198 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > > index fcba83fca7cf..3840edf13fe8 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > > @@ -399,6 +399,65 @@ qfprom: efuse@780000 {
> > >                     #size-cells = <1>;
> > >             };
> > >
> > > +           sdhc_1: mmc@7c4000 {
> > > +                   compatible = "qcom,qcs615-sdhci", "qcom,sdhci-msm-v5";
> > > +                   reg = <0 0x7c4000 0 0x1000>,
> > > +                         <0 0x7c5000 0 0x1000>;
> >
> >  <0x0 0x007c4000 0x0 0x1000> (this applies to all address nodes, so
> >  sdhc_2 too.
> Thanks, in the next version, I will adjust all the values in the reg to hexadecimal.

Not only that. In the entry that I've posted there is a second change.

>
> >
> > > +                   reg-names = "hc",
> > > +                               "cqhci";
> > > +
> > > +                   interrupts = <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH>;
> > > +                   interrupt-names = "hc_irq",
> > > +                                     "pwr_irq";
> > > +
> > > +                   clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> > > +                            <&gcc GCC_SDCC1_APPS_CLK>,
> > > +                            <&rpmhcc RPMH_CXO_CLK>,
> > > +                            <&gcc GCC_SDCC1_ICE_CORE_CLK>;
> > > +                   clock-names = "iface",
> > > +                                 "core",
> > > +                                 "xo",
> > > +                                 "ice";
> > > +
> > > +                   resets = <&gcc GCC_SDCC1_BCR>;
> > > +
> > > +                   power-domains = <&rpmhpd RPMHPD_CX>;
> > > +                   operating-points-v2 = <&sdhc1_opp_table>;
> > > +                   iommus = <&apps_smmu 0x02c0 0x0>;
> > > +                   interconnects = <&aggre1_noc MASTER_SDCC_1 QCOM_ICC_TAG_ALWAYS
> > > +                                    &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > > +                                   <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> > > +                                    &config_noc SLAVE_SDCC_1 QCOM_ICC_TAG_ALWAYS>;
> > > +                   interconnect-names = "sdhc-ddr",
> > > +                                        "cpu-sdhc";
> > > +
> > > +                   bus-width = <8>;
> > > +                   qcom,dll-config = <0x000f642c>;
> > > +                   qcom,ddr-config = <0x80040868>;
> > > +                   supports-cqe;
> > > +                   dma-coherent;
> > > +                   mmc-ddr-1_8v;
> > > +                   mmc-hs200-1_8v;
> > > +                   mmc-hs400-1_8v;
> > > +                   mmc-hs400-enhanced-strobe;
> >
> > Are these board properties or SoC properties?
> Thanks, these properties are Soc properties, so I put them in dtsi.
>
> > > +                   status = "disabled";
> > > +
> >
> > --
> > With best wishes
> > Dmitry
>
> Thanks,
> Yuanjie



-- 
With best wishes
Dmitry

