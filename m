Return-Path: <devicetree+bounces-223527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A05BB6908
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 13:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B31573452B9
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 11:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCBC725A640;
	Fri,  3 Oct 2025 11:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D5MpwQ9Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0430C266B59
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 11:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759492430; cv=none; b=NrnuQjDl7YwdX+nvfYayijGVONKr1kKbV2SMdi6Bfjdf+ULZ468R2liqYH1Y8Tq/lcAs4voZ1l6KuKM4CaPE+K2Y38K2nzlbInzllAWJDQ1vO6UtxoNJlQU/BU5KutiOx5sFlhb9+7jIbOBcEn6M8ktdMNl6yF8dRYOoSnobXDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759492430; c=relaxed/simple;
	bh=xxNiT++Ko9RTw9HOwLGTPFz5Lc+N7FUYBe8+a9G5faw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PP7iaY/XojAAdCJqstVc3dcFU74uQBgTPGjg4jcgj3YU+fBTkXxPZfdnnxNM0B2GjSlVWgcZUsL4Bq1cVinWhjiSwos1QELphbzhrRQ06xu099aEYpbQ9sguovEeJWo9slB0WZ9Gb8VZ8nslSjirT7nbeshpRjPE86fuRDDh5hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D5MpwQ9Y; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-634cef434beso5973404a12.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 04:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759492427; x=1760097227; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v348Sd1HyGnZQBz/neaZqbiR/lhhLUWkTvsJPcWV5Ok=;
        b=D5MpwQ9Yvwa0gPLhdrjtHBdug+tLd/dV37tlrTHl+hGtuDz2EflORc9mp1b5dGlILC
         uhf2f8ar3J8tLLD6T8GaqR1AyBDShoWlsIQPo8FcTeN8n7i2lTfM6EQ2sNFmbuvQIQT+
         KQkHG4oH071+/BakPXEaRB6GyehwBVGMu9Qp94sZlBV4zbqPrpn8v1DEJmbcxu1DqWrk
         sS+YiwWT2IEUfEE4D2LXosZxGiqRhM7zd0Xl/3vExzYfkj/ARb4pd7JLkphMBxFi2uAi
         5gj8hG1D/5t7zS8We8nIXnPNcC7SJRKultY1+olmWeSIZcCsA+16N5kqLehqxZ6macR7
         GO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759492427; x=1760097227;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v348Sd1HyGnZQBz/neaZqbiR/lhhLUWkTvsJPcWV5Ok=;
        b=ouCjY4A0OBxUYdwNqfLb0JO7BSftAJ6IuRu8oJmvw+PwtKd3KLzCOCq1bW+zEMpf5N
         DqW1OXq69iCopcGZZsTMO35Sx2mLv1ZGcqeD/z6z7+Dtv0cb7FjhsYQo9OPnlWUQPdAk
         Jio9nrRs2bbrwGg4ekth/Q27OdF4VlKgGH+XWZSKzLrazY5Q7xsd20mzIHyy2IOHuUAY
         vF4zQRSgc1oxoamdcnzOKZ8nfTSzZoGiKpUCDsehAfw6YZhXKIlxWB4IW9mSB7M5+AYI
         zgshoDxAFJLsxa6VTrg835+ho6znuAtgXV2mqk+aMsuxedUM6t9bhg31nAakeKiooYPf
         /Pig==
X-Forwarded-Encrypted: i=1; AJvYcCU/evolBE8Pexqzmi7tCnIy1LIfJYW83in8bs9+Sfo72zF7YhIStN/ZTcY6L1mN2/ZZzYSpC4dUPypZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyAkJH9kZtZuj9DiLh8kUCHZGe0AbkS0okbTc3rMvRfH2CYKPhO
	hinL8uBNAu8H3HG7vF1wxqaXk5lGBdH+R/0Zh91cJYl0fTajCuhj+442rN8iKMhdEco=
X-Gm-Gg: ASbGncvhCQVsmfpbk3lpp6rafIZMp3v/iTERD65cIC2vZUKB9/NE7nIStcnP7i23fVh
	n7LIeoyPrdvZ19KgGfRtC4V0VoM1IVpu0ewC0shdjqQ0aKIaxfIfccnwTKuI0oYd+rzweoClxlI
	HdZazzqFrBeZabZjh6jz/3HokbZrFmvPjOQEUFpmXNmDAa99dh6S+MXx/ri0DKvquCfE7YG5kev
	nhgZ5NsonpczfQl39nVv6VBMsGavrsqKNRDvbPDPgRU1Ju735Ccre/kunnd5oqcxq5F6A0HwIZm
	jH9IdYELrpyGCUzv0tovnwf5CMNcLJLe923NUJkNa1SqVEkl3q0n4xn7IKoEnWTJy3ahDqSTJPY
	MZXv+plYNAhySTlRDI8TWZAewRT1yRF863s3y0tj9C/xX0EclOuvBQ+s8JAlcJ5eNQEX1
X-Google-Smtp-Source: AGHT+IHYR3iC2LH79LtowBLJrojMWjOE+pppainz+qSkeukLPpqSESK6b5VQ8mGniwQIYMRLlwAVvA==
X-Received: by 2002:a17:907:6eab:b0:afe:159:14b1 with SMTP id a640c23a62f3a-b49c1971e56mr369945366b.9.1759492427304;
        Fri, 03 Oct 2025 04:53:47 -0700 (PDT)
Received: from [192.168.0.25] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e7c47fsm430327666b.37.2025.10.03.04.53.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 04:53:46 -0700 (PDT)
Message-ID: <8e687353-f505-4122-bd46-57ba0d84dabf@linaro.org>
Date: Fri, 3 Oct 2025 14:53:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dt-bindings: firmware: qcom,scm: document SCM on
 Kaanapali SOC
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Robert Marko <robimarko@gmail.com>,
 Das Srinagesh <quic_gurus@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com
References: <20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com>
 <20250924-knp-soc-binding-v1-3-93a072e174f9@oss.qualcomm.com>
Content-Language: en-US
From: Eugen Hristev <eugen.hristev@linaro.org>
In-Reply-To: <20250924-knp-soc-binding-v1-3-93a072e174f9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/25/25 02:31, Jingyi Wang wrote:
> Document scm compatible for the Qualcomm Kaanapali SoC. It is an interface
> to communicate to the secure firmware.

Same nitpicks on subject name and extra sentence

Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> index ef97faac7e47..340b754e6322 100644
> --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> @@ -31,6 +31,7 @@ properties:
>            - qcom,scm-ipq806x
>            - qcom,scm-ipq8074
>            - qcom,scm-ipq9574
> +          - qcom,scm-kaanapali
>            - qcom,scm-mdm9607
>            - qcom,scm-milos
>            - qcom,scm-msm8226
> @@ -202,6 +203,7 @@ allOf:
>            compatible:
>              contains:
>                enum:
> +                - qcom,scm-kaanapali
>                  - qcom,scm-milos
>                  - qcom,scm-sm8450
>                  - qcom,scm-sm8550
> 


