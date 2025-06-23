Return-Path: <devicetree+bounces-188464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C119AE3D05
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7594417519E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97FBE248F69;
	Mon, 23 Jun 2025 10:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HVuRj2zA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C349248F45
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750674980; cv=none; b=WPUOnOAWV5BrJFbHTbAsjy00U+CArO+9CLIYhdP0otP2vE+zYLeQDWagouSZdii2qTkb5oNNhCqQvSkOTDyRjsC3j0OQuzyXPp3KNapfMHs2wabM9nOFOV+fXE11m/rGF3iV26TPIKNS/a2+cd+1fvjDFsDh66/DfYV5H9cMwdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750674980; c=relaxed/simple;
	bh=jqB5RXeiCy2yxvpHqTiyoT+mAboYbVQIXqhgiMQcyzU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qg+7bzEpepv2QtB+rLFVgtbK5NR/tG83eGQaIut3T1qkbpInuR/1SMYWJpDQilUkzPk2zHCbvPr8oiCnKzBrsE2zCORDh5ykYvBo1xJiR9sMFpxohPg9sKUv5rnSz7Bx2KbW5JeltY762okOP/0s+I+DFCwCG8SqD6bfQlmDkmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HVuRj2zA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9TYIc020978
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:36:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	78ZQ1vr+4TJZ9LcD4aXxyiueI6fILqj2qthFui2TXx0=; b=HVuRj2zAB6h+roFK
	tJswB5HZNAJ8dTFpUQsOEHwiZdQn/rkiiR3AuPjG1D2NF6d5agIwSNDsFS+Ntnee
	Nvu31Ct9lL4qcicnT5KzbxcUxwRXy0lGzzDA3MKdhJU6G/nfNGH9Vh0rths5ZiwC
	EQw6cLZd1T7oLI/7I/HfK7/jAE351TED7ZR8o0lM8xpwve35suVqYJYYn27xE74A
	bKQfRv6inRg/zF02UqeXIVu2LR1K14yRQgdXvxVG3WpgamPcTTWFxGwdX9irI2qQ
	EdkB/Bj5/p5Tn3zCCV1a1TuaE9PC3+NPzOraVvsJ/fNQLU/Nt6IFOVFBZPCW8now
	CiFFIA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b3r6bb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:36:18 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3eeb07a05so57800885a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:36:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750674977; x=1751279777;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=78ZQ1vr+4TJZ9LcD4aXxyiueI6fILqj2qthFui2TXx0=;
        b=GwOguZklxEXTalizI8Z1hY3bN2lJZwzTCuGM+TYFfdfr+Cl4MRFdNbU/Q27XTC/TXS
         yZDUUv6KJvmlL14jwAndFj1b4zNh5/SAalz3eoDKVe2C9xzzFlgi1oiT7UtYqG7CC1a2
         htHVOqizec+AiRy0KyAJTZVipFoL9RM2pm14JdtxH8Q186Ci8YG/Mkf8V5j+7A5tMaPW
         YY4MfxA6SYBqKR0W4EXaKU/xJphmrWxs7Hks9EXR//6B1dG80Ka5FBTW+zF4oj6vsDaX
         BsMKQldGVjjIGKy6nYZV0euKB/WsxWLGhRk0sQB48h7gSNxOOnMFD/5VcM9+FWRwZj+4
         yYrg==
X-Forwarded-Encrypted: i=1; AJvYcCUzrx1bZ0N/mVkh7bPC8yVxMdDMkFlTdkW79Nuu2TPDqhVy8tMtjLDHbVG2nViI6gC3spNIHX1DD9cY@vger.kernel.org
X-Gm-Message-State: AOJu0YwCofFW+WCbe1giwzXnvLArYAzj223yD6dwAgRPqGmY0V6O1hPH
	iI8FyAEztsr+bzadl2stCKHRnZaG5dClUAajg3hyPS3CPWRWnj/mK1yoPjai6h5VE67bbU+huxM
	Ktd8mk2ur2L059K/xTNt+DpwMQcX8QPyzYfrrT1dA/p9gamOd216a3UqzkM3TDasu
X-Gm-Gg: ASbGncsueTq2l5lTZwlqSBmxQkb8ptPn0CGnO30nYHV7SVEhPpPCRBGgDjnryYK55qU
	q6zDlKGaC+ur3gUP9sKCWGqJ9hC6MNwaCSkzJrHg5PTVwLWLrKad7Ls3OiXrpw6guPXIKAAY/yH
	QHAMJn1srxqaMvIooEIAEpxoKkKhV71k7pESEzilPVFauobYlWgpc3tDygXRbsRRMaqalRSGDbv
	A3548kYZYGKOuElEs6a4f3TIZoA1mhIM3aBW7skTvzWZ9TrbMMg7UZ3P0hjR5Uj1ctKaPAXm2FS
	3O86G0XdrpUktul+CyFJtu4TEXR2ZrfiNr18Zp/hRLPeCSqvmDDQRm5ZYAfYmKBJTZNiZhxzi88
	vAoo=
X-Received: by 2002:a05:622a:9:b0:4a6:fb4d:b4e with SMTP id d75a77b69052e-4a77a27a4bcmr70701861cf.13.1750674976984;
        Mon, 23 Jun 2025 03:36:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERfb+THWbpuzGEe8wq5BdPRAx8kEqGpZc5Z1zw42lxTetsNLxPB2ZpXeQscW936xCLuoVGqw==
X-Received: by 2002:a05:622a:9:b0:4a6:fb4d:b4e with SMTP id d75a77b69052e-4a77a27a4bcmr70701671cf.13.1750674976523;
        Mon, 23 Jun 2025 03:36:16 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a18cc09b5sm5840626a12.61.2025.06.23.03.36.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:36:16 -0700 (PDT)
Message-ID: <1dcf0478-49d2-425e-9fc2-137ab3f89eb4@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:36:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sdm850-lenovo-yoga-c630: fix RTC
 offset info
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
 <20250621-more-qseecom-v2-4-6e8f635640c5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250621-more-qseecom-v2-4-6e8f635640c5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2MyBTYWx0ZWRfX5LITyDGW0Lls
 OrbPcOHnd7c/Qx/TAL6t8iT8sO582/4gXnVahyrzauP5eCH8Qjb5f5IPhfw6lGkbFOMx+9IE4Ka
 /CYl/CN07RmPOY9HIKD/dQyr2dhiB457vwRMeDyAnKPWfqE8MqC2L2hynqQww5Rlk3Sn/l5JcB3
 YOfagyW+w9sOFH+4ZkLB1vm0WPTQ73pCKqgtyKrVrIeWtE7QYAwYcIjo2l0PkDdx0Vcf5NyF8tq
 jhlZqPmB4kZmrQzoUzO45cDy8VIDj+vYsGvkpfKg+Kl31H5Lp5qeUxYie8KzADr9E3/lzvurwFM
 F0Z+yOjY38PL5xbu+323GuVFgnumwKw8KzqtRF5yJnbxPkgqIv24KunMhVd/8HVDzP/PXZyvgjm
 G0kIzJpONXTbEH3ggI0mCxCwrfxwm3RFOZ9a6VGVpAx2CRQJqOCc3O2rBnZM4LxuVRHxbH1Z
X-Proofpoint-ORIG-GUID: k-cY8qoQmCCRKmqcEwx5HLW_srrhj7Ks
X-Proofpoint-GUID: k-cY8qoQmCCRKmqcEwx5HLW_srrhj7Ks
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=68592e22 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=VbgocMZr7HyCK-CFy7MA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=674 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230063

On 6/21/25 9:56 PM, Dmitry Baryshkov wrote:
> Lenovo Yoga C630 as most of the other WoA devices stores RTC offset in
> the UEFI variable. Add corresponding property to the RTC device in order
> to make RTC driver wait for UEFI variables to become available and then
> read offset value from the corresponding variable.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---


Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

