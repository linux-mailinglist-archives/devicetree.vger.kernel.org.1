Return-Path: <devicetree+bounces-143647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 34067A2AA85
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:59:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31971188943B
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0A91C6FFF;
	Thu,  6 Feb 2025 13:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OatzRcim"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6CE1624F0
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 13:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738850367; cv=none; b=gZ+nEYHwqb8HohLOHaAMjrTtj9DFpspg2P1v0kaXWDqeQ4NS/Q1Svxvp0mmz2tlmWJWeIIo/5Vqz0AdTjYlTeMkCoEbMd35wn1mH4J4O+KrpRz974yedoOL4sdvwH/2rRpEJ9TwzGvhDdz4H5hkymvkQ2gPQtgYenwvk3bSgKVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738850367; c=relaxed/simple;
	bh=5fteU1gF781gid+8eh5MjlcPKwLt80L36gWbaB+12iI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=utAXuipucARIXlWWU01OE3dOVYMFRYzWUBYEmvPt2EIMwilnpm1KxmV5BY2tGpsGxB0gOClWRIMeO5EU8HMYDvmjRWoSpnZeiTbsKxsgml+TgePmxClazgD5wT0crOAljYqdjFMa3tjnSB+BkmbYD6xVGpRgJjHtXI5SA4LD758=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OatzRcim; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso6606965e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 05:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738850363; x=1739455163; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yiwqOK4FVjPPZWydFoWK7z8lcOGoGBb2vdMSdzrBdU8=;
        b=OatzRcimDGdLls//YoBjw+3AT/P3yBXg7j2nABbUhb30Ny3IIz4uvLLrJlAXxgygnY
         z7Ubvhwe4C7+G9jvIONILzFbZolANH3Y5Q5EVzs8qjngkq0eh5NUrEP2oY3SrBC0QBgd
         Ew5jqfHp6fHDS/oiXdjVdeYYOh4fnIwInMSrmaSM9PIwMSTYD7XyB3FC+LSnzgVkkD7f
         HL5SVa2N3UKZNT8cSD/g8RN40OMJK9sJD2B5lLgBGjjWTjyNTvFHUmuZV/6GuEP8/Mip
         cbVf3v8BZ3ZYOgac8af/oWZytR/seG0REYDeFMGgVe1ICBN8BjcILU40nA9rAUsRXBfM
         ggug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738850363; x=1739455163;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yiwqOK4FVjPPZWydFoWK7z8lcOGoGBb2vdMSdzrBdU8=;
        b=HHBmbRneISRwHLHCCMLejGNXXWiUYC1mVLPPjch2kzsLzkgl4orhtXLemVHfl7nwTG
         eC0eDuZF70/7f5VB16GnwhhJW1uw5FJmf6a/FiKvatvYqcR6b6OP5UA2a2B22A2EA4HZ
         MTlsysPXhIGnlYDRDIgyERnlOSLEHp5sraRQLbkiqvnBY+84slkMApka0bUPZaCVUUb0
         XsRfHQNfbD0ckARV7L3Td0d8RQ7xJx1plQB5oZVvMsw9+FdhucKcYdidtNX85IIM23AT
         rV4bzwq/USewP8lsvexXzYwvp53lAYXPvCYJrm/ZXaYqVSzI5qfe51Y76FHfefCkUPxi
         wW4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUy9MQrviBrCYDy2xFgYD6BGgEE3SCrPDNu4x4k+0AKMdPj75k/4101uiYYP3Z64rJNqu8madX6M7sB@vger.kernel.org
X-Gm-Message-State: AOJu0YyMfY295Sz1JaTIl679xjpZkURJ9IaQfJDsClM5W6MXiiA02TSi
	G1pty2BSD7SJRgy/iPuMAUSqcg0U7UvnIFFAKS88hqv2qDxJZbqqZyWp6ssz6TQ=
X-Gm-Gg: ASbGncvhTyS+DVXyuy6sLsdpJqDxWguW3A4g/8eOBfHTFYJt/KAuYryWXamMA9el8OO
	NNrBTEOyeeof2tm+6x72MVvhlXS93FCN1Q+YKkoxzW1a67NUoKnM4Ke3s4PB7w1ab+T+Que3YXl
	L3hREm2nLQAM0ggXewVQ6BEgVd1MPTJYA2mmh7FSmqV9FdgMiPNCK+DlxMwSPqx5rLUJH3necf6
	2zbHb6qnikz/wlCQfb8PfVSNWdxB3wmos0HXfiUWn4NW+RqyR3mhH1tL7iw/fr5rwYRDCFlC56h
	Y5NYu5IyRbjHzQ==
X-Google-Smtp-Source: AGHT+IEQ/bjSZV+56yIOq5wwNb3seJyTMrV6PD6QY8xe23aPssG7mgZFZVTL2HkADa9VSfJyXBrBsw==
X-Received: by 2002:a05:600c:4f8e:b0:438:ad4d:cf01 with SMTP id 5b1f17b1804b1-4390d433b21mr58938875e9.7.1738850362808;
        Thu, 06 Feb 2025 05:59:22 -0800 (PST)
Received: from linaro.org ([86.123.96.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391da965a6sm20583685e9.6.2025.02.06.05.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 05:59:22 -0800 (PST)
Date: Thu, 6 Feb 2025 15:59:21 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add the watchdog device
Message-ID: <Z6TAOPhYpl2M+SZc@linaro.org>
References: <20250206-x1e80100-add-watchdog-v1-1-77147510c2d7@linaro.org>
 <Z6SSgmoUPFv3vDDY@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6SSgmoUPFv3vDDY@hovoldconsulting.com>

On 25-02-06 11:44:18, Johan Hovold wrote:
> On Thu, Feb 06, 2025 at 12:37:13PM +0200, Abel Vesa wrote:
> > From: Rajendra Nayak <quic_rjendra@quicinc.com>
> > 
> > The X Elite implements Server Base System Architecture (SBSA) specification
> > compliant generic watchdog.
> > 
> > Describe it.
> > 
> > Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > index 9d38436763432892ceef95daf0335d4cf446357c..007815699e4b9137c3b5cf72263c9dd3a64e6bb3 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > @@ -3708,6 +3708,13 @@ pcie4_phy: phy@1c0e000 {
> >  			status = "disabled";
> >  		};
> >  
> > +		watchdog@1c840000 {
> 
> Please keep the nodes sorted by unit address. Looks like this ones goes
> much further down.

Oups. Yes, you are right. Will move and respin.

> 
> > +			compatible = "arm,sbsa-gwdt";
> > +			reg = <0 0x1c840000 0 0x1000>,
> > +			      <0 0x1c850000 0 0x1000>;
> > +			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
> > +		};
> > +
> >  		tcsr_mutex: hwlock@1f40000 {
> >  			compatible = "qcom,tcsr-mutex";
> >  			reg = <0 0x01f40000 0 0x20000>;
> 
> Johan

Thanks for reviewing,

Abel

