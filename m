Return-Path: <devicetree+bounces-161327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 48888A7362C
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 16:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 314F27A683C
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2C221A239A;
	Thu, 27 Mar 2025 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bdCtqeDj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D0619DF75
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743091096; cv=none; b=BNGNFVNOG3FXMskIyTk7Hc/LG0xKxrTpFg/MfmQkxmta4QhIe6e67LZNkUWnq/cIowZOCTcNOjJvtkCZV7ZFXupoBsNtyNayDEchJqd5vmkQlijOxrkrBvfRxopWRkjd9fZ2hyHPq4LpyDpapMpl7zvOlywMC2fdwafo7N5MZUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743091096; c=relaxed/simple;
	bh=62dvcPos5ihceHF+L4p/AkidVrabWcrJTC+kLST021w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=osfacM8PpHdPmGy0CfNhDuShq/8QvE3wXuYb1aVFwjd7baXPJZG0QFxbLRG+ciGTiiOQJqX/j9RLPpBy9/ngAgvWhbr0pog8k07Sc15BhR6hjuDSRjguZ6FE9xpyp9IhA4odwNmToeiDtC09R83M8g6I2pWI0rGEw2VZWpDUEQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bdCtqeDj; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so626496f8f.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 08:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743091093; x=1743695893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6HKdTwdl8TGxIL8t8Lj0CMiRVJonmqGWdrgR8+tODvE=;
        b=bdCtqeDj2cv9y5psk3g1GMfu/YBw3rOO7/P9q0lFTo3pqEgH/5g0tFC4fDPkjGQR5b
         +P9OY+yFU9pRdi4SolgFPUnaXRSik5z22pJwuyg6VTn6pb64FkSi4rChq5sVVupXo9Pt
         Z1w/V+cQij4GIEzuKF9NBIIJv2lSfxJWTFyWeEfD8C5OSUF3r1A/59mEnoknYMnJMBXt
         SBOZG35K06fo/JjOLtGk90hMRgZbOSqZ+li9va2HS+7KZrn1V6uSZDpuurDCsPPk14w0
         KP8HOW0/Y1ElFbOnsbyv/ia10QjuZXgGD4wkvRwOXz/Ajda+CO2xjt2vBePYFn87WvGr
         sR6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743091093; x=1743695893;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6HKdTwdl8TGxIL8t8Lj0CMiRVJonmqGWdrgR8+tODvE=;
        b=UcjlbegnX+PFGF+1vVNqX6+QAKfHcTboQ/2FwVNTjGaw9d2fOXbcepsl1nICsDqIrW
         0NsUouch15//M5Dw/DPhlzFeEHHNPbjJ1v3kcsazp16pJFFFml97nTH7khb4TfI5Aao0
         FMrozsauVltM9UehoexLsVywTQUbtO/3tjwwzsoDWlSSGA5cBvlwPjrET+krL5EsBNdy
         QbNuItIXIdpv0REdiEu40bD3xic302X//lTLVC6Al+bDNXlgONPDXidC6VVG13FRl7p4
         JSiq4G4MwBylToPUQf+KZPCH+gvF2R2iI/56ih7Zd1R4nhK/Przkaw9Tce0azCLoi+64
         nV4A==
X-Forwarded-Encrypted: i=1; AJvYcCVi2rxVbabrGf5IiRNUUpXk/0N9fjK2i4P36hpI31YdQkeJzjoCDxI9bDZcSu6GXb72qvpu0vIOAgFv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxeq/ti4xr5cTvxRo16hf6O+21WC/WRcHhQPMDLdzFy1U0NIldL
	aCACkCWbTUMN7DfcQkBFRe5QxEWaQjr76N1sC3wgOId9Ff129KFHGij1MGHKdYE=
X-Gm-Gg: ASbGncsfRHK3NOEw7MyxYdipUIbzuEI/DqQeJyPNlkyrsDHWVhIE2pGBdCD4ohoIUMo
	DQ8n/bJdtmLuESunBi964RN2zEaOQhQf1tTrloERKO5tpbWwHe1pwbl2ca5TAayf0cqDCy+RVWm
	/KCk8iUU0dKzoWkVcNZIm9/V9qQskzPwolIK3O168YmIGgiSB7WUG3+CWcDC+X1uBizCuED4HK9
	M4Tdkj3Y2QSOm/fr1KVWbRxO8JBQQvvZQKLaXUnIBLnaiRwPEEsrLtp+H6+G/tYH1Vy4E4C4oZk
	9WhKDxH2CAXgMUMlq68PRk7DQAoWfF0AzD19faHZyqJQq9vwOjrSucHXq5z5c/td6lc0Ng4WQjG
	YUc4oGnZ3Sg==
X-Google-Smtp-Source: AGHT+IFkFyIJlToRG/+HBeQSZWc6JEkWWRkbsOVXttweEBRHe7pfRt7UyfAjtF97SdSKZ7a2YDySMQ==
X-Received: by 2002:a5d:5847:0:b0:390:d6ab:6c49 with SMTP id ffacd0b85a97d-39ad176bc4emr5053689f8f.35.1743091093192;
        Thu, 27 Mar 2025 08:58:13 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d830f5708sm43269915e9.32.2025.03.27.08.58.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 08:58:12 -0700 (PDT)
Message-ID: <db2566c3-d9e4-4c16-9389-0406de288d7d@linaro.org>
Date: Thu, 27 Mar 2025 15:58:11 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/18] clk: qcom: common: Handle runtime power
 management in qcom_cc_really_probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-5-895fafd62627@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250327-videocc-pll-multi-pd-voting-v3-5-895fafd62627@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/03/2025 09:52, Jagadeesh Kona wrote:
> -		return ret;
> +		goto put_rpm;
> +
> +	ret = qcom_cc_icc_register(dev, desc);
> +
> +put_rpm:
> +	if (desc->use_rpm)
> +		pm_runtime_put(dev);
>   
> -	return qcom_cc_icc_register(dev, desc);
> +	return ret;
>   }
>   EXPORT_SYMBOL_GPL(qcom_cc_really_probe);

Doesn't look right you're missing the put if register goes wrong

	ret = qcom_cc_icc_register(dev, desc);

	if (ret)
		goto put_rpm;

	return 0;

put_rpm:
	if (desc->us_rpm)
		pm_runtime_put();

	return ret;

