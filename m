Return-Path: <devicetree+bounces-223750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC633BBD4F6
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:10:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6203A3A689D
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 827E725B1FC;
	Mon,  6 Oct 2025 08:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jEp70esJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E20825393E
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759738207; cv=none; b=Q9fEv+2WnvAEIJpEa34t2mXlpH+YaRo4nq4RIzbP7YlxJ7nh/C9PkXwQuxQ2dbg1ADfc/ulAndpJ2iHb/Ag9UUmwi2B4flR2eR8tyzrgXDjTzzn0QkQXcFpa533JY0xmmVhkuVAWwaDJq1Je7NXK1SBlXP82SaUapEOUJVUFdFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759738207; c=relaxed/simple;
	bh=rRqbDNJJozQdwKsc1j1gRxEQnE8tCHyuKOkR/azckzA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZZaqNIqWeHZwAEfKfqH+n/R5NtDew8lcDgTOojMS2PcPmcJnm6ff8NdSGGQ/jmJoIhGPa/gLfFj13ZV3XXB0bb5QEGObUBumJo2v49lgmujTs4V0eM5Hq4oXGzFNy0zXZYa0k+AZn0+FDDTxBZpSG9KPWuCGHBVFvEi11CBSuv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jEp70esJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5960H6VB014337
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 08:10:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	45B2sK23pf0jnxjuCOALGNeyqT1UiqcLuxhMNfIiCBw=; b=jEp70esJYas4wP69
	EowecLSY7WmaabZdARHwHT9ugwH54IG+TlFi/IhroB7Lz1f1yxlKOkS8J8Y4Z41o
	Px2+FrIDWNQqpLXwEM4IzeCtnPbtIN6o58bre1rNlNxnRxrd4t4k1B3Ry10++8TF
	mlvMshue8/KWZHpR2XMJDBtR2TNdm7LEzdbpNWPJaquD/OQ7u/j9PqUy1XxvcGyL
	o/LzQgyYOIHyGJYMVeVtcTOdsqE9vvSePh0mSsHdf0QpWWQqCmD7df3FBeQUcz99
	O9RqVrC1m+eA7D2i5hfzl8MQfDapQSlElEBIw6B/0KKGNAsQzWcMjoDgH2AbodBR
	Rh1i4Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9dufwg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:10:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85e23ce41bdso96296285a.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 01:10:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759738204; x=1760343004;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=45B2sK23pf0jnxjuCOALGNeyqT1UiqcLuxhMNfIiCBw=;
        b=Iv8hemQ98W7GiPOYR4E4FmzruoFsJYn4vSw3E8GVYpWPIP7Gb2swRx17+eJTT34B7P
         ltdqzbFm5ivB1VbEcIUzdUt6mRXJzYsn9Xh2GIHZbTr0Pn9pQ1+K4HU2hQeAv+Od4gEG
         QbGAF77wPjJgHPdlcfFzFdThIEvMgbnJKHsZBr+XsVS3Ds9Is0lx3V3iS3wt6KyZqxi9
         CbeI8sU9scDq/aOHhKjSovboq+JClyro78KTs09Z4jv8hsuLR+G/RVLs+C2zl//YhWU0
         RdV2c+RDlzLD9/TkDhAC9RgJVGIW4gRghxj0Rqadt/I8vf+6/M/9MKVsOcdL3efug2eX
         Oz8w==
X-Forwarded-Encrypted: i=1; AJvYcCW12/p4epOQx54Nb4icHM7n46521UxIMmRyoJkbjEo4cqnUWX59FCGEYNqWMEZJt8LSZN+tD6WlCH1x@vger.kernel.org
X-Gm-Message-State: AOJu0YzxseX0i/eL41aF2rW2qn2Az5BwvM6Z0lKKEyoubBHAkiJdXyKL
	l7V/GJyf7b3znevytIJ9SHRb/ZdpJNA7XuDzh9mRmFaxVe5rfWOCukyFeDMf0LaQmrg6tVEhQgB
	Va8xPKgDGUv9vZ+V8BLitghAPGYuXy3XEBBGkaRWUacUc4WxnB4F3cNqb+7zlom5a
X-Gm-Gg: ASbGnctDiiIRN5pchIJPpjacRiJdn0fgDBGYcQOQTVW+ln4CFcyESWogUIsQfaa+R19
	bMS7T109jjr2+1JzWOfgoJlMpEIIShWSmZ5ixojikrhyoXbL0N4TAULtVxWAgY3sDUkv1+1Is0S
	EjfQsN/X0sxDhRcbjqEOb1n9RHzmcWSNk//IuXWoPSQ9MpzHKTZ1BQRREkz1aCp8zT3WDwGyUZB
	yklnb9pWqN+M1sGs3tVjufKP/XLG3CgFLujGrjCKEoWXk77T8IN2di50Ijp7U1pA8ZWo57tQ1P5
	x+ubQ7Gh4XczqtFIHrIxL8yoHeHGi+GxzsTqYHJ0NHI/0Pk3Xw3vBHaUmZe2e0q1of3DYtaDxpG
	MFk5Wpog2XkhF/ld+6jKCpnzWVCA=
X-Received: by 2002:a05:620a:28cd:b0:866:6f75:5928 with SMTP id af79cd13be357-87a396bde94mr937573985a.10.1759738203819;
        Mon, 06 Oct 2025 01:10:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcCPRHpyle444crx8NKZd5cvmWSUSXE2YNbj6mR8rWkfiaXnSKsWJlcawCI5kXeKEqRWLX9g==
X-Received: by 2002:a05:620a:28cd:b0:866:6f75:5928 with SMTP id af79cd13be357-87a396bde94mr937571285a.10.1759738203331;
        Mon, 06 Oct 2025 01:10:03 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4f1d1sm1074256066b.71.2025.10.06.01.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:10:02 -0700 (PDT)
Message-ID: <6807638b-b212-44b9-b7cb-e53e1f11c0d9@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 10:09:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] Documentation: dt-bindings: arm: qcom: Add Pixel 3
 and 3 XL
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
 <20251005-pixel-3-v1-1-ab8b85f6133f@ixit.cz>
 <bq3jeaxksk33ntdk32ojsdyh2d3qkglvgj6segtc3acizlkrhm@fvdsccdbuook>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <bq3jeaxksk33ntdk32ojsdyh2d3qkglvgj6segtc3acizlkrhm@fvdsccdbuook>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e3795d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=c5TqcUTYwFkuCHJDiosA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: PzKlaKSUf5MSpuJnVahaVdhvGVTo3BrP
X-Proofpoint-ORIG-GUID: PzKlaKSUf5MSpuJnVahaVdhvGVTo3BrP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX69mbjTWF0zA1
 Dw1eJt2SQtKA50OKUeBGb57jJC2+9L5AOE6XkoZLvMKjH/XmhvR56KLB9l4S6CkGpROfKQJ5L8B
 ifJlrf6hgYkoBw58EmZ/xaz8X7K904SQ//k5fpgmhl2bwkFr8gdoFZ0EEWQmj0VNX1uajHHPlji
 mqTz+DEqPJEEtgJnS4bueKW4xS1yqM3mu6W1fbivHQIUZGGGl/QMjDeCTQQ5cnTfu0stltgOJ3w
 Dmdya2Z08pnsLH1fS2p5h1c8st+4Mzwj0bbfQYX4OsaOTtTN6GCpldi56XjqBnqXMbdmoDvg6TT
 ZeVeQ5Z3a6zUYejG+1kdeSA6stdpCp8fSn9jmaHCBq914ws9MkBbINZN3KKMbyhHgzoU+BIeR7r
 E1mqDXOl/9ae6daFJVJKgcRocIY0tw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_02,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

On 10/6/25 12:21 AM, Dmitry Baryshkov wrote:
> On Sun, Oct 05, 2025 at 03:16:28PM +0200, David Heidelberg via B4 Relay wrote:
>> From: David Heidelberg <david@ixit.cz>
>>
>> Document the bindings for the Pixel 3 and 3 XL.
>>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index ae43b35565808..2190c5b409748 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -976,9 +976,8 @@ properties:
>>  
>>        - items:
>>            - enum:
>> -              - google,cheza
>> -              - google,cheza-rev1
>> -              - google,cheza-rev2
> 
> Why are you removing those?

I removed these a long time ago, the base for this series is 6.17-release
instead of -next :/

Konrad

> 
>> +              - google,blueline
>> +              - google,crosshatch
>>                - lenovo,yoga-c630
>>                - lg,judyln
>>                - lg,judyp
>>
>> -- 
>> 2.51.0
>>
>>
> 

