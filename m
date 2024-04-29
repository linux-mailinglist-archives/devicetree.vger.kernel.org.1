Return-Path: <devicetree+bounces-63759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C26C68B6603
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 01:06:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74C3D28326C
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 23:06:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D63CE1411F7;
	Mon, 29 Apr 2024 23:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zWWhImlz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6843A77624
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 23:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714431997; cv=none; b=rz8lRb7HjKfM36pq5NaCvQTgClZI7xNt10fiJEZqSGFuUj+iBn/AZcm1dhsRvUaDST+ze5c1rqO6oxHJqfbl7WRxZisp7GYK5BUkEShJ/1QYKlN4D+7ZLnK7HpikULcnPnGmBaXd57muChpacBta8pXNiRMtRqmUYQt9vZxae/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714431997; c=relaxed/simple;
	bh=oCpzsnULxIgSn6f6NyIWzCzj4/D2x7S7p/X3jeHAGOo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e2VdQW1DgqAfd9sENOsZNrQOYK5jP8xRTWVWQA2417bSZH9MrZdAJvqAm2H/QksuOc/vHS1rxatGOv84zdjpChMt9ugiT2RAzc9Kyr2McNXjtQJLwTpsPO15FxZMg144iyMlO7mC1xN4QxPN0xBUthSWOtbKmbrI3AdFDK8QG0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zWWhImlz; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-34c1fff534fso3724383f8f.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 16:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714431994; x=1715036794; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y9Wc1VRWdSj/kw6OxjVRGGw4/2n20BQdC0iB/qkj8dg=;
        b=zWWhImlzXZjQmWla9wIXBCooFCJDbmLFMy7op2Wc8hoDsHj3i/qCfnrfvvOx8MM14Y
         6ayFOyZAWWEYM8FlRLy4gbVhQJGibdwPo5lINr88DZg4s+QcYX7NhBl91RZlq3VI1cu7
         8PIAf6mwVKzi7/AcUcUlXxqqRC9dKI7Lm4HKKWuLgnKC4tsobq8YsYYf4KUw6rv70Ebf
         ORhItLOh8nwLOLr/ZzkQGQAwqEw3tTUkwtrmeUWLEKHQJfEzMNO6rteu+b6lqsP5kvz8
         i0oS/VGko/IwLY2DsifvcqicxcZ4nw3OolLb7SVKzRaNoaM1aMGkMI81PqpHNyQoWB39
         miNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714431994; x=1715036794;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9Wc1VRWdSj/kw6OxjVRGGw4/2n20BQdC0iB/qkj8dg=;
        b=EK27vpHbVpNwVFjB4ekInAbCUtO6eNMrkT3eax65DxwfUfZMAUZrVPRnO3SxnqlsL5
         pWgvrkbVzmPX6iByoZ2GO0Tn1BnWo+k0ucHK0PWLa2sWu7SAn0yeWLgz8wSLLVD8lChC
         lV8SM7oGaUASzSdvpHSxga/CgkxDX0op2PCWLcWJa7StKPyzSeVuFvaiSd7b8+D4rNNR
         WZIBeMFdeckfkIg25rSEMLsOKoIWAAvTIk0fLcSf+Tha/SptZxU+7U2xnDvOIsUeHddN
         NoYJALNqbCuwHNnG1uiwP4F81EA+23ddtITwF9QOuDjLvykicBu/7M1hjUgkQv/yADoi
         tRUw==
X-Forwarded-Encrypted: i=1; AJvYcCUxwvCIWNxywuMyX6OhoZnsUcza6VSyDB2sA9bqv3Oj1LUZh47dcvYMTyZHNuDqCsnDb85OV1W/A01bsqxsOcalgCGVhu9Z+uiCdw==
X-Gm-Message-State: AOJu0Yx7pNZzIE1UQT9sxHFfRaDS2d28q1Galg0maFsjWkfE26BSe1eT
	op6SG/XJAQylkWhbwTpoX3nKe1sqZXlsxebohdUC60Pxtk+Me2CL6lHuEFgZntU=
X-Google-Smtp-Source: AGHT+IHCWKrgaTKGrhkqF26FTfzxhgQB+moXIvDSb8J8J/IOshycaSS5Xrsj1BsiFf+7Gnj7wtoHtg==
X-Received: by 2002:adf:ee0c:0:b0:34a:2a90:c45 with SMTP id y12-20020adfee0c000000b0034a2a900c45mr8641646wrn.31.1714431993724;
        Mon, 29 Apr 2024 16:06:33 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id r30-20020adfb1de000000b00343e392829dsm30873168wra.97.2024.04.29.16.06.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 16:06:33 -0700 (PDT)
Message-ID: <32b3c158-8709-42c0-9e6e-81ccdd0e7ab5@linaro.org>
Date: Tue, 30 Apr 2024 00:06:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] dt-bindings: media: add qcom,msm8998-venus
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>, Jeffrey Hugo
 <quic_jhugo@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <2b21b160-a530-486a-9404-c5bf8863ffed@freebox.fr>
 <4ea494cf-134e-4380-aea1-4c166a626561@freebox.fr>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4ea494cf-134e-4380-aea1-4c166a626561@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/04/2024 17:15, Marc Gonzalez wrote:
> Add YAML binding for Qualcomm MSM8998 Venus HW video encode and decode.
> (Based on qcom,msm8996-venus.yaml)
> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>   Documentation/devicetree/bindings/media/qcom,msm8998-venus.yaml | 155 ++++++++++++++++++++++++++++
>   1 file changed, 155 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8998-venus.yaml b/Documentation/devicetree/bindings/media/qcom,msm8998-venus.yaml
> new file mode 100644
> index 0000000000000..86a20954cb354
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,msm8998-venus.yaml
> @@ -0,0 +1,155 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,msm8998-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm MSM8998 Venus video encode and decode accelerators
> +
> +maintainers:
> +  - Stanimir Varbanov <stanimir.varbanov@linaro.org>

You should list yourself as maintaining a file you add upstream, plus 
I'm pretty sure that's not Stan's current email address.

However, looking at this I think you should just add a new compat to 
Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml since 
the rest of the file is 1:1

---
bod

