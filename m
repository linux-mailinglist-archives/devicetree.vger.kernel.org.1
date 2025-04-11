Return-Path: <devicetree+bounces-165716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D134BA852CE
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 06:57:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29B887B4818
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 04:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFC1227CB29;
	Fri, 11 Apr 2025 04:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iWmqHDI+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5659827C87D
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 04:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744347435; cv=none; b=N/n+b/m4fRoGnMNcth27faysTNo9lNFni5gRvJMv24zkqbLNQcKHmq6z5FMZaccmjMoG+QJm8ymaDBPHsEZon4ZjTIZXDeJ8sI0+GolPR+TUmR1QhYUtJEgvSL751avr8iXWmkuJ9ZEepRRbgyJPCv9RwqasopOAUBNtEUJCs1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744347435; c=relaxed/simple;
	bh=JpzvRlWnvMTnv0Na6kig8hXzwQbUMyigmXeiJ0MuG+E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pjdW4Asm7E5M5lDLFdxq/OieC8Zb1XPO+dVG0WKq5UGiDS6kzXs1bRzrct3B4xouI08Jn4b1DErIRetLCmFiKzDHtA7shBqfT8JOeBmtJ+7yZKUM07QtQ3pAG/GoIxFeK73J/DS81y6r2aWDizk43128zcKRswIZssTSB5q1WLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iWmqHDI+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AG4jeN000699
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 04:57:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NHoNWOHKFoshFaehq3UAL9DcaVSVzxtCgS68zrHmy+U=; b=iWmqHDI+XqMQwe4v
	9CbIIBiWLCwMLdpvQLEBudV0YkG7FD7tlCKAZFjpm0c7gMOLkeUgoewfEa6pn2SG
	RiQaGuiUz9EbzTTjI/yFNxRi03Rj5egczyBJN0MDC0JmVp1nKssq1uuyrkzRAjp8
	j3fLoAPdGXnHG5eoUVBdjjLXLJfQCRo8hDNFcdIxC0ge9K6BRjzi59vh3Ibg5dNR
	IHwpQaWfx1EdXfOOk1Y6LUiG6DnOcmGHSlKMeOMdSLNwzFa8ZmvsEMZ/Yjz8XyWx
	LOJIz5U8olJkBY8qh3HRFoM7BhwU1/vRtQugKRyoLW5Vzxjt6QifvrkYhm1n7YcV
	MezMjA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd3161s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 04:57:13 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-af91804dd0bso1068041a12.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 21:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744347432; x=1744952232;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NHoNWOHKFoshFaehq3UAL9DcaVSVzxtCgS68zrHmy+U=;
        b=h1ZrRau6sNvIbZogPnigvwAgpVjHFM3mk4Za968leBcireK09q/gI2bRfsl3Vuu5rY
         mT6W5TqC41nSpvnhrV6L5KJMkbmqAzDs4bGAcz9kZ2b5+GnuCQurGFCuI5z9E0t9Yx+r
         jSWlr7V+zK6hveQ8n96OwM3tsnYUrjNP9nbpILu3VAXm0wSBNyDYCkJWuIFi5CoD9xxi
         Pa+qgqs3vRegtNDqohCmos/lhsRk8bb9cmyv2LQltLGw3eUPzjkfs+ZKNzrTzm+wfD6t
         cTNhTs+H5t/LRXBk63LysB19kZDFRwk7P87otGk8UFyJyEhpf6Uvi77L3MqVLJxtxG9p
         nAyg==
X-Forwarded-Encrypted: i=1; AJvYcCVrXswaAponIYphCmBGiUMnTf2eqbH08vKGijGjkxSZqD1qeggU3TawibTOPPFesYzC4t26/cfQhFFj@vger.kernel.org
X-Gm-Message-State: AOJu0YyjzaKaOPRQriy4Yot4YYqEA+pQUOOLDReVncmAXbrDfpY78L+d
	s7fgliYlU4hOebJZZQRibxsjcoGXbvIv7aPYt3cyHFNub3SQhZvF7S8xe1SZ7m2G6C2kx/cPuv8
	p+l/UCypmDjh2xOwXmRJtkz2uojAJIY07mQQhOG3hhis8Pd3OGHpfNBS40kvI
X-Gm-Gg: ASbGncv4HZdm7xZ+dOmLXLAm19PzXa77nLeB7zAx02CuiRFtORfEfXJK1kCyebZuFGQ
	8Adw+Q9msF5nTta96qYdJkC3TXICrTKOzDfJ7mBKDNv1HfplJ0+eofl89KTsHBYDi5RCGAhseei
	QAvo5PG550bfym2OwV10V7mfPKVPvtM3zfkMtcGp/Jt+9UDySvVWe5QkMvfZevAuU7NUPk5Nwq3
	9P2EPF+ks3fOyuDTigRpsQHjWwnmOaLS6jV5UUlKQhl7GkMDy0yQbF9jQDNv4igjGA4iLFNWlLE
	Tp7UB4G3xXNVRFJgJYeBPxyKImTI3o05Q5bEiras9BWizf5UICG+
X-Received: by 2002:a17:902:e886:b0:223:58ff:c722 with SMTP id d9443c01a7336-22bea4bd841mr23399055ad.28.1744347432340;
        Thu, 10 Apr 2025 21:57:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3LVdho25KSR2dWoakhkg5dqqnrfpvHUoqN63RdHfjyjqEglVC0+177bf6Ti3GXNg+PAlyWA==
X-Received: by 2002:a17:902:e886:b0:223:58ff:c722 with SMTP id d9443c01a7336-22bea4bd841mr23398735ad.28.1744347431910;
        Thu, 10 Apr 2025 21:57:11 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7b8c62dsm40005325ad.95.2025.04.10.21.57.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 21:57:11 -0700 (PDT)
Message-ID: <bf5f3517-13fa-4e8f-a22b-02be383a9148@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 10:27:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/6] dt-bindings: sram: qcom,imem: Document IPQ5424
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
 <20250408-wdt_reset_reason-v1-1-e6ec30c2c926@oss.qualcomm.com>
 <43dd7191-c797-4d8c-af58-03fc0eaaa95b@kernel.org>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <43dd7191-c797-4d8c-af58-03fc0eaaa95b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: amwXojGm7arf92Ok3bnv0f_zDWigAaGq
X-Proofpoint-GUID: amwXojGm7arf92Ok3bnv0f_zDWigAaGq
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f8a129 cx=c_pps a=rz3CxIlbcmazkYymdCej/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=gjhQkaFbtYs2ieCruLIA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=797 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110034


On 4/9/2025 12:28 PM, Krzysztof Kozlowski wrote:
> On 08/04/2025 10:49, Kathiravan Thirumoorthy wrote:
>> Add compatible for Qualcomm's IPQ5424 IMEM.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>>   1 file changed, 1 insertion(+)
> Why is this RFC? What is not finished here? I could not find explanation
> in cover letter.


I added the IMEM node to retrieve the restart reason which is used in 
this series. Since I wasn't sure about the idea which is followed here, 
I made the whole series as RFC. Going forward, I shall explain why the 
series is made as RFC in cover letter.

With respect to this patch, nothing is pending. I can separate out the 
dt-binding and DTS for IMEM from this series and post it. Please let me 
know.


>
> Best regards,
> Krzysztof

