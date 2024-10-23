Return-Path: <devicetree+bounces-114803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 739B19AD113
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:35:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FDC2283218
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FD41CBEAA;
	Wed, 23 Oct 2024 16:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qW1Va/Up"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537041CACF8
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729701301; cv=none; b=G9tS2Dpowyzp+c+di/BHV/XWTDMYnYCQDJaqCaFICpsnH8xUT+54LsWuyQTjgGR4eYr7heoqY3imHLR8fSiNXVxbwtV44RFc5wEiXFZMkuKojOAGqF3CXKcZtftE93Q735A8c0ofq9xIqqrK7JI/9K6/QfdKs5LkXscQyaqzAzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729701301; c=relaxed/simple;
	bh=XTw9uHyp78RHTyu0gUyLmCgArzYpbhsNyfwgWvettNU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=al4g85nDs18rKQeH2dEsjr6N1huxdTTABKajAGP8Xm9Ifw6+4vBvTqSKE4wfCMqFEX0PevdgXmevtHovGCOL7bLdIgYhnoHjjyz2UluWR5ajJq/WzbbjhaUHIpVLfgorJYJf8cy0o7FBIau43MNz2CX22uU00vTI/l/8gzmMyxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qW1Va/Up; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539f72c913aso8379390e87.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729701297; x=1730306097; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GIlUDXdAKX1CHecIqtZk/0fdttpDeFu8l+DaQfJV4bc=;
        b=qW1Va/Upxar0dClhaYkTpgnEVmPyxQ2dG4MMyJK4AxlsNJu5EXGIgI74G4Zui4GdFB
         Xhq17L/uymWlIUzaWstCTpDBHlcTqeWUttUlZ43vvWykvQUj6euFisJMPhgCKXK3Il9J
         tROzfgWknxbpgiYylsoop7jI7Rhxfa3zsVMFqcy+DXj+ODyeY/PKdT7Om6Kzmy0fjMwN
         HP7gsbDmBM/8nWlcSnwt+PBvkvjs3Pu8uGuiSQi/felwBuqs3cKidgpUZGZUS1QUZKIP
         cOJh6i8R59YJA330rRwnFFtiN/8IJKMMR6SqV018Hxw/M6aqdwMk7vxPK7nfTdKu9Yy0
         QAEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729701297; x=1730306097;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GIlUDXdAKX1CHecIqtZk/0fdttpDeFu8l+DaQfJV4bc=;
        b=JmazFNtx11S8YPbHUfLeBwc/H8RR4kDe5EveRX63UWWenMz31X5a43fuDJ+PkjSEay
         k21BcksZNVj+mLdkmh5nn4ec+thiq70i0efA1eg0i2pTDIxveL4Vs5jeBfJzLGbptsVM
         7fI27Lam7L2jbjNb8JvAeOs+n7Pld6uWujX1HmDApm2jvsJMVJMJwzUQ0/3tFx0e0wl7
         l0I0y8yR3yBkHSyFVvwfwiSRnCLUamo5AWMSv5QEBnGp3pQZyxBozMKUSQUrQsRy2JXM
         jdm6f90XHFOj5xVeFmj3DRby4iJI1iwoULUptpIGAD0K0wtbQd70yiCZQtLBXuiSsRoG
         s8YA==
X-Forwarded-Encrypted: i=1; AJvYcCWIeK2DD50jc2tawdaVzPRH1v+8i7z/dypN5if3cDPuGe1xs0tjziNHm73S2WE1ZoN3a9fHv4GbgRLe@vger.kernel.org
X-Gm-Message-State: AOJu0YzcwUH+/A3HWVRSgwzwB+0keE0xbnOt9QeqtpXifz7L1/HHPXCF
	sktrXc5j7tdJcpH85/gyAKzvct7hqTGqTrD7v59Q2GvDix7g970KxGGEFxl5pzI=
X-Google-Smtp-Source: AGHT+IHCtZVloL02eSDFnoZ/6ygP0dHMAE0674BRC+dYkqpA6GY3yq1KJxmIEB1Drju4efa3nY8wHg==
X-Received: by 2002:a05:6512:108e:b0:539:949a:a793 with SMTP id 2adb3069b0e04-53b1a321d26mr1886084e87.36.1729701297281;
        Wed, 23 Oct 2024 09:34:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22420133sm1097096e87.170.2024.10.23.09.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:34:56 -0700 (PDT)
Date: Wed, 23 Oct 2024 19:34:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, 
	kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: Adds SPMI bus, PMIC and
 peripherals
Message-ID: <e7ntpu6gqrxwueqvyesr4voofpdjz4hrjypyxrstukd4mdln4w@dpyaaw5afn3v>
References: <20241014-adds-spmi-pmic-peripherals-for-qcs615-v1-1-8a3c67d894d8@quicinc.com>
 <p7fw7jjfawbnk2vb7zdtr2dp3ni4g2uuiwvt6o4qva53zyrpvd@kokibgaidfzb>
 <5c23a6bd-e233-4b02-86cf-902d2c57c382@quicinc.com>
 <CAA8EJppdQsGe-R5JKRJ9LJs9xGTdhkCGYc5NyzVSLA1bWvvUwQ@mail.gmail.com>
 <6a73c0d3-879a-412b-9345-e4d5ccb52e78@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a73c0d3-879a-412b-9345-e4d5ccb52e78@quicinc.com>

On Wed, Oct 23, 2024 at 06:25:33PM +0800, Tingguo Cheng wrote:
> 
> 
> On 10/22/2024 5:38 PM, Dmitry Baryshkov wrote:
> > On Tue, 22 Oct 2024 at 11:26, Tingguo Cheng <quic_tingguoc@quicinc.com> wrote:
> > > 
> > > 
> > > 
> > > On 10/14/2024 6:53 PM, Dmitry Baryshkov wrote:
> > > > On Mon, Oct 14, 2024 at 06:08:17PM +0800, Tingguo Cheng wrote:
> > > > > Create a new file qcs615-pmic.dtsi to add on-board PMIC and peripher-
> > > > > als in the PMIC that controlled by SPMI bus. The peripherals include
> > > > > GPIO, RTC, PON, power key and resin-key for QCS615 platform. The power
> > > > > key and volume down key are controlled by PMIC PON hardware on QCS615.
> > > > 
> > > > Why do you need a separate file? Unless there is a good reason such
> > > > configuration should be split between the pmic.dtsi and the board file.
> > > > 
> > > One reason is that I use upstream as
> > > template(x1ee80100,sc8180x,sa8775p...), they all have
> > > platform-pmics.dtsi alongside.
> > > 
> > > On the other hand, qcs615-pmic.dtsi contains only the PMIC's
> > > peripherals, creating a new file can eliminate duplicate code if there
> > > are any other new boards with pmm6155au as their PMIC(similar to
> > > x1e80100-lenovo-xxx/x1e80100-microsoft-xxxx, where "x1e80100-pmics.dtsi"
> > > has been included).
> > 
> > And this is pretty unique  to those platforms and it exists mostly to
> > facilitate the case when a platform has several instances of the same
> > PMIC. In all other cases (mobile, IoT) usually there is just one
> > instance of the particular PMIC. In such a case pmic definitions go to
> > "pmABCDEF.dtsi" to be reused by the platform and then board DT can
> > include that file and wire it up according to the platform needs.
> > 
> Yes, in this case, there is only one PMIC. So making a new file does not
> make sense except the PMIC is totally a new design.
> > > > BTW, what is the PMIC id for pmm6155au? Is it a real PMIC or a version
> > > > of some other PMIC?
> > > > 
> > > pmm6155au is the PMIC id(Silk scree). It's a real PMIC for qcs615.Maybe
> > > I should use the name qcs615-pmics.dtsi instead of qcs6150-pmic.dtsi to
> > > align with other platforms.
> > 
> > Is it the same thing as PM6150? Or is it a combo of PM6150 and PM6150L?
> > 
> I got your point, I did some more research, it's a variant of pm8150. In
> this case, I will upload a new version that makes DT to be changed after it
> includes pm8150.dtsi.

That sounds good, thank you.

> > > > > Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> > 
> 
> -- 
> Thank you & BRs
> Tingguo
> 

-- 
With best wishes
Dmitry

