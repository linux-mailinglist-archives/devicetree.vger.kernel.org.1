Return-Path: <devicetree+bounces-251347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2ACCF21B1
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 07:59:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3CC3300EE60
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 06:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14B128850D;
	Mon,  5 Jan 2026 06:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m2F1stD0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hcIUjAma"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747F54204E
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 06:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767596353; cv=none; b=eRh/482ZgZLaeH4tMyO+2hGZemywQ3wqeino6ifxp+93zcJSyIRGWDszsWHsLsL3Or25z0CCAY/PL5ggs92pxJitfBjCXrUhgvBgm8Z+KotaDfzQZV/S30a9SHqmLuJPxm7v739+TYSBaelne8y9gtjSetaUhAO/baO1Z9BAdQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767596353; c=relaxed/simple;
	bh=9tg6cmKni91qJeyOldDk53vFd5fa/7dVnS38WnIDGlA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jXA1m5kGnght7hjZq+G98SLy2inpN/WduCl8+ZspNBaEpFhFgJZ3WtEwf3VHrXhK/BCbdNhRxv9YP2VjovtMdzlDptVcu/jzFudt0FKXfHLLsV98z64CO6P/Lfj7664Euw8Vsi05M7CF6w+gmVK55GCpt5yOZsDDjh8q95ANJu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m2F1stD0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hcIUjAma; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 604NF11o3684516
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 06:59:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9tg6cmKni91qJeyOldDk53vFd5fa/7dVnS38WnIDGlA=; b=m2F1stD0/By+ujgp
	+1atQorc9QlE33XuZYONDgdHpdciwjEhMShzJH7wtGOJzncDChbQAqXWLWpXC6mz
	d9MAFs7ywFlBjfXLRmdIJYvPwQGTzqklrWwKE6ohB/+ppn3+G10qlZ1F9t4yQh7B
	8n+8Nf2vo0bRNN5vrVTsm9BScAMkJ37FY337bntaOMyyzBKWxS3ACGh5N67LGdKn
	tDSgRpV1vp16mHUnpjZwfbxGaU/lx8uRHVxEM+LHFTCozUi08Lxc+NmfaAReNEuP
	OuXxga02CYodVdQDs1eW01FpA0THvwAdLOBThOtYxBVPmF682GHdNHQjbzJu4yGs
	gXdS5A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bet2qup14-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 06:59:11 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f2381ea85so305738495ad.0
        for <devicetree@vger.kernel.org>; Sun, 04 Jan 2026 22:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767596351; x=1768201151; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9tg6cmKni91qJeyOldDk53vFd5fa/7dVnS38WnIDGlA=;
        b=hcIUjAmadqkIkxRushwP3VY1raWj2BC33yNo0dFwYVvMidP3sJPopjwjT6NhZH/vMb
         3mtgnZABmwi4DiMq8KdVzcYPEx0ZSMXssnBamTjII/IL8Ri527ZHA6LEzl6D2tYqbcqN
         Bc6eV3Ri09se1vtAxuwNaEOJjNcUyDw5GmOIXB5+O80cQF0Si28qbf5jSAod7nRTV8dZ
         D4XG/YLYxiHAM0KUhaMuK2HByKhn8YyF8wjoPRGbDOsEqEaUOf4p5TOl6WdOsXet6J+0
         dImanIiT9xsO0gfBboGRIwGjWiSvYENHJ6jUCG58bjSlkwnMbXXqe0O0TttzR9v2izwm
         CDzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767596351; x=1768201151;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9tg6cmKni91qJeyOldDk53vFd5fa/7dVnS38WnIDGlA=;
        b=oi7zTNiyBLS30ySpsC/Wx0ClwskhLnTvMGKUt/mN837yAfrjV/54Dis+V1aloH2ei6
         iC6bi1BJJm/pJ1Ok90u/R9r/jiDOqhI13T61nGwn4kp2dFU83gg+9RqQmn04M5FQ83hT
         1n3Z+XYi837DHEe/odCzhZt7268jvT/YeMffn0NiT0CDoXm1Q0hWyM+YHE5sQ/EHmHE7
         QW2T5fAGJd8va2COOoH2D2WyzUX+21VHsmkDGeUkBmAy+eHzKr459SQN0bh7O1TrN43Z
         PjXNowrr4lEBxYaJjO8E9jwqVl2S0xXedk5nIu1NNXxfWZNjJ2jSDoV473YE5AS30Ud7
         8jPA==
X-Forwarded-Encrypted: i=1; AJvYcCXEPQY04JOwf3YwwnyE6SWOWMfML3VnvrH1IyxeZ1jAh150STcLcESjLZ1RrFM2mnBBQnNpMb5+Yl91@vger.kernel.org
X-Gm-Message-State: AOJu0YywqdUUXD9I9/7G9SlahYUWjKclvi5XUp2aVW/B3sxf2sBFKHWG
	xx98SyrKtlVQCG4X1eLmn2DlHnPITpa9kHcOnGV3Skf5y2/VczGlOrRUddbtmcF0zeDbAxEPWmD
	NsVAHXd4EiM4j3+3Zr4kmS0BU+kmbZ00n7w7f9a35+f3wntwJDmwclgH2QdDgWQQB
X-Gm-Gg: AY/fxX48LZR2rypDXtsOA6udhj5dYVzpOI1hn8cr1uyxeVqh0l4yPzBOqeXMMJSwIwg
	4nYXxhNxC5xZmeZFFxjUvhxzwIkSO5DZyPKeAdOdQ7YkLhouRUIGrTpI+ePQRkR99qtt2vDAF+6
	K3K9cr3kn4SFeFcCimCJRPzfgirerWxTODF+pUS6H2nE1Dxms3ujDQg9k198DePLV0Z9r1zwOFa
	sOpYTO0jSXedBmwHmJNWNdcMhAvV21+ZOBUjTCVHBONUxYi+mq/yzL5tDb8H2s3QPPABaWiEUJk
	9BLRugDsp3Kydl+xKHwGhDNcP7vcS/0KJ0oVMGQYycuT1axpmFeoQ/4GeAbpg+N3VPXT/+eFksc
	BLvWgxaXV+ygg8y2IjwwK3QWAfVPlPaAOm5dy4G8sREtOM6BfOEWyy7101OGMl0gcGxQLX8tIhP
	Ul2SD2ojzK4brIF9slS5GlQDaJhAI=
X-Received: by 2002:a17:903:24d:b0:29b:5c78:8bea with SMTP id d9443c01a7336-2a2f2836c2fmr461162155ad.33.1767596350862;
        Sun, 04 Jan 2026 22:59:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHy6WPBIrh6wcO/7G4RNW3FnXx5uWBjdvCAxC7e7PK5eXaK1UAHb7zE2ir/D7QOj7klabh3MA==
X-Received: by 2002:a17:903:24d:b0:29b:5c78:8bea with SMTP id d9443c01a7336-2a2f2836c2fmr461161905ad.33.1767596350339;
        Sun, 04 Jan 2026 22:59:10 -0800 (PST)
Received: from [10.190.201.90] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4d87fsm435726525ad.46.2026.01.04.22.59.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jan 2026 22:59:09 -0800 (PST)
Message-ID: <aa62b769-4be2-4e6b-b2ca-52104391a757@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 12:29:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: dma: qcom,gpi: Update max interrupts lines
 to 16
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com
References: <20251231133114.2752822-1-pankaj.patil@oss.qualcomm.com>
 <20260102-fiery-simple-emu-be34ee@quoll>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <20260102-fiery-simple-emu-be34ee@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PbOCpPLy0Z6xzdjlNVI_0msJk2PrDku2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDA2MiBTYWx0ZWRfX8istT6hZUjp/
 eEhRcT51SdEWYkvreiW9qmKFgQ8EiNQaOopzVSG+6gRLa/HntaZ5xXr/INa9Wcl4Y5jl9K69Lyp
 /CjlVMbPGUY6mjf22QJZCMh9cdPceZy8Vaus9ppCaBrk/bzhA/z2YIAxAlG/qPAFihPjPWRDmlZ
 COjFob88mUiKiA8/gYW3iNn3JxvlxgJ4iUaWCj1CQ0uJ1ks5L2TU6Wry9NJlSfE8J+0EHEQ5LAB
 7nPX3aapDpbKVcO93sRhoBDWY5fjN1HUAlu6J514sEZyZ24RYNMgBM+OysGAfO5NxyS240jcugC
 kwpjt62AuECYa1J+4uCi7kT1vK7nahD4RqgU2SfGhU/lR7byzOwdu1lkRsr1g9oHZMpFSFEq6Pd
 /7r58m+J7kll/rOkDIj3CQDdyGE6oCtT4I9M9KaVdnGr3ujzdqw4+3v/pfsMaAjilrS2wmbqNR3
 RV+S9YVHy3wJKEh/o6Q==
X-Authority-Analysis: v=2.4 cv=RKK+3oi+ c=1 sm=1 tr=0 ts=695b613f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=i01SU5i697ricP_RhYIA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: PbOCpPLy0Z6xzdjlNVI_0msJk2PrDku2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050062

On 1/2/2026 5:57 PM, Krzysztof Kozlowski wrote:
> On Wed, Dec 31, 2025 at 07:01:14PM +0530, Pankaj Patil wrote:
>> Update interrupt maxItems to 16 from 13 per GPI instance to support
>> Glymur, Qualcomm's latest gen SoC
> This has to be added with the compatible.
>
> Best regards,
> Krzysztof
>
@Vinod can take a call on squashing, the glymur bindings
have been applied to vkoul/dmaengine next tree.
Let me know if I should resend.
Lore Link- https://lore.kernel.org/all/176648931260.697163.17256012300799003526.b4-ty@kernel.org/
SHA- b729eed5b74eeda36d51d6499f1a06ecc974f31a


