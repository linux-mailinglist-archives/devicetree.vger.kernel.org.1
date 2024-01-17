Return-Path: <devicetree+bounces-32877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9819D830E2B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 21:48:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4153328583F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 20:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A3F1250E8;
	Wed, 17 Jan 2024 20:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MO3CwRkw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF8A25543
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 20:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705524494; cv=none; b=k1TIwNLdcqE+Q5DJayGV0W/zewFQnYBNSomE7d8cdvoMyMrHVqgklN+GY3epZES3kdfcVwG1wTa7xM7XEWpUJP/CPYz1T2YbstR4A2NLfBTxhLCsHAIXXX8mQjCxmzr+qfS0QvZeoL6hI0uBicqs+ALSvIPe1X9PEoCnEdZAyUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705524494; c=relaxed/simple;
	bh=nBSMqib0vx/t6LIPdWb68W3eBAp9SDyqSB85Ypn6WZo=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type; b=S8/zEqbG2xdoDfrU8j/QA0O5b86xhO3iOZoSSuLEo6WPuA+ODG8gHYHNUNssEyFWjqtXiKifW39eyUq3emsLQKMmaNugFycOHPb40itfbVcOx02MbSsrZ+VvFTyp5nxtiTECihHku8PU9p0GLN3vAKZ3IfwgW13Bb4jxuFKP4Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MO3CwRkw; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5ff84214fc7so975417b3.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 12:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705524491; x=1706129291; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8C61/CVBZybL4d7jDWa4SEthmuklcb9ycEMool3g1U8=;
        b=MO3CwRkwB87dV/GiJbY/21JYmD53/MioyY8fPruE2sVvgTPUfBUGD76RujJNB7oULU
         A5CdixGRaO8t6xKoLXVJ+kQzF/tyfVbloCkJ5ijV5eXVaT5z3ZVaCssp8rlFGf5X3KTz
         w1iSai/oWTkh5jJhEXoq1H83TgU9T7TUvCJaiFnwuWkyu8KnlJYxFwvZMcyyXtlr5tGZ
         kdl5zwKvkl+iFz6skkvSj70CEFKrW5vPIqqbaLZ1dKXK0TDykFyVEAp5NvdcHKGmai4C
         PYI5ZqVmP1jE6neROwiOZ3NDeGQbHyGnpDbt+FCNuMO2TuZmM/vOs10BBZxSBRPaHmW2
         j+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705524491; x=1706129291;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8C61/CVBZybL4d7jDWa4SEthmuklcb9ycEMool3g1U8=;
        b=MM7mE7kxjbjnip6Xxl644RXmejBMUWoEHmInFNp8b/4fRmlPlki4y+ey87wLQZ49r8
         NrjLTITP3PoFS2jSdQ/Z9Vr9q4zGReFyDTh7MDB2P2wBapKTBUKefwOCuJsLuqrVS1fx
         szXRGLcQr4FXQ+4aVC+bwb9TYhwSqOh/aQxEoUr05UkLqFGODVX08rSae5hQI5phjmlB
         PhpGu2vUWkONOyn1YPxHMKUk1IBv/iuXhEa+aadPscnBFDOOM/ZTiYG7v6/CyE/YhkIj
         6QqJXPL2iH9sHU6yvF4fequozApw4MJTjPmw0i4Em3LAZHhYDeGZB40I1bRbdCHGroWI
         0bUg==
X-Gm-Message-State: AOJu0Yy6mypj1cXl6Aj/xCxDnkRtnlrBjGlxrIhBSqS2vnb9kNK+jGIF
	BWC/P7N5AjWHFue+SD49B7BW9huNibI8wOo5XRXMvtIUFG5Llw==
X-Google-Smtp-Source: AGHT+IFH9aLIollE5z7rcJcIrH0LLrrTJJh1FWfQ583YbLbX3/A24BFq7vRO+v64P0FgvpJ1Pg5F4vCYZ+aUakfyk7U=
X-Received: by 2002:a81:8d45:0:b0:5f9:f9b4:2f20 with SMTP id
 w5-20020a818d45000000b005f9f9b42f20mr6262366ywj.96.1705524490901; Wed, 17 Jan
 2024 12:48:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240117173458.2312669-1-quic_sibis@quicinc.com> <20240117173458.2312669-8-quic_sibis@quicinc.com>
In-Reply-To: <20240117173458.2312669-8-quic_sibis@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 22:47:59 +0200
Message-ID: <CAA8EJpo5F==whKMVFgPAM+=DpB+=KzPhKt-poGXuHxy-KSxe8Q@mail.gmail.com>
Subject: Re: [RFC 7/7] arm64: dts: qcom: x1e80100: Enable LLCC/DDR dvfs
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, andersson@kernel.org, 
	konrad.dybcio@linaro.org, jassisinghbrar@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_rgottimu@quicinc.com, quic_kshivnan@quicinc.com, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Jan 2024 at 19:37, Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> Enable LLCC/DDR dvfs through the Qualcomm's SCMI vendor protocol.

Could you please post DT bindings?

>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 48 ++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 6856a206f7fc..3dc6f32fbb4c 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -329,6 +329,54 @@ scmi_dvfs: protocol@13 {
>                                 reg = <0x13>;
>                                 #clock-cells = <1>;
>                         };
> +
> +                       scmi_vendor: protocol@80 {
> +                               reg = <0x80>;
> +
> +                               memlat {

This doesn't look like a generic node name.

> +                                       #address-cells = <1>;
> +                                       #size-cells = <0>;

> +
> +                                       memory@0 {
> +                                               reg = <0x0>; /* Memory Type DDR */
> +                                               freq-table-khz = <200000 4224000>;
> +
> +                                               monitor-0 {
> +                                                       qcom,cpulist = <&CPU0 &CPU1 &CPU2 &CPU3 &CPU4 &CPU5 &CPU6 &CPU7 &CPU8 &CPU9 &CPU10 &CPU11>;



> +                                                       qcom,cpufreq-memfreq-tbl = < 999000 547000 >,
> +                                                                                  < 1440000 768000 >,
> +                                                                                  < 1671000 1555000 >,
> +                                                                                  < 2189000 2092000 >,
> +                                                                                  < 2156000 3187000 >,
> +                                                                                  < 3860000 4224000 >;

These tables should be rewritten as OPP tables.


> +                                               };
> +
> +                                               monitor-1 {
> +                                                       qcom,compute-mon;
> +                                                       qcom,cpulist = <&CPU0 &CPU1 &CPU2 &CPU3 &CPU4 &CPU5 &CPU6 &CPU7 &CPU8 &CPU9 &CPU10 &CPU11>;
> +                                                       qcom,cpufreq-memfreq-tbl = < 1440000 200000 >,
> +                                                                                  < 2189000 768000 >,
> +                                                                                  < 2156000 1555000 >,
> +                                                                                  < 3860000 2092000 >;
> +                                               };
> +                                       };
> +
> +                                       memory@1 {
> +                                               reg = <0x1>; /* Memory Type LLCC */
> +                                               freq-table-khz = <300000 1067000>;
> +
> +                                               monitor-0 {
> +                                                       qcom,cpulist = <&CPU0 &CPU1 &CPU2 &CPU3 &CPU4 &CPU5 &CPU6 &CPU7 &CPU8 &CPU9 &CPU10 &CPU11>;
> +                                                       qcom,cpufreq-memfreq-tbl = < 999000 300000 >,
> +                                                                                  < 1440000 466000 >,
> +                                                                                  < 1671000 600000 >,
> +                                                                                  < 2189000 806000 >,
> +                                                                                  < 2156000 933000 >,
> +                                                                                  < 3860000 1066000 >;
> +                                               };
> +                                       };
> +                               };
> +                       };
>                 };
>         };
>
> --
> 2.34.1
>
>


--
With best wishes
Dmitry

