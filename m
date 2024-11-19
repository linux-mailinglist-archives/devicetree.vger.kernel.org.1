Return-Path: <devicetree+bounces-122866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A949D2950
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 16:14:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9A521F217B8
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 15:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 856071D0492;
	Tue, 19 Nov 2024 15:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PaF7dWVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDB01CF5FF
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 15:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732029177; cv=none; b=TtqQoUPfzQBGg4ZWwBXo4uUrrqWtRkHDwex1JrbGx+xy+moDWDLKVll1jI0CuEoDuD1EBxrtG25dHjcztpFbSsYl58P6BLLZ0IqDv9qv+RWidWXlnfiAmJWoo2HW4kJUE2jXXrsVpxcAqZG1FXObXIWdbf8ru4J0NzkMlfK9FOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732029177; c=relaxed/simple;
	bh=mrd+ef5omKk4kmj9QBZVm/PCvmTVB8GvlJMDSSFnMTo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OclVpqtR/Cv0lfoa96c9F6h05J88hVjjIyUcbWDSjE7U/F4Gn0jDNPy+aEnSneUrqdyTcY0bhJySMZaQ9GiA71/v6huK+IVN/BVTvPdSAyOgHQSnhTV/EpyS8dI+3s7fgcMB2TbJYOvO/INf8xg8HKwaYtzXmrhOyINUh+FrWN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PaF7dWVh; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a9ed7d8d4e0so513645966b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 07:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732029174; x=1732633974; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1njkv7AEQYLprfmPF/SUU/CkkayzBBsZYgpz9cUBCwU=;
        b=PaF7dWVhRUDFt0DBKnN8OIYMtbFvQsDtEp1Kh0WGPRITJKksB6PsoYctE9OxF5IqEw
         6olRM22/oXj+GCo7ANZNieMX2jvLKs2COEo91TbI0GTx82RjgUd39etotXPZi6KnD3Wa
         I4rA9tili4UprJnKZsC9L/CKPFuGhMVVZJAZ3MB+Q6D5Uc/s63uqncYM4nt2WzRMyjDU
         CF9wqiG95KMrKe1z215sVh+DC/WXg6rB5G2KyaPy8klkv3QFGCTATmu/FsVAY7pqnHV6
         +OHEiKKWOeZIPJ/ERY/H04rEfTBESRmGROEX0AmjY1DHq67XjCz4DxO5XoSNwWfCqJHD
         gPrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732029174; x=1732633974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1njkv7AEQYLprfmPF/SUU/CkkayzBBsZYgpz9cUBCwU=;
        b=sQY76oqEwl9o5zlDY6s5+dnnGDssmMv6D0t2cHdMgL+pmdcP70jH6QlUUzFLN1xlme
         mOUWMtfMLx7SonWbVPCPceUFMjXw1w6o7IKm1HMSGyAaor/EHZGBBSksJ4YZk82bVrLp
         rsYU2keeJ+jKj9rdQbiEQXyv+JXSz0vvdj+YoHiDY1Jlsln4eRHXLOidcP8qXhZtfzW+
         xNysRi9+AUwPQI159UCj2f33v5FaCWh7EIoptaCKZH8ffkTyKzZWvE/WCweUSfCWcxGf
         CoI6wh0mCFl3nTAeuw+XYT2wM7hRFLkKJbmWvWSW2Qou5S+K2a4FaJ6mg1a8ZLXJtf3/
         +x+A==
X-Forwarded-Encrypted: i=1; AJvYcCXp19a2Ce/+aXKwcEhNc8B1ksTZNyWn6Fa98r11U6MpNg+WYrVNGHvKCz3DqvUyGQ70R42LFjAgp34R@vger.kernel.org
X-Gm-Message-State: AOJu0Yxbv+iB2BCJpOwWsH3qo02YG6LrnDI7DQLiH05EcBzR/8/XAEuV
	5MBLnlVPGvu2YYyXSA8DpClV2k6Q+cgvchM21HEdgs0qKUSObQWLUa2zTCu+Qhc=
X-Google-Smtp-Source: AGHT+IHpPhEpx8FCZtw2jo+T5uqwAc8vudJk7VsZfwZwUsidD+p95qcWn6QPKWI6Rv/z0jxfWiKNDg==
X-Received: by 2002:a17:907:a0e:b0:a9a:3da9:6a02 with SMTP id a640c23a62f3a-aa483553f62mr1583241066b.60.1732029174122;
        Tue, 19 Nov 2024 07:12:54 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df779afsm658092866b.85.2024.11.19.07.12.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 07:12:53 -0800 (PST)
Message-ID: <6b7bcf86-9bc4-4608-9f2e-b14c17e558d8@linaro.org>
Date: Tue, 19 Nov 2024 15:12:52 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] dt-bindings: clock: qcom: Add second power-domain to
 CAMCC
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org>
 <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-3-54075d75f654@linaro.org>
 <91592bff-4042-49c4-b884-8113d0759a3c@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <91592bff-4042-49c4-b884-8113d0759a3c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 19/11/2024 14:47, Vladimir Zapolskiy wrote:
>> +    maxItems: 2
>>       description:
>> -      A phandle and PM domain specifier for the MMCX power domain.
>> +      A phandle and PM domain specifier for the MMCX or MCX power 
>> domains.
> 
> It's a list of two phandles, not a one or another one. Can you please

Its two for x1e80100 or one for sm8450.

I'll find a way to express this more clearly.

---
bod

