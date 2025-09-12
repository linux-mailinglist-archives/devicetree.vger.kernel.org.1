Return-Path: <devicetree+bounces-216383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 923F2B549A5
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46FC416FA6F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF89279DDD;
	Fri, 12 Sep 2025 10:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uGV6b3uS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2421C2E0905
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757672668; cv=none; b=aCf10CvJJUmOxqaUf33hWk9WJA1XCSjekU+Prg8N8Ko4fgAtU1X553P0prWenMcW8ete+fJjQemDkMUarI0oFcYcAescd5GGKIWgVB750ErRl6efY9MjBazHkNx74bTQiC3YR9OdSTMk3+4bX7bxl6X/hIEoyoD3KMfoo6Nykok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757672668; c=relaxed/simple;
	bh=Cm8AGHoNs36CjaW+QUDCUcm8hiYODo7Px0m6IAy/mIQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tHQXeSR4l2VhFhunwD08of+IEOGDs58E+fBY1sUbtYax640FI05JmK0D1wFSMx0RD8x22unOBVAeNN7vztwA84lrA029kdSFXFpLZhEqwXiKcOQv18ISqiuRaMPSFcGU6N/fJM8PkPJb+pX8DxYSH9eNJTa5zz768US5Q+g3jkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uGV6b3uS; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45cb5492350so12990175e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757672665; x=1758277465; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EbUxpX3q5xMx08x814zZfnZ8avY034qyNif3tjChLWI=;
        b=uGV6b3uSYjVsnktHEu/Z+m5lnDCML4npfK9sFg2e68L7YmU56GAu9eQnKC1PKiYMQR
         tulHSZQBp225hwnkwepIiICXs2l5wgiFXLnB6hJ5exTERtYvMPWtLgnLLSjcFcWyEtgX
         7N1NC2bSP7sqgnLy42157Y6TBDiFb9f8x3tAE2tVHoEVFXyVBnxEQD0NxLrqbUg3zbfs
         jwYn3mq6TqVhoUJVijxyPWHSxlKtXKZMIjwucCa2XcIryn8hDuEq9JcDLvorWN9NtS6a
         yuCHX8ZZYMq1iK4SY01Z2OY+T7cWCeEMYM9kZRwllqSDWAHAdBcF5AYbydh1D1HcgIl5
         1pkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757672665; x=1758277465;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EbUxpX3q5xMx08x814zZfnZ8avY034qyNif3tjChLWI=;
        b=GRj/cYgE+EFpFplUcMnHOBvXnioj3Rskl5UP6vR5Z9xb/jG9jX03T9BdQ+QYGdD/fM
         gPBIIw5ctH/cLwGcksiGH/QcFqDsfPED2H+Bm/JOxC6eXPw9roIvlt8LfxW6mywqTdiJ
         CF/a5ZOwZmpe7hh8/WRzsELxrpiXUTCOsyghkl12lUsdXJeaBVqxngOQCUukmlmUeT05
         gSYJO+cv37yRw2xNoqnxlaXFa2QRueU37nM+nPteZ5m304JU6/nukwBWTQzzgj8deKDN
         mRaBHniYzqAHO9YeQs86q5Rh3xDvSs8r0JC2zJRwD856Rh6fMMMr8mwvLJNjdT6ReGiL
         hEew==
X-Forwarded-Encrypted: i=1; AJvYcCWcm/tA4U3gDJ2Z0qUM2cdI1RlW17eamqqqEmj8/W5hoRwXSln3j92fWLVKgnuRReV+lsT6twOky3hL@vger.kernel.org
X-Gm-Message-State: AOJu0YxFbDadsycECbWINi5haKhDFhGCc6/LgB2XIwqZksM0wiDgw3lv
	uc++XDXLvxSf/6cIhd6jXbcUmnVGfmI9IgGLiWeXeqDVWOq21qXYJd+Qlg6seuX2X7A=
X-Gm-Gg: ASbGncv/0dngJXgq/65Pwx+yTiAmfP3w5j7cNM9utuH/mk48rxw3eouU8b5i7KblbBZ
	+7fy+2FdQDOfgu+Zvy7qQE7iMEBAe195Ww+N1Zo9M4JVQJuQJFNyZ3ohN/dyhB9md28XcamhiaP
	qKTaU4PJQJymweVrJMGEuxNOIRoaF/Pi/kI9F7OdBBOFgdXDgCSAjBoeEKt+ULAcd0GFYyYlgoJ
	p5Z4jp8UF+BrEgAaFTWWFqItpEEGNjp+X24lCGR83O8mFdAHOcTRZnk1RfDX5wwdhRphRYoqDuM
	MvI+M5W0KteYyFGLKsxSXfKfLFb6XtMpOKz4LG4OxIJpJzHFsg++HDtrhvdXQbDP4fsUJMS/VSi
	vFMQpoHzLLoOXUR7ZxZRuPghzFI5tPn85wMJ1+QTJ8oxWAUCO4jJ8iIPOJwBwrxbBZ1qvI0oUoQ
	rzcvyjW1fpucx6eF8jFUjO5XIUpZAvzg==
X-Google-Smtp-Source: AGHT+IEj7jfi5/gecFugEbT7EKtx3fH+ixZKBaAEuJdWl25+AesrKJ8jqjGjd6JOh+4mHUsSSjYdYg==
X-Received: by 2002:a05:600c:19c9:b0:45d:d291:5dc1 with SMTP id 5b1f17b1804b1-45f211da6aamr23950765e9.15.1757672665252;
        Fri, 12 Sep 2025 03:24:25 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607e1232sm6059022f8f.56.2025.09.12.03.24.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 03:24:24 -0700 (PDT)
Message-ID: <980b7247-e8a5-40bd-ba20-c9c72c8a397a@linaro.org>
Date: Fri, 12 Sep 2025 11:24:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] arm64: dts: qcom: x1e80100: Add IRIS video codec
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <rPv92n3EVkoRrO1v7nlw_tPMn-nHUhpYhQP_FjmQsESL752mly20FWQqPHLs8JHGC4mklm9wfPABc5kd-x4LYg==@protonmail.internalid>
 <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/09/2025 19:38, Stephan Gerhold wrote:
> Add the necessary definitions to enable the IRIS video codec for
> accelerated video decoding on the X1E CRD and Lenovo ThinkPad T14s. The
> additions are largely copied as-is from sm8550.dtsi with some minor changes
> necessary for X1E.
> 
> The PAS interface used to boot the IRIS firmware is not functional in EL2.
> The code to start it without using PAS exists already in the Venus driver,
> but was not ported over to IRIS yet. Discussions how to model the
> video-firmware IOMMU are still ongoing, so disable IRIS in x1-el2.dtso for
> now to avoid regressions when running in EL2.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
> Stephan Gerhold (4):
>        arm64: dts: qcom: x1e80100: Add IRIS video codec
>        arm64: dts: qcom: x1-el2: Disable IRIS for now
>        arm64: dts: qcom: x1e80100-crd: Enable IRIS video codec
>        arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Enable IRIS
> 
>   arch/arm64/boot/dts/qcom/x1-el2.dtso               |  5 ++
>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  5 ++
>   arch/arm64/boot/dts/qcom/x1e80100-crd.dts          |  4 +
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 87 ++++++++++++++++++++++
>   4 files changed, 101 insertions(+)
> ---
> base-commit: 8f21d9da46702c4d6951ba60ca8a05f42870fe8f
> change-id: 20250909-x1e-iris-dt-eb0494a130ca
> 
> Best regards,
> --
> Stephan Gerhold <stephan.gerhold@linaro.org>
> 
> 

Could you please include the Dell Thena variants in v2 ?

---
bod

