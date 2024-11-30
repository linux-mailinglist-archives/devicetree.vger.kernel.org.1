Return-Path: <devicetree+bounces-125714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A334B9DF007
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 12:08:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6228C281791
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 11:08:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381F315DBC1;
	Sat, 30 Nov 2024 11:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tnvVy9lb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088F9153BEE
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 11:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732964911; cv=none; b=esb0yL+MOKFAx7o6O6w1ISPkMx/8NHfSvoz0WQQlPzmqQzj5wR8sYPMA3HChf1ovXKyo1zfV8dpE2U85wbUNWk13PwIYYAx3gSSvznDmxU8u/5lVsH/Fm+L5/qXI+zpPK+GAX1zq3V2PShBybtL0O1FpyhwZH16MsLzwjqGZOms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732964911; c=relaxed/simple;
	bh=NSEA1SSDSL084X4JuRKIRhUhOQDaB/BENf8Zl0fCm94=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bg7LjqGgMeC/IPSwlC1oO4Xrcanth2VdZSkveKX7J9QfzExeKg1Ta1N5lsHTjqDyfnx0e5IXcHp79IFKQlX/XqGCfb7eWN8rDg0kpKwgad8eDIaJjfgYJ0vvPb3kU0yqhSBkoipYMd6KSeXiGnFeFd0EGhAyvWJOeNXBtvBzJ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tnvVy9lb; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ffa8092e34so30088361fa.1
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 03:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732964905; x=1733569705; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VyBDDQ9RN1xVnr3Ge/Kd+7GiNG8p1vU/7DTAOuAlE7I=;
        b=tnvVy9lbXN/RaEfZp08h2oBdrZo1vL/DbbV/igFbwRHTJehpIt15Iel9/kvPgABa2m
         +l4LFIXe7YmkUMyi7s7gEvi/zek7RjHqSIRrkhEIVHhxcMl1wIxaN+seTpvLUOcFcg4U
         S7BFohp6lO1HNVtkR+xFtT+eKyomqz+HvTG69WVR0ewMRy3huC3gvCWJtT//DTTlPC2g
         tVgabiAjOzFhcNIB1hBSpuCknhtNOqoLOJEJWKKMmSLSU74Anhda2XGJ+gNAIIOjkxCU
         sMEKz441kDJmIRmAAQcha2BRbrgRl0tfIaGk0IwZzFZk2zhCaa/JIfBYo++lFW0As77W
         ZjYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732964905; x=1733569705;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VyBDDQ9RN1xVnr3Ge/Kd+7GiNG8p1vU/7DTAOuAlE7I=;
        b=vhi4jb7/g2eMRupS3vFyOBvw64CaDdIAx6/99EvevRKo03bxbKLZSxKi93SCYdM2c6
         vyCuiIak6BMsDck6NS1pY0ngmBk2Et/yrhjg2NdlafUck8FQ/qqzCiUFoAfRfhqnonqR
         WDONuegHzgiqJkRhFfaWGdG+YnevDTiw5xNzP/fIvs9GPP4ihC+gby9FksmEYCP8Wkw/
         2SbyxuQqkETuZ37wGy/W3+N7W38jjxZukEKyYpXJUchCBF1Pn95tUrhw4TFOaNVO+J3x
         4X36WsRi4puKqPjRany/vUE1FnqIRXu/BEC5cxUK0XcaQWvvdGhJC+vTIgoDsy812oac
         BHNw==
X-Forwarded-Encrypted: i=1; AJvYcCWQKCN2W/SiKwUMLoEvnK23Mpe82KDQKAmosPNud/ely4pHO2LsSur1pHkVqFZJgq/Wfbkcv6lQD2K0@vger.kernel.org
X-Gm-Message-State: AOJu0YziHLjZ5QnBoimSvmz6Fqo46Z5eqjALg8P3QGvOLipjVzqnP1pQ
	8lTxroeRJYYfQyfedYmhQ/lD6m8wq2AtgEtblaVfbTB0ngNWbiTlYKHRP6YNmEw=
X-Gm-Gg: ASbGncuEeZNadvPyz95TkeFvfu1P5AoTfKFqCFBiAfNZfXd0RnNJUmueSC8P5mtRU1/
	p7Vwga3BPbua96m15X7/2wuUEQg3ti7h+GyxnLwzNRA8BcKRIaJgmFR3vYorCT0FEjIuwOp436A
	4X0lHVCfUsg79yoKf7dkq16zedxvKiMpzblhkcHtzXj+nrSOAYW0tzZwU4mYTmu0vASDO4yVz/+
	njg2SEQZOLp44nng+C7nSePPLRAmtjXCpwO9RbeHOTlTOTJWY7RdWzI6G+TcZeW4dHj6DGeAWiu
	O8PI3VTzNfNFjEmdlh6WKt1QwbyzXg==
X-Google-Smtp-Source: AGHT+IGLsmBOtgxyMFI4fiUTJseDYY5c3VGf49SiTbcFYm56bV9Q7A9gzamHW6K2Byi57Jf8ndDGvg==
X-Received: by 2002:a05:6512:3d02:b0:53d:cef7:d88d with SMTP id 2adb3069b0e04-53df00dce40mr8808221e87.31.1732964905112;
        Sat, 30 Nov 2024 03:08:25 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df643121esm734460e87.56.2024.11.30.03.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 03:08:23 -0800 (PST)
Date: Sat, 30 Nov 2024 13:08:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Leo Yan <leo.yan@linux.dev>, Joseph Gates <jgates@squareup.com>, 
	Georgi Djakov <djakov@kernel.org>, Shawn Guo <shawn.guo@linaro.org>, 
	Stephan Gerhold <stephan@gerhold.net>, Zac Crosby <zac@squareup.com>, 
	Bastian =?utf-8?Q?K=C3=B6cher?= <git@kchr.de>, Andy Gross <andy.gross@linaro.org>, 
	Jeremy McNicoll <jeremymc@redhat.com>, Rohit Agarwal <quic_rohiagar@quicinc.com>, 
	Melody Olvera <quic_molvera@quicinc.com>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	cros-qcom-dts-watchers@chromium.org, Stephen Boyd <swboyd@chromium.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Martin Botka <martin.botka@somainline.org>, 
	Jonathan Marek <jonathan@marek.ca>, Vinod Koul <vkoul@kernel.org>, 
	Tengfei Fan <quic_tengfan@quicinc.com>, Fenglin Wu <quic_fenglinw@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Alexandru Marc Serdeliuc <serdeliuk@yahoo.com>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Jun Nie <jun.nie@linaro.org>, James Willcox <jwillcox@squareup.com>, 
	Max Chen <mchen@squareup.com>, Vincent Knecht <vincent.knecht@mailoo.org>, 
	Benjamin Li <benl@squareup.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 20/31] arm64: dts: qcom: ipq5018: move board clocks to
 ipq5018.dtsi file
Message-ID: <wvrelorcsajlux73jfqysgsox5dge7udfvhktt2sto2yg2xb3a@t7cpherrt6z7>
References: <20241130-fix-board-clocks-v2-0-b9a35858657e@linaro.org>
 <20241130-fix-board-clocks-v2-20-b9a35858657e@linaro.org>
 <83990b97-3f37-47f0-9cc6-fdaa730a8df1@linaro.org>
 <zdhevcnj6gszvaayhu2dghubwm23cdoyeik2dcnqo376gcstnz@xv46iu6l6yvu>
 <90418b49-5b19-4bef-b0cd-398bb562aa8c@kernel.org>
 <26lttxx7obu2oqvf4xnooqi3o7qwodhjzyjh4trjq5tlj2gzxs@uwihybmwbdid>
 <7778fea9-c127-428d-9653-e66e84f23c98@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7778fea9-c127-428d-9653-e66e84f23c98@kernel.org>

On Sat, Nov 30, 2024 at 11:43:34AM +0100, Krzysztof Kozlowski wrote:
> On 30/11/2024 11:26, Dmitry Baryshkov wrote:
> > On Sat, Nov 30, 2024 at 11:00:32AM +0100, Krzysztof Kozlowski wrote:
> >> On 30/11/2024 10:57, Dmitry Baryshkov wrote:
> >>> On Sat, Nov 30, 2024 at 10:29:38AM +0100, Krzysztof Kozlowski wrote:
> >>>> On 30/11/2024 02:44, Dmitry Baryshkov wrote:
> >>>>> IPQ5018 is one of the platforms where board-level clocks (XO, sleep)
> >>>>> definitions are split between the SoC dtsi file and the board file.
> >>>>> This is not optimal, as the clocks are a part of the SoC + PMICs design.
> >>>>> Frequencies are common for the whole set of devices using the same SoC.
> >>>>> Remove the split and move frequencies to the SoC DTSI file.
> >>>>>
> >>>>> Suggested-by: Bjorn Andersson <andersson@kernel.org>
> >>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>>>
> >>>> This contradicts DTS coding style and all my existing review. Obviously
> >>>> that's a NAK from me. If you want to merge this patch, please kindly
> >>>> carry my formal objection for this and all following "move board clocks"
> >>>> patches:
> >>>>
> >>>> Nacked-by: Krzysztof Kozlowski <krzk@kernel.org>
> >>>
> >>> I'd kindly ask Bjorn to chime in as a platform maintainer.
> >>
> >>
> >> To change my NAK? NAK is still a NAK. We discussed it many, many times
> >> already. We have coding style for this explicitly mentioning this case.
> >> Could not be more specific... plus all my reviews for Qualcomm, NXP, TI,
> >> ST and other platforms. I would be quite unpredictable or unfair if I
> >> gave here some sort of exception while expecting different code from
> >> other platforms.
> >>
> >> Please carry my NAK.
> > 
> > Of course. I didn't mean to drop your tag or your objection.
> > 
> > BTW, would it be possible for you to clarify the policy on external
> > references? I mean, is it fine for DTSI to reference a label which is
> > not defined within that file or within one of the files that it includes?
> 
> 
> It is fine, you have plenty of such examples of shared components like
> some audio blocks or PMICs.
> 
> All Qualcomm PMICs DTSI (e.g. arch/arm64/boot/dts/qcom/pmi632.dtsi )
> reference them. Chromebooks are even "worse" here:
> arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> Nothing gets included there but hundred of phandles!
> 
> Are you planning to "fix" these as well?

No.

> 
> These are just Qualcomm, but same cases are everywhere else.
> 
> But *that's not even important* because I do not suggest to move clocks
> to DTSI. I suggest - and was almost always suggesting as best compromise
> - to follow DTS coding style by doing opposite of what this patch is
> doing. That's why I NAKed this and following patches, except last two
> which are different.

If you remmember my first attempt was implemented other way around. But
I think it still better to have both frequencies in the SoC dtsi, it
points out that it is tightly coupled with the RPM CC (and can not be
easily changed), it saves us from 32 kHz / 32.768 kHz / 32.764 kHz
typos, etc.

-- 
With best wishes
Dmitry

