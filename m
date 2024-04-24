Return-Path: <devicetree+bounces-62073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8958AFD07
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 02:01:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F44D1C221E1
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 00:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55D432CAB;
	Wed, 24 Apr 2024 00:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JbuNX78n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55E9363
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 00:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713916880; cv=none; b=syPZhBUO+v/G0hZQ7y+FYnLlSerDyg6JFquyYMMoCcD3aWw7xcmzZ92U2FkqqSVtm34HdR+iMMNUK5tvEhlsJzNkVZA69obCMJCnKajoOFdSwKNthfV8p+th+QHnFcYxtK2Ow7Sr8oDWM72gJBeydRi31UMGzZUQ232aDy+NKk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713916880; c=relaxed/simple;
	bh=FlGCPz9SGenILdhF8xtuorosJuisz2ItVng/S0g5r6E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dMXQjA9HqBcQY95GDtZn3bx2XR/Ghcq5xriQ/tQvdUMneCd22tPUR6Kx8L/N6HZS56QZrf3VfKHlZds3AM2BrEMxxY89ARTioz7kTTHgQkUlwr8HfAQZn7ONwMtvBjDctH5VdTqpq+rIcfnAbPWAXB9EZEyygmHALiPkKeTF2to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JbuNX78n; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41af670185fso2460145e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 17:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713916876; x=1714521676; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zsaJN6SDatJpYxGO39STEsAbfE+Fwe8phzl0Lbv9X/w=;
        b=JbuNX78nqH0mAfNc9nLQragiII5hZiROcV/E4YP8bqSBEnHiD9yXMxZ3ytXORm+96E
         ursuaGKu+aRrFBx5ByVKn2U5ExrGycoKB6X2Y6GuUZUcAhuTwdb7mcXEl6Y4Owb0RybQ
         LL3hSmUk/hLNFHPqcEZ/pFNqkA7CqPSJtoO0R5hWYCPu4GVPWsyfhFFQ6r8c3GW2SraU
         btj+sEWk703LwN97dgqfhhCjqd9nLBVFnmvqdEdN868ITlo5ZAK8XLHrGoPhyFtMDDnj
         r3dAfPTJZO2pn/KZ/y99JUUtMqmWCL+0JMvR5sE1Xll/RIaifyzHWZXkCSsJ80Xo66g9
         9qFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713916876; x=1714521676;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zsaJN6SDatJpYxGO39STEsAbfE+Fwe8phzl0Lbv9X/w=;
        b=wW5vrxKfvlXf5pRgxM8Hu7errRJ1epz5WAbFUOw50bAFn2i1ul9RAC+hGqm7FbCiBZ
         kWLhCSN6895Mv6+Ociku9scp5SH3NoXptQFhkeXm8e3Tc4QpiaampZ99Aq9PNcpkRdnZ
         rs3KbX3yYa1ycwz/fgydoKoqGq4vH1XQnHA+meAbvYeLoHWMf96/X5vzPla2q2Syo9AJ
         VaNL9GcZFCp6PJMMBf6GgHZ2uh6XH5XoyuYhsUgFwnWq11P+i0dMcynAgyNv8APzLnSc
         h3bOhMwjJoPCInu1KP4GqvekmdJ68YRDoGifKkoTkWKzrRM+krPlZZsSXJUOG63wJeTO
         CxfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQ6m/ePwhSeAPGe//UY0q4aJ078c8vCJoPaC8+Poxe6hy94IvgKkHv0NMi8nJnvGe7Ye4stP81Fw6MIjmSxY0rpQ1vQNn1W6Z6Gw==
X-Gm-Message-State: AOJu0YySWmb+7TdpNXFZd5SQLUUaE4gZbSusy2XfdryWoMFjADj4yMg7
	cXLholJc9HHaGrWcnMHHxytTOok8Gd1JqL3wY4nwXl0jAg5uQ5ykYj9MVVX8IZ8=
X-Google-Smtp-Source: AGHT+IELghywWCMPx0pelmAeEjjnEwDnuikrcmKL/8eSocRVR4XO2UIGCfF62Wk+H62jE6je6spPjg==
X-Received: by 2002:a05:600c:4fd0:b0:418:d68d:f1fb with SMTP id o16-20020a05600c4fd000b00418d68df1fbmr674433wmq.31.1713916876258;
        Tue, 23 Apr 2024 17:01:16 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id l16-20020a05600c4f1000b0041a1fee2854sm11231876wmq.17.2024.04.23.17.01.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 17:01:15 -0700 (PDT)
Message-ID: <4028de21-33ea-4172-904f-e6809ef9a878@linaro.org>
Date: Wed, 24 Apr 2024 01:01:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] MSM8976 MDSS/GPU/WCNSS support
To: Adam Skladowski <a39.skl@gmail.com>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240413170317.34553-1-a39.skl@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240413170317.34553-1-a39.skl@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/04/2024 18:03, Adam Skladowski wrote:
> This patch series provide support for display subsystem, gpu
> and also adds wireless connectivity subsystem support.
> 
> Changes since v2
> ================
> 1. Disabled mdss_dsi nodes by default
> 2. Changed reg size of mdss_dsi0 to be equal on both
> 3. Added operating points to second mdss_dsi
> 4. Brought back required opp-supported-hw on adreno
> 5. Moved status under operating points on adreno
> 
> Changes since v1
> ================
> 1. Addressed feedback
> 2. Dropped already applied dt-bindings patches
> 3. Dropped sdc patch as it was submitted as part of other series
> 4. Dropped dt-bindings patch for Adreno, also separate now
> 
> Adam Skladowski (4):
>    arm64: dts: qcom: msm8976: Add IOMMU nodes
>    arm64: dts: qcom: msm8976: Add MDSS nodes
>    arm64: dts: qcom: msm8976: Add Adreno GPU
>    arm64: dts: qcom: msm8976: Add WCNSS node
> 
>   arch/arm64/boot/dts/qcom/msm8976.dtsi | 536 +++++++++++++++++++++++++-
>   1 file changed, 532 insertions(+), 4 deletions(-)
> 

I remembered you pinged me in IRC about my previous review feedback.

Would appreciate if you could add a response email to your cover letter 
explaining why that's not done.

I'm sure you're probably right but, good practice is to state in your 
log what was and wasn't done and why.

---
bod

