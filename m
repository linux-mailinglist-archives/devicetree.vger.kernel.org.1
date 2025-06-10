Return-Path: <devicetree+bounces-184230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89810AD358B
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:05:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFA50175EC4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C63628AAE5;
	Tue, 10 Jun 2025 12:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eSnuf/B0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B8725F974
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749557089; cv=none; b=Qhc9hwLYD2Eevrb1x20n9EUjJbdnMDR9RvyktWqN8Bi5TVRwJ6ZNGE9p9+pBrXz7F0eOK+wR6gFj+uPtBf1ikjESnuwYGtwL0TLlyUlHAfo/80BJjtgqRD4bZyMnZw8K73VEHyuA2mo9d9kAUP4OIkjH0GlGP6seLR7ntGDwDoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749557089; c=relaxed/simple;
	bh=Pz9YSXQGmxj6awXsekNSy3wPHB8djwYyC3iwLF0clFM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VUot8NUwnbbbsU5BjooBfUCfTpq66YewXWxEDF8kvCwO2tF/vNhgiIpLfKPKG/Re56HubmF4F1f3tayLSYMFloJW1qc6l5pXa4FLEHn99+35RNAZyCirIYIpO5AvDFhcBdY3yM1GdWu15l+iNSgfn4beyk4ZKUsSQI4Xej9ZznE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eSnuf/B0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A6elPG021405
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:04:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g8e9pBVilrcDDWGOOeYxVUGMngrXaogSlGUikyjYrFg=; b=eSnuf/B06nneIVJE
	F349OyUQDOqvbMjA9zYt8XFiDbCTDWSnpP4NzpjHjfyQsxJtvvLw2naoL/5S/ggE
	CYYfFDE0GkUwsM/RVXXyQ6KwYsQQvv2J+MRvx6wjt41zXYLCiGdhTsdnJHXSelGy
	A2uzMNXOBFRKQwFRkhe6RRXX6aYRSwFHioYVVYxZDsRMDu1rEOg4GOz3Fcm95kJd
	x/L7NMk6Rcreqwsd84vLQSQqgbtVbpn/9UDkiZaXyTFk9qvnMWELpoN+eUvI2U0I
	kdicBFycXtzn+XNVOCKwHmsNDgDdJ59hZdMwW5Fge59dsCvXFzIEGaSEgrW/+KO6
	sE3IFA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476fmn8xda-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:04:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d0979e6263so20643785a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:04:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749557085; x=1750161885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g8e9pBVilrcDDWGOOeYxVUGMngrXaogSlGUikyjYrFg=;
        b=cUimUHUR4FNBpVIAUg6Xv0LcisF2hf/wXTRxL23sWXLWRDs8MNS78LiiAwzn40w1jD
         jYJoMYhzuKopNA/Co1YN4sB/yilZibUF8VLc5gXsmSVBPAlgnjXBk+lNZnIvCzZnFDz7
         UVCZGx5RkgTA0kB3c2XfVlI7STPTiJwo6kgD8B78mJhXrMD/cxU2kY4ghpGBlNtn7wVD
         9x/o3pfqvafHIt9KcK1kLUUg66Q/rqaaU4o8PelLxZ58aDxcAegeJNHhku2x4EdlPT9E
         T7bBV7ajaCC/j0kY4nanrbobqvLfBjQoBuGdwqKFLqFrJxqLfXjDIDXrYvDi8FaP703y
         Kf0A==
X-Forwarded-Encrypted: i=1; AJvYcCVvYZvVfJBPQsngIsgsfri9kZHJH8ieCDxlAt7pW5QNWB/iHEI2SvwDxdzvcHQTM9P6kCBpaO5HwKNb@vger.kernel.org
X-Gm-Message-State: AOJu0YwIdRhXkiEPbxAijsvBICSvrg+cvpMQGDkGmyBKya2X6pW0cJJz
	phpfxG0bFMtb7el+ITFSMP3U6KhyhWHBcm5iNrA6kDMLUu5EVcg1hwJyAeDPu86xy8UaBkL4U81
	C2XFO8NZxoQ4kYAREfuMbogYxqf0ij6kGLaNznQ1CqPRGW6lYPZuHqmzhorghRwt4
X-Gm-Gg: ASbGncuO3JWJiFKxgwUYw2OVR3iNvacVqh2TCkM+PN05XaBifWz6EZY/iM0EjajlrMY
	Y0wJ4oabMzqa47f1OGmnIkOtoJr3LMACrhDQWP7lbXI6Tc9TRw8iCVSoYbnebva2F9/lTQqAqyV
	VKdFqcYduzdON0Qo4YkEefr6uabmDvg2t2GEoYI5RX+vystbQu2XqVfkbFLFBNgW2hxKT/lKvLX
	tTG39QiYDQQKN64UypyqGyLdxqf6/tsj6j6FSefkf39fsEeRDFXERO/d97az5+XtR/b1vZ7HG0S
	Iq4YyL7AfL/V/cCs1B76wugOc0EQpuHk/LlU5ULspZfgc3iCDkaHNxwEg77Z9HBB8hLWTOCbnUh
	P
X-Received: by 2002:a05:620a:2415:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7d331c39745mr940880485a.6.1749557085673;
        Tue, 10 Jun 2025 05:04:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn+kVYUHownToraRB4x79Lj/LDy5BQWP5oLehzUWRuKEmhnjzEYNAZC1MqSF2HBbw4/JUKNA==
X-Received: by 2002:a05:620a:2415:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7d331c39745mr940879185a.6.1749557085314;
        Tue, 10 Jun 2025 05:04:45 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1d75467fsm722593266b.14.2025.06.10.05.04.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 05:04:44 -0700 (PDT)
Message-ID: <945c432c-68ab-46ff-93a7-c60d300aed13@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 14:04:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm850-lenovo-yoga-c630: add routing
 for second USB connector
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250608-c630-ports-v1-1-e4951db96efa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250608-c630-ports-v1-1-e4951db96efa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: BxA77kS8b1I3QVc2Jmmkuou56Z7A_V-m
X-Proofpoint-GUID: BxA77kS8b1I3QVc2Jmmkuou56Z7A_V-m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA5NCBTYWx0ZWRfX/UfdwXVUyc2u
 cigBf074VXak/QL3worAk/C2LtrMvhKoxufSA/i6bwTnqbxiDByTBJ6gWsF12vmgNTrDsfiBysu
 hnMZTXg35wJVzCQgkhF8xSHoUaHkqzPGD4+k6sA6G7beEF0JPosoU/YgT/Wf4YjTkwIPE8BW/ud
 H+FqqfQ4P3bdD5tfjepVJfiAjFi78yT7W/hPbDRFjy9AqgN3YhRJj0Ki25NBT9f3JqJOmBQcJ65
 KxtgEyLAfRqATEjzdwAySOyWk5DryZlvUgbBuL05Ihd2eN/NyTlka4DvrdjS2oIfIR/HLkfKpC5
 dwCjJ1E/mUrmt52aiVOKd7HD9a76L5Y6tffxA6s54PI+A1iCYX2GTVVlqDdm+RKlVLny7yPgczk
 iVfHNfP4ksRfNDn623OjxdkbOdhabbpbVT0kgvhTGFdU98SEPF6EjCZHgGeobk3kzLAKHNCj
X-Authority-Analysis: v=2.4 cv=K8wiHzWI c=1 sm=1 tr=0 ts=68481f5f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=l5u_8PGahEuQ0IlyzxkA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 mlxlogscore=638 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100094

On 6/8/25 6:16 PM, Dmitry Baryshkov wrote:
> On Lenovo Yoga C630 second (left) Type-C port is not connected to the
> SoC directly. Instead it has a USB hub, which also powers on the onboard
> USB camera. Describe these signal lines properly.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

