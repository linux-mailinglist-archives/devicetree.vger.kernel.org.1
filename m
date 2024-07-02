Return-Path: <devicetree+bounces-82435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 125DB9243E0
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 18:46:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 450171C23737
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 16:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EAA33D978;
	Tue,  2 Jul 2024 16:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t8GhtMwK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954741B4C58
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 16:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719938730; cv=none; b=U24axlTsljpXr1KHkvvXiHfgaN3cAuxW8l9bIxEDNC9r5dgYhnBQzA3vu5XZmBzYY7/AoaJQh56Agyydn+dn5p/oGW+Tq6RT1h97BM98adsXCOF/Dqkixt3aU/WadzpwMDMdTYhdWLFE7UJO6kBeb0R+o57SwscJbRTOE8JwehY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719938730; c=relaxed/simple;
	bh=3nXRptT3XS6fYDJodDzbr5a10QmaOR61M/sAVY5ilFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bnAzTym0kG4j/ysrIirYBtI3ioWNxf/k8M4dQNrK86wcqA1emiGUuZji5YvzfdCSHR0kcCAkw/oMWPWIatjJuBJdJN9hOs55ZCL3oaoDorjKB7qC7dqyO+qxXCGNCMqAx8js1HfGpkxEqLs3d0PWCRUaI9CA1XAO1XI2Gb3lICY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t8GhtMwK; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-36789d19ffbso339807f8f.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 09:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719938727; x=1720543527; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X1cYREOP31EywM3h1j7bQokqdAVYFNs0tCc9+hVliZ8=;
        b=t8GhtMwK5v6OMokGoZ2KrG75BU5zgnVGWmb1mNaHKPwusEZ0JzzWlZ0ccU+hzrbfzg
         5WG0rxfvIW2EdKT83ouzixsIzeWh8rFAw8fBxOVE4kxLUAWitPHq4lY4yEQlbuceUE4+
         Tg0vjzaR+lB8AKIkoMS7eTHliA0wCPtFSnJFOygUKjNo7i5rls8CWB64ZGXQk7/FI0Wg
         hutunNt53BIlGqCqr6yA0uQgzsTTalhHsunozgaZBTOctVcvjz+aYt+001xBI4msk8fF
         iQOdZyT7y1RY8BNNYTbW9VnprSieAQ1KS+ECXTGYG7+u5Kr4yivsbZmw4GNrvkhSyK0A
         IAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719938727; x=1720543527;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X1cYREOP31EywM3h1j7bQokqdAVYFNs0tCc9+hVliZ8=;
        b=s18u2j7VVOTwz6Ypvcnpe5eslP4+6pG4Mm3HKKn2krlp7hsQNDCXVTy2wjskcgBGXW
         93wop8OHMrZSKPL/8TKNEgI1MUkVDRz7nTqw1DYZKYhtlGvLTgLSnAfBZF/lGZGQx9Wo
         qDgCnqXXBMSJLP+UM1V/ws10Q8XbTaG5qT6Z6OTLKbnfxNsZbdodBJZ8rPTZQiRhRhd9
         JWauro0n+6OknlXQ3bwhXMDup3FKxTiym+Mqik4Rrc2CbCMH52te4Rv29G0OFdNqsyMv
         Hl966VbSVQxbwcPa+aoeup6lWRF8WUgbdZL17RR+IOU2OavwEDStFmF5AlHy6O9w1JA/
         e1yA==
X-Forwarded-Encrypted: i=1; AJvYcCU/51FpWyCEr6bArQHPxiJ3WwC8nUG2pIyPQcCaQpSZZ0bkJcqNTxakyThn+JhzZtCOonSBOH+Cy2gqBhbyWoY0ZTT4mm0B6zF1wQ==
X-Gm-Message-State: AOJu0YxBob4JeCXo8vyzKHXAE++CY+g6pGoF7rXZLVCugFx02vcB2euM
	Zui3YJ2hjnp9BkxiXjHZdYuFxPvVoPANAesh3Mx10Nf2EuBTausQWiACI7KcNHw=
X-Google-Smtp-Source: AGHT+IEBWDV+60MU01aANMdE0q8VPO+1pvEuf1/jB7KUviux2SJyGN5NunN+2vpKZtK1cjg9X7ncWQ==
X-Received: by 2002:adf:db50:0:b0:367:880f:b8a7 with SMTP id ffacd0b85a97d-367880fb9cfmr1348950f8f.8.1719938726969;
        Tue, 02 Jul 2024 09:45:26 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3675a0fba0bsm13698885f8f.69.2024.07.02.09.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jul 2024 09:45:26 -0700 (PDT)
Message-ID: <5b2806cd-467d-41d2-b205-e34f9f281294@linaro.org>
Date: Tue, 2 Jul 2024 18:45:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: thermal: qcom-tsens: Document the
 X1E80100 Temperature Sensor
To: Abel Vesa <abel.vesa@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20240628-x1e80100-bindings-thermal-qcom-tsens-v2-1-4843d4c2ba24@linaro.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240628-x1e80100-bindings-thermal-qcom-tsens-v2-1-4843d4c2ba24@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/06/2024 10:31, Abel Vesa wrote:
> Document the Temperature Sensor (TSENS) on the X1E80100 Platform.
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


