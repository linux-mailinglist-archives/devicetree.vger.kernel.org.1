Return-Path: <devicetree+bounces-173687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A73AA9458
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:23:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B9971893F88
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA98259C83;
	Mon,  5 May 2025 13:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z4LYVcqN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D89B25A2C4
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746451371; cv=none; b=t9qpdB4q5bOAwBRMTHRsnViMjsZK/T9GFw0LL67CHqbFEitvjRBKdE1XilwNNUra4iMPx7H7FWvOy4t+Uxh9Q+gYdGPLX/6MazwqynEo43ggyYzgGwET6uzARqsG/v/QpdIHiq+mVvoN2su04WEsmDMCht/Q09ucSQ7SuvYxVrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746451371; c=relaxed/simple;
	bh=6b6UvFMmR5hwpyVwUTZJ+FnF2O3Be9wTrs/DC2KR41g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LoSqC1YiMU0ejYA1Q58WADARXYSoz0mbBKlIeKXXF+IPgXKR8rSzRdaBGKuiFS+y6LnYglS58cbbHwSsYXHt/dYuFRQaby+VEzqM14ZnKoM6nJeDVxXYzC2/kF0Kd5AxopLFVdUjwqdzoTn3y8+EF+1qf75/+75HXxGjr/RQMZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z4LYVcqN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545Ckhbr014113
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 13:22:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ipfJB44vaRrzzYNTr2RsUlxdMWhli5auraPTR3Cgev4=; b=Z4LYVcqNuIgKiZuC
	gpqHd1nOQkIWqdsTCdDD/SRC6CD9vxFK8GqqyRxpK/1cAngXBYt9yP4y7PIgXc19
	hF1Ldglx+Z/jdO2/LB2crwfHJw4x5e529cpCTdBfOZekjg71Pw6NT1WrK7OmKtaH
	6DklgYiPkci+Uh9MExRHI0K4DQ85vUWKuLdyhkFSmnZ+KFeKo1nmNcM28pbXUvo2
	WUH45GXdRZeGPGD2hYYmXLVEpCRbRB+NpVs3lHvWHMcV5w++CTAEgeymmcJ9x7ZN
	vvPNUzvrw7svlrwBCOCsXG5lc1MXBVpXsRYtpFKWgJWN13j9t2z+lyp6g6C6MIKP
	2YDaZw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dcakm198-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 13:22:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476786e50d9so15462851cf.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 06:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746451367; x=1747056167;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ipfJB44vaRrzzYNTr2RsUlxdMWhli5auraPTR3Cgev4=;
        b=s9geSqFKxuBIijIRhTjPhYXbffBjZ/Kh2b0AKMIQdMACATscOOKc7D7hKy3+ENUSLd
         4a4oB8OsURUWbK3NGKzUf1t1BtFU3khPW5Aql744hB2SWwZMyPhPl0GYKyssMQ+MwEJZ
         cv0v7c4QDxzX4GuFa+vZj5zgR5uRYQCUCd9CZkoF6uQmA3mL0aC2PGxvXcHukiNq/jKt
         wwH8ODO9n+5hT/olH+Lam7Oy+DkK2fv/c8RqN2Li/QilqYOvwTlOytX6kZPHnT+dkq4F
         nfkZoe589C/gAnTlO0XexRVJ2D6tKOz34u+BEitPNrjV5069NtjYWwBrHbn1NJXUuWPW
         lDPQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8DDdBbHAKUdUdo5ufjR3nOTlK4VVoTzRSd0DrpkLprRjqurFXIneqCJmJLts9aWd5CxNV50Tx013s@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5twiIUorex4wnYm/T0Poewwd2EIbl3BlFVxwmU5CHWYUTP4Oy
	gTdj2dd1n3j1NrxfA080s8Apcyi3elUnMDYcyYvDmrpNK8yb0aZWYOToE4V2cLuKu1xx2ZWJIOM
	GVlYcPBxbEBHV44P1OTRP7HXluXBvT/N/8gu1R1vV05LO3tPYdzOIQG9Z/UbK
X-Gm-Gg: ASbGncv9u0yQlPM9vl6UoazsI9vnJmVxJUGX7DD2xOj/sA9racIuXsIz81GW0maj4A+
	eAkxgi9xg378TozFdooaRPUo/rB1ax1lj5WweMYh2HqfUz9riPoUj9TzZOY43ipE2PkYPRSrHuX
	FOyh4Y0KDtizgL4P1CkCvSHO3ub8hJ3lc/2ZS3mt6mQrmsnT7FIJPnm4pIq/ustd+93lU2L9FgG
	+SRwsBozxUuA0L9uEohbvfPsHEbwP3Wvg2pb+JnioFl/B3PIfmRkfQI4H1OxUW5wrMy/S1p75U3
	pj4nxENUcvC5ZF2Zzs/LmSNvuyBdULPyjg9Ucu3lh7b4ajvUuqSplxJYZh+EvcM3AUE=
X-Received: by 2002:ac8:5996:0:b0:48a:80e5:72bb with SMTP id d75a77b69052e-48c30d83ddcmr76442211cf.2.1746451367450;
        Mon, 05 May 2025 06:22:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjFC3fECabwesq4x5Fiy2V1yv92KY/9fO0f8AU4OsYx1OHQ7BrNcRSdkmpG2hw9MT3iHS01A==
X-Received: by 2002:ac8:5996:0:b0:48a:80e5:72bb with SMTP id d75a77b69052e-48c30d83ddcmr76441901cf.2.1746451367042;
        Mon, 05 May 2025 06:22:47 -0700 (PDT)
Received: from [192.168.65.169] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad18950ac90sm494506966b.150.2025.05.05.06.22.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 06:22:46 -0700 (PDT)
Message-ID: <1cd1d97f-a6f1-43e6-8451-b9433db93c16@oss.qualcomm.com>
Date: Mon, 5 May 2025 15:22:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: clock: qcom: Add missing bindings on
 gcc-sc8180x
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20250430-sc8180x-camcc-support-v2-0-6bbb514f467c@quicinc.com>
 <20250430-sc8180x-camcc-support-v2-1-6bbb514f467c@quicinc.com>
 <20250502-singing-hypersonic-snail-bef73a@kuoka>
 <cbca1b2f-0608-4bd3-b1fb-7f338d347b5e@quicinc.com>
 <35662ebc-d975-4891-8cbb-1ba3c324f504@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <35662ebc-d975-4891-8cbb-1ba3c324f504@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEyOSBTYWx0ZWRfX6ciwann0O1uM
 1pVsuO/xzwlxPxKg986HRiG0hZgoSX6INkmQS0K0BRK4IGhKLcZq+cJ1AaKDbkODNQnn1VmdfGY
 uyvckfVnPnw0aKEkt871dd6IM5heXn5vg8QhtMkmWfF9JmTHNJIbvOrYfg4uQi6EX+DWSL2BV4v
 MCSdQcihJ7L+NtXMePk85DEcd8JZl+5R2zPhQt9O4Rl3kUmNTBIlp6me5grrjFG3gXd+X60g7V4
 YxXWx7cFFvuoTPew30n76P3WckSJFFRxSoCA/MsaiiMzotTSSWjbgRQEs3OvumaXqE5aQxKDBu7
 wlKTs1iVHapRlf4QsG7hw6QH4baw/6sFkKhoPzbEjvRdyIpEd3hc6A8javCgNs4s7wQrzaLRnhi
 Ga5r3fU/YrDNmkWAWAjEVWHLCyG2Tw7W9LjpQGZHtcdVGH9lgE4srkZgz5NdClqeydTwUWDH
X-Proofpoint-ORIG-GUID: CTdUkwuYCgAB-0wBBM0bm2hAtxTPv42v
X-Authority-Analysis: v=2.4 cv=JtvxrN4C c=1 sm=1 tr=0 ts=6818bba8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=bJQp2htD3s1xF4Ub2coA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: CTdUkwuYCgAB-0wBBM0bm2hAtxTPv42v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 mlxlogscore=845 clxscore=1015
 malwarescore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505050129

On 5/5/25 11:46 AM, Krzysztof Kozlowski wrote:
> On 05/05/2025 11:43, Satya Priya Kakitapalli wrote:
>>
>> On 5/2/2025 12:15 PM, Krzysztof Kozlowski wrote:
>>> On Wed, Apr 30, 2025 at 04:08:55PM GMT, Satya Priya Kakitapalli wrote:
>>>> Add all the missing clock bindings for gcc-sc8180x.
>>>>
>>>> Fixes: 0fadcdfdcf57 ("dt-bindings: clock: Add SC8180x GCC binding")
>>>> Cc: stable@vger.kernel.org
>>> What sort of bug is being fixed here? This needs to be clearly expressed
>>> in commit msg - bug or observable issue.
>>
>>
>> The multi-media AHB clocks are needed to create HW dependency in the 
>> multimedia CC dt blocks and avoid any issues. They were not defined in 
>> the initial bindings.
>>
>> Sure, I'll add the details in the commit text.
> 
> I don't understand what is the bug here. You just described missing feature.

i.e. this patch is fine, but the fixes tag doesn't apply, as it doesn't
really fix anything on its own

Konrad

