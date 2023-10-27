Return-Path: <devicetree+bounces-12568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BDF7DA28C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 23:36:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D75732825C3
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5944C3FE39;
	Fri, 27 Oct 2023 21:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE93E3C08B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 21:36:31 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63AC91B5;
	Fri, 27 Oct 2023 14:36:30 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6c4a25f6390so1662410a34.2;
        Fri, 27 Oct 2023 14:36:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698442589; x=1699047389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DOW1gEyiWmEb/ezKdyTSa7aCrvLtzejrHPgIEGPvmy0=;
        b=jpfDoL2cTkyHz5rWEBU3ywhoBa9r4fkAO0Qy2gAgOJ6TRf7+qzGo7Y//i6TyIyvOMq
         f+rQQb03PMaDbqW5kwpvMI8pOhtETPT2FCnyPcMDH8lKlnhOnu9taQL/YU6WoN4ReAYp
         k2LLQYoc9+iKvSRbOOL+kHJDWB7w539mHIHNnqWXiLj75795K1G6Oor1oXHu+yA7vq8y
         qP4HofdYGxcwM4g7cHoi9FlcqfrhlIAakGmhAxq4M3CHi9J5MpOMj6hqzA7TbGzHKdCY
         Fu72jE7+6SAW5B46t9D6owvfsQ9M4M613JMPOm3RQ5J5UtzY6cr0mmjQp5f3AFDqUi4B
         UtPQ==
X-Gm-Message-State: AOJu0YxCna6n3v9c+MK7C1xZFihCtEVFeJNRO7xxwRx9uMQJO707vOBX
	7fWbq0NDcmRhbD+5obnkuw==
X-Google-Smtp-Source: AGHT+IFip7ODb1zb61QmrdBN36ulxahgE6GgTEI4aD6ID2yrNuo5bR0hxSJHwxDIywoUx9LZKxej8A==
X-Received: by 2002:a05:6830:2b23:b0:6b4:5ed3:8246 with SMTP id l35-20020a0568302b2300b006b45ed38246mr5754653otv.2.1698442589625;
        Fri, 27 Oct 2023 14:36:29 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m6-20020a05683026c600b006b9e872c0a0sm411926otu.68.2023.10.27.14.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 14:36:28 -0700 (PDT)
Received: (nullmailer pid 3413620 invoked by uid 1000);
	Fri, 27 Oct 2023 21:36:27 -0000
Date: Fri, 27 Oct 2023 16:36:27 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom,sm8650-lpass-lpi-pinctrl:
 add SM8650 LPASS
Message-ID: <169844258726.3413571.7068196166115912913.robh@kernel.org>
References: <20231027093615.140656-1-krzysztof.kozlowski@linaro.org>
 <20231027093615.140656-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027093615.140656-2-krzysztof.kozlowski@linaro.org>


On Fri, 27 Oct 2023 11:36:14 +0200, Krzysztof Kozlowski wrote:
> Add bindings for the pin controller in Low Power Audio SubSystem (LPASS)
> of Qualcomm SM8650 SoC.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../qcom,sm8650-lpass-lpi-pinctrl.yaml        | 148 ++++++++++++++++++
>  1 file changed, 148 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


