Return-Path: <devicetree+bounces-40220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8316884FAD0
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 18:14:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42EEA28548B
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 17:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E96877BAF9;
	Fri,  9 Feb 2024 17:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t4e2zs4d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241094D112
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 17:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707498875; cv=none; b=kzNzh7oIrv1G41XdmmOA+adCaLeII0JRoz0rC+zL8NXVNF5A2SQpzeaMuAHZgblLpgOwnElEDYHYdXzXyKGwYD5uJv28sni1JvcMt/w3qNqb2p8Mx9VtiydCrZqG8mitFJg9VoP+vdvvopBqslxozVnlTGVJR/xLPTV9DyBLb+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707498875; c=relaxed/simple;
	bh=8zaCR8O41K02r3ojsjLx+ja3Hf6OnvwNbDj913/XFkQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m05G1RUWe1Ig+1nv203/4w9p04qGaeptSobz2cmZQmbysd2fGrrwhaD32bHJXbipM85FiliwoTA70TH0uaGAFG4poF/C8FUHf9t7Po4JlTnR7ioi9iizsKlBPkmSUysqocOh29rEJV89cjah+FAw9mJcYCWDxrRYDtEI268l3k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t4e2zs4d; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-604a3d33c4dso12983787b3.1
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 09:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707498873; x=1708103673; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3WqcxEXG8TSNrlTn9gKFAz+5r+7V+KkZ4U4GAUZ3UpU=;
        b=t4e2zs4dqiCsyRyp8s89NVoCCPLNxY+EV3IX3sBj3R/cz6DdgHC7eLPnkq0PVyinYv
         wdMR9Eqm2siSUtmd03TY+k8MKoGI9yFs/jvNt4PfKxFehkLdggM96cc/1ERbX4fe7BeK
         ETgRtPta7g0wBR6mxjGT372cheeIoCW0YivjZSZKJiWkTiP5dISHqT657hPh6YNqOSpa
         tiqtdh7Zs6zEZBPoyu6IrPDGsTDO6DJmFCUaRPRcJSiXnAXJWguhXNoKDEXSXDclJMhO
         KrjfcUOGtwsr9Bn7hggsX/iztBVJhKYggg1t8hQRoRlwEfzYe3FPn5cEeHkdYI6IN2lG
         3JtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707498873; x=1708103673;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3WqcxEXG8TSNrlTn9gKFAz+5r+7V+KkZ4U4GAUZ3UpU=;
        b=RIxewoc4uEOJxNdg15yu4ESY69ACTEOJfUMsbqKhlAtomEhgqEw6H9Zvq0r91ZRjP2
         vLfFpUdfcj4oUvcv6UkRuaMiNvs08aH44SiOZgnWb1CnidxV8+9jw5H862RDdZHZ9N9O
         FSEgnDTHS65inb8BKUfwh8Xa0k8TkDzC0H9mnA5imM36LcRcwlu8kMMPGDtY5ri+A1bO
         /uyI36kqdvrOzT4BUzrtfAeC1iFihM+PLACw0Xf5H6rS0cMHEeTCHG6qt+h7floap1V3
         UTwsbEJx9e3nEn+wXV/QfsExeepClhmL41gEfZ36h2nuegzIdaBDbWsyaU7QsBunWIRd
         +ZJg==
X-Forwarded-Encrypted: i=1; AJvYcCV6dHer7w9HnVmH5fUJjIyR077Ltu4baFrjpYdGDwYziOPlHfkbDtWrUu1awKDWRYh1vCDZwwWy5de15fsCKP9ATBCx8KuFgP+YSw==
X-Gm-Message-State: AOJu0Yz2/OeBZ0iXnAyJPXYgDyQ+tfJGUte3L2mAt5D1jkPqGgNxhXCM
	vjTK/Lcf8I5CDzqq68MhBQNeUv1Yx0mIr3kUILyfNOK6oWJEUPhm2XXRLOYyh++zixTLJBjmV5e
	cbqMhWBfzgzJdXI4QitNcPRP/9U0ewCkJ6+9OwA==
X-Google-Smtp-Source: AGHT+IG9zOiYIYM/FYll97ufxp+MZpdExZ7lLXkZ0kzyNUppWY10G7rrXWC7YcsMeVL5SCwYkcal4Ne4S4nySZh2/9o=
X-Received: by 2002:a81:9204:0:b0:604:1693:80df with SMTP id
 j4-20020a819204000000b00604169380dfmr2372634ywg.10.1707498872897; Fri, 09 Feb
 2024 09:14:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240209-qcm6490-gcc-protected-clocks-v1-1-bd3487b2e7b1@quicinc.com>
 <CZ0P9E67Q6AQ.TU3Q2Y8VTWUK@fairphone.com>
In-Reply-To: <CZ0P9E67Q6AQ.TU3Q2Y8VTWUK@fairphone.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 9 Feb 2024 19:14:21 +0200
Message-ID: <CAA8EJpqkPKYX51-DAkc7A8Kpzmnk82HhFs78TkCxzo6dfubHFA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Declare GCC clocks protected
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 9 Feb 2024 at 18:47, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> On Fri Feb 9, 2024 at 5:21 PM CET, Bjorn Andersson wrote:
> > The SC7180 GCC binding describes clocks which, due to the difference in
>
> SC7180 -> SC7280?
>
> With that fixed:
>
> Reviewed-by: Luca Weiss <luca.weiss@fairphone.com>
>
> > security model, are not accessible on the RB3gen2 - in the same way seen
> > on QCM6490.
> >
> > Mark these clocks as protected, to allow the board to boot.
>
> So the board never was able to boot before this patch?

Seems so, we had a similar patch in the meta-qcom repo for those
boards: https://github.com/Linaro/meta-qcom/blob/master/recipes-kernel/linux/linux-yocto/qcm6490-dtsi/0001-PENDING-arm64-dts-qcm6490-Update-the-protected-clock.patch

>
> >
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> > I did notice Taniya's patch [1] after writing this patch. I'd prefer to
> > merge this minimal set asap, to make the board boot, unless there's a
> > strong argument for including those other clocks in the protected list.
> >
> > [1] https://lore.kernel.org/linux-arm-msm/20240208062836.19767-6-quic_tdas@quicinc.com/
> > ---
> >  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > index 8bb7d13d85f6..97b1586f9f19 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > @@ -413,6 +413,24 @@ vreg_bob_3p296: bob {
> >       };
> >  };
> >
> > +&gcc {
> > +     protected-clocks = <GCC_CFG_NOC_LPASS_CLK>,
> > +                        <GCC_EDP_CLKREF_EN>,
> > +                        <GCC_MSS_CFG_AHB_CLK>,
> > +                        <GCC_MSS_GPLL0_MAIN_DIV_CLK_SRC>,
> > +                        <GCC_MSS_OFFLINE_AXI_CLK>,
> > +                        <GCC_MSS_Q6SS_BOOT_CLK_SRC>,
> > +                        <GCC_MSS_Q6_MEMNOC_AXI_CLK>,
> > +                        <GCC_MSS_SNOC_AXI_CLK>,
> > +                        <GCC_QSPI_CNOC_PERIPH_AHB_CLK>,
> > +                        <GCC_QSPI_CORE_CLK>,
> > +                        <GCC_QSPI_CORE_CLK_SRC>,
> > +                        <GCC_SEC_CTRL_CLK_SRC>,
> > +                        <GCC_WPSS_AHB_BDG_MST_CLK>,
> > +                        <GCC_WPSS_AHB_CLK>,
> > +                        <GCC_WPSS_RSCP_CLK>;
> > +};
> > +
> >  &qupv3_id_0 {
> >       status = "okay";
> >  };
> >
> > ---
> > base-commit: b1d3a0e70c3881d2f8cf6692ccf7c2a4fb2d030d
> > change-id: 20240209-qcm6490-gcc-protected-clocks-ee5fafdb76b3
> >
> > Best regards,
>


-- 
With best wishes
Dmitry

