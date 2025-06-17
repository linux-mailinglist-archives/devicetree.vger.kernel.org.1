Return-Path: <devicetree+bounces-186857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8A7ADDDCE
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 23:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E92977A56BE
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 21:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 077DB2D130C;
	Tue, 17 Jun 2025 21:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MLLjC4fq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC371DDC28
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 21:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750195061; cv=none; b=XQ8890Z83YxXgltmIKAH3cB5J3ka412h7cadA0N8WjxKkw/06feljinDwAJV86DJRH4/JYchzs/92gdmn4biLnlUltNn1gz5kyvE0PkqZ/HbQF0bdMWJ+s8BuT/R5kFDSmD+Ke9XOxqe8FxNtyzl7zqGQNHM0IlwmskutsCFHPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750195061; c=relaxed/simple;
	bh=Oc3wFGHZjYKe6oz/Y/IvLBiaMoXgWFyYaPfVregWfSQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jqHwDjaVr2FSvZ2gPj6zZEk4kqOUFfQLtVhlLk36eyaiBUF3b3EGGKb5cZpmKaCnQUJ4WaJ3UYYEut1aHd4qBOLB0VLUNS5Uu/a0JUnVR8RFavfUrkQ9AAnHW0hwjc4FDdtqlhgy8uSf4NllYfYJgCLL+Q3WEYc62yN0etysQjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MLLjC4fq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55HF70mL014442
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 21:17:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F2B96TFx/KL9jzZyjSrVip1zy+zPM/f/59CxS6xFHzE=; b=MLLjC4fq+VG7/JHX
	Tzb/Hp1CI+Il6vu2th+V+EVEuMOSzEiwC6EaZU892T60l1TmRe0JvB0DelRiLQkl
	ulgnaXV8OwCa80GSA7pUzjrjWUdJvhR5suyuTWcSt+KO2hegZQMbIE+kO/nK7N6g
	puFW2MeZwehuiHxqLCcJ67frG8kR95Erfhb7mdwlJwU8fbjtaYzOlR3qxIwiibbV
	ehS0w88xM3BcPkuwL05Ws+bGt8OZttYIDGNRdqRzO3tEBiQBB4MaJKP+2h3seXx/
	XYXifChGbktNduo+4II3nApP4Pb4VG6rYfct6Zz8emD7WptQIDqYKxvDIDuEa0KY
	F9umNw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47akuwd89p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 21:17:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d097083cc3so176289385a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 14:17:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750195058; x=1750799858;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F2B96TFx/KL9jzZyjSrVip1zy+zPM/f/59CxS6xFHzE=;
        b=kn/0h2eojXsebYEgx5MVwd85IO+yEYn2OO3HImtYhQ08fAqDhFAgBOx6L+bbbf0fSF
         8vk695ZWAiuhz2R2SjtTV+OShBJ4tRTBl7NhYP4csKyM9D9JAqH0i81b9ngKWd9mqVDj
         IRe7vZUzLKC+aIKBqtPsjdJnP7UADv2VomA+HBj32BN+gUhTpKyRdlpfLwKZATmusNkc
         WDtSwijQv8sMX76vBEjUMd+BkXikIsKOvrYYwCYVvCsCyDwIVNpDSx3ELwzQIBrwpRpA
         erpu5nPGIFNR6X8KdJ5Tfe7FODDxG3Tw/CSW4+z6og7XL6nKTHgY+Ub44D9lpAL9veDC
         WZuA==
X-Forwarded-Encrypted: i=1; AJvYcCWcXjctbbLmVKbN2GYfFIeIIdo4ChuItwjo8jWtULbOsbPM/N+BRs6WVRjM7PRhML79uegHc70ZvJxF@vger.kernel.org
X-Gm-Message-State: AOJu0YxQXtLJjf/z+i3XDozNG0SoGXH0fg8sQSccfaZsPMgrHdErScT9
	eW2LpnqE3XuDd69YDnbcrhzgql8t2oRzbRtC06oG9VjsLRAaOokjYZ3EimrwLUOfCeOxn97WGcm
	UrC3NToweSyYvD03yITWea/leNWSnSSFDfcmmyOsWw4wmQv6vW9TRDCtD6Vt+q9IS
X-Gm-Gg: ASbGncsin2B61QU7YCaje7cHIGXGbKixwSOvR+8SG0T0vEqO+L6MB/hFPif6aj/18HF
	h5uLTzauXmzM58n/4Lz18FEFTpz4eJV1jlvSV+UZLikh+Y1U9h4qtXWIKVvjlfFMPgLTczITG4y
	oYidQ4NRg6pWACivw1UVLjrjJ1r9eQjBgK5koqDwERwlkWoBXoH+98CeyseYTC8/emtRU52V7A/
	op4ZXdo1Z4OlX5KMDmkj3eHwe44UumDWRKCsgalrAKSrqllj4mCOqtH6pwEd/8uO/a4lGb9tTzC
	pIWCMpjCqFYdBNbUHzcO7mWyW3Oj7AjFcdSTeJyah0FANb7MmRBQsEqGt8emvjq4clQrSAVX4+N
	B6AY=
X-Received: by 2002:a05:620a:2a04:b0:7d3:c69d:ed69 with SMTP id af79cd13be357-7d3c6c17e62mr872990085a.6.1750195057551;
        Tue, 17 Jun 2025 14:17:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuadPbrh1VUll8Di3mBOdCudw6vbTTmMGIJ2ZdldP2NKImhDqIStGDB8oViB5MQ3gsuN40MQ==
X-Received: by 2002:a05:620a:2a04:b0:7d3:c69d:ed69 with SMTP id af79cd13be357-7d3c6c17e62mr872987885a.6.1750195057185;
        Tue, 17 Jun 2025 14:17:37 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88fe514sm933483166b.79.2025.06.17.14.17.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 14:17:36 -0700 (PDT)
Message-ID: <c2e21596-8d94-42c0-9a21-f77d510a8cff@oss.qualcomm.com>
Date: Tue, 17 Jun 2025 23:17:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: msm8976: Add sdc2 GPIOs
To: git@apitzsch.eu, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250615-bqx5plus-v2-0-72b45c84237d@apitzsch.eu>
 <20250615-bqx5plus-v2-3-72b45c84237d@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250615-bqx5plus-v2-3-72b45c84237d@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: PATctY4BPn0Js-xZ6VjqvUosqDE9fTEZ
X-Authority-Analysis: v=2.4 cv=He0UTjE8 c=1 sm=1 tr=0 ts=6851db73 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=qC_FGOx9AAAA:8 a=HDjIzE35AAAA:8
 a=EUspDBNiAAAA:8 a=moa28MdQsDLXcwDZZloA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=fsdK_YakeE02zTmptMdW:22 a=y3C0EFpLlIT0voqNzzLR:22
X-Proofpoint-GUID: PATctY4BPn0Js-xZ6VjqvUosqDE9fTEZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDE3MCBTYWx0ZWRfX1pYWA6x7T95L
 zsr1uVXW4yRz2F+2ZwCRsqa+138Kh6Y7geFHzCgoA8VUk83vUmy8twD58fYyMzKuJkAzF+0UCpg
 I85S5ki4V+wV4z+aHN+TG6oSPMF4zLojgkrfbDLmKhcMd2aeyAdTAODR/tVxpTGfsYw7TOQSrCZ
 b58xP3I9h9eSredO9lsxTPHxI0Q9hlTgybCGf9UkRi/SaI7bt5dh1bay/fv/HUR3kft9JKP2Tr6
 xnqhf5j+L2W7jmLAGoeE7p+Mmx5pKTQNWpXBHmk1ASFuy7gP8znB73+7ogimfHuTP7d9EULRqCo
 wEW9ETsKn+AQLu0qVYrGQiFW4QsXtxMPJ/7oZRqhMk12pmh0AVizHltKU/3GGwTAH912Yf8RNUM
 +mdcnSBmtSrfgFn8rY3TolM5Vgia8gikLsI18IHoxzntFdZ0EB7vW4nvX2g/Qrp+RIHPqrP9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_09,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 phishscore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506170170

On 6/15/25 10:35 PM, André Apitzsch via B4 Relay wrote:
> From: André Apitzsch <git@apitzsch.eu>
> 
> Downstream vendor code for reference:
> 
> https://git.codelinaro.org/clo/la/kernel/msm-3.10/-/blob/LA.BR.1.3.7.c26/arch/arm/boot/dts/qcom/msm8976-pinctrl.dtsi#L223-263
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---
>  arch/arm64/boot/dts/qcom/msm8976.dtsi | 36 +++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8976.dtsi b/arch/arm64/boot/dts/qcom/msm8976.dtsi
> index 2a30246384700dac2ec868c6f371248cfcc643fc..f9962512f243d6c1af4931787f4602554c63bb39 100644
> --- a/arch/arm64/boot/dts/qcom/msm8976.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8976.dtsi
> @@ -782,6 +782,42 @@ blsp2_i2c4_sleep: blsp2-i2c4-sleep-state {
>  				bias-disable;
>  			};
>  
> +			sdc2_default: sdc2-default-state {
> +				clk-pins {
> +					pins = "sdc2_clk";
> +					bias-disable;
> +					drive-strength = <16>;

Should you send a v3, please reorder the bias properties to below
drive-strength for consistency

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

