Return-Path: <devicetree+bounces-29644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C307823F83
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 11:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C7291C23952
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 10:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 041C11EB48;
	Thu,  4 Jan 2024 10:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kJEMdnwr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E6420DCD
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 10:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dbdc52f2359so318272276.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jan 2024 02:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704364508; x=1704969308; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iGDdBT8N7Ke807mIT2INPgeaZYTNLnZUsmFbCBznysw=;
        b=kJEMdnwrmCIEhf2MMccQchvV+ExuL6vLzxUNaGYu+wFnCTavWJUqX7Db04McsPshNx
         rXU2aDcFSAYtQ9SSXzc7jr0T9gC3Jcak1FTUhCl3TaWyYr4/+HxOc2aVNLCpRPIAdXjI
         BIHQyBw8ZJt+wzVxPRq0toW8G2G7ckSk2ui+El273DPy3Ah9akg3vc5P3xaJ729bePZf
         fEMEsY1K2I765OcE+e6VOyfIFHp1bkYVFL3Ojr04rzLgBBmQDEjPrgR7zYgWoVmuDXDe
         5Tc1e6CR+obPdnYrK+iCX+wFt1ozAhni+a1YEuUAZ7NWi6lgQCzflxTdu8hpWTqsqvtS
         L1Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704364508; x=1704969308;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iGDdBT8N7Ke807mIT2INPgeaZYTNLnZUsmFbCBznysw=;
        b=DwIjexalpqEVzRTzmKaweA8NU0QsajH0lIZaSABrddLJCep0tnfh4rHzMseThDDFoy
         ll4w3UVUZXNhmc8S77r2reXY7Of6V0h16Cd4XtGaBTJj+COdUYHLhPfvLa5rwK6S0ZBH
         XMKt9VI82WQ0KMyFVoLIpdbIzjGo2Qg8/k39mOmmhezijW3FkP9d0RbSyKqF52uEPU1B
         vM3xp9GTTlu/pTgtUGJYLPIveWvbzawotcWzEJqNnLg2986ol8+HUy3C1Suea0eQSJk9
         1lAsV63didiou1PyE6Q7fn2rj5/dgh+kydRlFTNX5YYr/AeTECL4+Qzp5E1m+XE/PmBt
         lFxg==
X-Gm-Message-State: AOJu0Yzsxp5KAsYiMyRv69CRyAlxBgNs9OZUcKpN0S7C9Tjs14X7KNEb
	xpDqwyUNZnsy2g9b/AFefWn1M4VEN8xjwee5Sm+i4421Uvtl3Q==
X-Google-Smtp-Source: AGHT+IHoKTMbWkSi0xNxd3RqPhX+gaB/kVOtubVbd7XVPPoho9IJvAkVk3oqD8xz7kgETdGcyyw0WJE91md+wF2s/0w=
X-Received: by 2002:a25:e20c:0:b0:dbd:beef:a4d3 with SMTP id
 h12-20020a25e20c000000b00dbdbeefa4d3mr291291ybe.64.1704364508485; Thu, 04 Jan
 2024 02:35:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240104-gcc-docs-update-v1-1-127e4816b798@quicinc.com>
 <CAA8EJprsGke9zZBy_x=YSxz7R1aSpx8r3ndjjXVVKhjKBxd=QQ@mail.gmail.com>
 <724f608a-cbfe-48f6-a1f7-59b961a7d724@quicinc.com> <56ee556d-ec31-4553-bce3-0c1e12c111ed@linaro.org>
In-Reply-To: <56ee556d-ec31-4553-bce3-0c1e12c111ed@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 4 Jan 2024 12:34:57 +0200
Message-ID: <CAA8EJpqg_BMXbcQEiH-YtgMtioYp0D9W-vGBvKpoGjfrQydYtw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: ipq6018: add #power-domain-cells for
 gcc node
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Fenglin Wu <quic_fenglinw@quicinc.com>, quic_tdas@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 4 Jan 2024 at 12:16, Konrad Dybcio <konrad.dybcio@linaro.org> wrote=
:
>
> On 4.01.2024 11:13, Fenglin Wu wrote:
> >
> >
> > On 1/4/2024 5:53 PM, Dmitry Baryshkov wrote:
> >> On Thu, 4 Jan 2024 at 10:06, Fenglin Wu via B4 Relay
> >> <devnull+quic_fenglinw.quicinc.com@kernel.org> wrote:
> >>>
> >>> From: Fenglin Wu <quic_fenglinw@quicinc.com>
> >>>
> >>> Property '#power-domain-cells' is required as per defined in qcom,gcc=
.yaml
> >>> so add it for ipq6018 gcc device node to eliminate following warning =
in
> >>> dtbs_check:
> >>>
> >>> arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dtb: gcc@1800000:
> >>>          '#power-domain-cells' is a required property
> >>> from schema $id: http://devicetree.org/schemas/clock/qcom,gcc-ipq6018=
.yaml#
> >>
> >> But ipq6018 doesn't implement GDSC support. So for the sake of fixing
> >> the warning you are adding a bogus property.
> >>
> > I agree. However, there are also some gcc drivers not implementing GDSC=
 support but the bindings are adding '#power-domain-cells' in the DT exampl=
e, such as: qcom,gcc-apq8064.yaml, qcom,gcc-ipq4019.yaml, qcom,gcc-ipq6018.=
yaml, qcom,gcc-ipq8064.yaml, qcom,gcc-msm8660.yaml.
> >
> > Actually I thought that maybe we should do a clean up by removing '#pow=
er-domain-cells' out of the qcom,gcc.yaml binding and only adding it into i=
ndividual qcom,gcc-xxx.yaml for the driver which has implemented GDSC suppo=
rt. I checked this with Taniya offline, but she prefers only fixing it in i=
pq6018.dtsi as it doesn't hurt anything by adding the property, and she exp=
ects the GDSC support should be existing in most of qcom,gcc drivers especi=
ally the newer Qcom chipsets.
>
> Before we start changing anything, we should assess whether these
> platforms actually have GDSCs within this clock controller block,
> even if they are (currently) not described in the clk driver.

APQ8064 / MSM8960 / MSM8x60  (and thus I assume IPQ8064) have an older
power rail control mechanism called footswitch / GFS_CTL. We do not
implement it (for now), but it might be worth implementing it as the
question has been raised.

--=20
With best wishes
Dmitry

