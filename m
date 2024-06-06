Return-Path: <devicetree+bounces-73224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B39BB8FE447
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 12:31:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6FBC1C25979
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B80D13E05D;
	Thu,  6 Jun 2024 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rakqLOdv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8368113D89D
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 10:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717669833; cv=none; b=IDG7xn2MYTRXfVnSs4yxdW07PXlRhrZlO2GPQXIVSrZikpEBfsgs+VC45vdub+VHopU9T2MBSSs2pQOLbeZYQLRp1sPiNKZ6SEDgAEO+6mZ5aLlIIoARcH3gdbFKwuhf340O6CU3pMJcZFGiGnKWsc0tT7zbEaS5AzVXrotmSqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717669833; c=relaxed/simple;
	bh=T25AcLqwsFMYd8g/KW2Ws/ZAqcXEOs7GXOGrefSGhAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VVzo1efLLBPBskGMzgvBtJaqaniFhCfsT7IAbsjy82kPRMm3NQKC1tPNbwC5ElRALcphSNzrqm0a3DrEtHJlfxvd8XKuqWWG53krKcU/rDuh89t5BeTsmHaC7j0qsbeik6HvxJBhIC4ay5uaUBhcjOefx51DWVwZ0/X3eFdKKm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rakqLOdv; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a6265d48ec3so92838966b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 03:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717669829; x=1718274629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=gl54fOZyBYtMXey6LAnbsNQ7H3hQsw/2WZQ42wnpCeM=;
        b=rakqLOdvziob+IQVR5Q5M/6a8usQneqBLSQZNfvBC6cxpXUxLtHEjZ5SnzpEyeLNj6
         o8ZvWmkwnkMX1jIuNymYLIgoXJUwf9Tof0JChKdc7Gmm89LvJuqx9BiJR5tQSZ2li9qs
         OJx8RYr6iqms26zPqQZECAH+LlYcEpJCXSiExK4c1cWgzFS/8seRSAoB/WosH71BERAA
         e7Z1DcIm9lyUlYIS/kYcCRukGF/jewySkGvEuxxmF0DoJixCm2QVM+HO7sAfWZEF1bCS
         2r9YhQY5CMxu1PWe9H1t6AcyJoRr9mQBWhRPZKRRqfORbgRodPmdXqW4e/9AOOavpeJZ
         XBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717669829; x=1718274629;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gl54fOZyBYtMXey6LAnbsNQ7H3hQsw/2WZQ42wnpCeM=;
        b=RkgbPFY+/VhkcmpMmk11GT5C/S8rNgcF4eGz9j79PBm8I6gusq7fJYSE4iQtopLQsh
         vrW5FjGk+UZetOIjCVcdK1uT78pFR+w01sGGPM3FFxJyQjJTBvJC+D5ZLjuj6CoYIiiL
         PFBM/MTfjja85LCdfFMv7Xsug7fqyBmWI3uWzPJdKHiqvu0Z7RUVYwrYTStNUkx84ngc
         u2qYyyCGrXt5TLoVe/6Z01MZtpoRzEd6J/HtmLpQ2VEFWlc4QrgEJv8Quk59bSfJ+DKY
         0chr9lFW9NDQlbTqPk0l8DZc99bBCbSDRx60Kc3d02Mh/o5uoKQ3E6a/lhV+aU5VtOT3
         Cj+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWu++i0QFw3nAv/xy271AdAsLtbO9ZSBUuVx6eoKbWIVScQSPhkqfrguQE83oJUAeA9520lv1rcy9Hcb/Wac8Q9e0gDkVDR+ze/dw==
X-Gm-Message-State: AOJu0YzPZOQmVmvX/IzPry8H+LlANtHK/ooCXxlUOXG36EVuOnMc16FP
	w4ZAXFSp5TnU2d/aVHWgeI8CC3DYtF9I2/GcJdSDw0hDnfjvOFazfaNnGOR8LuM=
X-Google-Smtp-Source: AGHT+IGRyxziwh9jwLY3Nk4qTCUBmZ8AXbbiN9CkX7zHugucAzQ5CdBMDg+E6Gaq3fMQ+d8giGt0Lg==
X-Received: by 2002:a17:907:502:b0:a52:65bd:a19a with SMTP id a640c23a62f3a-a69a024cf7bmr267682866b.57.1717669829213;
        Thu, 06 Jun 2024 03:30:29 -0700 (PDT)
Received: from [192.168.128.139] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c806eabf8sm77531366b.114.2024.06.06.03.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 03:30:28 -0700 (PDT)
Message-ID: <be2dc908-c8d3-4739-9f46-8f8daf0f328e@linaro.org>
Date: Thu, 6 Jun 2024 12:30:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] arm64: dts: qcom: x1e80100: Enable bwmon and fastrpc
 support
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 djakov@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 srinivas.kandagatla@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 quic_rgottimu@quicinc.com, quic_kshivnan@quicinc.com, conor+dt@kernel.org,
 dmitry.baryshkov@linaro.org, abel.vesa@linaro.org
References: <20240604011157.2358019-1-quic_sibis@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240604011157.2358019-1-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4.06.2024 3:11 AM, Sibi Sankar wrote:
> This patch series enables bwmon and fastrpc support on X1E80100 SoCs.
> 
> This series applies on:
> next-20240603 + https://lore.kernel.org/lkml/20240603205859.2212225-1-quic_sibis@quicinc.com/
> 

Going back to [1], is memlat-over-scmi not enough to give us good numbers
without OS intervention? Does probing bwmon and making some decisions in
Linux actually help here?

Konrad

[1] https://lore.kernel.org/all/20240117173458.2312669-1-quic_sibis@quicinc.com/

