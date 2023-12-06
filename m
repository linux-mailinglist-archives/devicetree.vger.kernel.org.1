Return-Path: <devicetree+bounces-22278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 787D2806FCC
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 13:33:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33FDB2818EF
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADB3236AEE;
	Wed,  6 Dec 2023 12:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IXNKmmkA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2B1A11F
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 04:33:25 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50c05ea5805so2276438e87.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 04:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701866004; x=1702470804; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i3zRu4zCL27OConZJ/dXxv4eky6lJ797ekbzBQIQO04=;
        b=IXNKmmkALdUYmNCaLPOkOPzqsmIR7eY3on8YPuaVQt9Wr0q/dtToVesgPg4MUPA+ZJ
         z+U9mfFROvwRFGAxIkSDReE9QHMz4qlVvmMommnBQH1+C276M1WErDuG7IhR4nTLZ+hT
         GFrdf9wvNA9ODHi9inf9verkrEekHGwv2qzVmrE7rvIJp8Ec5QH1ZcaFGq5KZNA+c58V
         qLJ+k/Jt4lUUNQDrBwjpSLMtohQcQmzVjzRwzRjpBMhZwFquFk+B+YD5ua0a20DgJHsM
         h/ck/AQlpHSqyn+avhpilp+LgLnNBK970InRUxwkXzUAPl4DijmCl9UtY+LCsqU6z4AH
         TCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701866004; x=1702470804;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i3zRu4zCL27OConZJ/dXxv4eky6lJ797ekbzBQIQO04=;
        b=RQWj8M1JFWvdfThGFya2YEQ1S4SK26ngbUhegrG0vzU1FKMOTg6aEeXocnPQ+RqAJ4
         AfG9a2A0aIvXk7eGXedA1QyCrZ5+WnOcPI4b1Ml9YULr/kBmTesGcuPdQR9DjNIF5QTq
         26YGfdfuvuwpvmluMRzCN/sZa8/FB+y4+zFIYSnLnxUqCDIHSNAo6LvHOrRMRDURk00M
         JrmfDPhs4z4IDhPQ4v3hckMOR771235+fyBD/VVz6Yr745kZllnqWVLvrRebMAKwSory
         SiY6+NprMNYIJB6uF/f1ZnNO4yC9C+mbsPVJkf7bwEVVAkCSOCsl/KEiDsK4hsog8ozb
         tFug==
X-Gm-Message-State: AOJu0YwuiBQWdrzUVqJPECni8UuN319dQUoYlO2Djk34+2euddAwuVNH
	PIeii7HxxNzEWceSIVXtYX3USg==
X-Google-Smtp-Source: AGHT+IFoYrIWZweW4wNRjzDa/vyq7mAaeL49kvARBEPAN6JpcwCEEcJFFsb4LcNLy+7tTIH6iLUxbg==
X-Received: by 2002:a2e:9b15:0:b0:2c9:fe01:7014 with SMTP id u21-20020a2e9b15000000b002c9fe017014mr515733lji.62.1701866003949;
        Wed, 06 Dec 2023 04:33:23 -0800 (PST)
Received: from [172.30.205.186] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t21-20020a2e8e75000000b002c9f82eb099sm1267851ljk.113.2023.12.06.04.33.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 04:33:23 -0800 (PST)
Message-ID: <88432969-a4ea-4fa4-a2c6-93d5fc9e8af8@linaro.org>
Date: Wed, 6 Dec 2023 13:33:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: qcom: use defines for interrupts
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231205153317.346109-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231205153317.346109-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 12/5/23 16:33, Krzysztof Kozlowski wrote:
> Replace hard-coded interrupt parts (GIC, flags) with standard defines
> for readability.  No changes in resulting DTBs.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. Convert few more values to defines (GIC_PPI) - the tedious part which
>     Konrad wanted.
> ---
Thanks!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

