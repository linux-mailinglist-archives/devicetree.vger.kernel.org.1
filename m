Return-Path: <devicetree+bounces-150669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E69CA4337E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 04:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FC371893107
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 03:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF21245027;
	Tue, 25 Feb 2025 03:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sH69G2Vd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5558E146A69
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740453467; cv=none; b=aLQoDhd1BAQtSeCs6/nJp8xkoQCl30t7Zpc3WUCsDjj8mqryksKkFJEa0UPg/2ebXJoffSePz6rnoDMTaOD60PHdqKSDor0qxxGyP1wFxHGuSrwi6PqSrFRhv7q07OTDghPFxFelJ9ex7VDuGG4Wb+b+CaXMNScDpUyp5T8NW3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740453467; c=relaxed/simple;
	bh=tbCy+DgoiEqp7P0KYIuTrwCALW4WbEtXM2gHBfT/4WE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cgkWLP/4WvbJUKEFPqAHYquGkV7RGYRlyqLriUGBIIXKd5y0TnPgCiNNGe7LSckVLNovaBtfm3gLgVreaJhavv1qRAy8VFWTCrYQcE0Gck+w6zCgJ38/b0cMjGl46k/bGzFXdS96/baNYTzJLR6UZPPR1z3c+cuwtAUmz9woZzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sH69G2Vd; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5461a485a72so4958473e87.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 19:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740453463; x=1741058263; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q8Rx6B8ENt8mk1zd17zD1gzF1s2RlMqc2vCUueRva0w=;
        b=sH69G2VdlqLiGIFCFR3nAQ+um7Pz52pf5q3zAYcHfmf8s4vu6+T0ATnUwLXIX7lsYd
         jjl/itK4fIxqlfAaT7QeZSNpF7++5qGmFgLyVm16byAmmKvFJjJsfp9is3KkkUuBSY4b
         awJyHpLXzDhDIXIfrtMnBRm2m/gWPeb4ssx80sX5RJfVCUJbNqjTYnLqo9IRJJxQjAuz
         uLibC6AoDxu8XT9nlnqz5wCIWE3AZSPsGu6jsLI4NeHZzziEVvWiSc70HBucHh4af3Kg
         jKE9N9qTkkjbFSRQ4LT9V3neQ9lh1bDpzRh9EygiSpwLIl6I0Ga0W9a2NvbqAPtWLS4o
         deLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740453463; x=1741058263;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q8Rx6B8ENt8mk1zd17zD1gzF1s2RlMqc2vCUueRva0w=;
        b=Em9MRe5+a62hr+NhpiJ3IAvU79SCLN/WG5dmdjtv2iUeBC95nuxv0bwYeu480tpJ35
         bNiTkZfX9eMEYatA50p71qluzICJhAzo/PIJKz4+8gSsLEJe6tyEIvDtKtNx6eu3hlbE
         kvPV0ENe9Emt0p4dhG+RGmizoTXFl1cSqPMU2xZAc8NujpuGHwm9tZN3Rj7Pu/8Pafkq
         PKaBa2Tu73JaXNy+CaLFLMorq17K5ejceZddAvV20iXtVP+3rHWQ3/Vhz3lYXqvJF2aN
         tJo+1npGQao5NvrBYHqkQH7sPHs91bSE3e0d/QEmiQboLnqDHsNZItF255HS6Hx8uB/u
         DWyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRsIMslviOBBitHUrKKgPNLBBixRoE1ArDBaZXaiWxh+9by4oA3a0CA4RjbBAaEGrdGGGYtyQKtjVg@vger.kernel.org
X-Gm-Message-State: AOJu0YzkWyTz8S4Ugk3EDOP2lUgi+V5jv5x0XHzyG9L38aqsX/LQcsQy
	Edv+hHw/Xn2bV+HEmJW7hzKm1F1uvGXvkR99LOb/JC79tSu2BEeSl/oY13ZDIPI=
X-Gm-Gg: ASbGncsg7WwekQ5IyfNhqSFcnw4U7jFyWBFnTz62l0FgAbU9ir0dJAWT+PC1uOiDU5Y
	etf+8kWtSnSSVwx+77cROdbaWukQsgMVXTg9d5Tm6Iv5DG3wId+0xoPozyvh6aCiswCzGaD2lz3
	jqsDgbLGr5YZcH/F2hqoOfCe630gYj9l+QpeeR433GA7Z3zY4IBSLJbz9rPJz+joL7xTWI92waY
	pbLB8PAxqZROGoPXJ82z+gKrotMi68r0Ntml/fJ2JIpPJdPKA/7Bk3r6bHkfCqFy+O1apdisHGW
	ySES2RD5Iei91nuaJn9sWdOFNcm8QIwzuzMGwkP2bLd97ThTe+CPVrN6s9h1buHjaCKJ2WcQUq4
	zANK4DQ==
X-Google-Smtp-Source: AGHT+IFC1G+Qt1OfzDp64XzP6VaS1qBh0uBCplEpmO2VczKHd5eRQaq8KvOqpCDlmmDiv/XhQqWkzg==
X-Received: by 2002:a05:6512:108f:b0:545:27af:f2e4 with SMTP id 2adb3069b0e04-54838ee8c9fmr6726358e87.18.1740453463391;
        Mon, 24 Feb 2025 19:17:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514b25d0sm62961e87.32.2025.02.24.19.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 19:17:41 -0800 (PST)
Date: Tue, 25 Feb 2025 05:17:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sdm632-fairphone-fp3: Enable modem
Message-ID: <osoaqtrqtm3s4lksqmlsimyjsbcgozfo7gzjfmxntdm5mvekch@5hhumagio6ks>
References: <20250222-fp3-remoteprocs-firmware-v1-0-237ed21c334a@lucaweiss.eu>
 <20250222-fp3-remoteprocs-firmware-v1-4-237ed21c334a@lucaweiss.eu>
 <bz3mola5r7v4rs4esmhiticq2ahpkhtwxqnv6nweyfkebszvrp@ap6yn6pvrtww>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bz3mola5r7v4rs4esmhiticq2ahpkhtwxqnv6nweyfkebszvrp@ap6yn6pvrtww>

On Mon, Feb 24, 2025 at 02:18:55AM +0200, Dmitry Baryshkov wrote:
> On Sat, Feb 22, 2025 at 02:00:50PM +0100, Luca Weiss wrote:
> > Add the necessary supplies and set an appropriete firmware-name for the
> 
> Nit: appropriate
> 
> > modem and enable it.
> > 
> > Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> > ---
> >  arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts b/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
> > index 5611209dbfa41d7834af7903535ed3e05604ba63..31ed26c31e6ea381a8942ccf569513df3300cdeb 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
> > +++ b/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
> > @@ -87,6 +87,14 @@ &lpass {
> >  	status = "okay";
> >  };
> >  
> > +&mpss {
> > +	firmware-name = "qcom/msm8953/fairphone/fp3/mba.mbn",
> > +			"qcom/msm8953/fairphone/fp3/modem.mbn";
> 
> THe comment from the previous patch applies.
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

