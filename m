Return-Path: <devicetree+bounces-201930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE0AB1B4CE
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 15:22:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AC681883178
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 13:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13F7F2749DA;
	Tue,  5 Aug 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SUOyD6o9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EE92737FA
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 13:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754400173; cv=none; b=eH972mcaPYqYv3bLZr01U13Uw9DqukBriXY2YbSFEABMi/zaWgQzX3XJ2c0rv4abjfJjKQgFezZ9rr+O92+xeJ4X+imC/fMyBGExcO2ultEto8hiJFpsq6FgACYr0n+70wThxAAfwVV/7POm3gwmxtdYn7SJTA239JFA/Pgvadw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754400173; c=relaxed/simple;
	bh=vM69YlZ1vil1Kc6o0Mk0jcGWkrgMRscriQoGPfFNdic=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nlvqOlIjgFrP/Ehs/hWFRXd69Jhaf8Ciqc7FwLR85rvQmzuTcEhNFZOGVFEwA3ZaMJEsTMFWQ2nKsdaURwUU8VIX2iv1wbcCeWV+hfQlueFAxmhTEQTnJqsZrm372l0qXPpE0gWXN8byCyoT2hbFlf9UlYgWLAPDAVbb5GEbuJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SUOyD6o9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 575AZ3JE009970
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 13:22:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	szCBzR4GviCnbp8YCyWuodHs17KNEjfZFGcMBSEkhp4=; b=SUOyD6o9vp0ATFRw
	+BcD3UNJgebeKKlDmEfwtUF9XNGt9eeZQ72fzTPdrIZ6EnBrsiMqW6JQuIZ/QuRN
	xkCEdSTm43qqzkbwgcgNl/IcnFsyQ+FYNGt48catnX5w2g6K1aHX2+z2w3lqD4lB
	CUtzLNmHKciOXyFUa73mTeV/FlIfZOkEjC6nZzXnq5yOSaxyttljkUYALMswg9AY
	wTLYW/vcbIvrubEm+hzOn07YLH2jYYHMK03jITDbJrvqty4St/FsLEQg74U8s8R7
	99fQ2YR6uw/wJGxgM4x1CfuoOnL1p457qgP9/k9gFyNhlixb1g38+66mliYPYWQu
	5B5qIw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48avvubjfk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 13:22:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e7f8e1dfd3so43741585a.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 06:22:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754400169; x=1755004969;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=szCBzR4GviCnbp8YCyWuodHs17KNEjfZFGcMBSEkhp4=;
        b=Ungr33IvAcP42IQxr/kPT6gd6tQDlY0qQBEYLGv5Yj2snPyXkyQnc37lm7PHQIzmkj
         nIdVIAOniK908Nn0d9MuxgLsAWcjSfrErTl3Q/OQtUFYhTJESdVr7692eo/dB0mzbBfs
         pnaFTXSfwPTrb8EQnHFBEoTtiHvLqenJfp+o1kzpenb2YmP2nAvkmLmHRuZiRlosbQ3f
         u5M/sDTysCu3ao986NU9wr5XvYOjMMWeuJ6BAKGKJOC0j8hg/YHskWKiZtoBQNzHkSu3
         brlC4xxsOF3MwRa1EVc75kNSDwxIKUSdEdTpfpR2nIs9SXZYuduPlg600WiF9/MBdXdL
         1S6g==
X-Forwarded-Encrypted: i=1; AJvYcCWvkqe2pVnfiAZvl3IFW/XhKYAoyQQHq82XXCjUW5KkwdY1jo6cfg6rfOK3CRG9DteLcidGjosCXD1O@vger.kernel.org
X-Gm-Message-State: AOJu0YxzkHROJqoH1QS2TtBvAiw+/8epqIqVjimLl4cP3jOjAQH7V4p5
	crdtUTNEqMUAisq7gC5S3vpx/wW7XCYvayY8jSi8UD5xjnOhcAu8z6g3HhlIhJTHrlKzdelVSX8
	C5MbfTafMwk9HGpa0mS0LxfwB0f+PTqnXyQ+rIjdcJASb/yXZcT/UTaNeRz9PRvxZ
X-Gm-Gg: ASbGncuBhvkoYupwcj1ZB0g0A3UZqs823TMu1FWp3GssB0CI/SL3dMf28mSyI3ncJMO
	CtCCCBenvknWPnNkCQGQqOMntlROraq6UH1Fy4Lj3UrUVxuDOIPJ8r8SwqGhBrNCWrBp3WYl7Na
	UlIyEh3CtWd9q1dt3sQtluTUtULjjgNa8mjT1IWcE1zD9sBkvvd+wVyVHbCfeTRz1q2Wa/lFMZI
	QiuYF0jtwUjVyowvkIE6byaJfFFbGUMYt3GyR9IpBbg9nA9yqfgRNS4jj8RPyCWcSTmo4njC02X
	grike2xDOO0irAZjBedOr0H4pYBM9wxU5rrW1GWURK+GPuDfDIb20stXD7xQtSQc96c5nn3X2e1
	8OFv8gXE66VFjxIS04A==
X-Received: by 2002:a05:620a:404f:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7e696346fefmr816816485a.10.1754400169172;
        Tue, 05 Aug 2025 06:22:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFXEmIee6IbP26kuAnbrZ1NnF5HlWu3jLRuHodegxh1SfCqr3ws+7CGE6x21Dl6JbNvMNXMw==
X-Received: by 2002:a05:620a:404f:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7e696346fefmr816813585a.10.1754400168652;
        Tue, 05 Aug 2025 06:22:48 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c099sm892748566b.108.2025.08.05.06.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 06:22:47 -0700 (PDT)
Message-ID: <95959a89-655b-4ac9-86ba-d8d943809b6b@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 15:22:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5424: Add reserved memory for TF-A
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>
References: <20250624-atf-reserved-mem-v1-1-43b1940e2853@oss.qualcomm.com>
 <0826de9f-0125-44d9-84cd-1c52ba199a4a@oss.qualcomm.com>
 <7d641576-7ec7-46f2-ad53-e0b8b36351d1@oss.qualcomm.com>
 <64febbd6-abca-4ab2-abe9-93812bc115cb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <64febbd6-abca-4ab2-abe9-93812bc115cb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA5NiBTYWx0ZWRfXwGHFXSPgtrm3
 U4trfT2c7e/Vecg1aC0smIwKdO9jbVIipL+4D65eIz3/JUNi9RegleQ11p/04oZkrzSZkMTC081
 ZYKotSLpRdPoQBdB/9LfSMZzCjJAOg2Ey18bYbZ5DF4fele10ymkspw7bZiPqL8kTpPE/q7NW/Z
 1YluyvU4mb6IZgl6TrM4F2mz5E9mNCQnJ4XnnpblPAJU5qwo7udJJP3Q944bkzVruSVS8ywDilM
 iAaAzBtq+qWFfj976XD5ZDIhAK+GJ/I7xwviFNU+/SB0W6hc03SzWzRn+FBCVv4PLPm3oK22joC
 Si8qwNoBLQxwd/k+yGQIJ46RoHrOiVyG1qTqSZH/aAQn/SMRxTcLqlEfM03qmwQopwTi+qd7V5b
 TqFYXVfHZV0B7J9inRcXpdvBTRYPacuX/M5y2cpFv7Q/uCqWpYHN4Lp0N0VhrOMssytuL67A
X-Proofpoint-GUID: YoMXmwZY8jvMTBDZ9cNzPAPw9y5UL6j8
X-Authority-Analysis: v=2.4 cv=OYKYDgTY c=1 sm=1 tr=0 ts=689205aa cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ZhiXV8X_0r9cGbBKTBIA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: YoMXmwZY8jvMTBDZ9cNzPAPw9y5UL6j8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=519 malwarescore=0 adultscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050096

On 7/23/25 9:04 AM, Kathiravan Thirumoorthy wrote:
> 
> On 6/25/2025 10:20 AM, Kathiravan Thirumoorthy wrote:
>>
>> On 6/24/2025 6:57 PM, Konrad Dybcio wrote:
>>> On 6/24/25 12:36 PM, Kathiravan Thirumoorthy wrote:
>>>> From: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>>>>
>>>> IPQ5424 supports both TZ and TF-A as secure software options and various
>>>> DDR sizes. In most cases, TF-A or TZ is loaded at the same memory
>>>> location, but in the 256MB DDR configuration TF-A is loaded at a different
>>>> region.
>>>>
>>>> So, add the reserved memory node for TF-A and keep it disabled by default.
>>>> During bootup, U-Boot will detect which secure software is running and
>>>> enable or disable the node accordingly.
>>>>
>>>> Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>> ---
>>> Can the said u-boot simply dynamically add the reservation then?
>>
>> Yeah it could have been done in U-Boot itself but it wasn't. 256MB DDR configuration solution is already shipped out and the stock U-Boot enable this node to avoid the random issues.
> 
> 
> Konrad, Do you have any further comments on this?

I really don't like it, but fine, I won't be blocking this either..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Please make sure that the next time around the bootloader reserves
its own memory and doesn't depend on what the OS decides to do

Konrad

