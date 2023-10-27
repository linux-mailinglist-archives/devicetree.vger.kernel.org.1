Return-Path: <devicetree+bounces-12302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F26BD7D8E28
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E36381C20D27
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 05:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA3B35CBB;
	Fri, 27 Oct 2023 05:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LNADWBZA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865785249
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 05:30:05 +0000 (UTC)
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B78B893
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 22:30:03 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-577fff1cae6so1203582a12.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 22:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698384603; x=1698989403; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EDCChaj1gissqjEBEAMXe/0tc+K9t0+uAP8/ShNGqvA=;
        b=LNADWBZAnh8NUreCJD4I3fKYf5PCkPmAYq4KJbAXktmFrV16Xe+gaZJc7z+MOenP19
         ydXLRRg4bS7Xar3tZ5Zgv728l50zfg7wf4VITMa8oz9+U5yMRj8XxSysI4rhsf8zmoRH
         nOMT5ketnzbVFbd33vGWI6UGGC8E96WgZewF3N6Sicf19QycYvHQElk9fZpPtIIgUHok
         ZDiQFsyU9lbm7xbvIYNlPveyd+FzxpgAxAzXGZenE/RpFLNNdbm6Z7VhacumYmvP8AiR
         KAPrnJWD0Nc0X+Fmzkw6MDEify8v8BhRUtsNZZcVxyc+R6WRRf6JvmZXy18WCi905bPj
         mTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698384603; x=1698989403;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDCChaj1gissqjEBEAMXe/0tc+K9t0+uAP8/ShNGqvA=;
        b=BACLWLfVn8Bl/hKYvBBJXB+J8mGSRu047MJxjqTA4BRvpj8OE8ShMhMHp3L1Hx8K6N
         6c31mYy6t1AxcPoO80gBPBaCBK1+PjjTblfaGB78QrhXOwxroUZAwK7ydeoFqq3XTYns
         fXRz0A/GSdbdmpL7ePAR8JexSy38A4bjYOMl/qJAsSBTslj7P6Sd2HpbVmkG9hEJ9CnS
         3L1WJrKMrhDn+j71u3wHzML+5/HQFSolJZxXux+RUR/VJDqxr0rIwgZr/WeUHM5YS48d
         kT5lePtD3UHfeqOCLaLjBQmT9YrVQKMdaDK9/1KlBioXK8n9t90lSxTTzOuvlWJ4nf3i
         YazQ==
X-Gm-Message-State: AOJu0YxDSwYnUt/8/ITo2kAnkxf01n0e1bvBabz4O9XEBuelayp9XRx8
	Twg9BuWaAiNGnrXrFV/JkJV0jVmd63x9NBcFP5M=
X-Google-Smtp-Source: AGHT+IEDdiUnBtNGv3NqKyoW3hwNthvCCMtRZ9osKz/+i+r83pEqPvuYCWs+QgwVReFiGJCBLU3PzA==
X-Received: by 2002:a17:90b:3a90:b0:277:5cd5:6f80 with SMTP id om16-20020a17090b3a9000b002775cd56f80mr5789495pjb.16.1698384603045;
        Thu, 26 Oct 2023 22:30:03 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id so3-20020a17090b1f8300b0027d0a60b9c9sm2554765pjb.28.2023.10.26.22.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 22:30:02 -0700 (PDT)
Date: Fri, 27 Oct 2023 11:00:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: cpufreq: qcom-hw: document SM8560 CPUFREQ
 Hardware
Message-ID: <20231027053000.hitqlo4a6lusdgzw@vireshk-i7>
References: <20231025-topic-sm8650-upstream-bindings-cpufreq-v1-1-31dec4887d14@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-cpufreq-v1-1-31dec4887d14@linaro.org>

On 25-10-23, 09:25, Neil Armstrong wrote:
> Document the CPUFREQ Hardware on the SM8650 Platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> index 0177d1ef0bf9..56fc71d6a081 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> @@ -43,6 +43,7 @@ properties:
>                - qcom,sm8350-cpufreq-epss
>                - qcom,sm8450-cpufreq-epss
>                - qcom,sm8550-cpufreq-epss
> +              - qcom,sm8650-cpufreq-epss
>            - const: qcom,cpufreq-epss
>  
>    reg:

Applied. Thanks.

-- 
viresh

