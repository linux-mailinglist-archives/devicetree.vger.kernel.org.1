Return-Path: <devicetree+bounces-225441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E13BCE15C
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:29:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8849189ED73
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 17:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D4C4220686;
	Fri, 10 Oct 2025 17:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RLDfrb1s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2224B21CC55
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760117355; cv=none; b=flSt0oL6J3lga+qt6hYm7UfzIqYHoLM5ygWYjpnEkHvbYjiszmO7uD7LfXu0pSr97c2M1Ld8NrPinE6mPygWLeKLKRuby91Fgz18iymC4RR8rnp4VRRDjaSueqTH4Ii5hwg1UCrDNNUEQ4xHAY4dH5qv4LTTtah+2rlvy8/+19M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760117355; c=relaxed/simple;
	bh=1jCvcJTXVwA5O1ApKoCsAYG/yC8rSzDqgspSodn+WO0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wa4mBIV4d7ETXxU/SJGp8lkFdg9FDlibLWzxlf/G4+RZDmsIE7M1Z37DmdDegOpdE7iVZVwJEI1ukJmQjZwn9jvrDfKMYWut0zdtzlOdTODWtVC0shamBKwEzf5ycD6o3vTsuPMXU/f+PTuqzjCfL5DfpKFX1PpXQkfFMNPXPTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RLDfrb1s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59AF1xX5008100
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:29:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vm6XdexpWZwlzx/paEBfThj6nvdnnZd+ZlsrP/K4+mE=; b=RLDfrb1su/DFgEtU
	zoxLm3CNAQQEW4VXMs2zsEi0wmTqNABwVnEh9JqTsAXtPoeIbPl6zyV3kTvsKyMV
	xHoQpdGit+tLLK06eKbLeKZIXWPo7gzL/TCJEE/7YQBVVZqBciqNXFvPSM+CRxxJ
	3kdlOYUhSyuHrSamaf/m5qPqnzD9SE/aIi9YUkMu/GJst70xB/Y6o3oCAygkCizl
	BOvi1D2OBf07P517tmbdTgQm61hVab9oVvoeAmXDkPbwH+BP7JtGFFCbMssYB9a7
	TGHj4vyT27UHRcgPhuMJTvHlR3jF/0jOcmwXH0sNHxaBmKCcYxOpr21saUCWYVUB
	Jl2FWg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kq78x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:29:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-853f011da26so113608785a.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:29:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760117352; x=1760722152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vm6XdexpWZwlzx/paEBfThj6nvdnnZd+ZlsrP/K4+mE=;
        b=jp4dTYGErW1mSmL15ApTpxcOCSri3tK+n7Y/CgzyWOTBZP/KbOpUV9YbDZn8akCtyI
         PVgHdX7uMTj/fwHkSVCvVt6puPFkXK2uOrL8wLtgDzgHTNXt92kP1tLpKR6WVxB76lMW
         cJ2AI9uDUzCiMLYjiQCl+vZyjcs2dWVCeJEVWYTTPxsV40YJfspX6XiveZdpvg/o8w0a
         9X7IkCDpXJ38LBgcSsdIpDeoDTOogm3rjHFcwawpyxjJFKsaBKqdDcYkgruvx95oZz8X
         nrZqx3i3cejv9RXIJoqWvk08hHpYzhJd8lbE3Lt9l+OppAL7niycCzX0jSv1QKTD0XWf
         KEQw==
X-Forwarded-Encrypted: i=1; AJvYcCUXkUwja4nxNJolJnjN7Ls+hJ5k54EdHpeeOTCsiygAdg2miIKyeROUXDLZDbLd9vSc37kDPWYlngfw@vger.kernel.org
X-Gm-Message-State: AOJu0YxrB1+CokHdgwbeJOk+zJ2hr8LMupFYAZsm9SGguiM6JqBYYCjm
	L+xCt/LchK3CIrfKbJekF6z+Pta1JIpqwx5Nw2Nk0fdnHJApGON7FsDRwkWdkBfEtw+hhSqSrZL
	6PvhHBlzo941V8V4n3XqTBYsNk+pWpn0CUB8HRMPQqyQi5FnSCNbCCQBRjK1Sjfnw
X-Gm-Gg: ASbGnct0S4N/V6GffJRJO+i+hO4gdqUieHQlBH2CnWd7a5gxBVyvYkRQ2mi8b5mNphu
	LQJRAqI5bDZXVlRIKtbMhmjdeJ33+BN/M79XqdKOJJ808YQWzUl22YXk1dW8S2CDKXhNTCF3F5h
	a9NC06pQSTIqGKod4/lIPGrX/HGjQbO8+Fkdqemxj/idaOidf9P/HzXg1M793c67uaugKnDYQsy
	Vsm8ynu0Frfenj6uVhgbgH+SzRO8SXqGwr/PYTBsR/aJurULS/x7aRaAXcfI/FIuc7IulF5JPrt
	z/aOAWBAqPpJGbk7p2QXqToVQBtTrhTpgZbP+Oi2eywQQLdAuTbAFMaZ3fnWXJ1tnM6Nzp7xzqM
	bvdlSfagFq2VIxrJVJGSKfw==
X-Received: by 2002:a05:620a:31aa:b0:85a:4bc8:3d2d with SMTP id af79cd13be357-88351fd204emr1274390585a.8.1760117352143;
        Fri, 10 Oct 2025 10:29:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFogdMoGDOLXhTvrD261l4hPgK1+3hErleDIhKiMNxklPDKrnCjnpDVPPlCJiKdHsWHYFcxXw==
X-Received: by 2002:a05:620a:31aa:b0:85a:4bc8:3d2d with SMTP id af79cd13be357-88351fd204emr1274383285a.8.1760117351125;
        Fri, 10 Oct 2025 10:29:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cac037sm270610166b.12.2025.10.10.10.29.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 10:29:10 -0700 (PDT)
Message-ID: <f03e0223-2722-4d5f-897b-91209b6c12fe@oss.qualcomm.com>
Date: Fri, 10 Oct 2025 19:29:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: Add support for Huawei MateBook
 E 2019
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251008130052.11427-1-newwheatzjz@zohomail.com>
 <6199698.lOV4Wx5bFT@debian-vmware>
 <c6880fe5-029a-4f8d-a08e-81a066a79450@oss.qualcomm.com>
 <2386127.ElGaqSPkdT@debian-vmware>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2386127.ElGaqSPkdT@debian-vmware>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e94269 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=6KThAjY6i_W56qehSegA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: Sd_37IdRlvo0XiCIevYsbwu6sLD251rY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXzalBtvFP0DB4
 kvUAYATZ9DwyXA04jffmYk8SrJbid0XpdCaZWIgh/6AD0RMR6vLiVUHXwzfAtdhBqdH5unzS/BP
 eZoAhkt+ute9UYNGn+GyfgMTA+1zqi7zmIVC/Rca877KupjB5Cb2hK/SmFSHLh7cbiuswcrvubO
 XDfT+tlFDyGCmrjyP1hmdPW4ul6hXwMV3/M+Xopu/g9EisQOl6GLPJptaenUPaY8OrTf2Kx9n0z
 kBW0dhnFRNIQ/rERXIEOsUZ0FL8Xqj4g7SAZH0Sz9M8ajlGmG4KWgUMYqS8U+hcstVeckdZJkpQ
 2A+TlZiw30NKCM0HEGOQYq42qR8Qg+hPUU/NJ3Il3noVYfB/UyQbzKEpITwrZqaulGCcLS7nRui
 iq/L/cBXz0VluiNjEeXniTFmAa02bg==
X-Proofpoint-ORIG-GUID: Sd_37IdRlvo0XiCIevYsbwu6sLD251rY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/10/25 4:52 PM, Jingzhou Zhu wrote:
> On Thursday, 9 October 2025 21:58:29 CST, Konrad Dybcio wrote:
>> Please refrain from resending if it's just to apply tags, maintainer
>> tools do it for you
>>
>> Konrad
> 
> Understood. This is my first time to send patches, so I'm not very familiar
> with the tools. Should I wait for the maintainer to pick it up, or is there
> anything else I should do?

I suppose I didn't answer your question fully in the other email.

TLDR: you're good to go, it should be merged in a week or so

Konrad

