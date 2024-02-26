Return-Path: <devicetree+bounces-46141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB35868355
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 22:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 138D91C21EB7
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 21:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FAC7131727;
	Mon, 26 Feb 2024 21:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cm9GjRvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B919F12F388
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 21:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708984363; cv=none; b=ctWiriEyQ+PKOCmjSEJrkAFIsPWblRJbDQ+v1ifq0dg/ourgXpzfR2WbBhnWQvoH75YggiFtHauVG87iK+OLk3UutyPqb5w1gfI8KuJPEtOmsOWL/Hzt1GUlxSDGfoGj5EHkhQwzyQea6ZpyMph5pZ8P1vSusJSQKp/fELLXkUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708984363; c=relaxed/simple;
	bh=8Zn90+ukVbVzSwk58zr/niqwCO2DtZt+YswkesnxF44=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S0wiuCVrEqlQI/RTqEAUH4oCpKKTTBgLG6ulz5mt43cDVisuu9q5fsrxwpKIt6gkXXnu9lnDa73f8Eb44Xv3ABF5wePgh6UFTPhiC3l+xRIAJYf/vmilRrjMrjOFmCK18apgEo8I1PJP4u7RIatffsPMGude0q6P/8He9GIfY/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cm9GjRvT; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-513031ce058so473550e87.1
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 13:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708984360; x=1709589160; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JOJoqO8h2b0N+fLfAIwFAabZ6OfREEe/OuJ/yQYrAnI=;
        b=cm9GjRvTyOhF1JrWjNGv5zEl2xDjuZjC7mKj+s3t6HIGyUCfyLCMc1NhHxXy+BpOWP
         B00NEFLzEv+O8qX2zilA1td0Sw59uZirr/39esciv6YKe2dfvPwU+PcSLo8saZUOf6j0
         7XXJ9jtIlY1mHqGMpsjyTTvKuWYQefipC03nAdSNv7xeHkm4+wndAVh0PMEF0kjfSJ+8
         AtV4wO/EuELCoXLnn+XiFeH/GZl0piDW0EL3zKyqrqNrvr9Zg81cayoVzv1Z1ec4YcnN
         EiMPyhbShpp9FGLVVRTwt0AOYn6L0dBjjnofDEbGCJIn/LtYwQNym/QViMaE2FKFuW+Q
         KpjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708984360; x=1709589160;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JOJoqO8h2b0N+fLfAIwFAabZ6OfREEe/OuJ/yQYrAnI=;
        b=to5tBoCed6oG+Cd36zz0M3x16ssLntFmpJrx43Aw6h6Yspa/g/jjbDpYiKBg9yrWMb
         +0tvMMKzLwp0cuHcrYQaVMggM+I+wq0bXF8KBAteDU2i1jyM5iIQvNI5J+VkFfOQxHM4
         JxX0GUSpX5CfCt8wbXWdmm+4yWkYnM65tUQXvJM5zu5nJ3V9xb4Mcgno0kDxaFwk+5vC
         hUo28+JY77KGeAy24HKprCkRb0pl6rW7/Qg7s/dtxbij6f51Q+V6fCRnWwMMiRB7x2BX
         D+96LjROldxjju9ADKKzFWzODiI6FKicu2Yut9nDs/gjNigNociATv0wxm7Xn4JelJfx
         TmSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVi5R30wG+zsLM56EIDrtIQXsM1gr0OkoRHmOocvbAJQ1FTAVljsACwey/uz1XfKoq+TsGdYEcEMvcCAUFlmZektoepKASaghhNlQ==
X-Gm-Message-State: AOJu0YxqCEXPT2/GDtMRKA377nkvsNVo5ZEcR4Cl4rKddIS1UAP+1roP
	kZBGpSGzkealmEiVXYni5Sg7Xon53GfdmFS/kq86GyrjknaFhgfbzu9tsiboyW8=
X-Google-Smtp-Source: AGHT+IGYNleGdSLYWJLcq/K7zQa7Hb18NGD8itajhBMz9JZU3AuURDbG+SSuf7vK2x+k+wh0zEQKVQ==
X-Received: by 2002:ac2:4c36:0:b0:512:ae9b:559 with SMTP id u22-20020ac24c36000000b00512ae9b0559mr4396044lfq.34.1708984359873;
        Mon, 26 Feb 2024 13:52:39 -0800 (PST)
Received: from [172.30.204.180] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g7-20020ac24d87000000b00512d180fd3asm960239lfe.144.2024.02.26.13.52.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 13:52:39 -0800 (PST)
Message-ID: <2ecdb770-8cd1-44c3-81e8-dd1aecee878b@linaro.org>
Date: Mon, 26 Feb 2024 22:52:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: make dispcc cast minimal vote
 on MMCX
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>
References: <20240226211123.4192907-1-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240226211123.4192907-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/26/24 22:11, Dmitry Baryshkov wrote:
> Add required-opps property to the display clock controller. This makes
> it cast minimal vote on the MMCX lane to prevents resets caused by the
> DisplayPort / panel probing.
> 
> Fixes: 57d6ef683a15 ("arm64: dts: qcom: sc8280xp: Define some of the display blocks")
> Cc: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

