Return-Path: <devicetree+bounces-18028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DBA7F4CBF
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 17:37:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BEDF2813DE
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 16:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5C610E3;
	Wed, 22 Nov 2023 16:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oN5xUV94"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B003E1B2
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 08:36:45 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c50fbc218bso86064931fa.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 08:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700671003; x=1701275803; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Di9yvxAWs36hcl+GloFnlKFwW1mBj+fjSlK/jwxdAQM=;
        b=oN5xUV94HrL7BKN5Ade08Vm35dgqeH1NMXo3HQohWHILA9tvUBRi2Lm7gsFDQNrJb7
         e8xuDo3UGGCDKit34L/k3BeTBZWLpK9AKMnX7T8K7M4nqDxz70uRj3eOTWce8FL7bZAi
         jxs4I7L43xp0xX+X1+7Ze0EqIvmurnI4McnKCKc1gPHhi5Upm+j0xgPuw7i8/KSZG4DZ
         7Z6ATL3oPia0OFCgIVqZdTHMUN4wPODsEz9Sv0AqEA7GEH6fPbrWda/MvlajmU1GQ40O
         HTGIePIA2QQ5IcpQgYICiTSkWCV5eK9rJ6qPnPoqymty/yjRzqI38xHlkvJTtZf/YmiK
         D5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700671003; x=1701275803;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Di9yvxAWs36hcl+GloFnlKFwW1mBj+fjSlK/jwxdAQM=;
        b=NKk7AonQXbHWlKGXIaD7txiToRjmwDaPqvhsT2/3XipFVRKwI8mxaGLSS9NUPfJ0s6
         /tgDlZu+vqRv6yjAwzttAjWWTFQ4Rs8WjLoc29cqAKqvWOoc22eR1IlY+m4++7R7e7iV
         T1kPD0EKxojtnd4jm1Qv7ATGOVg925SX+SWBHDBAyxqBjXRlwmRTEN0SWDn3QvVtoAU8
         tENO8pKJE/1tLmnlhOmdGI5CJtWEMAwLQhIOpbCdcnmENFBK+lG8IoUTTtoCqbXKw/Qm
         8KhYbf5aYdG6XmmxSnznrb9mOLE6tHghjUFbyeFisG06jsh41h4uPlwUT6B799sLMlDe
         hmSQ==
X-Gm-Message-State: AOJu0YyfRDzmIcucXmwZhbFz/PUxKLBPzu7VD6axDRySrjoXCkI7cjHj
	B+xCA4tFmhn/0fVQ7nWka0/KPw==
X-Google-Smtp-Source: AGHT+IEeYpgfIB9AcjGXHssX5gEEWWel0dxoxZr2hxjJQgw+ykJg8pA81nzhlfCL5YWHQizaN8YVOw==
X-Received: by 2002:a05:6512:104e:b0:509:8db5:5163 with SMTP id c14-20020a056512104e00b005098db55163mr3071234lfb.0.1700671003426;
        Wed, 22 Nov 2023 08:36:43 -0800 (PST)
Received: from [172.30.204.227] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id s3-20020a195e03000000b005095614210dsm1928088lfb.241.2023.11.22.08.36.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 08:36:43 -0800 (PST)
Message-ID: <4dd3fa87-f568-4a11-a3ef-5452aa2f7312@linaro.org>
Date: Wed, 22 Nov 2023 17:36:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] arm64: dts: qcom: add initial SM8650 dtsi
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231121-topic-sm8650-upstream-dt-v3-0-db9d0507ffd3@linaro.org>
 <20231121-topic-sm8650-upstream-dt-v3-2-db9d0507ffd3@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231121-topic-sm8650-upstream-dt-v3-2-db9d0507ffd3@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/21/23 12:00, Neil Armstrong wrote:
> Add initial DTSI for the Qualcomm SM8650 platform,
> only contains nodes which doesn't depend on interconnect.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
[...]

It's quite a bit to chew through, but I don't think I have
anything to point out now

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

