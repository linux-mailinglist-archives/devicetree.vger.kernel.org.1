Return-Path: <devicetree+bounces-166716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E14E8A881CB
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 15:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D4403B94C3
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 13:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02C5247283;
	Mon, 14 Apr 2025 13:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jnckoJTp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7FA2E62B7
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744637083; cv=none; b=B4+EAi3Xxmt4j/ORYwt8tH1iuDKMG4G9DkeFb5336kd053WBVx/9LXFE4FE3gGFis7ap3tsIwahPP07GXG6Im42/WnCEkaFoDzZ1VDYfCzqm/pAeD//OROgZa+kJs9E0Z7NsaIOOj6ENEW8FUuuzOwW1C4/hcLXQVq6bTWX11FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744637083; c=relaxed/simple;
	bh=aY/1fKbaFYeuZIqGliNdGJUKlTqEKs5abT4Ep+BqkFU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Klq5UU5mYbKQAR5hsUhV76ah6R+AAyR3s5LjiiwSNs0TjA9stTi6yegTmgHITkNNXj8J29I4Zi5e37K2yn8PEF+14xbXeXOG86bVD16CQIevFKNhNacabkL+NjPtdBN0Xdrpjd9t7raRFfM8uI4Ytev1pXWfx9OKkuO3FDhLNig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jnckoJTp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99rjA011448
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:24:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	02Rkx6hdb4JQY/Ijn44NbhfuIINmFhZjL7KXmSEDk+I=; b=jnckoJTpdLjpb92R
	JFE6CQZuFy5FrMok02UFOGe39o5eHr/O4vdLekD86iTaGixkr3UAupYSa7X+ko4X
	kS935FECRVHxhGRohZ/cHpad1IENgbI+CoIICMwj9LlyqNV+HigOZ7d2pkOphFhS
	6cEyipqXxZIej1AF1jZIxlScxe64BQARe57PZZsLOW1pauEsDca+OWWMprT1xo8P
	WbtOQcrAraALT5jVU1cV6lV1ocOaGwxc4xSPmGTVyQUEr0LDw0OaQ98yGO3WlTwI
	kdgogWcGA3UMAco8EXt4V5fu2AWKJnBkP+DXkF6dkDD8ES/KhTHRpPSkOMVH/WCL
	I3v/RQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wcmy2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:24:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5841ae28eso100784085a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 06:24:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744637079; x=1745241879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=02Rkx6hdb4JQY/Ijn44NbhfuIINmFhZjL7KXmSEDk+I=;
        b=oac7+u+8qzf26syG9/lIfpwSnUZpnENDBDWJGqZ/7IcNOHWjofqWvNJk+ChPCf+uhV
         0kWJ8OhoZAFcS2gyYQrni6MVnPBLw5daMgtblijitFy93rFX7cTdXrbaiU2vFnbZ6Cvp
         nySh+DyHg8AkjUkAy1CYp4t3qbrYufkAeOdModQPMRfB2MVeqM9IxAfH6TkSME3fCWc6
         j1wEo/xu2HyhJvl11Yp4PkNX9VPF1cpFQzIMAxY37zJ8aMjJH5TWAMmbyeFoiRzep3SG
         S6NdKi5sLyJJE6j1Eu1kVne4KoB/O0dMM13/DUyTzy0cF315STNQFGX5/Ydo8ETF3r0o
         u2Qg==
X-Forwarded-Encrypted: i=1; AJvYcCVcGgY32DiwbVet/Fg0psahTbSAWyUNzE9nY9Im76c+2TEvzRQbnJzz0fUJ5kamXxsOwW/nsqREBArq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfa8D6fVNlFsRhfRbqHFMdXyaRuX5CclD2TsY/vOj6ExLDET/w
	E1xjb3WOWT5JjWUQrP4nNBkqnE5qTH2Mg7hJLIYJry2r0I38RH4VCQJbKzG6Soeoaywr6iiccUw
	R0sdJFQSJsDCUn636JX1k6TFY5GOjSxiTOBVn6DgCDYGXVjf4BHHVrOhYIdu2
X-Gm-Gg: ASbGnctZEHPeuttKMLRmnwcG/v6QNwlUQnH3scQX2vqGCOR85SMDZNhu3yUhPp1Mc+f
	J/SPatX7q9jNo7E970+QakFi7kWXUIPm6saWs28j8E30FSkkmX4a0dqM8sEDm09GWNfh8VjwEsR
	thAvgSW3njp7/xsgxMkBFwJsA5mjp3f7KeMVTiPRTjwwDc/zXOwRhwvViIScI4tGsV7fpnu9060
	69lR4aOSF+/CsxVf8OjVNZyYxvMA+rNmQR/qxvbTmfgqKN/kIlE5L1q5ROAY0otoWWBL0oodVyq
	RX19XJ4EXodZSieU5cbpRI4oKGd0yPyDNl7/Sc5DC/ZMvMsBTVpFh6SjxqAxwBaGDw==
X-Received: by 2002:a05:620a:45a4:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7c7b1ae7e0bmr568800485a.11.1744637079160;
        Mon, 14 Apr 2025 06:24:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRa/QUfGBb0tF7zkWM/E/7q8wcm5etsdwSv+/cstcR8oAuNHxCD10hAM4FInQktT2x4+YUZw==
X-Received: by 2002:a05:620a:45a4:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7c7b1ae7e0bmr568798885a.11.1744637078599;
        Mon, 14 Apr 2025 06:24:38 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1be8d0esm896745566b.43.2025.04.14.06.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 06:24:38 -0700 (PDT)
Message-ID: <1b783592-e59a-4e85-b727-d38b11411a9c@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 15:24:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] soc: qcom: llcc-qcom: Add support for SM8750
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250324-sm8750_llcc_master-v3-0-2afd5c0fdbde@quicinc.com>
 <20250324-sm8750_llcc_master-v3-3-2afd5c0fdbde@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250324-sm8750_llcc_master-v3-3-2afd5c0fdbde@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fd0c98 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=qAG6vWTBVeFq7agocEUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: sPWxarPjkfw--pFgyQCY4VESMlY6PJGa
X-Proofpoint-GUID: sPWxarPjkfw--pFgyQCY4VESMlY6PJGa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=844 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140097

On 3/24/25 9:29 PM, Melody Olvera wrote:
> Add system cache table and configs for SM8750 SoCs.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

> +		.usecase_id = LLCC_WRCACHE,
> +		.slice_id = 31,
> +		.max_cap = 512,
> +		.priority = 1,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,

This should still be .activate_on_init = true

otherwise lgtm

Konrad

