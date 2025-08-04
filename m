Return-Path: <devicetree+bounces-201544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B3DB19B12
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 07:28:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D67493A6685
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 05:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D3122A4E1;
	Mon,  4 Aug 2025 05:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CdcymQFK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87E32264B9
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 05:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754285277; cv=none; b=i0KMKJjPKI0GcvlrN2YO1yQCOwvsDxlT9ROQ7N3lw4jESpJ5VP4zptIDO3ECrIrRUfcPx7kS9GhrvS3xsbVBjCc/NWAWwlblwM9ihPt8zr5XNeWMhdTbMPZF8fQIwI99Ua6Esu29MnjwpnbtXI09hiD6pB9nZPazNlP+ofdDh3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754285277; c=relaxed/simple;
	bh=d3vV/G7V0bmKXNL2Y3FLl7Y8dp8ScwXojkhO7m2tRd4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FoOZ5UCJZmnXRbmEsGpbtHOEgW0+isg8cTB+uDXpQp1AB6hzKEuEbFAg5+Vt9eZpGquorEoAGCmcWjJYzqwZ0URaXPSo1FkNKjpAVGUkl7TN0NZ/VxbMGjYPBMdZ1Tem63+3b5K1/EA0eXDIVApPacmJ2d65+oU6Mt/uSvWyWb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CdcymQFK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573NmRwl026599
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 05:27:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W9s+eOLRBJok7GgVWtOTJbi4U5/Xi5KKOqJ5sUFGyI8=; b=CdcymQFKdty4h4yQ
	AQZDqhRoUpyFGqgT1H0hGk1Xp2hS599VBIIMQzFKYPQkYCF7ctPiO8CcA2QJP+YC
	dJygHwdRW1+0s28cTIXGDgUTXL+e2G3rwSqN8BhIphHj3R50dFnvELaWmMAFIl7k
	W0YeZ7TtM7+wScvN2kv6KlyTXuq2MLnktMPUx23mWDVlWquDmKJiDGrMVNJ4VVcn
	gbqe+gIV/jzYp+ZNru2Lt8toHZJ/3OcNwE86T4PJIhphcbIx7X0pzwJ9F83On8N0
	Rn2RaA8uDwmcsJjx9P1FzuHo7OrgqfZ06dGEXgIKy/khWPPIBMln/k0rKFYzYLkO
	WWdLxw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48981rkw09-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 05:27:53 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-75ab147e0a3so5960211b3a.3
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 22:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754285272; x=1754890072;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W9s+eOLRBJok7GgVWtOTJbi4U5/Xi5KKOqJ5sUFGyI8=;
        b=BJcxBEDJ2ravIjCwUQSuC47v9fM92OOkYVwbCKvpZptocFUhS4QMaqZFGU6UkklWC3
         R9z2/SnDx0trzEDn90aNADtobrIxXpgeBsjUcIiE80EBWShgLr2CWzW8JoXX4KENB8YC
         6WfGr+M7Og8xh4tw7FYkwmNt+Nudzz8xx0k2+VI7o0xRO1SnG9UfRNBZP0XdANymX872
         o9Fo7VzhrT/lB2TkXiF1uy8k8CUbLODUhFe8fHXhbQencJIeEWh1yOi0GnthKJwdrjOT
         thGfKumck/6e04KwdjNM74ytwBRXcW642Q05A87caO3y3ReS+1BKoUoLKYZwjDOzdd0f
         Fviw==
X-Forwarded-Encrypted: i=1; AJvYcCUMF9iSsNbUi0rZyPDVWF2lkbg2GkzR5x/CV0na+eV8FuN8HRPHCKUcCn+IRl9Lv0mT89OrVHIb6gZV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz3e9e69HuSZiGOtEmfo4C3Sif03qRTnPTB0o9urxRln9X5jsl
	wbbLf9uK9YL8No4JYPj/lng7hzI1qpxxD3xirH0vxyNiQNvmaNDmSnPRBML1kPFAdTXzTDqDk7M
	R1naTRKiAcbl+Rev9RcMG0TJp1t1poZDimdmblGUCadS/tbltJaxr7f7KVqz8vndn
X-Gm-Gg: ASbGncvPUFE1VeNk4808filbVmgUTYG8IZ417qtwke2MitUEZWbYFXTHWhJwH/uVf6p
	88q+YOBlnfSVrJZDV2IcTLzn363N5Ls/ZzO+GgGNtR040+j3idl8ovKFqIbuqB3bfP60e1/50/i
	SCv6Yr9R/Cv1nfaY6C3wvSwCwF271OHcsgGTnmk/A/L5KKLi7MW2TLyNgpeJTvQ8DvxuNA1VYne
	1+SYkGd6qiYLdGlKb2HkGbvcLQTThptvQvLtf4/+bTwmasi8NyrrOh7Oh08TpyX5k90pNRAXpHc
	wsQXw4NRtBZbFs8bHoTQdq0AIufkOlvlrPXjxuir2LASWWokZTfXlD/Rh3pO1Jx/7+eYEuWC12h
	y+2+L
X-Received: by 2002:a05:6a00:230b:b0:76b:fd9d:8524 with SMTP id d2e1a72fcca58-76bfd9d884fmr5176287b3a.2.1754285272502;
        Sun, 03 Aug 2025 22:27:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOqPaYvNvCPBWN9SHhU6yFEpBm5CLiD/SABKYbt05bxK4+KJDWsmPyz6/DFC4jUVaiYKvL/w==
X-Received: by 2002:a05:6a00:230b:b0:76b:fd9d:8524 with SMTP id d2e1a72fcca58-76bfd9d884fmr5176275b3a.2.1754285272044;
        Sun, 03 Aug 2025 22:27:52 -0700 (PDT)
Received: from [10.218.15.248] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce6f6bfsm9523318b3a.23.2025.08.03.22.27.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Aug 2025 22:27:51 -0700 (PDT)
Message-ID: <04687e3a-5761-4d1c-bece-fcc2241f0c28@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 10:57:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs615: Add OSM l3 interconnect
 provider node and CPU OPP tables to scale DDR/L3
To: Imran Shaik <quic_imrashai@quicinc.com>,
        Georgi Djakov
 <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar
 <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250804050542.100806-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250804050542.100806-3-raviteja.laggyshetty@oss.qualcomm.com>
 <a9d9f421-1bde-4609-81db-b139952bfd3d@quicinc.com>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <a9d9f421-1bde-4609-81db-b139952bfd3d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gKYPshkN-A8SKPlMVzf7N1HUHiryWb_o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDAyNSBTYWx0ZWRfX0gjmG/X0Ro6P
 JURzZDik0Oe7eeAIFNNoR1VViYxica5FqiyxXpPmyiVM/GzTFFQunKIqWoTNOJ3JTojqmLUEmNj
 tCrq1fny3W6X4MWJyR8FI38ZppcEfUZZ1rPeZCrVBYudVJtPBA9gqycKbqLqnVKZNHKfDgpA0BZ
 ODpgkw+lQKF56j1Vdy4r55QYNS00elI7pbyuhSzNT/MCJ309vLgrqCLs+JCCZeEcYyLBVwOvxXU
 Rr8pMfMymGmhA9VR+of+ZrmL2jYQimNsHSp8Sm7PUaUi+P5RIeABj/kFZliegokVzOYXuSrLKcj
 A3lRxXwdsekwFTmrRHjFPJONSaUy5D2ZJNxZBb0Tbw2yp0LQAs6oYgA8cV4cYUPyiHUPFvV6oV2
 O4XeWn/qRPBDAzI0nEXj7Tr5/Q9HDJqSN6K4L3vMgLK7ln//NBBQ+FZSB7GZpFR+vfcqV5Ns
X-Proofpoint-GUID: gKYPshkN-A8SKPlMVzf7N1HUHiryWb_o
X-Authority-Analysis: v=2.4 cv=a8Mw9VSF c=1 sm=1 tr=0 ts=689044d9 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=3QpX9JWOmuBQJw_HQg4A:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_02,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 mlxlogscore=801 mlxscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040025



On 8/4/2025 10:56 AM, Imran Shaik wrote:
> 
> 
> On 8/4/2025 10:35 AM, Raviteja Laggyshetty wrote:
>> Add Operation State Manager (OSM) L3 interconnect provide node and OPP
>> tables required to scale DDR and L3 per freq-domain on QCS615 SoC.
>> As QCS615 and SM8150 SoCs have same OSM hardware, added SM8150
>> compatible as fallback for QCS615 OSM device node.
>>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 148 +++++++++++++++++++++++++++
>>  1 file changed, 148 insertions(+)
>>
> 
> This patch is functionally depends on cpufreq-w node change [1].
> 
> [1] https://lore.kernel.org/all/20250702-qcs615-mm-cpu-dt-v4-v5-3-df24896cbb26@quicinc.com/
> 
> Raviteja, As discussed, please mark the dependency on this change.

Sure, I will add dependency and post V2. 

Thanks,
Raviteja

> 
> Thanks,
> Imran
T


