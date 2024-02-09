Return-Path: <devicetree+bounces-40281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A72184FFE2
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 23:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85BCCB21FC8
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 22:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07A821350;
	Fri,  9 Feb 2024 22:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jSD3LslR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F7F374DE
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 22:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707517667; cv=none; b=h7DeFwiqssiouOOQ7bM1Ku+MeorM2LA/GMhLfP+X1Jn/EWKBT/o6X1rRijCk544Sd/9VLH3TveYYs5vrDMb9ZJ2v+qxfb1aCYkC8XyoWo4H9lQWMsT1jNmxdjOzJbOd3GLqkOJUUJcc/UYQPouY6FVjRn1hlumKSPdloUN/NXVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707517667; c=relaxed/simple;
	bh=dAbPe6dDb+OZ+ouIs9yoQTFLFpfayDn2dwymU9SAw3M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KnuojdXM2I83IzwXst4zMgZLhEc2aSDvWXzx0DitIMngTSbsMvxX734AbvkvuTlKaVJbbg3Vt0afBl0oaTnsAVux++gdJTDA75pzYZWaCSqBsgE4mizYBATj9v/rarG/zzZd71J0NKQV1JJasokJWT/KJ3xaAx/xOqddMNqdkA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jSD3LslR; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-511616b73ddso2409190e87.0
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 14:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707517664; x=1708122464; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UhnB9u/c4Xh/R9RpEoJoOxnXacbqH+cPKKp4JglZqlo=;
        b=jSD3LslRyD4Elv+ykOSasZCQtCVeUhyNelN3E5ev5HRz5UEpZU9xVWDNZ2NtAXyJyP
         9L9O5lziWI1zH62+uDzRhTLiKFJHKDSHxArW8njUQFMrcQFpaZsszVgGciuTiyyrS2By
         fgeQehJ7T3oaKqGSIg/uLt5+aP38pQllu6rxYwgik4BrlDAidNFZ7UZUG+jY2x9Ol/DU
         eWKWXfq4+vHZtnAj94puQo7F4oN/ee+dVvjkGYVCLIqnIzuIeZUxzRB73wvX/8Ck1KCi
         W67ZzJXHmmFVQh2nSmvIBMuYPdV2gtqOlvhYJMrQcQgh643OEk6lw35F6khNiHfsoFay
         n0YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707517664; x=1708122464;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UhnB9u/c4Xh/R9RpEoJoOxnXacbqH+cPKKp4JglZqlo=;
        b=NUCyI0dKsg/N0hzIWIxDwgwNlc18yKTqUpSoKZ1ANUcBVkTguJmr6xXkEGzd8qkEkS
         ZCFDcMkH1HdrKaIXHV0nq/qrZn/drukhLjxY09s8h8FQRjOgAqOfkoRRoXvivhlFbs7Z
         JL8hDJJppSeyoPQHUXV7fM0r/tKKJr/wPrx8I5JyFwPu4HOtzVaQ5e6RYngAV+KHDBEd
         pszdo3asnNX4aYRl9hyy55xQfGByRJKLNXDDkSH4Z+FAaQZ+ND8gUroPf/vFNW9qRuza
         pZ74Jzs+RyubrVOsyDDQwX2OkdE5ykDZFGS1kwTMPpx4MBTPWum41/48YI53KmwboS6E
         RVaw==
X-Gm-Message-State: AOJu0YyuJAz28lp9Cey+Pfwa46EKnCBOOnKQVFI8l+024/DIMMKdbBm1
	W0q0TZ92TNaDU3+51QDuhMfi/BD4axUnCiL51aELepyqDGt/6J+H4X3yUi0C3Cw=
X-Google-Smtp-Source: AGHT+IFk0BvNfU03RTY00vNd0uWlw2zfLUcdWdjNtEEqCbI31zvZc9dHfR7M+M0O0gVjrzWv2uqP1A==
X-Received: by 2002:ac2:5f69:0:b0:511:79ce:c223 with SMTP id c9-20020ac25f69000000b0051179cec223mr185563lfc.19.1707517664054;
        Fri, 09 Feb 2024 14:27:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVNo+t0dfiXxaZobpVtf1JMEmFrccALqrZuZdPKSX7t6w8j72Zoi06W1PaMv6WfR4//AAyB8rymwsGq64vLGSHclxAbg1zhAE/qedRvb7B/gclAszpDm96I6pV+08kl/80N6i+hU+6nAylZZKMFBrz1ZZ6a7WC1YiSyD+UvY8t6KwG9y92N3TAqkUo7Onj8Q79Q0k3oUmaitDX+VbwpJtvM9pngPfRJK+dtc3FeGosSvt09Iylrp11Wg5jtACXjcUCEd8C+zkuAswAdcGr6bZXvycamcKbmwE3XfoDxwqYT5R7MklkqWCLFHe6waSulA5RYfufyQISUS2YgD3cAEDlGhmm0Sa/SUouob72Y2LdDIjgQUqx+RmwnYyo3xmKgvXxGT7duQjhTb5sK+lecDd/SklZvHTtDRjTi1GbmM842SPoYQKpSnMpjHqF3RycecZI4tE/QDUaQH4PT6/UCQSkbbDg6W2LwU/VH6kzvAyDDTfQDKZdL5tHpFf3gLIuwfwZyUUNB9tywmPRMCMLtHo4Z5v9ctvMIvLtsm/NFjQbCDUBH5Z9EdfEMEkb+WKKF1JuijqPWySZQmm5OwZ9AWUfdvjOArLA8Zcyt4JG/rTHSjw==
Received: from [192.168.192.207] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id hw13-20020a170907a0cd00b00a3820ec721csm1167406ejc.8.2024.02.09.14.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 14:27:43 -0800 (PST)
Message-ID: <f5a94817-2914-4fd8-8f08-ca8c42eb1ebf@linaro.org>
Date: Fri, 9 Feb 2024 23:27:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: qcom: msm8996: unbreak UFS HCD support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Nitin Rawat <quic_nitirawa@quicinc.com>, Can Guo <quic_cang@quicinc.com>,
 Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <andy.gross@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240209-msm8996-fix-ufs-v1-0-107b52e57420@linaro.org>
 <20240209-msm8996-fix-ufs-v1-3-107b52e57420@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240209-msm8996-fix-ufs-v1-3-107b52e57420@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9.02.2024 22:50, Dmitry Baryshkov wrote:
> Since the commit b4e13e1ae95e ("scsi: ufs: qcom: Add multiple frequency
> support for MAX_CORE_CLK_1US_CYCLES") the Qualcomm UFS driver uses
> core_clk_unipro values from frequency table to calculate cycles_in_1us.
> The DT file for MSM8996  passed 0 HZ frequencies there, resulting in
> broken UFS support on that platform. Fix the corresponding clock values
> in the frequency table.
> 
> Suggested-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Fixes: 57fc67ef0d35 ("arm64: dts: qcom: msm8996: Add ufs related nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

I'd reword the commit title but okay

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

