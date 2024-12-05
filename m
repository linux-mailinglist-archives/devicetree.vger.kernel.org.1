Return-Path: <devicetree+bounces-127387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A69A9E54B0
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:56:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDC471882B6B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB4F72144D5;
	Thu,  5 Dec 2024 11:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gSaokD6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263C12139C4
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733399798; cv=none; b=tI8XgQ9pV74gO60T5+tRYqeYwoQR/t9b92ZemhiF9BNU0q7aJpysI8TSNeHZed+IFKTmTIiJIdksnOLXgV38TapwMwgvrnYXSH4Rld9Hl5WH1L48pFaniy4vlNRmjxLGb5wn0WEwTiXCwOaiMMMzbZq/W1ma9H+xIDLvEe1NYdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733399798; c=relaxed/simple;
	bh=jsU/m7SEIIFDJmhyxSYaMTRswrSMMAnmayMJmhdd64M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pNnf4+fAbYGcMtDW4DM4CXHiDs9OoqRIRu7fc+xVrMVrfgY2QctKNseewLBEJKO/j3KdSnmaLcIaWIt9k8+GawdjUIa4pQTF9gDRYLVc/jT0TieoG+SioL2hOTWvGsxSeG3YKXUSZNRrZOSqikzLj37L6p/AwH471WPW9wQquKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gSaokD6p; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa628d7046eso85434966b.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733399795; x=1734004595; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cs9RMDRe4jTFPEvDmtH/eSMnjvvfZudpLPQ72QFuTUQ=;
        b=gSaokD6plYvYPl0qYwYlXhoCs6MaskOz3po8/8lSMP0x37ixBX8teAApM4ujyuNtLr
         bmglAfIJ6ScmL03PxbSECkeog94hJKn+1z15y4Ejopom2bSdC+POUBubxF4jCcVVECkk
         zxD9DroYCHiAonPqmc0xj6AzevTjy6TEoSDtrppBmB7fjpssgiJeBwhqmb5eWPVYeb98
         V8sq9m72/LWtIIJ6BDnEgqr7fpBipOFxG9inrGdG0Bt5skiTxGkJUtmsUsqZfDjC2A8o
         VVaQVqVXkMPfM6tHGdEyArKXm4xikoL727azGr7mfe3Ni8Y0Ih2sJpPbDlJnaaDaIjyr
         2lGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733399795; x=1734004595;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cs9RMDRe4jTFPEvDmtH/eSMnjvvfZudpLPQ72QFuTUQ=;
        b=ixwRkJj45XTrBaNQfhaDdY0og2uqSLMF/K1KmYtpRKLf0ukpOUpEL79ADrzzPZsOD/
         oGQUiajmY/34xG+7Xqx9jO7opAie4oKRORPh7dy8jAkc23GvTZmEu5oABW+JkbbF8ETZ
         /G0C3QKRP0dmQtEWbv7HTlDqllP1vBWK1nRYJ/NvRgUzQomxZoBoVahG4ZO1d5uaI4N+
         Xiu6x48/3nMR+y1J36foUstZmY77sL2EsMEfpw+16EiIk9pgEADRyO+jTVpNmiYAWuzg
         xfXoEXg8GJHqvM/RSPO3/5PtgGMCEx52NTFrJ3FzuuZwZzWQlMbTUGq0cJDf1s7hLMtN
         099w==
X-Forwarded-Encrypted: i=1; AJvYcCWpl/5j6zjUgKwcl4LJH4UPfLVCQ5+kmZzJKR0W+BBO3rp8On2EGSicq94fGzD84JdwZMUayZSSkrhp@vger.kernel.org
X-Gm-Message-State: AOJu0YwsjB2QloMGEHe0kBxbWmB9yGzdi81rPIsxjOStibeKZ/DkGW5d
	jPaeliRYG+Z2kMxW+/bOGmF/ZVJUf028STbdrponQvzek+b3vcGszebl1kh/F5w=
X-Gm-Gg: ASbGncvpj4yXp+cqdoDOvXBgUu4zjL2uHlVe5XMhY9Vlsdg1NVcXOXBzj+SnsKxnN9u
	iNl8g10OggjTuk2CiYu1qhiOPC3+aau6XHPSOsrrokUAgiQlacr2uPNWIrABstzUiIpXXnvmvDc
	G8ZYc0GJZRO1JQbVGdUemcz7EWyrQNHeCTKO+V8xxZWtUnQTC3lUjEziupjcxZgOo08GlGzUTlV
	l/Stz2Z4IJw7PH0yfKd99P0nmBPbRA9VGr9oOa1QYxzoiB5cY0jfOvD9LXGxbQ=
X-Google-Smtp-Source: AGHT+IEWGiuqCz5p22sJv4oUuBbuzMg9J4wgAEUTDCD4f1ma8OOcOH3epiuHrkUATGhdMfNL7flyUQ==
X-Received: by 2002:a17:906:23e1:b0:aa6:312c:5abe with SMTP id a640c23a62f3a-aa6312c5c99mr28100666b.58.1733399795552;
        Thu, 05 Dec 2024 03:56:35 -0800 (PST)
Received: from [192.168.0.62] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa626088e8fsm81659766b.139.2024.12.05.03.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 03:56:35 -0800 (PST)
Message-ID: <2cb5940b-3779-4450-a213-fa766df7f406@linaro.org>
Date: Thu, 5 Dec 2024 11:56:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/5] media: dt-bindings: Add qcom,sc7280-camss
To: Vikram Sharma <quic_vikramsa@quicinc.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: rfoss@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 akapatra@quicinc.com, hariramp@quicinc.com, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241204100003.300123-1-quic_vikramsa@quicinc.com>
 <20241204100003.300123-2-quic_vikramsa@quicinc.com>
 <oko5qqysmxhicqzkwhkz54wvsmt64ba3cd37zkcy55ee77owbk@5z3zetfr2ejx>
 <eaffa633-c3a4-4924-8ba7-694b18bf92ee@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <eaffa633-c3a4-4924-8ba7-694b18bf92ee@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2024 10:59, Vikram Sharma wrote:
> Hi Krzysztof,
> 
> Thanks for your "Reviewed-by"
> 
> +        camss@acb3000 {
> 
> If there is going to be resend, then node name: isp
> 
> Sure, we will change node-name from camss to isp or camera (As its a 
> part of generic names recommendation as per the shared link.)
> If there is a resend. or we will address this as a followup.
> 
> So
> 
> - camss@acb3000 {
> + camera@acb3000 {
> 
> Best Regards,
> Vikram

Please no top-posting.
https://subspace.kernel.org/etiquette.html

Shouldn't that be isp@0xaddress ?

If you are making this change, please remember to do it in both the 
example and the dts.

---
bod

