Return-Path: <devicetree+bounces-104841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA3F984432
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 13:08:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBC901F2240F
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 11:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFE6E1A4F04;
	Tue, 24 Sep 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u/Y9PyEu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D253B1A2556
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 11:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727176096; cv=none; b=e7uiUSGWu4m3pVg2SMbKkTbhyiWYwFl2Y/oSltSG21tNld8MMWA/yh09Xhxt7u51+CqqwnO+0MYJQzYOES3cOIhTzq+3zVExGqffwnEk58tP3Uml/Q0RGHL12ncEiAWPOgY1yhWBwQQA3Q7GMjA1DkH89W3mY7CH2j4d9gP5rOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727176096; c=relaxed/simple;
	bh=97r/WgYzUdOD1Jvf7DKNsULJmbD0uXbBf8jjITR5F/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NSRe0TG2DVm//nfZTFB4YoGPrM4dGS15rZB/g8lKZLjO4RpDjaqzYiPxdh8cs9QL/oS3KTG5DUT4C6lImV5menWZfEiR6a+ffWUoEUjUYfYvfXrHhSjSUqsccy9qe9Zytnj+SV8CWTrxpNJpZ4HormGHRa8/8HOzOuMFC2MYDow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u/Y9PyEu; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42cafda818aso52843255e9.2
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 04:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727176093; x=1727780893; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gTwWQBUQuycxWx0Zk9B9BVvqTvi/oV/vq1GaCBrJvqY=;
        b=u/Y9PyEuVWSwRWNeboIJkWAXPdBbkVWk89l3Sr3TweSZXTNDP/qP5zZnSC/oRdrvPz
         aNj61kDWkrGIzzVI0fODukac8IbscLfxkGtEG7f/HBeDpssZGTcF3IjvUSZ76VCsbbQn
         uLxS2/LjMsAxDSmMwCBKarMSo1l7WjFmkpEEVCZVTwyNLpGlKrda6fSj0tehcNRSn8kS
         JU8ffMb3RFVMA+k/mPBkZbm2BH5hbw+C3qX2G9MZCeAb29RYUNhhXIjb+XTtEMBMkV1D
         ecf6ztZUOT0j0Ev6/HItkDDOmsTOwNQF7Kb3tfrGmjFdp/bgoVd4hZYDR2x6OaDUmG4A
         CkfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727176093; x=1727780893;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gTwWQBUQuycxWx0Zk9B9BVvqTvi/oV/vq1GaCBrJvqY=;
        b=Iqz0Z+b6nD7h+K9h3HFkMguRaLO4r5c4lbM8eVpmznK9e9hqWXDinJLHkuELLyouhQ
         YeRb4ElrKyJgcfAdDGEeLAnTSZyppG1f2lhCLE46oXI9vXVUSJRR3CWzCZ5ywlIIyg1S
         Bd7KhjKfza5+4mtQvtPtpDVq6uC2JneD3LXIPLAe5kW/M/Z48frVq2cwblyLgUZhYjRL
         X2B8rZ8kOJGlGRcvs7D5XPLeL3fxwjtUtqiDPZAgiLo1fT8DPqqOHvkauCjSwRYR8NEU
         bidrEHEjazKWPYRHYqYMm78I+56i757VtnTUIcaKvy5s3imAmmeYglBdL2D8syyFfeRE
         f1Aw==
X-Forwarded-Encrypted: i=1; AJvYcCUcNNRHauljlSGawa5ddt58wYFi63s0egvD0whevRsg1wLAGjd2DcrFkyrGleZ0n5cwQvuocfOHDwyJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyHU5tkHCgilbCiDcjFoDIvAB7xqn5/zzI5zdft+tErA+1/v/TJ
	fisRoQjZfie2PxMa2UzU3zxnKPbq3Z5Yt65oVAiqYfXZmJOHHUYBO4Em5yXRQf8=
X-Google-Smtp-Source: AGHT+IGhw8lLPQAbhLShSxG6G1uBOBIBY7zcqAMdkC1i19EuQw0UARijwNzL/xwV2z7tWGYPzDRrfQ==
X-Received: by 2002:a05:600c:190c:b0:42c:ba1f:5482 with SMTP id 5b1f17b1804b1-42e7c1a9f11mr109333685e9.35.1727176093071;
        Tue, 24 Sep 2024 04:08:13 -0700 (PDT)
Received: from linaro.org ([82.77.84.93])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e754a7ae2sm156669915e9.32.2024.09.24.04.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 04:08:12 -0700 (PDT)
Date: Tue, 24 Sep 2024 14:08:10 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: Enable external DP
 support
Message-ID: <ZvKdmhfxilFfOzmb@linaro.org>
References: <20240902-x1e80100-crd-dts-add-external-dp-support-v1-0-899c264c0eb7@linaro.org>
 <20240902-x1e80100-crd-dts-add-external-dp-support-v1-1-899c264c0eb7@linaro.org>
 <th2x3gtx56fr7zuhhleuj77eghfe7kgbfhok7ul5egez4iq5v2@qy5wy4hxpb5s>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <th2x3gtx56fr7zuhhleuj77eghfe7kgbfhok7ul5egez4iq5v2@qy5wy4hxpb5s>

On 24-09-02 21:54:58, Dmitry Baryshkov wrote:
> On Mon, Sep 02, 2024 at 06:01:35PM GMT, Abel Vesa wrote:
> > The Qualcomm Snapdragon X Elite CRD board has 3 USB Type-C ports,
> > all of them supporting external DP altmode. Between each QMP
> > combo PHY and the corresponding Type-C port, sits one Parade PS8830
> > retimer which handles both orientation and SBU muxing. Add nodes for
> > each retimer, fix the graphs between connectors and the PHYs accordingly,
> > add the voltage regulators needed by each retimer and then enable all
> > 3 remaining DPUs.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 414 +++++++++++++++++++++++++++++-
> >  1 file changed, 408 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > index 10b28d870f08..6dfc85eda354 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> 
> [skipped]
> 
> 
> > @@ -709,6 +861,163 @@ keyboard@3a {
> >  	};
> >  };
> >  
> > +&i2c1 {
> > +	clock-frequency = <400000>;
> > +
> > +	status = "okay";
> > +
> > +	typec-mux@8 {
> > +		compatible = "parade,ps8830";
> > +		reg = <0x08>;
> > +
> > +		clocks = <&rpmhcc RPMH_RF_CLK5>;
> > +		clock-names = "xo";
> > +
> > +		vdd15-supply = <&vreg_rtmr2_1p15>;
> > +		vdd18-supply = <&vreg_rtmr2_1p8>;
> > +		vdd33-supply = <&vreg_rtmr2_3p3>;
> > +
> > +		reset-gpios = <&tlmm 185 GPIO_ACTIVE_HIGH>;
> > +
> > +		orientation-switch;
> > +		retimer-switch;
> 
> Doesn't it need to listen to mode switching events? 4-lane DP vs
> 2/2-lane DP + USB3 requires propagating of the altmode events to the QMP
> PHY, see the original 4-lane series.

The mode is passed through the retimer state as well, isn't it?

> 
> > +
> > +		ports {
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +
> > +			port@0 {
> > +				reg = <0>;
> > +
> > +				retimer_ss2_ss_out: endpoint {
> > +					remote-endpoint = <&pmic_glink_ss2_ss_in>;
> > +				};
> > +			};
> > +
> > +			port@1 {
> > +				reg = <1>;
> > +
> > +				retimer_ss2_ss_in: endpoint {
> > +					remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> > +				};
> > +			};
> > +
> > +			port@2 {
> > +				reg = <2>;
> > +
> > +				retimer_ss2_con_sbu_out: endpoint {
> > +					remote-endpoint = <&pmic_glink_ss2_con_sbu_in>;
> > +				};
> > +			};
> > +		};
> > +	};
> > +};
> > +
> 
> 
> > @@ -1164,7 +1566,7 @@ &usb_1_ss0_dwc3_hs {
> >  };
> >  
> >  &usb_1_ss0_qmpphy_out {
> > -	remote-endpoint = <&pmic_glink_ss0_ss_in>;
> > +	remote-endpoint = <&retimer_ss0_ss_in>;
> >  };
> 
> orientation-switch and mode-switch for the QMP PHY?

orientation-switch is already in the SoC dtsi nodes.

But the qmp phy doesn't currently support mode switching. Right?

> 
> >  
> >  &usb_1_ss1_hsphy {
> > @@ -1196,7 +1598,7 @@ &usb_1_ss1_dwc3_hs {
> >  };
> >  
> >  &usb_1_ss1_qmpphy_out {
> > -	remote-endpoint = <&pmic_glink_ss1_ss_in>;
> > +	remote-endpoint = <&retimer_ss1_ss_in>;
> >  };
> >  
> >  &usb_1_ss2_hsphy {
> > @@ -1228,5 +1630,5 @@ &usb_1_ss2_dwc3_hs {
> >  };
> >  
> >  &usb_1_ss2_qmpphy_out {
> > -	remote-endpoint = <&pmic_glink_ss2_ss_in>;
> > +	remote-endpoint = <&retimer_ss2_ss_in>;
> >  };
> > 
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

Thanks for reviewing.

Abel

