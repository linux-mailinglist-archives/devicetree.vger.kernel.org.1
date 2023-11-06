Return-Path: <devicetree+bounces-14235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A7B7E2F66
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 23:05:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAE021C2048F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7F692EAFC;
	Mon,  6 Nov 2023 22:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="oEglwH0S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71942D048
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 22:05:38 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D17C510A
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:05:36 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507c5249d55so6540500e87.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 14:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699308335; x=1699913135; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ikwQ0BwJZ8jOJp5MM/eEVIEKe9pDDvdQBjT/UpPI1+k=;
        b=oEglwH0SKA7B/qBxerwh2PbrOYFJF5s6Gm7WRLZuFGPB4TjI1cAAXLGnjWXxXldXFi
         1FJV+F9A7WBFSj9w3j7Zn1GDwiHGHI4tYdOMpopbmDZORE/MJHfQYsPyMvoXEWzwrxlF
         CmPn7A6LXguZxRIuXVmWU1wkP1MNLarlQAfcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699308335; x=1699913135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ikwQ0BwJZ8jOJp5MM/eEVIEKe9pDDvdQBjT/UpPI1+k=;
        b=xCSLLjvpKtVji9s04+aqxtikscHClQHJPtpPuDE80rvz1/Xifq0rK+yDd0WJjx/BwA
         RD0o2R+WPOvrCgphpc2ztaCYKyChdfwZKzmxoZ0mVIntd1QzOswV6O4Lzrtqy9jXlsHY
         qeIIezC0e2dJwPDdf/20f+sJP4twe1JYOWG/E3k8VIOwhQDP/o5U3ufV8ABECKDet49f
         G4MtHsOF3Jy+sEGf3BbFKRGCDjzniSuDUe9iXusY6yv4RGd1cc76QC3KIQELZp9U0Tgh
         acFAX8dJYs1F9uOuhJ+ay2HO6QibCkMO72Si4cRYUmlcRI09+u6KDCiJ6zd6TJl0HORx
         pV5w==
X-Gm-Message-State: AOJu0YwS1LkVdxnuWiGpdGfMhCitSMq14zhpWvCAmLM5g0ot7m06Va/7
	/m+zk+XYByjSohxvX3qlvjWSn8BAn9OPzayqrltOvQg2
X-Google-Smtp-Source: AGHT+IEHEbA5wu5ncG1C9q1CbktRh4v2yUfbm5D6X3/l2t8YIVTI0Sy5Ox7HQQWqhvq2Bynk4RcmeQ==
X-Received: by 2002:a05:6512:21a5:b0:509:4a20:1a4c with SMTP id c5-20020a05651221a500b005094a201a4cmr10356772lft.60.1699308334744;
        Mon, 06 Nov 2023 14:05:34 -0800 (PST)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id c8-20020a196548000000b005068d6de988sm107242lfj.226.2023.11.06.14.05.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 14:05:34 -0800 (PST)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-50931d0bb04so1207e87.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 14:05:34 -0800 (PST)
X-Received: by 2002:a50:aac7:0:b0:544:466b:3b20 with SMTP id
 r7-20020a50aac7000000b00544466b3b20mr10200edc.5.1699307921610; Mon, 06 Nov
 2023 13:58:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231103105440.23904-1-quic_anshar@quicinc.com>
 <feca8e74-6653-4cec-943d-47302431e1fc@linaro.org> <CAD=FV=VTCXSQo3Bo3G7oJ48qA-fUet5rHAzT8WLM1Hx70KyYMA@mail.gmail.com>
 <a3f3c391-370a-4ed2-92ed-afcfbea829e8@linaro.org>
In-Reply-To: <a3f3c391-370a-4ed2-92ed-afcfbea829e8@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 Nov 2023 13:58:29 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VojU57uDUi3uByNKKBQnUhTXP6f=kK1C9E_Mgih2aMCA@mail.gmail.com>
Message-ID: <CAD=FV=VojU57uDUi3uByNKKBQnUhTXP6f=kK1C9E_Mgih2aMCA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add capacity and DPC properties
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Ankit Sharma <quic_anshar@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
	agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_ashayj@quicinc.com, 
	quic_atulpant@quicinc.com, quic_rgottimu@quicinc.com, 
	quic_shashim@quicinc.com, quic_pkondeti@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 6, 2023 at 1:52=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro.=
org> wrote:
>
>
>
> On 11/6/23 17:56, Doug Anderson wrote:
> > Hi,
> >
> > On Sat, Nov 4, 2023 at 4:52=E2=80=AFAM Konrad Dybcio <konrad.dybcio@lin=
aro.org> wrote:
> >>
> >>
> >>
> >> On 11/3/23 11:54, Ankit Sharma wrote:
> >>> The "capacity-dmips-mhz" and "dynamic-power-coefficient" are
> >>> used to build Energy Model which in turn is used by EAS to take
> >>> placement decisions. So add it to SC7280 soc.
> >>>
> >>> Signed-off-by: Ankit Sharma <quic_anshar@quicinc.com>
> >>> ---Hi, thanks for this patch
> >>
> >> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >>
> >> I performed a quick grep in arch/arm64/boot/dts/qcom and noticed
> >> that at least one of these values is missing for:
> >>
> >> rg -l --files-without-match dynamic-power-coeff $(rg cpu@ -l) | sort
> >> ipq5018.dtsi (homogeneous cluster)
> >> ipq5332.dtsi (homogeneous cluster)
> >> ipq6018.dtsi (homogeneous cluster)
> >> ipq8074.dtsi (homogeneous cluster)
> >> ipq9574.dtsi (homogeneous cluster)
> >> msm8916.dtsi (homogeneous cluster)
> >> msm8939.dtsi
> >> msm8953.dtsi
> >> msm8976.dtsi
> >> msm8994.dtsi
> >> msm8996.dtsi
> >> msm8998.dtsi
> >> qcs404.dtsi (homogeneous cluster)
> >> qdu1000.dtsi (homogeneous cluster)
> >> sa8775p.dtsi
> >> sc7280.dtsi
> >> sc8180x.dtsi
> >> sc8280xp.dtsi
> >> sdm630.dtsi
> >> sm4450.dtsi
> >> sm6125.dtsi
> >> sm6375.dtsi
> >> sm8350.dtsi
> >> sm8450.dtsi
> >>
> >> rg -l --files-without-match capacity-dmips $(rg cpu@ -l) | sort
> >> ipq5018.dtsi (homogeneous cluster)
> >> ipq5332.dtsi (homogeneous cluster)
> >> ipq6018.dtsi (homogeneous cluster)
> >> ipq8074.dtsi (homogeneous cluster)
> >> ipq9574.dtsi (homogeneous cluster)
> >> msm8916.dtsi (homogeneous cluster)
> >> msm8939.dtsi
> >> msm8994.dtsi
> >> qcs404.dtsi (homogeneous cluster)
> >> qdu1000.dtsi (homogeneous cluster)
> >> sa8775p.dtsi
> >> sc7280.dtsi
> >> sm4450.dtsi
> >> sm6375.dtsi
> >> sm8350.dtsi
> >> sm8450.dtsi
> >>
> >> Where platforms with a single, homogeneous cluster likely don't
> >> benefit from EAS..
> >>
> >> Is there any chance you could dig up the correct values, for at least
> >> some of these platforms? Or would you know whom to ask?
> >>
> >> FWIW the one we're missing the most is sc8280xp..
> >
> > FWIW, I wrote up a longwinded commit message when I added these values
> > for sc7180. See commit 82ea7d411d43 ("arm64: dts: qcom: sc7180: Base
> > dynamic CPU power coefficients in reality").
> >
> > The short of it is that if you have hardware and a basic "smart
> > battery" to measure power consumption it's pretty easy for anyone to
> > add some reasonable numbers.
> That's a big ask, especially with stupid laptop battmgr firmware that
> only refreshes data every 5 to 25 seconds :)

Meh, the script I wrote (which you can find by following the text of
the commit message or just looking here [1] should handle that OK.
While the script is ugly, I wrote it to handle pretty non-granular
measurements. Right now it's set to test each frequency for 2 minutes
(min_time_per_freq) but it wouldn't be hard to make that 10 minutes
per frequency.

[1] https://lore.kernel.org/all/CAD=3DFV=3DU1FP0e3_AVHpauUUZtD-5X3XCwh5aT9f=
H_8S_FFML2Uw@mail.gmail.com/


> Qcom probably has some reasonable numbers somewhere, given they are
> likely to test their SoCs' characteristics before taping them out
> en masse :P

Sure, if Qualcomm can give numbers that'd be wonderful. In the past
they haven't been willing to and I tried to convince them that was
silly because anyone with access to the hardware could measure this
themselves. If Qualcomm has become more reasonable about this then
that makes me happy.

-Doug

