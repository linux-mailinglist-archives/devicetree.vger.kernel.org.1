Return-Path: <devicetree+bounces-132990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4907B9F8F11
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:35:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DF77169363
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD9551AA7BF;
	Fri, 20 Dec 2024 09:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XuxScu8t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C581A83E7
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734687337; cv=none; b=C+fMIpMBeF426bgs5r3VVwdKl2jmpKoqxFte2/GNyzEtGbVUN8wnjnAb+Q4gs7JUQjhZ9X/IF0c/fsgPORaxtlhDnHRijPWmor9Y8TYqhqgrr1TDLabOlZ8mh6TTVHfSA6jx4Bv7o+plfZfD7Ch/L3ZFu2dsEj81dJxLBHGRy/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734687337; c=relaxed/simple;
	bh=zedFkMBUmq0Nn3VJdZuR2Lhi3SZTkWV7cImbJYQqa5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S2kUemGBP7dr2Zqj9iDYqQeLz8oBKSO4HScJlJ68DOqXH6tOYkCOzh+4NV3vekbcKwE9aY8SprzOcVdnID02XKDvQAKs1qwkkq68OeffTCpfOC7kCE0ykizSZX2B4/HsKAmR6PsTBW7GGXUhzuCDIzt4CnCru3OISuauNjfCBuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XuxScu8t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK6lcTN001459
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:35:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2wvf4m/+8J1wY5OlIjVcb1V6YaBDy+XK0fLMoqV0tlg=; b=XuxScu8tfOWRW09K
	0qjLVUZiGDW75uPfsYzamvC+rrdhgI3PuS+vDBLuJPEyV/Ru1OdPzgiOgpEFCmoZ
	BtofhpQpr2Olc9HOg0FU4LZwYHHImzprO3TAhr4OnO1ZQl9tu2glBZXxmTxFRG4b
	Pyr6PIc211JFtaEeEZQ3cVqIUqg6Ba/sb80T8+oEmRP9Hk3OO1Bc9k1TSwE3bP1g
	vqvkUgyhzQyuWEg16k2RQn/5h9BSgsR4rDoKVSFizWOwmzdwkC83fm9eTrOMEYNd
	oIkeD3Vd6++krCmm9jZcPG4EEiGN7LPLH+FVEL+QPJAcEsOxHUu8cEIjurLtPm7k
	x76G8Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n3mfrf0r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:35:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4679d6f9587so4511451cf.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 01:35:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734687332; x=1735292132;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2wvf4m/+8J1wY5OlIjVcb1V6YaBDy+XK0fLMoqV0tlg=;
        b=gmDYNygMxs2Siu36TUjYJNQgejiVvPB3LJVnCNduThW4meKy17q4tOkjCpxpAmCWma
         ukgSJzsuJow+huuDjSeEQ3NpkTX9PXkCBnRS4Ak1X1HeRtqrOlN1NKSj3OpNCTvvfasA
         yJfZADVxpT8F2qDptx+2IqgOBvnr5h1J+/YxlWiDGL4Is2mQnhctlsixaPjn+XOgAtpO
         WkjZIJjSaTdHOjrxi+ucj9A5L/iMKODfz17/lWe+jTB9hlHQmE6/IG3PcgwlmnhN7yFC
         pel6V6hyJLMZMwqoKEkQGEb+HsG/nEXaAcMCaN01CaQW6YV3+j1JOHDPywCYwRzvxgCs
         bjjA==
X-Forwarded-Encrypted: i=1; AJvYcCWakY+95SQwVXbFGlhi3z5e5acL2IGWE9CaAmO7TRtGO12RStcKG4+UX9+oznTCbV3Nt8N35geqpvBa@vger.kernel.org
X-Gm-Message-State: AOJu0YzdTJqq1XVH1P8QnOnGg9SobSsf5d4SIQt//dsTGSpbJiBJWtRz
	TLJmS6+6gYFe3PxszdHaD4EfRcWQkSbLj4wf9rG4uOYw9HZd2QfXcRIY3GQO4ThUeiy4I04+LUh
	UuHMcwLuYGFae8TYGkayvO5rig0Rsl0fNs2aQAkJDVsRrXXWsi352IwQqw1dQ
X-Gm-Gg: ASbGncvUXCU3LyD8vfG2NWKozh/TIg9uGrQhY0d9p0zn4ypxckZXMHJrvAYtmhsWYxM
	OA58jjiEwOWCdYGtvzSYhTt0siNwVjR+YxIOsOfP2aDn9/9KUC+s+5yb796tDZvC6SeJKRYJgya
	Y/R2xdg0acgcxeCmlmLO1O8g3CRqfsAfRG34Roe70mZHYcdJ+O09oL3G8rlDOYNr9TyG5Gtab5Q
	w5t3OdLNSYqMZGCA7yMQTzBm9EaBb4yLHBkt0pocNlFZquJ1Q+Zimi020gIu5Sp+EVO1vUV4ze/
	IYwVe/z8PV1P/7mj8sTKiWY7OcT6Q4IPeYs=
X-Received: by 2002:ac8:7d0e:0:b0:467:7472:7acd with SMTP id d75a77b69052e-46a4a8b7e3amr15981881cf.3.1734687332279;
        Fri, 20 Dec 2024 01:35:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGw19IDdykvlP7lz/VRK0vXRTUP0NYRGCinJslG+yp1jJUp8nxDB71kZfGUwkbxCXHvfdoZyg==
X-Received: by 2002:ac8:7d0e:0:b0:467:7472:7acd with SMTP id d75a77b69052e-46a4a8b7e3amr15981761cf.3.1734687331900;
        Fri, 20 Dec 2024 01:35:31 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06f942sm156285066b.200.2024.12.20.01.35.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 01:35:31 -0800 (PST)
Message-ID: <756178c6-20a4-4ec7-9a2f-6d756097cc84@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 10:35:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm6350: Fix uart1 interconnect path
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241220-sm6350-uart1-icc-v1-1-f4f10fd91adf@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220-sm6350-uart1-icc-v1-1-f4f10fd91adf@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -ZbyUUskBEVtSr1gRBJj-uxHLsEmbiJj
X-Proofpoint-ORIG-GUID: -ZbyUUskBEVtSr1gRBJj-uxHLsEmbiJj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 malwarescore=0 phishscore=0
 adultscore=0 mlxlogscore=848 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200079

On 20.12.2024 9:59 AM, Luca Weiss wrote:
> The path MASTER_QUP_0 to SLAVE_EBI_CH0 would be qup-memory path and not
> qup-config. Since the qup-memory path is not part of the qcom,geni-uart
> bindings, just replace that path with the correct path for qup-config.
> 
> Fixes: b179f35b887b ("arm64: dts: qcom: sm6350: add uart1 node")
> Cc: stable@vger.kernel.org
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

