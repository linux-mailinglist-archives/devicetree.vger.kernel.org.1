Return-Path: <devicetree+bounces-206672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E7BB2D3DE
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:06:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CE0E2A19B8
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 06:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B42257855;
	Wed, 20 Aug 2025 06:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pORbeOdj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1447A237172
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755669983; cv=none; b=roqUBTz4kVDtae1IRk08c1k+CGAzZoTI2EikqCG0t4PmyuWpMR9D2pYShUHBWbsgCKADEnOq0GhUcvmCKY6irP2KfXCbzXkEDF1aQgpeL53AFOu1kL5Sk0DLHtUC6TyBs77zDnbaB9mwfCW6o50gSau62afpty3xK6aozBfKazU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755669983; c=relaxed/simple;
	bh=OAYi4ydQnL8gJ7D3NaAl3MOZsDT1GK3ec/6XjP4fSxg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KRCuFJTNn/kRu3v7/QD4TTtIhwy4wQz9sv8fMMDZrUtKlpclCbO6s3HLrZjwwlansyRLtcMrGLdSF+V9mq5lPElqmFGHFEe+49aeJ5cVNdAtbhkdhrszgm/YS/JV7yaIZVdcsfQuZCDsquAiOomyUSpOpiGVrXPOlEidasPQAhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pORbeOdj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1olvo011124
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:06:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	59SyR1NERy3Y1jC5JNhL4yeE7jcVGgkH9O11kosKuSk=; b=pORbeOdjKuCWzxmP
	Xj310mNvt6KzKO3evFW+U8qvLljVoOPgxbF5zC1UpP8TjN/0bRjQnc0kaIgcbl4O
	YVltmMNJIdmUKGQ9IOve9iA4D5rCB7wyqa/R9q8RaYcJJ3qIKy+YdkwYoRF5xjE+
	y2o1E8QbyXwb0sOid/GPtQd0aM5byxkH4DZLUKtxjiHRtQbenl3nU7OIA1vd1m7u
	tRL0LjrKdt6WDSz+jZr9gJH9CqSxHM7h+JlXnsiuDjwjUSoAUo7X9iuq1VhJj+Ho
	vPAGBvKwMHavRkBKyyqdRvIW+VEREZ4UX08uTs5Sphci2GpmB2Z3BfcLcf3JuEs2
	CQ7HmA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52bgkb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:06:21 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32326e72dfbso11620568a91.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 23:06:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755669980; x=1756274780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=59SyR1NERy3Y1jC5JNhL4yeE7jcVGgkH9O11kosKuSk=;
        b=PPvDEpGq+cHq1xUy5GIhne8A1vk+IvrNIJFTU1s+ayczJ5co5Dd3Pk026v0zhYU4XT
         bG+dq2SiRMzP5bJ4IgqDsEX7r3UqUFaeM35+q+NnVJfiEiEHx3TS9+simgPrG2zxakN6
         eaxiSXqp/Fv67vDbgOvfaTmwbXpxTQvOme21Q7CaUw6rT1mY9yVN6fZA3dC3xKPDKjL6
         uaq4qgvenU6rK53yEy8MxjPTk/yPXuw59cdAS+aMxDTK3OBSQ3MwnkmRuCpF/qVfK6PA
         pJlOn7oO340B9BoXdeA+SRZDuL8kXAknhOWlYCK6yf8B2FTU5orRS/a18JVZHAwcWivP
         q4rg==
X-Forwarded-Encrypted: i=1; AJvYcCXU22qQUVwjrpoJ4qA5J6d5xAcsqvgkd1QKxwpzlDULS3hq+s82LAmMxMbhrXeiVAGwaCdFVuDSSHHQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+x1wZxBfAIOCbG+ncXLutCVUBHtDk3qR4lmU90hobnTUhZfSH
	iNGXNDf42QBqT3gMD0R6GwjjCrkkJVNBptJwdxFymOZWe5CYfJVu08oPvIzlnRU8zHNmrSCKbKy
	oZ4oeEmaOpRngsw3f0ApB9k42dkPMtfajvFx+JZ0rQGW+AYOhM7i2UxnwBtH8nSmK
X-Gm-Gg: ASbGncvh+iZLmkd6JGKcRK+XJ2jWujQ2Ogt+tVeFN4qGb4XCaqH3sxA5qfOc6h++nYZ
	uBJKLiUrj3eO/6EBOQsgymv77oglwlDpXBDHvbMnXSjCCl9hJkDRK+eJXC3HjAexxf7vwOLZe+z
	+NHQQONGnAfKUqa1L9A//XV2qrybtAoIt98UsHCIQmk6jhCshnyT8GiU6j7q30yk0sIysbgDkpJ
	i/Y5YKyPG8FB2INXh0/8PIXEwiSJqRxF0tZA1Vv1UvAIIlwR7bDBAPtW6cjcMHrsR/Pc5N9vJ+a
	ssh8yQ4xWA0jRCBRpmiDELSGmoO5JggaTloQbl0K/ehykddSmTqelOtb03HWGeTLSxSUevQYqi4
	vMJ7j
X-Received: by 2002:a17:902:ec88:b0:240:a430:91d with SMTP id d9443c01a7336-245ef0d5915mr18790055ad.10.1755669980398;
        Tue, 19 Aug 2025 23:06:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYNnNUSwyVV4DO93t9r+GVSsYWrJggZoyswSr8zmZ7BeWtlIFh6WiE7AN8ne0wvDrWqtx+YQ==
X-Received: by 2002:a17:902:ec88:b0:240:a430:91d with SMTP id d9443c01a7336-245ef0d5915mr18789745ad.10.1755669979933;
        Tue, 19 Aug 2025 23:06:19 -0700 (PDT)
Received: from [10.218.15.248] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ebc4esm15327645ad.115.2025.08.19.23.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 23:06:19 -0700 (PDT)
Message-ID: <73921d66-8258-4f82-95a8-f4e9fe8acc8e@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 11:36:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add interconnect support for Glymur SoC
To: Krzysztof Kozlowski <krzk@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Mike Tipton <mike.tipton@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
References: <20250814-glymur-icc-v2-0-596cca6b6015@oss.qualcomm.com>
 <7806e54a-4355-4173-91f7-8da98cbfeef2@kernel.org>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <7806e54a-4355-4173-91f7-8da98cbfeef2@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX9BMTMmjr0eAC
 Sep2JD8+VwRr0mleoGX5wz6ZkG/30Xn9y/e2uIIKFThxVmyMd4qGIzSYUuMcCbliFgrkKjjauPc
 c6Fb9vgQV4fj4pmgnPs6I8umRiS7fOvyT9yj8aiD/TZJhJd0uycMiliR1uK7JEsfg6UIW9rfBq7
 532+poNY8aYoPbidteve/9IugMixtljDGlaKN51WFGNyMTvwKHmLpAdu0RyGEbmr4ogEW3g7+0t
 ohZCjRMlb+u9M1IGnaBJNJjyHcCp9uFvP0BBSRPSs6LT8QMvREmS5pIGQqoc6bndLb3zepz0Qst
 EmsCfTTgoiAR6KPdXYVhGHULywErdaMJ8h/Alg7qBvUX6lmhXsWZjfSFRTyLuzZxxJnbkv+WmXB
 vVLB8UXr0oK7yA7oCcANKgIiyUDwWQ==
X-Authority-Analysis: v=2.4 cv=cr3CU14i c=1 sm=1 tr=0 ts=68a565dd cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=Q7FFX_n4-uy2H0W7qW8A:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: l798O3vYDxCF4bVo-Hyps4CzW8RDVRVV
X-Proofpoint-ORIG-GUID: l798O3vYDxCF4bVo-Hyps4CzW8RDVRVV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013



On 8/19/2025 7:22 PM, Krzysztof Kozlowski wrote:
> On 14/08/2025 16:54, Raviteja Laggyshetty wrote:
>> Add interconnect dt-bindings and driver support for
>> Qualcomm's next gen compute SoC - Glymur.
>> Device tree changes aren't part of this series and will be posted
>> separately after the official announcement of the Glymur SoC.
> 
> 
> No dependencies explained, so how maintainers can understand that they
> CANNOT apply this patch? :/
> 
> Nice example of throwing the code over the wall, does not matter it does
> not even pass standard checks...
> 

Sorry for the trouble, I have added dependencies using b4 prep
edit-deps option and I tried pulling few older changes using 
shazam command and found that it automatically pulls the dependencies
from prerequisite-patch present in cover letter.

I made sure that dt_binding_checks are passing with dependency picked
into workspace. In future patches, I will make sure to explicitly point 
out the dependency in the cover letter apart from adding it using b4 
options.
Sorry for breaking the dt checker.

Thanks,
Raviteja

> Best regards,
> Krzysztof


