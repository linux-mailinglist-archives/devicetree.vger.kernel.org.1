Return-Path: <devicetree+bounces-182381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B96ACC086
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 08:53:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72703189228B
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 06:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454302686A0;
	Tue,  3 Jun 2025 06:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JulYCSmX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C571482E7
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 06:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748933572; cv=none; b=M6LIbIcbZThivCLXSA+4VowZ5Abc7CkLE7xaBMTp6ndFu/On/awsL7QbfciUFb0rYD871SiVc2Ym/7aHNm+cCQhVsAZOwpB4efl8zxBMj7vRyCIgjvLg6vCMmkZONbJK0yvygu6O/jbDOaZUtwB1Upuv7y+5PQCjX1EBoh8TYgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748933572; c=relaxed/simple;
	bh=a2Xhzzi3QY9KeC6g0mvy+JMY/3ewUcjrru9xzEIQsXM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N/zxgDDftASqgINVzYLxHPDYVBpunB9ESjN1J2c1O2dHN67ldYKSkc1rgxKfFm3fUFVzUsLEzUnxyVXYG1FmTBTe4+YI101/VGK30GVKoHHxMYE9aP38N6Hlm/mvF229pl90uYkXS1YxqEOzmffrbfEdkq3gbcpPksPuw340nXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JulYCSmX; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-312150900afso5371374a91.1
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 23:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748933569; x=1749538369; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wxJyD1Wr6giGGGMhwdcwxe8wm378R6kiZUi+LdBaw9U=;
        b=JulYCSmXmnzIfSHXAWo8n6FCZuy+TYeBCvu5wclg24pD7lmI5rGOCqifUTR3mN2UMJ
         7d4qLPY+wMnhZnhTRmHQgWJUshuPEt0ggjxFDzMjtjjusJYzA3qcWX42PTFD0oPhW4LX
         EAeZX8YZt40tip6eo4RAbmNM4mzRPlxo10uN6XqpL7Fjmg5ee3Skkvp1d/p73n8/9rNh
         7PM+3bVu4ay4eK3pXw2btIqkKLV+M1B9g8JYWTVm3iD8a9MoMdeMu2IZYKJ8VOnrwfv/
         vWbEIFTqiKjHefFZkW6qgq+Tb5y2flIkxKfZiHBgdmANicfAGDt5goPPDUXQQnEn41Ke
         ndHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748933569; x=1749538369;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wxJyD1Wr6giGGGMhwdcwxe8wm378R6kiZUi+LdBaw9U=;
        b=A+7MWdojcpTYTf3k67lkdNAO+zq8JyG344TLOC7ORTxPSy0px/y3UrdqS0LsPkdNhe
         8t45z9oAIQp0pQ/mS9452+lxsvePyI6lw6RqrV4bpsYUVLrQnvJDWz3uySYbP30aSDvQ
         NQcIPKknDOdEqfn9zqkczbcmKNTVucqDcNivvWyKM0dBCRCWImGq37buuhjW71uwou1T
         Wz9dMYefTuzKrClolQP/pPtxiRB4cPoK+4qkFnXJi3bqkbKOHnSlvPVGKCKaP7RoQLoQ
         5qX179cz5SLYSWtMaqwc6kaHpPHB6H6/Kmvbxoyu5Nd/TouXbRwWUDjP7IaLMdASBKQa
         xbaw==
X-Forwarded-Encrypted: i=1; AJvYcCV/yKVjVOPcyqCM5fjvuQWUH+RxYi1GR7PzS5EeUuK0/ate3XdX2kXIqn9JCIvzDWmlC1MciizkJ2Do@vger.kernel.org
X-Gm-Message-State: AOJu0YwqYPompFKVeLS6RogreSz7dol1H/w3jCZqDImwPyLzg5RNAmbu
	jH0SGWXHBva3xCLuAiILuBXM5aomst4+r/AEnzYTzeWH6kr+wUYOB207WigfBCj04Q==
X-Gm-Gg: ASbGncsfjmzGRKXL5G2lFvQjZj4Y4kg1g++EclatVHgCq8iB+jODU5YSxs9njLjpLut
	I1LP3J6UBE/tdczp3t4M/NLhykBnenEL6vXRKSp1TKw5DJpoZsGB6zVRceZSdNJaz2D3wek8sRl
	dtoGxU3nl1LLvb2eSRvn2C81IYChR5IrvLBRovjTyfnMwYQhaaKkTmdwJV2CJTpYItTdpnOl1KT
	w3ocznPaq5mCARtayN7RxtFQP+v8vDfqv9eUyPRUBSecJQojWLjgsrliVVMe/M4YmY/lPBjRsrI
	6+b5drXqNUvYp88UMqM6AAj91KH+0KPb6p1Pm/wbffG1Fr5s+CFtmvY0ZMxtfxCh
X-Google-Smtp-Source: AGHT+IHYXjOCnfjKFDJMsvXQhP7ZQM81wMsQjlNn1UPAKq3ILM9rjBY85bZGaOI3BGHiLdo5YQgppg==
X-Received: by 2002:a17:90b:5790:b0:311:c1ec:7d11 with SMTP id 98e67ed59e1d1-3127c73d3c9mr19065135a91.18.1748933568932;
        Mon, 02 Jun 2025 23:52:48 -0700 (PDT)
Received: from thinkpad ([220.158.156.133])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e30cb3bsm6616776a91.38.2025.06.02.23.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jun 2025 23:52:48 -0700 (PDT)
Date: Tue, 3 Jun 2025 12:22:41 +0530
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
Message-ID: <pb7rsvlslvyqlheyhwwjgje6iiolgkj6cqfsi6jmvetritc7lr@jxndd5rfzbfy>
References: <20250419-perst-v3-0-1afec3c4ea62@oss.qualcomm.com>
 <20250419-perst-v3-3-1afec3c4ea62@oss.qualcomm.com>
 <r4mtndc6tww6eqfumensnsrnk6j6dw5nljgmiz2azzg2evuoy6@hog3twb22euq>
 <0e1d8b8e-9dd3-a377-d7e0-93ec77cf397f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0e1d8b8e-9dd3-a377-d7e0-93ec77cf397f@oss.qualcomm.com>

On Tue, Jun 03, 2025 at 12:03:01PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 6/1/2025 12:35 PM, Manivannan Sadhasivam wrote:
> > On Sat, Apr 19, 2025 at 10:49:26AM +0530, Krishna Chaitanya Chundru wrote:
> > > There are many places we agreed to move the wake and perst gpio's
> > > and phy etc to the pcie root port node instead of bridge node[1].
> > 
> > Same comment as binding patch applies here.
> > 
> > > 
> > > So move the phy, phy-names, wake-gpio's in the root port.
> > 
> > You are not moving any 'wake-gpios' property.
> > 
> ack I will remove it.
> > > There is already reset-gpio defined for PERST# in pci-bus-common.yaml,
> > > start using that property instead of perst-gpio.
> > > 
> > > [1] https://lore.kernel.org/linux-pci/20241211192014.GA3302752@bhelgaas/
> > > 
> > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 5 ++++-
> > >   arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 5 ++++-
> > >   arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 5 ++++-
> > >   arch/arm64/boot/dts/qcom/sc7280.dtsi           | 6 ++----
> > >   4 files changed, 14 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > index 7a36c90ad4ec8b52f30b22b1621404857d6ef336..3dd58986ad5da0f898537a51715bb5d0fecbe100 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > @@ -709,8 +709,11 @@ &mdss_edp_phy {
> > >   	status = "okay";
> > >   };
> > > +&pcie1_port0 {
> > > +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > > +};
> > > +
> > >   &pcie1 {
> > > -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > >   	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
> > >   	pinctrl-names = "default";
> > 
> > What about the pinctrl properties? They should also be moved.
> > 
> pinctrl can still reside in the host bridge node, which has
> all the gpio's for all the root ports. If we move them to the
> root ports we need to explicitly apply pinctrl settings as these
> not tied with the driver yet.
> 

If the DT node is associated with a device, then the driver core should bind the
pinctrl pins and configure them. Is that not happening here?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

