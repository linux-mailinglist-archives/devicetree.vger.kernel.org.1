Return-Path: <devicetree+bounces-229853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E80BFCBF7
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:04:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D6A419A2520
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D7434CFA3;
	Wed, 22 Oct 2025 15:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lBnRqMYI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D69134C138
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761145315; cv=none; b=i7ZsbTeCmOeGhpTQ9Y+OYhSwBcwYXHrtOktIYW6a3vOSsmyD2tCLgkLTvohBVDtc1YcNy7sacQ2iDNThG/Cpr/3f1Nri4w0zNC/KTAVxMTx6r23OTEfszR8/ewc+TkvH+cy4fIcs4izs4d3hekAr9gk6eUdhmjq0n4JwAiiRAT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761145315; c=relaxed/simple;
	bh=wBgS1XQbHKjwCZWH331tMpBjONLIz9oIPI0AY2nrSCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N0Pq3N4S3klJiegOMJphYNerfgFjfx3sRpC+1X8/j+QYxTf2e7kdTYGt3VSRB8oAhfHfhQgDvUnUo5ssacquu6BFRDDlo3XTdNMlwZ93kmAm/NTZtUUHi7o8gFu+F1dGScgDS+akASCcP2QmN7pPSimXV61ORD/pSPH0q34mLpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lBnRqMYI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MBorhp025592
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:01:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hMIllqxAxPDQ728CwihRb+R8lpaZm1CZIGmWcY9cBDc=; b=lBnRqMYI2x4D59hv
	/oK3jFg1Yf8tBQxIJZALIjvUWvQ0RQiQAd83EHATeCV1CU3BGhIehXeyyFci7sip
	+sUlxiB/+l1rPikTXswpa1qe9i7w1SpIOHNclXa5Kr4NebCJldQlfETqotG+oUo8
	eiY4bt6fEIdFbaFv4RdagdUjr43M//PD9tDC1BagJz0pPHZyViRPe6Tm7AyQ5BdZ
	IoHcaFz42fUIDpQS3o+aXwT+kD03kQKyRXvbynvCWJMLf6kJ0EEGpKTcSQQnSG34
	AXnoDoi1zsnb/VdwPcpRW22B9Xx5EB0v7okxoVISDtlB18/H0ClRNeAcxDUmwY54
	6xwKAg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8537p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:01:52 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5523156ee62so58411e0c.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:01:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761145312; x=1761750112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hMIllqxAxPDQ728CwihRb+R8lpaZm1CZIGmWcY9cBDc=;
        b=ZfytB1rzPeLNwbpTS54te7c50klUOhdyfncl8K1DzIhftFUSqA2DApDgWW0cCWlzWB
         dsoUag/R8J6H1qfk9fVNpz1U1D4O9YLkmkGQ7omeFl2nYeHVs+UoLczjfm03tEFDWEa3
         Ur77+JZZ3GJD9nxR3PL6TIPBDDkPJrUdWPTqabyp2fag6c+C1OHOO9jlh2M+7+NWrBE7
         VNECRD0Zk09v28d1A5ebrvTWbd/lQcm08xxAFgo4YXWYFi+SxuyuJI0UTw4QRYGvVLk7
         Nv1BVhBLznDEKbWTEbySPW1bmjm46feSvgzEDoaz7A/nPmeikflRnFpYcQ5K83d8yePa
         hsAw==
X-Forwarded-Encrypted: i=1; AJvYcCVLJ2ThXk/BmKqoI9M6vzxc2+wtFF0vX26MocKJa5HBZXIjIKJOIorwImKBvCBRL+RKBDutGVyl13Vp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy24VxGEpzUwx5joUDBcr0054muTDEdVWXGWsthnB1cmDVGx7eh
	/L26jeCsvuaSGHoRZPOzPQNMU/mJSZZjxGoNg6VY7000lugpWU0z2BnkQhXYk+r4N9o/Zo9oFjd
	Qo7Eul35QDOlUD6kDFfnEZkWGo1oYOB23DR0SLFN6eTuNPI1LQWrWCTOFQN9tSwaH
X-Gm-Gg: ASbGncuArpkN3XCzTE2UBtB8ivV3cp6MBqkK81uUntF6w0FYOeHdUaz+mVvpGxUc7qJ
	Bt2bGj8pNnEfJI/qT0cX/5G2SctYi7Gxw4/qVeM4Iwy9VbWxP6AQvfyrkHysql+6YjZoyCXgk7Z
	6DoNOBToHpeutMwQXb+F0clMyJpQWpCfWRUoYCVWwUlQmQb3zIc6p3R83amH+nlM9Q2Shmi3aAV
	AUe7GY1cyvIlCCNzRLxclXPPJrPytZaxADREWniwBm27GvMv6iI/Sgw0bjbDBg5SrOzOBHgCiOo
	G2z4wEQIusrdXTrFIqu93eSCO7h9TnVizsytxVOd+HURTQjkiiFgVhr6ERxp0AMa/SfXsjaeMeC
	pZ/OJAipsgEXPkSfVuU437iKS8Lag1Y3ao13uZ7aot2SkAxzBoVYj21Om
X-Received: by 2002:a05:6122:8891:b0:557:594c:54bb with SMTP id 71dfb90a1353d-557594c61b3mr67749e0c.3.1761145311494;
        Wed, 22 Oct 2025 08:01:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfgRrt5iXa7DFomRJIQGJ8VDhlVThbjhKqjcQAvv0iCP92sfGzYuCXXxlj2xPk/Du2wJYrKg==
X-Received: by 2002:a05:6122:8891:b0:557:594c:54bb with SMTP id 71dfb90a1353d-557594c61b3mr67646e0c.3.1761145309915;
        Wed, 22 Oct 2025 08:01:49 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb725f3fsm1354965566b.68.2025.10.22.08.01.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 08:01:48 -0700 (PDT)
Message-ID: <295c775e-852c-436b-84eb-1084e549598b@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 17:01:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/9] arm64: dts: qcom: ipq5424: Add QPIC SPI NAND
 controller support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20251014110534.480518-1-quic_mdalam@quicinc.com>
 <20251014110534.480518-5-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014110534.480518-5-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX13FJreU1h/fz
 4/LV128gC8PbiADGEyFgddmA2N6T0s9MCdgqTiRNzvZquzx6nKq6cGpHyo3qWn3slkMaE90zfBb
 sWfoXXKeAGEFR82I3cB5ENiGXSQqJOCDGTeAG3BX5MNNO5FWIW5koHX96tszh0S0IBtZz5lL3hw
 I2mqIRoUc2lcLwC+Kp/w1V4QiOD+Gn2w2tWye0tqaPiCfk5T9mb4o3m97dNQsQad3rhdGw088K9
 YL/b5iuhHMD/3DG7sJOZhoeF3zr3QiqgDG6P6hGFIX7AcwnbMVrRlZomj7svTNDp62SOzEXneXl
 Au6t2K4vBnNoUp1Gq+9PhgFKEVUbEKDQILNu+rVfqcNNZxWkJe4PhOECOUYiwmSm5EdebWtDJZ1
 /eUSu/4v+KFv90590qtjLx442svqvA==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f8f1e1 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=eg2IErnvy-Z71prtMQkA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=XD7yVLdPMpWraOa8Un9W:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: FIxTv0tISxsxXP3bOEEdNJGUTjvE3BIC
X-Proofpoint-ORIG-GUID: FIxTv0tISxsxXP3bOEEdNJGUTjvE3BIC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On 10/14/25 1:05 PM, Md Sadre Alam wrote:
> Add device tree nodes for QPIC SPI NAND flash controller support
> on IPQ5424 SoC.
> 
> The IPQ5424 SoC includes a QPIC controller that supports SPI NAND flash
> devices with hardware ECC capabilities and DMA support through BAM
> (Bus Access Manager).
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

