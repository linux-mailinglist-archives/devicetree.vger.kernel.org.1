Return-Path: <devicetree+bounces-9928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1E57CF067
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:49:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CE84281EF2
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 06:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 020848F56;
	Thu, 19 Oct 2023 06:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xhkeaboK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FBD63DF
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:49:44 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD5F0116
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:49:41 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-27b22de9b5bso4972076a91.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697698181; x=1698302981; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lalSj6IAXslW9mGJi1k5+HZnt4EEAFejpUpcXFOh2Dc=;
        b=xhkeaboKH6I+NJ07NMjmj0K+6pyRvlsF+STl+Dd48YDfjm+E0lT/JAKaseydAzm8TT
         Tr2O+pLilQUpC5puef9z5uaaui225Upo/TjWy7Lv8d8JMuHZa6SnbmJx9ljcn+mHww3Y
         HsO1pBp2Nqr/o2xa4YDLch2EMDtVN4WZg4x2fc2F8hPjiquvNEvVnzSmF22RoG1bN6hM
         7bo1X9XEaqEiTgiCt6TTNCVj4Y9Iod0xORRwq+OPzKPHRcBXCY47C4wvcfh5ra9VNN0A
         aWw4bpm6ZvQv4ailxXlEoLBKHctjj97QV5jBRCQIWiZbH3lybOrqm7iuthlOrvJ3tVf8
         NC9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697698181; x=1698302981;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lalSj6IAXslW9mGJi1k5+HZnt4EEAFejpUpcXFOh2Dc=;
        b=LjcyGJeO+WdZQHh9+kNnZVjkUsqnsEDwStll88mlFlbfUpDnCuI1bIeONwKvwOhRsJ
         CItp9SePbW2p5XSohVmM95VD2njtwBFVVq1JhOaZtyc1HVJRUpvsayxQo/DSsAXN8BvX
         SxfDoVRmYgX5OtwGTnvrhW6c2EozY386xCm/h1DjK90t7vFNLv93Gxa9/od5e55NR+1v
         GjP3AUK4TstEGw4gUHwCetojB0HFSZNdv0VQKuLkx+QoLeSr+lF+tKi+S2OaB6HcGXIJ
         ihpF93/H8fz2GIWRS1KWPb1MmRCgoUHRUSW+AbOXPfb6ftIdxcAakTi5qiqg8NXJSJcr
         4iDA==
X-Gm-Message-State: AOJu0YxI0/kWEH1zwQyiCErr0Eo2jARG1ZFJEzrxXVvY9bXeAq9DZWbV
	SSVD1SJxXEWwsOsPk9Fqx4RPow==
X-Google-Smtp-Source: AGHT+IEzNBsYC3TcMAHNGkSkQmxLGmeqfkA2Sc5YzA38i9N4A9xIDm5+uzeBzi1nomRlUiFu+NaVrg==
X-Received: by 2002:a17:90b:e13:b0:271:7cd6:165d with SMTP id ge19-20020a17090b0e1300b002717cd6165dmr1273479pjb.26.1697698181147;
        Wed, 18 Oct 2023 23:49:41 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id y24-20020a17090aa41800b00277371fd346sm921819pjp.30.2023.10.18.23.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 23:49:40 -0700 (PDT)
Date: Thu, 19 Oct 2023 12:19:38 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	ilia.lin@kernel.org, rafael@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: cpufreq: qcom-cpufreq-nvmem: document
 IPQ6018
Message-ID: <20231019064938.am5qbaqsio7h7zal@vireshk-i7>
References: <20231016175532.2081344-1-robimarko@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016175532.2081344-1-robimarko@gmail.com>

On 16-10-23, 19:55, Robert Marko wrote:
> Document IPQ6018 compatible for Qcom NVMEM CPUFreq driver.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  .../devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml b/Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml
> index 7391660a25ac9..f929892d654ea 100644
> --- a/Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml
> +++ b/Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml
> @@ -28,6 +28,7 @@ select:
>            - qcom,apq8064
>            - qcom,apq8096
>            - qcom,ipq5332
> +          - qcom,ipq6018
>            - qcom,ipq8064
>            - qcom,ipq8074
>            - qcom,ipq9574

Applied. Thanks.

-- 
viresh

