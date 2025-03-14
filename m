Return-Path: <devicetree+bounces-157717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8469A61FB8
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 23:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 119CA4615AA
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E6D205508;
	Fri, 14 Mar 2025 22:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AzKToMXi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C763D1C84C6
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741989637; cv=none; b=JrG0HC5I6efXsSoafBz6iyojXWaXXteSRXtZsX6vdfvd/AvrPUDv3wMI52D0WElcjSLCbhbyfMRWa3VRcFrNmS9rFijmoBOQQ8mhyEFs2p6OISZnMrcXFgBZbhA4pokWdPuV7qTtjgQ+rsRykGh+2UuyqomvJW7GJ8qmTtoXnBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741989637; c=relaxed/simple;
	bh=F02AKkUaTlzJK4g0YtQD8ijiADWt6Tzos2Yh5nMglHw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OJW75LcQIer5KGRa5mil04eh6jYfM/veMR4d8iLWAzo4MFHtwhTubJQFyAc59iBYJi3qRYqBgatN2T6wv0gl3IKncceZfWCJgsdk5k3eZegQ+y2DnGi7kiA4MpI/wgGLCxMZWhtLHZoC+XYRLBLnetz6F5KBTlWKtwx1ShLveSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AzKToMXi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52EBZDEh008907
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:00:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+S1x35o0+RphZNHTGFMos0lvmrnsghifnHcTnuDmnCc=; b=AzKToMXiceXu5WH8
	rnbpcAvdNZBQeGxEquwC5vVnpv3mYBzEaCHcBsXBEjXFubWxUWFkGzEvHvzEaEQc
	ItoAGKPfaelzkXerZsNQY2yIT3Skp776q8pG6th6QIhPou0ZG+gOoggMkO8wio69
	z3NLYO/xw8cYKfjZuZUVu0/WUj0w5G9wAihEtHVeIC6WNvkdow4Syw/siVRoaHpx
	eyiMekciYS0Wef/zPhEzxH9o2VH4DLQUlsYS7h6/oMqAc4Dw1Ch8jLgZBfo4wkl3
	xMrkcGYRk8Dp566g8SLStvZxb+zXPfLatFMpjMzrWp1JTtWb8d2Sujx899A9IAYM
	fCJy7A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2rjngj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:00:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e906c7cd2bso6514506d6.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 15:00:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741989634; x=1742594434;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+S1x35o0+RphZNHTGFMos0lvmrnsghifnHcTnuDmnCc=;
        b=v3J0Yked3Hjl6Bnmsxly5nLWv2kB7LDJphwonMubVrE3/E/Q75HSIF1lJ7GSj/EUy6
         JkMSUBrjEzh8b/rZYiAaCwhvkJc1eMTrOlqbEbJbsrLZiZmRQF+A99IjtTFzjG5z5r4j
         kOmV68xiuzZv4m0wGxSmaJP86jlZ6dxOeDBQD9vJT8N+V++LZ8bknCNJO7vr4q1ASJYy
         uMIpgoTSK25+W5CjNUwCiauLU8d8VPCbw1knvOHChzJdSQoqamIUpmznCKeu5cMCq+2Z
         RKI9Wn2hr66eDCm62V0pJAe7cW44TC84OW8WcFlYN6H2KAuXheBF3A1VrX9SYGqfY5Ui
         Lgjg==
X-Forwarded-Encrypted: i=1; AJvYcCUsoogDCHgoR1hv3jxzrBsNaSN/edpgji22SR+iGbpbXBdOvK2110RpgOl6zaqBMD3XW30TCsjTow3L@vger.kernel.org
X-Gm-Message-State: AOJu0YxlfOQYRUMhUKqCTgdanjEnpLVBxpoGCG+zKGU6vD+Hi+baERhM
	lDiPPv4DlOQrMVZ7QW3ahHNEn+IqE6rWcqytcCe8oCVVeqTb2HBQujIe0QRV4rb+23fTqeYSTW/
	fhBWBcCHBeRaTcjZLimA7MuMI2pEbAEhXDE+tt9JKcfMm6Dbgl2F1DodRZ4QR
X-Gm-Gg: ASbGncvQf/XkTSOFAYLOxR8g4WlNSTl4L1V7t4lzRy93NaTh3AgmG8gI5pGZGgXe0F+
	nZ/6SpqHZa5EcAU2y+0bfDfkpvTMD0NBgis1ABUGO3r8lw1blCI74Flu7lx9+4ik64s3RG4My4W
	eCMHlH18IMnscbOM5bV6NtiSde91b4kmHOA9PcOZ94h70b7T94/mkJ7z6qUYc0UjTCnJzQr6G/1
	gvBSqzDBy1nslM33iIfjAO6NYvBI4zQ4kwb1ycDi0szDYiih8USrPs8Y/8BCc4KI5a+2NaOx255
	yRE9JSeKQxVR05FH1r6iZU6DyRMUkW5aytVSL+gKtV0YZLMujJaDiXzJp8mm1p6MBvpVJA==
X-Received: by 2002:a05:620a:1914:b0:7c3:c406:ec10 with SMTP id af79cd13be357-7c57c92fb9fmr229581985a.14.1741989633705;
        Fri, 14 Mar 2025 15:00:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHihXQb37dkTZP33cmAIecNe94bbPFEDLSIhRXMbiQi1aPGV4bULdUCeeXm3pISvZTk9kv1Kg==
X-Received: by 2002:a05:620a:1914:b0:7c3:c406:ec10 with SMTP id af79cd13be357-7c57c92fb9fmr229579085a.14.1741989633255;
        Fri, 14 Mar 2025 15:00:33 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3146aec15sm277125666b.34.2025.03.14.15.00.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 15:00:32 -0700 (PDT)
Message-ID: <c5ead68a-f108-4e73-aea0-d6cb562092ac@oss.qualcomm.com>
Date: Fri, 14 Mar 2025 23:00:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: add the pcie smmu node
To: Dmitry Baryshkov <lumag@kernel.org>,
        Pratyush Brahma <quic_pbrahma@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250206-qcs8300-pcie-smmu-v1-1-8eee0e3585bc@quicinc.com>
 <aau6kgdbsq5mu5h4kqggzgua26o7dwc6hbkpmtgcnqx5dqhlgd@qcm2xzr64fyg>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aau6kgdbsq5mu5h4kqggzgua26o7dwc6hbkpmtgcnqx5dqhlgd@qcm2xzr64fyg>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=D6NHKuRj c=1 sm=1 tr=0 ts=67d4a702 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=vlatggBPyhKtcxP6hQoA:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: H-IkxxgN6HK46vjO7Ujat6VK5jakIF3Q
X-Proofpoint-ORIG-GUID: H-IkxxgN6HK46vjO7Ujat6VK5jakIF3Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_09,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 adultscore=0 malwarescore=0 mlxlogscore=698 clxscore=1015 impostorscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140170

On 3/12/25 7:53 AM, Dmitry Baryshkov wrote:
> On Thu, Feb 06, 2025 at 07:13:17PM +0530, Pratyush Brahma wrote:
>> Add the PCIe SMMU node to enable address translations
>> for pcie.
>>
>> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 75 +++++++++++++++++++++++++++++++++++
>>  1 file changed, 75 insertions(+)
>>
> 
> Reviewed-by: Dmitry Baryshkov <lumag@kernel.org>

Please hold off merging this patch, there's some internal investigation
required

Konrad

