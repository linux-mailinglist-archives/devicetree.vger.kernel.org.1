Return-Path: <devicetree+bounces-123180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 727CA9D3A24
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 13:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3035EB2A30F
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C73061AB6C8;
	Wed, 20 Nov 2024 11:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i2zzOUcr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA921AB534
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732103504; cv=none; b=hrcXFDa/5tao0YXGB/46ZAEN27NNH+nTzdo6ji/NbirVbYCOq9fM6bU6XO9JPvlw3a6KeCbMAEViSO/yMDSvRUaYTlqXoqAAu9X3lbUzIOJCwjK7Oc7rFAr+hHMNfkPw+SKJnZNizhMpH6aS9KTSCFPtNMkDw/hsjk/qe32iXMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732103504; c=relaxed/simple;
	bh=QYG2XSaisH6JFzHjHjlYdIhU4FY/L8M41+fZI3gAe2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n/sN+M5PWYCGu1fGApxdt/os8NwciztIbM5TuHjIxbGa7wU4i2gR3He4FSTtbDegM61pfSEp3MaZMeUDGX1E7HQP2amC4s/nzhnRuIaL7Mv9Eq3bkEfbmTwPMRrDgx608qrJpjjptUTMDMzUbM1wG/JyKKNcxoo42tFrrQ4A7/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i2zzOUcr; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fc968b3545so56994931fa.2
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 03:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732103501; x=1732708301; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OABhvDMwf0ZQTXyu1UPyLhOCfmcWutbWE3+BBdXKQrA=;
        b=i2zzOUcrflUXMSdgwG41bk7oNq3lGSdBDjmG04NV28fwDjRKBKT3dvwITjqO+sYc7O
         ps7h4bSD7rtEvsFVeXn+O4r5304HjOnzdmSUpIAhyvx3vPKg0+Mf7YQ9R4mKh33Oj9T2
         aUYZFrGUmDROmjm7H1qDOV0dxTr438xcpUDT+6abNLUMiSRGw2OBaQYRfm1ra0TINtws
         Ga9xX1Oni/BVRT+HK0XG/df69T32eQ+QltfNvDEy2mGMHcuv4KwmSC/YnBGaVEeqnCQo
         8t46BXAnohnx8t6r5xOzQYb80PsnVlopn4dpvM0mDlh1ZCXeTKDYDV+Rij1EX4YyNpxy
         zG2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732103501; x=1732708301;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OABhvDMwf0ZQTXyu1UPyLhOCfmcWutbWE3+BBdXKQrA=;
        b=UgAkLBqp7oWRKcP1FOfwEIHPQcCD7ULxN2tsFdW9zOd6y36wMind4RLomtzqsHtXWj
         360+1teJQm7rX4p8rZoFBMYPRG8CxzovJYTq/YU38Llry6zg7Fs7gBXeKPkB9diNpZ66
         vRS5pTH2qdlxc66xR3sUrX/0g1lSQ9BOkhMN08/YHN4ygWXbeSftS90BjAnvs/s/+u+W
         DfWcZhWyif6nct17fUkola68w8szOUTGNsMk9IUjJ74KkSg3Q07car70YN+BS9DUDYBQ
         nZGqquampLVeWJFIGBAbk3jnpYRGyRhEtgi++EjVMVCQqIu43Eq05arnSOxzHkLre+x5
         iVUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwDb163nER7cvDWXBnWkMeWDbe91NDauLWbZWThieqCsSjIZVzD/Rbo7fYElK5lPVipZ9Nt5uBCF+Y@vger.kernel.org
X-Gm-Message-State: AOJu0YwHIjk6xkEc3g0icjYx/IrhIPynO95WQmLLUL2RnSJoogFMOvTF
	OFHutwgU/aNguNHvHX9jPVHrfm+DVrzThEkNbFy2lj2X4PfiLaVQVijjY/PmSpg=
X-Google-Smtp-Source: AGHT+IG/km5lu+2hzYNdy6xQAltlz9pdfHnrzafB+noZTc5/mJ1/B1ryM5MEBm68pXeikm1vQ5yMnA==
X-Received: by 2002:a05:651c:4006:b0:2ff:8e69:77d7 with SMTP id 38308e7fff4ca-2ff8e69797bmr8212711fa.20.1732103501072;
        Wed, 20 Nov 2024 03:51:41 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff69851607sm14943021fa.21.2024.11.20.03.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 03:51:40 -0800 (PST)
Date: Wed, 20 Nov 2024 13:51:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@quicinc.com
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: Add support for QCS9075 RB8
Message-ID: <eguja5lyf6eodsgev5c6de6jkg7bnuht7lctsajig3wo4nzjri@afjq2uhhg7gn>
References: <20241119174954.1219002-1-quic_wasimn@quicinc.com>
 <20241119174954.1219002-5-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241119174954.1219002-5-quic_wasimn@quicinc.com>

On Tue, Nov 19, 2024 at 11:19:53PM +0530, Wasim Nazir wrote:
> Add initial device tree support for the RB8 board
> based on Qualcomm's QCS9075.
> 
> Basic changes are supported for boot to shell.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |   1 +
>  arch/arm64/boot/dts/qcom/qcs9075-rb8.dts | 281 +++++++++++++++++++++++
>  2 files changed, 282 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-rb8.dts
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

