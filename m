Return-Path: <devicetree+bounces-40105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C35484F3EC
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 11:57:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95957B291DA
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 10:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531C42555F;
	Fri,  9 Feb 2024 10:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qfdb1iUr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC43225626
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 10:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707476188; cv=none; b=g41G83l8s85Ru3JeKPVfuDpUkbsVthkTdgCLBgCdwqrBfqe/thkQlBWcYAhMucBnzuu5nZZs9p+assNyjm2KgnPcUZ0Wju2Mv1jdUpE61xOWjKonvWA711/mh9NT2LQirC9lGFLsPk/ZF7abEvB1XNgE9IaXT/5lknhrVHmgqpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707476188; c=relaxed/simple;
	bh=YpWH7QaLn8gnHj/xxAk6gKkmNB7o2ejOeXqJ3mN6Z1o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W/UB0KSDxn80ESU0xyGCShuE1tPjdIkkQdccyeVnjrTl1nhXNfUiyOXFCPd96sSQHsatrRgmgX4K0jwQWdbOM5biAKLf7hmNKGWG4ssluFcMRYdlkXKr+hDsrtzYphbZMNXptxUiwR/tP+IpqNoeK8a4XaLSSY0mE3y1fNbu6Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qfdb1iUr; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-60493e299b6so8349767b3.1
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 02:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707476184; x=1708080984; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rx6OViEHZvAQIHr4Q/DRyCTu0vluB2dGkrMVh9K+sd0=;
        b=qfdb1iUrrpK6jXwu3BA7tafaUxBvStp1UHNWFMpDBiU8jboJgAv7dlhMFXsF7gqXWO
         jXyAsqpnMChGFK7O/AdljGB8/LdfX9I0dZMLAVKG+d8hc6931ZFgO54lVo2pmnJkD0cr
         /5hDmSx86UMLzBqr7rSQow3Gue9jYlina94PZdHVmY0oACUfNkdRsI23Cebdz4PM+BNv
         03PRjN4trNJlLhz6GL0AcASbvxFVRwb0zH+IlkoZF2XvBKOSsMrrZlnzirPbjAR/ryLd
         VwfnOrB3TEEf7V8W0xFZ5vEnoD/4rwAeWBooWIEZIpWA7rAT/Tnp4iEuANLHdmKIpZ7y
         2XTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707476184; x=1708080984;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rx6OViEHZvAQIHr4Q/DRyCTu0vluB2dGkrMVh9K+sd0=;
        b=hnKbTMwKVtR79qzkVONU/HfuDfWU0hdvk+MUYZu+bbM8aQFUf8bZUm5rFdhrud0SMu
         /vk8w6fnIygpUWNupNfRSnrntiKBHkDeGS51MRrrrt+MydNzgc5EWrSGyOXo4TCJvSFs
         k+ggGr4Oyr7QW6/9ldDz8iIhXuMUnWwB9had1RqE8sm1sAvtPZpyMrIbfc/avxjlGT3M
         MTUgbOLfFqbisyOszU/oxeZoYX9X6m2NSNc8FBP6Bb4FVVMRB76JNv9yrUn9H+8lckbG
         bVKnc1cYeeBgwdZ6K4b+PGNMzZkcjfEInj6p/dvR8dJB3P+I1Mvyo2OuqFCucjQX4ATk
         3NLA==
X-Forwarded-Encrypted: i=1; AJvYcCVz/y+rS7kqq2A/Ck70I7x6BCMLcQuVOaPe8Xg3IqZfLX8Ypg0XBjZJQyJLqvmQAScldjCXFIDQ84QXoia4GvNNpBfTlFrXZgg0mA==
X-Gm-Message-State: AOJu0YyzhBcpyCUqV6u5/8QkszBcgn5S9TcurTHVHa1CVzSUw9Wt8iK0
	37VpMcmJiM4zmOssOesaqhl8G0gnijEqbrR+/Bm7dwa8b0oAVcTsxpvYnwMG8ObwNvTOGRfxJ2e
	DbuJZuoQ5vkn4A9h84b2BR+vmULcX1C/8EmVuIQ==
X-Google-Smtp-Source: AGHT+IHxI3ZOZEm/S4pxcMJWfs+x1tzLeOwfpcAnuWKOVZX06fQ9dxeQpT92yxW5pATBTViw7SkZqZmPlV6/CpS4OcE=
X-Received: by 2002:a0d:d80d:0:b0:604:b793:85e0 with SMTP id
 a13-20020a0dd80d000000b00604b79385e0mr1322961ywe.10.1707476184658; Fri, 09
 Feb 2024 02:56:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240207-enable_pcie-v1-1-b684afa6371c@quicinc.com>
 <CAA8EJpqjm_2aE+7BtMkFUdet11q7v_jyHbUEpiDHSBSnzhndYA@mail.gmail.com>
 <dec2976e-6e1e-6121-e175-210377ff6925@quicinc.com> <CAA8EJprsm5Tw=vFpmfEKL8fxS-S+aW+YR0byfyL=v78k75TGEw@mail.gmail.com>
 <3ad77846-b4a8-80ee-e9e1-d5cbf4add6d8@quicinc.com> <CAA8EJprRF0tVFZK9c=MT8bSRcBdRvcugBaeEzpX5-wfRyNgc3Q@mail.gmail.com>
 <c8be2bbf-a51c-a38f-6e6f-a88801f953d5@quicinc.com> <20240209075716.GA12035@thinkpad>
In-Reply-To: <20240209075716.GA12035@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 9 Feb 2024 12:56:18 +0200
Message-ID: <CAA8EJppfzc_dM9c9mHPVWheVxi-1gJxCmaWPvreELijEQDDSyA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Add PCIe nodes
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, quic_skananth@quicinc.com, 
	quic_parass@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 9 Feb 2024 at 09:57, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Fri, Feb 09, 2024 at 12:58:15PM +0530, Krishna Chaitanya Chundru wrote:
> >
> >
> > On 2/8/2024 8:49 PM, Dmitry Baryshkov wrote:
> > > On Thu, 8 Feb 2024 at 16:58, Krishna Chaitanya Chundru
> > > <quic_krichai@quicinc.com> wrote:
> > > > On 2/8/2024 12:21 PM, Dmitry Baryshkov wrote:
> > > > > On Thu, 8 Feb 2024 at 08:14, Krishna Chaitanya Chundru
> > > > > <quic_krichai@quicinc.com> wrote:
> > > > > >
> > > > > >
> > > > > >
> > > > > > On 2/7/2024 5:17 PM, Dmitry Baryshkov wrote:
> > > > > > > On Wed, 7 Feb 2024 at 12:42, Krishna chaitanya chundru
> > > > > > > <quic_krichai@quicinc.com> wrote:
> > > > > > > >
> > > > > > > > Enable PCIe1 controller and its corresponding PHY nodes on
> > > > > > > > qcs6490-rb3g2 platform.
> > > > > > > >
> > > > > > > > PCIe switch is connected to PCIe1, PCIe switch has multiple endpoints
> > > > > > > > connected. For each endpoint a unique BDF will be assigned and should
> > > > > > > > assign unique smmu id. So for each BDF add smmu id.
> > > > > > > >
> > > > > > > > Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > > > > > > > ---
> > > > > > > >     arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 42 ++++++++++++++++++++++++++++
> > > > > > > >     1 file changed, 42 insertions(+)
> > > > > > > >
> > > > > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > > > > index 8bb7d13d85f6..0082a3399453 100644
> > > > > > > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > > > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > > > > @@ -413,6 +413,32 @@ vreg_bob_3p296: bob {
> > > > > > > >            };
> > > > > > > >     };
> > > > > > > >
> > > > > > > > +&pcie1 {
> > > > > > > > +       perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > > > > > > > +
> > > > > > > > +       pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
> > > > > > > > +       pinctrl-names = "default";
> > > > > > > > +
> > > > > > > > +       iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
> > > > > > > > +                   <0x100 &apps_smmu 0x1c81 0x1>,
> > > > > > > > +                   <0x208 &apps_smmu 0x1c84 0x1>,
> > > > > > > > +                   <0x210 &apps_smmu 0x1c85 0x1>,
> > > > > > > > +                   <0x218 &apps_smmu 0x1c86 0x1>,
> > > > > > > > +                   <0x300 &apps_smmu 0x1c87 0x1>,
> > > > > > > > +                   <0x400 &apps_smmu 0x1c88 0x1>,
> > > > > > > > +                   <0x500 &apps_smmu 0x1c89 0x1>,
> > > > > > > > +                   <0x501 &apps_smmu 0x1c90 0x1>;
> > > > > > >
> > > > > > > Is the iommu-map really board specific?
> > > > > > >
> > > > > > The iommu-map for PCIe varies if PCIe switch is connected.
> > > > > > For this platform a PCIe switch is connected and for that reason
> > > > > > we need to define additional smmu ID's for each BDF.
> > > > > >
> > > > > > For that reason we defined here as these ID's are applicable only
> > > > > > for this board.
> > > > >
> > > > > So, these IDs are the same for all boards, just being unused on
> > > > > devices which have no bridges / switches connected to this PCIe host.
> > > > > If this is correct, please move them to sc7280.dtsi.
> > > > >
> > > > Yes ID's will be same for all boards. we can move them sc7280.dtsi
> > > > but the BDF to smmu mapping will be specific to this board only.
> > > > if there is some other PCIe switch with different configuration is
> > > > connected to different board of same variant in future again these
> > > > mapping needs to updated.
> > >
> > > Could you possibly clarify this? Are they assigned one at a time
> > > manually? Or is it somehow handled by the board's TZ code, which
> > > assigns them sequentially to the known endpoints? And is it done via
> > > probing the link or via some static configuration?
> >
> > There is no assignment of SID's in TZ for PCIe.
> > PCIe controller has BDF to SID mapping table which we need to
> > program with the iommu map table.
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/pci/controller/dwc/pcie-qcom.c?h=v6.8-rc3#n997
> >
> > Based upon switch the BDF to SID table will change for example I had two
> > switches with one switch has 2 PCIe ports and other has 3 ports one
> > embedded port which supports multiple functions.
> >
> > For the first switch the BDF's are
> >       - 0x000(root complex),
> >       - 0x100(USP),
> >       - 0x208(DSP 0),
> >       - 0x210(DSP 1),
> >       - 0x300(endpoint connected to DSP 0),
> >       - 0x400( endpoint connected to DSP 1).
> >
> > For 2nd switch the BDF's are
> >       - 0x000(root complex),
> >       - 0x100(USP),
> >       - 0x208(embeeded DSP 0),
> >       - 0x210(DSP 1),
> >       - 0x218 (DSP 2),
> >       - 0x300(embedded endpoint function 0),
> >       - 0x301 (embedded endpoint function 1)
> >       - 0x400( endpoint connected to DSP 1)
> >       - 0x500(endpoint connected to DSP2).
> >
> > For these two switches we need different BDF to SID table so for that
> > reason we are keeping iommu map here as this is specific to this board.
> >
>
> I don't understand why the SID table has to change between PCIe devices. The SID
> mapping should be part of the SoC dtsi, where a single SID would be defined for
> the devices under a bus. And all the devices under the bus have to use the same
> SID.

This sounds like a sane default, indeed. Nevertheless, I see a point
in having per-device-SID assignment. This increases isolation and can
potentially prevent security issues. However in such case SID
assignment should be handled in some automagic way. In other words,
there must be no need to duplicate the topology of the PCIe bus in the
iommu-maps property.

>
> Perhaps you are missing iommu-map-mask?


-- 
With best wishes
Dmitry

