Return-Path: <devicetree+bounces-177521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7375AAB7E11
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:34:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7583F3AA82D
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 06:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E706128E588;
	Thu, 15 May 2025 06:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OKbHql4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F83282F1
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 06:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747290854; cv=none; b=Wa3vqNd6R4Vp4XpA0RqvxjJC0o/XkQadUMWFMZfKnHWs+XU8Sv3/U7UfMgGbVXg/3MnODbUHDFkxy06c63cIJta1KgekYitkdafq/e1cMZwKksov6p/dvCt0H7xx16+eCbmQn6rU/avKSw2HbhI3ASyMkjy0hLmJ36T53ZykgXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747290854; c=relaxed/simple;
	bh=UCpHFms/9fZX+PC3YHyq6WBmI7oksVfgK9RI1AUF438=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QH2TqjX7BoT7rJQV2aJY1mDXuvla8G1PZ6qqi2Fhx2+d/ERA870s845/IEFjmG9qfZu9ONYcYPWa6oTrSL0gfs7i5d1iMvpivvtUGlsvN8Sz9uHp8S/ZxBHl+4haZDFx3J/omhjsr39PWzJ0Z/rP1AL1JtC0ENdWsiXr/rM1lWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OKbHql4N; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so6019695e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 23:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747290850; x=1747895650; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o/T0UCXB5vuqasYwa49l0chQi6vqaR/vGdzNl5dXsTs=;
        b=OKbHql4NjfeTykc17uNo8rHZ2OMXQ+2CIImGuBJeTJh9rccamrjEdgAxVD4n/UQ8x2
         2tikjFXC/bffpnk0gE7Db/exYYQdXMSxjdXPJeomdyKHZ5VlcBFE6AUIj6wGJFdKukMf
         1HQ68YJMF8Qjh/DGMziLgVjJz1RClLyBrC+m+SiE7Cku99zcz1gL/cKm/dKMVd7y1Vwp
         9q4mzXR+OjEwgt36BLnK3LpvSQWnOm7m9jDanrc8E2ikFiqqx8/P4aQpCRB4VeZIkskl
         lSoQs1hO5wPmn7LNAvjzKPLELTEAYFoMoRQQLdYm+oc0/EorSvTnHnaN7cNVLLHzNcQt
         yH7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747290850; x=1747895650;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o/T0UCXB5vuqasYwa49l0chQi6vqaR/vGdzNl5dXsTs=;
        b=W1fUVDcxwf8fcn4ubqWc/uT2dQMSc/t2zwCfs5h+zGG+SpSGt7kiY30lpUPJReTskg
         HZt3xtv/3OS8enc5LLNV1G1W71k5I/WPQdgq+2wlsGF06WIkOEdiXLYX1m6RT7FFnF/N
         by/dHULROljJUNsePZWsZTj+L5/1tucXH79tfy0bqX8alaBLO2U7GZJwTvun2sRJHsI7
         0JOC6QbwmYN/AV4G4e2JA4m0mbnAvPGfpCfZ9kq/LbX0dwBwY+1Qhe45+u62vwKnmH7r
         pnGLqKqb+CQZjhw7QCmbdYhOwAmtvn2IAyYQjrNvyhMd1SdYP6xo+EN8q98Dn96Qys2t
         0a0g==
X-Forwarded-Encrypted: i=1; AJvYcCU+tQsrs73CM+YWWNF/8QchcOdWmML+h91jI+aH9QikHpeKI7uxxT2U7KxawPT5kTqTVj3/nAgCyx0A@vger.kernel.org
X-Gm-Message-State: AOJu0YybW/9zBmonb4rNZSfnqzc7lHx0SB/ceyuzN4xS64z/8MeEsvj6
	KfkJ5QBEq79WcNDJ1Ta/NbKpyqgQXnonTfC434T+HX/ZeamEeM5vSZmJGIOawc8=
X-Gm-Gg: ASbGncspIaV0dK8DdXt4pDEdSIkHWtve2VmV9FINo05Mu2XJQOo81i/3gPrXm0hO7Bh
	gIoR0AORdg73rbbPv/i2pRFnBYQjnjqwtaWjiZxSJiUrJYvGCC373slwFAkw5amgATpAJVjTpmH
	ojcEOPX63u4k+0CM4axy7aTLUZD4+jygNb++VSz0eBfWroN7IkGhiP6SCA4sEHP4855BkB4ZosO
	PwPso608q1yc8coFasGb0b40RrwwrN9Lu5XVPZr0OfYbiYlL5moCwK+jLWtQMuHTaf/WcCvSdeD
	FHmXNRPAlohFjt2XTIeBJdG9hWmKGTIxk2wqsLsh/lNEKqpjf/BnSDLwco+2/5YKZfpgHc4enT2
	R8ZTliH4mPvu3
X-Google-Smtp-Source: AGHT+IGi6GK0v/GAXDSDVd1UWmFfUHkAK0muwDMNzaFEMuRS6/TbSssIhPYz9lFtq+QsKOZ2rwrtRA==
X-Received: by 2002:a05:600c:a0d:b0:43e:a7c9:8d2b with SMTP id 5b1f17b1804b1-442f21684a7mr50470315e9.24.1747290850242;
        Wed, 14 May 2025 23:34:10 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f39e8545sm58519295e9.31.2025.05.14.23.34.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 23:34:09 -0700 (PDT)
Message-ID: <37aeea50-e149-44bc-87a8-9095afe29d42@linaro.org>
Date: Thu, 15 May 2025 07:34:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/18] clk: qcom: common: Add support to configure clk
 regs in qcom_cc_really_probe
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
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-6-571c63297d01@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-6-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/05/2025 20:08, Jagadeesh Kona wrote:
> +		if (!pll->config || !pll->regs) {
> +			pr_err("%s: missing pll config or regs\n", init->name);
> +			continue;
> +		}

If you are printing error, why aren't you returning error ?

I understand that it probably makes platform bringup easier if we print 
instead of error here.

I think this should be a failure case with a -EINVAL or some other 
indicator you prefer.

Assuming you amend to return an error you may add my

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

