Return-Path: <devicetree+bounces-126640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 249FE9E2493
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 16:50:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A84B8BA29B3
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0400E1FBEA5;
	Tue,  3 Dec 2024 15:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TTNZgXCU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB7C1FBC9F
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 15:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733238691; cv=none; b=QciCSIzm1Z9rt2eGHoD8nJMQVKTBCgJTQ7+2E0rSfmGXk4cUGVQ8viNSXKk3/6Mt3noiRo00twq+5nKy/A//sh2H9oufHxBhgzlezuPU+sBoa3Zc6IY8zCQJywtofa/mbbtmMH/HOPKfb2+q/wsdP+kJDBWAv6aiReH03lrk604=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733238691; c=relaxed/simple;
	bh=Uei6j24yL3vgxy4vncTGsY2siuJb0kM1VOXijaR88jw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D+aXlBLzlhG1CeUArKYGGPEmlVzOYLd7yhWDQLWZn0bxDUpkRwHA2aRM0UXM+eYoKE7f5FjRe3L7Z0Mok7wOPEO1CVlBk9RW3Hjvze/m/BY4OoUCuLM6Z/0JR6bd1uOaYyBTPFr2ed1rHHbMxgsrcWX5lx6Po7lzOzWEXf6KqYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TTNZgXCU; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-434a14d6bf4so50974545e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 07:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733238687; x=1733843487; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zREpKid1FijkM8w3fvUJYYcepCZqPc1/enXnI+QFhQI=;
        b=TTNZgXCU8vVl158hgBSDkr+Zx0cG0tZLufC86xognLJ6Os3DvGbcuG4ssB2k14dKOv
         l4yUZDM6ysHGjQNU5QPfapoDS07SEnjfz364PZyazpVkxUtfJLJh1heBO9UcmWMUVNdf
         dBKB92KSnfVJiWQXDgOTSEc7VFmrF2KiJ21wh7yQTAhr+ReXLBTksV2Jl9l1JJSC20+h
         4ZBxnZIA1LSaKiK/nTEF/sCjoLEMpgzNfbKiDr61GPfiWssx8EW/zy4aSy3Q+kN8P7aA
         rr2FmXe1Wl0YLiI6D1smAnXDypdol8MCbuS9ZaUzsvxt0FlG+8AkYDHJcTasoCVZeOAW
         nusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733238687; x=1733843487;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zREpKid1FijkM8w3fvUJYYcepCZqPc1/enXnI+QFhQI=;
        b=xPhlDkmEpB9HoUFP7v9C9Qz4yzHjxBaiClxwQO5w3KcZj/dJFyIJDLNIqgrSzelU84
         VoXvXgRXJynhNhS4CkMxcDB+03W5iJr5dTXjMH8O1O6ylW9mvJE7kU18/DsV8llNnk43
         F7jDpK+VqBMDwR2oMcLGInzJkfVQ0hvpxr0Fr7A0DxoCUuwoAjC5FcHRL/PDvHY/Ld2G
         ifsQk6cEtA1s8p5XppfrQd0Pneo7cj1Fn6geu4HrfOBhVM/P26wCT+ESCkiUpK+9GHLu
         1Tj6N39hvH9k/tfO4kMF8niTVjdBbfsU/N2y2NwK0/3h+tUCvN9k3v87vepAlxBg56+B
         aLqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXktSUw9KpgtnEp65+4PnskMon4C2YuBZ/ijUqRLMuCHYX06XHr5sNsQrZhOjD5V1MHfUL8NNUGHVgp@vger.kernel.org
X-Gm-Message-State: AOJu0YxRgbMfJ6ssoasQop6CwmoR2iHDUCkE56UvDO7SdDF0VUpwuRNQ
	x8C6aXv6b3Lsrv47gv5uF+bjcHhoFGXCrxFx5skm0E4Ih8vFAgnYgG8MsKETxl0=
X-Gm-Gg: ASbGncv0WS+Eq4pRMenGU2SzsF1DgoiXeJNUeOGMiNLyyDtR69+GHtuC7eQX7t6wQGm
	LUTUlLcbi8gcE8unwEKGLHqbVl7M7QEGJyKz7CIbvjPSmGlRmWxR2of+2XBmE+j5XHQQCnYAjrS
	ggFWWWlntjI5hTfrxAcY4nrlwv0BQqO6XYy7Z6ChfS+VcVzULuWk0ou7uJw9NPOOvx+C8jqkqRS
	BClAQvcA2HU6EnwzKD1i2lQ0qhUnVW85Joxwp1L4gc72SefXsyKlZbJwYUQjQ==
X-Google-Smtp-Source: AGHT+IHpG+YYkt5XvDCdFdtRCKt3GJs9wG1S7RmUFMFyXfoO+hh7Lfjm2kqMdLvybUfLqLTQRDejCw==
X-Received: by 2002:a05:600c:3ca7:b0:431:12a8:7f1a with SMTP id 5b1f17b1804b1-434d09c12bfmr28153625e9.16.1733238687261;
        Tue, 03 Dec 2024 07:11:27 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef80:41ad:5703:2486:8f59])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b0dc99b3sm191481505e9.24.2024.12.03.07.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 07:11:26 -0800 (PST)
Date: Tue, 3 Dec 2024 16:11:22 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krishna Kurapati <quic_kriskura@quicinc.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-usb@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: Add USB multiport
 fingerprint readery
Message-ID: <Z08fmvBEh6dYQimN@linaro.org>
References: <20241118-x1e80100-crd-fp-v1-0-ec6b553a2e53@linaro.org>
 <20241118-x1e80100-crd-fp-v1-1-ec6b553a2e53@linaro.org>
 <Z07bgH5vVk44zuEH@hovoldconsulting.com>
 <Z07r3Upr50vLluyn@linaro.org>
 <Z07zeVJU3Y1GiSLL@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z07zeVJU3Y1GiSLL@linaro.org>

+Cc Dmitry

On Tue, Dec 03, 2024 at 02:03:05PM +0200, Abel Vesa wrote:
> On 24-12-03 12:30:37, Stephan Gerhold wrote:
> > On Tue, Dec 03, 2024 at 11:20:48AM +0100, Johan Hovold wrote:
> > > [ +CC: Krishna, Thinh and the USB list ]
> > > 
> > > On Mon, Nov 18, 2024 at 11:34:29AM +0100, Stephan Gerhold wrote:
> > > > The X1E80100 CRD has a Goodix fingerprint reader connected to the USB
> > > > multiport controller on eUSB6. All other ports (including USB super-speed
> > > > pins) are unused.
> > > > 
> > > > Set it up in the device tree together with the NXP PTN3222 repeater.
> > > > 
> > > > Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 48 +++++++++++++++++++++++++++++++
> > > >  1 file changed, 48 insertions(+)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > > > index 39f9d9cdc10d..44942931c18f 100644
> > > > --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > > > @@ -735,6 +735,26 @@ keyboard@3a {
> > > >  	};
> > > >  };
> > > >  
> > > > +&i2c5 {
> > > > +	clock-frequency = <400000>;
> > > > +
> > > > +	status = "okay";
> > > > +
> > > > +	eusb6_repeater: redriver@4f {
> > > > +		compatible = "nxp,ptn3222";
> > > > +		reg = <0x4f>;
> > > 
> > > The driver does not currently check that there's actually anything at
> > > this address. Did you verify that this is the correct address? 
> > > 
> > > (Abel is adding a check to the driver as we speak to catch any such
> > > mistakes going forward).
> > > 
> > 
> > Yes, I verified this using
> > https://git.codelinaro.org/stephan.gerhold/linux/-/commit/45d5add498612387f88270ca944ee16e2236fddd
> > 
> > (I sent this to Abel back then, so I'm surprised he didn't run that :-))
> 
> I don't remember seeing this commit back then. Maybe I didn't look
> careful enough. Sorry.
> 
> Since you already did the work, can you send that on the list?
> 

Sure, no problem. What exactly do we want for upstream?

My patch above isn't ideal, because it checks the CHIP_ID on every PHY
power up. But briefly powering up the PHY during probe() just for
reading the CHIP_ID is also a bit weird. Not sure what the best approach
here is.

Thanks,
Stephan

