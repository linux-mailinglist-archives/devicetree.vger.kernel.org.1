Return-Path: <devicetree+bounces-93548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BA89516C5
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9AD16B22D12
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 08:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531CC1422D4;
	Wed, 14 Aug 2024 08:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sjaDuM/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A917C14036E
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723624820; cv=none; b=tzahuNlQzMdXdtLl7uFF1F+1LR+TDBqGKjIGPBexW5p+b+fyp8F2Jj5UimIo26KHSCAHaTV3wAD7xFdLNn99Ky8HfoZMoNkePDpXHAHpdfJfLrd5Awen/E2E+lcd7zdmFSYSPIJZtr8+RYNkGYA0ZI99spMK4bQWHQqmEsts8pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723624820; c=relaxed/simple;
	bh=DVbdr7AanZ27U9ijojEgtJoKR5IMhUJXo/vEn3/GQvw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=etfA94TUgA4L4FzuXdBOfoGeYoCy/ahJLk2Ir8faLBxnOAVEA5T6ytux4c54pE6jnfPxm6Mg7YjRRixHepsLSutysX7zGhSRDCt3SzubJsSsc4RKLuzoIZNXAWgNuZ9UPApBsdG6KqP1wN/u99DnowNlRkOpbpii4mKyDx/Ef2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sjaDuM/d; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-367990aaef3so3559514f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 01:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723624816; x=1724229616; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WaeWWCopdnfx9jqWozyufPs4aDdtkzcEVh6S88PN9p0=;
        b=sjaDuM/dMQbqLsRlnNax8QjVhuJhUyQn28EssKeibZXrMddQunuCOPz7xrIflemoNK
         ix/2YRdFNVCPPsbBFlZgM+B9HDduYlILxsOxKYl5J9zlHgQpcp7OUh5rc05dKORzpduv
         IQ6fF3jW30tqqvviw1ikeGld2Z2Ee8UKGhnBE04k8FNqEjixiez6JLEnkjwkCQGX9qjI
         CmxU7sfWkj5J8Mbe5WZ7vC540ruYJJ0VdfyF5ntq5gLZOS1x4TTlujhiMgoCX8fzI8Rj
         eCFDBq3QnRv/LQnTqJgy20LgrkZyHkYaGWox+lZD2KdaEMKvI74+RDS6u/lsyz4kkvVt
         ML8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723624816; x=1724229616;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WaeWWCopdnfx9jqWozyufPs4aDdtkzcEVh6S88PN9p0=;
        b=FcPjggZPdPH5dOeIlRaCXVN7ebzJbjGyYnohV8W1JkPegFN8CB0+5AS2xGuaZ/302h
         h2+FMjIJXktQirweqPtO70xB3tE4I03O8Qh3sf7NTNkUp3FSPYIvkPgrGWu7gQ6k9kdX
         qEtZKRkEwLicK84H8J2EFh0u266gui+FPJL9N1FagBB8CCsAfNFxj/kKh95w68yslV+q
         mgD/qglGYVdwfsioRW9tz0JZrXb3QtEbwfOzJinTK6vKUTSSs7JboJReI0kvRiTCGVvm
         SdeT/U/sfIW6Km5auLU3OQRgcR5ylzwgUNeHwPSqTmpqp1ak9gS44PFhiYApZOW2ZTID
         uWoA==
X-Forwarded-Encrypted: i=1; AJvYcCU+A/EkJ2cTSZS08sgPHNQ6ptE1X7ig+yD7SzFgBKNiRNU7QVi3YCnfjLhfNBP1+n6eRkpNnmtcYGCe+ux9w5kE/UgdgGIY4EqLvA==
X-Gm-Message-State: AOJu0YwhhuoXz1wy/9EUyNEh9nGgbveZVJKmASILU4Fk/dgpS4KeXcS/
	TWI/kAaw/Jb9rcRm/J8GeGMw0pFUi4QP5ewD/luXKsNuUreawoC7tz9It5GwN9E=
X-Google-Smtp-Source: AGHT+IHrHFeh+5ZkoLxrh4JYHitQRcU8I+BlGBcaDvHfA/mRypqzGEr2lZtlq2RcKbQzVws8W2FBuw==
X-Received: by 2002:adf:f9ca:0:b0:368:4e2e:7596 with SMTP id ffacd0b85a97d-371777c60f1mr1429656f8f.37.1723624815742;
        Wed, 14 Aug 2024 01:40:15 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4c36bb07sm12382299f8f.5.2024.08.14.01.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 01:40:15 -0700 (PDT)
Message-ID: <bfb6d579-44c9-427c-aa79-8e5d9bdda0d8@linaro.org>
Date: Wed, 14 Aug 2024 09:40:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: i2c: qcom-cci: Document SDM670
 compatible
To: Richard Acayan <mailingradian@gmail.com>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20240813230037.84004-8-mailingradian@gmail.com>
 <20240813230037.84004-9-mailingradian@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240813230037.84004-9-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/08/2024 00:00, Richard Acayan wrote:
> The CCI on the Snapdragon 670 is the interface for controlling camera
> hardware over I2C. Add the compatible so it can be added to the SDM670
> device tree.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index c33ae7b63b84..87f5e5bdbbe7 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -27,6 +27,7 @@ properties:
>             - enum:
>                 - qcom,sc7280-cci
>                 - qcom,sc8280xp-cci
> +              - qcom,sdm670-cci
>                 - qcom,sdm845-cci
>                 - qcom,sm6350-cci
>                 - qcom,sm8250-cci
> @@ -143,6 +144,7 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,sdm670-cci
>                 - qcom,sdm845-cci
>                 - qcom,sm6350-cci
>       then:

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

