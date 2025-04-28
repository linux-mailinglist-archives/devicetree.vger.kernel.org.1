Return-Path: <devicetree+bounces-171675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98139A9FC00
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:13:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38C225A4E03
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 21:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FFBC210F5D;
	Mon, 28 Apr 2025 21:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KpVk4me6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32B3201017
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745874530; cv=none; b=mHaPPVdVLBespWtYTmerOiC9PlM+ogOfByTjMKQ6ViXLi2W8X5+5ZmrwszP/TUkEp5jWjqEgOxf6rwnaL2d/s4NwtzluKIfpYkvBN7tzqUC8IJhdUpUN7MleiY+Q6YJkywT1mPusp+eElMODCmXkpNeq2OJBcgG8kY9QGzt/88Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745874530; c=relaxed/simple;
	bh=+Mncv3XAM9ZlakZKZDxGcDlDZcBAUXMdFsB21K/amtI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IpmGTzAF0U4dhxiX2vFjziK/+/2vb7b2niG3SHDBmIKYwfgVZ+cTWZ19O2HPAlRA7Z6q6elQpRKEjzKUBDxfKfj33m0dLGTNbfpnmsKyNeGZynfMO5i0/5jw1kADCoQZBronn0YmLfHr7YzpMXQa1k6TCBCwhW1ADrrBrXSem7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KpVk4me6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SADGbE002932
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:08:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YIIsicJwTNFSWBak9gbUD+9k9AX9vew+4qjNtRrWd3I=; b=KpVk4me6NdRtUiFS
	q0u9RAdDQ5YosLHk2ZkzWqdWGobtRyWfBIUmMCq+xUPqunGwJMyhnNrFZNaH7QJ2
	71VQsTzFoJakmbM8W/3yime/PQXD2WcVVZHLrgm7mK41FFayIZbgojVfD/Jqoh0q
	hkAhZ5SEpUYG+CvEf0zAq9oWIuzJjPAnxduVwSAXxsyLv76NriXEIE7+NxtmD5y3
	pJQUoRM2umaupipkCsZ4jJpbIkhtkmrhgU62sCATylOjbIg/kCiP/ZkhIuA+1gby
	+6YqzX5TvqM7yx3S0wJPszMIVo/nL88m78Sla7psGArtsjcvI+7BFA2fBXuIndQz
	UGbaoA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qv9jbxb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:08:46 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4768b27fef3so8591721cf.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 14:08:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745874526; x=1746479326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YIIsicJwTNFSWBak9gbUD+9k9AX9vew+4qjNtRrWd3I=;
        b=MTwh3ihYG5B7ljh2Npm7H7qchc3549jbv3WKoA+76s1We0NiICdPvUs4AjfMdx9zeW
         CSP7g26irWCylCCyD5Mqnv3oAXyjz0otiqe6QhA5e/bp7HlDvDjIkblEKog9PibOCng6
         S9PsSnufdEN1x2ugSJ79fcDCAIPIaTo9g3ju5Nx8PfwDeKSo2FLHWdVIAdjaCyjCOgtb
         futM9dfwq+6imnV5VPqRoy/oe2lkgGhbDk2FITpL9lbOU1ecZY+0Z+mJdhS5IAr1sJ11
         JOSwDyRd5d+vgHKHiTq9CmD2o3OCypgeHq0f75ZdhQmixb14FLitQFfCuBGxYsuBhSbz
         MIzw==
X-Forwarded-Encrypted: i=1; AJvYcCV/0rgRQbYBvs+G2T5jm2Xo1YUIw+CkHWPchrTJSC+C0xmAl4SrtTYrQmPp0dmt/j1dcfytOA2gl/4G@vger.kernel.org
X-Gm-Message-State: AOJu0YyrvtbHwl/ov8IeGARJjaNz87wfH7+3/hGj96wQrUHumqRCN/gG
	kkKFviFSq03yLIh9LR00DdRzfyDtJzES7seZDrqOG3B8icktRVvkVXy63qu9hAXl9YGOPDeNNgq
	HzG586mpOLFUldNISGUGQMYFPSOHivk9W2L00lKHm5M+oen/PJjV6p061aG2H
X-Gm-Gg: ASbGncu967Ifej6riEK5yNAlRcxSDgsQCnYT7CoDeh1cc4RH2mh7XFkh3QgpFkQZ/Ci
	/kwAUgEiVGkLKziZ8INqom4WH1ckVmpz2OTuv+2D5F1pRqoz2zJyrpsZFk1/wy7Y8XIPATY0ECp
	WLQapgQYdLiK7sYs/nWLL3DJJiT58oHoxNXYVVhZBmeTNinxUXnbJ/ASvC0pJvP9UjpNNaYnyEB
	5pf+7K7VPiB8DAInmu6dK/d8MzsbXh3KEJKgX8AZ9X6uvjqAe3zZN7fA2VoqqL1YeAW/RFY0JX2
	JvSnpukqApqOrBKH4bhmIwBNmz4+Ily5g3OHDs1YSRCyFwOaTsrRsuJnJy5mlolEZQ==
X-Received: by 2002:a05:622a:58d:b0:476:af54:503f with SMTP id d75a77b69052e-48864dbdcefmr3871401cf.2.1745874525642;
        Mon, 28 Apr 2025 14:08:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHJmQOmBncqndjrVeMWVQWQwsIs6y5yTdT4lkSfhS7I040Dt4ZL43tltFARnvyaMhT9jbc3A==
X-Received: by 2002:a05:622a:58d:b0:476:af54:503f with SMTP id d75a77b69052e-48864dbdcefmr3871311cf.2.1745874525320;
        Mon, 28 Apr 2025 14:08:45 -0700 (PDT)
Received: from [192.168.65.47] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e7ccbsm689895566b.59.2025.04.28.14.08.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 14:08:44 -0700 (PDT)
Message-ID: <bce21a40-566d-4e21-becd-9c899c12a1b7@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 23:08:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: x1e80100: add bus topology for
 PCIe domain 3
To: Johan Hovold <johan@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com, quic_qianyu@quicinc.com
References: <20250425092955.4099677-1-quic_wenbyao@quicinc.com>
 <20250425092955.4099677-3-quic_wenbyao@quicinc.com>
 <4bb58766-a080-4351-87f5-79a98219171c@oss.qualcomm.com>
 <aAt4TBrekUqyTjfi@hovoldconsulting.com>
 <306ce1fa-be83-4f13-bedd-97a20448d162@oss.qualcomm.com>
 <aA9jjyBR5DZcSbyQ@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aA9jjyBR5DZcSbyQ@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AO34vM+d c=1 sm=1 tr=0 ts=680fee5e cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=jsbeokMXWjskDHubqLoA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: XZ4zTOFwcM-FUc405j_NqPuoncRCEHGD
X-Proofpoint-ORIG-GUID: XZ4zTOFwcM-FUc405j_NqPuoncRCEHGD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDE3MCBTYWx0ZWRfX7CE2xwQkGnxv v1nuLMcr8H5z4Ddn4CeY4OULF42VtwIWJzsCOYv5atbRYyGCBJV6nng1CNCAnhwAwDofSLd4vHc V3jgV5qxsCl8AAeM+R2HbhrkwIO/X0atHSeMBTFSAdHZ6TavH27FRtsFyVd2bcOED89MuEuAQGW
 C557RCBQqKN2qtuAPc9sJgb8mkuKJ6IuXf6ndzY4Z4PGjhuxbBGbDv06+mGT2fqAsftx6njqLub zt8u3T+pgNl1uniFLPB/yi09c141D6HHDzLdT+g17zz+M1nwxTHtCte+CsOMsEoZle9V2xk+y5Y jsaHe/ecxS7H1zrx3LocOq9EfBnWQbBTaHC026bwSHj66Esa+8degluUh4PSkimOw0DSk5WVcKy
 A1jwpnDoSRQVrvO4lIYg9WaBIn0D2QTrCdSVfRAdOOuanV67JVSWgO+QEFBf08bi2qPZVPmN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_08,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280170

On 4/28/25 1:16 PM, Johan Hovold wrote:
> On Sat, Apr 26, 2025 at 12:44:57PM +0200, Konrad Dybcio wrote:
>> On 4/25/25 1:55 PM, Johan Hovold wrote:
>>> On Fri, Apr 25, 2025 at 12:22:56PM +0200, Konrad Dybcio wrote:
>>>> On 4/25/25 11:29 AM, Wenbin Yao wrote:
>>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>>
>>>>> Add pcie3port node to represent the PCIe bridge of PCIe3 so that PCI slot
>>>>> voltage rails can be described under this node in the board's dts.
>>>>>
>>>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>>>>> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 11 +++++++++++
>>>>>  1 file changed, 11 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>> index 46b79fce9..430f9d567 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>> @@ -3287,6 +3287,17 @@ opp-128000000 {
>>>>>  					opp-peak-kBps = <15753000 1>;
>>>>>  				};
>>>>>  			};
>>>>> +
>>>>> +			pcie3port: pcie@0 {
>>>>
>>>> @0,0 for PCIe adressing (bus,device)
>>>
>>> No, the bus number is not included in the unit address, so just the
>>> device number (0) is correct here (when the function is 0) IIUC.
>>
>> Some DTs definitely have that, but I couldn't find any documentation to
>> back the syntax up or explain it properly
> 
> It's part of the spec:
> 
> 	http://www.devicetree.org/open-firmware/bindings/pci/pci2_1.pdf
> 
> The first number is the device number and the second is the function
> which can be left out if zero.

OK thank you for clarifying

Konrad

