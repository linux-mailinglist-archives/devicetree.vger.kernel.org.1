Return-Path: <devicetree+bounces-240129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E0FC6DC2B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:37:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 748574F9A28
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E931733C52E;
	Wed, 19 Nov 2025 09:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="liVwAC0G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20103331A6B
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763544080; cv=none; b=Xk43WlZintNPq0EmOtczRiGJx5ydDJTYeyXvoPyUTAednyEtExWxPH6CXJxZHIlJNM4gn6tsYgx/XCrExkik/CrmhWXePoT0ZfLHeCcvCF0c2OZHFRRuU8ILgG5rhqvhYDhBqiu6HgDw6XgumRmcbm1rK8C78QThiWZ7GpAz7T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763544080; c=relaxed/simple;
	bh=ysHoD2V6QmDrsbZxLhHBQRVYzpYnrirbcyD+E9hQgAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dmsfGD9kND1HA+jXVSaF0wFaN/r2Lu9Wa8gFBChA9aeu9P5zeO846VrddjPqW8BS9asF3EeTJJwb0YfV/3jVGBFu8uEK5pdN7deXdZm8thJmLpcw39cjS1mriXDIfArcNywkL3oP+SSU4o+gsIYW7mTkL06NllXfG11MshBFTI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=liVwAC0G; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477563e28a3so4902925e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 01:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763544077; x=1764148877; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=njTxfWaQF2JlsHc74k37zSym9rCLYQzSeRXrqIHcEO0=;
        b=liVwAC0GIUrWk+8kijzAAs/rDtCgj6bxIhNgTni7XZIqbjLpfiZqwM+z/LKHVB6iym
         rI9qkk+mVG2friRZgGaj50jZaE2wnK7jW6o9rNLzckrYkfXeOMdN9v9Zh3eOu+Yqou/d
         QGRm+bzbIVSnJBwLJY4nYzHgPcl6szF5gZX2JFqHQ4Cwp2OD1DYL4PESb9UGKmr+YsfO
         e2VHGAPqPch9udQc70eTJtg9uv6DhP4fiUTAkZo15PuW2eDvZ7hzeE0iSKeFoREY7xT/
         TjOA1Li49JhifsKmpLZFuHyZ/SG30Sbmi4qOB0y9W/tBYrS2sKQFSQphubxpjGI5Xmcd
         i0NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763544077; x=1764148877;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=njTxfWaQF2JlsHc74k37zSym9rCLYQzSeRXrqIHcEO0=;
        b=JcuCaN/IewPIcD1dFB36ZygiQ9QVD2gDhXMyBWk9rwoBnCMgC8w5YTecxhSmQLWPj/
         12KdQi5lOE4ZyxbCeLDBklAht9REetMOEaVyyLo9/ATvKiaGelcDszKXMacxGw/yF9kM
         nCTHCNcKRmfpjGU5mUQy8rpCKSF4+JhHXpNQtWRE3y7DFwpHOM83QRSc88dfcdqMWBl6
         7d6+waHxp9eYrlQpKWhCPTFoh7bmtRfgH2EpTubUSHZvYaI/PZy6e7wUrs76kfdc9nlC
         2Jo1kCYWCOTQTcZ5cG+NTcsFDuU/y0HbEvoEvp0+rxXs1lW0tggann+N6uEkFg11trN3
         0ArQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUsEt7kDHwM1JSdb9ZCF5+MA9+IFpjcDCnpYDKaTK7DozIvJ7BQinp4sGmTSwt5Hn4K+vRtWpYs0Rv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7KghyieioTlVDn2oYCl3eDvIX/degvmGKv8mdYnw+87qIQcjX
	Vn5+eHvhzQJQZJwhig+YsR5AxIP2mKofaL2GHP77ueEBHTjOVHrIoJ3Ijx090GgjKeM=
X-Gm-Gg: ASbGncsruSROr8ZdFjF6dUwX+ZMhheXlZQamDQhw0mNss0KcKW0JuOR3dopt4ZXtXZD
	ABz9TVfIKLLIsBwkx0d4TTbe3OJ9HBej15qSxFXCMOS+zUgQGtp5GUPHaQg+cNIW40bE2+buyST
	2NC4M79Ar+Bej6nputHOkC/1Ka792ttXHPy6vr5IESOYwo68bElbtIBOzTJdCelrUxuOs6dA7uM
	XkEuqnyNLArx4NR52X9vCmAL5cvgnhJMgNqqVz+OFnMBoWhJCxfn4496ktcFDSpXbod9h0FbOGp
	SvLAFWTM4OKxPvfMbLl8mO6LLS8gau+1Rgf1YXCIzoYJiFKgrMHpKqxxOiUkTdvKUypcKv9Bk+M
	Z/5YTFQLsYYgfqUuCTLNDugjyv5YEsptfbok09VWdvDdPSTUsDc6STRpTM6DF09UT15sAV8OIJU
	JyKM7nIXo5IbtmPsXcPjuyHHuy7ONU+UeDZOqfbJIu8JbrDHJvlsatYslBu8Zju+8=
X-Google-Smtp-Source: AGHT+IHmsjj7F7wNvxEVFVBnZtV/69ZlLKN5HcQfFKyy5s5hRiqe2uifjwwdJXNEwrLRP0KbzoOJGQ==
X-Received: by 2002:a05:600c:b93:b0:475:ddad:c3a9 with SMTP id 5b1f17b1804b1-477b18efb58mr17616265e9.13.1763544077488;
        Wed, 19 Nov 2025 01:21:17 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b13f53f2sm32651735e9.1.2025.11.19.01.21.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 01:21:16 -0800 (PST)
Message-ID: <fa8ddb59-079a-41c8-b75d-c7a9d40e7da3@linaro.org>
Date: Wed, 19 Nov 2025 09:21:11 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-1-1e6038785a8e@oss.qualcomm.com>
 <bd899586-f714-4d2e-95e3-6abf124e75a4@linaro.org>
 <37d0f89f-69be-45a7-90fa-347d6a3800bf@oss.qualcomm.com>
 <2d7ac7e8-ab69-44a6-b732-3657abf3a5a6@oss.qualcomm.com>
 <1f320bc6-ba7b-476a-b9fa-b5333f66530f@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <1f320bc6-ba7b-476a-b9fa-b5333f66530f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/11/2025 21:45, Vijay Kumar Tumati wrote:
>>> Hi Bryan, HLOS does not have access to those registers. They are 
>>> configured by the Hyp.
>> If that's hyp, please add them. We already have platforms without
>> Gunyah. Remember, bindings are defined once and for good and I wouldn't
>> call it impossible that someone would want to run that configuration on
>> Kaanapali some day
>>
>> Konrad
> 
> Sure, if that's the standard. But even on systems without Gunyah (say, 
> KVM/PKVM), these will not be configured from HLOS in the regular flow. 
> It will be done from TZ.

By the bootloader/s or by runtime TZ app ?

---
bod

