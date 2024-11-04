Return-Path: <devicetree+bounces-118668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0799BB31E
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:25:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 675A4B2696E
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4511C7269;
	Mon,  4 Nov 2024 11:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V0bS7kYi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887781C4A25
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 11:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730718769; cv=none; b=UClX3pLDlShy8ODSWEqMoMVkEj8Jr6RLoPcUHnDwoKt9buRBWEk+UXgEQDa29mA/DllSqR5zz6DDH9ttTZAa0VWEXMht3++sjJpkD7lWb2BeUp846Tj4wOAULhSC8+mM+J8P3xgWLzO8ZQofKzvZRUACfM5nA/TFQDsGfbwDlfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730718769; c=relaxed/simple;
	bh=gs6t6Eyxm98dLeq+rr3RAZbz+zQJFNGOTTWK4uTfMFc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DBZQKZEdNPH5Pr8jSHA4e7UNJI3Cj3OyMPbR3DANlfCfYEpP0usEwY/xdWO8DUG7Uumgel/5cIpvffj0jWs8lqkE2+MrMweO0xmG13RugbXUUFS0CMI5lkYyUQRfpIe7WzkRseufOIUyN72MeAsbWQwPy97wRWggIGqvyQoBdrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V0bS7kYi; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539e59dadebso4756770e87.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 03:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730718766; x=1731323566; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EAOjh0XmDxTvZHf6jM5CouCO0muUY1p/Q5Sn/b27kuY=;
        b=V0bS7kYisLOLX9F+yBtVlE7BZrJcJ7Bhj3KCJx/i5M6zf/4Cpt3alIwX2rJ014ZoGE
         TfsAnL0LvLDtT31EykZkwMe7lX8RlofC6yCa9OeqNyiHGr18zDiItYyuq/11t0k6HlHr
         jFfB7BcEfdbQeutPHuVc9hTzoOh9E8sm9pC2N8o3QD/lWwAt68Mtw97hJFBPNm2XJvzw
         1fCrs2CJYWWz9qRrKMkGrxisxAI+VGR+GoFjAYG0iLHNNPzIUB2GvsVvH8sRo8Wl6lCa
         krQMXDqf5DzD/09thVMp1/1kmpk1BwrFHCSvR6UZK/Q0AEN6HujoYT36I78vMEgN0SQp
         7K0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730718766; x=1731323566;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EAOjh0XmDxTvZHf6jM5CouCO0muUY1p/Q5Sn/b27kuY=;
        b=udMvjEZugvfMhyQqreMYZp7GeDJqDNA8BrgaXga9YD+vCfwaqO2bik9pV7mkqwzmWY
         FzCmycFPIw+vPl7mV/rNMU8o9aZQDh7bi/fktHRq+FedZSrQ+so+x9oJv8OTH9weQHXB
         91y4oqMzlKiEmt9owccs5O8qM70tNGzu+fEqEqoV9JDAESmUo/F1Ogn1vtF3YWTlJ8Ks
         ilXlK4ZNF5GO/x3HDm1Ib59b+28Z8X4y3KabejkI2Yyq92ES0sLgeFXpe0UWMUOgQ5+n
         dUjWAST1p6fATVMnm7cuIJxqot9Q+k0NHijCzy9nRQXFxuCv4vu4q9C8aHdusdPNv8WL
         Xu1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUoyOf+9yrwV0e+JFfuZ+4WA5u+OSDEIsN0s6kgtzkYVGKbqGR8BnFpiMf4hopEPyrhSzx/gawF8xd7@vger.kernel.org
X-Gm-Message-State: AOJu0YwMzXfX/CgrBaVY+I91UgQZEXCmZmUwXrk/uJE3ZJw+KUtGNfZl
	+30GoGMEQ+UEBSo5bP97rBtW8YNWBPzaV7vzHsoKGSofNobivxsJV1rGMgCN3lBFvuVvEE7fgNm
	gv0o=
X-Google-Smtp-Source: AGHT+IFERsmNqkBWoMxQMqVbgM8msMLn9Gwm+rxaCEVGy4NhlS9KxmbTI5MDNM4EpBz5eSZ7MN6Z/A==
X-Received: by 2002:a05:6512:3e14:b0:539:8ad5:5093 with SMTP id 2adb3069b0e04-53b34a1943amr12925158e87.35.1730718765058;
        Mon, 04 Nov 2024 03:12:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bcce5c8sm1644055e87.141.2024.11.04.03.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 03:12:43 -0800 (PST)
Date: Mon, 4 Nov 2024 13:12:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Lijuan Gao <quic_lijuang@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: add base QCS615 RIDE
Message-ID: <27d2gjvgr7ajaf6ouk5maxhp5cms6c5z2wmybfpbqytet3lva2@4lu64yki4hyc>
References: <20241104-add_initial_support_for_qcs615-v5-0-9dde8d7b80b0@quicinc.com>
 <20241104-add_initial_support_for_qcs615-v5-4-9dde8d7b80b0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241104-add_initial_support_for_qcs615-v5-4-9dde8d7b80b0@quicinc.com>

On Mon, Nov 04, 2024 at 05:10:11PM +0800, Lijuan Gao wrote:
> Add initial support for Qualcomm QCS615 RIDE board and enable
> the QCS615 RIDE board to shell with uart console.
> 
> Written with help from Tingguo Cheng (added regulator nodes).
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |   1 +
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 219 +++++++++++++++++++++++++++++++
>  2 files changed, 220 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

