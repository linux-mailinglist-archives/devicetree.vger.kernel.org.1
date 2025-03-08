Return-Path: <devicetree+bounces-155652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AF8A57B45
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F5DF168265
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 14:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C64B71DE2D4;
	Sat,  8 Mar 2025 14:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HC2ekB4x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F171A9B53
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 14:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741445568; cv=none; b=JFN9OyixlxfJFVR/kBM9g8dAmR4RMIv8Md5q6vfFy+mxeyR9bNHUtFYWKt1m4gABagbd+VSw1Mzta6yDfF0yiJctDXBCKnJ2SwQLKpos5lcVk2UsOJT4wFhgyQ7x7+FNZGnUvb+4JQ2FdWZXZdI3KqrE3j42hdsAhCyapWiDAsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741445568; c=relaxed/simple;
	bh=anRYeYF309AXBW25z7R2hL8RDDSJQseUCtoq8QWO5XE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hy65luA5ykdbUMuu/tjcbkTfG+RVDB2LrcuI/80zavJ689tLtVZI86EQVPPNtCdXf+lFUekp7ePasSXbplWs/B2VYFWzV/J2iCWYqs2URxgcYbh+PV+X0eKy+2YwptDmGAHeB8CGEXSLE+DpEHmSZdHccMXIllQs1Kh39bJYInc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HC2ekB4x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5287XOCS016050
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 14:52:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FRjkl6YhFHYJ1JWEogAn4n+Snf68kuUomS1wUveNVAI=; b=HC2ekB4xQd1nCpfI
	Nk+5TaQfbL8FJuh8JC2aGxlx6o8uX8mjA4UBrdT70LdLdO9he953guW6Q+kswF3d
	DZjB/UW9q8hwE8Kn4pOSq1ZaAbZNNFLTM6bFyBF084Pqh9yYDq+bxFvQyszshd9d
	8L8u5GbB6NJCkIV+XID4xzMa0iIuEOZcgMoVH00dsDYwLpW5cVfowRSDTmZiAWBc
	eyKk1M8uBOsJBSwwQ65G+im2TFBwge0m/qBCzeRZ+t7i8ph1Swdjb+pxjKRYu8Vz
	NcStMfZpXFyzSna07sRSWOxzyCBUyYje1z9azBbpxE4sVqbTMzFlG1YZM749x0wf
	jF0cIA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyu8pta-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 14:52:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476718f9369so1320151cf.3
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 06:52:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741445564; x=1742050364;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FRjkl6YhFHYJ1JWEogAn4n+Snf68kuUomS1wUveNVAI=;
        b=p0j9BOu42InYJ8L4mfFtC0i8WISe7auoa04wSIltjQqcwSEa+3zSGxapNs2Z9NKuvp
         /ypsgmIn6Q2siAovsO4+HNOUMst8M8msR2m8hJfKk1h8HuD6gRxXzo2Qie9tab/4VUct
         c3zNKvy9a8P9Bkpme9urm47qlaOIMP85RkcXubm1IKXMZ96wxdLFw6iJrD0RZv2BeCsG
         yxN/HgrbfNVJHLiPzhVieyhqdTF052bHNXSmH7j6KczNgi2I+IORIZYPPoQgzNiwX1oF
         YiDWkS/Q5d3+K0PyLXdHpWdkBJf2Kg2Zb76zAXEowhUIvbf1OXAAW7qH/5d9y5Iqu00i
         NxCw==
X-Forwarded-Encrypted: i=1; AJvYcCXuPfW79NgzHqzliTvzd9DS3bI+xKMZX6wEECnpERNum1yO7TARD1P8dv0jYxdcbN0TVRLc6U254Qdo@vger.kernel.org
X-Gm-Message-State: AOJu0YzZXz+V3V2ykDExLR35pvG5hS/l9KwwyR+E/neHfEDwQn2GXaUy
	K1kKUj17FfEj4J0VcrjGq0fSMm0/kg1fSDf8o2s5flCQ/U/WL6kDme4H6UKa/HpZ/5l98LI3MfF
	C4i3Dp2cEfORrTQkqNuw4tfgZbG15lurQQoFJSnBy0SH3crZu/WVKlm+Xmqgo
X-Gm-Gg: ASbGnct4a20lcXpJcLgmLTX+jtf4T0kduRil+HUVaWsQ5ClPUuLmrPSA3AQtGu1Czc4
	Cqd7lDKyXL0gXu7tDpJ0K7zrOZWNXxGxNraiLUpl1aQzpH/oldPNQ7+u6ImXi1GWjRR0h6jAzhN
	v+31V4P009moIKB9cdCpgPY5Fdhc5TAw9hXRErjAClblaM3JAQcs89B+nnkjVQ5lyl2wnVFBbLP
	gvGeQFSh4c7h27H8CnD2aZR1U564F/pgMJQnTL5sOFLT1ge2j7wL1ko5H5HUlAb6kypqwtCxkrO
	qpESdbrgcMNwhFDB3QkOCYlUDnPqYVPU2F3AihA/EpBb/M9Ox10EJnMOhYC3Vhgb5AbeOQ==
X-Received: by 2002:a05:6214:2502:b0:6e1:8300:54dd with SMTP id 6a1803df08f44-6e908cb83d2mr16970726d6.3.1741445564632;
        Sat, 08 Mar 2025 06:52:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSj4DtwyIyuqnhiEdd/BEFf5BS8fhU04AWxZPyJhZB2pXyHozhGGkjEGML4zezlWGkfpna8A==
X-Received: by 2002:a05:6214:2502:b0:6e1:8300:54dd with SMTP id 6a1803df08f44-6e908cb83d2mr16970516d6.3.1741445564301;
        Sat, 08 Mar 2025 06:52:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2399d1237sm441737066b.164.2025.03.08.06.52.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 06:52:43 -0800 (PST)
Message-ID: <40eea830-b3b0-4a80-91aa-9acd67e7ab41@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 15:52:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/23] arm64: dts: qcom: ipq8074: Add missing MSI and
 'global' IRQs
To: manivannan.sadhasivam@linaro.org,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250227-pcie-global-irq-v1-0-2b70a7819d1e@linaro.org>
 <20250227-pcie-global-irq-v1-17-2b70a7819d1e@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250227-pcie-global-irq-v1-17-2b70a7819d1e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cbIormDM c=1 sm=1 tr=0 ts=67cc59bd cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=x0-Ntm4DP0gVEan9CnAA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ClOew63PzkG_oQgE7DQqYCzAUs3GDNnn
X-Proofpoint-GUID: ClOew63PzkG_oQgE7DQqYCzAUs3GDNnn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=609
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080112

On 27.02.2025 2:40 PM, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> IPQ8074 has 8 MSI SPI interrupts and one 'global' interrupt.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

