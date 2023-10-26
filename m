Return-Path: <devicetree+bounces-12258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C25AF7D8901
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:36:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 090D4B20F22
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EEC33B783;
	Thu, 26 Oct 2023 19:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oCsUUWNf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972FE3B2A3
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:36:30 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1E9D10E
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:36:28 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50802148be9so1587431e87.2
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698348987; x=1698953787; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OTgf2Dvow9ZuXFPqFfbC0fdxBZgN8QcR7Q24NuIsbkQ=;
        b=oCsUUWNf40nDNxPhrbehQjJH3/sMUd6nty7cLyO9bQyEiopL6LnZcGj/BaMrtQcc1i
         VVYfzS1tY2XxR46oByRBoxpukYsHpqX2xCnVepJEc8oUQe5hAJ4Nk72PI3/WOjZdWR3q
         IVGA+rSxklLeUZWB3v643KL1pmgDIkr2hkDZfTQGUu9xG6LIj93Ri0e1+lbu1gSGABWI
         3DtiecyqAw/naTc4o3kdenCOBK1I04kZ9KF9nkwn10/4h5/hitq0HxwT/PRtEospTz1p
         PCdEulzEqqYRT1DXaObr16E44tzoRLXQ7N9Hq6UH+yz0V3lUsElRlV2+uogjGQzIGU6C
         n7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698348987; x=1698953787;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OTgf2Dvow9ZuXFPqFfbC0fdxBZgN8QcR7Q24NuIsbkQ=;
        b=byXndqXMQ1EHtaBy4t8xKswkJcxz3hre1hUjmXp8ZCjjup9E7LYCa93wz0t+vpVHN9
         vtnOPtiVt01hN01lr998vOjgrX8C/dOsE5qEBBJxi1c/lMfZ2O0cibpSqcHACqoQC4wN
         Tpe9w/NstHiUQRizzPLHLP3VHTmejgIInQ+NF8LJCskn5VnOOWeOVOVmrY8QIAgyv/Tc
         y+x6PhLhT/bXUKJKgLUwGei7gT7z3zmQqxPr3a99dQ94oDYYJFMxBVRxnJPlInkHTQv6
         YaRzqBfllqOGaTfowxjdJI1xyCj8tZHHxRdkyri3WlWFxL2QCEdidQDjcxHXTkFSH6qo
         wJrA==
X-Gm-Message-State: AOJu0YytawqJR4gTpXsiou53eEj604Hcm9dw5woh7ETTvhe1CyUd17aZ
	yHIZyaPdV2vAampPXkTBoB2lNQ==
X-Google-Smtp-Source: AGHT+IFOlZ4mUTLecLw/FO20DFaae9bB4NAnizYV3Y4IKYS/iIm9yXm0Ntj2T8hWdq/pC8rojnFjgw==
X-Received: by 2002:a19:a411:0:b0:507:a089:caf8 with SMTP id q17-20020a19a411000000b00507a089caf8mr233719lfc.67.1698348987253;
        Thu, 26 Oct 2023 12:36:27 -0700 (PDT)
Received: from [172.30.204.84] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n30-20020ac2491e000000b00507a0bb04efsm3086919lfi.195.2023.10.26.12.36.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:36:26 -0700 (PDT)
Message-ID: <2d191492-7fee-44f9-9de2-92821afa30d4@linaro.org>
Date: Thu, 26 Oct 2023 21:36:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] ARM: dts: qcom: Add support for HTC One Mini 2
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20231024-htc-memul-v2-0-8912940b6f95@z3ntu.xyz>
 <20231024-htc-memul-v2-3-8912940b6f95@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231024-htc-memul-v2-3-8912940b6f95@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/24/23 22:57, Luca Weiss wrote:
> Add support for this smartphone based on the MSM8926 SoC, codenamed
> "memul".
> 
> Supported functionality:
> * Power & volume buttons
> * ADSP
> * Magnetometer
> * Accelerometer
> * Touchscreen
> * Vibrator
> * SD card
> * Charger
> * USB
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
sdhci vddio should have regulator-allow-set-load

otherwise:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

