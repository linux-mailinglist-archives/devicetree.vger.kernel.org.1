Return-Path: <devicetree+bounces-226370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 852E9BD7764
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:41:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 291204E711A
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C33FC299948;
	Tue, 14 Oct 2025 05:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bdXczFNk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B10B284B4F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760420486; cv=none; b=Iz4noMDxEAprKrxqVJTOsHz12wbWkxs3CYiAejx2ijiL9/UBaxHodUliKUkXXT5OovTa5cIt8coAC1WrhqR992tOah2nUUTHCmyT3rWQVk2uKekBP7N36prbijJs0VVqiLflosdbKcxdt49WssCSAq0sy7nXS4u2bMCvCoKqeLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760420486; c=relaxed/simple;
	bh=jxiKHKisLUi2TL7R5DJOnPtwjNiaU554Ky65rCbpRYs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nSs6yisXBWCG6SEWSwnXxFNkBgHqoY3w/5ttTolH08S3KBhcV2AZ45WfKv366xykZgNcu0Ch/2op8WQ3PKmJPfL/ZMBa00LC1WXPKPZoGg0cKjcgWf5yIEwMCuWdmd/IN6gYQktiPqyNUqX6hAtn0gd1h952H3N79J7/DDF7QfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bdXczFNk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDY5G021460
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:41:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8tpCshbHou1c6qrp73mVlzYVHbi5GBzcn7cKeJnjAmM=; b=bdXczFNkLSqG4Zod
	thh3348UEYPRXOb1uOaS0yPn4kDIYFYZbT2DwWNpxSc59iXmXDNBdf1XN2mGceVO
	CX5VGgC+HZ0jenNW1zSnHbLqjBFpXqnsFiPSGazbJFey8biSgk4J14FopRY6z416
	D81mEQNHILoKguRYe0VYxy1bKQC8IHtHKoKpBjNqgBNexy+fV015iXFt/t+1lO2K
	XxVrLdTctzKSKDs3qeG0mLeiyIjf7mu9Dc+FaFdVfqzW18gY/e2iN9Ij8nxf8gCV
	X3OaPB9p8Q7F4k68vu7B7psX2/imwOd+UkmK7UNWgLu1zJphZ1sDu/Kd6wBDhk6v
	vWUhXA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0by840-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:41:24 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-780f914b5a4so7342642b3a.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760420484; x=1761025284;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8tpCshbHou1c6qrp73mVlzYVHbi5GBzcn7cKeJnjAmM=;
        b=SEKtyUjjosZsuDpPvtLDgvjt7VGr/0SnuP4jvfj+bVYvIJ7Zjhc03B8aTySrFfU1tn
         s+ilzkFZ745H84bNQJVYqaoCCEoM8xp+QjJDhzCMPeZJn+HQkvF+jxSCuIVWm3rzseEh
         JnWdcGqTtJrNlIYQvofnhJY0bKxd5hhs95oDU8u2aNm0gE2XWlJb2GsGN/v9R4696FeB
         F1DLbm6cHCGMCcdOkuZgx+hQ/z3faFnNsN39ceKSGSuwIJbjyIGj+J+A+byBMRw2//+1
         9ohU3zbEFtlsrxERbvbKFO+F1q+73GGDmOKqxFwzLyNvNbK90DAiAhrUdjBa449dh7Ue
         XWvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYtdA8qLwUzKjjOslosII8owxtP+d+GTbWtRZWNVZFH95KqYpoBz/zNRbPwz7whxtoVa/69/uzooji@vger.kernel.org
X-Gm-Message-State: AOJu0YwApvEptVmzzDZvOQx4FbJDMUgceO3tlvLr035NruBWLyltm8s+
	OvgAw2HP4B1eXFqEifUUWdkcobfiC/r82RfGyP87oUJzUAos0dLNd3M7Vl0YnI8chWbVh2fB68C
	+kECeni5NHURYSFmDKzl7u7guVr6e8YALilJM4A5qt0OqNgltpComAmxGirYSRfmE
X-Gm-Gg: ASbGncusUSLu43kT5DZ6Xze/jSUcafRhDV8E2Ybc0FPV6Y8BiFyhowAsx0uxedew7Ml
	jJ472yT3WRvn9rxxTNvTqHv7ur1mB/WNhspPqefaeZoQQudV2D1gqfBZwmnnrtbZeMn+XlJ+zda
	qxJLwHqrFfR0yDP9iHp1kyWgBJUOLW17A6lICnAgD5X4uAOp2iSi5piuER6Wn0vNT00GG6JpsEh
	6/a23Bgqs7zMFA0Ij4CJ40hQQaQC0dgY63mUidd3eqh+2qA/hdtNj52FOMqe2CNqrMXWJrd2Vwq
	LIXdOnbLmbpHVxyzGM5kD6Z55/Z4lhOgn+huh5pot65MpT4/S4jZs53obAsdEJ2DqsKRjSkyqA=
	=
X-Received: by 2002:a05:6a21:9993:b0:2bc:ac1b:60ab with SMTP id adf61e73a8af0-32da84edec6mr31369195637.52.1760420483792;
        Mon, 13 Oct 2025 22:41:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFB8ImMeYEgEs5ZbDiNPK3W/dR/P2N3ZitLAmFeESrgZrUX7g84QiBVnjc9HjpbQRugVmQUEg==
X-Received: by 2002:a05:6a21:9993:b0:2bc:ac1b:60ab with SMTP id adf61e73a8af0-32da84edec6mr31369144637.52.1760420483219;
        Mon, 13 Oct 2025 22:41:23 -0700 (PDT)
Received: from [10.218.42.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b67acd88c77sm7861157a12.34.2025.10.13.22.41.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 22:41:22 -0700 (PDT)
Message-ID: <d4c2d00d-005b-4a1a-84d9-4d4221b3b85f@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:11:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] arm64: dts: qcom: Add PCIe 5 wwan regulator for
 HAMOA-IOT-EVK board
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
 <20250922075509.3288419-3-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250922075509.3288419-3-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -DyRBe7Iz3fOBTEj3NmUFmGnclv1ieD3
X-Proofpoint-ORIG-GUID: -DyRBe7Iz3fOBTEj3NmUFmGnclv1ieD3
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ede284 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KnwKH_b96my_iHhHw_EA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX2Y8j/OtjYV6/
 dRQLsnPoncF4Q2UrILf2n4AiH0T7eHpnCo/uNI6ugMB9CndGYxZoFeZuoOh48c2ykw8DgKLb2Td
 DXEIAFkRN3oZVQWP1EaAy/KyF7Qna4UEWVbHy21O3DwUr92uvzIFzMrtJc6WPZOgx9BzdVuFN2B
 u6xeczzF6IY+Yc5SpIKrSZYPx141ruWFbFwxTOtfU2HG9+xl0D//sCpjFQIx/YfmfAjx98EN9Cj
 4Gy0p5WCyaa41JHSNuyJEnYpPGQ6SGtUBT+r5UjBpAmw7VI2vD5C1eQTVtpRlz4rmNC08OyaRsM
 /RotFp/HBS85eT6BuQzcMKBNzuViryvsTywpABQVEApGQ8cHHZswamYJNcdwKyaGIO+dr128p29
 eksTyAfy3lnTKsNOJLz+oFeVXJjNJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022



On 9/22/2025 1:25 PM, Ziyue Zhang wrote:
> Specify the vddpe-3v3-supply regulator for PCIe5 using &vreg_wwan to
> ensure proper power configuration.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

- Krishna Chaitanya.
> ---
>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index df8d6e5c1f45..f0e4abbcc1ac 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -832,6 +832,10 @@ &mdss_dp3_phy {
>   	status = "okay";
>   };
>   
> +&pcie5 {
> +	vddpe-3v3-supply = <&vreg_wwan>;
> +};
> +
>   &pcie6a {
>   	vddpe-3v3-supply = <&vreg_nvme>;
>   };

