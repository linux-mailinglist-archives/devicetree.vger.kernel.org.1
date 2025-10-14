Return-Path: <devicetree+bounces-226431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BA688BD89E0
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:00:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 597564E6CDB
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE82F308F07;
	Tue, 14 Oct 2025 09:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wh4QxIL/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7F13081A9
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760435959; cv=none; b=PRcJ3hw19MnYiQU41RJBB3njm8ZPxzkkCUGOSbCQPgiE8jmnOWm5GsEUrINpndhDnJR+YDRZEFBKF627aCs66H6XAH2N0Ztg0IwzeDo30FoQ3mL8semSs9x772N0gSiqCCXuLJzGZsFk5Smex2crbCZ+fqc8sjWywXtSKenkFFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760435959; c=relaxed/simple;
	bh=GpI/jVWA1HQ8B8zZbIRCyIhWFL7UNuSPmhtgPuRgUBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZVzJuf9RLy7o5UIgAK35zo+SY58kWLX/5VEpyj0cmd9fqYOSNiypesjhgGfYI6LcIDq3Hhndk4IPC4ZIX1ukN6kDxSXeuE8VaZ69Omg0yyO3xPicm9Tk/yJ4PX9mF6W9cQtaRyHGjdhBJGJiYt6SKFR/djpEnxD+2bFLhKyKIVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wh4QxIL/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87KaC019963
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:59:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZiM+msz2/xu7IuhsRR5eS2JwAIpcWvTBpY6mVrIXXx8=; b=Wh4QxIL/w8P0pDUb
	RQNyBsR0DixeIN4SDnrpiRguB9XB3E1DNfRULVf8/XUSiGe7lwe6zgWP561GVtiU
	MsYYb9PQHUJHq3mScnUT1iMWt1I7swlAsRnStm7I6Q9NMvjYWXOXG4ySBsVRQEYT
	L7MG4TEKaCeIjMKTV4zebeRWxHySCezsPxC3EsGE0ydifOey6t4HdNuaIamDC6Ca
	OKuoWfxcH2PSbYV/7LJ2C1mBdypHXDYS6gnG4XTkG5ttuD9T2mgeTYr45kpLglzX
	g96NkwNm2t3+OyYCxAnDI8t/C6Q64ILiIJhHlgl5sawYf2n8Z2At8uHI2piV1Nqu
	73mbMQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0byyqf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:59:17 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8703ba5a635so255231085a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435956; x=1761040756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZiM+msz2/xu7IuhsRR5eS2JwAIpcWvTBpY6mVrIXXx8=;
        b=LWFv2wf22YkME5sAGZMVqCspqTvSmHXroYleUFBS4sA80A6IIVyIlTSN3RS9LBmor1
         aFWAgr7McR0rGp9SDyWHG/8ueRgnsnDnKlE2MxhrGaCi0efz2XVwuH+sz9cgAe7QSUAx
         W33QLV/TRFCxIYjvhwpql4KDFmJBpDXf2XwUFra26hw9k/ohTdvjvOAS7CZgDcp6BJdM
         VE8askXXfKpaBtvKOMUs8+Y8XS4NbzTnE4EjnEvyhc5EzxyPJww4ZFhhBw4v2RHIYjYe
         diQa4YJu1v1qZVeAyZQnQKKpbMVz0ZGQAIlzlHLjW5YTha6d7EEa2YYfmEg1a3nC9FSV
         F9lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNlgWGwqL9TKHsxYOHILGoY92Qpz8CVzssNw1S3bp/L+/5AooLicli0Y37B2V8oJVUEiZE9pJrK9yH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz70PUVBANmiwfj/BOhiQ5N5WTwbQR6e0xmTfTZTiaaSlftCfvj
	hvDEaPMB3Uh9Do2cx2bgOs62eya8MKiNgJb4WB2z+YYRVse2Qu0iuCcdC/IqjcginrIEQ1ED78V
	UTYwHpTZHaVYS6I/j8gv+54cdB2xc82Qh97267SJWTgl8wmMhOUozph9sO26j264U
X-Gm-Gg: ASbGnctiI+ch79fP0LfmPsMZtX9sViiQ3RLlxVDPqzl/06Pk6fed/fha27N2vhssJk/
	GooyBYYJmAeZlUXShnc0ZHHLIOYXtq/L+z9/o/FOjrsBbZt2UJ2AgA9D9rhQH9Pd6k2M2JxlUrK
	S0rFKXZuKBSLt27Bc8dantjqXbtPBq99oYDJ8vsbZieu/ZyBP43mI8xU+Srx3DKCV8bzS/KRtWq
	01gKlKOJ/Y00fkfNWeqAQXhSnu6nrf/5G2JkWcav6JHckH61llmqwh4aIJfU0lV5TroDeZK/Us9
	twj81n9+G0mBJ3TnG+YaOmYWt3hoKsbtgzMDxO3GWh1GIo5E6oM8xpSVZzMgYM/+LeKjLBp5G3c
	nuKG9XGPLYB99MrHZ98K/tw==
X-Received: by 2002:a05:620a:7014:b0:864:a09a:e860 with SMTP id af79cd13be357-88353e1debcmr2106196485a.10.1760435956043;
        Tue, 14 Oct 2025 02:59:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVHkA1lSvpK0GyjJ8jKaSkv6pRKShgtaR7/kW4udBNApVj/YUAiOSDrO/HaCh3UHQSF3UsJw==
X-Received: by 2002:a05:620a:7014:b0:864:a09a:e860 with SMTP id af79cd13be357-88353e1debcmr2106194185a.10.1760435955541;
        Tue, 14 Oct 2025 02:59:15 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d9113a67sm1136953966b.70.2025.10.14.02.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 02:59:15 -0700 (PDT)
Message-ID: <16170710-63eb-4292-a519-f9daeb222e49@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:59:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: r0q: add gpio keys
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251014044135.177210-1-ghatto404@gmail.com>
 <20251014044135.177210-3-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014044135.177210-3-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: jfhCVNZTH27fABl2OoGeeAIPUBfyiaOC
X-Proofpoint-ORIG-GUID: jfhCVNZTH27fABl2OoGeeAIPUBfyiaOC
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ee1ef5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=qz-H3Q_c1Qorb1ohe4MA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=Up9iDE1rbAkA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX/7INu8zOP1gX
 zyGmHt7CoZnYdy698Vh6fUDauDshsp24yH2sM2e+aGM1JlOijJEiBvFeZ+dX8ITCkJ+DssZ5lyB
 D+rSAvvAaUZjOJcxlQ8XhInpG8bOm1Si2oKN38DnFAatxUrma05As0Km97FwBB0urE8l8wXPbDD
 2bGF9lquTxAGGYgnhBNuNzEQnNwvf7rAEXL17KDWcXTQMPRrD1MnpJEC0eOvUuxwHm4u1nPK9Gb
 N5+wmyS5qr1d/qEEMw04mKg95ZlwQrdRSwB/XyRVJ/6yAfzvEvrIq+hoh31sVCdHCd56K9E3jPp
 37zU8BRKR+rvF890+bdqDwk3aLeCOUcLhEAhGk4RfccOe4mc4/JlkO1P5HzmTnCP52/9nvWFtnL
 Swm1GXG6J8cT+8Rz4KQmNXJHjdcZow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On 10/14/25 6:41 AM, Eric Gonçalves wrote:
> Add GPIO keys support to Samsung Galaxy S22 (r0q).
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

