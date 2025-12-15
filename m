Return-Path: <devicetree+bounces-246778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A94CBFD90
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:54:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 257813042287
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7B73271FA;
	Mon, 15 Dec 2025 20:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VXx9Z1Z9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GTKLTcd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0FD3277B1
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765831925; cv=none; b=jGcXJw21nuCAPIqzt15CE0P+gyuV1s9iIppuKt3nGNYycrHAPXG38A0kLTDkRtyljBmfRflz+nV4H8va2ysFPk02+CYM5K8svtg8bHTiuBC/ogBf0niYQQfdPVbdfTGJfh5LlpcXifFCdk5Yk06sn+mPmVJZ0iyFiQNDl5sakVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765831925; c=relaxed/simple;
	bh=F0HGmFeCvFDFdqLUT++/PbLDqxh0/4hWuFjrP0Mv2mA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n5G4nf3IxOXU1Q4w/Ti/LtogYv87o4ltGBbszB2+zAZ6HzdMb/1ww7hmb0sgmI0vwWiNC9+OhhMBEa1lkZmvNpbuyqfbf5EF1mF1EXNJ9lQj8Z/twlNN2omMCQlfJAjxVYsPPyZG2RYy8hG0QBAC1MhS503+WxzXSr9wYQFAlaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VXx9Z1Z9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GTKLTcd0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFDsThV175700
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=URoUYaduLCn0x2dUSjsAdtUx
	WNq54PTEwO8tMWNDZfA=; b=VXx9Z1Z9nQZ1nUvyKg2nGckO65BfhyEE3tOLU+Gr
	VQkwcfnFOS/TXOFOGdKalUia4yDl1Z7U0lHeFY3Jp77ZwmSVEx78J0XVbcR+gmSz
	ED3TQ5mXRRBONZ3R3FVKLbCW1mQ+OSl1zUuf3tre35jv2v67W9GpbKlrmjnyDypc
	stxCn16Cja669a8eacwYQgsQaHtVSGYoSNdxWV0wZXAMqcsb3sAmwHGIAO7gNYns
	ddHMYC3CoIM2/Lj63sryv8yG5fYyXiffHD5Xesft0XEQLpYF8pu0FhurvQisGHo3
	23ypjEhmaWzf0Qnm6hI8wlunJMwXCG0f2GiloEaHLmaXcg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2kmm17g6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:01 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ff3de05so100647181cf.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765831920; x=1766436720; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=URoUYaduLCn0x2dUSjsAdtUxWNq54PTEwO8tMWNDZfA=;
        b=GTKLTcd0gnpvnj0y3VGhuCQPEBiVfm6Z1UO7IAQxVfE86FyRClquM6+NouuwZN5/ma
         5fO3I2pOPwQJHJUvRra51hv1NtYcIO1WLsGJgjAMLCYDp+66Ba/JrudIL8d77BCLHnQI
         YpaDKgagVCWIoVOhKUdTGhqXvd52EIeQQSaCYZjUJjuRESI6lnmneS1vaog2utOMZYNB
         1dWMJyL/Igf+Do7ZrduHGEt5Nk8kyk8miH7bkD6SUTPW0p50bYzD6xw8bPS8dVLIoP35
         5kxr+DYfMKc7wK+DD2/2Alx4reQ3th+0ibDeYwr3m3US6yu+R04e4DsRrevXOwdRZZhT
         6mAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765831920; x=1766436720;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=URoUYaduLCn0x2dUSjsAdtUxWNq54PTEwO8tMWNDZfA=;
        b=ETFhDvo+bARD8i8c6Q2PUvmez17o/mtCISFRUlvHhflS+FLqcasnjOOAPav+GMhaER
         qQU3tKH6KUxhMoR5mLSkst6J6T/i8J7owksGn+y0ltJbIlm8iPRfLSsf8JuA9TS/J5g9
         /UEdlEioi9G1tL0VHyOzGhj5tL7z0VRye5W4Lj8+4WebpWkrIVilZ0o5gb2Oe6suDrDI
         SaP2IWGHmopl8eTtK3vNaYO+ht9bpCN2V6CFQYjN060F8UFYAvwB8NPYYBpnuJSM8Xzu
         tD+NjvIsxf0ooOnojjN4Mx/1SAA1Q4hcvFFI2DbW+kwi3DdncmHMcsZ4Pe8yiabwptf1
         aDPg==
X-Forwarded-Encrypted: i=1; AJvYcCXj+Ky+T1mSnoaIHj6i1ZnWSUt+pDvw4m7+TDy3uZRNLRcV/izVcp0qXqEie+MqM9luyonW9/qFLTAl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6HBA5VimOBcGq//gMUBAh81ENue147KKItXlLRfCIm1f9Llrq
	2pCgbmNK363GksZw28jnR2KVe6iiD1Tl7giwZlfS5KERq9BNaEpmq08BijIRtUhLIj0DZFZ035P
	tclMXpLf3Fnr/0qePsFyLtkB9lGXr5/PeaajCsPX1JMho7GKz4S2MdQo0bw0n84T6
X-Gm-Gg: AY/fxX7xnkWxf99SqV/J+YDbltujWgZBjJ98oACWfsivBFX74Q9YK0OXINSrQKZTuqL
	82y8Zr+d8iCAxG72SKlkVZYAsGr+QiWT3eFBlWgZ6JUrKM+zs+DiVb8ZcIVjGkLxI0T+hwbC4jr
	DPi2WCPczdtxUmjlLb9tjqQiIGGFFNOrQbQO4zOZuOD5RD6WVhorrYNrxktYzLvZRvWv6yg1A+0
	43am3oSehg1CLr/V1u9mM1bwoQSFDCGb5QbNwuYbLOd2x5CVw8x5H2soqLBBWqPEnOJiTalPylT
	/GFh7CgmnJzJNPTJYGKEZ5q/xUhpIIAF2EAMlMWPjvbH3SRQ2xk2NI+9z7h8FuH0PNghftkF7ir
	C9MzBc9kDOPFj9bobO4CZU0Q9aMOdGopzbEgR4Qa5c1O4oFtYJx7LneprlgthgEFPKLpEw6dltL
	0DvFLElL5MLaj6cBvXD0XtvQE=
X-Received: by 2002:a05:622a:190a:b0:4f1:ba52:2529 with SMTP id d75a77b69052e-4f1d0466016mr155151411cf.2.1765831920241;
        Mon, 15 Dec 2025 12:52:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFrmVCDKx1di47/aS55/yKher3TMRdYD0wsyKcUHHUgfew4Jd4JKdsKJWoXfLO8d/syZI/kGA==
X-Received: by 2002:a05:622a:190a:b0:4f1:ba52:2529 with SMTP id d75a77b69052e-4f1d0466016mr155151181cf.2.1765831919847;
        Mon, 15 Dec 2025 12:51:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da1a4acsm144527e87.32.2025.12.15.12.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 12:51:57 -0800 (PST)
Date: Mon, 15 Dec 2025 22:51:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Subject: Re: [PATCH v7 6/8] arm64: dts: qcom: ipq5332: add nodes to bring up
 q6
Message-ID: <76a7iti26g5kskevykgd4bs7bcqa6uowc56ixdhltt4g3z6xij@dcmtsa35dvrh>
References: <20251215-ipq5018-wifi-v7-0-ec4adba941b5@outlook.com>
 <20251215-ipq5018-wifi-v7-6-ec4adba941b5@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215-ipq5018-wifi-v7-6-ec4adba941b5@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE4MCBTYWx0ZWRfX6ZW9YgBIU7Pb
 Z314gJkFPJsmcZ7/vyIVDJyM4wnLjXZ5WHe+hXp6wJdz3iUv7GcCCOIkCeRDDdx/On/nYQB89nz
 xteeMzHGMfgdQrzsNi0hbA6rsJ8U4+yl8pHwktK/oF9bF+6/HId3Ddd2xvkdzlsYwBS8/ZWr/WN
 DPdP0gQEB/NUkEC3BaePV+hB98thA1isU0CaYwp4CNTZz+kHByyPVyzXiEI4+FosI6btp3PQYt5
 lomDXjRp+TW5BXzynzO/eBlP+SRvPNHwiqFuUiiW2/KnM0FhRsp4NHGOf8GQ6QZSxjEC0a2XbDH
 +gNkJtq5yTQVkSnfD4O+Ex8ByJiURJ83RmGb1nuxj5zJmptMG0ypBEoo4zGQRyOJQfffNHeM1EV
 WU9Xrft+GR4GNVLBR7NWMEgQn8H9qw==
X-Proofpoint-GUID: SIUNe_EaAXBaBgK8-qbnTq44C6IOq8cG
X-Proofpoint-ORIG-GUID: SIUNe_EaAXBaBgK8-qbnTq44C6IOq8cG
X-Authority-Analysis: v=2.4 cv=EcTFgfmC c=1 sm=1 tr=0 ts=694074f1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8 a=r_DgABtPT30GZMRUrt4A:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_05,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150180

On Mon, Dec 15, 2025 at 10:35:11AM +0400, George Moussalem via B4 Relay wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 64 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 63 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

