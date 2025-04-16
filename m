Return-Path: <devicetree+bounces-167834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AC9A906EB
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:49:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F87D16EAF2
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 14:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAD031F8676;
	Wed, 16 Apr 2025 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dz4zqy/e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E216B7E110
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744814928; cv=none; b=rDo1WLjYf71jFPTMbLF79pWv/mPW3krTfN6NF2tE8YVXJxS2ZPpurYx6tmrOZefAHEoZlZRbPzVwZcg2t2q2GTXKbUSck1V+heHM4779h5VEVY4ehdi/Q75+jPTcceuwLrvPHC5j7QY377i2ZZAD287MYnffzKSw245lwKoKYUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744814928; c=relaxed/simple;
	bh=8dD7WL72ycDqS6z1+llLytPSkxmuuALcpWy2/T2M4hQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cfONxvK2LwqtDr1MHriUTf8JywTdRrNT5EFbqbh6Yri3JBOOlAoNnnzLGov97yZGsS9Wb9ks16vdCkgB6/L5b8rDm6DGbXycSFQ9tdg34aR72wS1Iooihnpc1vbSZzGVULPD2Mwt+k249xwJbtZMwugtUfaW4NOQZ3+Py1apSdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dz4zqy/e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mESs005962
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:48:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dLHNH1mEBAuKA0SDkBK96nq30a4xdSQwQXtN2iXj0S0=; b=Dz4zqy/eUzKgbOzr
	SJR4mX2My75TcJvEuuC/cgiub5b6wgbXjvzlXEeHBfHqfqrbGPVxcUuINRdlm5h2
	nhuPaiqodzAP7S/Bq07lh7H4I8eDvGzi0dWMXUnv1M+7Can7/DAKuHglpHNJRTmF
	df+dH2DPdTG3vqXJRoy5XvYODCAf6jXBa2DerXsfUkXtiULwIM3idBi1yuWe3G7M
	Vt8e9U88C27eAisD+4W8r02aNZILkMgHLUhQL6+ud9t9CyfwNqaMtCscyoDuAgcb
	0LXwZp/UPmNCvz3Y0xz8zimgHY2XMNrpcWZ019H3xBbXRYxWMFWpossb/odvPP8m
	C9A9Gw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhqc3fk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:48:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so21218986d6.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:48:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744814924; x=1745419724;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dLHNH1mEBAuKA0SDkBK96nq30a4xdSQwQXtN2iXj0S0=;
        b=TA4wqdUZ4vhNMl1c4P5N5jYZVnbwQ3j6Nuw3zdZHE3Ec7yodw0iHl6Idv7mpsNYiMj
         CBuo3PNfrSAC2ks4bdZsD0/eg6wJq79tqXYYK6XmPtBHpwvtTu9bs12xlRGGWvk3JAzj
         neP8WfHF93DDMUVMOIeGdkPYkQSh0wBjkHvuRFNqHpc8ku9Yd36Q3biWZvwm6C2STFgj
         sKXWRVVxWzo5nzJWKQtu7lV7m/wODA2KDuVzDlW5kEx1yIE5UkhhNFajpYtvR5twYKA2
         kP4wvZRd6O7nedJCUTsj0k1tYC+PZ8TYbWwm+VYxWWcnR/wlcPILyIqER9Oqn0iCsz1O
         ZmDw==
X-Forwarded-Encrypted: i=1; AJvYcCVxgtHi4XkNsxCxCHf7c2Yoxu0OrDh7AJj88DTw8/tlplBmBETKY2/SN4InXyf7xeb0VaeFuWBGqeV8@vger.kernel.org
X-Gm-Message-State: AOJu0YyPrXR6LF2wb8XCUz8tLbhn9JF2sdDjvYCg+A31Dx4PfrF43RaO
	Tx32nnQeBlaRTOSFtE7hyNLz3jxSF8ITiJgIyJHmdkben25KOPG34K5LyBPdzEoB9Aa0W9DhFwY
	qfsB+aJqPJyn40DHdEAAkkky4MOyUtxrUnzbPz//AkgscM7phG7eDX6nmN6KK
X-Gm-Gg: ASbGnctCUOECcyVzvkwHW86LjNF/T9pPyshsB4zxo+J5POYJyt3330y4yAsV0+INEP3
	vuTD89Y+z4MxlxJqApqLUeCwKkvHvYaI0wviIxYWUvONOQ4FYzqDOfR6Dt6ikizABdOFCN8gmPx
	ecofJRIoopwJXfg7roaeeJ+8FhjUEDUV6Ed2J8ga4YHF/y2hS+lSxz/YrDTNpUrrV+vMn7EGiV3
	KcAQqxp01khCjG6R2DAn9TCJ0NpNOO5b8ee11kVKRGDkJ7Vx1ritq/o3vEQ4nYsnO1Iivm4ZKiA
	TGk2BeBOEsopLjRkOq6eoUIUOURIys2cQ7Wama18eNkWaKfcjaYpjPi0D7PxxbFnNIM=
X-Received: by 2002:a05:6214:76a:b0:6e8:fd2b:1801 with SMTP id 6a1803df08f44-6f2b2f1dfedmr10440856d6.2.1744814923929;
        Wed, 16 Apr 2025 07:48:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+eTe1g/KqvUYGtgkcxP7uScjinYQjCvuOHrRH8bUDe9HEr3/n2mZNqp4yvxrKn2SbcNr9ow==
X-Received: by 2002:a05:6214:76a:b0:6e8:fd2b:1801 with SMTP id 6a1803df08f44-6f2b2f1dfedmr10440546d6.2.1744814923336;
        Wed, 16 Apr 2025 07:48:43 -0700 (PDT)
Received: from [192.168.65.178] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cdd5ac7sm138213566b.48.2025.04.16.07.48.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 07:48:42 -0700 (PDT)
Message-ID: <4b784194-d5e0-496e-a676-e76d7ddc0d6f@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 16:48:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: ipq5424: Enable PCIe PHYs and
 controllers
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250416122538.2953658-1-quic_mmanikan@quicinc.com>
 <20250416122538.2953658-3-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250416122538.2953658-3-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fRvBFyRYn9Yd2K0tk_m8z8VMmN0QZfRU
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=67ffc34c cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=1aPbRelaT9uNhyfCM7QA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: fRvBFyRYn9Yd2K0tk_m8z8VMmN0QZfRU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=675
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160121

On 4/16/25 2:25 PM, Manikanta Mylavarapu wrote:
> Enable the PCIe controller and PHY nodes corresponding to RDP466.
> The IPQ5424 RDP466 does not have a wake gpio because it does not
> support low power mode. It only supports a perst gpio.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

