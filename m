Return-Path: <devicetree+bounces-218419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7DDB7FDE3
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:17:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E496C3BBEEE
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7649932E72A;
	Wed, 17 Sep 2025 14:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jzGEKl2l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD1F32B4AA
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758117758; cv=none; b=VjA6RefEjHQfMPvYk2XpmjTIS31PQPy8xH0H2JRGRHwjtocZ4voQ1T822LgUQJicpktrIDIQLyPxsrwKm01AsTHfMk5QiBvhckmifimWFLTyMRq7FDCE7EZC5S7ifV1FnQKzkDkRx3bxKDGCPwTWb+zqcdsYT584zrHdBFr4bBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758117758; c=relaxed/simple;
	bh=RefTj2LFec46dsJYSPZ8tEBm1+3mD1JsxhEJXrBH8b8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GgaVL9QNghetbOn6Visi9FsnWF9uIelp/zRonXa977UC1sxVYDhQTAVgfvnZAbVOvmOXMkj9zhH9ZyUy68Dnb+20FV0LuyC4h15+eaNfcDt79Y/+qomQVf+30kes1pOtdTv7mmT4lMU1IMQE2cm26+B0B2e9zUC3/4LW+mhLaSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jzGEKl2l; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-62598fcf41aso9440871a12.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 07:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758117754; x=1758722554; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+aI0KZC1S6i6KZFgi+7mCnlg3sWeGuC+L+mdTKqHXWA=;
        b=jzGEKl2ldjQhOOSsKb06Fha6LgYoyLdKgQ3A4Jx6N9aXyL25JkKSdHMv3WQPzK44Jk
         2e2A/q4FWpYAEoco41Qr6Fg/vwnaX2gEb7tp/l5+6uXdPDdptI4Pesl5xHH4cg7APoDM
         xXr7IWGz569kWGi6atos85QR0WvnEdd4S1KRvyYLfeGlvWeUptRQx2C+hTl4q8K2moYJ
         KCrg8a9zN4bbWJ6l03a7dIFkqLljT/+rnYA0N4ceMuPNoy+7K/CiANyoHDZf26G4JbY1
         GpdzsZ05mW2cHfUkf910zsCe55jgTVY5t7IEGWbZmWjdYhFdhCAngArPksI90WX4Wf3q
         np0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758117754; x=1758722554;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+aI0KZC1S6i6KZFgi+7mCnlg3sWeGuC+L+mdTKqHXWA=;
        b=hKuOCkx8ZztsS0OrWnlYOorftjxxdp5H9+oZvo4Nl17Nc4/+qoaxO+WoAdNHFVsxaQ
         QVNsmAz6kyAR5Mfp+07OMNIyGlQHJ7OJscOYsNUfvjSRolNuhK/vYdrfS/EpFylpA4yK
         NwJxjCM63G1uBQjp0sI3YJfuv2E2nGC0wHSxvNRPx2NxAhP4+53VF1qqm72/yjysV3Wb
         57Kg6j3dSKexQK/1XS1kNIFJcmU2itQz9VU9aAuDc+LXKsnQtiJCOdnsST4khP7ZLAxk
         gTZqpmOq1EddWYPxzOtpeQ0OVld7Erwuk+bopuF39RIDnqnlh6VGoLiu5sgMIQCLVugH
         gg2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVNPZNwPXwO8AAAfpNp8QnjPffEOY28bIeLNj525kRyEx8s+MQL2VJAe1d9LmunmdwRNmvf5muTIfxc@vger.kernel.org
X-Gm-Message-State: AOJu0YxwloF6dEp1MvKdFvRpYDrMJLqVL2tV+BQgNpTF9WVYQUa53X6z
	JwEjXg4pzjmgL/wYe5i37CKuTbBUGHWHHdXxRvo8+LL1sHS+OiaR9eGhI0n7OJVBb6k=
X-Gm-Gg: ASbGnct6g6AjmdNOpR6l+rE/pFoDi/n3sVbkgr7a+qinWI+2RI4MFsKllflzV8KwAo7
	9bnX4Trz7c9PSDlJMcLJiPSx39klK0DgS/AhQEHsRCHmbkIpchR6kpbUSIPittvDB6upE2gDMrU
	aaAVqXQHs+WBLLwrQ/V3cy0m72pilw0Vnt7qfKVJPN4RNXNx5qw/AHnFqj9nEXRiJL/MjGlcrVt
	qdivv74/QYlC8jvoWbjKNdXZfR8XgiTQIftkW6nDC2slfV4mKlTTCOuTCXI6Vgk9BH6FsBhGyhw
	mKxwqlAFa9zMuopk9M/zdAYJkKetbKfaLbCPQ8bQI0QycDUcd8l2xgHpR1GQMVv6Ne1r52Og+ut
	/34IAlWEpNb1aKr+jci0nbDsi8d3PbQ==
X-Google-Smtp-Source: AGHT+IG4Gian2+1eYXK+LJPiJ/IOk7YXX7BNAP8tJbijpr4j+Tg2SNRKcI5T/sLwoI+EVC41Iboriw==
X-Received: by 2002:a17:907:9691:b0:b04:3b97:f965 with SMTP id a640c23a62f3a-b1bc1168641mr281451566b.49.1758117754340;
        Wed, 17 Sep 2025 07:02:34 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:96c4:427:30f:64da])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b3347a4fsm1352382866b.103.2025.09.17.07.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 07:02:33 -0700 (PDT)
Date: Wed, 17 Sep 2025 16:02:29 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Paul Sajna <sajattack@postmarketos.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Heidelberg <david@ixit.cz>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org,
	Amir Dahan <system64fumo@protonmail.com>,
	Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v2 11/13] arm64: dts: qcom: sdm845-lg-common: Add
 bootloader-compatible board and MSM IDs
Message-ID: <aMq_dbLRShTVLlc8@linaro.org>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-11-5e16e60263af@postmarketos.org>
 <acb4f8a2-ff08-4a90-a7ad-7b25a7f4b6b0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acb4f8a2-ff08-4a90-a7ad-7b25a7f4b6b0@oss.qualcomm.com>

On Wed, Sep 17, 2025 at 03:55:47PM +0200, Konrad Dybcio wrote:
> On 9/17/25 3:09 AM, Paul Sajna wrote:
> > The original bootloader (fastboot) requires board and MSM IDs in order
> > to boot the kernel, so these have been added. When re-using the same
> > files to chainload U-Boot, these compatibles are also needed to ensure
> > proper booting.
> > 
> > Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 2 ++
> >  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts  | 1 +
> >  2 files changed, 3 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> > index 1baec758c7d881026bf6001a0a305687d7a14b40..a513cd931b3a984443183ee4e8df7b0e45732630 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> > @@ -5,6 +5,7 @@
> >   * Copyright (c) 2022, The Linux Foundation. All rights reserved.
> >   */
> >  
> > +#include <dt-bindings/arm/qcom,ids.h>
> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/leds/common.h>
> >  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> > @@ -29,6 +30,7 @@
> >  
> >  / {
> >  	chassis-type = "handset";
> > +	qcom,msm-id = <QCOM_ID_SDM845 0x20001>;
> >  
> >  	aliases {
> >  		serial0 = &uart9;
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> > index 8c1692f86e6ceea7b718361965e78f95d39373bb..beb1372dc6c17f5f06c2044412ee1c8165858cd1 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> > @@ -12,6 +12,7 @@
> >  / {
> >  	model = "LG G7 ThinQ";
> >  	compatible = "lg,judyln", "qcom,sdm845";
> > +	qcom,board-id = <0x020C0008 0>;
> 
> This is almost QCOM_BOARD_ID(MTP, 12, 0), except for the odd BIT(25)
> which the dt-binding promises should be left unused..
> 
> +Stephan maybe you know more?
> 

I'm not sure what BIT(25) is exactly, but I think you can generally give
up any hope of trying to make sense of the board IDs of large vendors
like LG, Samsung, Motorola etc. It's a pity that Qualcomm has never
created a board ID scheme with enough room for customization for
vendors. The qcom,board-id scheme seems to be entirely focused just
around Qualcomm's own boards (MTP, QRD, SBC etc). That is why we ended
up with every vendor using their own incompatible approach. :-(

Sorry, I wish I had a better explanation. :-)

Stephan

