Return-Path: <devicetree+bounces-31717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6319282C467
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 18:12:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 738D61C21E5F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 17:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BBBC1AAA5;
	Fri, 12 Jan 2024 17:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pp/d8/SU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BEB17570
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 17:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5f07f9d57b9so66712127b3.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 09:12:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705079534; x=1705684334; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J5ud1rJZ4/aAl2w8AFFlLHsFUh7X8Jmw1HcAVlcftdY=;
        b=pp/d8/SUaLuil/xYYdCUCqcWlrbEdafvFsBDfJzIMk3DkCVP+987XvYq0HyxbIwmyE
         EjGvvcXvDsXf8MsEJUDv059LdXUz1xYDRLPObMpzp8hg3g90iVYBbcDf0WfdWnCpX3PQ
         ga1gqNVIwh+FWMdIfW7gEkX4QHQi77REbPpJRvSiGO9XoPSHynI3QurfqbG4SO1kKn1a
         l+1VPNnXq4uV7qdTs+rZkUuSj0c6yZThzEn3WCzeH+S82SejF/HsJ2hA5OnHej8LWCVL
         wRIZdQpzLpWe+9Swi8r4sC6u3eL/CQoGsY0zXJ0wSUQ6AfBcqfIoIBb3id/cDH6/HbH0
         CKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705079534; x=1705684334;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J5ud1rJZ4/aAl2w8AFFlLHsFUh7X8Jmw1HcAVlcftdY=;
        b=EYOit3In9U61DR3GRRKEcGglteF0Q4IuAuVHdeN3GijHQMfhS/iHfbO2TZg3upklWc
         5aR6A1CTxfxMDx7bLicQcgL6viCq8hUpIrVFi0A6rtt8yJwTdBcM4minyF5dpcF0lIe4
         R3MZFPQfFGPRReQDVS71ub4JGSl38eYwmVu4IXCe2blWpz9FyH73BNZkZfZONvQXeIUs
         GeHfT5UzGDXCXNCvzFPM37apEOEqDaGTqc6PajTWOpWMX5pKTqewQZ7es5s6r2lWXZBo
         C7FQ/8fp90NG42YVrK+LJO4q9Ksjky6sODO1GTZocl6ptnlKfmG4sM0AXnwuXxIcBRyN
         ymUQ==
X-Gm-Message-State: AOJu0Yx+2cRHo5OZoZIycYo+yQqJCVA/sQDdsRC9dTzoNtlwZj1NMogz
	jgPKkRs2H2RCNlsJDOjybwJEo8buW/W8OGxalozmgRbJg1iZ0Q==
X-Google-Smtp-Source: AGHT+IEs1h/CeJ56wrTFZaNNEZAKOE09nn3k0GsuVyw/zSI+h13I0UrGgIujgcO/VRubek1xeFbUGYox26gCwC1t0lc=
X-Received: by 2002:a05:690c:7:b0:5fb:86a1:3e57 with SMTP id
 bc7-20020a05690c000700b005fb86a13e57mr1835256ywb.39.1705079532580; Fri, 12
 Jan 2024 09:12:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240112-opp_support-v6-0-77bbf7d0cc37@quicinc.com>
 <20240112-opp_support-v6-1-77bbf7d0cc37@quicinc.com> <20240112-spotty-unplug-23790509cbe5@spud>
In-Reply-To: <20240112-spotty-unplug-23790509cbe5@spud>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 12 Jan 2024 19:12:01 +0200
Message-ID: <CAA8EJpoLqs6xs4OF4YxBKQesfvAeXzoHPR9G9EeS4+WXjwb9yw@mail.gmail.com>
Subject: Re: [PATCH v6 1/6] dt-bindings: PCI: qcom: Add interconnects path as
 required property
To: Conor Dooley <conor@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Brian Masney <bmasney@redhat.com>, 
	Georgi Djakov <djakov@kernel.org>, linux-arm-msm@vger.kernel.org, vireshk@kernel.org, 
	quic_vbadigan@quicinc.com, quic_skananth@quicinc.com, 
	quic_nitegupt@quicinc.com, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Jan 2024 at 18:55, Conor Dooley <conor@kernel.org> wrote:
>
> On Fri, Jan 12, 2024 at 07:52:00PM +0530, Krishna chaitanya chundru wrote:
> > Add the interconnects path as required property for sm8450 platform.
>
> There's no explaination here as to why you need two different
> compatibles for the instances on this device. Please add one.

Note, these are not new compatible strings. They are already defined
(separate because port0 and port1 have different sets of NoC clocks).

>
> Thanks,
> Conor.
>
> >
> > Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > ---
> >  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > index eadba38171e1..bc28669f6fa0 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > @@ -777,6 +777,8 @@ allOf:
> >                - qcom,pcie-sa8540p
> >                - qcom,pcie-sa8775p
> >                - qcom,pcie-sc8280xp
> > +              - qcom,pcie-sm8450-pcie0
> > +              - qcom,pcie-sm8450-pcie1
> >      then:
> >        required:
> >          - interconnects
> >
> > --
> > 2.42.0
> >



-- 
With best wishes
Dmitry

