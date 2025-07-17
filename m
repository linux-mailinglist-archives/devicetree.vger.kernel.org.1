Return-Path: <devicetree+bounces-197298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E82A6B08C47
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 13:59:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47469189432A
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 11:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A35F129B204;
	Thu, 17 Jul 2025 11:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jIP3C2QI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D3129AB02
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752753571; cv=none; b=aiSjO5MSvG267sP2lYK08mRs5T36ungTGR0BWFTGi5SOEUurdgO607BfumgwSUTM2SmoOFWM+LxIqWa+Ihd0FU8oeRmBLxeNDDmEMguJkWq+IDTa3JPxEP6Gi2uaAAycPYx47q+DKuOxEObBYycirBHYumVTBK+1JxcIONB7+b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752753571; c=relaxed/simple;
	bh=VlfFX7mQA7obeq2af9paLgAuGzTyy1CUXFA7pbF06DQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aLH1z3be9wNQyt1NKDLxqeprYKN/PeiZWNSTlHaJECmzVKqf6y8X8Bgl5JgSDJ43M5Wy7i7c2tecXATvHSHvU1gEm4JUJyrowrLqdeIEweQHwNfzjBryqHxADcxEab3hCctGLGpMc5WU+YF1FzLGCQpbr/2z4ljGMMU8VbwxUlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jIP3C2QI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBhVjk004464
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:59:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RC8QbYC4Tyk41SorqPKs/ueg5eS7morHmOcMxL4tVz8=; b=jIP3C2QIXyVLjSaR
	yX55JQ1SrF93rBkCLuiB1OXShnGwp91XaeU8spdoPkx7fYmiYJgQ4a86rNngqmM5
	K4gzrdpDW7OrciMD8mbHg3BA9XYChHWJTby97VFNc2w1tI6O93vvoe/Brdi2d62b
	5P3FF9jcPmcWaxkQWLi03mEMIfnEwW35GjaOb+0+B0LBG6yzWGG6YMUuzhV4pH/W
	FmUqx5xTUlHiRsOQka1avg2rXWS3LaQhE5+Jtmb7f9s4yCt4mTyxcwVv4eEH570V
	TghBNl7rLBX06H0OyuPPGtCH+voKX7VHG51w5cpwM3U2b21LDIbJ64a6ntwAINY8
	ooDBbw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47xsuksahe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:59:29 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fabbaa1937so3018926d6.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 04:59:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752753568; x=1753358368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RC8QbYC4Tyk41SorqPKs/ueg5eS7morHmOcMxL4tVz8=;
        b=VLKUeT+qi5f+cl0vqnAEFY+cA39ESDPAflYdVdfrSsAwML2Q6MimVC5pQ1jA5r58R7
         WJycL+Bp8TJFYsvN0Ektx3QIbAeBAhhU+Z6QFoXfKnWlHjQemhY37zOmwB8ASurKvDrG
         BGBDNtzqTYA9kisizEPKUWOdDl93H+QtQrS23OG9mXGZsoH6PwG10WRcVavo5P8Uxiic
         5AZTj8po7SxI84YujvyUm6zsWsFnpmzGtP0BcI11rY2PyfDPKX7Jm553FlEjsj6BVMDe
         KUgYWrZz/OuYV42yQFmxbwxVawmQ6H8v+M3InspWsFl0WMnixMwflbsilstg7ibtx9P2
         Bm+w==
X-Forwarded-Encrypted: i=1; AJvYcCWmGG3FlcwiOItqq5dpCQ8sEsjkfyX63Do4+I6ZjTqvJJZLbky3bUvLNRnXbz+uZtWBrXihJF6r8CNj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3lwjqOgis/lQ34/s9NEqRnIz2JFS1/AlZMjkepx23saJijVzK
	sH/nhTpObiWRz322nDtvi00HYyWdPp8sRYGlj3hSTUxjVhnqzD7fQxKnHxfOm0svWlFW8/EZ3Sv
	wRoyu1WR0o53ximaWAUW2L6lCmX9p7+HWJYpcyrpvMuh5yM+MDjRRnAS7cQRGLpK8
X-Gm-Gg: ASbGncsobN7V4Qqrv59F4NVPxVKvHB1n86gLYjRVzIAHLILHqaXWpuO4rizvn3HWVKt
	WuV7Diyvom3fkM4o/F4IIzbcH16LGJelZQEvVVWqx4WvRfdrjGGt4DUkl1ztOqtqAbUTlJAVo9a
	oI43j6TgfoM2yLbAUkG7TMMbqzyIm0vd4nZpqRkDaeu/cyKH0fLIFdVopucue/FFpA6elFhQLI2
	2aDAYD8DrR3M6OOIdV6hVSndgrJmOJ5sH/AG9tsdqZsr9rqgjVw70sCNYr8A/LchlVZKpati0cP
	50fKXBNQvFiq0oNhq0+xyCkM9MqGhDdjH25wUnCOvviCFJNtnWCIG4wBA7crbm6OTiZwhcodtvE
	PWV0y5RD5kaSbmE3GVoKc
X-Received: by 2002:a05:6214:318c:b0:702:d3c5:2bf1 with SMTP id 6a1803df08f44-704f48364afmr47557356d6.3.1752753567855;
        Thu, 17 Jul 2025 04:59:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGx+fJon1hM47o3ro2qoIpBT/ZwbZ2MVf5+gvcrkJWunY7L635zgL0jQnJFiBoidFlr1XdTcQ==
X-Received: by 2002:a05:6214:318c:b0:702:d3c5:2bf1 with SMTP id 6a1803df08f44-704f48364afmr47557166d6.3.1752753567447;
        Thu, 17 Jul 2025 04:59:27 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8265d88sm1362294166b.94.2025.07.17.04.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 04:59:26 -0700 (PDT)
Message-ID: <5f382858-1a43-424e-a774-00511f2e1cac@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 13:59:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Add missing clkreq
 pinctrl property
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250717-clkreq-v1-1-5a82c7e8e891@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250717-clkreq-v1-1-5a82c7e8e891@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: VLrxCKi-p5BE55lSCu0bev5DtcuR4Ff9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDEwNSBTYWx0ZWRfXziYUNteHo6+E
 JSauQAoDXkOpLdI9Co37TY7ybHKBoQJs9tHC1yxcl7LzoQ89XL8lXPjpRVKnuYe6X635vYWVo2X
 CC7U9emeiO4udp52X11JhaEAffmBwRUn5ov6KQT/W+HZslbEtr7WKy8Z4kUtfxM6MJ2CbmycFke
 rTOyUwZWEBQTlvcoNHG6bzIAlqrpFdsPakOaogUWswMx7ibq1jGQrp3asNq9P/Mj3UR6f/K0pKj
 rNquvbPyO80us9gX1KQE1YkXR3j/2d3UjztSbhBcKQXMsTchEWZAb+APyLzfvD5xgwTedeQqjri
 TMMwRMj5Xj49Si7ClVTbWnuOghMwWQ36VIHLf2DFzYOBMyrjK9RPrHXQlz+w3vDQ9vDjSKA9BAn
 CgMsJDoGHOAQTfooKa48ANDxL9uv8QDTQr6uhTxm1ww2LcRb6/hAXKI8D/EcBSNwPeuuV3AK
X-Proofpoint-GUID: VLrxCKi-p5BE55lSCu0bev5DtcuR4Ff9
X-Authority-Analysis: v=2.4 cv=JJk7s9Kb c=1 sm=1 tr=0 ts=6878e5a1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=6pHcnep46kEejBPVP2gA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxlogscore=654 adultscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170105

On 7/17/25 12:40 PM, Krishna Chaitanya Chundru wrote:
> Add the missing clkreq pinctrl entry to the PCIe1 node. This ensures proper
> configuration of the CLKREQ# signal, which is needed for proper functioning
> of PCIe ASPM.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

