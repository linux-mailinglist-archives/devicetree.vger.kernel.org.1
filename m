Return-Path: <devicetree+bounces-70932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E718D5034
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 18:54:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 671BB28489C
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80BC93F8FB;
	Thu, 30 May 2024 16:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PM14k4+J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECAF383A5
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 16:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717088066; cv=none; b=uBrSRCy43uvZGiRwIeKwJ82WnW4h2mjuVe36bYpSWf0uhQS6RR0PdL0C/3Tg2GGHYRy1VnPG9DcjYJ6XY2J4NJ9RDgBEEp2FwlxAYbtFN0V0IXclp+hCrFOo2+f054RdSkCyOJmjcrw6Q+3tFMQgMOjFvaxPqak2LAjROvy6Fg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717088066; c=relaxed/simple;
	bh=a8sg9QTyplboNTrKOhv/w/6hif25nD32F5MILHI4K7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NlidjieHaFkSrEh8SIkOzPsmhw7Z2b3G+LYuaYPqcvVtwvQNj/pNi8mltv4e8cejM9zztvOt2S6XqdHzz6u899TXIecj6O+Amxmip3eKI4aT0dG+jS/znyGXMz6mSraIXln3/jm8sRUJIoGBzHvHiMQhZLw9ERo0BTSpXQUm2TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PM14k4+J; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52a6ef5e731so1738660e87.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 09:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717088063; x=1717692863; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n6LNvxkoy0S023YUaZNBzbBMkhCatYAvcuQSRFoBJJs=;
        b=PM14k4+JxqKjRW/qbX1cz2oeTE7cpcQgAqPHroJRLSf98vw1iXqugWlJNShXGeLZlR
         p8nopPOIwg1jrg589hB76TVToeziPtY0S4Qwe+as+AarEo15LYtG57FOXz9geV9iGOuo
         u1S6e3nk7sxm6m75u5sHMof1OwHXVU2WHjn4+gGAbKYq1KuIUFrecwq35Cb2l4LU6oUn
         MpJHLzb3hoIw9qKYF1/mazhH6wpFIcOslfvheEW569WNmuILrQVlT6Ivoz/dh6IsocfI
         gi3sq4FzXr8VlWWzSEl+pE5jJBIlmVAXhHBEdiCLAPFVcJofq1cfYp75QPzCaoqf9rM/
         oGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717088063; x=1717692863;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n6LNvxkoy0S023YUaZNBzbBMkhCatYAvcuQSRFoBJJs=;
        b=wQLcF23Z5YdTkBkqucL4v9sf1Z/Fm+3yrFHMdaWfEQvUMynNrvN8uHv7avJuM53JwT
         lhb/29UDLGqo5wC/wj1/u3wDIJIGAj5u1ZFCyFUy0a9kB9q3FyYOZOna+fA6fYKD3gBn
         +D9AUOg3g6vK9EGxL8qjEkTmlyHMDFpSnBcrQ15rHqV4WNSRe+06j9COwbY2mZGj1M6i
         H/EQODUcSUKxPP/SweXFR7mvoseWvfVZZiPiTrFO+fp3ipAMmYKsQMdwvLvsWHoNJkOU
         R6DHLs8UoLv3LKXvF1AgPp31Ge3VwMKrWYGIxTjPNxC/wznjfAU08Fb6Ng97Mmq4PtXs
         3shg==
X-Forwarded-Encrypted: i=1; AJvYcCUQUYSMrqEB7SHFZ6exEVu4unftP+G15nIRf6V4bJtyZInQJZwXyIExA/w82ZIIY5jhcFSuPy0hpGrW3boqlNENTJICX4WAhN2vFg==
X-Gm-Message-State: AOJu0YxPBkzDzmtKBa1op2K4CXZvCdZ2wPY0OC+DoN78fjXkfYGB2tZw
	Q2ZVpBp3tyGVlTBgh8bz6pvjEy31yWe3U3wSych+vVoXS5ofdHT22q4nEi6RrSs=
X-Google-Smtp-Source: AGHT+IGI11AkAlwOFYsrZqUBEjeKz3Hh9GHzqhIMLLWeSXfJyW604vmdHhKgFSquh5pUmO0QVhFywA==
X-Received: by 2002:ac2:4d0f:0:b0:51c:6c59:627e with SMTP id 2adb3069b0e04-52b7d479c7dmr1718878e87.42.1717088062860;
        Thu, 30 May 2024 09:54:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d75fd6sm14030e87.157.2024.05.30.09.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 09:54:22 -0700 (PDT)
Date: Thu, 30 May 2024 19:54:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alexander Reimelt <alexander.reimelt@posteo.de>
Cc: andersson@kernel.org, petr.vorel@gmail.com, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] arm64: Add basic support for LG H815
Message-ID: <ociudng4ubdmxnzxiwxsvrlstg7fheaq3jxgwcfqih7s35qi43@k247c3x77jrb>
References: <20240403104415.30636-1-alexander.reimelt@posteo.de>
 <20240530135922.23326-1-alexander.reimelt@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240530135922.23326-1-alexander.reimelt@posteo.de>

On Thu, May 30, 2024 at 01:57:40PM +0000, Alexander Reimelt wrote:
> Hello
> 
> Thanks for your time reviewing my first revision.
> Changes:
> - status is now the last property
> - corrected the node order
> - droped bootargs
> - corrected subject prefix
> - removed unused regulators
> 
> Sorry for the delay, I lost access to my device for a while.

Please don't send new versions of the patch as a reply to the previous
iteration. It messes up threading and might result in the patchset being
mishandled or ignored by the tools.

> 
> Best regards
> Alex
> 
> Alexander Reimelt (2):
>   dt-bindings: arm: qcom: Add LG G4 (h815)
>   arm64: dts: qcom: msm8992-lg-h815: Initial support for LG G4 (H815)
> 
>  .../devicetree/bindings/arm/qcom.yaml         |   1 +
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  arch/arm64/boot/dts/qcom/msm8992-lg-h815.dts  | 234 ++++++++++++++++++
>  3 files changed, 236 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/msm8992-lg-h815.dts
> 
> -- 
> 2.45.1
> 

-- 
With best wishes
Dmitry

