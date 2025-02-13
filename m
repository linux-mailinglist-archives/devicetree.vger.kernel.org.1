Return-Path: <devicetree+bounces-146297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1806FA3418A
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 15:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D05118942B1
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 14:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE7422154A;
	Thu, 13 Feb 2025 14:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EG8tf6P9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E3721D3E2
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 14:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739455392; cv=none; b=n7ZxJrI0TIDtWshp+vdB8IB4cwfOT2sTTZRdjjBSbb5SeZuutMbu8lD+6J5tcCjy8pM9lBBxkzKPtfhzTHZva47nUUDhGJSl8zqwSJ9LEmOaOFXNrLffvmBFPe+SroCU8TuOM3lIhyJNFHbzGdaHE95m0EXTzg2RtHJZEPTSIeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739455392; c=relaxed/simple;
	bh=vwkpPEmLKeMcnDl78At5FuWa/pfr0trYWV5OyOQucs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C6fp/45v9ChyycehUJFKr9msxgg1+5WPSk2Ld+mlpm4fBKQP4yGEF/naYyKlxcvFRhLLbP/TbaHYRTIcsUh5m4yhudrtUM7PcBG6f9hR9H4z1Uqeo48Y2bL2wxGU0n1lweaUBtpFGLQECNa9P6xhIi511Pf6KJmP8NWapuI9rgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EG8tf6P9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51DA26M3001763
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 14:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/5VpsuLdCAZU3fZXBzng72UGalOx6ElpR1QJjGggFtY=; b=EG8tf6P9m//EdFgr
	f/qOTfQ1kGjAC2FUACXqIFFRgpklnI9Uk6Ac2/Fglgw6v9S2T8ZhdLuqWkRLiIBW
	0zaQNskQ+VsH7+zFZfbC6a0BY7Z4++yHW6cDKJ6g3frKcyLynjLnYwQeZqFLvgi/
	9qiR2npHSocJVAZPQNC/7hUow9p+QF1Aasr0g5nzUr2nAksYHTmRm9mPouxn/5q4
	/gPHMudKHtm5lUs3FKRke9/G3WghBoRCkTaSD37Zw5EvmQ6e+hST9bs5jnoaCzjU
	0Pq2bGcseD9+YtozyVDkBMaQQvVpOqgwswsfOGb0kdYANWDXB6h1mmcuy5JkomaX
	Dzkg+w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44semp8m0d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 14:03:10 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e65bc4f2d8so1966426d6.3
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 06:03:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739455389; x=1740060189;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/5VpsuLdCAZU3fZXBzng72UGalOx6ElpR1QJjGggFtY=;
        b=Ngj4Sjjf2QZZKNZtXk4Gwo7GGIpBD1Ojcjv9X62QP5bdLhL0YuviKkHKLRzA62F1uW
         5214UqhYIjNFNThqRU3mOoYYiQqp8Ktn3pjIbo4IcznN4ae3dIW34TvHaQnSdHJGjXQ9
         j+PTIMrdlUPCeCWmoo6fcAoPj33Skwwi/fGyILKke1d1UR4Yq0A950yku887HkQV0jVy
         kht3h+oIuvAoLFSNi/ocfLMMi2tvNK/zIIOiWwg+oL8vT0YtxxM+5hTBUtrYrpR/E7vx
         YzGmg7bpEIIS1LEAmMlgUjFQYRf7a5uGQ3Aa2WRejKDefcN1gxgkF12zl2qPtKEBajph
         BwYA==
X-Forwarded-Encrypted: i=1; AJvYcCXXlKFSHfsf4Nbwiex1w9UDhMcILGMj0kqwPN7VtUDoEgyvuvNExjWxdnZrRVs0EHxyjMs5jfaDuXiV@vger.kernel.org
X-Gm-Message-State: AOJu0YyvPNETqewRyC0n+jwrD9vv+JNbVvAVU1eiiUfJKu85pr+RV/NK
	cKHS3iGNUokleNPkZQCKrK2RxsnU4cp6/1MP44i0BOJNwm8OX3vax7BCxPhvoE830i4WfPr5Ytx
	46Ub/Ha2mY1T3yXkZikr5/4wmjDQfmqZzCHB2GqASsaLGz2RLEXnIwIhDeqHS
X-Gm-Gg: ASbGncvoIFzqnHrCbe1Fh7kvnuMjMgAZqgZfbzw5aHoiu5i/+cZcA/gDGb8FACQnFtv
	/wZT+G3vULPa40ga79qX9jBi2ib5OwJNwqBQ2R6GxRPmOAWuaepTp3/lPjqeyciN4YNZVO+sGtS
	6qOCQg+UAlw7Skbe8cInUFlFQr8OD6aNqjrHnCv390yGYpO7iBdRiVOMt3WpBt7y22bUvBKHHvh
	1jGWIVK+yPRO2dcspHf2u0daeFeJ41bpJaVHrfU7j9j8ZDcIiKBLgsU1Qnxc6kq8GQX517u9jAK
	enLvOlyls/lzMIZkW0yjFN+I9bbmXwDPD4YRK90Xr7STCs811yX53sbEyLo=
X-Received: by 2002:a05:622a:4292:b0:471:bb0e:8084 with SMTP id d75a77b69052e-471bb0e80e4mr28606881cf.8.1739455388772;
        Thu, 13 Feb 2025 06:03:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF42JZXUGu/JVphxOuwa5AUtM/bnsNKkcUPYqVDmecZDBrVQKesnXrSST6fw5mgPmfKdh/e8Q==
X-Received: by 2002:a05:622a:4292:b0:471:bb0e:8084 with SMTP id d75a77b69052e-471bb0e80e4mr28606761cf.8.1739455388421;
        Thu, 13 Feb 2025 06:03:08 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba533bee9dsm136345466b.173.2025.02.13.06.03.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 06:03:07 -0800 (PST)
Message-ID: <a77fa0a6-c9d7-4454-ad47-d03a3026e104@oss.qualcomm.com>
Date: Thu, 13 Feb 2025 15:03:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250213071912.2930066-1-quic_mmanikan@quicinc.com>
 <20250213071912.2930066-2-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250213071912.2930066-2-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GFwTTWZJ17dZLFQ93k0f9xq-6Nhpsjd3
X-Proofpoint-GUID: GFwTTWZJ17dZLFQ93k0f9xq-6Nhpsjd3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-13_06,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 mlxscore=0 bulkscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=905 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502130107

On 13.02.2025 8:19 AM, Manikanta Mylavarapu wrote:
> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

