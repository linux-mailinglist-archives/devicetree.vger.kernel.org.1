Return-Path: <devicetree+bounces-227477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F21BE1ECD
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BFE519A7B4D
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD292E7F3F;
	Thu, 16 Oct 2025 07:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pIF8MKaD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDC92DECDE
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760599784; cv=none; b=B0vMTLdO1AesVAIffGQAv5JU46LeMJe234bl5yxJF/BiDOwjVMvcTUHeMtwhH0TSO+71rCxNoFOc862PlgOz9xqhYdIZKD/7c7BVAiyVesjX8YJYfi2zMSOxU7C92/Q0A9rdjdsSxTL0yqGwHnOmTzEZ18eu3cWphDKIkz06/f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760599784; c=relaxed/simple;
	bh=vOWUD51lLgmsalGC6T8618w1NX1MikJVVjmSDLYiA2c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o31aIjHugx587NdqfD4LkMj+BvMIId9YYNJThmESH3G5HSX5rh6ZjnYL+YgUSyqtiMOokp5uFuIsLba/Rk4QM+dy7ze9toWrjFKNk0EO/ih1bBBblc5mMvdaDFIsSumlctOJiRfRbpD6bkdYMXQxBwszAbCBc7jQpIpUDwtajoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pIF8MKaD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FK5JJu010182
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:29:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1Ul+cS2P/8sZ0yvovVHbSWbxCfkZYKO7WdKq0EttCbU=; b=pIF8MKaD73gBUnDN
	TvjBLzaC8dQG6jfnwYBSgUrb2uvvOeQczYw8pF/mK63VW1fJ6vQUMACQ/JEc82AR
	ZdtnL3HclhjJpwVrdyfIT8EtjfN1Cz/YkqAS4+lnIWR2LViDOk1fm5OZ4bU2/00C
	vCECIxtiqZGblaD+vHxzKauyyjzaoZQPO6VcPTSh1VB8v2ZNJOPTFAJrgJMoJW/9
	mI9cMOF/WSdELLFbzE+0/8z7Zazf+MmHAsMjbj1r/h6pHPhhLr7QBDxYxGPYXwtM
	K1/R1KR2VPSMte7KvLe96hPZEFqqUsDZ0yq2o5Ggr3vs2Qfwrc2cXIzQXz5m2tus
	1BvO+w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c79b5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:29:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8643fb24cafso13080685a.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760599780; x=1761204580;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Ul+cS2P/8sZ0yvovVHbSWbxCfkZYKO7WdKq0EttCbU=;
        b=VLI8ixXiWgap5lTVpRM0d2YZUZLVaQT0QVY+SOZdoAsQ8Bz4WGLdInn0RvSEpG4QC8
         5Y7V02hpCUGosG8JHhDLPe7Y0CNIqVcNX+okSeULPN1um0TN3ppP+Y0jkFes1KMK1LgX
         2Q8hxxqp0E5KQCFyI83dQ9kZFno9oaB7cuvZERm+vKLcd2Z3vDX1rQTnmcYAQwPWVXic
         Jexl78nyrGFFZ0lBCfBQXBTtKKre/yc0kuikFG7OBS1vBATcwt3pLVyvVVm7E1UP/jvZ
         IQVbc4p4sV/wiQYIQGDcYkw2llFNUsBMvRyRPcFWqfA9DeEFUGVN1MvzXoHziMsV0Enf
         5Hgg==
X-Forwarded-Encrypted: i=1; AJvYcCVjLB0M3ZSUckEzHwImc8wOVplP6JlecYeWB1VpMVn8Yr5xDByOtrhGSNLCZ4n7BYcjuhlisLV3Muol@vger.kernel.org
X-Gm-Message-State: AOJu0YxF8amDT/CfXcS+XC8E2US5jdlJodm++Oex4cRuBstowZGgE1zI
	foMKRFhB98fOByMAFVbbU+LWnftlLUWF9l+AJXLo1OCIEXFyNDHpGONiLDgHSNK0jE088pXK0+D
	1a+cSqKwhMSFpqABfEnjH+P5wYMNH/YXjaP5HTwKdYr61njH95S3Eb0GRRc9Wto74
X-Gm-Gg: ASbGnctT/0cdBT04y6m+DEqm2pd2rsc83c2I85B2sK8Yv0le3vUA9Y9J8twsyoAmNzr
	xVYfWAgcN9Qe1Hm656pgYKTgI6G60In3822ePRWZcMSZnS0iPOa+DzICU64v/x8xw1xiCZ7H69F
	XzX6nBtEsAbX7vIYoIgmnch+p4u4Pp3cJ98dpTnKPwJ1dFGJMi73aOdlFvJ1wHrWP6JkkSTRqwe
	oor2Y2Hf+/xLI5iJsXKMf8FoyGUsnx8ewEG2yNch4IkzsOGqoGFQdWrZur6YZ2JVTNPHVZKLTEM
	EKMhDCRYpKSbVLT+8juLR2QTlNyo3HD9fayayjh6F95+Fe+QYnC+jmeWHpnqGqdVmoFsSlot2Uo
	e2E9EDpeekOgW6tHFtFg3wKQyzJnRhIiPOnJKZEq/DA6dkIoxbZRnX8ju
X-Received: by 2002:a05:622a:1aa5:b0:4e8:97b1:2f00 with SMTP id d75a77b69052e-4e897b155e2mr2759071cf.0.1760599780521;
        Thu, 16 Oct 2025 00:29:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZPVvx/y5rXszJuqXQFALq9qWPHwXrn3tefhQ1e+HrqCDMb/uqpc5hc+tncqvs1nrxQRHx2A==
X-Received: by 2002:a05:622a:1aa5:b0:4e8:97b1:2f00 with SMTP id d75a77b69052e-4e897b155e2mr2758851cf.0.1760599779868;
        Thu, 16 Oct 2025 00:29:39 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cba06c187sm431603466b.31.2025.10.16.00.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 00:29:39 -0700 (PDT)
Message-ID: <80c71cfd-e12a-4707-ad03-e03b0ac48838@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 09:29:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/4] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Arnd Bergmann <arnd@arndb.de>, Nishanth Menon <nm@ti.com>,
        Eric Biggers <ebiggers@kernel.org>, nfraprado@collabora.com,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Wesley Cheng <quic_wcheng@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
References: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
 <20251015105231.2819727-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251015105231.2819727-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: LfGjQEqK3w7k4m8sGK0lBsRfr0Y1i21y
X-Proofpoint-ORIG-GUID: LfGjQEqK3w7k4m8sGK0lBsRfr0Y1i21y
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68f09ee6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=f22nYxuSTbU4L-cX1K0A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX6Jh5ZrirQxpM
 epyVCRLCiNjGxFnONuyPEseVXhPLNkfkT92msQ4ieWvJIcGH+aTtjOC7fBzBC27UjBQ9sQeoYUt
 YOVJEnmCk0aN4wUNiRX3eReU/++knZzit2fE85fzRMrRGjJC6uRfQAsKV42o18lNb/C7ORHRw4D
 cGdof+ucV5sRatSfG/W4JO2IICc4iGDl1yqjsRRpRwKdaO7fysFxMQBhKOvwwIIk6uYXMY3gDzC
 vFUyK7ZKfbfnbaYhL0uqLLTB7+663ilRb5Az/Ru95m3oL0yispdmUxxhsCLhKA8IdQ+7/so/rmH
 BadRIge0IQlnGogbnS+fVV8jwj3KdrNxySE/+9vAxwv1PoLkQKpduz6tSQi7JAdT5JI64Al73j5
 46GPAHi9J5sV+fvMv9F3T97acBhn+g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On 10/15/25 12:52 PM, Krishna Kurapati wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add the base USB devicetree definitions for SM8750 platforms.  The overall
> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
> transition to using the M31 eUSB2 PHY compared to previous SoCs.
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

[...]

> +		usb_1: usb@a6f8800 {
> +			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a6f8800 0x0 0x400>;

Please resend this using the flattened model

Konrad


