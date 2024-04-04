Return-Path: <devicetree+bounces-56388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F302898F16
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 21:34:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A8C4B28A0D
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 19:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF3E1339AB;
	Thu,  4 Apr 2024 19:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b7hGkEG/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F96130AC3
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 19:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712259241; cv=none; b=liolVavMQwc2qdjz3Izgu3IVkPk3eVjUmXGfe3Ae26n6BnNoxZE+l0k5sN0nGY30VxVkRb9/QKSzUk9Vhs4aoPt/Ft0inilvdr616U5ruX6i3S0bj13pIDIyWcu27HeoUu+g0Ta6htDm/DXu7/9wxCDOzxUkKDzjwv+9HrLPQWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712259241; c=relaxed/simple;
	bh=SVDKNDrb0NOjmIcNwsafHve9I8qQ4xtJasTbPN/piYo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KX7dnAJYKAN25d1qVTwJ0fBRbEQA8h7EKIwKms75+ei8wKq8OxmMIrIcm4ZNN2ZYpnAShh367PJNldZ29yrzsPvj48fcrO+j/r7ZT/zTOyMGBmQjJUJX+yrUY2Mxr6kEJkGcUWHlCxtUaEe5nKKXwEiwYlwemPkO8FuQqoiHV0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b7hGkEG/; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a4a387ff7acso179209366b.2
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 12:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712259238; x=1712864038; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=FfV3fov2t0k9gHE85d1nbOGKLogXLORP5FadBnHM/Uw=;
        b=b7hGkEG/vDmgX4+jtvKHmXUUgpNRshFUvcZBt8iJcczzbOtbDMoCaC1RMGl1+Un1y0
         jekboRp22ZjDSzDJexcz0Of1VK4Fq1fLAl6I8zRBWB6fVjGylVo+q4AjDoS+3VJO9404
         Da5ENk1JbcY5/u7clJEfjc1digmkBLbm/K7/be1JH/pho+hP3hLKnwg3if747Ab4Uc6O
         WXbRfXYYunyetAVMcBIuRMHkHIooZ9X6lKC0XT+OA4UJnIFuuWKS2cvCo7g9sqQm0DiR
         KZi5Fz8ybN0IyaFWBYRUUm6auWQzX5thUi0b8+HAiqtyIvjhLoNUpIk6v5xpYkMYFN3k
         PXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712259238; x=1712864038;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FfV3fov2t0k9gHE85d1nbOGKLogXLORP5FadBnHM/Uw=;
        b=LU88HvCJUbW1TKWGYdFBWCqCutcv2UDAkXfq/aPGklIxu3Qn57j9bUaQz7fHSSrX6c
         82tMu5PEzoySXTfA5eaKHe4PSUS2s1h+WhR+q2Agx8WM+gujIeSk9lle1s5W+g31uaPP
         yKohEObp5nfRUo21lMNvzdoiF61gqRyn144Jlr2W6wdepTFruJpZC4wanAUvJvyAvv/z
         VhNRX1XqCQnQ9He6cHaK5PF2QYoQzuSrSH1/AZEaz4JCLr26WNCVguseApZkBhT2GmU5
         3IULY2u9Vh0ZLOnajtzhbYUVG2d1p9w6j2RTj/obb7dkMdgHFVTeTUyZC1a8zez7e0Wp
         /mOA==
X-Forwarded-Encrypted: i=1; AJvYcCWul9sc0FVZoFKxnmc2TJ7Uoot/XZvg5r82GL3ONDgDMWXj4oeBelwnbsbcOCmXOXx/MKASlMBvxdfjK7Su5+nj6lsshxoycvheHg==
X-Gm-Message-State: AOJu0YxTQ+B0rhKPP4E9vJbKeCLRYfYY+o2pTIk5aazwu9cryqXjeOfR
	/Y+3xm+u+yjpNPUaeaLZVcjPnvV8U39D+fU+IFt0MBRIsKR/rk6L6f1DRP2wKXY=
X-Google-Smtp-Source: AGHT+IEmclIaUO21bTVoklUjKzNcu6GjYx0QD+l7+2UA1fVKaAzstAVSLWXESTN6+yKxmOwbErrnGg==
X-Received: by 2002:a17:906:dfe3:b0:a51:982e:b3f7 with SMTP id lc3-20020a170906dfe300b00a51982eb3f7mr857667ejc.37.1712259238583;
        Thu, 04 Apr 2024 12:33:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id bi2-20020a170907368200b00a4e86dd231dsm3757810ejc.42.2024.04.04.12.33.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 12:33:58 -0700 (PDT)
Message-ID: <42d1281e-9546-4af1-a30b-8a0c3969be6b@linaro.org>
Date: Thu, 4 Apr 2024 21:33:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/2] Add Qualcomm PCIe ECAM root complex driver
To: Mayank Rana <quic_mrana@quicinc.com>, linux-pci@vger.kernel.org,
 lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, bhelgaas@google.com,
 andersson@kernel.org, manivannan.sadhasivam@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, quic_ramkri@quicinc.com,
 quic_nkela@quicinc.com, quic_shazhuss@quicinc.com, quic_msarkar@quicinc.com,
 quic_nitegupt@quicinc.com
References: <1712257884-23841-1-git-send-email-quic_mrana@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1712257884-23841-1-git-send-email-quic_mrana@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/04/2024 21:11, Mayank Rana wrote:
> On some of Qualcomm platform, firmware takes care of system resources
> related to PCIe PHY and controller as well bringing up PCIe link and
> having static iATU configuration for PCIe controller to work into
> ECAM compliant mode. Hence add Qualcomm PCIe ECAM root complex driver.
> 
> Tested:
> - Validated NVME functionality with PCIe0 and PCIe1 on SA877p-ride platform
> 

RFC means code is not ready, right? Please get internal review done and
send it when it is ready. I am not sure if you expect any reviews. Some
people send RFC and do not expect reviews. Some expect. I have no clue
and I do not want to waste my time. Please clarify what you expect from
maintainers regarding this contribution.

Best regards,
Krzysztof


