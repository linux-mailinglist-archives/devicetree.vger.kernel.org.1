Return-Path: <devicetree+bounces-11174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A06137D4A2C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:33:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 159D7B20EFF
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AD2423AF;
	Tue, 24 Oct 2023 08:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l99GcEpt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2242A224F7
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:33:29 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 364C4128
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 01:33:27 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40839807e82so24139635e9.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 01:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698136405; x=1698741205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jJlpvBYoBqkeP6viXimI/fz/jz7qnR4PL2nyYbSGRbk=;
        b=l99GcEpt0zLsS7remIKDiJh3J4ipNgYmitnlxqPD7gXmfJIM33vJwH6n9iIG7JIkgv
         bbggGDCTR+ablPXWM74ztIY5tv/JKHJEJGEVsGifcRkaTgwKPu31c4ZakiN/2uzDguLn
         ErdCmWFNwTGphfD/EfOCVjk6OKUCPcenBF7OqlsM4HXA+jGMgzKmUM7G6lOnwtflFyZ5
         yNqIPioWUjMrCEmesNtB+4aCDsEX5nPXWWWCGY80Alg3DMjJjKtMhl6Je/RBRCsPQdEh
         k2GVH/S+Fqdpu26fNe9JprWqAWA64bt5Dyy4iI3WHCDftXcn2d1iGFC+DeVP5WH9oJw+
         8+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698136405; x=1698741205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jJlpvBYoBqkeP6viXimI/fz/jz7qnR4PL2nyYbSGRbk=;
        b=aDnGTVtFWBhTdJWFR9cwTptaz8cmS60EK/dcXQQwRp0V/Hcdh+I3ZNuPKhw1dkPWDU
         igQ3p/gQmmrrtWGM7ZSh4eE+CnvNGSosaUnmnrGLk8nRMKAiWqy641cVblQG2VCNTeRm
         qCFuiUarD4QE4yTgTZlmQ1xXP+eST7ZgZ4jyi2OIvPOEGPETX6nZJvlNS73e9Ci7ueIp
         LbRGMIm7DdYtgg0Nh8z7xl3JzPFxtnwVMnCpEcQDkT06f14fJ85rMJm+pEwVezORDGnQ
         qfSAo03/ZIcbGKeJ+N3AiHRRqSRzWfcO4wQ1yMLFCHNt1/zoXSbf3xq+jWldDuaCthbH
         Zxgg==
X-Gm-Message-State: AOJu0YzHVm+2YF064/C5kcvWl7HGsxaKM4fE1X5ZzXYFum41mjYgt2Ib
	zajMc/E8ZzhjOr6/dTbkuqmkRg==
X-Google-Smtp-Source: AGHT+IGXMQldjSZrIjsfGTCegfjL7yUmsGtk0NazA1wG7UG/G2dJTJIwxlLltLgkFXCnMTUC4TFtXw==
X-Received: by 2002:a05:600c:5101:b0:403:aced:f7f4 with SMTP id o1-20020a05600c510100b00403acedf7f4mr14287485wms.12.1698136405174;
        Tue, 24 Oct 2023 01:33:25 -0700 (PDT)
Received: from [172.30.205.198] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q19-20020a05600c46d300b0040836519dd9sm11408994wmo.25.2023.10.24.01.33.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 01:33:24 -0700 (PDT)
Message-ID: <72a9ce0f-1bdf-4d97-a9f6-1aba532b0f18@linaro.org>
Date: Tue, 24 Oct 2023 10:33:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: msm8916-longcheer-l8150: Add
 battery and charger
To: Nikita Travkin <nikita@trvn.ru>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-3-343e3dbf423e@trvn.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231023-pm8916-dtsi-bms-lbc-v2-3-343e3dbf423e@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/23/23 08:20, Nikita Travkin wrote:
> Longcheer L8150 doesn't have any dedicated fuel-gauge or charger,
> instead making use of the pmic hardware blocks for those purposes.
> 
> Add pm8916 bms and charger, as well as the battery cell description
> that those blocks rely on.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
Doesn't apply on next, please rebase.

Konrad

