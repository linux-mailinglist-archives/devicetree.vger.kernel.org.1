Return-Path: <devicetree+bounces-71113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF618D5CEC
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B92421C20AA7
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 08:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7389B150996;
	Fri, 31 May 2024 08:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zDCj0g5c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB21757EB
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 08:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717144743; cv=none; b=uGUb+2+1wPgUmVGWHTT3qyqvWjhffqy1WKneqH94tkZHebM01pklyM2bA/Bf0U9OlsN6prfN42SbG+kPprGJacYrqLbUhO0n8HugfiWmreil62ubBFu3+xMT0nYM2yKaVPatzQGjrB4ku/sGnDdY+YdQUAhyGkoEy7/snsQkU7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717144743; c=relaxed/simple;
	bh=ZFMmpYdHQGeJ/z9gZHfYAifXybdEhkawr1UnA1qVQ4Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RDxE3lM3Lnk4zXFDUrAT3JS6XXW8bsHR5mXCu9rE3HOGcvRuofOQn5pQIWAyfTlx4bzz+B4RCPPbtRSRPAA2TXCnkQ39z+LsrlaETGNQ3p7MLx5NXwNrfvajbguPetF+ZSESkA4kocg6SkQzllm1Lma9RKkc+rNDEnts2Rz4RUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zDCj0g5c; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1f48e9414e9so15395725ad.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 01:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717144741; x=1717749541; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lnrY2pbNU0k+0zlhxzJD+ASA3BY00naiFRrmZ3gNEAM=;
        b=zDCj0g5cPLeHHMm1K8ZNjnITlyqFja02cUVLPpIXwURvAehG+ss/gAgVfSB8fbQL9d
         +muHz6OwOVjM641HWh/FLmrwxT+2aLF9nofx35ZNrLrDHa4yYYFJ82KtjCBO/3SNU0FY
         phJICaw2bflPEPhzoYH/n6V3MatQi4l1wzNULnMRcJBiweuzILycH+ueUmdfhEtwHe0I
         3OdwatEItB09rAHP5r/sBaRIz9YG+zBZWW/ajn4UqGgRinVu0Byp0FS8kgpu6GHfsqFi
         yABXg669NWVP0rE3+KjVPcMVgq176gVqkjbSAfYKFffh7vxui861nI9roPnNv1o9WvkX
         TESA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717144741; x=1717749541;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lnrY2pbNU0k+0zlhxzJD+ASA3BY00naiFRrmZ3gNEAM=;
        b=OABYQiTbNU1Paven41nFmnX0rEEbSjq8SWUoyU6IqwipIjeoK7bzM5nBvCIHOl/r0O
         /I2w+9Y6FGwFz1o2XDkJepa+yGiQ4hfnzMHyUB6GjfnVe00ZmW2Jebi7Zo+JuW+zXpPl
         a4/L18QpFSubpicMiqkCgXKoWQzLAJvBDrUoBpNHHnnaU6HNKUTyzZ/rK633Vpb92ntq
         IiGRKfCcClvOdYlZlGCx+2LpH1P6MhqYWlGROhmqUofHCQa0XwWWIbVeyLy3117lotZO
         qvmrygKVpSgw9hjIO8DJWKbBm3Wp+uS61g7R8TdJmrsCG1heeNPdyCyWz3952Ra2jnBD
         MbGg==
X-Forwarded-Encrypted: i=1; AJvYcCUPDA+Mig7HTPHtC0f3p6suWG5c4+ScuqAiDsuPYlPdztGN80D9OoBac4CrfkDsOlzowU7bXC1hqDn0hXT5URvN+ExtoPiuUEPI5g==
X-Gm-Message-State: AOJu0Yy3vybmLYETGn90Zk0FqAFjOMQtciDcWaC22O6nlBP+BZOLjltx
	wf+OmmfUj0wtUR9luMUkGWnZB2nRgHMyBDGuQu0pJhVHu1CkViSPJ6+YnNpWbxLSpL3OA/I67zo
	4rV+23dOUVRMs0v2E3IhRSNSsZdW/Ul3N4Ftl5w==
X-Google-Smtp-Source: AGHT+IG8vPZtTUMBJ/SeUxjWqwTa+oxGvQfRE7eRFeFHpKg0Ap4gr+tU2wNSF5RwNuTIuL/3twCwLRR9PNjRGv0nJ00=
X-Received: by 2002:a17:902:ec92:b0:1f3:62c:247f with SMTP id
 d9443c01a7336-1f61be15ccemr63399965ad.11.1717144741002; Fri, 31 May 2024
 01:39:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240529100926.3166325-1-quic_tengfan@quicinc.com>
 <20240529100926.3166325-5-quic_tengfan@quicinc.com> <s5gt3p6zsd5ebrkop4dhd33tykln33f6ahu3pibymecxsmakyd@lg5wfgec6dat>
 <205de8b7-507f-45c9-83ce-6eceb1466cb2@quicinc.com>
In-Reply-To: <205de8b7-507f-45c9-83ce-6eceb1466cb2@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 31 May 2024 11:38:48 +0300
Message-ID: <CAA8EJpqFq=6YFcUpjdkKikN54iQ76i8Rk_z+mLH1Tt0zFFmciQ@mail.gmail.com>
Subject: Re: [PATCH v9 4/4] arm64: dts: qcom: aim300: add AIM300 AIoT
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com, 
	Qiang Yu <quic_qianyu@quicinc.com>, Ziyue Zhang <quic_ziyuzhan@quicinc.com>, 
	quic_chenlei@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 31 May 2024 at 11:35, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
>
>
> On 5/29/2024 11:18 PM, Dmitry Baryshkov wrote:
> > On Wed, May 29, 2024 at 06:09:26PM +0800, Tengfei Fan wrote:
> >> Add AIM300 AIoT Carrier board DTS support, including usb, UART, PCIe,
> >> I2C functions support.
> >> Here is a diagram of AIM300 AIoT Carrie Board and SoM
> >>   +--------------------------------------------------+
> >>   |             AIM300 AIOT Carrier Board            |
> >>   |                                                  |
> >>   |           +-----------------+                    |
> >>   |power----->| Fixed regulator |---------+          |
> >>   |           +-----------------+         |          |
> >>   |                                       |          |
> >>   |                                       v VPH_PWR  |
> >>   | +----------------------------------------------+ |
> >>   | |                          AIM300 SOM |        | |
> >>   | |                                     |VPH_PWR | |
> >>   | |                                     v        | |
> >>   | |   +-------+       +--------+     +------+    | |
> >>   | |   | UFS   |       | QCS8550|     |PMIC  |    | |
> >>   | |   +-------+       +--------+     +------+    | |
> >>   | |                                              | |
> >>   | +----------------------------------------------+ |
> >>   |                                                  |
> >>   |                    +----+          +------+      |
> >>   |                    |USB |          | UART |      |
> >>   |                    +----+          +------+      |
> >>   +--------------------------------------------------+
> >>
> >> Co-developed-by: Qiang Yu <quic_qianyu@quicinc.com>
> >> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> >> Co-developed-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> >> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> >> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/Makefile             |   1 +
> >>   .../boot/dts/qcom/qcs8550-aim300-aiot.dts     | 322 ++++++++++++++++++
> >>   2 files changed, 323 insertions(+)
> >>   create mode 100644 arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts
> >
> > [trimmed]
> >
> >> +&remoteproc_adsp {
> >> +    firmware-name = "qcom/qcs8550/adsp.mbn",
> >> +                    "qcom/qcs8550/adsp_dtbs.elf";
> >
> > Please excuse me, I think I missed those on the previous run.
> >
> > adsp_dtb.mbn
>
> Currently, waht we have released is adsp_dtbs.elf. If we modify it to
> adsp_dtb.mbn, it may cause the ADSP functionality can not boot normally.

Released where? linux-firmware doesn't have such a file. And the modem
partition most likely has a different path for it anyway.

>
> >
> >> +    status = "okay";
> >> +};
> >> +
> >> +&remoteproc_cdsp {
> >> +    firmware-name = "qcom/qcs8550/cdsp.mbn",
> >> +                    "qcom/qcs8550/cdsp_dtbs.elf";
> >
> > cdsp_dtb.mbn
>
> CDSP also as above ADSP.
>
> >

> >> +
> >> +    te_active: te-active-state {
> >> +            pins = "gpio86";
> >> +            function = "mdp_vsync";
> >> +            drive-strength = <2>;
> >> +            bias-pull-down;
> >> +    };
> >> +
> >> +    te_suspend: te-suspend-state {
> >> +            pins = "gpio86";
> >> +            function = "mdp_vsync";
> >> +            drive-strength = <2>;
> >> +            bias-pull-down;
> >> +    };
> >
> > What is the difference between these two?
>
> TE pin needs to be pulled down for both active and suspend states. There
> is no difference.

So why do you need two different states for it?





-- 
With best wishes
Dmitry

