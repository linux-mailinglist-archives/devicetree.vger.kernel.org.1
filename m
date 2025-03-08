Return-Path: <devicetree+bounces-155656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B531EA57B68
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 16:06:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 306B13B1220
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 725BD1E1DF2;
	Sat,  8 Mar 2025 15:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KGy/wWVU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73BF13DBA0
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 15:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741446349; cv=none; b=fck69wZDSEOdTwl4qH1nSvO34nSgqJXZSFZqVyPLtAjI1mWjsF9SvlLWNI+wpynUWbGjh/h8txzg25oMHeTHMljP0yuIyhxcCum6W3kcQt7sVe6VZHJ9zjP9jngegT2RmpqSLxI6UzUh5ZPcdyJJNIkHJ+JdUWIauS7UtRALC8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741446349; c=relaxed/simple;
	bh=+PMRq9JLO/95gRsUy57YV2LRy+JkqhPp8sqPGDwcU8o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WMV+IOLNzMlgQaeqdEoZudfWgReUpLJA6gApybcIBJ+EHH4MbpopxGPOTF709J1TsRno0GjfsCkEf3N6aFUdaxPgMjlQuTp5Wh3JBNU5/V9EmmPXeFdK+WC5Zse6aTL9hUkcAXAVY6t2bonZBH8RODJPtfTN2BGPvgBhwmoFpok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KGy/wWVU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52853JIa018671
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 15:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JLFVWaUWbDPd+G73ejj5R7gNnqQGG++cPE30muP9uhc=; b=KGy/wWVUKlJqjl6L
	E1satjTApuiwsDPW06hbUqn1nu4dSUTFSgQqU/vi+kQn9H3cqWMjklHArAdOj039
	o5d08qFN9HrFdnc8Gp1J/CCkdNh+bUFa20y5djLBWDKN7KUie2kucNUimJg21s9I
	okgXWaPvtX5PdGcyRSAVjTRjw5eyvFOFxLihCxWDx+3SAoHjPqhVMuM/NSo7lMMk
	U+urL2S1P40FcpIC90M7FYbyaXOMqtcrHDSLuMc4kF6eOZha4oW+3rYWkdElsJVd
	rzjREZjWJSE5yOcEdbXUCZRLNRvWtr/OkW8fxEMwsMszmmbsS7zjE5dtTb5ONnsd
	hS/dQg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f6a8qqf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 15:05:45 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8fb83e15fso7249036d6.0
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 07:05:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741446344; x=1742051144;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JLFVWaUWbDPd+G73ejj5R7gNnqQGG++cPE30muP9uhc=;
        b=akW40zKVSo+DrWdZal9C7Z9AERRHn9MIzl3735QVT2hnK6gVHxFKpbfTiVTJAj/yZe
         /NrdJXokvpez3bIqhL0sM+p2VwMx4exRFK6iNCFc4pbU0RPGvmPMMHvc0BFkD9aRGTiw
         ILq0aeYM/4LXzd3llUfXrl3r4nS6nEkzurDGItYsYPxSTEuH551RtQFJzp0zVjFB7c4s
         RKKHdXRTYCbB0l7Lm8sjh53p0EnhNq1v1lmDIZE083j4u50qUfkmFRBn89kvxKEwvDbu
         zSripgevjbj89hGUqDZD4DouiNelZKUsjP0hIB90bRbOuR7qk26veHftSDl6zqNmMxVu
         jiVw==
X-Forwarded-Encrypted: i=1; AJvYcCUvTuKqRAdYn04GhixdbFjVnF0t98YG1RG3I+srQmUJ9072iT8+IT8mg+gaI+lYymn1ZLTfZQHORBF5@vger.kernel.org
X-Gm-Message-State: AOJu0YwkpvAzOVP1zHG1qoJFFNtnhv3BzqO7vX1SrrNTORcnHia9uccE
	LVlK12rV266ixBrVY4qRgro/WDfSPlS5cHPfUlN6CIrKTKOQaMi3sOZRkmC/HwcQ4nSb0Cn++F8
	XYVFhl+rzQzR1sl9OgqcHWMtXwvshMKcQxvpA98bOUYDc6ezNu0mMkt3bhICj
X-Gm-Gg: ASbGncuMsIkGRqjJFK2fYJwbrbF4Yq9gGu1V4bQe4XKkkLzJ5twrVIiL9W6scxy7kk9
	9D835M5UceJVDfRwJWNd3ge4Lr2z5UmKjvUEB+ZZ8v7Vji6KkRF5HqJXi7nobVU0vEQV/ZnW8R/
	iBAQ88kEYffKhZu0+gbe+Ct2mAvbB8iuPOtIgMDCl7eUWRKLBI8sdn2c8AfOG/MMZBhw2rlJka/
	wJDLvftENVnDDaHn3sZNYWxfOkJQ+YOLdG2zuswEGsUIOiyigbWPepN7074GvW2iCHrgJdv+9sM
	u7JvxwSF2dQob2CEWwNO53PIg+vHQCQ5cq6vSk9TdORB5q2u1fI7DWaur0P2TLrSROKMRw==
X-Received: by 2002:a05:6214:d88:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6e908ddb55cmr15428306d6.9.1741446344427;
        Sat, 08 Mar 2025 07:05:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIuPcR+e7Mz7IBRdPMU7doLc5Tz3u50vlpBjwRgEiNKUDEUQn8nQE/supZQEX3XVnVqo2W4w==
X-Received: by 2002:a05:6214:d88:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6e908ddb55cmr15428086d6.9.1741446344095;
        Sat, 08 Mar 2025 07:05:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2390fe76csm445972966b.0.2025.03.08.07.05.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 07:05:43 -0800 (PST)
Message-ID: <687a23e2-7822-4d68-8b4c-f8816cce3cc9@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 16:05:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP and QRD platforms
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-8-a698a2e68e06@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-sm8750_usb_master-v2-8-a698a2e68e06@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WsDRMcfv c=1 sm=1 tr=0 ts=67cc5cc9 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=z_dfX9dpdT3VBrYyFBIA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 0KuRwT_6AhemhIFwS2TeIu5vWpMemOPy
X-Proofpoint-ORIG-GUID: 0KuRwT_6AhemhIFwS2TeIu5vWpMemOPy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=935 clxscore=1015
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080113

On 4.03.2025 10:56 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Enable USB support on SM8750 MTP and QRD variants.  The current definition
> will start the USB controller in peripheral mode by default until
> dependencies are added, such as USB role detection.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

Please separate these two indeed. With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> # SM8750 QRD

(make sure the latter one only goes to the QRD commit)

Konrad

