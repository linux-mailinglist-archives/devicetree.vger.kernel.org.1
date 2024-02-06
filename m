Return-Path: <devicetree+bounces-39096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0FC84B642
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 985B5289401
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171F7130E2E;
	Tue,  6 Feb 2024 13:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OKomjMaa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604D4130AED
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 13:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707225899; cv=none; b=LCtt3yC07AFsCx/g5omibOT2q0r4G0A1VCT625XhzGfTICJNaJIE1FG5vsMWHrh2PfVMOPDCabdYv89hq1h2X12fTsqoAoTN6cSaJenMzB5qrPPtDwFcHKUzeHx287cXKZcsrSYBxAB7wXwbYbWgEGsxxfBkkC3TJ7Gk0KGBof8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707225899; c=relaxed/simple;
	bh=0ODBZ0bKH/+4Qy9gatNTHZmyTBY0YATZdj+RldTZHyU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WiJC7nL9mkDYN8iCg4+gxPyVDNgoFqsnLatW2rCMHYVubc+/mJKc+Dq43hBAJhsnW0isKWSqh68BWuYMvkyXdrL0/e6MBBXmi29Yj1yjJkaufyN0XKg9qiBo9k2rXeIh2zfTwkgYGvEL1DnEL+J0RM+kRaiRPZKonDaCQZiMV6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OKomjMaa; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6041c6333cdso45775697b3.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 05:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707225896; x=1707830696; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bNYfeRHplSwy9onZWV3mvxR3r7VxC5IicrOwRsKxWIk=;
        b=OKomjMaaf+cX3n72ippMsSkhpG2sCFYgF+9V+cmevhmO4pVqJ5OljqpauSEr3Pnsos
         yw560KNo8pjtOQetVX87XNcHFn2iFDnOUS80CyK7jivlnTE+m07YutJH24EJvnytK9rv
         lZc/YKjy3FClmozo+GPWTTK4jIJ9xroNSjE4s9dr3UVELSDUMiVAhVdwHASxqVJOfZb1
         /yv6/qFdcSiXJfADA23N1Sw4nKsY+jv96gQsBxPK/sTMFK/lGGXOB3etUZrtptOsC2xa
         jnhQi7aFNBmti8JDU9k3BTkaTJyhWx0uP6KuCwrT5URbqQVt8B5Ga3cdC6ovxALugXNL
         tOaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707225896; x=1707830696;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bNYfeRHplSwy9onZWV3mvxR3r7VxC5IicrOwRsKxWIk=;
        b=iQUmsOmG0Uhgsi8tNcTsoG0A+q+3gZeIhpY7iVts5CumxefvIxJwLmhyKnGjhqvPmO
         XcALyO4LLd+deyotIjCkeb4KljQF2b4DHxGKUzSJCxDn5UYw2soUv40RiUF6SCopdwUZ
         WtUZOAiOL0y2J2eELJo2ofWZJnXA+huATDIYaqS3BMZyG2y39Ws7BJ5nIBgru4txR6ZK
         r3mru7qYBHf++OTITihEvK2aj3wFn2nSXp2MoTur8qVoZtB8o0zfGa9jbLh1q2LuL4xB
         q8bpIyeefHAvi5MH0++KOBO1WAEl/U5Oh5XaS5r1+pPiuLiIld9GQ5U4QEvcgEod3nFb
         AIEA==
X-Gm-Message-State: AOJu0Yy/lXv2vNhJWHHv4CziOYJRhYTC9jzj2jW+nhTQl/VvjB7XzsSI
	nWIA15gvSRD+4qNnWdNZbMYX6BQXZyl8KwASq/vVIftxHGZK69N+Glthq74wD4FPUXODN6jrkz2
	7KxOBARPRnEEaGBs7SlgznEx4cxfiWFpAwZn3+g==
X-Google-Smtp-Source: AGHT+IHdpCXRaHmDnwQ9pkUygZiBMY/U6bxr90P/Qd0dgUaOhK74+cKws4zPxWQ4ux9U2cXRyya7XLx56BkLEIzQP0o=
X-Received: by 2002:a81:ed0c:0:b0:5ff:6319:6b0e with SMTP id
 k12-20020a81ed0c000000b005ff63196b0emr1590646ywm.21.1707225896133; Tue, 06
 Feb 2024 05:24:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206114745.1388491-1-quic_kriskura@quicinc.com>
 <20240206114745.1388491-3-quic_kriskura@quicinc.com> <CAA8EJpoed-hu4hPXAcwQxmJAaNRwJ2y5q9qybWaPP8bdMnz_oA@mail.gmail.com>
 <0470a930-d629-4467-b619-58d3e76f59a7@quicinc.com>
In-Reply-To: <0470a930-d629-4467-b619-58d3e76f59a7@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 6 Feb 2024 15:24:45 +0200
Message-ID: <CAA8EJppJAdHXoVs_2VqQf=_Wk_LoEcNMY2H-Xzqu8KzeaN8i0g@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sa8295p: Enable tertiary controller
 and its 4 USB ports
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 6 Feb 2024 at 14:28, Krishna Kurapati PSSNV
<quic_kriskura@quicinc.com> wrote:
>
>
>
> On 2/6/2024 5:43 PM, Dmitry Baryshkov wrote:
> > On Tue, 6 Feb 2024 at 14:03, Krishna Kurapati <quic_kriskura@quicinc.com> wrote:
> >>
> >> Enable tertiary controller for SA8295P (based on SC8280XP).
> >> Add pinctrl support for usb ports to provide VBUS to connected peripherals.
> >
> > These are not just pinctrl entries. They hide VBUS regulators. Please
> > implement them properly as corresponding vbus regulators.
> >
>
> Hi Dmitry. Apologies, can you elaborate on your comment. I thought this
> implementation was fine as Konrad reviewed it in v13 [1]. I removed his
> RB tag as I made one change of dropping "_state" in labels.

My comment is pretty simple: if I'm not mistaken, your DT doesn't
reflect your hardware design.
You have actual VBUS regulators driven by these GPIO pins. Is this correct?
If so, you should describe them properly in the device tree rather
than describing them just as USB host's pinctrl state.

>
> [1]:
> https://lore.kernel.org/all/7141c2dd-9dcd-4186-ba83-829fe925e464@linaro.org/
>
> Regards,
> Krishna,
>
> >>
> >> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/sa8295p-adp.dts | 49 ++++++++++++++++++++++++
> >>   1 file changed, 49 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
> >> index fd253942e5e5..6da444042f82 100644
> >> --- a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
> >> +++ b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
> >> @@ -9,6 +9,7 @@
> >>   #include <dt-bindings/gpio/gpio.h>
> >>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >>   #include <dt-bindings/spmi/spmi.h>
> >> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> >>
> >>   #include "sa8540p.dtsi"
> >>   #include "sa8540p-pmics.dtsi"
> >> @@ -584,6 +585,16 @@ &usb_1_qmpphy {
> >>          status = "okay";
> >>   };
> >>
> >> +&usb_2 {
> >> +       pinctrl-0 = <&usb2_en>,
> >> +                   <&usb3_en>,
> >> +                   <&usb4_en>,
> >> +                   <&usb5_en>;
> >> +       pinctrl-names = "default";
> >> +
> >> +       status = "okay";
> >> +};
> >> +
> >>   &usb_2_hsphy0 {
> >>          vdda-pll-supply = <&vreg_l5a>;
> >>          vdda18-supply = <&vreg_l7g>;
> >> @@ -636,6 +647,44 @@ &xo_board_clk {
> >>
> >>   /* PINCTRL */
> >>
> >> +&pmm8540c_gpios {
> >> +       usb2_en: usb2-en-state {
> >> +               pins = "gpio9";
> >> +               function = "normal";
> >> +               qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
> >> +               output-high;
> >> +               power-source = <0>;
> >> +       };
> >> +};
> >> +
> >> +&pmm8540e_gpios {
> >> +       usb3_en: usb3-en-state {
> >> +               pins = "gpio5";
> >> +               function = "normal";
> >> +               qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
> >> +               output-high;
> >> +               power-source = <0>;
> >> +       };
> >> +};
> >> +
> >> +&pmm8540g_gpios {
> >> +       usb4_en: usb4-en-state {
> >> +               pins = "gpio5";
> >> +               function = "normal";
> >> +               qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
> >> +               output-high;
> >> +               power-source = <0>;
> >> +       };
> >> +
> >> +       usb5_en: usb5-en-state {
> >> +               pins = "gpio9";
> >> +               function = "normal";
> >> +               qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
> >> +               output-high;
> >> +               power-source = <0>;
> >> +       };
> >> +};
> >> +
> >>   &tlmm {
> >>          pcie2a_default: pcie2a-default-state {
> >>                  clkreq-n-pins {
> >> --
> >> 2.34.1
> >>
> >>
> >
> >



-- 
With best wishes
Dmitry

