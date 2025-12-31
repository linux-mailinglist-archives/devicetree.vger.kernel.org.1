Return-Path: <devicetree+bounces-250745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D30CEB80A
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 09:03:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34BAF300E79F
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 08:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04212E7179;
	Wed, 31 Dec 2025 08:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L+oINOzp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZUn2HeNX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4F81C32FF
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767168190; cv=none; b=Y+gpSDjvVGDY4WrkODwBlYK5ZQT18bTyWCXjW8NOr0qgCHNpOcNO/drqzot42eJkjqelba9XNifZNAlDJflOsoQYCPAVmhowf8WZXBN0wFeb1kdvbP6IauhOgbi/ZCXlZ64MOK/O5Xwi0UzzCvlRGs5NYS0u2/HhegwGIBqHpr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767168190; c=relaxed/simple;
	bh=zdicL5eeF6fmeR+8lVyODQbZZ9BtKk7mL/KD+HS1NCI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G7vf+kQtB6DFQN4qF7ayktQjxfiVWsiRFV2m4y4D6/Q5XE2hAtebqPaQyWLPeCdmlm8GuRzqsbjzjY7dJ1JaUpfzYDQuX215eAPIUZjl2tVrJ2yNFmudGvr8dOJd9xe59rJPyhL+iVwF0aVGsbqLHGkMV9Oqy+9eTlORnvL0Krg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L+oINOzp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZUn2HeNX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV78VjD2733286
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:03:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fh/MItMWgc8x1Q5KpVTGvJw3PycObVXciZM+DpfaQgk=; b=L+oINOzpIRCZOcl+
	3bfFW00LCSTog+3N1QYsMa+uOF63Z7XrDx090enhKEIdaU8A8cQEvvl7b6hnc3Hz
	PRLs44IHRCv8Ty5HjsHbWh1BkuYZWaIbiaQJyPvY06irLVLDLzrdDR7X9/MjWCXf
	U0DFR6ZxQ/K/kjRGxbfS8CP9JyGQPoZdz9ALojYVtZaJ4FBpIBibkAX8zjuMTITn
	ce/IWvZ4aJD2OGWsMg1Aq5PMn6iadzPsNXs1GxfI8BeoA3exdSsligQA5Mo3BrW7
	mCkX3g/y4Hd+lyozgHBL2bauGCKuPzRXcUXOKE1gXo4lhSAgeyn82I+PYqdRLPtl
	GuHkzA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcy6ag396-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:03:08 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7c240728e2aso22324887b3a.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 00:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767168187; x=1767772987; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fh/MItMWgc8x1Q5KpVTGvJw3PycObVXciZM+DpfaQgk=;
        b=ZUn2HeNXagMK0b4d11ZX7bv7EsZhejn05adwzJBCFdylskRudTHGmgucvHmq29oyoC
         eYnno7wVru8iZXVxunlhLUo8ep+YbO6TQ7v3Xep8f/jHyTA0QFJ0LgEsPk1cSJQKxS34
         3Ia1fE5+T8mrvvvPosvPp0uLH9t1oc6i46Qawy/Y1iq80WnA6BI7qyUUjVZM2uQTbaCS
         d/QDo2by7OArcGlhFvkTroccLURdoSnMPL0q6zeRKHrXbBiaTVIl+p6FEfw5sdMTwDps
         uo9MTrDn7GDTeM5BMfhJSjnkAH27sAp9OAvG3235Csw1ii9cINpo5KuFv6hAurZ3y5Ca
         y94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767168187; x=1767772987;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fh/MItMWgc8x1Q5KpVTGvJw3PycObVXciZM+DpfaQgk=;
        b=uhifLPQaFFSIFPY4/0qfANQLVrpaQx+XLU1zMjPNF5hKZ3NAEYooIJ511mhJ+1VjLb
         ff29Fc2tj0TgoV+RsWoSxOvxZ/IOi0ZgYFPWXoTUrO6nKUuNxJpMF89Lgv1rnBP5wI8p
         44x8ZcE7u8SkVwG/vj5kxloXgkUOOLe0qiGLdSb7jZrRzxN4qtmtAOi17WulvYOamAzf
         QrUtDATNx4ZzKwphXjUrkJF1dLy1DEl5OfyBHm85bmPHTkejHUSDv9jyAsS8hXFHMEJ3
         Znu8RhmuinZQf9iPqyhN3Zuc0xsfwHq3bC+Fytn5kJDk3PddlS88nB1vTwOo5P/q65/4
         Bp6A==
X-Forwarded-Encrypted: i=1; AJvYcCUbj4VKWSwqT5TJjo8pxI9A2qS3zJVwUz3TGwHiGJrupWAv4Y4CU8qyC3g5HE+dLX8ZHlQiVtgqMhMS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1tMYVMK2t2PkgLxBuWm+7h+IhhSytmwgfajvuUBte/wLt17KY
	8JCKAIEdELZ/JOODC3/6ptvACxDT/jYsIBEbUggeYTf7ren1pKw1gHOz1AoiusMo59rfviW+blD
	Okc1pY/mHj0IdPXdvkUiiGD9ItaAkYW9pAHzWInvy+8JZgeytkktrnk8ljgJ6DH5M
X-Gm-Gg: AY/fxX5cJR0sOY6eqTpEHOSGqIvJSDLkkjAM7st4j07U6s87LiTSvAemi1Vr1P7+oht
	fFABTD4UyOsHUu55L9CLIiITOBW+lRQ5qQDbDKGCKVKFecrOtF+w0lpV8Fqtgzu0gB4zLfNPe1m
	ldlZ7g4PqKgQGz4QNnXv2y37ei1rX7YZCVChjfoN66C9w8DzmWPv17TztVDvdhLcvvlUYZUdSXZ
	n3FyfA5lvYl3zwuVZ514SgTwjRWsEeNDVmaLC9iu1Hv37bg0Up1qj5AjmlHY5hofIzgC5KMUt6a
	z3CQl8x349PqJWzRp93vgOLKKksaAvvrbwfQhgvI+s3hyi0SpsofSjjLY3+vraykydhRqW2jPqg
	6wdFKNDSYJy4O7YLYOyqdpogdiVK5ai0R3w==
X-Received: by 2002:a05:6a20:394a:b0:34f:c83b:b3ea with SMTP id adf61e73a8af0-376a88c8e9amr33020898637.18.1767168186762;
        Wed, 31 Dec 2025 00:03:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRZbftv+BVOvEqHmgpz0Oia3X5rph07ga3tX7rOs+vckFH90okaAgJTuMUkWED5kuM0mO2gw==
X-Received: by 2002:a05:6a20:394a:b0:34f:c83b:b3ea with SMTP id adf61e73a8af0-376a88c8e9amr33020860637.18.1767168186234;
        Wed, 31 Dec 2025 00:03:06 -0800 (PST)
Received: from [192.168.1.8] ([106.222.228.197])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e79620bd3sm29395354a12.4.2025.12.31.00.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 00:03:05 -0800 (PST)
Message-ID: <976006d5-e674-4fe7-9578-a46f6c325585@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:32:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 8/8] arm64: dts: qcom: qcs615-ride: Enable Adreno 612
 GPU
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
 <20251226-qcs615-spin-2-v5-8-354d86460ccb@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251226-qcs615-spin-2-v5-8-354d86460ccb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: pjLw6SfjGPgOphtFmQiZF6cavGY1UtWX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA2OCBTYWx0ZWRfXwnPH7FZZZjS3
 x44QOomLWdK03L3HqLZv2S8JhqaUVbXQfzqFNvU37ObQhWrihmlumIPhu4Xu/iaLPGJKY/JxTlt
 Cc/bdcvWWKT2Zv16+S9QBiLLZ8/hB3SFDU38GZX7NTEXcXd8vs86n97WQyWMDccABeSZ0Bv02ya
 y7J70tOEXLoBdgMSkG7feVOuxnKRS8xmXK2dAFY4kUpO5HOlmvPD+bMHczFqZU47X7qSZbOMk1p
 4xUK1FwCUoXRJegMjkGHSZY+Xt9pPOUp9mWiITB+TCka6EKuMhGUF8/DMKYMCARTt5OzQH1b5HB
 7sFDVVLWSETlXnZa4jFPLb3IIEs/B0CPe7jzwlkP9SKpws1/zuHgVJ91KTITh2NzYnHIJ/iNuNN
 Yxgmo2Cx0jXs5rkp4mP0GslUbyPoVCAL+2E6eh5PsdAdFMUYQ86KdQeFXJheiBKwqf6Rv20SGSj
 G/t6E7BWDF2kJSJ4SzA==
X-Proofpoint-GUID: pjLw6SfjGPgOphtFmQiZF6cavGY1UtWX
X-Authority-Analysis: v=2.4 cv=J9GnLQnS c=1 sm=1 tr=0 ts=6954d8bc cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=BOTrZCw/7mKnJJrTL4lQtw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=nYU5dbzxO8IYIpRpci8A:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 spamscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310068

On 12/26/2025 11:59 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Enable GPU for qcs615-ride platform and provide path for zap
> shader.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
>  arch/arm64/boot/dts/qcom/talos.dtsi      | 2 +-
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index be67eb173046f9e4ac58157f282c3af41e53d374..33e33aa54691d38f96e5c76596719691e2596eb5 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -358,6 +358,14 @@ vreg_l17a: ldo17 {
>  	};
>  };
>  
> +&gpu {
> +	status = "okay";
> +};
> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/qcs615/a612_zap.mbn";
> +};
> +
>  &i2c2 {
>  	clock-frequency = <400000>;
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index 7c2866122f9a13b8572fd9e6fa9d336176765000..606f5e234e4a02caaa03f1084336e137768dba1f 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -1902,7 +1902,7 @@ opp-435000000 {
>  
>  		gmu: gmu@506a000 {
>  			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
> -			reg = <0x0 0x0506a000 0x0 0x34000>;
> +			reg = <0x0 0x0506d000 0x0 0x2c000>;
>  
>  			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
>  				 <&gpucc GPU_CC_CXO_CLK>,
> 

A case of fixup gone bad. This chunk should be in patch#6.

-Akhil.

