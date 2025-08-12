Return-Path: <devicetree+bounces-203701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E5AB22487
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 12:25:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D50F04E1E1E
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A2A2EBB8F;
	Tue, 12 Aug 2025 10:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CEzzw8J5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC7C287253
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754994339; cv=none; b=kJJo97U3Qb43xl99qK7TgyCfsxHV206vnf06zWcnQ7e64NsjkNtR8icHiLS8LzzO6X9JNaANYqkhkl1TO5befiWSHOqswfG68ElLa7Hf1bM4Yga5SryoiRyrIcsPY31Lt2YUvXrosoeP1XCT2CwjMvFOVRPYgcmHVf7iEGwcs9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754994339; c=relaxed/simple;
	bh=kPPuaswxwsoGjiS70z4R/GpzZWbmk4tdm1gnkzx6Rx4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e0MtjyCU7eRWwJ8lUCbx373CkyRtSOz7ri9wPkQ0uPVNv8CRT8ewHVgK52ihxmFlCBAkFMCzw3ao+8oxY38aV3v7d3k9O4iIvaErnNd7wHKj7zvnK08kGw40bceY4ItQytGgJd/hG4kvvv0h9MfOagNDB/SviFsL+xhJEJ+UjlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CEzzw8J5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5Wgbb018313
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:25:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fl1ygk+1H/NMb3Ro5wivLL15aqHhmZrUJSFbMCh9wRA=; b=CEzzw8J5Btb/DoJM
	414rDABSw/6tYWkIacZ8TQu16IuxooWv1bte9EU4PR8aOemnj6zQYetuMZ5cCaDL
	k/hP1Epet7XDBJcTJE2Me2Q39GRSm7mgiVC5P0zcLJphI8oVshQ2jfW1S4yfOLuO
	FCTozQfT/vdDPBN1hfQR7gwaT+nWZx9k4Zzs5MMZDgdu9dgzz/E1iIb4C5SPO0rA
	riYCber+KvcVqR77U4sL60aTrz/45t9ECIfQYLw7GfErh2Bc/Y3U+aWr9ysCEgtG
	mwpIACE96JFgjqa0mslvRjWZ76aVHHiQng/WpFHfBEGVGNY5A/42Wy7e0m+QZMMd
	08Qgmw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3g7pym-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:25:37 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2400499ab2fso47964205ad.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:25:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754994336; x=1755599136;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fl1ygk+1H/NMb3Ro5wivLL15aqHhmZrUJSFbMCh9wRA=;
        b=rW0pLdnCVvONAlyVpK8MJ8eM65NXllsPqwI4cXmKEiu1Ig46h2v6dQeuc2/+TSbioW
         5l8Po7oC//aocY9h4JQu2dngQ+jGB6yKl1hxXak3Yyq3//bb+4uEq3IumpmrjVm3SKm8
         rbxrCuWbC9wys5hjQ15PUl5YbaBImgUimUoTfa1IHE1uxmNUoE/pTPYKmO/k0USvgMM6
         Rm/vJe9R45PRz3Ni4dGNXWrxZF8JgBZt8C0G2dNLfixvhKaaQmdBR8x84YMfCYK6fpxm
         DE2/Cz7z+ytLUXmP0dmpQfGmc8dZTdIp/J6By7XlIxRO3sSnH5s80Lwk2hTGi/ZyWBEC
         ZX4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXreKpFoDqVl5YIFnmeme2x2Gd48wFyHBXC5l4jhz+b38XCOAceZwsJzkuz5jIWDBhVsPfxlzh2/8ON@vger.kernel.org
X-Gm-Message-State: AOJu0YynnE0HRY03NcG/DP7QRmfzi6NEgCOT2WN1yHc9Nu29eIlG4bdf
	cvthY+HgiExiWqmfzRBUrb1ZRd1XBj1xmTUzqHSbH1bjUCRw05bjv3UTOlyncTZNLqUoBOr0zdE
	ZsIrKLQ0Ku0YYj8wXau2TJiakhg6CNO6Y0Ze/R8meq6aMZ1TlZyj83o2tewU+FwmA
X-Gm-Gg: ASbGncvEsWMIYAwh9K9cDJGZVee2WtxewaoczfOxeF3oynm3NG2AC4T8WgQ/QtNMSWE
	qwBFbcaaHRo1CzCaOxnK4EKpt5/ebsKOJmv+WX9NL+r0dKov6b0wwUPdoFhWyYcTqNpS/SH8aYu
	NiOsYD2W1GW4g/qGC6gAQa3Cq0qM0rCeyC2XVIcKTpMYMxPAGKzeXgg6SemNEv7btBNTq2p3EHN
	3OnvLM5Nr7MYmjaaUsjrM++69n8kJP1ZWQvLY+2SWeIzN1aIqr8u8S+6e9LHi1DInJ0w6dHTtNe
	4rTZQFb1vWXf19mdeTjUIZ3TCarpjdMyLE3lfzSuYsf/+5/5escK2XbL2WCrIEbMKVRFTK8m
X-Received: by 2002:a17:903:2d0:b0:240:8f4:b36e with SMTP id d9443c01a7336-242fc31a558mr50178755ad.34.1754994336500;
        Tue, 12 Aug 2025 03:25:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhW84RupltOd7oYpjSDnmy/Z1WFZCo3v4UmpgKw/WVJ1C3vhkkf5vDczM3TxczTksqAgL8EQ==
X-Received: by 2002:a17:903:2d0:b0:240:8f4:b36e with SMTP id d9443c01a7336-242fc31a558mr50178275ad.34.1754994336053;
        Tue, 12 Aug 2025 03:25:36 -0700 (PDT)
Received: from [10.217.216.215] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-242ffd9e3besm13858015ad.106.2025.08.12.03.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 03:25:35 -0700 (PDT)
Message-ID: <c783b319-3b88-45b0-8a0c-8c3ba9c462af@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 15:55:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] interconnect: qcom: sa8775p: enable QoS configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
 <20250808140300.14784-3-odelu.kukatla@oss.qualcomm.com>
 <sdp4moiiii5zjz7m7ysds3je4h66biuusilc4fx4bq2j4dw7ur@5d3c6gkk6wb7>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <sdp4moiiii5zjz7m7ysds3je4h66biuusilc4fx4bq2j4dw7ur@5d3c6gkk6wb7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689b16a1 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=wifMmZQcaQcT46JyXskA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfXzYqJ5npYrA7N
 RkB2VAt4Dv+Fot+B9xKsgSXDcTpGKXpRt2Ayp6VdqnBaVMyptHywHK4T2YXQvmRduJk5N+NRouR
 9B2YaKId1ipyIok4Qoq6+CKqvtGMyGS0rllSIILrRhwqmKLcB8gFE0mVx35RtA3pzzkT4OOBLyc
 15j3OG3YDAZPslWfQdB/vV2+8V6Qj761ISdioFK8vGwZWV/F4qynjuj/+ZOyejucuNRny/52HVK
 Go46qc8umaKBJyv7u9bObRgl4/a2Xb91id/GLGUFvSOWBCBR24K8b2O7jcJTzqpLxM3WJL9ZWA9
 va8yJvrsN87vRgBRMvMFqc/TW+Xshb8KFne3CmTUxy+caHhGXZ2N90QRgX24/m4+Pf5wj30O5KG
 XzPmQtXe
X-Proofpoint-GUID: aVAAHiP-GgnfPOp93Vs2_NS0bgb3hGaC
X-Proofpoint-ORIG-GUID: aVAAHiP-GgnfPOp93Vs2_NS0bgb3hGaC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_05,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031



On 8/9/2025 1:05 PM, Dmitry Baryshkov wrote:
> On Fri, Aug 08, 2025 at 07:32:59PM +0530, Odelu Kukatla wrote:
>> Enable QoS configuration for master ports with predefined
>> priority and urgency forwarding.
>>
>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>> ---
>>  drivers/interconnect/qcom/sa8775p.c | 439 ++++++++++++++++++++++++++++
>>  1 file changed, 439 insertions(+)
>>
>> diff --git a/drivers/interconnect/qcom/sa8775p.c b/drivers/interconnect/qcom/sa8775p.c
>> index 04b4abbf4487..5bf27dbe818d 100644
>> --- a/drivers/interconnect/qcom/sa8775p.c
>> +++ b/drivers/interconnect/qcom/sa8775p.c
>> @@ -213,6 +213,13 @@ static struct qcom_icc_node qxm_qup3 = {
>>  	.name = "qxm_qup3",
>>  	.channels = 1,
>>  	.buswidth = 8,
>> +	.qosbox = &(const struct qcom_icc_qosbox) {
> 
> Please follow the design on milos / sar2130p / sm8650 and add a separate
> struct instance outside of qcom_icc_node.
> 
> LGTM otherwise
> 
Thanks Dmitry for the review!

We discussed this during patch https://patchwork.kernel.org/project/linux-pm/patch/20240306073016.2163-3-quic_okukatla@quicinc.com/#25749420, 
it was decided to follow embedded structure notation for QoS as per comment for sc7280.>> +		.num_ports = 1,
>> +		.port_offsets = { 0x11000 },
>> +		.prio_fwd_disable = 1,
>> +		.prio = 2,
>> +		.urg_fwd = 0,
>> +	},
>>  	.num_links = 1,
>>  	.link_nodes = (struct qcom_icc_node *[]) { &qns_a1noc_snoc },
>>  };
> 


