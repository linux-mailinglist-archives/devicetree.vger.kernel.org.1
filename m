Return-Path: <devicetree+bounces-56004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0539F89749A
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 17:55:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43D88B24103
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A604814A4EA;
	Wed,  3 Apr 2024 15:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HCysQ6sk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AD4146A96
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712159665; cv=none; b=nTFRyMwKQ87aWiKV2+HryKOoDuXXgTaI+6BSxiPqDGfRwkxEZVjqttuXWkFhSf+qgKeRQMHMxFEqoZBsBhXxz+3B6YHqXfeAMJfX3gnFdYkrCYUG2LplS4ikQEOCu+M7vjW60G8xjG41XBcjKR1O7vdPkPCNJU2UhH3Sy3Qyv3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712159665; c=relaxed/simple;
	bh=1eTLwQzaYBV7OUcfgIH0EDKuy6BwaTRW71UnykGe0P0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dbFtvkYraf/SiUIUGlkPHVho/cyG3bdPvuq2fDIEqmqHPM2trrIwAetcaxVmEi1xFmMF4zzGugHo0s7+dQLszUVKwFC9hZdEobkbeAi3P2d+rE2HsuNQW3x/aR5UYQgqamYngOyuWlTZ0+dDykhJBz0xMSU4Mbga9z7Hl+y8shA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HCysQ6sk; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so30013276.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 08:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712159663; x=1712764463; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vRMKmSBYE4KK6IN+QvjwVD4JdItESY/Xvf9b3QJHfIk=;
        b=HCysQ6sk5733PGwM6xVx/vNBD7bXWkBWxsLp9rIqfVS0tSfwxD9a5bvKL98vtDq9fu
         Fs31wKLMA2aaO7/+4NEpPdWesWiKkVlD7dQBqcO5FUj3nk265Q1anybcUNlu554OeF51
         Yk/Slp3BdbEtMxSyPA4jyGyDIQMVDJ1B/bMlezvNb91ziT1umb+w6k7f1mB/Dnn1awga
         C0yBPUAQ6HRZuuE45vywvxsz3b7IZQygKPyP4UaV9tQKS/5GNEthhEz+n3YPsFh2qo0U
         5FzRm8Y/uzqroplMGKwryXv4XVhvyl8KKTBqtEddqvgMdvAwdLPldzJC7GDrVxuXSjal
         yUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712159663; x=1712764463;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vRMKmSBYE4KK6IN+QvjwVD4JdItESY/Xvf9b3QJHfIk=;
        b=BXbJbSDhpQLdGouCPmw1r95Rr2vS7wPDsUAdQ8VEGcon0QwH8XnVpQx+EzqX+ajmdd
         94KpKXN3B3PI0c+BscCMw66f2hnktdamp/1nbwKRZUFv5lRxQfEf+wvx5XwC/QKEfuvQ
         c/n+JhZadYg+VTMFq7Pe8x9oaJHdmxN1YFQbaE484nkED0y2pOV79SDIFbz/XI++tchy
         gmTJkd//HFqipEiYPEUValu65wyzd7sJUNjusx0K2/RPrA+HM1nZ3KtG88urX+9tXDAi
         B8+Z8MulLjV6FOzt404dGNgKqvPG8+X9gVkqjOyW6nUrZ0BftQjFY8FDXYCEnm+oG/Ow
         7/9w==
X-Forwarded-Encrypted: i=1; AJvYcCUMjq24NcDC2B23ON4tQcLHCusEbmo3FqUw8PLWHaE4IuR4iokoc3pKciMjVePd1fFTfyWGixvlfgWAZse59GThbJ3MSsFQckB4Kg==
X-Gm-Message-State: AOJu0YznLRclhqFAB07f1CJVlWHiYbxOzlE/iAvswjTaEiM29woPQRuC
	PWKKZZHEB4UNIVr5u6xqyK0TigvCbMRC5XT/9UENUZf1FHabLN67oqml15d90XLbK9r4zFKQkuw
	4Mn7R6PxOmAonirqHDcOlQg52trHjckfktJS0cg==
X-Google-Smtp-Source: AGHT+IHm1+LFCNdzZkRVTYUMH1DgvchET2qgGOjH/Tlow/zKqwlX/5Dz1wD7h9vRidA6vvQgN3BRR1eTdLr84w92PdE=
X-Received: by 2002:a25:2e04:0:b0:dc7:4f61:5723 with SMTP id
 u4-20020a252e04000000b00dc74f615723mr13693169ybu.39.1712159662606; Wed, 03
 Apr 2024 08:54:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240321092529.13362-1-quic_jkona@quicinc.com>
 <20240321092529.13362-7-quic_jkona@quicinc.com> <CAA8EJppHGS+W-aiXvJ2cE=jCbua8Y0Q+zv_QTs+C9V5+Y1vuZg@mail.gmail.com>
 <008d574f-9c9e-48c6-b64e-89fb469cbde4@quicinc.com> <b3464321-0c52-4c41-9198-e9e7b16aa419@quicinc.com>
In-Reply-To: <b3464321-0c52-4c41-9198-e9e7b16aa419@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Apr 2024 18:54:11 +0300
Message-ID: <CAA8EJpqDwCVAjDphnC-HdfseMJ-xd8VVxb5+9UcGEcKLcn-heg@mail.gmail.com>
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

On Wed, 3 Apr 2024 at 10:16, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
>
>
>
> On 3/25/2024 11:38 AM, Jagadeesh Kona wrote:
> >
> >
> > On 3/21/2024 6:43 PM, Dmitry Baryshkov wrote:
> >> On Thu, 21 Mar 2024 at 11:27, Jagadeesh Kona <quic_jkona@quicinc.com>
> >> wrote:
> >>>
> >>> Add device nodes for video and camera clock controllers on Qualcomm
> >>> SM8650 platform.
> >>>
> >>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> >>> ---
> >>>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 28 ++++++++++++++++++++++++++++
> >>>   1 file changed, 28 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>> b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>> index 32c0a7b9aded..d862aa6be824 100644
> >>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>> @@ -4,6 +4,8 @@
> >>>    */
> >>>
> >>>   #include <dt-bindings/clock/qcom,rpmh.h>
> >>> +#include <dt-bindings/clock/qcom,sm8450-videocc.h>
> >>> +#include <dt-bindings/clock/qcom,sm8650-camcc.h>
> >>>   #include <dt-bindings/clock/qcom,sm8650-dispcc.h>
> >>>   #include <dt-bindings/clock/qcom,sm8650-gcc.h>
> >>>   #include <dt-bindings/clock/qcom,sm8650-gpucc.h>
> >>> @@ -3110,6 +3112,32 @@ opp-202000000 {
> >>>                          };
> >>>                  };
> >>>
> >>> +               videocc: clock-controller@aaf0000 {
> >>> +                       compatible = "qcom,sm8650-videocc";
> >>> +                       reg = <0 0x0aaf0000 0 0x10000>;
> >>> +                       clocks = <&bi_tcxo_div2>,
> >>> +                                <&gcc GCC_VIDEO_AHB_CLK>;
> >>> +                       power-domains = <&rpmhpd RPMHPD_MMCX>;
> >>> +                       required-opps = <&rpmhpd_opp_low_svs>;
> >>
> >> The required-opps should no longer be necessary.
> >>
> >
> > Sure, will check and remove this if not required.
>
>
> I checked further on this and without required-opps, if there is no vote
> on the power-domain & its peer from any other consumers, when runtime
> get is called on device, it enables the power domain just at the minimum
> non-zero level. But in some cases, the minimum non-zero level of
> power-domain could be just retention and is not sufficient for clock
> controller to operate, hence required-opps property is needed to specify
> the minimum level required on power-domain for this clock controller.

In which cases? If it ends up with the retention vote, it is a bug
which must be fixed.

>
> Thanks,
> Jagadeesh
>
> >
> >>> +                       #clock-cells = <1>;
> >>> +                       #reset-cells = <1>;
> >>> +                       #power-domain-cells = <1>;
> >>> +               };
> >>> +
> >>> +               camcc: clock-controller@ade0000 {
> >>> +                       compatible = "qcom,sm8650-camcc";
> >>> +                       reg = <0 0x0ade0000 0 0x20000>;
> >>> +                       clocks = <&gcc GCC_CAMERA_AHB_CLK>,
> >>> +                                <&bi_tcxo_div2>,
> >>> +                                <&bi_tcxo_ao_div2>,
> >>> +                                <&sleep_clk>;
> >>> +                       power-domains = <&rpmhpd RPMHPD_MMCX>;
> >>> +                       required-opps = <&rpmhpd_opp_low_svs>;
> >>> +                       #clock-cells = <1>;
> >>> +                       #reset-cells = <1>;
> >>> +                       #power-domain-cells = <1>;
> >>> +               };
> >>> +
> >>>                  mdss: display-subsystem@ae00000 {
> >>>                          compatible = "qcom,sm8650-mdss";
> >>>                          reg = <0 0x0ae00000 0 0x1000>;
> >>> --
> >>> 2.43.0
> >>>
> >>>
> >>
> >>



-- 
With best wishes
Dmitry

