Return-Path: <devicetree+bounces-185551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D68AEAD8567
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 10:23:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD07A1895AE7
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 08:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D06062DA758;
	Fri, 13 Jun 2025 08:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bF7mysxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0F513D539
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 08:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749803012; cv=none; b=lvzA+KELd/85BFFMLQP70oN1y0YC9zpYOgDKMJTUc2wy9Y6qHh6Dfj3JvrHhkA4asO88U7oRM37C6D5iAYDZNeOKqyLlN6Sn+eiFqZfEJfhYJfD6uyZbjSqym07DH2GhHeJqWar2xtQoIdtlalO8sLb1KQhK95PqnGU78jcztOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749803012; c=relaxed/simple;
	bh=IKdAWnzwfFWyOXdX+1G6U0sXevLYVYDKwcZ5PhqJDyo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GshVnuX6g8TSAb6SNX6VKZSfUPNBmGZH3p1kULpvIEin85wHX2AiYVH5IvAWxOHPt05aNblPiMxC/G0eZ96xpHahRuJcRZD4XrbNt2lgEX4QhirvbB+esogz2pjX2yaTGwsl835lGYdXbZ8u1TsE4V8Y7kyauikXBLxC7XS0tfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bF7mysxU; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-442f9043f56so10590035e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 01:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749803009; x=1750407809; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SL0zV9DuqfcJBeCX55h9Xj8eRYlqXWH7BtBGhKU/pUE=;
        b=bF7mysxUx3VkkxE/cmqT1kQK2UvZAsOeApL2QkSQ/zyeniAlPASIgwaE8nS8V/tRmP
         kaezQ+xYct5YBbqIjiG2Xb01oTD1n43s92t1XKWD/ctOTQIeSTsMU186BpN2TM9ipXaG
         EeQlBNFDijqE8gPrVo6Wky2HJULqnTPUz2ASr0xD+dEMeh5jXGAFessr7VwoUNno9GA4
         E4M6zL3aONwrbmugmz3UpPpTQDUw0SVN3nRX8V2MfLVIAOfyQCD6WJrJd7Bgnckm9+lV
         crqOLFecAnLezJBxNW3jXIOlB0oxnWAMqpcZUPu4X6Ulgn+miDgXfEIPw066g98elq34
         GPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749803009; x=1750407809;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SL0zV9DuqfcJBeCX55h9Xj8eRYlqXWH7BtBGhKU/pUE=;
        b=vFhu2iE0dRXvUEaWaxo0/aYPFUSY4KLHimv3uqeIN/ElxDRaqHr8LnbXAufIKAHkQU
         cbZQgH5pS51ylAFvL8MJcWw903xqLGN4Z07KbBDMe6GRFfEuhiJE4ptFIlqYn2S14zBd
         eCTKswt7YLebpAVeUbUqQbOBIZRN4GIo5HatxIrGVWtbW10deVnwVBwwrbT+6H4bDPJZ
         gzl+sh9KQR4ZGfG/P0uCcQ+ppkQ+YaLYnTmz4YoU1SOnVNqCNvOfFfbZqjbE3u7LvZBo
         I66KFdlaIPo94QUnwZ/H+PXnrPp7AqeL4iGbSOvvN723VVnqcxWToFdUWCYkB+ZaSjnc
         QvPA==
X-Forwarded-Encrypted: i=1; AJvYcCUfUkxW1L20no8GqZ/C4CDd+i4et1dcnWyCgqWVb1tUt3MWLloml1voLoU9iEo/tAbSsyY0K5/QPx6C@vger.kernel.org
X-Gm-Message-State: AOJu0YzLLjc3qIk+lxYGgJmBfhyEANK+9cUrngs1bH2i9DQo0WJ/nWMD
	xYoFV3C7GYtnb5RojgRxhPluTO6wBugR5n6wupk3temAEopLURrjMPX1nGvTG78qw7KFOJ56sgF
	abnnXi7I=
X-Gm-Gg: ASbGncsQxvSExeC+7T5xubmUWqrCEtSIvS4Tzjg0SsfA530Y9Zdy+5JDYctpNutWzzN
	U81tZYdUE2wMRlsEGG54U00pH31DFjj4ZOrj1IcpHt9HQ1W1MV1Nzno1WD/6qfzdWesjcaO6Rn2
	0+4P1HDi2ZKOTQUIsdPfQ5w0cdfp9TrAkHE/4cWEOs/CNeoYxJpeIxVWmBXgj5kYL75ztZU9Dwd
	dCJBv6zV1j6YBse/c0AMpble3baSdpwyN/5rO3Bl84bmkWZdKDhOepoV1lK/PEBZyzIC7CN+KYT
	tD8hBEjIOx84HLptRhm/SD5mOthFDozVJ92HFbCohxfrpjHILiINHjAR1Zf2S74Zb2z3eMvU0Ty
	CqtLM+lDrVttjuKuFg4mabRjlm8Y=
X-Google-Smtp-Source: AGHT+IGNHdTsjLgwG/C438NLrGIbJka/L3CLjJ8ARU7Rx01chsRF11AsJfB2bRKuYUGzbEuQNFsylw==
X-Received: by 2002:a05:600c:5395:b0:43e:afca:808f with SMTP id 5b1f17b1804b1-45334b06b56mr20467385e9.31.1749803009292;
        Fri, 13 Jun 2025 01:23:29 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4531ff595b7sm64979825e9.2.2025.06.13.01.23.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 01:23:28 -0700 (PDT)
Message-ID: <830b7ce4-69f6-4200-b4b5-0e9abfe3600b@linaro.org>
Date: Fri, 13 Jun 2025 09:23:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] media: dt-bindings: Add qcom,qcm2290-camss
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 dmitry.baryshkov@oss.qualcomm.com
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
 <20250423072044.234024-6-loic.poulain@oss.qualcomm.com>
 <20250424-versatile-brown-chowchow-dfc4a9@kuoka>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250424-versatile-brown-chowchow-dfc4a9@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2025 08:37, Krzysztof Kozlowski wrote:
> On Wed, Apr 23, 2025 at 09:20:43AM GMT, Loic Poulain wrote:
>> +  power-domains:
>> +    items:
>> +      - description: GDSC CAMSS Block, Global Distributed Switch Controller.
>> +
>> +  vdda-csiphy-1p2-supply:
>> +    description:
>> +      Phandle to a 1.2V regulator supply to CSI PHYs.
>> +
>> +  vdda-pll-1p8-supply:
> 
> 
> How are the pins or input supplies called?
> 
> Before sending new version, allow people to actually finish ongoing
> discussion.
> 
> Best regards,
> Krzysztof
> 

@Loic

Could you do a v5 of this series with the voltage supply rails 
consistent with:

commit 2ab7f87a7f4bf392e3836a2600f115a1baa1415c
Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date:   Fri Mar 14 13:14:00 2025 +0000

     dt-bindings: media: Add qcom,x1e80100-camss


I don't think it is reasonable to gate your submission on a PHY rewrite 
for another number of kernel releases. We've been doing voltage rails 
like this for > 10 years we can loop back and do improvements to expand 
when the code for that is merged.

Seems unreasonable to gate new SoCs in the meantime, so if you have the 
time for this update, I think the rest of your series is ready for merge.

Merci beaucoup.

---
bod

