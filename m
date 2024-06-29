Return-Path: <devicetree+bounces-81580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB3791CCDC
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 15:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AE85B2153C
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 13:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EDDB7EEF5;
	Sat, 29 Jun 2024 13:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jetnY5ka"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E1B1E493
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 13:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719666028; cv=none; b=o1bjwpjVUtp/rg/KMTC3sbV+Lg1TNa7ROeu3Ou2UydsOBGlzRMKpHzZWRRnil3544Nuaee/edyHj2NTjrPQhXYutgT3H3L4gvY8SuxVSy7KIZSrzfEOQ2OZIfeAEC71kRc2jgMokTaDfvWr8ucE05Xxq4Jb9AYpTeZpa1tjjMjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719666028; c=relaxed/simple;
	bh=ot5a8rokzctOylmDMW7OKTocc2lhbdL+QbEkX/+xEOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GmEtwDcmj+188RX3L8tWIAgM7nZR8ByzGo7A0MTexH046R6Onvs+urATixGUdVEHyVfg0j3VdmWRgA1VqEfkZ0qEwlV4NLRlfLAF2DDtmGIqzclt4FRsmaNVEAssb04+Av7kUBmOrvT4mV/p+TnZrVvFk8s5JhPlcFZFVtMcTrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jetnY5ka; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-584ef6c07c2so3870595a12.1
        for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 06:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719666024; x=1720270824; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UEg/qecc9GOxiH4G4/QXpIKmp7IY8s4FIWFEbQvcIJg=;
        b=jetnY5kaZq7w0PoIWyCCpp9sSmuvfhNzFVBgcjZA7teXSacnkZFp7lXWXMP4/4MImM
         qUdcaqp0hp03v7CnqcBdRVrNPMrSqG339araAt0qRQ6+tyolQCp6foNMHTF5xsB6JFGJ
         pMyStqDNwuVnD+Rw7oxBk7T99RWB5YVqQqPuo/h7xftP6Y1/riBs3o5FfkCEpv5ppLu0
         pHB8sZJqw4PrXD63O9QK0d55YZBNt9qaf6f7pTrhx4SMGtWZj9LT5MvnEDvEUQjN5MWQ
         WE4fZjquO+olJDLGYEX+cQSIPu9axnWOL5RoibkJZdbC6dobS5fO1apGpwMewBmi4YKE
         iBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719666024; x=1720270824;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UEg/qecc9GOxiH4G4/QXpIKmp7IY8s4FIWFEbQvcIJg=;
        b=Q5SJDEh8nj3C3dZzvVdsxcWi5xiBQc0hFJCCQgldvl/izmkV3yHy0/OFw1ibX86bse
         GN1KU+uU7XYykqDLvVSYAWaEsBrgLmiEW5i+kSq+AE0ASxdSMrmdqjESVmRrqcWe/V1E
         skIk0U8H09fAsIkk6nz2VZNGAQpsDVdelywAiupVHQOtBPTbvgNqTt75e7XwLNzrftRj
         XB2c8Q/jX0jvj23XtoE3B46h1IvGAXm/KSRMHzwyMq4N8K6UXamrDqSgdFDPSPyEX4iH
         ijapoqvHym0mzej2JHRn8aVvW1/kN8YwegGRS275NXiHbvEKT5zLUyYBYiGXRLke1o4+
         zhpw==
X-Forwarded-Encrypted: i=1; AJvYcCUhEWrkX5hAozaubjX235umW6/nTPHwICUcqbVkCqmHVAjNzo3pf3gzAo/NhteahAnmCJpP9RncLXd1tO9Xzcc8aNN8gQtw5BpWQg==
X-Gm-Message-State: AOJu0YzdnU0+DmlFS+u7VuXsY0/Xj7T2WSpdQq8xYV/xtp6ZGhToJQ+G
	prCtueJhuDU0fjeA8AnWd8sz5LoowIVL/se7jJsvGtAFxpKg7yB5DPc4fOG+WbU=
X-Google-Smtp-Source: AGHT+IHkCYiVDJCqvGrXKmZQC+62RHHte3QlwzzTtlB3bLbOCJsrqfldJ62Q4CC196+iqqHX43vVxw==
X-Received: by 2002:a05:6402:5107:b0:57c:603a:6b2b with SMTP id 4fb4d7f45d1cf-58782a534a0mr770292a12.21.1719666023628;
        Sat, 29 Jun 2024 06:00:23 -0700 (PDT)
Received: from [192.168.215.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-58614d503a6sm2217159a12.76.2024.06.29.06.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jun 2024 06:00:23 -0700 (PDT)
Message-ID: <6c074d15-79b4-44b0-b0fd-698da7b8eb9f@linaro.org>
Date: Sat, 29 Jun 2024 15:00:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: qrb4210-rb2: add HDMI audio
 playback support
To: Alexey Klimov <alexey.klimov@linaro.org>, linux-sound@vger.kernel.org,
 srinivas.kandagatla@linaro.org, bgoswami@quicinc.com, lgirdwood@gmail.com,
 broonie@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, perex@perex.cz, tiwai@suse.com,
 linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, elder@linaro.org, dmitry.baryshkov@linaro.org,
 krzysztof.kozlowski@linaro.org, caleb.connolly@linaro.org,
 linux-kernel@vger.kernel.org
References: <20240628010715.438471-1-alexey.klimov@linaro.org>
 <20240628010715.438471-8-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240628010715.438471-8-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28.06.2024 3:07 AM, Alexey Klimov wrote:
> Add sound node, dsp-related pieces and LPASS pinctrl to enable
> HDMI audio support on Qualcomm QRB4210 RB2 board. That is the
> only sound output supported for now.
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

[...]

> +&q6asmdai {
> +	dai@0 {
> +		reg = <0>;
> +	};
> +
> +	dai@1 {
> +		reg = <1>;
> +	};
> +
> +	dai@2 {
> +		reg = <2>;
> +	};

Should these DAIs be moved to the SoC node?

Konrad

