Return-Path: <devicetree+bounces-132875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FCD9F8641
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09549188951F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF9C19CC20;
	Thu, 19 Dec 2024 20:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VrH6ZAp7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FBF154C04
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734641362; cv=none; b=JsnVZmw7lToldYR06r52EIM4QZnEoPmbI5DwbHhQhPvAwMRq+P76xazmkoAqtfilUghpUMNRozpRNJqLgmFx6jx8OxkRPsBOG84pLx/7F2F8aPyhqdMZvaA2C+5j/1e555Ro8NuCQ3UQe3iIhIkA1AqhYBHM1qMh7IQm2+j5dEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734641362; c=relaxed/simple;
	bh=EQfBiz4KQS0eSw+KHo1QGZraJTfCArIJ3CDRC9zlk/E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EDcIKZVxVRaT/BWulWFxBVav8jRr7RftYA5+Fu0znQYIColN4L+RblTpH7joEg79rRkp8f1sNmSjUtHbNKazlxS82FqEgtnpHH2v3DhSF2froi0nQdspKxYQKFy3fktdjFo292tv+d/BwtTl5FmIKDR8cdmMOPBGHuYZd+AxPy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VrH6ZAp7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJJ6Kck000473
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:49:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FRRDae/hYvUEanCzXC8N3Hce9xcTItE0EhrjOzeNFUM=; b=VrH6ZAp7TKDuM3RI
	cxD7VtXWFgAxv7aqJuFg2f+AlzT7zGv1ceOw+ol2E+pkAfg+UmPmPMCGc8ns6HlN
	e/mBxmfJgLGaosL9HR+q6XFnvRKjcZ6icVKA/CDkvar2w0garyLAgL5bGE4utuXT
	MUG6EEv7sZ2Ocj9qZLxqwpdYj1U4u0ZzB3hGmevtG/nAGQOUg6tRvHnt5XOX6Pq3
	7OV+8LbRQIoYsTFT13slcw4hKENbC/knbcF3gAtjefOBHtzSOCZwMf97PAmMq3HP
	DxF9rEuN9qJpqlYajTNdzrolkLZ1BLOlm0cf4bkgQ829KleQ2inPLjc0H5IKWO7L
	VN647g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mg98stw0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:49:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4679d6f9587so3037081cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:49:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734641358; x=1735246158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FRRDae/hYvUEanCzXC8N3Hce9xcTItE0EhrjOzeNFUM=;
        b=QGOeYtLuGXJzVNx7a3RyrElXzjvT95W7ymHDzjAs21DeaYrSHzJVdVpYcC+Hn25WSt
         GzAt4iPOGU1YT6VuG61lCcg9LTR6pROLyhon+PdrFcTfGdJSsL36IdJ3/j8zdOXKJQKo
         1vaas8oK7y/If6/M9t52MS/V8+Qko8bHhoIVGZXTNecqo8jr34rsbINiUMSRbQqT1BPr
         opgVPCloWys6OOsK6AHbttOJphtafcXWnS2aBvs9wqkqyktuh9eq8Q6sL0kGuZxyxtyN
         hZ/0vzSLxVJvw4pPkc9RYW4jEwLTVosaOmAjMnSd16cK50/4/EcDSGqTl/65LpiBvpzC
         8X1g==
X-Forwarded-Encrypted: i=1; AJvYcCU0wbMysseDqvcC/q6TYRAle96kNrIc0LG509ZONi7k+2M4Bmwora2W26XdjQJqTFyiHOwHctT9ffwh@vger.kernel.org
X-Gm-Message-State: AOJu0YzhLzmgPxaQy0cltIW4v4MF62dAzQQlsOdhJ0r6OJ88MA4xwXbJ
	FJL6OXREA5yqs1YuX6vyCtugdx1xFzPefRkNCDE4/beSZfAqibrSUsZ8G5Nt+qbsjSxh3dEW7kk
	DC6DC51iG7eIFr/8N/1jkFLx7/fhDDfRCzA2WGRrV4ZzbqxsmEQ+2NUTNzfYU
X-Gm-Gg: ASbGncsVAR+KKF7MChEB7kCXt/B3LKS8TSdwPhLlgDOlUAijNN9lNE9UzL3XWWgVXdR
	kv1Zrz0OunruxvTNOVxm7jCEET7lAGJV2T1zPYxSrwS9qc8T8fD32LRvQcfiVfq1evI1SSqZOXB
	3B0NB/K2xcO7H4toaOjugmEfj83faoB9hcVFTHTuCiGXBV+iZIKJEMQXIbj87k5KyIaZw9BVoVC
	tLVfyuBv8pJgE0yS6Ah00G1Nn61WS6BYSejMsj/joqgpz214Cklcw8vpBaxQpFOWDC2GjzmjiZ6
	wGwxcdWoZFXSvwSj3ZMgS7nAsHuMkBZGVkI=
X-Received: by 2002:a05:620a:2a02:b0:7b6:cf60:396e with SMTP id af79cd13be357-7b9ba7c9cf7mr15499685a.12.1734641358413;
        Thu, 19 Dec 2024 12:49:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7ISODQMAOSONZGIrjNmW5ouACP+wuadO5IPYxmzS4CEZjDWnNhh1jYC9AQFHeMk83wtScjg==
X-Received: by 2002:a05:620a:2a02:b0:7b6:cf60:396e with SMTP id af79cd13be357-7b9ba7c9cf7mr15497485a.12.1734641358113;
        Thu, 19 Dec 2024 12:49:18 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a27bsm981610a12.9.2024.12.19.12.49.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 12:49:16 -0800 (PST)
Message-ID: <424acb26-9836-4463-a427-7ff27d6ff895@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 21:49:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs615: Add CPU and LLCC BWMON
 support
To: Lijuan Gao <quic_lijuang@quicinc.com>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Georgi Djakov <djakov@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241218-add_bwmon_support_for_qcs615-v1-0-680d798a19e5@quicinc.com>
 <20241218-add_bwmon_support_for_qcs615-v1-2-680d798a19e5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241218-add_bwmon_support_for_qcs615-v1-2-680d798a19e5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: L2uYxhAz9hE_CXlhoT1vFNU4GhGw_5Y0
X-Proofpoint-GUID: L2uYxhAz9hE_CXlhoT1vFNU4GhGw_5Y0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 mlxlogscore=896
 clxscore=1015 adultscore=0 spamscore=0 phishscore=0 priorityscore=1501
 mlxscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190164

On 18.12.2024 11:39 AM, Lijuan Gao wrote:
> Add CPU and LLCC BWMON nodes and their corresponding opp tables to
> support bandwidth monitoring on QCS615 SoC. This is necessary to enable
> power management and optimize system performance from the perspective of
> dynamically changing LLCC and DDR frequencies.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

