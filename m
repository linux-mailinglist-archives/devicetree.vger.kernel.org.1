Return-Path: <devicetree+bounces-160665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B72ABA70768
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 17:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BD631676DF
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 16:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A3725EFAC;
	Tue, 25 Mar 2025 16:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nDMqUQSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA1D25D1FA
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 16:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742921600; cv=none; b=Mqx7TIi6kEn54ML/kDBQqkyjfNDn6PckuyPXsvHVcptry5e7A8NDQvochtOff/UxDj8RGlsjtKD8lpqnDtXHG0g6/5Qv9gFF2e32CzIztEhttZ608cdPIi88S8KyVRoNLuoxMyEGIUCK9Z55BoS6AiNVxjS9+JQBuDxmm3wU4W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742921600; c=relaxed/simple;
	bh=hrscfi/ZD9RvG2QzoVS3y13ZwZsl/TSjrSnTmcB0MJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O9PSJfhPtwFz4Xs2B/Ed9wzo3RzZy9KatEjq/xVreP9bJ/ZDJaJhoEP8V2/NEGqvEqpu65nH36ujhELKITqzmdTuBOWO4qfsJiYOtC0GmgNxF79fPOJia7kEPQ6s8NzoSYi9GBbLhmFhvDrHWklMdCpmS+K+wwPdSCKTh0tMBGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nDMqUQSp; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-22423adf751so111935425ad.2
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 09:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742921598; x=1743526398; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5L9ZiZQAjB02Svt4Qm10JSTX6pFY5X9IvVK51QfXpvc=;
        b=nDMqUQSpqbcDSUT9SnxNOPxIdm6kapAuQhQ/X5K+TlsJ+AsHOtayWKo2q9UYXi2OkB
         WrTmXMwXIpMuGage6hzq4Rda5mVpldQMr1dzmai8EJH+GbO3mby25kxBseyA5C4WE9+6
         vzG8/eKaMHGJrhlyzv8voZ4fDViCZNAXZqTD4uO+kZPEU1OjHxjPBw9AGQvyQG4PqfHq
         80cwL9i1QU2BHvbO9Gj5U40vTFfmHiN8BVdAcPt4kyEggUvylkZdE0QBU9K5q9Z90LnF
         6IgBFZjWpj3U0z/U73wYtBE7c557Qbip86rENTDuMrX0B8I2fGoYvfyRm/jWUC6Tc+zE
         VLTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742921598; x=1743526398;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5L9ZiZQAjB02Svt4Qm10JSTX6pFY5X9IvVK51QfXpvc=;
        b=DK3sgKKTry2oYzlm2685nCBfe5jxtwpLq9B5qEAD/tIwvC5QzVBIaeD6hAGYqIu0id
         WX4BkJ39HmuZ1i7xb0ErL5/9GwjNLtmbMQqu/MouVytwZ++z9Ky08Kra/VbWUlM9kWsI
         kAFQbpkcEeYTM2pvp6AkDID187j4LGyhMka0T+NiCoImxZSZu4Ck1Y3JZl36yr/6fciu
         TeJvDfSD6XzEqs/dvYi0q6v0Wxb4RCQ0p4lhefbVZzk3BXheMFW4BZMVV3ctRQU5Sg1K
         J1WBojTJFOwmblyUIyJh5JGuFg+qIP5iRAdPTeyIt9bs1XQnH17IAqH/QMbBB2bJpV54
         Ahrw==
X-Forwarded-Encrypted: i=1; AJvYcCWTKrTAw4dHgFRjYmXgbKPE2/uw7+EQN4jyBHOQsmG2HrsM20P2JJUGaH0bcOw4AxEo0FMHpTDF6qAG@vger.kernel.org
X-Gm-Message-State: AOJu0YwdaVoN8AsST5rZyqeRbOKJoEwE9G5Su7a/1sUj4holv6QOryw5
	mjv9qFexMrvLNe7lcudTJLD1VVB7+GrYXui9UP+rA9GyLNOhmQapvBQ7rZJSeA==
X-Gm-Gg: ASbGnctknwomh0Jjuh7KRBinkqd27hemK3akc01hPJB979gDsORErWsB/WQv2H9oYTk
	4ycv3LSKfOVxpMRL1SuO15nB9zAqCAni15YBNnmGJWaJh/lArr2z+SKvGUs6sSkm3JyKzyx/7SQ
	DgYPOJwMp2rpJ8ClOiU5DmipYViCOrFRgTBbROtB5hlQ+JQOwpr78dZ2froM58RYZTNZLiLkQN3
	+1BY7BKN2fr5xcN0zhPtcjmcBYzm+8BCkCA5JJ35XpvwLd35NOGEv02AnO9NclpvGRE6X/GKpxZ
	wXOl4Jym0BsViIJehQ0nKv2NKtfK6EXUk+nuQrfqGtq4oMUtAidd74MG
X-Google-Smtp-Source: AGHT+IE9jFkoNlNzUIhIhtPYr1hz43laKNyex5k4hiZRJylP0309zHaG4irN98J58MRDRzo0Phd2MA==
X-Received: by 2002:a05:6a00:84d:b0:736:a540:c9b5 with SMTP id d2e1a72fcca58-73905a2763bmr24061167b3a.22.1742921598338;
        Tue, 25 Mar 2025 09:53:18 -0700 (PDT)
Received: from thinkpad ([120.60.136.104])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af8a28059e8sm9333330a12.20.2025.03.25.09.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 09:53:17 -0700 (PDT)
Date: Tue, 25 Mar 2025 22:23:10 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <ycv74l5nop5mptj6uobuacffnwho2gvznh4dhxagupt5gh6x4k@vgik7ouydy6f>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
 <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
 <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>

On Mon, Mar 24, 2025 at 04:48:34PM +0530, Praveenkumar I wrote:
> 
> 
> On 3/24/2025 1:26 PM, Manivannan Sadhasivam wrote:
> > On Fri, Mar 21, 2025 at 04:14:43PM +0400, George Moussalem via B4 Relay wrote:
> > > From: Nitheesh Sekar<quic_nsekar@quicinc.com>
> > > 
> > > Add phy and controller nodes for a 2-lane Gen2 and
> > Controller is Gen 3 capable but you are limiting it to Gen 2.
> > 
> > > a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> > > one global interrupt.
> > > 
> > > Signed-off-by: Nitheesh Sekar<quic_nsekar@quicinc.com>
> > > Signed-off-by: Sricharan R<quic_srichara@quicinc.com>
> > > Signed-off-by: George Moussalem<george.moussalem@outlook.com>
> > One comment below. With that addressed,
> > 
> > Reviewed-by: Manivannan Sadhasivam<manivannan.sadhasivam@linaro.org>
> > 
> > > ---
> > >   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 234 +++++++++++++++++++++++++++++++++-
> > >   1 file changed, 232 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > index 8914f2ef0bc4..d08034b57e80 100644
> > > --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > @@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
> > >   			status = "disabled";
> > >   		};
> > > +		pcie1_phy: phy@7e000{
> > > +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> > > +			reg = <0x0007e000 0x800>;
> > > +
> > > +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> > > +
> > > +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> > > +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> > > +
> > > +			#clock-cells = <0>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			num-lanes = <1>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcie0_phy: phy@86000{
> > > +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> > > +			reg = <0x00086000 0x800>;
> > > +
> > > +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> > > +
> > > +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> > > +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> > > +
> > > +			#clock-cells = <0>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			num-lanes = <2>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > >   		tlmm: pinctrl@1000000 {
> > >   			compatible = "qcom,ipq5018-tlmm";
> > >   			reg = <0x01000000 0x300000>;
> > > @@ -170,8 +204,8 @@ gcc: clock-controller@1800000 {
> > >   			reg = <0x01800000 0x80000>;
> > >   			clocks = <&xo_board_clk>,
> > >   				 <&sleep_clk>,
> > > -				 <0>,
> > > -				 <0>,
> > > +				 <&pcie0_phy>,
> > > +				 <&pcie1_phy>,
> > >   				 <0>,
> > >   				 <0>,
> > >   				 <0>,
> > > @@ -387,6 +421,202 @@ frame@b128000 {
> > >   				status = "disabled";
> > >   			};
> > >   		};
> > > +
> > > +		pcie1: pcie@80000000 {
> > > +			compatible = "qcom,pcie-ipq5018";
> > > +			reg = <0x80000000 0xf1d>,
> > > +			      <0x80000f20 0xa8>,
> > > +			      <0x80001000 0x1000>,
> > > +			      <0x00078000 0x3000>,
> > > +			      <0x80100000 0x1000>,
> > > +			      <0x0007b000 0x1000>;
> > > +			reg-names = "dbi",
> > > +				    "elbi",
> > > +				    "atu",
> > > +				    "parf",
> > > +				    "config",
> > > +				    "mhi";
> > > +			device_type = "pci";
> > > +			linux,pci-domain = <0>;
> > > +			bus-range = <0x00 0xff>;
> > > +			num-lanes = <1>;
> > > +			max-link-speed = <2>;
> > This still needs some justification. If Qcom folks didn't reply, atleast move
> > this to board dts with a comment saying that the link is not coming up with
> > Gen3.
> > 
> > - Mani
> The IPQ5018 PCIe controller can support Gen3, but the PCIe phy is limited
> Gen2 and does not supported Gen3.

Hmm, so if a Gen 3 capable device is connected, the link will not work at Gen 2?
It seems so from the error that George shared previously.

> Hence, it is restricted using the DTSI property.
> 

Ok. George, please add a comment for the property stating the reason.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

