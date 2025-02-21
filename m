Return-Path: <devicetree+bounces-149613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2405EA3FEFB
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:42:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1E627A34D1
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 18:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575A3250BE9;
	Fri, 21 Feb 2025 18:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DBEIv2Nd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E487A2135D8
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740163359; cv=none; b=WrE521Miggr7sqtnRHKsRtYLM74DQN88KwMOI6zPiJfex1b9FCTcP5WCEx6xb1Ic067LzGgRil/yWFwudX9wocShawX73IYtukn48AeJmkEjpdJt7zy+uCdjr5MNFHIc+eZ4f+/1rEqy3axukYD8wiSyi4AJDf697bGASoMUa3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740163359; c=relaxed/simple;
	bh=ml87yc+oEQwidI90pZpvSRbXJ38fJSHzzmwQu1zkdq0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Guqc50nUf/Xj3SIE3gR6+ii6TFNN2wim6UbZKDRo6qW0Fe0DUEyuokB3RVSiKRwgGr6fLLPGz+Xs4ouB63nnxR7gJn6D2F1Jf5P6eDbRC79/8d2ReUZxCBfD7kR8nRsh5MypSNzgumFpa+QO0ICBPuUMdKlGKHl4mKHB+Q08/vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DBEIv2Nd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51L95uwA011748
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:42:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CfqC/9ybbk2kbQEzusiSVYCA4Lqx83IJ7N4o2KXaKQc=; b=DBEIv2Nd7LoqOWSb
	WDBbXwDAl5HI6A+g120w+fQ0fPM3BOvBD04rbneYLB1Wxyr2r3dEKNE8+VMD8zjf
	liBaeoj/i6mHS8eP9X2LSUavhmN3NoIInM0k4MYYRvrHSpu8jv12lQTzIVDAD81k
	uqtOxPThKYxdUirJMHA6dXQOPJTdLQFRl20NXDfWwthXAGqdpECDVmPxR3I914Lt
	GDoEHQWj25UJokVOK2ZFDHRKCUnsH6gOAs5/2hfrQqsrZfxFmdKE//RE8rHH6Tca
	TwORWg/B0HxGZMngA3f95leKSYwomAPk4KUxuwODrnjn+R93rfuQL84qQwGbsyZE
	mUN3qA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44x2xbd422-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:42:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-471ef402246so5420361cf.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 10:42:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740163356; x=1740768156;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CfqC/9ybbk2kbQEzusiSVYCA4Lqx83IJ7N4o2KXaKQc=;
        b=Ygh0eb1SlQs7rqTdGmuVqww2PlPMSzimIZ7bpwq+YKOxJuATkl57Q4vI5Dfzea+s4v
         XSaJ/HPibA0KsGLUzPpJqVU/uPYqJIZl11UHJSOmRSsZPX5F1IebCvPqSb8xWhwZW1wK
         TyriYKoyDoFdXrLqHZbwbpYP4Ng0gmNUMpizFtt/05ehHpI7Ez+ue3sh7YBqx5x8vDc3
         8CtillEMNIi2CLG7JeluHC0djzx/q+ntZcMolWRLBdz1MkfKGdvKA/Q2HnWTsKPOdMOT
         2h9giNnYDneyemlR1K5pT8dlA9/+WwkmRFxQZ2V3ZMjNMVjenO+PKyQj4Vqjiw9hWLuf
         s2Ng==
X-Forwarded-Encrypted: i=1; AJvYcCXae40NxEeYMO9QxeHwiaTjsujNy67DlxIGKFfiuzmMjyKSUxcXH3flF7u8/FLupyXgItpTjShkjeX7@vger.kernel.org
X-Gm-Message-State: AOJu0YwdE2QVaRnkGxtWsCWOL39JlRqtg/Gy1YRRuxhegs/f57GYt6Lq
	/sWhziy6ZzCUFilMN95S+LurZVEChCwJ58Nu+b9K+TRXblpcqOFPiXM2swx9+kvHLv751lYbbAo
	8ImTnzSV6TRd2uHLMBFRvaW0I9fkI1SGGEJVrnnV7LjHft/m5LzzhXUu1z9cZ
X-Gm-Gg: ASbGncsi4Bb7t0zZwiMBqiYzjiHcqiupI4wFBtOnovzMHgYm/StTX4sDwylhLHitC7I
	6gq+Hdwp+0CftjKZNaOpMGqeYF/dyFMA1n5RnlcFCIdVo5Ym7fsmGBqCE+QU9Cz7LW4LuKYWX/6
	NRDe9YIcseGo9Ev8ZS0wDBnFfmeCrIHH9tWVzEqyn+PzSNUXXLfX5JS5z02IWuD1qgGGJyQJZfy
	PMGb6scQ6Iy2ns4iGbeexid1zxiTkDuAwBhpSry+xo2S+z7uWACg8M7S3XZ3+c5xsxO31TNzXnT
	0hCBlq/9dmCQU19+HzvH482TIRUZ75ChfC85cA+N8v9woGmg1taJk+sEQ0fkmzLpf6X3Kw==
X-Received: by 2002:ac8:7fc6:0:b0:472:c7f:a978 with SMTP id d75a77b69052e-472229762c7mr18987221cf.12.1740163355473;
        Fri, 21 Feb 2025 10:42:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFa9JkzhhxrAEDrtNExVlkWqPFhGS/srsaa8aG/dA/r1UYKvzuNzF1vzSoqXYWzINp8gvyN2Q==
X-Received: by 2002:ac8:7fc6:0:b0:472:c7f:a978 with SMTP id d75a77b69052e-472229762c7mr18986461cf.12.1740163353654;
        Fri, 21 Feb 2025 10:42:33 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb7c76b0cfsm1244422966b.28.2025.02.21.10.42.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 10:42:33 -0800 (PST)
Message-ID: <b30d046b-1221-46e4-8535-40d06b9e379f@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 19:42:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 1/3] arm64: dts: qcom: sm8750: Add Modem / MPSS
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250221-b4-sm8750-modem-v3-0-462dae7303c7@linaro.org>
 <20250221-b4-sm8750-modem-v3-1-462dae7303c7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250221-b4-sm8750-modem-v3-1-462dae7303c7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fMKPUteJZH2WdoXlbAq4D2_P-qLSwUdm
X-Proofpoint-ORIG-GUID: fMKPUteJZH2WdoXlbAq4D2_P-qLSwUdm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_05,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0
 mlxlogscore=761 clxscore=1015 priorityscore=1501 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502210129

On 21.02.2025 5:33 PM, Krzysztof Kozlowski wrote:
> Add nodes for the MPSS and its SMP2P.  These are compatible with earlier
> SM8650 with difference in lack of fifth memory region for Qlink Logging.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

