Return-Path: <devicetree+bounces-189264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CFCAE7630
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 06:51:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B11C8177DF5
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 04:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C8C1DDC1E;
	Wed, 25 Jun 2025 04:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NgjRnURX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87FAD1A83F9
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750827067; cv=none; b=eZYOL6PXoc6hx09Rp6oRt+vjOb2ERqvdV8tjRgnhdZ3lJZz9nb7H3dTfIeRJUoJsNW7GOOOGYWK/DkIViTzywt81kVeNUEJ/XS5CaYc3JYW49KTL0gIcVcXg2RMkz4PbeyzZYWeN94Mh+8CBnUlAaygOU8J4MK74bQf4PvDjZuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750827067; c=relaxed/simple;
	bh=R+mi1MfMmFECvU6BHoLstxhB5ir4ugMn68hS+cemcik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bkA/Pg3MNa8bgOIGkn2GwZM+H8Dn9TAwYHEHIYl4kWLAzlSmkbbifNc+rb4XEq0JJbYHBbsZkPAtjI9C0caRuX6nnn6v8NHDv3CKAPoIjchZUvtRTHPmjmPSf5IzYGysZeIO7NEH2vN+6TXmmqqh3oCZFFZISQ2s6vnzWZG5B2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NgjRnURX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P1OSGE022517
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:51:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uWANR5imRlXfhmMJ7ls8Eqd60uAyLbrR8SUFg1XYKMg=; b=NgjRnURXrMAhT35O
	+l826HaMXBtyMLPC2egxpyDkwnabJXINeAKp0J4s1TAkGlIbJWAPHuk800KH1JA3
	rBiXfrEFuqlZ0PUMDrjuUIMB5VFvqC36OXZ3AX+sFBKxOPVZ5BXF+da6wV9i08Rw
	H9RyJLxHwuQsfTkKH6j6aFIFsVfGQdMc0AzltxqU6rbynqlvl694GzmAGtM6pMrr
	TsQ59uF5hvQjlnefbLDp9JvjtLlmy5OWCBgUURXdcoSH88Nv1dQNSWjggf6+EJ39
	jPFJrFuiHNSc+fWi15MFvn7QeNjeH4soTG3AB0991Mh6oS70hhfnrkqS7YZzgnOR
	WdcmEw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpxru6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:51:04 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3138e64b3f1so7528658a91.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 21:51:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750827063; x=1751431863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uWANR5imRlXfhmMJ7ls8Eqd60uAyLbrR8SUFg1XYKMg=;
        b=JEW5aa/axg2fVjMo6SqoPDdnLSWDVIXSJ3RhYxawZXnFsOxAJz/WBj0yAI5JTGzsaY
         LY3Pl6td7jOMAWuHWnz/BnRwxuq8MW9KO48u5AzRQ2ovWzxNllR566Pk4cyCQ/13eEU8
         3R3lcItww4Xl8SDY/wGTB2FlKt8trZskA83p5LNd3l63kBaIsSot4ngJCl7pMFCa4xcO
         bDdZE44clDQIZJMbfXF4/c8kFxjgjKnVaLhbl6VSYI/VEYFVLUpgWEPJ5bcB+a7HLwJ7
         7+WTw1mi1q5/cVS9vUeFP62jq9cXT2lXAvzQtp7oeKZIrzVJudiBhoHJnfbzPe3u7sTv
         dMCA==
X-Forwarded-Encrypted: i=1; AJvYcCVzD8hWB+kKVr3vxcnwFplqtQukzdE8MYooilV1d5ztCZdZbn15hYRb/hdR4paIaxt1pwjYq9ssME1A@vger.kernel.org
X-Gm-Message-State: AOJu0YwBOHMCbJqBSzM5xR1WPC1BO0Rs3bXKbUEmaFbpzWMI9Zl+adY9
	8vudDwVrvyIBxEicbw0fAH0T/lL12GHDPckRUBnRB460KwH+vhD6H4VUv2W+z9T3Bcu/OisFXLr
	q8IQM/4BfKqaAcaoBPkbYReXDadKI+vTlsGxCKVvQFPgmDMxJy9IlOSP3pzo69GxB
X-Gm-Gg: ASbGncto3auFDsBnVcDbl21HzQ8iz/31kGMbHpt+AL5qjDzAtEEO/iBs5V76haVNbAz
	F5ukWEvq16FYFssX3xWiRQIOEsba4ZVi1cvCSyofbaPjCXsiZf36h3jFGaYHy3jETGHtU1LMgS2
	AEq7kEvOUKtQZup3H9imXiRXHt/BpoasxevcxgdzTAHRauQXwkXj44lGbe+2WB79edKh5TADKgU
	BQd71nn0Wy322Gk1spmI4NHYzocsGLlIwXbmoHc/N0G/O1gF9iQaf1enf1bKNtogsj5CVV9vNvO
	4Wbr5luE2bmosBrgOPg/SBAK+N8osW6N2JTrDl8h31MRobG68Wod8IvXXpgH7VE=
X-Received: by 2002:a17:90b:3f10:b0:312:eaea:afa1 with SMTP id 98e67ed59e1d1-315f26b1d47mr2056943a91.29.1750827063258;
        Tue, 24 Jun 2025 21:51:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnvuHz5aGAcqZ79k6lfdJe3XcpxANsWACfUa5ytAc/H7t4vpU25I7oBD2Z4sh750DNF1tWVA==
X-Received: by 2002:a17:90b:3f10:b0:312:eaea:afa1 with SMTP id 98e67ed59e1d1-315f26b1d47mr2056879a91.29.1750827062384;
        Tue, 24 Jun 2025 21:51:02 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d8396182sm122012895ad.9.2025.06.24.21.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 21:51:01 -0700 (PDT)
Message-ID: <7d641576-7ec7-46f2-ad53-e0b8b36351d1@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 10:20:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5424: Add reserved memory for TF-A
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>
References: <20250624-atf-reserved-mem-v1-1-43b1940e2853@oss.qualcomm.com>
 <0826de9f-0125-44d9-84cd-1c52ba199a4a@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <0826de9f-0125-44d9-84cd-1c52ba199a4a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685b8038 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=sl2Mi_gxeYHe-Mi6R-oA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDAzNCBTYWx0ZWRfX6Oy6J1wBqGo1
 49awzcZyaFgb9jfLX+fans32f6uGIMAh57pnqCSHNxtxWJIbQqz9lqypE8FHVZNDot6WlBFUUmy
 mef6vE95uYhY8/sKSKOzvTdEyBKU9bbAvaCbnAtpHQ5iaJI+cZHQvES6MrT7UgZzGF7zFm9S8cy
 KAFEyE1Cxt2Lui1RRMBSB42/bmkkJ9hQfS+8Ckwtrb5Fo1Mp8hC3Wm7jEcnGYFwiPyguDGTWUsz
 6qXX1jaMZZsaUmrRqsu/x5zdkZqP8HA7K7dTY06W/CqdT0HK5atgDu6iI3f0b1O5VvNTfFBkEit
 3fLr1OviFBt3HeZZlcVa0iEbVtUXshyFRnH8I0TtDXn7ipTqtlmwMhm1uM1NPHivQ9o5BnVyPR/
 hWXmoQTZDVi4NtOvmsOWrxszOQv212t4r2Fb2bdb4FApHPUpF46hHnBLrh4Efokf0+U+j8uB
X-Proofpoint-ORIG-GUID: FGViXJLB2JYfcxWw9I9jP7foFLnKthXm
X-Proofpoint-GUID: FGViXJLB2JYfcxWw9I9jP7foFLnKthXm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=415 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250034


On 6/24/2025 6:57 PM, Konrad Dybcio wrote:
> On 6/24/25 12:36 PM, Kathiravan Thirumoorthy wrote:
>> From: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>>
>> IPQ5424 supports both TZ and TF-A as secure software options and various
>> DDR sizes. In most cases, TF-A or TZ is loaded at the same memory
>> location, but in the 256MB DDR configuration TF-A is loaded at a different
>> region.
>>
>> So, add the reserved memory node for TF-A and keep it disabled by default.
>> During bootup, U-Boot will detect which secure software is running and
>> enable or disable the node accordingly.
>>
>> Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
> Can the said u-boot simply dynamically add the reservation then?

Yeah it could have been done in U-Boot itself but it wasn't. 256MB DDR 
configuration solution is already shipped out and the stock U-Boot 
enable this node to avoid the random issues.

>
> Konrad

