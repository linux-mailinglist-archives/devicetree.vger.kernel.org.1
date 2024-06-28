Return-Path: <devicetree+bounces-81220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1387491BA14
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:35:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75697B23D6A
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B6C14A609;
	Fri, 28 Jun 2024 08:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="el0C4bR3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236C6322B
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719563588; cv=none; b=EKDR3yxFyTMZuNZz+KvU6EZ1sfv5jpj8ZMzmCj5s2r2WeauKzzH3ew8IGQ5xpK5y13FzY9OHCs0iYYaTi1U/TbQHY5FoiaOYTJcZnokoiB4/xhXIdElymcvqgP/91YLuJQ9pzEeK/5P5RPubMGnV1sPxIUqfWtlok65MwoJRU2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719563588; c=relaxed/simple;
	bh=5mm20Y/D18e3rhH9q0DzVBFAuRhcMRyS+8NV59qBtfU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RStdtd16doHhDAA0sZb9OLEKORIJLwZ3Ha2nwmkq1qKqh7gkRPzasskYJFlAd0dTRdaLD+uZldg8AlE+r2WS375Z0WBq0kXwn2nkPmO2hjQQj0UPyJl5MiQWirfvuM3rl1WHVlz4YdoK4uqPFIvsZxSE16FBzh5u7bWy6IWObcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=el0C4bR3; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ec10324791so2961011fa.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719563585; x=1720168385; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ks4ZsEAD+yVsd8GiSq5R6Kq/PRusoPcTcDCgKL0huZk=;
        b=el0C4bR3/CEJpJ1LED3ows3RlFnrtt6t0W+S6WbSj6RZtcekCQd79nqwML9U0UQv8R
         RuxTIBTYS/HL5hfnfhKkZhDVukGcPY/5x3yx+5Qwyj5U8TJQRaErg6KDe8UNMEBFur3G
         USMmeXYPKDLl0l/YcYCnT9JfPrTemWH8DHvtKTGjghnwd+vAwC7wDTyuScJOZdk8N8uH
         zWHqQQYtmheyRsw3mU6m6+2Juy/oRPAYJyqly0uEL6OkgdAQRp2i1G2oLtsDXCjRgbRB
         gOyxtPyp4ZIc0R45tt2xjZ6vkBnPNKpswIK87SjSX8yHdnnB90yvT1inyWfuwufB4CxC
         QpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719563585; x=1720168385;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ks4ZsEAD+yVsd8GiSq5R6Kq/PRusoPcTcDCgKL0huZk=;
        b=uUh/5p2x/oCp+nPFMDg3WEZnndE4NKkDKqK500CHjidio6nC03TY+BHJky6PDvvfNx
         Zw5TjxmgKGt7jgXP3tRaR3wFsz8vuB9DCoX61rH90qdTCtYSiC9ZUbLAXxTx2qiRruUf
         omrTbMgl8U4fjmpWFKO1fIZrnzQMxuHq7P9u9KYOO/+77NOE2TJiMiHurCjCH+WVbG2q
         uURfS7gS3Tlpgiw4IusCk5JtN5e9Y2/XvLMuZLj7VRRiD+dFo0uPzRBbsCkbuRgptDQ0
         OfwvGEsNbPCMfuT7oyTmTCYO1U5FGP1BkQBCf+I8PY7LhErFcnGj/NmdpTSbOW0lOwcB
         r1Zw==
X-Forwarded-Encrypted: i=1; AJvYcCWubn0VXwUXDMfVesc1YlbH6QbPjJieCtFwNRB1zADfUbenWslXjA/iclDBfg64LnGmS1ge3FNc01ShH/gJ/OU6Hfe/tyzjHTRI4A==
X-Gm-Message-State: AOJu0YwCzWzlRwFJ+NnpS1xQSqqSP64UDFg0iowung0LuOUPHr1J97dd
	qOT8rcoc6hpbk326ebD3cxR+QMIw4ssegit1rgER274ZEvxmXI4XaoleugMuO3I=
X-Google-Smtp-Source: AGHT+IGeWkgVfKjAulIjwjOJ7JAplKw19Fhr4yFgcepcShFgKVVaoXv9nId96W32Ts8FIc7Tk2NB2g==
X-Received: by 2002:a2e:780a:0:b0:2eb:df39:232b with SMTP id 38308e7fff4ca-2ec5b27ed94mr97569761fa.20.1719563585517;
        Fri, 28 Jun 2024 01:33:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ee5168c70bsm2063861fa.104.2024.06.28.01.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 01:33:05 -0700 (PDT)
Date: Fri, 28 Jun 2024 11:33:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm7225-fairphone-fp4: Name the
 regulators
Message-ID: <jzwiyrswop6yy3rprndxcyalikgww3i6v34wb3g73xj2kyl2pm@7coycikxmyud>
References: <20240627-fp4-regulator-name-v1-1-66931111a006@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627-fp4-regulator-name-v1-1-66931111a006@fairphone.com>

On Thu, Jun 27, 2024 at 03:15:54PM GMT, Luca Weiss wrote:
> Without explicitly specifying names for the regulators they are named
> based on the DeviceTree node name. This results in multiple regulators
> with the same name, making debug prints and regulator_summary impossible
> to reason about.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 34 +++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

