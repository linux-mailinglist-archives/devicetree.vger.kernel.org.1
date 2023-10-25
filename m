Return-Path: <devicetree+bounces-11712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE3E7D661D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CBDF2819B3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2480A1F95D;
	Wed, 25 Oct 2023 09:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KvuUQsvT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A772F1F616
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:02:34 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4545B116
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:02:32 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6b1e46ca282so5409743b3a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224552; x=1698829352; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4n2kked+3bfxJ6EXIMUDeHZq/0tPr9IzhDqluMrojuQ=;
        b=KvuUQsvTvbCp/sqt/uGVb68pWrXfdG2LG6Lp0xNY4EDpAAPdsDMwoofTCbo426rgjK
         x3Q4sn2j7GNRs0/3YQdxwNtWZmutmLv1aqNrTjsVTo/SsUawRUQMq7Da1P+RQNuUNYqw
         ONwxi9Zjc/XRuwBYDzMisgeNijK14lrhHKOfJHNjbOWYCTfdeeVrPBPWjah5AUuecsGW
         xwBe2zub4asg4/aoEZQ8zgsvMNLw0E3lAmEZiBQAxdDAP/E8mKGCg98XCtRFanOP42I1
         FOgmBcn3cv4DixoKxPTfnoJmxMZZ6WjSOSzv+3TFdctTv0qgo4HFjgL68qB+Q4pd5nw8
         EI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224552; x=1698829352;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4n2kked+3bfxJ6EXIMUDeHZq/0tPr9IzhDqluMrojuQ=;
        b=w0PA8y+3tClCsnlptfVs2jmMPX+sbm2Ljx7QxqxDkkkWifgeNJcFkfkzIg8qF0WXsZ
         +2fPfojrA1K5VF/JAmp82Ab55IbiZdRVFOzYoIavoetTajdISFVsIUz9ZNgRGWHvdkiT
         Jsu5eEbCvYERIkdpE0TJ/nqNRz59Rs9/rLSLhOUD2QSzP3pAFsjfW4CWhPCqgItpnVu/
         KkBJFylHzJmH+hVlPPdwXdbmu1Ojj9nN8+PsAqMhYGxDpw5mqSGV+0R3k1cMntkIGGCR
         QA0qIXeRADGQE5JUFw/z4cGu3mXh2BFweBF/pllvMdsfsRIJFjRHkSyj6t3pKIbZND3M
         Qk5Q==
X-Gm-Message-State: AOJu0Yyfrce2Bk0w8XMZ7mZKSOkNrr1B7wn+5seVtnTHTG3y8CBZDCpn
	+DrQw19LemosAHMvLtaOqJdoQQ==
X-Google-Smtp-Source: AGHT+IHlvO6WHkTUoNPCtH3XnUWsHWlqDlLhIZ6DN84y+xqxEAusCOS4G6ZLCtqTKO218dxEh9Ws/g==
X-Received: by 2002:a05:6a20:12c5:b0:17b:40:ccd6 with SMTP id v5-20020a056a2012c500b0017b0040ccd6mr5787438pzg.2.1698224551695;
        Wed, 25 Oct 2023 02:02:31 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id g17-20020aa78751000000b00688c733fe92sm8886602pfo.215.2023.10.25.02.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 02:02:31 -0700 (PDT)
Date: Wed, 25 Oct 2023 14:32:29 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: cpufreq: qcom-hw: document SM8650
 CPUFREQ Hardware
Message-ID: <20231025090229.hkuir4vubmpic7me@vireshk-i7>
References: <20231025-topic-sm8650-upstream-bindings-cpufreq-v2-1-340e1c583f53@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-cpufreq-v2-1-340e1c583f53@linaro.org>

On 25-10-23, 10:27, Neil Armstrong wrote:
> Document the CPUFREQ Hardware on the SM8650 Platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
> Changes in v2:
> - Fixed typo in subject
> - Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-cpufreq-v1-1-31dec4887d14@linaro.org
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

