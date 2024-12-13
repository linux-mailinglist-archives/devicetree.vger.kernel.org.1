Return-Path: <devicetree+bounces-130511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8093E9F0417
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 06:20:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B957283CDF
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 05:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3045E1885A1;
	Fri, 13 Dec 2024 05:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hcnIoA+2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0E5188015
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 05:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734067225; cv=none; b=BimPG47EnBJ9Y9hb+8TBc2iG1NxDJAowtrSKzpX8Xm/G0vN6eaG7h62rVJBJ4l8lrQJvdUpK4CNYlv9T9Gu4wLnQnhbzLKixiGiGl+/HnBUXRTn/DYknGC42G+jkAGGfeuMZFFlFkq5HdPkqc4vLaJ+dJThmjTwez1BjZjkqONc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734067225; c=relaxed/simple;
	bh=ijQqiQx39a34E+zUxQPwt279N6b3F/EZYkp457t1zaw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VUnBKjBNMT2Uc+aVMmFmTjNKQMrckk9RWrNbtWWyvJNXzME02Mj1ed3Wq5+mgUPxf2uMVWNaHk1Qboh5wVgwHu7mw4j6eIm26THqtJaJA2kOy2cec6chznyYAmm8Y63K/4AD+/HR6HLyv+GkYtjkrObZcRgU51mwbI6/RW+VyPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hcnIoA+2; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3011c7b39c7so12394911fa.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 21:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734067221; x=1734672021; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xiz6ukFw9DSCPef3k+S6Ii3ZGWR6/g7hmh8hbZiwQWs=;
        b=hcnIoA+2RO2u98ss/RODlfV78qL/DiMzxWt3N7SoS8DgVW6QMBWRDoY53Ce7+Ae9hT
         v9/dKFBJQNkscf+cYaJY3QLCQN27CmZWd2Lh0gvmYoylLTyfy5CHCqeEKjFGOHbfUz65
         KGxgBOoOWLTdsDlp3JAfjiYuQllLM64HutyFUMYrVGgSwVcFO+SbFbWQzPeunVMc/kpi
         VkXyHqUNYf5GOBomJcMh71kbeA78v9VBMcpbbkglQ/SH6KTPCTQVcY98eP4Ba6Z4/1Er
         X/mMPdM81dRgjGIjG3afXnQt1udTYndQa6fBrXIMn5wdmYrrQ69eDFDFXfgE6QQrZBKH
         ePJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734067221; x=1734672021;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xiz6ukFw9DSCPef3k+S6Ii3ZGWR6/g7hmh8hbZiwQWs=;
        b=O1LPyCFpEC10I+EMNc2ujPCK0qZPSCqFBEyZksE8FP1JKw0bRobpaIOa93/9TI5Ljk
         rEybsee7jtX8hhJfuSVPpd3qBM/7SGWmN4x5/eMzWNUcHJITPbGVlT7JHKkBEi95eYs8
         0uB2f6g5wbbOLVe9AlW9ZfcxxKPoyveLUNr+71lizZOHUh+xwBvVp0swS39occet4dAj
         fBwXS/d26Fr/ccF695LDiAwF/qND+mbvE5KG+gOzqNh55fbx8I+H3NXr+gD2Ug7U2O2T
         h4v2D6OLuUL62anzn65IOpzTEVI9t+ciduYVTmnaTU3PXrcqt6o0mXmIlCmQLEKCtAsM
         99ug==
X-Forwarded-Encrypted: i=1; AJvYcCV7TTrOqjdcgBBx1BRHtqeI0D/YImZE1bdi4YH2F6C32polYO/49ZEWHWvsxWFetHtZBJGgshmk2G1B@vger.kernel.org
X-Gm-Message-State: AOJu0YyIFEFXGMTMBm4XmhJMmz1U9PINDqJBsoXUKZ3WBURjz4wgUU2R
	B/YUNZqPVYdbfG5yD2YRerZI0SNGkGcKDTcwK3xSH1bLjPPC7Lg2DzY+E1KUUs0=
X-Gm-Gg: ASbGncszGshP/JPuktUmx++Qu0A/4+OuzSWUlG2ZqVVuVfciwaP3qShrJ8stXrgmJ04
	KQrksJmNkEsOkhUiboiBpI4TaqkVhoV05ktoLu9rWLsn3hRnfg7Gw9v7GAXxRCoR6fo2/hxmJ0q
	Ew2GFiMnuOMysBzlxU3jcXhwwoV8w1xMq71A2rkbTRhK/jhLk1nmZbAh2zOjWFNd38Xf+g1b06M
	RJi8M3k2qjEO6sonhd5osh77JByUCpCeWZQvUP5NSFlcwQqWof5JK9Du1Srhq+m5eVGdAOf5/DK
	gTvv47/khKS37G3gKm7781E9Xv8WMOnin1TR
X-Google-Smtp-Source: AGHT+IHOJupQxEawtaa7cDYeQAk5vSL5tMs4fYXQcgwGIrxsMhJTKZ4dQJrjbPiYB5lxSiGNzIoQyA==
X-Received: by 2002:a2e:a781:0:b0:302:4a4e:67da with SMTP id 38308e7fff4ca-302545b94ddmr3231881fa.36.1734067221232;
        Thu, 12 Dec 2024 21:20:21 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30227d58ca3sm13077291fa.5.2024.12.12.21.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 21:20:19 -0800 (PST)
Date: Fri, 13 Dec 2024 07:20:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Song Xue <quic_songxue@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Enable secondary USB controller
 on QCS615 Ride
Message-ID: <lqscul6yal5mmztup23rcgmyqhfj3vt45rxxsw6ocrnumwfpfe@g3at5zqvtd5u>
References: <20241211-add_usb_host_mode_for_qcs615-v2-0-2c4abdf67635@quicinc.com>
 <20241211-add_usb_host_mode_for_qcs615-v2-2-2c4abdf67635@quicinc.com>
 <cc3edfc6-f53c-401b-b766-f8e560eb24b9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc3edfc6-f53c-401b-b766-f8e560eb24b9@oss.qualcomm.com>

On Thu, Dec 12, 2024 at 07:14:22PM +0100, Konrad Dybcio wrote:
> On 11.12.2024 9:26 AM, Song Xue wrote:
> > From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > 
> > Enable secondary USB controller on QCS615 Ride platform. The secondary
> > USB controller is made "host", as it is a Type-A port.
> > 
> > Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > Co-developed-by: Song Xue <quic_songxue@quicinc.com>
> > Signed-off-by: Song Xue <quic_songxue@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 28 ++++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > index f41319ff47b983d771da52775fa78b4385c4e532..26ce0496d13ccbfea392c6d50d9edcab85fbc653 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > @@ -203,6 +203,15 @@ &gcc {
> >  		 <&sleep_clk>;
> >  };
> >  
> > +&pm8150_gpios {
> > +	usb2_en_state: usb2-en-state {
> > +		pins = "gpio10";
> > +		function = "normal";
> > +		output-high;
> > +		power-source = <0>;
> > +	};
> 
> Does this go to an enable pin of a vreg / switch?
> 
> I think we settled on describing such cases as fixed regulators
> (that are always-on for now) - would you remember, +Dmitry?

You are right. Usually it's a fixed regulator. At least there should be
an explanation for that pin.

> 
> The rest looks good.
> 
> Konrad

-- 
With best wishes
Dmitry

