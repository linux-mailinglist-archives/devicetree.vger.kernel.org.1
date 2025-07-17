Return-Path: <devicetree+bounces-197384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 957B8B08F70
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 16:31:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83A681C41F03
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D3982F8C28;
	Thu, 17 Jul 2025 14:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KrcjY3dA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A5C2F7D0E
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752762523; cv=none; b=fuvL+3ePD6E1GMvV4C3gcnasO4sTsbFDus8aJ+M2pgPdieUR7cj/2l0unf1eYAknKLsGPAXKkEpeKi/5IEAQr0V3UJsyQUB6toN2adC6XuXOwjVEWwuQhVUB7qU0hy0ZRNgfOVFE1the3lyQ5iLt00JhNcVZu1QAtgBxU79JLyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752762523; c=relaxed/simple;
	bh=v3oOU8PVA/bqEGOL4lt720q1ULAXf932Qx4T5j1qZUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cY96jHAiJK4wpNjChEov7sRgWb+hwUMIZ7j8Pt7UQXWCz5XE+jeWHEn+7Ty/f1c7bayKxTftrtj5Uvp85rviynqS0FJinePFZKy153HNlR5qrawitA4qlJtP/em5JWw9appAq/+79lYJYPe3S05yGE5i5d1s7leJVWGs0kGnG9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KrcjY3dA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HCh4UO028059
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:28:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oQ+icyUZ+5njb3VMCS4dcZ4gTJQBpU0JDW0kKoJZke4=; b=KrcjY3dAgvQxpZ2X
	SMRvmyBueyY8pan1IHX+7wEItcc/wW0tECSzxGIEY7zGxXLrtiQau/oRZuOCXfAv
	b+FR8rX9FoTh3FspCf/ByO3lRmRlMdgzMvTW1dsuPrfT1YjYlqVzNvziQ2JjbmyN
	Sl0bDFQ+M9JW8M3Db+hCdCtO4iIx9jBaX2tKjXaWYN7x/7Z+U3OZkISrnID0zuKf
	x0saciahfZ5n0jBLTypGLgmd+yKOVDefaqEaDwEAEhuDXzwYPe7SLSSnSgQXvZMd
	kNDr1+9BW2b7wIib3HR1Wn6+pQlZtssH2UecczqIrRvzr61TIcZTQ/6V6nuhXF6j
	UdHDDA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh607wv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:28:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f539358795so3613816d6.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 07:28:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752762519; x=1753367319;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oQ+icyUZ+5njb3VMCS4dcZ4gTJQBpU0JDW0kKoJZke4=;
        b=QLicBw/YPzf30ct7FoEbUnFZtpQKtdDvjEjde7q5D2sUcUx/Y7aHF0klaFK27nRDFM
         Z8YRq7KgtS/9g+M55y4HqkRzXNFKSpyBH+vMoIpb6vJhdKRkpacwAkK6e5CMYKlIMNui
         Jtrj3t0msjlEE3OMowg3WE3B1xEx/kZqplmTuqDtS4r0jWxrE8nwaqEpmE1rYyZUs8Xk
         piZYQa3kJaVzDq/1718UU/c5mxMJ0SSwQ9ktJl1Lx8GpsomdsFx/PLAdz7GM7pE/c67w
         OS4o1qzC0l2Dh2utKsof1eQNJal9ZpWDZgiSO0rK6oxXIerCXuZOuYUuO6aCURUf6lGH
         kzqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVyFi9f8strlQYUo1o2JUAVEHvMgQZO28IBj8duluJb4PG9aPqKyCU10j7d4b71SfTY3aNJ5LMz6zf@vger.kernel.org
X-Gm-Message-State: AOJu0YzMHOMRUGz8XJa4c7LDt/9+Vh3D7U3qDU1dmHVI5x4IebjL1uCz
	0fdHuEeEi7NVTXMq9Z8mwCk5NkX4ZrFQ8J9bBOd0Y3/+uuHHWuw38IrGEym1FOGysRcdQ3B9a4d
	zP0sF8Hib4Sc4A35sBERpEd2kcwNTjpRKJIIfwPocwnBQryJo1+0HKtseVyAs0K8u
X-Gm-Gg: ASbGncuc0BqXw83ewhNYQ4sKk7/E+XfmPde8L/X+EXnegHeKbyrTCaLA7Xzzmq5fccx
	NZzLfKBW+2bXliEEwpmOXJwiiPKd+xmXHzuw00c0TCzENVRZ3SjFjAxVmNh01l/yZaQH7wZpwzn
	r61m3jXWOpOnHw38IanSdCrERojym6dhXUqnOl63XBqOfBjkTAGFH5sUH7+3xW/xPus6eP+vCm9
	Aae7FdhRP9KiRTaH1odAX8mU7lF//Zl34hCwC/3WtYZRd3ENL51cC2dRCdP+3Y0e6PiMz9P6lE7
	o7A5X18zdx+i9xfzB+UbNkFcWuWreHmexa9ohYpwMDGyj1tdvEP5rdjKC8uJBHhDN3bcCPSwQcS
	SBj9ch3HxgDDBqXox7FCj
X-Received: by 2002:a05:620a:1a9f:b0:7d4:4353:880 with SMTP id af79cd13be357-7e342aa89e3mr435818385a.6.1752762518779;
        Thu, 17 Jul 2025 07:28:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGT/4SwF38PAfg0B4c9eWQ7/O/SGHhZwcsWSCvKWkBoYrLT6UHikWMUgn/PtK4mB6zV9GV53A==
X-Received: by 2002:a05:620a:1a9f:b0:7d4:4353:880 with SMTP id af79cd13be357-7e342aa89e3mr435815285a.6.1752762518275;
        Thu, 17 Jul 2025 07:28:38 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c973439bsm10331941a12.47.2025.07.17.07.28.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 07:28:37 -0700 (PDT)
Message-ID: <2c1d8048-7ce4-4fbd-8af5-88d1afb5577a@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 16:28:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sa8775p: fix RPMh power domain
 indices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
 <20250717-fix-rpmhpd-abi-v1-1-4c82e25e3280@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250717-fix-rpmhpd-abi-v1-1-4c82e25e3280@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=68790898 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=NamI24IyYu8Bov36B24A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: nwJ0T16vOYsT8xjnWIXtl-dx-D6RBV3Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDEyNyBTYWx0ZWRfX0rSYYlIbXowU
 ZtNa6ffMMyUT2sS9o6yOGilOcNGvKBN2JX4RxBdp9uhY9LtGJ8bdNz6AgZiV0lZlCdD7BNTyRZk
 ujeOwUBng59sVw0YXMKqyZGrRta6gFtsSDFbvJmnpvCUCsR1z5+RB6Zl/JG/BkuCbxMREsmHpdN
 OTscRkTAkOXQ6Nl6t3daXg2pFngtng03YKWBAZcAt4/8TOLjDWlCOIX406txEPO2WTEa1eRubNo
 44nxtXp/lHaKQIWDp887JTdU33+N9Sv4mVGWSvwuY7b8GvJKs0MLg+bC2bzIRmv8+f188LVSGdb
 zJ/CFdWMvLtF93sEegEtrjQ0IjrhWO0VsVB8VxCenaoC+4Qw1y+VbdYuOgKgknOgsmoWKfvZyso
 y643vrK1bSwIV/UL7QvM/eUULQEriMFS/49MXijX8l/c8fMXbrrii6LCkc67um8dGHqQnX1S
X-Proofpoint-ORIG-GUID: nwJ0T16vOYsT8xjnWIXtl-dx-D6RBV3Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=747 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170127

On 7/17/25 2:48 PM, Dmitry Baryshkov wrote:
> On SA8775P power domains device doesn't use unufied (RPMHPD_foo) ABI,
> but it uses SoC-specific indices (SA8775P_foo). Consequently, all DSP on
> that platform are referencing random PDs instead of the expected ones.
> 
> Correct indices used for that platform.
> 
> Fixes: df54dcb34ff2 ("arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

