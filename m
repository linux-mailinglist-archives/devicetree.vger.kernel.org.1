Return-Path: <devicetree+bounces-16297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2917EE381
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:59:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27D3D1C209E9
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF4D633089;
	Thu, 16 Nov 2023 14:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wCwI/Z55"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8A37D4E
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:59:16 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-507a0907896so1277293e87.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700146755; x=1700751555; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wuJsJjmUw2d9PtB+l9SB05xhzzeK1y0VQYZA7F3rrLU=;
        b=wCwI/Z557/DsPIG7DlLAAp/JZuaNWlcJ2VoDWqyB0TV2ibTsKRh7VehWEBmEJQ62qc
         CZLhNLfFwOIXDeWS9FQ7gx9xvoGHqwY87SHUcdA1NGeAPjp7czPKYP8xPgDEhnI8oVpR
         ZQZfgHWtV28faUSILCdIdlwqvaa7kYHD9E62phgY91YYOAy04OPv5a/ok/X68CHtPUt3
         +EG9JrQvx+iD6J5xpWVu7wWE5xL/Ptwpt3vKvrGDF/S8G8hJOYbNv5ewvTmzpETRTB5v
         8ajKVNa/qQnKhNeI5PoULewDVppI7eK4wMO9eY4paCoxuPxEy8e6/DUWkCg4PPvNeio/
         uMbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700146755; x=1700751555;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wuJsJjmUw2d9PtB+l9SB05xhzzeK1y0VQYZA7F3rrLU=;
        b=OhI0xuXjkCnsTQEkqBhAal35aHljO2DTpILnGzDsaAMwgH5IGv5s2KOdGK188CMANc
         cursNKtHQXm0hDG4Z9j4FAVnXaRMZ32G7DTFbYA3MuD5q4A4R3JG6Js3ix/0Hk4TYIRV
         gMcwewMZaXf1pz9M37faSp8UUG1jAfb7BqpfryryJUbIJFX99BabvpJYoY6KYmwsvu7f
         UsvPdLwj/qHyAJ6QsaLerej3QoNjUJ4QfS2rAJ4f6mQfoLQz2znO7KFvvBR8DKqya4zO
         rBoPYR2HNaP4A0tymRGKXNJdQUW39cSYq6GbQsLn7SR5f+Tyk75PwU4O0EpgGLLD/S+7
         7BdA==
X-Gm-Message-State: AOJu0YyFWT61t7zbK/ZHWbJKUOzs7xcC76/HYHwBa1okAAY7tH8fte9Q
	faWX8Xu00Vx/5N55qD6I5IJ6sQ==
X-Google-Smtp-Source: AGHT+IEf8+qrlVb+GbRjYPGoEKsgRRhuDHuoMBNbQOIWd8XcfdkT2zFsm1SHWPJgOwBGPeC3uPrVUg==
X-Received: by 2002:a05:6512:247:b0:507:9e56:5b1c with SMTP id b7-20020a056512024700b005079e565b1cmr10925871lfo.13.1700146754757;
        Thu, 16 Nov 2023 06:59:14 -0800 (PST)
Received: from [172.30.204.128] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y2-20020a199142000000b00509463003e7sm17278lfj.186.2023.11.16.06.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 06:59:14 -0800 (PST)
Message-ID: <32aacdd3-6d3c-40a8-8952-68e23d81dedf@linaro.org>
Date: Thu, 16 Nov 2023 15:59:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/11] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable
 various remoteprocs
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, =?UTF-8?Q?Matti_Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
 <20231113-sc7280-remoteprocs-v2-10-e5c5fd5268a7@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-10-e5c5fd5268a7@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/13/23 09:56, Luca Weiss wrote:
> Enable the ADSP, CDSP, MPSS and WPSS that are found on the SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

