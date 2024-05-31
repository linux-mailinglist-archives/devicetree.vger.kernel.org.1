Return-Path: <devicetree+bounces-71260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC398D6371
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 15:47:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7A651F2825B
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 13:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B79715AAD6;
	Fri, 31 May 2024 13:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CN39ajse"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DDA158DDD
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 13:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717163251; cv=none; b=loJdmes9l1z3MLpN/Jrkmztp+ZwQEtlQKTQl9+yCjK4sFYGnU0QaChe+6LdxlU4q2BXQdCtEB75YwJ1kHNSCsOYHWmyHQJxHW7O28LhkLfsRDS0MHgNtq4w0HixwZErKqJ0erZPwgBoZJ/n3AHijmkFS+UeQYnzJ/9mjxa4F6ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717163251; c=relaxed/simple;
	bh=5feJ7ZEmv4EJwuqBxghGKUN0BUHRdtWsEgNJdAM7cuY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dLEUs6PapaF/mrKvTWTeQRaq43uWSbUg7318J39Q28xUNH1ZiGB7QcuGPJcuYYHZx3FEmrkuepS1a0/8wVLztMrX9BxVBBOR5/MXkCc3dkkgo+0R7I6iXZP8UuumgEEEnHuepu1to0c+2mb/2jA4hDx6YXs/0VpfESeUnohyshU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CN39ajse; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-579fa270e53so2519717a12.3
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717163248; x=1717768048; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=AUXJX6MLu7XxJUxxk0t9YkkaBVZ3COqZgFFC8OBMAac=;
        b=CN39ajsexWIlKj7jwrFPvQmnSKRTt2UhvK7UJBBCaLMz9AAdlk6vzGT3sYpV7Ay6SJ
         aMStn5sS0jtBh715SyR/NrcoHzOjRHQmmWVKdUJDit7dO3t4qeW/DCowK1i+NBuA7X1W
         m6teIOY74vKlv1p1sMoYak9HYyfWslj24cayKVkhGLMPx3j/dkwh1pVj7cwLN+5Dd314
         HRgWUJVk9OiKbKtIJfVIAhNPJISaEZfRcSbiQq7UfWAz0m/4tGllHat77M46QkMVJOCe
         rRn65Q/njmf+/xbMeWYYl9BKlnmipaXE9RNpuemZb55rJjHrfIKa3nodgrREd6y4d0Ee
         V2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717163248; x=1717768048;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AUXJX6MLu7XxJUxxk0t9YkkaBVZ3COqZgFFC8OBMAac=;
        b=iRu+hEBnHKbQp2hA58IzErBT3sBxjxyyOLp5oag/lY1s6/P6ovKLv8NxTtDSuJwd2u
         +/AHmY6jLn3RElz+IPmVaB7776HCo78diyRnC52eISgO4i7zWI1ONzk4zXzfno7U5UgJ
         uHDLgEgq4jE8aShfeYT9YkZGPmbRebSsJFsxdddBNHmbc49MU0JgD3qiRT8hJQJ6LGDz
         U/f1d2OIQzeDDQrGZ9eRcmoNDDTFRTQZEQcHpgC9QNNZlCEeiPrxWJOThw+XjqK0Oqmv
         UIY/v08upKu5pmhzyR+xcO9t9VmLGcTyg6FUtkekUGFWjczVi7ZaR4GfutfZd5+TBORA
         59mQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTYewaZSzo5AiWZ3hcc23WDBhnRp9q4Lf7iezdHBvcp0+D1p25Qcu9TFTfn/cE1p2A3mO5dcsHMQgPJpgtGqhHcGlwDkQVd3Zpxg==
X-Gm-Message-State: AOJu0Yy7m0I3RLiEXaKPG33OD53KbbpOfXoNXLoaeajkJNTVDVTG4iU/
	4Ssfwxx4KF1jwIlcAM6lmVO4SNEYybQAC8EhxWjfKzT3Xb2MCW6UITpNYPt5wHg=
X-Google-Smtp-Source: AGHT+IFEKgShmJiRX+ACSDPbuyV/im0mFwK1uQ6oHENuOcbpoVAKiaQZwo6t/ABMGdICow7uXN2O/w==
X-Received: by 2002:a50:9fe6:0:b0:578:59a9:c6eb with SMTP id 4fb4d7f45d1cf-57a364479f0mr1758273a12.15.1717163248095;
        Fri, 31 May 2024 06:47:28 -0700 (PDT)
Received: from [192.168.128.139] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c9c0f1sm1034228a12.80.2024.05.31.06.47.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 06:47:27 -0700 (PDT)
Message-ID: <d9d33632-36de-4f9a-88f7-980ae9a1a017@linaro.org>
Date: Fri, 31 May 2024 15:47:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650-hdk: remove redundant properties
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240530-sm8650-hdk-redundant-v1-1-c39c2ae65f3b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240530-sm8650-hdk-redundant-v1-1-c39c2ae65f3b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30.05.2024 10:31 AM, Dmitry Baryshkov wrote:
> The coomits 65931e59e039 ("arm64: dts: qcom: sm8650: move USB graph to
> the SoC dtsi") and fbb22a182267 ("arm64: dts: qcom: sm8650: move PHY's
> orientation-switch to SoC dtsi") have moved some of the properties from
> the board DT files to the sm8650.dtsi. As the patch for sm8650 HDK
> predates those commits, it still had those properties inside.
> 
> Drop these duplicate proerties from the sm8650-hdk.dts.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

