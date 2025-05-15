Return-Path: <devicetree+bounces-177715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 441F9AB8AF4
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:40:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E20781BA3F6B
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F9FF21882B;
	Thu, 15 May 2025 15:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VXHWEKjp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB820B7FE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323613; cv=none; b=AcicofRy2djL3s4uyzCNlkOGed4JF2MY2LPpPNDxUL//wQ11GY7J9rNOTTHNePLGS4UfNFubR2L76Tp1icYE1dXgS8laTKA5UlUZEhdySfl8hlJW+oTG3W4Ca3L8vKk+l2y4AhxkOs6zW0gyzLvArDdCbSMBrPLQseDlv7IAEwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323613; c=relaxed/simple;
	bh=LA6n+/pjiNT3RbGvtG1aJhvDxaCEaENms1z18/PZRDY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rhgrxeF52XncDgTmqL9qle+oi/95hvbDw1o85Ncfasd88XDjvlZ4uNIDguR3cIak9Xu5L3HiGMeQfzrwnjxe+SK5+K3H+yRwiOrLmBrzBjKJyliQrpqzZM2wQVdMaLaHYek2q8uZY4GR8lSrxXwhjca5/HV4Bua1h3u4pMYrBCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VXHWEKjp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFU3D026261
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:40:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+4pk6qqQf94MNh0qP3FehAuZCQoGUKgM5ka+mTmo4Kc=; b=VXHWEKjpAhc9tyHx
	wnBUtsDyrO8f+PPjfbcAaf3eCD8gN+x45HZ/o9XPR6jZ7CgOi69o0AQxgN929ODA
	e41SsfbTbsO27EwBIKKXF2JBgc/B30r8LKrfCl1KKNQSzq4YfpXqrc1lnh5zqvDK
	N3tsy9MQml8d7e340VdShpR5xz9dqgEtNG1XazpEClPR5fb8X2yXx/oJ2SdNZK7W
	5UpdhzqFE7H3Y3qb72uPSiDJMihiX+xZbkTr/Mw5RWM5FIv6OnhemKwNPLf5QqwQ
	o5uaNkUj59HWABTguBWEB3xrnadDswsrVhtfVVs1SnSQr6lKKLrJ50PwQY5OXT8+
	SriR5A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcypttk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:40:11 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476783cbdb8so2570831cf.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:40:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323610; x=1747928410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+4pk6qqQf94MNh0qP3FehAuZCQoGUKgM5ka+mTmo4Kc=;
        b=Mfhy0RHzUF7MnNJ6z5HzUVW3Z4cavnwmq5jVddNHlvFgN7+/pLKjQVq+eG4SgrXh/s
         KSVdGG5YwuFPVzy7SwJGc5Sem9odxnwE1hWKDhFGFxYJ6lpV/C9jt73wrGlwEUiD0fDY
         xxD3PMuqOBg0uph95wnQdocaHrTqTKP87baNIHDcPrZXvza7kiwAeQA7no4omjDclNAs
         tw2Wg8o2dBPzzkjRnMr6HldwdOZOMUnNC+fbB2/PG5oyIfyI71dq3CIxpOyIK42JJqBD
         KKEzualIZ8e8vIswvTZjptIVaTuT1Vi+XSKoNIgY8Pt1kEceXuZb8s27qDNL+Vi+jthA
         RCFA==
X-Forwarded-Encrypted: i=1; AJvYcCW6IWH3dFmjmw+eQfoA/tzNJJRBaOFYzThKrrO5e9P/qqyhFCINE7Su/85CKDs6TW01Xy9V6h04l8PS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyddvg9MbXlCmiM+wf+uLV0pBx74t3ii1j5iNah16XOc1RBu/tc
	XhJwatHGf8Q57hGheq3/SulrfqZe0IR16NOd2vMHvrcv9nR0/ysRsoXivRniJxo/8JJjCUP04YV
	mlpYE0yE7tGTdTPJvUejeWlu8cmTuBOKKXrYDtsvt2P8BYRMaCn8CDlooHf51
X-Gm-Gg: ASbGncse342E+3zD/hnsH5Jx9hF0S1osReIZCSom9JJZwjSuRUpeScCMgEe57Z3jf1b
	WapGdipxKxA11qeYMYYXfss4arIWTjQPvLT4K09Dq1bx9qzHvCwTk9jFPeQ7vFtpoM0kti7k3Gd
	CJMS04ptPWbvijT42hEfa/JrM/Xko7zpXpTvT9kLLLFspE6QGMtKFN5J8CN92Uchvd0Gf5AcOxk
	YSV4D60ITqCXvmGMUJAzi2SGFui6oPbyz8phSjTnV4f4iIcsGCr2Xjv5YZtnK77ewkRv6hxte6N
	jOxzqvg00dF2uiQ0BBZXnY1XwvjdEjjsY9/mhXNyAGRkN1lszbBjuNuyqdorCj6cHA==
X-Received: by 2002:a05:622a:1a93:b0:472:1de1:bc59 with SMTP id d75a77b69052e-49495c6672dmr34442281cf.6.1747323609907;
        Thu, 15 May 2025 08:40:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeZxWV/aIj85YA422H+ZaMSL8z0aOcepnuoDEjDToxS7za+PZIF+/FGdk5MduxdyhCILATxA==
X-Received: by 2002:a05:622a:1a93:b0:472:1de1:bc59 with SMTP id d75a77b69052e-49495c6672dmr34441961cf.6.1747323609433;
        Thu, 15 May 2025 08:40:09 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d06bc3bsm6306966b.47.2025.05.15.08.40.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:40:09 -0700 (PDT)
Message-ID: <d8574c30-d397-4218-ab02-e8afebe9a75d@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:40:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/18] clk: qcom: camcc-sm8450: Move PLL & clk
 configuration to really probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-9-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-9-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UMmcKx3-z9aEQYbcGLVP7pR4Xt1h8E-G
X-Proofpoint-ORIG-GUID: UMmcKx3-z9aEQYbcGLVP7pR4Xt1h8E-G
X-Authority-Analysis: v=2.4 cv=JszxrN4C c=1 sm=1 tr=0 ts=68260adb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=WExNFyCIVdiA-8HnxWkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NSBTYWx0ZWRfXwx7iLBXOZdS6
 sn8sYUGU7w4E50cvnZb8nRuWL2xyI7l6wDjrGnlADhrWNqGCmioldB5TgRL7vJoLpUKTiWoNOeB
 U0YJIRgPxe271HRgrjGkUHUuRsMucwIJolzS7tkum720CQzzmrA+nKjAcAm+XsrXHQ4FRTAlfum
 y4iN/sS8ZauKNEuwWgfikGf6fb19uJV/QJLSa5W96HS+VvDLvNrTOcPn5vSbiGo9+XO1KrKZoc0
 TLsmSUUs0aoSxo/Q3N3Iav1j+N78WftWdjesTPwLYUjJu+BKtNF1FWRgNdxdVMK3UI7u8Z9uw66
 qBZdNiwrfd00xCsJ4bc1ioxO6EYzGh9Hv4dTwz8EvVqNdAqBgvFmdxQp4pCwSsieIT4Zcfz6FO6
 RrmUXsyLNXZ84wiCE+zBqlLQofCH8QcDG7fNExvYfrAbN1rOnBlifLi0uVseYvHGbWKt+WOf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 bulkscore=0
 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505150155

On 5/14/25 9:08 PM, Jagadeesh Kona wrote:
> Camera PLLs on SM8450/SM8475 require both MMCX and MXC rails to be
> kept ON to configure the PLLs properly. Hence move runtime power
> management, PLL configuration and enable critical clocks to
> qcom_cc_really_probe() which ensures all required power domains are in
> enabled state before configuring the PLLs or enabling the clocks.
> 
> This change also removes the modelling for cam_cc_gdsc_clk and keeps it
> always ON from probe since using CLK_IS_CRITICAL will prevent the clock
> controller associated power domains from collapsing due to clock framework
> invoking clk_pm_runtime_get() during prepare.

generally we want two commits for such things, but let's say this time
it's okay

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

