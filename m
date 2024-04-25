Return-Path: <devicetree+bounces-62557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E66BD8B1A4A
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 07:21:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24A4D1C2131C
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 05:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5BC03BB48;
	Thu, 25 Apr 2024 05:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="suBrA2gp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116743A29C
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 05:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714022485; cv=none; b=pdORiBnsYt/XyZglGBkEdFoODRJITILq3M6iU8YXIhEpg4mIIf4+PyxYzEiAjKIyRv2mPQ862oPOnkGRD/WhFrO6FNcO+svRLXbvytJk6Ep7qK8I/2jMDBVKSIgJhXnsze85U4j1X8TfSskCRl/O+kbN/1/BRFMASb5yg9Fyhew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714022485; c=relaxed/simple;
	bh=a/Ze0XaYIX82SEU6e5VyR23SvkdBDxsyR/DAhqj7Vy8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KpKfxxntHjhT1RWCphj9EsQglNB79rVjfsGCDbcB2gpQOz+LJikGEIKkuupLWJ3nVap6z7RlXYWJh20OjE6IcHbg7EeBPL2mSWsICF3rROLes3oxiXDesCx2D/napJDgPBWjYLjPlV7L0I17jykSydyItanzx8h5HXtw0FrZkPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=suBrA2gp; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1e65b29f703so4955715ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 22:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714022482; x=1714627282; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hfPEYMjCse3hc+5i+GB80yGJpW4zA31MSrCQZzYF+HI=;
        b=suBrA2gpIFGxodgAuFQ4enXYFu7G9fw3HJ7UoGyB/1Ookm28P/aKzT2EBkKtuIR430
         MAXu9v4OAcrB1jhGKMFvIwCMELhYoSrY3z/efn76hDp4DxdCI5mKPJ0wSoRvqgYEJKLp
         Tr5urlQyDSL0ehhlRZ4FQmQDwckU+D9B6eKY0IHDyHjBNTQ9tCpOXhz1CuAp+evCbMHg
         mhhWpwZSjloAdcyfxCKNH2AtEIuLncaAqHGsb/XrPwl2QpYWdFQMCoKq7UovARpDnjyg
         f4KqSeZgj0ANm0tOcKhe2gqZshWgD9rHmFSdLqRaeVFMu2VpfHYKWTClLBVzmNbsl8nb
         kpxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714022482; x=1714627282;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hfPEYMjCse3hc+5i+GB80yGJpW4zA31MSrCQZzYF+HI=;
        b=BQPUC2kaD5Sh5UEloa+elWui6nim+xOxBbZ6YI/QtQhNtkDF3CwCKXNlkeck7iGCfI
         rtGuSJlK0aKtUAWjfO+AgaaHI6c63S9FYQ6qvh3wuk+bedp01uLoSvqFUhJdIVwIrJGu
         MopdFVnfs0kG2aqEYLPAhgv70G0FdMboxTvN6OksbVMmOGofA9cV7l/60FLlIXsROiDQ
         Yaqxomi6NZayTVb8E8VttmF490Y+4vnrTD24KF5LVONOKgC7MzFYFvRGjPAyX+QSUO/f
         zEIq0mD5ZHccZQY4RMoyJPHwE5u+3N7DrCTv2D/xzW4tEsVkXDH1noyrM+ZUk5V2DIyG
         pEnw==
X-Forwarded-Encrypted: i=1; AJvYcCVmS2x1JuFeO6zxne/ffKLklouzH68KHGkC50NBKd8FqoY2Ts356mCFDaPAT9V/4XO3vWg4Lo4BYx32oo41C2CbQixlCuXq+8yc3g==
X-Gm-Message-State: AOJu0YwzCyTthh+NhwLbb7NwKYlpjeyIOdAnYbMAvYt5pgmEOn4+BhYA
	2M4zCG4X5a7hQE4dPnqYcqveGqt2qExyf1Ezkc3SiRiU9MH+FoGAxeKH70tAmpY=
X-Google-Smtp-Source: AGHT+IHsjEPrL6/F99lSPpofK2eJpm83AjyY8IbLEp7TdKZ8z822eApg7+tOx98XayD4XYnylEbyaQ==
X-Received: by 2002:a17:903:2985:b0:1e5:2883:6ff6 with SMTP id lm5-20020a170903298500b001e528836ff6mr5973817plb.11.1714022482116;
        Wed, 24 Apr 2024 22:21:22 -0700 (PDT)
Received: from localhost ([122.172.87.52])
        by smtp.gmail.com with ESMTPSA id l8-20020a170903244800b001ea9580e6a0sm1140996pls.20.2024.04.24.22.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 22:21:21 -0700 (PDT)
Date: Thu, 25 Apr 2024 10:51:19 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: rafael@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	manivannan.sadhasivam@linaro.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: cpufreq: cpufreq-qcom-hw: Add SM4450
 compatibles
Message-ID: <20240425052119.3hsibpa4to6nzll6@vireshk-i7>
References: <20240424101503.635364-1-quic_tengfan@quicinc.com>
 <20240424101503.635364-2-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240424101503.635364-2-quic_tengfan@quicinc.com>

On 24-04-24, 18:15, Tengfei Fan wrote:
> Add compatible for EPSS CPUFREQ-HW on SM4450.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Applied. Thanks.

-- 
viresh

