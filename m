Return-Path: <devicetree+bounces-39251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C668E84BD8C
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 19:57:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBB251C25321
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 18:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CEBDF5B;
	Tue,  6 Feb 2024 18:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Eym7ZNKr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD3014A90
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 18:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707245850; cv=none; b=nwemmogI3aZt7sGKzpIljaJc6kdkVVFsQLqJNdWUjS5DhTHYCf4B/z0N1ItxaiN2sDedgExykZLUR3t/OUz2aPLf+XZep+wAzO8ULvv2l3ruArpnSqJlOFHMARWrp3BUOG7ozwpUsfJjwUw9q18v2WiNgnntIojatsEYLLTXrqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707245850; c=relaxed/simple;
	bh=Ob5EZtb+PDU5OlOccIqmHE7thnzkplSG7qztNGIsIAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G84MrQpzfDthComgOdWlhEBVrjaY9jgQFu43UV+Z2q0NzpQAzbm7p8ZdiaiG7YpZxSeY2Q0nsJkTiSN+dLeR2BD7Ue1btI/ybdpmeBv0xddcMN50ZejJr3xkSBt3WJ+4jnto0aGeq2HbH5Rawi2Gxt6szvHXl+yka1m/VjuGRgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Eym7ZNKr; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a3832ef7726so105813566b.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 10:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707245846; x=1707850646; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qyPGCRBtI7HFbt9lmXJgDt5KGX5PP8cKx5Um2UZC7pY=;
        b=Eym7ZNKr+dWyFLRAHAuX7jy77qPdp3fBA9+X8VRg47u4gh6UHH/J65VT9l9BXZwxXe
         l+rC/gsYxT1Yt0LiBv3y8+5qn19iYCYuzbjeqRykO0nZCOV4s1J5t1lqkmSR7WbQ81K4
         qLU+5okS3fgkXOqpDrujJ9gMQlUSoCfTqd7YdSNT0oKpTNrf7/7e1jzhWKt2I4z4R9Is
         wytd8Ec1TI0poRZCdu1X0nRMuVoKjwVZK70gZ2FH2AFIEoEy6HKb7VJ9Dk+aF5xeTe+u
         Pf/OpmI6CJOLXd5DO8LkNvtyrxaMqsXRreafRutevh30dLvP8d9doeBvVgw6U6MRJxf/
         Ujww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707245846; x=1707850646;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qyPGCRBtI7HFbt9lmXJgDt5KGX5PP8cKx5Um2UZC7pY=;
        b=Eftof6LJ9JHD0CFdHJf5EdXwrW9F8KfeUttztnqpZJV94vrorKygWlBM8tq1QiJD5h
         /ZJAavsUvZaClhQjr4YTKL4XDpW0mAclibVfAEUjhMDOU7cGX1Uwzns0DE22rH1/UCin
         Eh1tElvwt7I6pSDuUs8unpzCmdhF/4mwqV9XEi8QPHBU1X2UV8ImTetWiZuiHgggx8Pz
         cBbV4PkaJUub3TRI8dAiFydBHDYzzFv+9Xf7p7i1gREe3Z1Gwg1VZTB0LEmHhruqOewz
         7AXVyf8gmKfFlGHxAZArHHv5haiStQUSkofSI+qiCmQ7Pd1lh3cynTVMXY0CBJSG65Om
         dXOQ==
X-Gm-Message-State: AOJu0YyHIqZAg7xChTZyAZJfOtbQx42dZMyIjK+K2MWvafE7cO2eQ1/6
	Rw+0iOsrItv/botWIYIRcz1LrJHsO5rFb3KNF4brKs+WAo/G0fg7MHC/bWPUCYY=
X-Google-Smtp-Source: AGHT+IF9wFj++Zhx1sP0zdupnhYt0kr6SGgE/iEL2yKscqHdWXt6YCaVxoXtPHCpyxv5Yy+eMPFoPQ==
X-Received: by 2002:a17:907:1048:b0:a36:d1e1:71ec with SMTP id oy8-20020a170907104800b00a36d1e171ecmr2514519ejb.46.1707245845883;
        Tue, 06 Feb 2024 10:57:25 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUfzY9peHZJmgTYrhEOY5+4VkwBUX4VUWNTZyX3w22AW/5iNcuAhJUNL+l/JBPxDGcawxUq6AP7P5HYDLviZYqDyX2J5SUTog+8UDZ3mHN28uzZywipyPZOSfn37oARKe6CyB+rfBarg2ZNDCMzqHhjycEfD7G8wTEHss1N5s3uJTOOrfZsIlSdEyPu5V+xW+Yf5Prbr4kTEjfLstK57nVDhEW0vAd4XKKSzqGRB9XsDwkyu6PaEkuBtpMTATB+RxSRDzhJKGQB89QIX4zBVCMrPYDFjCO2ZGmucL36wxSMIGDSPh2kcTdn67Mbc5MBhk1k6MymN0Y5HZin8kgJ12fee9zGri7PojKUxNOBIgOUmrt8S3U/qrQOxw9VcY9P0LAGbhGqCcuVS1XWin80o0fasFy9Ak2jumyMmp/TM9acy5XSyH1h8lsjtr8aYihtLnGnFB6+v1i3r3Rv7dmnDngr4WDd8oVlqqXOrlj6BYCk/XXY+sklYSkbzgLV1gpVW+36oZ0b7uphQLqPCOmAFHFSl03a1UXBSpJbgQ==
Received: from [192.168.192.207] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id y16-20020a170906071000b00a371eced193sm1465555ejb.49.2024.02.06.10.57.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 10:57:25 -0800 (PST)
Message-ID: <ccadd716-cb4f-409f-8926-afe8a095103f@linaro.org>
Date: Tue, 6 Feb 2024 19:57:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] arm64: dts: qcom: pmi8950: Add USB vbus and id
 sensing nodes
Content-Language: en-US
To: Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Luca Weiss <luca@z3ntu.xyz>, Adam Skladowski <a39.skl@gmail.com>,
 Martin Botka <martin.botka@somainline.org>,
 Jami Kettunen <jami.kettunen@somainline.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
References: <20240121-msm8976-dt-v2-0-7b186a02dc72@somainline.org>
 <20240121-msm8976-dt-v2-1-7b186a02dc72@somainline.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240121-msm8976-dt-v2-1-7b186a02dc72@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.01.2024 23:33, Marijn Suijten wrote:
> USB sensing is performed on the PMIC, exposed as extcon nodes for use in
> the relevant USB (otg) driver nodes as the hardware itself is not able
> to sense USB presence (5V vbus) nor the role (ID pin).
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> ---

I hope the USB_ID thing won't mess with a possible future charger impl

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

