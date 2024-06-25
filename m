Return-Path: <devicetree+bounces-79912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F90A9174B7
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 01:32:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3C151C20CB9
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC9B16F91E;
	Tue, 25 Jun 2024 23:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z78FBswI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9632149DE9
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 23:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719358335; cv=none; b=ChWWZnd/E6O3Jq+Cg5vcs/CEWSTf5yeGfUWS4XnZo+ukA/Wg/1f2w5MVEd9+5micobFeVzsnvfBcPIzpwXqEdY/2UBXBm5XLdmgHJ8Cngw1W224lHYT49xWP5yLyOoedsDWbWksmN+Ui4B9l1Wgd04uw/qS5A2cOHk9UaL1h39M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719358335; c=relaxed/simple;
	bh=Jl+AYBC6QROVejlC4xoA8yOgyqVkmVO3/fE4Rt05vPc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F2NZ24FYNmuMGJ7FoR+6yzmsgnNRVi9j5ONYcvYAAvPeTw3cGm9Tsu5Lt7xgM8Tb/jX8guVgWCGyW/fW32pCKfX9COvHSuIQxfiZo5LnXnkYI2GXKi8nUVHaN8480AEAsp++3L2mJ5ZCdqmXEKai4fomeU/tmCuDPxuOi5/ClVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z78FBswI; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-365663f51adso4519795f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 16:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719358332; x=1719963132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lbrH75vzXbeWZnJxQfr9eSE4laznv43BbrI6ljKq96w=;
        b=z78FBswIShba4B7nlwBTgKgXkqb5Sp/fmpkU9Nkma/yI459LOxtVZA8NA7KdvV9j/B
         e8iMq9uK9wPvO7GBdGC5gG7hAcC5gAE919gNTv5Gl0yWpV6d+LwiLDywwOD4lP9ZvQb1
         OlCbQjpOFHtL0wU0UyjSBmXHAo5CWm8zZuSYXxJBapK+20AECStNz6zmlusHhJU3GJL1
         DE+DpFdJ5nDOX/0wzUttvBjjeu6BwkNqoeg04T3VWhBI5CABKciBDnT3dH+JxLpGA4Ze
         2LGXpt5/Dv5heIL9SF5x2sZxttxCrNWuMQCgLnlqz3i34hR9gH3YGS9uiz4EHMjvdIJd
         BWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719358332; x=1719963132;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lbrH75vzXbeWZnJxQfr9eSE4laznv43BbrI6ljKq96w=;
        b=C4eKJDF3DyJvvYUKCzkAEqXBXsDx1qTpw6N9fqrwmMTN6R3MWEPrzqOynLmaInfEyE
         VD6nGASSmVEgF1QVLcS9oSWGoxvQLE+xKx3Zr1IfqN70bNwQXtz+oVplX5JCXkgOOVnK
         FuZOTdjT+e1ddJZiUluaTLxKjWGwi5fhv+PBUx6k9e+G9GyHT95dwGW7gmiCGooqSd6K
         gd1cqGpyb1cALMrqktcV7e4U18CNN0+YKEO3xPUmP5IYBRD1GaLR9EM9hUrfFJfRYdjj
         gnol6rHuOhKS4FzRqstswR/JQ8oF6O4EcaBuTPf9uROTzh3qEGR+zDnGLyJjY1cC2L6W
         JcCg==
X-Forwarded-Encrypted: i=1; AJvYcCUBkuK75uyIhTp8lrod0BCMQLpCaho3FMKGBUbJ4HsKRpcr44jCK97YG6LlzgQTQtIxKd9W2m/wuRyYAGWuuYXinUhUcbc7Ivp6pQ==
X-Gm-Message-State: AOJu0YzU1DSKN80ioxop0ZpddFtfU2M/l7tZo22i8VwK8Pwb5NhvvYDs
	prGiepL1nO+uOz5QxOVvtZcuunqvwgO2llkeY2sX7VFyFUZgj1mERRxq16BYhao=
X-Google-Smtp-Source: AGHT+IFfrVFH4dS5PTYGfls490EP0Nu3bFddns6indKs0gUPwj1+1d3DDgayra4rO4Gwf6H0Dvau8A==
X-Received: by 2002:a5d:6487:0:b0:366:e64f:b787 with SMTP id ffacd0b85a97d-366e64fb8a9mr9522455f8f.8.1719358332136;
        Tue, 25 Jun 2024 16:32:12 -0700 (PDT)
Received: from [192.168.0.16] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36647e7eb4fsm14143043f8f.18.2024.06.25.16.32.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jun 2024 16:32:11 -0700 (PDT)
Message-ID: <3e55d482-2732-46cb-906f-62f0e722b7a5@linaro.org>
Date: Wed, 26 Jun 2024 00:32:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 1/5] dt-bindings: media: camss: Add
 qcom,sc7180-camss
To: gchan9527@gmail.com, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-b4-sc7180-camss-v3-0-89ece6471431@gmail.com>
 <20240624-b4-sc7180-camss-v3-1-89ece6471431@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240624-b4-sc7180-camss-v3-1-89ece6471431@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/06/2024 13:13, George Chan via B4 Relay wrote:
> From: George Chan <gchan9527@gmail.com>
> 
> Add bindings for qcom,sc7180-camss in order to support the camera
> subsystem for sm7125 as found in the Xiaomi Redmi 9 Pro cellphone.
> 
> Signed-off-by: George Chan <gchan9527@gmail.com>
> ---
>   .../bindings/media/qcom,sc7180-camss.yaml          | 328 +++++++++++++++++++++
>   1 file changed, 328 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sc7180-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sc7180-camss.yaml
> new file mode 100644
> index 000000000000..58ffa4944857
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,sc7180-camss.yaml
> @@ -0,0 +1,328 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,sc7180-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Camera SubSystem
> +
> +maintainers:
> +  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Please add yourself here.

Other than that

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

