Return-Path: <devicetree+bounces-252842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C844ED038C5
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2B5383059794
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9873744E024;
	Thu,  8 Jan 2026 13:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lkz7REIa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cZKhYDZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E11444CAFE
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767879346; cv=none; b=N90XPWHSXcpYG5FwJ7ok1ec4dQiMLpeu+iNCnbj9wQCDa1wuo65X0geosa8SuhAx7wWP+/Acg5N47NdN6DMskDw20+REb0iIuPZJM6CQz5Mk0nTAyoN6LnIrTdLTFly32RAGbkWMii9gAbcyv/3qrHk6k8hVFvlnOuPEOGN/p+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767879346; c=relaxed/simple;
	bh=wvlJyJnXvZFyPAXKjXLUT7zhJo0tIS1PI+5bbtt20aY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oH3Au/A8wmbta/esy3988GJLcxvZrWIPMpZBW1rbFBA/O1adPuEjMYN0Pc1o4qIkNSF+COF/iNAwGP7gYjxmLZocmjyX/dgGDK5YF2WhiMDbcCqvYaNsOr5/QcEn0xw75PqmXz+ec4DCPkDyk43/8xouPskNrtY8pdC+fJJT12M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lkz7REIa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cZKhYDZR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6089colr126653
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 13:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M+klpuo3lIbU8EnRsBkY+rwYCIYs84JFTC7WUPXtW/U=; b=lkz7REIa2E6qyEyM
	acx3bJC9zn93hI6qfRU6tkcLW9zQSRl6wAOE4T9XveTHb3MzXZJwjeM2LvGt7olL
	N5pi8Nu4deUhDzoo/ys0xiqd9NR32nWjYAj5i3muDAxxbeQDf9XK45P4GR4/JU6b
	blgTyJ9IQA3iGKFniTBnSgT0Vp/L39sy7RmhBJcIf9EN5ZmfTYT8ba9IBIX6MTZG
	/RjY2z9UD0RHTu84Ro0knW1zEnizbCvR1X28sHPkeSzvFstwbMfRzSVFsC7AV/lp
	X5ou1PHeRBBVWwtv4L6ZDGrwcCsmG8kg+MKT0p3TjXH9W2tGHFnkoOeWLMFBvU0d
	tdkakA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj3d69ysd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 13:35:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c231297839so110022285a.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767879343; x=1768484143; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M+klpuo3lIbU8EnRsBkY+rwYCIYs84JFTC7WUPXtW/U=;
        b=cZKhYDZRrdtWEzls4EeCrpAFP/O8ySR8fry8wJuHDsboDp3QtG3SurTRcko8DUOBrC
         ONWb/SU33kI9DT4HUH2epYR+mU0GOTjgjMhtqdwKT2bg0I1xvw5ME8zngrKoJpKdZtqT
         /tj4w6a3Jos+W278E20K6dsJSIPf6jmtU1SLLkYevD58in4wnULe56KTIel4YJEwGcPA
         n2TorW4JDCZlqLDwt5eIEuaP2YmkgRXbjawtctjfnIADVD1f6aHcY3ILuFiES0mPRBUu
         j6fpZcy6He0A5K9ECYUSjNAlxun6v8UP/CH4zm7le4flTA2CJB53VYwqiXef77PsqJdQ
         X/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767879343; x=1768484143;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M+klpuo3lIbU8EnRsBkY+rwYCIYs84JFTC7WUPXtW/U=;
        b=kSdB2KiuJ05HDmSb2VXoKXLIBklX5gxFLAjltEWPXeJ+jsR2ITkAffzNL90fGLKSXQ
         zkPtkV2e+4aZgK+pFNlTyZkR+I/wPw/PBYlVPcaoxWh++RWTRh4gXWMKjwD2xmw3mrIC
         PHEDGu9ZtC++6q2YhOHzKe+QRFwAf/AwoJFH9coHJBn7y0pjxHEB+5VJkJ4jOY4p0+6p
         wNOu41x3tkEkUgYDL7Vg0Kjl+zK0BHr2V3QzjmleoFWkEqUOkaYRVesjGM06va95xz1S
         9ZnDkrQiVLoBcfHKvilaqGcu/FbCCmOiL1E8fAOFuOjITof56TQ63rM95WC3iTUf5xhp
         xljg==
X-Forwarded-Encrypted: i=1; AJvYcCXAy8JSJPY/mYe4aX/30xKrf100Bwt0W2fPOxTKutv7yR26Ic/qgNIPHRINLbO/3OVsFYqf8ZfQnUQH@vger.kernel.org
X-Gm-Message-State: AOJu0YyOi7JlGU+qQduTQtecS78odtrss4rf0niTZ6r+ezepp5qQLeza
	0c09Y/vtUEJRUZ6e9IJrDY2UkcM5073UAUr1s+diLsTm7bp2tUx5PIbTL0hwM72ojwNtQmBV4vI
	Qq+tsNA7lQw1Ure5LVYUVFSwkboWeG1wh8rTF8SF1FIY6+AZd2uATgF5S2zVRzu6n
X-Gm-Gg: AY/fxX76SVh/qhfz3XOhr3gJdK1DQSkbn8QkDewqDr/4hP/zS6Jixq1EOA6UMkwFjS+
	NGum1LrdIpty1fiT7IcK/g2O3e7dDIIREBrtdK5Zh5bIn2oEACPI7aQUl42kFRpMZrFqLUKM838
	dtUOP2o+47xmGDy5bfh99kVPpjgTWrnqtt05Foj0e5m6h2gfMtyTcA6PgZ5XHdfWliuRJoA3nCK
	4Ov3n3LZ0K2my7XT5TZIhYNWaCCIKn6h3lX+cM5ocadVL6xGR5GQjkccqnp32B21zWCz7Dvc24b
	7wV9tqmu2NdXME1UR5zq66ECajXBMpHodugG8/nky/HG9nKSYLjZET+3wQwqaOAA594zb481dab
	DpEfGVb7xRx9RoOMrfTgjoVXqhU21gnGbYSCCyNykoPe9j5ZKi/1RfOKjFhppQsOPgTk=
X-Received: by 2002:a05:620a:1a9f:b0:8b2:e5c6:b4a2 with SMTP id af79cd13be357-8c389363987mr600014485a.1.1767879342783;
        Thu, 08 Jan 2026 05:35:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEO3YqSjyxNkFHYFNHl/4gazhGcB6YROqdFiN68T2jF88g0IgtuvHh+1L5/bf2BfuaiA8vnjA==
X-Received: by 2002:a05:620a:1a9f:b0:8b2:e5c6:b4a2 with SMTP id af79cd13be357-8c389363987mr600010485a.1.1767879342302;
        Thu, 08 Jan 2026 05:35:42 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4d3113sm807132366b.43.2026.01.08.05.35.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:35:41 -0800 (PST)
Message-ID: <47c3f994-3843-4d16-9e40-f46e6138e81c@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 14:35:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: talos: Add PMU support
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com
References: <20260108092542.1371-1-yuanjie.yang@oss.qualcomm.com>
 <20260108092542.1371-3-yuanjie.yang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260108092542.1371-3-yuanjie.yang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: hZ-FJrCnS_Pkjqn9bySPjHU3VZLEfeE2
X-Authority-Analysis: v=2.4 cv=APfYzRIR c=1 sm=1 tr=0 ts=695fb2af cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1_eGsFTZUK8iyOQsZJYA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA5NiBTYWx0ZWRfX1ds5LQaKlftc
 DTNILn3BMY1y7AQN9dYXf7xfRLQJmU/8bN8jNdJ85f+y7NoI5mcXYJsLSHwBNZbhYOGm9gSHrI3
 kBctCKvZrlEEhjEouYWj5xdHj/IKFG1DvqvCVw7qGD0F9GXsybHk4d0igHjkQmCD3fD0/7jyM2u
 naIiHBbOKV5BO0YmFT/uykHbXACCpiFRUKCgsH6kvwj4W++3nNhukSyQXpyGaD5pipGBEIYIfKX
 viW9EAAE1QDS36pctESgFGGnM/hO32gkK/9Y/2DK5IKrVP/GtyZn6exrZdRRxjJCNaqWcmdx8Tn
 LaQbU4I6LMXS4a7a74rmlgy7zymx0TKBiBrpzVva6JtaB1/kA4I3IApn0EA2Q5OmdNZ0x5LxGLu
 DYFQDr/oDgt3xg+39++udEvSPE0Zpu4xBhJ/fQBHSMdvTs025rLOltjF7cWsQ28LWKYBpIzwQda
 mpRBNJYA7cUxSI9y+gA==
X-Proofpoint-ORIG-GUID: hZ-FJrCnS_Pkjqn9bySPjHU3VZLEfeE2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080096

On 1/8/26 10:25 AM, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add the PMU node for talos platforms.
> 
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


