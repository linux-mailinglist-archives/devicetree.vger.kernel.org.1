Return-Path: <devicetree+bounces-56362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEB5898BC8
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 18:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE4811C267EC
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 16:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AD6E12AAE0;
	Thu,  4 Apr 2024 16:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UDiDUDsa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2927A12AACB
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712246756; cv=none; b=Zw1cLGUe3ILoQx1lnfDSGv5IMZCqhZCspmZYmz9Oy5XKQZaBBZ+TuJWUEpCIt3cUS2zdkHfD0GB0NuORYKkwOM7mPazW9rYgnzBR2ba7P6uCt41VE7h/u69om/prrle5wLeJp/XhpG9yfbCD9iM83bT0F//UxpS6DcYATL3mSD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712246756; c=relaxed/simple;
	bh=Dju+y0EjZuxJaGKBRNnKMWatS2Hwo2dPJEG3wzZyBXU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bxAzxNas6eCH0iZYOMBf3SMJdCW1aA8+CiDTyrUtxxIb0vJ6xKDyq4XexTEnZBUi6KZ4dvoiG/meIXboFDHe7QodeME0FWY0ZXMThyCHZfOw30hJV6MO+eGAIZe/QqKnym42o/9HBOWSIG1Wm8G2PSZX9f3qs/ZPJMSWreE8Bac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UDiDUDsa; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dc6cbe1ac75so892602276.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 09:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712246753; x=1712851553; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XYk+z4GPlvSLgbb1+lB3Uw//BsSPlCRUU8yX8yl3BmQ=;
        b=UDiDUDsaIn/pr8iKPMZ6qHf04NHSkJ78dFI9O7tBmgMlcHs3S6XEUwWltqiwc4nsBa
         m9WRtMVo5B/mD0mJhYbfSGf6t6EQCSg8FbcEp5fxmor115O7CHpLp3z05MxzD296O7Hk
         uqVZzLSxF/juipEDzi+tWTDUqhP57mWuoGG3BXu0KooJep1SvOs5vbdLR01GXveo6vE6
         U1V+HtAb2lE5fN7/70pvJpJqsE3/+BsOnL/o4cBMg4aafUyjL+Waeq+w1Hww0OEEXZIX
         nuzTW9kzKxeZgNdSxAMapKQhGvEAUz/FCulRbSL0hSKetcTEjucXDYQkWXtMWi7vQegk
         EXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712246753; x=1712851553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XYk+z4GPlvSLgbb1+lB3Uw//BsSPlCRUU8yX8yl3BmQ=;
        b=hNTGV4Cp/s0U9+ihkZV6ZGAal7ZSM1ClJQ4WNSBKsTSrOWTmWlttRjRn9mroQ7IDZA
         WmGMze6jH4LN2zpEYwRyQVu7pd2QJl5j35zHtQJHcp5sWStA74W2aAxpHvHbVEjP1PzZ
         57psdTfwg7CGDzdidZcgjJSQTZSW2ygWBsUnB3Ws2gI96CDpjaKvrZ8Ti98zqXQYs3VG
         KD7Eem8s2U4DDXe7D+uHUYT3EjOoaGSqrWEb9Z5ky6baTX8CRng9p4+hA0o1BUYkRQqz
         NOkVnUMLCfNn0B5q2NKhAinN9AusY8dzHO52ESV/5ERlp7oPuoQrDNSfNHVuan7Z3i+G
         5q5g==
X-Forwarded-Encrypted: i=1; AJvYcCXFdD7/bVuMf0J3WhUkxI+TJKoAiUZ3vsMBWThNEAdj4dZuBr57pgMlbjqdP1Xlc8uNWX+VN2cTsxfaDykFdIznYW1L3Dtf0JWqHg==
X-Gm-Message-State: AOJu0YwHQ9C44ztpcsJyqK6eNCptB/umeKNoD2Mn/PPInVcH9btBkbtX
	5BD1nY2nXJUCkaTKBp1h/96LpZ+2s1UBZ5jtZyXTkj1VbqKIdWjKv3R+xuIqWeri7XC3d3wNjB4
	wn6iV5rokqcDjSzQr09+XQLnfrlxj+YSAXS653w==
X-Google-Smtp-Source: AGHT+IGLJgrzGkNaXq+Qj98xX/89ja6NF4j8NNNnlNdPgtZgZ99WA8WhUPyLVw3mozNsp2SP2VGgg/Z0Pkk8RGS2d3s=
X-Received: by 2002:a25:8d0f:0:b0:ddd:7a88:2cd7 with SMTP id
 n15-20020a258d0f000000b00ddd7a882cd7mr4635600ybl.18.1712246753095; Thu, 04
 Apr 2024 09:05:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240321092529.13362-1-quic_jkona@quicinc.com>
 <20240321092529.13362-7-quic_jkona@quicinc.com> <CAA8EJppHGS+W-aiXvJ2cE=jCbua8Y0Q+zv_QTs+C9V5+Y1vuZg@mail.gmail.com>
 <008d574f-9c9e-48c6-b64e-89fb469cbde4@quicinc.com> <b3464321-0c52-4c41-9198-e9e7b16aa419@quicinc.com>
 <CAA8EJpqDwCVAjDphnC-HdfseMJ-xd8VVxb5+9UcGEcKLcn-heg@mail.gmail.com>
 <fba2474e-31a6-4fef-acf9-7069933584c8@quicinc.com> <CAA8EJprfaALkQe-wUrBow6B1A66ro0AoVpfnQJLXgqFmL8isNQ@mail.gmail.com>
 <8a5a3cf8-5b4f-487f-ad91-00499509f8ec@quicinc.com>
In-Reply-To: <8a5a3cf8-5b4f-487f-ad91-00499509f8ec@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 4 Apr 2024 19:05:42 +0300
Message-ID: <CAA8EJpoW8MQQ3OPfOVYRJtgsn1JgKd5Ew7vqgWx3xWE-xJ=R-g@mail.gmail.com>
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

On Thu, 4 Apr 2024 at 13:06, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
>
>
>
> On 4/4/2024 11:00 AM, Dmitry Baryshkov wrote:
> > On Thu, 4 Apr 2024 at 08:13, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 4/3/2024 9:24 PM, Dmitry Baryshkov wrote:
> >>> On Wed, 3 Apr 2024 at 10:16, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
> >>>>
> >>>>
> >>>>
> >>>> On 3/25/2024 11:38 AM, Jagadeesh Kona wrote:
> >>>>>
> >>>>>
> >>>>> On 3/21/2024 6:43 PM, Dmitry Baryshkov wrote:
> >>>>>> On Thu, 21 Mar 2024 at 11:27, Jagadeesh Kona <quic_jkona@quicinc.com>
> >>>>>> wrote:
> >>>>>>>
> >>>>>>> Add device nodes for video and camera clock controllers on Qualcomm
> >>>>>>> SM8650 platform.
> >>>>>>>
> >>>>>>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> >>>>>>> ---
> >>>>>>>     arch/arm64/boot/dts/qcom/sm8650.dtsi | 28 ++++++++++++++++++++++++++++
> >>>>>>>     1 file changed, 28 insertions(+)
> >>>>>>>
> >>>>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>>>>>> b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>>>>>> index 32c0a7b9aded..d862aa6be824 100644
> >>>>>>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>>>>>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> >>>>>>> @@ -4,6 +4,8 @@
> >>>>>>>      */
> >>>>>>>
> >>>>>>>     #include <dt-bindings/clock/qcom,rpmh.h>
> >>>>>>> +#include <dt-bindings/clock/qcom,sm8450-videocc.h>
> >>>>>>> +#include <dt-bindings/clock/qcom,sm8650-camcc.h>
> >>>>>>>     #include <dt-bindings/clock/qcom,sm8650-dispcc.h>
> >>>>>>>     #include <dt-bindings/clock/qcom,sm8650-gcc.h>
> >>>>>>>     #include <dt-bindings/clock/qcom,sm8650-gpucc.h>
> >>>>>>> @@ -3110,6 +3112,32 @@ opp-202000000 {
> >>>>>>>                            };
> >>>>>>>                    };
> >>>>>>>
> >>>>>>> +               videocc: clock-controller@aaf0000 {
> >>>>>>> +                       compatible = "qcom,sm8650-videocc";
> >>>>>>> +                       reg = <0 0x0aaf0000 0 0x10000>;
> >>>>>>> +                       clocks = <&bi_tcxo_div2>,
> >>>>>>> +                                <&gcc GCC_VIDEO_AHB_CLK>;
> >>>>>>> +                       power-domains = <&rpmhpd RPMHPD_MMCX>;
> >>>>>>> +                       required-opps = <&rpmhpd_opp_low_svs>;
> >>>>>>
> >>>>>> The required-opps should no longer be necessary.
> >>>>>>
> >>>>>
> >>>>> Sure, will check and remove this if not required.
> >>>>
> >>>>
> >>>> I checked further on this and without required-opps, if there is no vote
> >>>> on the power-domain & its peer from any other consumers, when runtime
> >>>> get is called on device, it enables the power domain just at the minimum
> >>>> non-zero level. But in some cases, the minimum non-zero level of
> >>>> power-domain could be just retention and is not sufficient for clock
> >>>> controller to operate, hence required-opps property is needed to specify
> >>>> the minimum level required on power-domain for this clock controller.
> >>>
> >>> In which cases? If it ends up with the retention vote, it is a bug
> >>> which must be fixed.
> >>>
> >>
> >> The minimum non-zero level(configured from bootloaders) of MMCX is
> >> retention on few chipsets but it can vary across the chipsets. Hence to
> >> be on safer side from our end, it is good to have required-opps in DT to
> >> specify the minimum level required for this clock controller.
> >
> > We are discussing sm8650, not some abstract chipset. Does it list
> > retention or low_svs as a minimal level for MMCX?
> >
>
> Actually, the minimum level for MMCX is external to the clock
> controllers.

Yes, it comes from cmd-db

>  But the clock controller requires MMCX to be atleast at
> lowsvs for it to be functional.

Correct

> Hence we need to keep required-opps to
> ensure the same without relying on the actual minimum level for MMCX.

And this is not correct. There is no need for the DT to be redundant.
I plan to send patches removing the existing required-opps when they
are not required.

-- 
With best wishes
Dmitry

