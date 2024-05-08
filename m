Return-Path: <devicetree+bounces-65838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1108C0352
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 19:38:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D14D1F23DD8
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 17:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C87FB38F9A;
	Wed,  8 May 2024 17:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="TbeeZa2K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B09B12BF26
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 17:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715189924; cv=none; b=TuuLsHDBBWo3LHo6sZUIcXgos0Y8ERL58Ir/P0fwXeG17uy3Jq15bL3pGpuU0FG7iXC/ZlA6qcMm01eIyg6QEvmsnOF4pvlUkjq3lqGtArkWTr/iRpASSoI0ZHiHMJuFsXc50Z5+JXzFnzf4uk8nfwV0AHdexWE+/zczQAEhKmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715189924; c=relaxed/simple;
	bh=5RN14ywOuFpB0z3RCdXcx1stBTRqJssspaiJ8AjqU/U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZIBIT/+MsbrEhH2fJR0NcEcbVZFtm8rH8KLaexbPJw1cz/QlVW4ISsM60GJ8HThClqLFplfw8C+dnV+Sm3/XIIGYLw0NpXc7Mi9WVNllE8etJ93xRKe+9HGOp3Q66v2184EoYpmOz4Qc04BC/YBpCj8cTc5Ey9XQUhYKsmLq+Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=TbeeZa2K; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e34e85ebf4so117701fa.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 10:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1715189921; x=1715794721; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RzAM9cRLAUGiOquaKixP2MGj/PQW99LYyCbfVZ7Leuo=;
        b=TbeeZa2KAkk1cMAXE8NB+27oQdH7uBRv1p1NeI99/1oZYpvj14EK9yfELogDZv73hO
         NV4PYTHKaQ1r67h0FR7BiMg7LeG8cAf/hqg43uMtaO61GlLvTQlyffZ9NueRzrwuhwMF
         H2PEbXYpo5kUZdrnIwqcL/2Sj29yAm1QKj5jZjCR8MPhKESkRc4nYZPU44YquVnfzcVN
         Q5C8KBC6D5EDIPRDsCRrYY58u+oGAlqjLMifoRLJgbM8gkw0Hdowdw12mqTmJJo3RHhk
         kiRwqhquurYZElQ9EyRglTI3Ol3ZGyP8Xq4IcixkDp91INHsMDAb0GxzBOyMphPMGhJS
         5fFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715189921; x=1715794721;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RzAM9cRLAUGiOquaKixP2MGj/PQW99LYyCbfVZ7Leuo=;
        b=PEmrVop2nLiqLOY4AZL0MHgwGePnTaprjHyulEkS3HxKM8IEvt8XiIYRMlDeKMiPm5
         ks2KZ4iIkhJ/SQssixQ6CxfwG50tCpW/zSqmpuTUL2IKUC7VzexaLh8P4OxhsYIuArp4
         kJ/eYeBaHTbDCIjOE8cwOqCRvG58/y38hZrH1sv3dAWspNkY/NXIegwn3QB6i5dGmRzg
         JAzgnE3WE9AlfzKIH6dTNuJiZ2Yb2D6Jk/OfCHjuva8AVyjFDrMylmvxMu+RXaNmy/Gf
         l6pANSx+bH4wkGJ64KdwgpUsHuZF46tRg5fPGDBNFi2WB7AeSL9UE7qrxxxUKu8Sqw8f
         4ywA==
X-Forwarded-Encrypted: i=1; AJvYcCXgTbo5BMIJXCWxU11dwAr1YvY1VyH+zM1s48ikXP+bwETruAUOZVlgg1A2nHXSaoO85icgeq+MESZHdRFPrYE20sAgtRB+rdAcHA==
X-Gm-Message-State: AOJu0YwU6+yu3GELHHZZsV1oGU81KTRHBnfQPCTmUoWJRhenwWXPLlJV
	0TFhMGBjNkYK90YNsqG4oY0Bj9f8qbfALG0eL9c/1DbScSo8VMqySIoIld6mJYo=
X-Google-Smtp-Source: AGHT+IGhUVMa9+23KRykDgqW6ofschZeiShfdVYRKcGu8qiCED16khFT1oYx2uAeA8VCadBzBznK8Q==
X-Received: by 2002:a2e:98ca:0:b0:2e2:2623:333 with SMTP id 38308e7fff4ca-2e4476afaadmr20982311fa.39.1715189921124;
        Wed, 08 May 2024 10:38:41 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id dh18-20020a0560000a9200b003439d2a5f99sm15824784wrb.55.2024.05.08.10.38.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 10:38:40 -0700 (PDT)
Message-ID: <57f8c9fc-e1ef-4d2a-8587-9a00549450fc@nexus-software.ie>
Date: Wed, 8 May 2024 18:38:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] mfd: pm8008: rename irq chip
To: Johan Hovold <johan+linaro@kernel.org>, Lee Jones <lee@kernel.org>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Das Srinagesh <quic_gurus@quicinc.com>,
 Satya Priya <quic_c_skakit@quicinc.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20240506150830.23709-1-johan+linaro@kernel.org>
 <20240506150830.23709-7-johan+linaro@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20240506150830.23709-7-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2024 16:08, Johan Hovold wrote:
> Drop the redundant "irq" suffix from the irq chip name.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/mfd/qcom-pm8008.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mfd/qcom-pm8008.c b/drivers/mfd/qcom-pm8008.c
> index f1c68b3da1b6..a04bae52a49a 100644
> --- a/drivers/mfd/qcom-pm8008.c
> +++ b/drivers/mfd/qcom-pm8008.c
> @@ -132,7 +132,7 @@ static int pm8008_set_type_config(unsigned int **buf, unsigned int type,
>   }
>   
>   static const struct regmap_irq_chip pm8008_irq_chip = {
> -	.name			= "pm8008_irq",
> +	.name			= "pm8008",
>   	.main_status		= I2C_INTR_STATUS_BASE,
>   	.num_main_regs		= 1,
>   	.irqs			= pm8008_irqs,

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

