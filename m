Return-Path: <devicetree+bounces-52598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A0688762C
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 01:38:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 870D91C21687
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 00:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40AECA48;
	Sat, 23 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZEZOa/dm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4227E1
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 00:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711154296; cv=none; b=jerQQd8NHI8nWPrP9oi4x6OeaiuhVNHmU0EMJIrToA8/H715IcQL/5aEJiP5HAS2XPJOeb+epl4L/N0sEudpH16LPYbXplMviq/QTME7bKIflJ29Pa+fp4aht+kYaOlfQnb03HlhtuAY+a5Wd9YBkP+QbaoFAkx6lCzK3+bOX2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711154296; c=relaxed/simple;
	bh=AE3xnRVlGYJCyG8Do9Ao+NxdpxAAngAQ2OdxeDa7GRA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vg++1zJ9H/OlzrHCsjQedVzxsi6F6FdelozkYgpRZz/HbWNE4+9s/F54G+dnHan5aVA7Db5xVbhCiJcHqq2g2OqitstL6FcWmSrFDhctygD0rInbgZmqZekDAD4EjSlCxGcIewbVa0LXXPQxku6K6gOLZqsEZUvufwIvqWxBLnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZEZOa/dm; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d094bc2244so36415861fa.1
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 17:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711154292; x=1711759092; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YXYbUIcUaqbCMNnOwgX5pVKCDFhUStNAb/+Z+Tw410k=;
        b=ZEZOa/dmtjn9VAb/EWXKtdD19ATrUHLVFk6MHX3djlyaU9M+RhRsuiEol8no9W5Ovk
         9+XJ0g1BzPfBrqY8pmHP0vsZRpg9LbbGm+4aHnhFwQbDqmDTgwU8ryuq7np5DfPpGr/n
         Ztqnc0TwCvy+k+id2c7l+qDUVYvY9yZ1KXwKFTvOLLq/2R+7nt9O2gLk+bvXkUbIdkmP
         qAcvRi7yg8yVTL8uTXKFktuUGXUWaLigjiRayilMwwtyV1tyYKANVBvgqmzw614hOCQZ
         ML2UIQUVS3ZHFFngk+dwhwlNn6jr34kC3nS3kHVmytCCkhDWjxQHSAZOsGfhlxEx+HSL
         cnfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711154292; x=1711759092;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YXYbUIcUaqbCMNnOwgX5pVKCDFhUStNAb/+Z+Tw410k=;
        b=BASC6qKEurpIwEAaBbaUBhw/fx+rz0VHaBazAzAdk+b39QjEDNbPHv+K07lv+6dWx4
         MKIa7E9PMdYIEhEDCmzm75RB2VqAAM76pVaFX4jTUXzyPcfm45C6pepQv+1eQBW1J7IL
         Yurt3doMjzLFF/z0/oqgBpPc3Q9NlxhzfeBz/C6aodCjkKFbO6AttgMn3DWoq1xb0785
         tp+yMAtSiLTdKxJ9mcslU4FQKXUt4YBKBwDcT7MyitwYKf1rxbQRz7SG+QY/PkwkatdI
         L96MCHSs/eKbwvulie9GuExYBe0rFUsttZTKYwi6fYfr/lgPEvCTUcdsU4CHpxeAR1KG
         xRSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeCfpyw/BR56hRUScXMqdt2HWYNZrplmdrop8MKU9cDTX2z0Xy5YmCCAlbo+N05f4eYwqqlDJmccKyYLlkX3Z9o9H+A4Yx+eqijg==
X-Gm-Message-State: AOJu0Yy2xr1YQJ1jwi/iRXJ52T51IMm9/jsPe43/8K43GV0t4iV59D4S
	yAKpvMkMsLgM/0FSXUC1SUQe00IpCVmNVCFiWbQGYxuDxHwGv9AV4gaPXkEpEDc=
X-Google-Smtp-Source: AGHT+IG7poEMyw3iZwnRApWq19u4JHkklQp1U1Y040GIjkbqTKczkDnbRhutORPLxdcbBTIc7LACIQ==
X-Received: by 2002:a2e:95d7:0:b0:2d2:6193:6d53 with SMTP id y23-20020a2e95d7000000b002d261936d53mr700422ljh.13.1711154292482;
        Fri, 22 Mar 2024 17:38:12 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id x18-20020aa7dad2000000b0056b9ba7adecsm341157eds.93.2024.03.22.17.38.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 17:38:12 -0700 (PDT)
Message-ID: <1e8dbaae-8fe4-455d-989f-aef51d72d42d@linaro.org>
Date: Sat, 23 Mar 2024 01:38:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8450: Update SNPS Phy parameters
 for QRD platform
Content-Language: en-US
To: Udipto Goswami <quic_ugoswami@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240321062834.21510-1-quic_ugoswami@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240321062834.21510-1-quic_ugoswami@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.03.2024 07:28, Udipto Goswami wrote:
> Update SNPS Phy tuning parameters for sm8450 QRD platform to fix
> electrical compliance failures.
> 
> Signed-off-by: Udipto Goswami <quic_ugoswami@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

