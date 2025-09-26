Return-Path: <devicetree+bounces-221810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F930BA3181
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:16:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DACF4189E193
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B851266B41;
	Fri, 26 Sep 2025 09:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ck/i/8K2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CAD2236E8
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758878181; cv=none; b=gw+D5/fY/Ai2FOHeqiviU1KXelD105YasDI7/QlGs6sofB80ri1QWnzglX+wDV2N73E+lPleAgQXau+FjMToSLGX6eSm5jYdXMFFWVLNGrWiVrmf927/FEHm5Be1SWJatu4WSGIY2BiViMbCtape5q5yehpxKtBL82kBk2bwtvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758878181; c=relaxed/simple;
	bh=N5Nn5ASoUV/CLfe1qwCVq4qrqLwYCl62U+RpSnol/00=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PKQSbqg28tbwRgoRZEPvpB6KSEmaqAhulENZLis/bF+Zr8CiFOtTezB78/+rf0Q4Ao5/o++/QBqmp2FsP2syh4w+W0+fb9UPDxrK7I+y74AcibrLJZF6bcIa+ZD0xEsmzGnfkTz66dHUsB5ltdmJJuHIwmznhQvCkDMbpbSjrks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ck/i/8K2; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e34052bb7so17724305e9.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758878177; x=1759482977; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CYShG4odej5vYKThNx262uoG6FdT0LyVmxecSIMK0Uk=;
        b=Ck/i/8K2Ewnx98L+wvIm4R8/2kMTphZr33Pqa7U5ZqTRQ4T0IDNz6Nx1+SQkGJPuKe
         ypN9xR35cjX+1tx2U7nFqCxuc3UWDgvCW7IjdN5sTC4mCHT6gSH9pl1hazQMiSNDpocf
         Js7yP1qILy+YOJuh7DtZcKyoW3YGis/3RGWEWUI5pVWtNHKvIwhY2ixNOrR6GzAHmoZF
         1gJB3GulmFjLTdLuMv59DXa2jN6VkbpjiesbPBIMi30DkJo22Q0bZ5nZhd8BN/gwN6xV
         wzPAFI0nDlqYgtqVWa9BMjWhXR4/Z51hLi2dfu++tEHb9tlEpqY0TYbO2unjUtngHHGW
         LdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758878177; x=1759482977;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CYShG4odej5vYKThNx262uoG6FdT0LyVmxecSIMK0Uk=;
        b=dHgzTz8fx0cqdNwAR8Ey8hm937RAJAyGpPH2mm0bXsvVYqyMrSaJ8ce8JR3/3GSWHH
         9/G3llv7viUPBX7ComH/vuVrPDNloXygyyPbwwG37E0fonby9YpQP+qYgnx9lxTzv+MW
         c/e15zmnbNUTahRBVGjlcS3Gb6FZmxCF7wO5YpGU7a4m4FqRJuKy9tthfoS7XXwRL8Rd
         YWPW7/J43PBKdTwSqewPL2SbfCLONLeuYOOsVS9o5zTHOcc0NpihmydGk2UyNSydFztY
         ASYarzqknt3trdJoUgAUWeajLofP0+B5mOhm5TFXxSCFcVv16U3jmJP+a5rIhTKydR89
         qtfQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9KEl/MEh6RHx6XbjeJALLqSvH2ZncBH53HMtG+0vstSN+ie0JMh2u3A+w3xfaTm+alYbK1RkseOD0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7xvZL0G2UqYHX8gYWD7RWSDHHAuo5a8Os8+OnyL9J/2p0d94l
	ZcWH28MbnGs8pTgcxyIaa4uQth4HzZCBK12WwfYYeYPffxvQ+Eta1ISrwVOqu2C4XBA=
X-Gm-Gg: ASbGncsSz2tu9Fx3L67hmu9cPqzPxdqTRVsFqmpMtOhZJiCcbCA6b5j1GYL3VgDUMaS
	vGLWKp4SCQg48ejKgsBCu69jc9sudIKBAzE09wq/7I59KYw0OVCiPKWW0j0DVzAlLb+XT2agZvI
	6oEkqMdRz790h3CYUMPKgSb+NXx7/V/xyj8w0b8SYUgokdBFrABFLQHgxAg/xOpBDVVhtnuzjyF
	JsGY3ZhXPqG64zKdpgCl0pQgXtbanSrhxvAH2miNuVKAUUYVvaIQFdHg+kNvBIh/l6Xqa+cQiUa
	zgxFifx5/3YoP1YklCVw5pTvBHdFhCJ78Bgj0j6vZINb9LQV8dqArS0db6CbNha9UaZEPEvMwGN
	pkMQDD8pKGvzmAvngxDQ7gXpfW+ikNJvU
X-Google-Smtp-Source: AGHT+IHWIpWJkFH6MgSaK7Lwa2sAdlk8StsGUnX1BeyXoXscm4t51npqgFevzyhLcqPW6OMTyJKXjg==
X-Received: by 2002:a05:600c:8b33:b0:46e:1fc2:f9ba with SMTP id 5b1f17b1804b1-46e32a0d5e7mr75187965e9.25.1758878177511;
        Fri, 26 Sep 2025 02:16:17 -0700 (PDT)
Received: from [10.11.12.107] ([79.118.185.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb71esm6152127f8f.1.2025.09.26.02.16.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 02:16:17 -0700 (PDT)
Message-ID: <ec25789f-eb79-4a52-b93a-3005756cb572@linaro.org>
Date: Fri, 26 Sep 2025 10:16:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] clk: samsung: add Exynos ACPM clock driver
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
References: <20250924-acpm-clk-v5-0-4cca1fadd00d@linaro.org>
 <20250924-acpm-clk-v5-4-4cca1fadd00d@linaro.org>
 <798600a43825818bcf828da7060f38105f7f3225.camel@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <798600a43825818bcf828da7060f38105f7f3225.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 9/24/25 5:00 PM, André Draszik wrote:
>> +	ACPM_CLK("b0"),
> The last one should be 'bo' (bigocean), not b0.

Oh, yes! Will change it, thanks!
ta

