Return-Path: <devicetree+bounces-56191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6700F898102
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 07:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B5E228EE4B
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 05:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2836122611;
	Thu,  4 Apr 2024 05:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bSqC/7Wo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7963DBBC
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 05:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712208623; cv=none; b=miYfPpW1kmKMzGQp9Bxjd8Th05vqUV40SU90LZnbIAztxYM4nCYGG98mU8MTUcIFDqpR3jMI6QOWxDHMcCHZJpoeSns9wsNPUMRKM5IedpP5PT2U5of3FNKqp5rffVZSYBGVKlzmRQE9gWxUcwUxkSdH6Uielh7eTRuSE2R/nyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712208623; c=relaxed/simple;
	bh=hrT6CSkkEiHpCL2254tYrBO7lscNQ5B7mlo/PBHS4j0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XdWyuv6kr4W55naWZY7AfMFpZNCL9l5uSqv1j9KTwc9XSCFcZW8t5QKGEY48LPFz3nbtXrV142Ax2v3TkhjbhntFd95iSfte86kW0BQUBouk8oKeOChyy0Y7G+MFsagXBLqw/S7mlyjCC4GJg2UVsD9LKja2vvDEVOpoKwNpmyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bSqC/7Wo; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc6d8bd612dso670583276.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 22:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712208619; x=1712813419; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dyCeaWOBhvl6G+/jJPj4WdMHHOTtXZ5RKep0At0rnzE=;
        b=bSqC/7WoEKjeLBagHHQRVLrCAnZqnGOYuY3dE1kpze4f+wTIVMtf96YNg6Fkw9kjVt
         lvw32mLtESFM+qvHkD9TO7Mup9cr3vyq38TlZ7brIrQdrmkz2e3cquAXSZHXHAJvpjxp
         0E+8SG6mfhwYWUiRvzB26GguW8GRMVEy6ycgCI9DP6nCvO2T35UF/7Uele5Pn7aMhDJ8
         f3Bud8+uC5IjpV1uns2GOt3U8SiuQ/8917g065Bb+xsQIlRJAsXkEuCAKmVmTZbwT55f
         r94s4Eu5+AqmTaJmHZFEVuHYqlZODvif85p4U8mlIDBSDxVfgIqYlhdc6MLmcgC08h5M
         evAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712208619; x=1712813419;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dyCeaWOBhvl6G+/jJPj4WdMHHOTtXZ5RKep0At0rnzE=;
        b=hx0bN2wTrXuvSci8RL7M5GngS3zJypTP7w6nyIqTPyyrDBaDX0y2N1+/W0iB/hLNXm
         kgvhBUv3bO+8gCAcb8tdtWIcioi41rSEVlev4Hl3tDLTgaEeog/7NTlcpsAb/+FtdkWv
         Edi7+cCfNaaC4k+JTytX8Owd/19J8/U6WuceIUre/ze8LyNmorbbcybfrot3H2hearch
         8PNsB1qDIWWcxsJXn8ILSIXdPX9+EjjMEHkWOnhOGXwfA+3JfkJTIZD40Q2fpeK3J3dX
         SSecr4Tft8Yp3CTjD8nqJbPPDJBanZZwjbXdIR7cgJ6cw1NszragIIbO/BarSq+EmwVv
         Qe+A==
X-Forwarded-Encrypted: i=1; AJvYcCXbUsoI8HFxFESgho3D1692Xw2ZZKj6YwibIMMDo+lAASaPXvYQ3lJfTXJO/SBmYKLRaUnDiyOpa9ZPyn0yrZ2Bp7xWaKVRUfA/oA==
X-Gm-Message-State: AOJu0YwdVVCcrBJhfJr51Va3duazvzWRlgz5N4C1zSlJ6jxafV4A0jU+
	zqxmK6Be0Xfh4CcZUQgcHXXcWPOV3dDS/Rwdqp+YFpm0zIX5dP1n8gcuxVfwYCcXJH7G4CCYjzP
	XtCIhjE6AJwvUvuUHCi0Yw7StOIME3XVKnlhNhA==
X-Google-Smtp-Source: AGHT+IGKRxJEtdCBGlcL3OcZ4OT75D2VZtdOqbw13TdwBYkQp+Ruc2ZWNb86Z/W+QS4HrKFAfGGKYy4zaXWCiIsdQH4=
X-Received: by 2002:a25:5f45:0:b0:ddd:696a:8656 with SMTP id
 h5-20020a255f45000000b00ddd696a8656mr1475611ybm.41.1712208619210; Wed, 03 Apr
 2024 22:30:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240321092529.13362-1-quic_jkona@quicinc.com>
 <20240321092529.13362-7-quic_jkona@quicinc.com> <CAA8EJppHGS+W-aiXvJ2cE=jCbua8Y0Q+zv_QTs+C9V5+Y1vuZg@mail.gmail.com>
 <008d574f-9c9e-48c6-b64e-89fb469cbde4@quicinc.com> <b3464321-0c52-4c41-9198-e9e7b16aa419@quicinc.com>
 <CAA8EJpqDwCVAjDphnC-HdfseMJ-xd8VVxb5+9UcGEcKLcn-heg@mail.gmail.com> <fba2474e-31a6-4fef-acf9-7069933584c8@quicinc.com>
In-Reply-To: <fba2474e-31a6-4fef-acf9-7069933584c8@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 4 Apr 2024 08:30:07 +0300
Message-ID: <CAA8EJprfaALkQe-wUrBow6B1A66ro0AoVpfnQJLXgqFmL8isNQ@mail.gmail.com>
Subject: Re: [PATCH V2 RESEND 6/6] arm64: dts: qcom: sm8650: Add video and
 camera clock controllers
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Apr 2024 at 08:13, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
>
>
>
> On 4/3/2024 9:24 PM, Dmitry Baryshkov wrote:
> > On Wed, 3 Apr 2024 at 10:16, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 3/25/2024 11:38 AM, Jagadeesh Kona wrote:
> >>>
> >>>
> >>> On 3/21/2024 6:43 PM, Dmitry Baryshkov wrote:
> >>>> On Thu, 21 Mar 2024 at 11:27, Jagadeesh Kona <quic_jkona@quicinc.com>
> >>>> wrote:
> >>>>>
> >>>>> Add device nodes for video and camera clock controllers on Qualcomm
> >>>>> SM8650 platform.
> >>>>>
> >>>>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> >>>>> ---
> >>>>>    arch/arm64/boot/dts/qcom/sm8650.dtsi | 28 ++++++++++++++++++++++++++++
> >>>>>    1 file changed, 28 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>>>> b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>>>> index 32c0a7b9aded..d862aa6be824 100644
> >>>>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>>>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>>>> @@ -4,6 +4,8 @@
> >>>>>     */
> >>>>>
> >>>>>    #include <dt-bindings/clock/qcom,rpmh.h>
> >>>>> +#include <dt-bindings/clock/qcom,sm8450-videocc.h>
> >>>>> +#include <dt-bindings/clock/qcom,sm8650-camcc.h>
> >>>>>    #include <dt-bindings/clock/qcom,sm8650-dispcc.h>
> >>>>>    #include <dt-bindings/clock/qcom,sm8650-gcc.h>
> >>>>>    #include <dt-bindings/clock/qcom,sm8650-gpucc.h>
> >>>>> @@ -3110,6 +3112,32 @@ opp-202000000 {
> >>>>>                           };
> >>>>>                   };
> >>>>>
> >>>>> +               videocc: clock-controller@aaf0000 {
> >>>>> +                       compatible = "qcom,sm8650-videocc";
> >>>>> +                       reg = <0 0x0aaf0000 0 0x10000>;
> >>>>> +                       clocks = <&bi_tcxo_div2>,
> >>>>> +                                <&gcc GCC_VIDEO_AHB_CLK>;
> >>>>> +                       power-domains = <&rpmhpd RPMHPD_MMCX>;
> >>>>> +                       required-opps = <&rpmhpd_opp_low_svs>;
> >>>>
> >>>> The required-opps should no longer be necessary.
> >>>>
> >>>
> >>> Sure, will check and remove this if not required.
> >>
> >>
> >> I checked further on this and without required-opps, if there is no vote
> >> on the power-domain & its peer from any other consumers, when runtime
> >> get is called on device, it enables the power domain just at the minimum
> >> non-zero level. But in some cases, the minimum non-zero level of
> >> power-domain could be just retention and is not sufficient for clock
> >> controller to operate, hence required-opps property is needed to specify
> >> the minimum level required on power-domain for this clock controller.
> >
> > In which cases? If it ends up with the retention vote, it is a bug
> > which must be fixed.
> >
>
> The minimum non-zero level(configured from bootloaders) of MMCX is
> retention on few chipsets but it can vary across the chipsets. Hence to
> be on safer side from our end, it is good to have required-opps in DT to
> specify the minimum level required for this clock controller.

We are discussing sm8650, not some abstract chipset. Does it list
retention or low_svs as a minimal level for MMCX?

>
> Thanks,
> Jagadeesh
>
> >>
> >> Thanks,
> >> Jagadeesh
> >>
> >>>
> >>>>> +                       #clock-cells = <1>;
> >>>>> +                       #reset-cells = <1>;
> >>>>> +                       #power-domain-cells = <1>;
> >>>>> +               };
> >>>>> +
> >>>>> +               camcc: clock-controller@ade0000 {
> >>>>> +                       compatible = "qcom,sm8650-camcc";
> >>>>> +                       reg = <0 0x0ade0000 0 0x20000>;
> >>>>> +                       clocks = <&gcc GCC_CAMERA_AHB_CLK>,
> >>>>> +                                <&bi_tcxo_div2>,
> >>>>> +                                <&bi_tcxo_ao_div2>,
> >>>>> +                                <&sleep_clk>;
> >>>>> +                       power-domains = <&rpmhpd RPMHPD_MMCX>;
> >>>>> +                       required-opps = <&rpmhpd_opp_low_svs>;
> >>>>> +                       #clock-cells = <1>;
> >>>>> +                       #reset-cells = <1>;
> >>>>> +                       #power-domain-cells = <1>;
> >>>>> +               };
> >>>>> +
> >>>>>                   mdss: display-subsystem@ae00000 {
> >>>>>                           compatible = "qcom,sm8650-mdss";
> >>>>>                           reg = <0 0x0ae00000 0 0x1000>;
> >>>>> --
> >>>>> 2.43.0
> >>>>>
> >>>>>
> >>>>
> >>>>
> >
> >
> >



-- 
With best wishes
Dmitry

