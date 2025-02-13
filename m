Return-Path: <devicetree+bounces-146376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7FCA34B42
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 18:07:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4859116265F
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CA6D202C4C;
	Thu, 13 Feb 2025 17:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B6c9+SMx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982AE13D279
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 17:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739466015; cv=none; b=tnrGL8dRUqbS5nRSaKh56EIvrT4O38u6RXLazaUKBwqaEOMCadEJyb2NGQCXeMoXyI9sHJPYv6t/yvb1n0feeb6kuM4Nemj6Cgsa8OsJ+8P0BPGpNIpneZ2jMPeaRJ6G/365FvuVkoah0ly158sqTXrvhT2hA3mA7Nq0DBRtF3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739466015; c=relaxed/simple;
	bh=BtRN7n4xGXk239SdRnSmUkBejNJDYu6BWsjQYOPuYjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LLyfFKCryD8YnK8KmTJ2b1Wi2o56ls03PHJmu6c7/O+SoRB+jP9JLn0eFW1BCe55jaszUFYJ/FNS9ZrPHKAE/17RvNXwalKQQ9QT/MuEP89vRflX6s4gq6D8NEJ3bJQDDwwsxZxaeFslkEVyfs5yWxLrieD7HDwj/gVenStzq68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B6c9+SMx; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5450622b325so1073548e87.1
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 09:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739466011; x=1740070811; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eLTdc0mnszW35pcuuPl/ETu0QFfOhGZjVUBzq1yxI/g=;
        b=B6c9+SMxWWo0B2lSykEu6ugROGyeyZqmYZwGGFJt9vLn/SIJwPto5rHrVW/tfCO9Bp
         s1D3mzUGJKpZjbnCU84VcVAQwcJPj5nMObD87XfsjKGA/yH/yxFpyCx1nC0hP063lRGS
         G0CsUucqLayhdADQi3sWrF6FhqmQHKX65SItV3GuvsUzli1vYZYUopRH+VsgEieHoqje
         gVO/bSV7gFBKJu7s7Wyen9wkKtwr/Qe9UgNG8lyoOjr8qqFGSI35lS50CNgWACaesaBj
         clQ3l94wd6ahuOY+DU9tMLXFS3U7GaFIr6BM+PMD8/pQdiYtUztkZkSa6Qq0XE6N22HP
         wlAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739466011; x=1740070811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eLTdc0mnszW35pcuuPl/ETu0QFfOhGZjVUBzq1yxI/g=;
        b=PL3XMExrEoeZHkjdyg1sYf1CZY0becBt6dHItemEdV1ecV7W5EjIGGVdE9iHJmyN66
         jmAZrzCmwPcafoXc8mf8Nl5rqSmi5GIz8e7/t4m8nOvvxkGxGnyrgZ1b5S4oKJT+bKIC
         xLTdXLAS13pNX7a/H6FmmJNzAhNvHTw5Tq3SXFeXbbTLJL75HGL2ZaW6vpGSykWpRaJU
         9ZSCAVj/O8Nzp7Nz4akLfiXiGlPuBzULc1EiKz6KRyZyG/wIuHQLz8oiEj0ZG/cDvqKr
         kkl1FcMTG3SfUhA/vnz5m4Eucti0xzpM5WmTC6k/fcGsZgWfYmLjYf9RgzfpVAP8IFCL
         v86A==
X-Forwarded-Encrypted: i=1; AJvYcCUT3Zi/fwA9DUGHD8zvlwnxBxBCrLIsop7ReSQ9fnuLmPL/GWdlVDp3Saxde148m4keSbVoe9Zm4wBn@vger.kernel.org
X-Gm-Message-State: AOJu0YzbiU34m8JyaRqwYUZApkBQqDn7I0VAbborbc69IDMm6EmrO3xK
	bVqoRXIaRXCnyTBSaojJUbdeKY0l9rrEr9NrSLRBwF93kXKOn79b+MRTRlc7r+Y=
X-Gm-Gg: ASbGncuflWuP6wb9BUj2bnk7qiTaV4wIVYSldVpS4TKbAveJTLmjzRpep0OvMZ/18Kc
	JEouNGoh0QjvHSmOnj1RXwTalhAv8NE1i3bDXxWbd4S5JqhTZFHw2m0Ht/sFKgsVcoVDv8s1Fav
	jskfM6vC0F47iti1geq9seMscGgoWeUTC4e8Q95gyxsbf7rmdO7p2gI8VLAyE3yO2+FT8Qw7gv9
	ZzmcUOmxzC3AWHhTiHe6mSoyDuTGSigGArQ5297VREKXM6CTpFVITSaG46PQo0tWperd1qqL5kn
	I2srgXbBuGtZ9WpkVeDRKFbYutXRKZ5iD8rn/nG4cawPrFxCSd044eBHWnH1U1Dnr3oJL64=
X-Google-Smtp-Source: AGHT+IECjSH9vRJLStWd+xD1ybGS+qcgRaQJyWQXD6FBqkvSQHj2aTj5q7HpRowg32NwdODaOMXJGw==
X-Received: by 2002:a05:6512:224a:b0:545:fad:a757 with SMTP id 2adb3069b0e04-5451dd99d0bmr1143047e87.29.1739466010776;
        Thu, 13 Feb 2025 09:00:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5451f105e4csm219176e87.111.2025.02.13.09.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 09:00:09 -0800 (PST)
Date: Thu, 13 Feb 2025 19:00:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: sm8550: add missing cpu-cfg
 interconnect path in the mdss node
Message-ID: <pgwuzwohvnvrw7ism5zuaigjjsljvqylej2tyjxeo7cpcsycfk@lusbxdvvbetz>
References: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-0-3fa0bc42dd38@linaro.org>
 <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-3-3fa0bc42dd38@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-3-3fa0bc42dd38@linaro.org>

On Thu, Feb 13, 2025 at 05:27:58PM +0100, Neil Armstrong wrote:
> The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
> add the missing cpu-cfg path to fix the dtbs check error.

I'd say that this is not just to 'fix dtbs check', but also to ensure
that MDSS has enough bandwidth to let HLOS write config registers.

> 
> Fixes: b8591df49cde ("arm64: dts: qcom: sm8550: correct MDSS interconnects")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

