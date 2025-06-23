Return-Path: <devicetree+bounces-188676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A79BAE4966
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 17:58:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBB1518836FB
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 15:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0045829ACC4;
	Mon, 23 Jun 2025 15:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RM+Ah00u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF3629B772
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 15:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750693827; cv=none; b=R2B/iRdLD930xzIKolVZTirqmvdW6mdabOXGuh6gvDsTqz2k6srxxJ6HdJ+bDSQj5JIL5HtDFG5ewWK6nnZuv24sjXieOfybB7vKN48nXos6YsBAsbvjTD1jmuGDcdhjTW8wG3Q+zn/HsRDxfkICPFNcRa2MYjpQOXlbe/vXTpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750693827; c=relaxed/simple;
	bh=8bK/oDo9iRgWPSwekz9csl4PBAwAox9ptogsw0r7H20=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WqUz0IkAFSfmtzMYkhR1YVANw/Gfx/2RnnBYA6h49dB31FoH0Ut4+Drm3381pHtBSwHuJ+XBuuomV8gA1L04XshEN5S6yCPVQH/XsC5uYxnog7G/gi6lwt00XZPrdmEiE5Ei1pwiD7wt4ArrG3I7GYhXm+Np9Qf16zxfFJNSbUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RM+Ah00u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NBst2N029893
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 15:50:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zKYR3MIoVjPDQJXWOitfD3prBBIzEWjPAAlBRv6BNWg=; b=RM+Ah00u88R1hOlR
	Rr5ODAzOTrE3CkrYNxXHPobPi5bS6ReBI6NwE+9TL29RPhy3YEKbg8IG4TASDJE5
	DgNEGcY+JvhiahWfJ3l3x4HqQNMz01TcjONiPstU089OJrLFSVJ0GF4EHbllsrmE
	zZCxMLwI5HtHrgKPbyk+S4KhqjT93sB2JrgTomIAexIjj8dGBP4zNWODLca9TaBc
	KMzmS5p/ev6rRZqd2wi1uOF60o1OJCwYmQ+ja23VT7Cwk7FEmtANFYoOw4jlpcLE
	NUuz/NAOD+Az5lB/dwP9Qw+WrqPbbtbD44Mfxo3QZgbNVAVvBOnin5hfsueG/Aay
	sw5zsQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ey7k1yr4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 15:50:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a5b3aac5bfso5378211cf.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 08:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750693815; x=1751298615;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zKYR3MIoVjPDQJXWOitfD3prBBIzEWjPAAlBRv6BNWg=;
        b=oBR8e/5WnQ7rPVUTQlx0s3Mg9L9OOcNgm7rJDZIlKVwyd0FrrwNn/SJ7hqLRyEVwA+
         AkTxCdk/vz1qw5VxUvebW1TIB4ZjWNESB9Bp4aCcKexskuy+nW8u6pLzSG+gNlqDI5Fk
         z3v5kK9JfZ1xmmCPoerm8D8V9UOIIiI17SMeiCn2EgGPXCFjU48y0aPUEcXjaVngacsl
         J3OF0o6+7z1vs+nWcXun1VAI6lj6jgqHKydyItlLEC5LPEBP0KX5cc9ExNEaE5d8hgkp
         FOXd2yBSg4hOVfU4x75iE4nFrV6UQCpUHnC5DrEwLkQFu9UZC4Ou0F/z94PE8Vf3MEcM
         0l4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUSGhFTNiBNuGbXhzv9KEP/sJ8dnpyb/jb6JzfvtdCGmEKjfEsAPS/3Tqck8MOufLitG69L/GxFJ3Co@vger.kernel.org
X-Gm-Message-State: AOJu0YyhBkzbAFOibcExQx+7bWIHB8xPjK4Vh3gdVCx/YeZR612RaLV8
	ilOGogd5PlgL3UWQqsKHMQ3/N4ihNSaJyrgIkO75mWgEMS9JcRkC8YJY9Yg8y+Llu17r8WD/we3
	Ej9k/Ad44keHWkRRfpernI7DK09hfhVeD5mp0s15dt9USmqHxVyO7pN+OFdMrKGwM
X-Gm-Gg: ASbGncvwvwswdcdS0goiKiWkqAUWhXKExD87kuDap+7N4o8T1R1/fJDFIC+Z42A7M1P
	W1WadCpmefJBtPf/9T9HfaOCmnUr8tgn4H+02a8sZNvmxGQg1B5qSfqkeWzUoIK5murRXkN1pRM
	6EDVQdUbojsJFuiDkWxTAkHw9a96v7amJHiSj9y6WrM41sc74+e8xwSLFPrp8XgH5JQZ7hUl0aR
	BnBtOhaBAI7ustcOJtZ45IQvYjnMz2O5pxwoD1v1wzyKbsoinzfymrSECFsLUhcvP3lZiGJdTFV
	0DV6iK/t+h00dM4QIAAbkgV6tLCxANtfaQOZysWhM9JnDFXXyAo7Q/40TQLqjjk/SvLdFjEVRw9
	9oPs=
X-Received: by 2002:a05:622a:1901:b0:474:e213:7482 with SMTP id d75a77b69052e-4a77a261a80mr69579241cf.11.1750693815031;
        Mon, 23 Jun 2025 08:50:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGTkOBvKkC1+R+HOdT+B5jRwP+XEzs9FAvPjUOFSjZMpAIXJ4GABnCaI11XF9Si8mUoQvaug==
X-Received: by 2002:a05:622a:1901:b0:474:e213:7482 with SMTP id d75a77b69052e-4a77a261a80mr69579001cf.11.1750693814424;
        Mon, 23 Jun 2025 08:50:14 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae09fc4f964sm61549966b.162.2025.06.23.08.50.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 08:50:13 -0700 (PDT)
Message-ID: <bcfbfaed-e857-44be-86bd-d4e977fd4d27@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 17:50:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for IQ-8275-evk board
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-kernel@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>,
        kernel@oss.qualcomm.com, Conor Dooley <conor+dt@kernel.org>,
        devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>
References: <20250623130420.3981916-1-umang.chheda@oss.qualcomm.com>
 <175069348269.3797007.5540625905808833666.robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <175069348269.3797007.5540625905808833666.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YoEPR5YX c=1 sm=1 tr=0 ts=685977c1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=llQ5NRAgLYY5Hovl6ZgA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: yLg-s_opfHfERCNRoomsVbbUW9TTouIh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA5NiBTYWx0ZWRfX8+oKWykIGX5c
 GfY2sLs12KUlW6lJhEZBh2Q+bmQ5HV1IAK/xy7qtbBUwC1DuYN2xXkmK3SUUWV7aCbHR1i1OIQk
 WXU/JTg/SFhObd1417IwsZrpq+Af4BAZK4RWbWnMk2cqUOVviT/4qDjrLoIkbDZv0hER0fMadgK
 es67eQ/1/5zpCDwomHIFIlUK5+lC4vNXnGbbapE7WH9Dh/8s/k57fm1YJb2risoDZpH6KozERT/
 so+ZGifdWwaDqHPLARwq6RdF/Eh8pVyTL0tENMD/PEkDJJwejK+cnNhgzXz/vZdjWLxCI4sBjmu
 8IOhXBXQFYRlPxRYeIHbT9wvk6ehrv02DMp5cNPKgA4XAGXFQMiLBYb7O94tFlqwC3PX29Mmb6K
 IOI3WHZ6YxMpAtO/fRRxSUJVojWyP3s9kMZdgB71qXYw8eT7kS7esWrZUB9qivjqntNs2QRy
X-Proofpoint-GUID: yLg-s_opfHfERCNRoomsVbbUW9TTouIh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_06,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 adultscore=0 suspectscore=0
 malwarescore=0 mlxlogscore=999 spamscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230096

On 6/23/25 5:46 PM, 'Rob Herring (Arm)' via kernel wrote:
> 
> On Mon, 23 Jun 2025 18:34:18 +0530, Umang Chheda wrote:
>> This series:
>>
>> Add support for Qualcomm's IQ-8275-evk board using QCS8275 SOC.

[...]

>>
>>  .../devicetree/bindings/arm/qcom.yaml         |   7 +
>>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>>  .../boot/dts/qcom/qcs8275-iq-8275-evk.dts     | 241 ++++++++++++++++++
>>  3 files changed, 249 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/qcom/qcs8275-iq-8275-evk.dts
>>

[...]

> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250623130420.3981916-1-umang.chheda@oss.qualcomm.com:
> 
> arch/arm64/boot/dts/qcom/msm8916-samsung-gt58.dtb: panel@0 (samsung,lsl080al03): 'port' does not match any of the regexes: '^pinctrl-[0-9]+$'
> 	from schema $id: http://devicetree.org/schemas/display/panel/samsung,s6d7aa0.yaml#

Seems like a fluke..

Konrad

