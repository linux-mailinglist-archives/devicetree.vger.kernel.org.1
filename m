Return-Path: <devicetree+bounces-201210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E70BB17BBD
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 06:15:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81BB0167BA8
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 04:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A821D6DA9;
	Fri,  1 Aug 2025 04:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aRYK9Flc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F991A5BBA
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 04:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754021698; cv=none; b=o2VyGRo2/KMw+Yin9SX9GZP6Y6sVQ4hq3pntuXYEY2iTLnCWWPWSFE9NsuJXgpAW5r5PNZdN54nuvKgyYMVX9BMOkEzs6Mtat4r5DIsC9EcyfDrkRU3pj4SnedMA+vgQnyXAA5JddsPtryKbsJl+FeKJuNs7zuH0+Ppk04rBM5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754021698; c=relaxed/simple;
	bh=Gh2ntd814sIoBv3VZBGnfUAB0tOVDMLn2NZVjot5dm0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jmNUtSykiJf5ay7Yu0xdbPKzq0u9CqIyGsxki1OHTsxfxYC3rycRGa+PHksfgJOClNSOpvHZg1mF15Lgxwa9u2f8EHgvRgVgEkwOMQkME9czu7uakoww35LCF8iI2ztcgR5WAxXwOcHRj/L90C0rFDMsXv/jtAzpYj0PjXHBl+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aRYK9Flc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 571104Co018845
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 04:14:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KoEUODVqVvmRTyBdHpSdPr4lOpOEHOdK4PtMa4kjFg8=; b=aRYK9FlcEoQPkOHR
	BmZvttV8RtzDfkKIi3R8nCQbqM7q9GCW24EdmyUS9oGn7Jd4wWGvtg3YIggrBDgj
	OfOzF4IM3QA0YgixlVE5a2mVycH9ltbmjtQvUJdmttagZqk9CWOV50EwOiRiHLbo
	9k+VckbfNi1qPKQqoR4Dv4Cqps2u4YMOxssdeT4gx8u/OBw9wPpF3eOhOfc2OsaM
	nGY/eWTEeC+PHWb4juj0P6el83zMykvuENPJDljTQOa9uoWAp9ReZOeKDSwkJfwV
	tl6xf7U+XXEAwvBookslk9RAwqzFhhjedGXQReWRFp9K3gNr2Dx5kDRAxCd5BLj0
	VoJEOA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qdaa7ee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 04:14:55 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b115fb801bcso2267111a12.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 21:14:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754021694; x=1754626494;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KoEUODVqVvmRTyBdHpSdPr4lOpOEHOdK4PtMa4kjFg8=;
        b=nxUcLz28elhjS78HImKXZ1BcFt6UmuCErK4iPympo+06A1gCl42/JPhyzc18Itb6aZ
         sNAaoaiD9PF71xcvg/TLUasHne/04TCY9WdwWOCymciSYoGl1SO80wvTBTLpItOxV26b
         /jbuBEsuEo9V5XaJbnBwYoP3K6AiuJrGDopjf1o9zVo5vPY+q9wODy1f4EnU3YcqXtFS
         lTqflTyOQNcQM6yBaCGO6jBTia2zfJi6bUusCAwvaE7DuIOz38jqXyQhpvuZlqNmwKxf
         VVtt6IbpHvEMdBMXjrh6sOeP49TSDr2231+59p7kr4JBJo733tPaCDOkQ07dC6UtDF2T
         C8wg==
X-Forwarded-Encrypted: i=1; AJvYcCWgWOMWxjJ6m3CGAD5DA7xEWviI+y2uQk//HzszisyOTrByLqIHF1beOcup4/XQbK20v9Rjro/vDpXh@vger.kernel.org
X-Gm-Message-State: AOJu0YxODq1p84ZAFyrhg0uVa9sCzbiKhUpe86BpJDN0XrsmwXiRSYna
	ZLtao6LsiWueMvQQ6n8XFbgCFSfdhMkZWpc5DjsZh5on2Vsioi0oIugHygiwzgm7Kaan7Yoj6JE
	DheGi3bCAPU6jCCimWwDWmDIrLTOjyAV5zxmGgc3gj38/URsGqq1WfYbL6gQt0osno2at7a1X
X-Gm-Gg: ASbGncsfL+JbAh1Aiwoy9K/0/P7V7EkQ+Q40sLB0GjNUd6mJnnIJpCXIlZef5WcRnIg
	6ZjZjyqhBjWpAcuWFMZqg6CihnwRKhgevWtNpVXf8M9pWToVd+hE37kAaQZR4PL7ATeLFJkw1t6
	Uhpqu/nYWqj7O3gf4KuMznKCdoM0OWAYYtnCr/PdbmQCR3ozvOtTpdm/flyS1sQJ/CPFr28mo04
	jxizTthaOvIYOgB7H0+1ocNtg+D12CG39JuYhnu/anwD1EQwxOEoE9ozp8WbF3A235IvEgxHHvy
	K7pZvUAO2TeUAEqbGLqitNorxTWx38X2RhNbewDCSfLXY+lf7aJTIX9jntS6yzZplF0=
X-Received: by 2002:a17:902:d4c1:b0:240:3f36:fa78 with SMTP id d9443c01a7336-24096a97f96mr161069065ad.21.1754021694206;
        Thu, 31 Jul 2025 21:14:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRs7ytQBzqDA73c4cijGGPqsYp4V5AKtdxtskR/1bICgpcEqSGo2+1y+ueP91TM0aO1GU+/w==
X-Received: by 2002:a17:902:d4c1:b0:240:3f36:fa78 with SMTP id d9443c01a7336-24096a97f96mr161068805ad.21.1754021693753;
        Thu, 31 Jul 2025 21:14:53 -0700 (PDT)
Received: from [10.217.216.26] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899acc5sm31273885ad.130.2025.07.31.21.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 21:14:53 -0700 (PDT)
Message-ID: <9cb06263-2a61-4acd-a9cc-157abb832d62@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 09:44:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] dt-bindings: clock: qcom: Document the Glymur TCSR
 Clock Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-2-227cfe5c8ef4@oss.qualcomm.com>
 <20250730-mottled-myrtle-bull-3ae03c@kuoka>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20250730-mottled-myrtle-bull-3ae03c@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: p0_H-9yHqqY50XKyybIwhUq3BO2lqjLP
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=688c3f3f cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=axNqULdi0T3Ot6y0ZkoA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: p0_H-9yHqqY50XKyybIwhUq3BO2lqjLP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDAyNiBTYWx0ZWRfX/m19xjXFeISl
 lqwBz1XpOxwCuvFEFWV3Lm4c65ZMBiY0U/dJGsWhoaSLEdrP9X0VN9dq5IITpL7OIBnyGuSxtmE
 AhTW2I/ivC8nUGgT5+3hi9gz+u6ez7bkcbzZKaSY8BcRgB723S9YovC3L/Iwqr/YcAa3TRGwKmy
 a8xbacLSqfwU/Co5Drpzz8n8l3ajMfvUYOn3Eta5QNINCteo+VWDqqugruHbGfi+cc4pH4M4+02
 bz48kxa7pNwG3Bnz1Uc8KzsDtr+gzA+IEfrce0Qq7AK2+7LttZvuNLXJ3TBIB7iaEtsUIHimxwC
 T8JD9+0fIMpSK3qNrwdPnrPh2pFsvRZYubEV371JlorFEshQ/yKlgFzDJsdscG+BFxYABG+K5og
 VMkt+efSSqj4rtMOEvI/z68nQ1uQkLxmMzL5MyCQXEN9/fTyZOA8IKt2vp4Bo3uL2IzyCXBN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_04,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=945 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010026



On 7/30/2025 12:47 PM, Krzysztof Kozlowski wrote:
> On Tue, Jul 29, 2025 at 11:12:36AM +0530, Taniya Das wrote:
>> Add bindings documentation for the Glymur TCSR Clock Controller.
> 
> Same question as for v1, what is Glymur?

Glymur is the Qualcomm's next gen compute SoC.

> 
> Where is any DTS using this (or explanation of lack of DTS)?
> 

Krzysztof, the DTS will be posted separately once the driver and
bindings are reviewed.


> Best regards,
> Krzysztof
> 

-- 
Thanks,
Taniya Das


