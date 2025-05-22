Return-Path: <devicetree+bounces-179707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E82EAC1312
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 20:12:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93743188C4B5
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 18:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225891A3151;
	Thu, 22 May 2025 18:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SvvJmXzs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0A41917C2
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747937570; cv=none; b=YN+Adit7ZA+Fpe29eJawrJq9eCKUNTzzBEJlVgcIvRDX9A38U9ttYJ9SZp883ME3layN9+fVWJTEbEi/5ofyWK7xcvAfzJqTykvrqfjK97WSmvMZmN5MADdBVhWUtjD7EPgpwmEK6uJvbIlKN3eKzuAnPsJFWC8SSomBv/trOZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747937570; c=relaxed/simple;
	bh=4+L3iLZ1PQ+3x9OrSxwxJm5UHnJLQRCjkTTkw4U8OIQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kewpqNrntaPjyAhWpNXuNGabuE01NIvyBL3zacEnX8MnfWKxssGtONeY9MiiRBnkiedJQpR4ypxrA5XLcqWT1sUgpR/lJEMSTIl1Fy1zUJkFVIsVVxSDUlgth7aTdTS05pUIJws72mJ8KBMWa5W6bIC1j9H08RcwaJTs47vTL1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SvvJmXzs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54MH0siu001233
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:12:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rHki3C+ZJvXgoBcG7+ipq9fxEApEk5oINZU9My5zwuc=; b=SvvJmXzs4qhEv6e4
	eu5PSNbUjxTvBr3wpO5xfBrukRDoZnoUGkAbZquRuMqauab4U/JvX1/DCkkCF1Q5
	pgRiYI1cHElaBcsmuGjmrGo2+e9Sju8uoH4jnlcU9We5XJAc1vHw65Ci5kbtkHJX
	+0J3vU8dye65Nz1TCuMoS5Rq7G5UZ8puLgM5q45gb1oQ364chtrxl1j3DV4hJ541
	MSBym109Lw3QrwchAGPl6EpRfg+oFjVhB2OjVfdBYpvRwikJJ/sNYn56djEnlK2l
	WfQMzqYBh4rL3omNI04Oufc7JOuqGvFzG82AcKB8zkudukePlJ3sQO9xCs4lVGp+
	7l3icg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf6y66h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:12:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54be4b03aso201362285a.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 11:12:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747937566; x=1748542366;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rHki3C+ZJvXgoBcG7+ipq9fxEApEk5oINZU9My5zwuc=;
        b=owMlmRiBcM7zmNT3ucj5eN7f9HtoLyc2wmZN7h2fJY4HYXzzsJ/XKYv43a33y+lF5F
         9ch0ShRWxQVA6MGAkFd269zBpJOzS5y9M5+Tm9xDwdP4aPAZf6VXXSCHemb4RA3N3n24
         cvOUpVbvmfS1X+eWZiC5QPvB09pUlfEDOQ6QW71dnDlqZBKvH36ZsmF9NGs11sis2sqX
         YbPkVt8Qd+yAM2nm+tOrfM5ZKbYpp10j3jNd1IAXl+npDFhHEd0Puzyth3YJfyyUDAPW
         FN0myIPEq19XRBZ+xMx8WU/oWHWrBwYmTRiTPDH4viEmMO+VbhNW+LY/eTMOK1aC9NX4
         QGCA==
X-Forwarded-Encrypted: i=1; AJvYcCXmB+/mj2zxPDxo2IkuWq1EYEgKjysktMHGRDimlbVMyccwQLwwPvbGkseExgdYED0Qy3dX5rgC4HNk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/aYp+XO3WNQDTatkNnPNngGnjC386SnEN+GtTLjqyDk+YsiA8
	YIegn5E0oari+m7JISF9XrC64T971os1ljd/eO5IiRe7HLPJ9xzs+Fs4QD9os0wXxVuWabOCZT3
	ArewJl1a1IFSMzCvwgCfHFSqXCUi8mvpm5AeDLVx2ScNGfqZErAxYsaSnHJN6p3d3
X-Gm-Gg: ASbGncuAlZi/mu0ftPSsbF4rgwWTkHUCwY0F33pGEOK5BLdusWBr3jl+Ma3/znKjb6I
	SKL7VY3k79Aw4c8+VoVICEq6uCcWzyXz+AkpSTeGAMIMs5S+t+eF+SBrnL6q7YehUPBrFec0GWx
	lIrbIy2iqHPILUkuS7uD/KwOHjeFvuJFuy0eoxC0iyXBy/io2zKdU85UNZQCOUTC4pZ/KYcdBIV
	8oisOWL3J9EyWVZRITrf14M9BRLhTiw32X0WnWlt4si4Z4oDX6NSFD7UA6z6gX376T0A52mevCT
	jTshUZHsuvNmvKyqSEG+JurLql0fiWUlJYX45NfZUq1s1Q07RKKrDUAEspBuq4mS5w==
X-Received: by 2002:a05:620a:628a:b0:7c0:b81f:7af9 with SMTP id af79cd13be357-7cd4672fd7bmr1648091885a.6.1747937566288;
        Thu, 22 May 2025 11:12:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKApsZc0tAvzeoyie/NaHZmrsLj7RHyx8qKKdLeYJhqJZ/GOhS6Az5AsscGMsme0KdMurL7Q==
X-Received: by 2002:a05:620a:628a:b0:7c0:b81f:7af9 with SMTP id af79cd13be357-7cd4672fd7bmr1648090685a.6.1747937565936;
        Thu, 22 May 2025 11:12:45 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d43830esm1123536966b.98.2025.05.22.11.12.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 11:12:44 -0700 (PDT)
Message-ID: <a8b2f310-2b1b-454b-9977-f74d975e6e66@oss.qualcomm.com>
Date: Thu, 22 May 2025 20:12:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/12] arm64: dts: qcom: sm4250: add description of
 soundwire and dmic pins
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-8-9eeb08cab9dc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250522-rb2_audio_v3-v3-8-9eeb08cab9dc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _q7-ntv4yGQAH-v291Ecg60rbqdtVFS1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE4MyBTYWx0ZWRfXyRJh58ZNqfd+
 N87syzhez2DOduoEq5ufJ/6+cecLyHdfH4dWmINjtvPIKFFaHxqYfuqvVZanlAtDSE66iYy8005
 L/DQTIhFBvfv2Q+QeVYyPoAwVZmLfmAP8NV2TGOGRYflpjCe2GO2bsVVFuAIDfR/kZe2E6hzqCi
 Bwrxn6g8uFWwFImMRKzaSzK8sh4AUsJ5LlsyJ+mNiyD2DKdhsgoBNcAl7UUUkD/7g4mkXjUqyHs
 ELXnRX2OYcmJvvSGF1JI5obSF4wVPs0Z/0MhK+WHdbmx1PoAjTVVKkaY43H8FUPUHAESY2uXdOb
 RNNeaP7yipbiDR0fKbWIuG0IlqNIF3W7x3oVvS/kQkhWW2zVN7QQcwyBAgkDgrWvD14Uua2PUzO
 Qi+6nekVmjHOtZIh3fDFBDGH0yjJdWvQumFGBVT2ckdPz4zuZWLmIXxsJhxnx+6lgfuzLiwS
X-Authority-Analysis: v=2.4 cv=fZOty1QF c=1 sm=1 tr=0 ts=682f691f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=tiPGpea89PUxzv1JMdAA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: _q7-ntv4yGQAH-v291Ecg60rbqdtVFS1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_08,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220183

On 5/22/25 7:40 PM, Alexey Klimov wrote:
> Adds data and clock pins description (their active state) of
> soundwire masters and onboard DMIC.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm4250.dtsi | 62 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm4250.dtsi b/arch/arm64/boot/dts/qcom/sm4250.dtsi
> index cd8c8e59976e5dc4b48d0e14566cf142895711d5..723391ba9aa21d84ba2dda23932c20bd048fbe80 100644
> --- a/arch/arm64/boot/dts/qcom/sm4250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm4250.dtsi
> @@ -37,10 +37,36 @@ &cpu7 {
>  	compatible = "qcom,kryo240";
>  };
>  
> +&swr0 {
> +	pinctrl-0 = <&lpass_tx_swr_active>;
> +	pinctrl-names = "default";
> +};
> +
> +&swr1 {
> +	pinctrl-0 = <&lpass_rx_swr_active>;
> +	pinctrl-names = "default";
> +};
> +
>  &lpass_tlmm {
>  	compatible = "qcom,sm4250-lpass-lpi-pinctrl";
>  	gpio-ranges = <&lpass_tlmm 0 0 27>;
>  
> +	lpass_dmic01_active: lpass-dmic01-active-state {
> +		clk-pins {
> +			pins = "gpio6";
> +			function = "dmic01_clk";
> +			drive-strength = <8>;
> +			output-high;
> +		};
> +
> +		data-pins {
> +			pins = "gpio7";
> +			function = "dmic01_data";
> +			drive-strength = <8>;
> +			input-enable;
> +		};

Other SoCs put these in the common dtsi

Konrad

