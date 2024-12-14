Return-Path: <devicetree+bounces-131013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F29619F1B3D
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 01:11:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8012916B61C
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B491DF513;
	Sat, 14 Dec 2024 00:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M2M2UW1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135DFDF78
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 00:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734134788; cv=none; b=kHhBiWyogFFXrxEg69DR0CL5DrP1zUfdtc7q5sIN7n7QxplV4zUoMEe5yN/JhF34baU4OWZjUKA4+2zwoM1Ts0YPLKp0xiW5E3DjWC/WBEjCT3g7fhFmy6AH2VEPZjuhbKKcKAhJQivDtdGOJQ5WGUuGRHlIZqIePgGh3071QPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734134788; c=relaxed/simple;
	bh=oVdrsM4iSvcVVv59Bq/l3kQZnH2DqSvqGHtaO/V5qFQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FPHejxz7/Asb++AxiP5JeErd83ngaUKnw6n6JxN0B3GARYZSykD3ZGsADzj2yFbfcK4nB5n1BfpVJV5CGaZwY+oFeyLkrhlTy6i1msqIF0578zRLqKvDCqXLkZ3AIv9gClznrHDS5wSgOef3fMMHftn1SLyhtmPvt4ZxBY5I0gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M2M2UW1B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDA3xdH013192
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 00:06:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	URnOAD7B5WVB2bgpEbRPQyjpSOPc3nHHY920y5f2ebw=; b=M2M2UW1BxPSxaQvb
	anPmbJygF25tMadYTvtItwsBMrlje+k3Xj3EssS7xtfo5wSOWMGTCB2PLLPN4LNa
	tIcTUXlsAxhhqycAACh99VIENndA4K2+e074DMMsdc8gX0MhRshkoej2hO6CScMr
	OE9V16amVfGnvrBVfEhVi+h1HAZT8HKNr2BjLAxUEJnIDoala3dXKJyu45y7Ggw9
	+eWGdfH2aux2n3sDa8r7fG5aXRJqw46tUP/KSyTjf8lOxqK4AMsAeQt3vfWycnos
	8dPnk3GFNoRXRwb46ncs31h3NpDKAvAj08D469Z3hu+9/AeuXdci3LkfzflDLHn0
	sLrOfA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjudhvyx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 00:06:25 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d880eea0a1so6322256d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 16:06:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734134780; x=1734739580;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=URnOAD7B5WVB2bgpEbRPQyjpSOPc3nHHY920y5f2ebw=;
        b=ov6Cerk2y4qwkFGkwhJnt8fYCKez03Gueb/wWcSCJxP+EBsxde6kjxNyYTmAxxk/Sv
         6Q/FYRwLPBdHvwnF681Y6muvZvote27JYwQcZwaRCLjhCg/5+/Ua9PtzdDljJjB4KRsm
         MIEMyAj7Hr14mgZyoUmURgSNi8u93bHDwukpPRF1xpKuQPsYwb7KoOQBKbOMp+NXZm4t
         JB2Ws0Kb7vdcnnj+oGcXFMZqcOh3XOEkuwwxnIVjWFk9ssW6hgiI1CgeH5vOPDvT1HOW
         x1RTVj4o1YKGz6YVRW2IDYR2dPIx7zF5tPbsROlja2Mug1I+QbBwDBAsJH8AFHHP+/69
         MvIA==
X-Forwarded-Encrypted: i=1; AJvYcCVv5VR7Moq8ZQwa3++PDIV1Ywyjyoj/tZ1QP6WHi3jMpigcQXqFqYbYhz1PyZ3xVYBsRUWvUUmhK1L/@vger.kernel.org
X-Gm-Message-State: AOJu0YxBrv0VOEVdE8Kx7ClVUDmB7oFjSQqDx7AIqLd/cNRNkAuCeIZF
	DNccKRXaxEVR5egm5sC6jpAfrEsWrRB4CVk+JLjqlOoWIk5oXTahP7wZWlgDecvcYTktDqxiuLn
	1W2WAHqT5kfJLZCYUxdxVgyYlFGvgVIaJPEgTkYodZgJXaCZa6vt4ODny/Qtt
X-Gm-Gg: ASbGnct4hYtWQaXBwIuhJDW0A2y7tZ2s3U1Uos89pU2qz+Hr5jI7ABKC/YKI17tXXa2
	nZp36+O2FEulG7p4MH3rNFh2aMys3L0eaVAjy1vAX4Ub6oopnb288ewYPtce3Sdpu1kgLnd1G2z
	48tLai98HClbFvqfmGu1N6V67wVfMs35qWFe0pypWVj+Wps9HjHkIZ5dDUHsJdVfUbYvkPZqOhG
	o5efn8nc4KNSnEh/zLQPoh0wUjingWiIYyAdtFaRbXxbrRGlY+A58Li6t3OOSsXEoa4OrjNGy2R
	poLlVeJBDlxJdHFxmhw63YZGtZxjkULKET8=
X-Received: by 2002:a05:6214:3002:b0:6d8:e5f4:b972 with SMTP id 6a1803df08f44-6dc8ca4047fmr28201906d6.3.1734134780405;
        Fri, 13 Dec 2024 16:06:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4vD7vPLzQ4aG18YUkHITmORVt4lbdTdCFofhZWV8MLNWse7WmiAnMO0rpcbotPtBwqo6Ceg==
X-Received: by 2002:a05:6214:3002:b0:6d8:e5f4:b972 with SMTP id 6a1803df08f44-6dc8ca4047fmr28201686d6.3.1734134780057;
        Fri, 13 Dec 2024 16:06:20 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab963b33bbsm25855866b.196.2024.12.13.16.06.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 16:06:18 -0800 (PST)
Message-ID: <6e9c4ebc-c52e-47ee-b3a5-570e84125e42@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 01:06:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/19] arm64: dts: qcom: Disable USB U1/U2 entry for
 SA8775P
To: Prashanth K <quic_prashk@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
References: <20241213095237.1409174-1-quic_prashk@quicinc.com>
 <20241213095237.1409174-9-quic_prashk@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213095237.1409174-9-quic_prashk@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Pz5Q7WNEI_Ra1r_YkqNXNfT82PZlBCsB
X-Proofpoint-ORIG-GUID: Pz5Q7WNEI_Ra1r_YkqNXNfT82PZlBCsB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 phishscore=0 mlxlogscore=498 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130172

On 13.12.2024 10:52 AM, Prashanth K wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Disable U1 and U2 power-saving states to improve stability of USB.
> These low-power link states, designed to reduce power consumption
> during idle periods, can cause issues in latency-sensitive or high
> throughput use cases. Over the years, some of the issues seen are
> as follows:
> 
> 1. In device mode of operation, when UVC is active, enabling U1/U2
> is sometimes causing packets drops due to delay in entry/exit of
> intermittent these low power states. These packet drops are often
> reflected as missed isochronous transfers, as the controller wasn't
> able to send packet in that microframe interval and hence glitches
> are seen on the final transmitted video output.
> 
> 2. On QCS6490-Rb3Gen2 Vision kit, ADB connection is heavily unstable
> when U1/U2 is enabled. Often when link enters U2, there is a re-
> enumeration seen and device is unusable for many use cases.
> 
> 3. On QCS8300/QCS9100, it is observed that when Link enters U2, when
> the cable is disconnected and reconnected to host PC in HS, there
> is no link status change interrupt seen and the plug-in in HS doesn't
> show up a bus reset and enumeration failure happens.
> 
> Disabling these intermittent power states enhances device stability
> without affecting power usage.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Signed-off-by: Prashanth K <quic_prashk@quicinc.com>
> ---

[...]

>  
> @@ -3570,6 +3576,8 @@ tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x0 0x01f40000 0x0 0x20000>;
>  			#hwlock-cells = <1>;
> +				snps,dis-u1-entry-quirk;
> +				snps,dis-u2-entry-quirk;

Oh?

Konrad

