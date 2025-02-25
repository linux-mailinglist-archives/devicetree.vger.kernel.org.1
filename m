Return-Path: <devicetree+bounces-150907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CD9A43E5A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:55:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 278B23AB0A8
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC3DE267738;
	Tue, 25 Feb 2025 11:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fhhx23vt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35C719C54F
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740484329; cv=none; b=XFK/P84K4HPc8ijYwwQW+PJexxaRmtdcHNWMSCaT9V2D97oHA8aBjiHtk2qUUs8tw6Fo/Dn9G5CmXqBR2vEmqLqimZlid7pAjmvhrohw+bJcHnHBj4rrUiQaD8wqgSQpL6wnB4xiOPBhdbn+8IR+HmLm/nacQTA3NuNVS1Hq1AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740484329; c=relaxed/simple;
	bh=06Py7aJp14BHUIJAvzvlfHnZrSajm4jMw3RXc7l2ukA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZD7KNnxcrtibn6R1Td949XpGK8kkzT2ktlui1nzWjh3f5EdY8p5WLIfm8pf4IgZI9UsNgz3HbyQXp4qtcf4iKlZepUmM/yUBvAGr+A6ejWBU67QF6+WqqeSO9B0s+GlP8sp+7uvXX+8PSSxa/oO0BOKQNU3Tln9hsGqpLmPX9mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fhhx23vt; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54622e97753so5045836e87.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740484326; x=1741089126; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3wS9tak0NaNpAhLlFW6uyty61j0I79uv4Vz/GWJtmTk=;
        b=Fhhx23vtDyhPWmr52coCHVGH3HTuXpIT+JMJoX+OyQ5JSQIqiLiGO5Ix+5otyrU9c4
         R7kUTZ3HMznaOxWFuV3TUSXLHi8T5YVAm8mLz4aVEAwcapnLwZySY9wTbmHc3M8gZXAL
         qnA/S4uFMWTii4KQayzWa0BXkVOzkx+ACKFJUyOR8fxUqvRU0VhrghE32Jod1YlL/MI2
         BAXG4wssYVUL2DetcQ0eVbnU2XhdW3kzWywWEiB3nVr2AyEnM699J8s8PNhdrHbPCjBa
         4LHAQZbHPrq12e1AdKRGqNUXmh+OXUCIn0MnoMzpS3V435udP07OXuhL4D0L1NegVeKA
         DH+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740484326; x=1741089126;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3wS9tak0NaNpAhLlFW6uyty61j0I79uv4Vz/GWJtmTk=;
        b=umT81aD/C5+tp5blRICAx+mfQvytjVdYQ5g2/OOQPqgSmrZsCT1NJD3uJSY1CkKRFC
         uCHEDClMcdMKGhUdMDwgyqgDf8IZAxhFxzBbdjJTiwpUmJlJw2hSYAQ+kdintmdJ8yT5
         UYl3yd36a87qIhGZH8CIVUbz05wnLMuoiC/uvYE4qH8Y3T7olY4OUyNPRQEhYJjimIh2
         CaxpjQ22ZtqHozAA5lfMS9PmSEAH8aPJv6Yihju7jHSPvv5Woa1LTLYVTycZTDNuCgxR
         pVB995OSq6xJ7I9y8093JS+5r9ow5wpa69TGVdrlZRfgAKSMf3RoKPwS8l5pkRoglUsI
         O+lQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0FwppZtzgISNslgf2Yq6OJupYHONDYSCWWmvGnSIQyrNsZYBZbetI+uAAZhPe8+AobvdFmCeXGsfH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/pif0S2q519nQD/DHzt2/C1fdq+Xc9m/vP2J8cz7+XI5/ugnu
	iXClIPZkmnFelSHsj0C9vVetZ9OR1XrElvSyi87WI6J4VJvDkvHKmIms6G5RJkc=
X-Gm-Gg: ASbGncsNBY59TibjiB/SR29nTLJoWhN7zkErmmFaLa/ZCgTrXJL12uTpBwIV+z77hM+
	N6JxFBCJYCLny2e8P6D1hNHRtPxWu+7ybst+8F5GEyBKUN0qAjAonbEdNXr+AaWOkY0/Q9Pb4bm
	SX2GLWU9mHB4gmc2BlmZPEG4q4DiV/hBi3z0oknNu+ZkEBWjsS7KwK4JvHQZOiev3p3SEgE6WHo
	1JW7Rihtpqx/gLe+6ITokI7dkgTiLAzF1mglgPzRIb4ksRxXGlrOtWT3Dh2cSB3JWCMHRJpAz4r
	YNMligWtP2YxjgfzsGFVWUJEQG0pAxOrDM9PXOF2S3eT7Z2I/YPOuQLU8qlUWPKytsSGYYXiUTp
	06udW2w==
X-Google-Smtp-Source: AGHT+IHaCOYYY1hFZ2o6pI3+gD73kquLWGQBBvEHfmt0Roiv69QaC0Cnq2VStk0d5J4mPbpT0ertdw==
X-Received: by 2002:a05:6512:e88:b0:545:457:e588 with SMTP id 2adb3069b0e04-54838c5e762mr6148340e87.10.1740484325931;
        Tue, 25 Feb 2025 03:52:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514fa1d7sm151829e87.238.2025.02.25.03.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 03:52:04 -0800 (PST)
Date: Tue, 25 Feb 2025 13:52:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	chaitanya chundru <quic_krichai@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Jingoo Han <jingoohan1@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com, 
	amitk@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com
Subject: Re: [PATCH v4 10/10] arm64: dts: qcom: sc7280: Add 'global'
 interrupt to the PCIe RC nodes
Message-ID: <kkqydwutpaxzj6beqbdkmjanpzvvloqc3csm4ze2phoibmvmoy@asxc2ffipkgj>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-10-e08633a7bdf8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225-qps615_v4_1-v4-10-e08633a7bdf8@oss.qualcomm.com>

On Tue, Feb 25, 2025 at 03:04:07PM +0530, Krishna Chaitanya Chundru wrote:
> Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
> to the host CPUs. This interrupt can be used by the device driver to
> identify events such as PCIe link specific events, safety events, etc...
> 
> Hence, add it to the PCIe RC node along with the existing MSI interrupts.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

