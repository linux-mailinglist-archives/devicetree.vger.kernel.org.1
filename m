Return-Path: <devicetree+bounces-64117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CD28B7F40
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 19:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D539B22D90
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 17:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2012181B87;
	Tue, 30 Apr 2024 17:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ur0wHqG2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302F41802CE
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 17:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714499430; cv=none; b=K0JHhqqn/dBUTS6JcbTusrOHbpnM/rIOwEkld9fwvS3EmYiP+se05Zxa3gA9oP98IOAj+y0nK0oswhxblyjKVBS/zNt8JFEWMxI6qsylqBMO72VXa5yF91AGGHkB0VW2jIhjeDuKmjphMFf5h1MPnYrTpShoVffPVsuVsyMOnQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714499430; c=relaxed/simple;
	bh=MC6kuUNtvdgO8awbXMD83ojLho7cU3kwpSqW388XSgg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XOD6UzU8JShSWNVaJDu7yL1JI1zUKPtLdISt7Ozx5Ld/odeYlcVPm6AHKy5nvurZwEt2vaJsfTEgIGoCfEs6M6lHrhTr0WV+4mW5LzfH2ocbAcAFYf2hTG5koCM2OLe/K4P00DON1L2pmQELLRJ+VqiGCUIMJXiwle96HWKWC6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ur0wHqG2; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-de60d05adafso1667160276.2
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 10:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714499427; x=1715104227; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sD/quSO4976C2GH4MU0N7jDR6o6VrMEFs0/aJ59+F6w=;
        b=Ur0wHqG26bKE3y1w5azx/A/2gim77chbNjyw7Gfnu13ubsKEIFQXJWYsR6+a4bTuQj
         OBlPq8GD05lR6IOK6T3yER3lBkzZLi0kxorxjr3COioRHQ4sXl0f3O8dzZKSrOib3CGg
         z5Y7jSkC3vlHKfFwWY/SlLF5QEuvK8pLdgpesoA5LkPjjknLtkAYRMHzHKXLXNtPk4PN
         rk7tdoqn56nZFFi+spxlfbM35x8jSdaSpE8xbzoHiiV9Pk7xeXzIU3akgag3C6ak/mlz
         FuetgMtXgg568d5nPUsSsuh9gdVFE3rtb0qjVRuDcejkXsvg/TfIjwB1jHyINy1S0Z5h
         9rgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714499427; x=1715104227;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sD/quSO4976C2GH4MU0N7jDR6o6VrMEFs0/aJ59+F6w=;
        b=lGYx4ruEJWYduWHkiSpizWlXjsE7grWOU4lZ0ge7NPfm3/jvSsuRQd9CRKI6MdPZAB
         Ut7fajGwrIZJ2uAz0xIH9AcshzXkf7jfkm0Hvo1xnE+v7F26O/yJztD4/qrS8gRPnQO/
         G58zIJNb7y0Do2C4QtuakgPPwERrqqt3zJPaYXHu6s6MQGAKmSPz5Bbv/VJZsdbk2ABP
         HS2gjebzmVP3lvygosZpXZIChsD2dH0PRyZHqmD7AywaJuz1zVHsosSxYMfwUZiIR3DN
         vVzk2oj1DnLXfnoi/OgCA2aVEkt2jIbfQokrH0Yf1MElq79WiHYVZ+/Wm4ySv2QztYmI
         Ft6A==
X-Forwarded-Encrypted: i=1; AJvYcCVmHH0YGHIWKQWUJlzm7SUig4H87HrnWQKdONIr/b3bA3BDxMES+dxEnbadQL5Ns095UKR6uCgYAMZUBGO5WCBWlPVb5s0nzM62Yg==
X-Gm-Message-State: AOJu0Yyl4BbGNhVFJJwxCSE2Ix8Mk3JZnDceIi4xRm95RT2+GMrugZ8a
	LNE9pRJ/D1lvjkWeOF/dFZJQWEP5bubJvvMU1gXrw88/43UVLz4mI19snwyABWZgaEcuUjG4Pyf
	ga8NfySCDlCVtG+UgZ8GYY6n3DXoKJAOjpQpeag==
X-Google-Smtp-Source: AGHT+IHyb1eFObq3rdLSvzRk9V3jcbKnDdCig9If6eEhZckR6Mp4DGotDQyqqCg8Z+/G5Qwqg5BT/kNFhil6WvkeiMY=
X-Received: by 2002:a25:8409:0:b0:de5:a062:ba8d with SMTP id
 u9-20020a258409000000b00de5a062ba8dmr309405ybk.11.1714499427026; Tue, 30 Apr
 2024 10:50:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1714494711-10322-1-git-send-email-quic_msarkar@quicinc.com> <1714494711-10322-3-git-send-email-quic_msarkar@quicinc.com>
In-Reply-To: <1714494711-10322-3-git-send-email-quic_msarkar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 30 Apr 2024 20:50:15 +0300
Message-ID: <CAA8EJprnO84T+mbUD-T55T0zU0ngWFnpa4i8EfWxu0UzJZuzgw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: sa8775p: Set max link speed to
 gen4 for ep pcie
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, 
	manivannan.sadhasivam@linaro.org, quic_shazhuss@quicinc.com, 
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
	quic_schintav@quicinc.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Apr 2024 at 19:33, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
> Adding this change to set max link speed to gen4 as sa8775p supports
> gen4 so that pcie link can be enumerated as gen4.

Previous patches mentioned stability issues. Were they solved?


>
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 0c52180..aad2cd7 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3730,7 +3730,7 @@
>                 power-domains = <&gcc PCIE_0_GDSC>;
>                 phys = <&pcie0_phy>;
>                 phy-names = "pciephy";
> -               max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
> +               max-link-speed = <4>;
>                 num-lanes = <2>;
>
>                 status = "disabled";
> @@ -3888,7 +3888,7 @@
>                 power-domains = <&gcc PCIE_1_GDSC>;
>                 phys = <&pcie1_phy>;
>                 phy-names = "pciephy";
> -               max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */

I think you've just sent a patchset which adds this node. Is there any
reason for setting the max-link-speed to 3 just to change it to 4
immediately?

> +               max-link-speed = <4>;
>                 num-lanes = <4>;
>
>                 status = "disabled";
> --
> 2.7.4
>
>


--
With best wishes

Dmitry

