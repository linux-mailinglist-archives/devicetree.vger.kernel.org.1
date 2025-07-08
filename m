Return-Path: <devicetree+bounces-194147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F38AFCD5D
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:22:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 827A256517C
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E922DFA54;
	Tue,  8 Jul 2025 14:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VJNiH6ms"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6694D2DFA37
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 14:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984510; cv=none; b=ZQoUhhRWqns9vbbit0IWuAGr0vSU+M5RlZwKS3dV15SkTtIy9qGXdtZuSKtOgBkEEaFXD7CkI8MgFreA8FloUy6hO1STvh5ldie1yqedattiCEtR0k/E8/d61y5f2UrsmoQbU8FtTZugpofPw8Qf2zeiwvoR56Pr+Pi7UdVgeg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984510; c=relaxed/simple;
	bh=ugicuqbU1yS1yCvIzcXqiNr1oJADRuqRGHGqN3D/WO4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oIQPAu5SVn3VGH7LzrptDrBMuazMGLi8IH5p3uHAVOMSOUw9TkgyLMV9wKcQ1T91mcm6dSgWQ49DVHwVC8Cpyud39t3dzjScNakMNMz3UaMVHm7pD5HVpUev35EwWMAy4yFtDIMgC+EQPHe2dPX5z0VzMro937fTW5LT8q61BHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VJNiH6ms; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAbTp031829
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 14:21:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cQuSWDFSA70+qgC1klmaXdIjk5aF+kYMGvQICocunPY=; b=VJNiH6msDsbeHFjP
	arrXtXidBm25fdeM4YcJHLNIyGmR7XnmoqRc9hBsAn7CkUhaTwCLwZ6aC+yoISAL
	wF1FjBMxUMZD7emboQbEXQntcoDRckVcu2NP0wpkYUATws3tLkXjioqoTsA8ifcD
	lHkVqDtktdh234urapuag2baC/pTgIQ9MB9JcNCbrnLVOx84YDkG0V9hROY7OKtD
	mH7Da0KcMpVaEz6tfVvBgL7xACd0KuRHqzSlyL958zJtQVtPG4T9RbVi1hCfKuoG
	UREriNUvwiEDVRdpzWGmTm4WhL0S2bFz5FZIrrfF8FDMm0W3lFrQeie51jlPSjSu
	a2MZPQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pw7qnpeu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 14:21:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fac0b29789so14710826d6.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751984507; x=1752589307;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cQuSWDFSA70+qgC1klmaXdIjk5aF+kYMGvQICocunPY=;
        b=nyvc6JGKRin2IHNv93ftb3mXck+fkJPM//ICTeYQyRSx0+h/tNO2V70Uxcq/+Pwylv
         +2qcFRR1J/0vlP9++pf/+KEBeCmQPhBm9PEerOH7BCkhv9BmMr4dWas1ENW9Laq/vrYy
         5nODubx0of9q0Z1SHXl+2E4FXFjRQJgO2d4rCZjXDqmyco0BYWYDvVeloNkwztDkUTlv
         PeNl1PwJC2kXO9wTZ8uUNNbhYt6jkU4OQfJVx0DqL4TInFhY61+PSiW046eQJ4Dj81vc
         ynFU4HVetb5MtGjXBAc8HtCz0V4OkkkqL3M5LsLwdTkSr1Ektc49Ana0a5B8xyMSiYL8
         8kVw==
X-Forwarded-Encrypted: i=1; AJvYcCWd9bGDeX985+CvXHX+8mPBRdVRR5Q9kQSnP8Y2Pz4I7S0FuFy6OLZJ8Jdcru2x4b11TI7n2AmCWLoU@vger.kernel.org
X-Gm-Message-State: AOJu0YwsoT2VWTWFo7PuZjFQiEOetOjnG+8JOIWPUAWidffipDqTR2Tm
	KNsuLf/apC2O1v2DxQcT8i1LdhhvJ7Cxpu84bdK4m9Ts0NVsbDlCpHEicPbQw8b4uQ1BGK1VOmf
	x812XY4M8cWyP4XBpBoaT8YleZHlov519zZmGLyuDZ0rMa+OTpWvrJw4vq/dU2zI5
X-Gm-Gg: ASbGncuQCzoe/20dI3tkwIKqILqmbum0cMkg9SBumD8vYaVkYDzmjAQAy+hRIwHEtxo
	kmTXc3XKHJnUNenVJk+V6qVEaI58V/McaB2eC5iTLbNqVl95Bds58+VVaKQSRDo/091ObB+phgN
	mGVBHyAwFc6+5PG2z5fQ3Nwkb2bPXqSdSWKFiK1kMkq/j9Uzu509f1gRSr7lNx+KxIPmByWlPxu
	0ubkSRjySn1IARHyRz4VaRAZWVB9zP95BeDpe/WTfGM2LVKucyWU06KxQ5eCpPuoWI7pK9aBcCx
	V4DdrtS9oIMwoJBJPM4eLsMzyDao2ER03KR3G+96Zm4BTp/2gB/V2EEPbpwWyote8pv657WSKsT
	ss/k=
X-Received: by 2002:ac8:5813:0:b0:4a5:aaeb:dce2 with SMTP id d75a77b69052e-4a997874756mr89452201cf.10.1751984507351;
        Tue, 08 Jul 2025 07:21:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdN7Ey91h929pRUN3VOhjB4VPDzQq/iGbSnqJOc5DJSrf1PKUFAopp+cxtucXt0oKQalORIw==
X-Received: by 2002:ac8:5813:0:b0:4a5:aaeb:dce2 with SMTP id d75a77b69052e-4a997874756mr89452011cf.10.1751984506884;
        Tue, 08 Jul 2025 07:21:46 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e86fsm905004066b.147.2025.07.08.07.21.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 07:21:46 -0700 (PDT)
Message-ID: <ea030c64-61d9-44e4-b4de-eddd626dffd6@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 16:21:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: ipq5332: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
 <20250708-imem-v2-6-692eb92b228e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250708-imem-v2-6-692eb92b228e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDEyMCBTYWx0ZWRfXxplKUTn4Aisl
 /Ic43SnJ93cQd8sRj1YZFTYL00G+pKew2QNXf6fUfYzDj5LZMg9Ov6gQaNnqoVInkqVdw0cyd9P
 DB8R36crUPkBnBuwxQlba5tIUzb7uIGaErju17BOSKjCVxWlj6/F9Z0Mkxq2kequFXe/KKpHjwj
 0bAMU6oNkP02DO9EJzIOzfI+j6a5Ll1848DdHRQQsuW/EMYqrvzWZi+bEt+ss1sYDCvgM6Its3W
 UmaZ7xG8mgIq91RiAYvwXO3pqIw8Ta71Teae2VB74Ej2gOJGZX36OdlP4Wb+MKTIGwgclIswR2m
 7Gm4N8/5PHr3+XDGZXXvJRvi8hC5ZwsMQcdk/4dMEK924ZKBSmiQ/727y4cwWX5N9ZOdpkKpPgJ
 Mi1N9pjSPS0YoXy6BFa2xYMpral5848L3pVHVNdN6cugzn+HjV3KvAJBEm7HoGeoFPmRMr2b
X-Proofpoint-GUID: Q6DhWxIT-fhomMeRweNnHaA8K1PPnily
X-Proofpoint-ORIG-GUID: Q6DhWxIT-fhomMeRweNnHaA8K1PPnily
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686d297c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=owAxAYLDMf__z6yt7SIA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=719 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080120

On 7/8/25 7:39 AM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is 80KB but only initial 4KB is
> accessible by all masters in the SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

