Return-Path: <devicetree+bounces-182403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC51ACC1BB
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 10:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 217473A30A3
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 08:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9EE280A37;
	Tue,  3 Jun 2025 08:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e+VD3fU5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD3F268FFF
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 08:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748938060; cv=none; b=phkE865YA543mWNLsZKakx8UnFf+5+ooENE+3ck+34+9QO8BCo98r9OtkJyUfcxmyIciEOC/TjDxgXAAjV5I59cPWjz11xLbFS9Am14UipvyB772Y2UJ6Bp/sNl/QflonXAx3QYOLTOZJJxix+FRiUXPMYgLuQh3o+Fxg6+x2Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748938060; c=relaxed/simple;
	bh=FUWBKradpds5Eq8Ee5H4q/ArrYDMcD+S9L8vK8skA4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iKMGGb7rSCL7i44h8C3+d3ttcEMrFgjl4NwOlg0kERhbawuNNMgEmX7Lpf4FqZ9qAZAwlv/pxHijO/j7bHk0wJh7wxh0Vxq356fKrx4SoLwRrYsQoqHb4/+Y3olEDKpdvV+0qj0AzkpVFvwKGaU5HTdPPV8ZwaqF703V0w4ExAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e+VD3fU5; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-747fc7506d4so477342b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 01:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748938058; x=1749542858; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RgRK11s6JB+JjyTicXAF2ZwBxFCvxZL8yavFM8SLLjA=;
        b=e+VD3fU5ECdDr/658fUZ7tcnwaduT0d6KnRS+JxgtaBo0w07fGEhyGYpkoEfBX9eKL
         Rlw1O3f0yobVRjv8p+zT1MdYeikftZB7d0kTQSGS8UkVxZ2jE7quyv6cC7achGISOSWP
         z90qAAtwD+4Ju1a1SSJxcSfrXcYfO+uiRrJ1rpMFlwYrzDGm4rLDTf98xfL2zQTp1GkC
         7plsFVzliiE5ILvOzPPeaw9L8mHet8oKOEq03pejhcopK2XqfR09MpQgtvPtsYN/NhjO
         MLFcFMqGgDIsW4PYgDe8JVKGOlzDnquvgSwNDBgfQc764kzZfCWCDIGAMpgPzImsRhRw
         Mn7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748938058; x=1749542858;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RgRK11s6JB+JjyTicXAF2ZwBxFCvxZL8yavFM8SLLjA=;
        b=sde0671xJgFyeOHq7cK3/JxxoFTiyzwe/rxtruIFplAGnDJwAJtWflfH+jKdjohvfK
         oju/IondcIgJ8mGgl2A1VrTmfhLJdtQhpZSOVXQIaUmmG8liOHJQxV7rHdOsVlO+6r5l
         v9hfL4Kx11quU2ZC5L6n32ks51Sk/KqIxhMIUZkP9rkzMhpT2aEfSyDB83/TXgjIO9Hd
         5D07eK1Wdf8ymVEMy/9hyeuHKrdvQVpQ2fUgEY307lhjUo6pcrtm4WI6GStovkzr4Wrx
         6MVty2hyya9Ss09Sd8DJxnGpdqyQTlsmh03svNI+BZH9YPlgo799pWE34nur56X0QlC4
         kJlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeJRFUCje5fNWlhkI7WfRBwCvjj65w8THi/qb8QheOOEC2Zv1KwTYXH80Hy7v6tKJ+gzhO1VMgUrn3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6imPJYamynxDiDgO2263Y34iIeeFSCoGjavJj71tqgzr9F95O
	6mTAHSUNGEY8YvqmRIvFcF3X0Ji+c9xdozoxXrotlj0i6/4KyAETVT6MLqfa83G6Dg==
X-Gm-Gg: ASbGncss8ADWULCHwIe7pBR8r/t+alu19GR+Mu9giTLGYpnAzdQvGaRD7ZxdF7bhvJR
	r0eH531XUgI/LCIKmCd8yOY8VoWd6J635w2roGX3q1VMrVJpvkNw/EvtjZSgdM2i7tRWMvN0Pmg
	PMfjjbPRyUespYCwywKwxlGLlBq37APl8Mlz+Aet6HfNkdU3L5JHuETUgN3rVjpFqCVaHJv6BsQ
	cvRts6aSgaQLTRLIPkRF+oqrr6MhDC1q52gJ1qXaBwyggRqcVjRTlGn8cNciuHJ924c6R8LLCvr
	bw3DPVRKQNJssecGLMQqHVeYZXJyZCPmghKXmH/ZbZL2AHQk5wTQfS7yBCZJB+bU
X-Google-Smtp-Source: AGHT+IHCOslACAtsUuopTlmOMx0XidS3UtDrBqXgyJnxMB7I6vxxOXPErDBVm2jpZjtzNKVMFePkTQ==
X-Received: by 2002:a05:6a00:cc9:b0:742:aecc:c472 with SMTP id d2e1a72fcca58-747d181cd0emr14550507b3a.2.1748938058081;
        Tue, 03 Jun 2025 01:07:38 -0700 (PDT)
Received: from thinkpad ([220.158.156.133])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afe9680bsm9087026b3a.18.2025.06.03.01.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 01:07:37 -0700 (PDT)
Date: Tue, 3 Jun 2025 13:37:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v3 3/3] arm64: qcom: sc7280: Move phy, perst to root port
 node
Message-ID: <uz4muqjo3mhso3wlzfl6hmo3c6nns2ekfin76y2443tt5nzfcs@5j66ihrw2nvc>
References: <20250419-perst-v3-0-1afec3c4ea62@oss.qualcomm.com>
 <20250419-perst-v3-3-1afec3c4ea62@oss.qualcomm.com>
 <r4mtndc6tww6eqfumensnsrnk6j6dw5nljgmiz2azzg2evuoy6@hog3twb22euq>
 <0e1d8b8e-9dd3-a377-d7e0-93ec77cf397f@oss.qualcomm.com>
 <pb7rsvlslvyqlheyhwwjgje6iiolgkj6cqfsi6jmvetritc7lr@jxndd5rfzbfy>
 <fb1cee63-ec97-d5c7-7a9b-bda503a91875@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fb1cee63-ec97-d5c7-7a9b-bda503a91875@oss.qualcomm.com>

On Tue, Jun 03, 2025 at 01:05:17PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 6/3/2025 12:22 PM, Manivannan Sadhasivam wrote:
> > On Tue, Jun 03, 2025 at 12:03:01PM +0530, Krishna Chaitanya Chundru wrote:
> > > 
> > > 
> > > On 6/1/2025 12:35 PM, Manivannan Sadhasivam wrote:
> > > > On Sat, Apr 19, 2025 at 10:49:26AM +0530, Krishna Chaitanya Chundru wrote:
> > > > > There are many places we agreed to move the wake and perst gpio's
> > > > > and phy etc to the pcie root port node instead of bridge node[1].
> > > > 
> > > > Same comment as binding patch applies here.
> > > > 
> > > > > 
> > > > > So move the phy, phy-names, wake-gpio's in the root port.
> > > > 
> > > > You are not moving any 'wake-gpios' property.
> > > > 
> > > ack I will remove it.
> > > > > There is already reset-gpio defined for PERST# in pci-bus-common.yaml,
> > > > > start using that property instead of perst-gpio.
> > > > > 
> > > > > [1] https://lore.kernel.org/linux-pci/20241211192014.GA3302752@bhelgaas/
> > > > > 
> > > > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > > > ---
> > > > >    arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 5 ++++-
> > > > >    arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 5 ++++-
> > > > >    arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 5 ++++-
> > > > >    arch/arm64/boot/dts/qcom/sc7280.dtsi           | 6 ++----
> > > > >    4 files changed, 14 insertions(+), 7 deletions(-)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > index 7a36c90ad4ec8b52f30b22b1621404857d6ef336..3dd58986ad5da0f898537a51715bb5d0fecbe100 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > @@ -709,8 +709,11 @@ &mdss_edp_phy {
> > > > >    	status = "okay";
> > > > >    };
> > > > > +&pcie1_port0 {
> > > > > +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > > > > +};
> > > > > +
> > > > >    &pcie1 {
> > > > > -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > > > >    	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
> > > > >    	pinctrl-names = "default";
> > > > 
> > > > What about the pinctrl properties? They should also be moved.
> > > > 
> > > pinctrl can still reside in the host bridge node, which has
> > > all the gpio's for all the root ports. If we move them to the
> > > root ports we need to explicitly apply pinctrl settings as these
> > > not tied with the driver yet.
> > > 
> > 
> > If the DT node is associated with a device, then the driver core should bind the
> > pinctrl pins and configure them. Is that not happening here?
> The root node will not be associated with the driver until enumeration,
> the controller drivers needs these to be configured before enumeration.
> 

Hmm. I'm working on moving the PERST# deassert to pwrctrl drivers, but even then
the PERST# assert needs to happen in the controller driver for initialization.
And moving them to root port node would cause the pin state to be changed
in-between. So I agree, let's leave them in controller node itself.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

