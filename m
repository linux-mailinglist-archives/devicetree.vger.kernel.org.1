Return-Path: <devicetree+bounces-171089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFE1A9D2F8
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:27:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 197DB46269C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE87221DB1;
	Fri, 25 Apr 2025 20:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QRJBMi8s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E01221D90
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745612868; cv=none; b=Rvllr2fzZH72rRwHQHd8ttEsEx5aeC1ap6KVcB/nBT8b4FCJCWUTILdQbzAuqRK5UzSeWSyd5U9fOjcG+vq3IaeWnk03vhGVHr62ZD7Uh5ZqpXhfZ2Nz0NWpEQBaCJCcJHwT/B9EtCFQBQOqvQmHGuLWrD2rAwJgFz0GqOzBBw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745612868; c=relaxed/simple;
	bh=Bp/8yYVQpxs9p48lraKkfl/ZtzLHL9fRJ4OuscV0zs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kw+E2lpVVnuZahe1OeVUf6MhlCopuA4JOtWSvGjEcDHh+L2/uRCIJ9joK7slgaM/U8w+t7BkHa9gZdtkOCQjiJCV8A+Od/+1IXXx27ndf29GaQnURWxqa96x0wSg+PonmhRyZt4O5NnpSLWBZm2/FlMJ4IUyqd3G0Dl8y3x0PU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QRJBMi8s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJqfq012793
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:27:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A4EcgRHPewAtUtbp4yexVOTr9c6zfgS93HtWDULPfMI=; b=QRJBMi8sa3zWTigD
	39mttphbK/k+wvwm0n6lPmmuITeJjueN2GI0How103pLDSpS9XqzjiTyju3X3Ced
	2vwqcC+RA5nQe3i+3xLdb+wNIObwgHZPd6UEcphfkshaXkvF1bwT9U4BJpcAtQok
	GZbOUWLTp385m9I1O6TuWWNV+/jASkShpMlwYR2PCNNpvjI1qQmYVG+T/UZ+mX7u
	FrPmRsYtAXEB4FcaXuuT+q3sF/2BTOZVYO+VOpVnhnJvqcD1D4yAduRNZe8gWQGs
	CjmLYSZ/qHgNVFgU7ElZUSfsMHegMUaof05RYSYEhiRhikhiEosnpKNvg/sTUVl6
	tzO+7g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1t96b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:27:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-477608e8e4aso2068341cf.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 13:27:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745612865; x=1746217665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A4EcgRHPewAtUtbp4yexVOTr9c6zfgS93HtWDULPfMI=;
        b=TeKAblQX5u10DdivEyjkfhfY1PWGOsJQ9MkQ65Xw2sSb0vS+G2ALDFK41qND36CuJb
         ucfxY4oqn/gLJj46RefDsjk5I+lg6JPJToomWijKpyF08d1OlBMoH73sAqzsqPG+yQGF
         BfxSa6eTMQRXCDTYCNRZ2vjvmohjiNbgHQHmBGYvswaSXn9Ge4v1tz/NUB6vQxTMkpdJ
         oxtFBpzhkYbno45H+hO9f4JFyyDBH/qH0VdddPVgFzJcCMBEn76INwODCRknxIX+iIaJ
         FF/j5oauvnOIawt7N2Qp4tnsQEYlwg91WulYY1mvnz9Xqk6VYdO3jIqCJU7gqVl660/m
         sZgA==
X-Forwarded-Encrypted: i=1; AJvYcCUXjYISgQC6SjYH+6Pmp1v93bxGfFduk/ypZyfb4FwSWzMByvQyS3piyc0YQmgvdzLxWyFg4HFQlj6x@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5AwdQ2UoGpwJOG4rFBvTGSlIW1ny30Z3+VyMtgGesDoJ0cXsl
	JKNfZvOCTLYlYD/PzUuLy4wkpFx8uzMKTQ9buAjcgKD75VEakx+TZ6NWpQ/MKygI5o3/RY1zeH0
	jS/6AdZelyjfMI8n5dE4l95jMldxmvl01osb+LM8E+neebj1/hDeUHnf95gpY
X-Gm-Gg: ASbGncsEJDE0FWy9AdqaWBt1y3WkkOmtsQAO4wtVoxk0ndQK3e3fojW2bSb20lowgyJ
	aP3Ra/0wZMnGO5VCunoFMQeN+UYkmvYlAc1x37nW7YqSYwwJ7BlqTkU1i3g3pofkmWIwkNzZdoO
	9zSUW3buV9FslH9e0qcwxhfQSxrV4m9qdrLj5eVg8kuZZDAQsmfCviEcSU4eUEYfij/2F39vmHL
	Co/llZYul9dftc6EPGd0fbecYG0R8CZScfwFLvUoD2t9/EQwS5tLOVFfgG/CO4baFcSWE9M9UFc
	CPfa+nh9PSCDgj6TOcyD7uoCu5MkrE9m4Ms3PJ93nj7BjTkp9AbOybovAfQKfbl5AgY=
X-Received: by 2002:ac8:7d8f:0:b0:474:bc4a:edc8 with SMTP id d75a77b69052e-48019432c87mr22456141cf.0.1745612864995;
        Fri, 25 Apr 2025 13:27:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9v1JisejrtijwP5qeW5Pm0wWfpGfc5yQL9pJrWn69TJ9TdWlr4f7hVwQdgScSmqEqvvXw/w==
X-Received: by 2002:ac8:7d8f:0:b0:474:bc4a:edc8 with SMTP id d75a77b69052e-48019432c87mr22456041cf.0.1745612864720;
        Fri, 25 Apr 2025 13:27:44 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edb1d34sm183290666b.185.2025.04.25.13.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 13:27:44 -0700 (PDT)
Message-ID: <5a17d866-a459-40c8-9e3f-90bb1cdbd846@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 22:27:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 5/6] arm64: dts: qcom: ipq5424: add nodes to bring up
 q6
To: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-6-gokul.sriram.p@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250417061245.497803-6-gokul.sriram.p@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: RTJ1B9RKy7YenVPwcK8keyld1vCJK3EO
X-Proofpoint-ORIG-GUID: RTJ1B9RKy7YenVPwcK8keyld1vCJK3EO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0NiBTYWx0ZWRfX84C4XF+6+VCY Xnkruzy0Ogmj/IxMZPZxdaF4gjiTL+Ghs/kdit2JCOKVLQ+eNarit+0Wai0rlBwg3xJzHgtkB+x g70E71cLhW5fDPwcOyf+QVfOWT9By1M2MFczaOMcm4aJyofJQi16qz485N9bjvGJ1CiwHE4O/d5
 cojyyzD8gjQr/VDcKe1MuGzgavO3fBEEQCya/r0Kj2gPD/92ywZW9kRbaKu0Omy507YiPMiagbJ SZT0Dpo00YXgSc1PTuc29kxOuIWTcNVIeUVnJKD0WtRUc59lOOnrvsSGf6EsTNkJ4dAH+LPm6+w mn9bRAf5h3HKxO+tHkMKGdN68Xtwr160/hGEq3Lfyn0vuFgd8Awfr1yLkDVmi/6TdcClkTaRG9S
 889kuWZ5rfN58W4dTTzZ06m4WIjQFBYA22JMbnzVv5SBJWG+Qvs38BQjX0wJRu1usbH7VxUP
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=680bf042 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=ngdhHd9oJ9b5tb6U8IEA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=735 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250146

On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> ---

[...]

> +		apcs_glb: mailbox@f400004 {
> +			compatible = "qcom,ipq5424-apcs-apps-global",
> +				     "qcom,ipq6018-apcs-apps-global";
> +			reg = <0 0x0f400004 0 0x6000>;

So either the offset in the driver is wrong, or the base here
is wrong

The IPC register is at 0x0f40000c

+ length is 0x10_000

[...]> +			#clock-cells = <1>;
> +			#mbox-cells = <1>;
> +		};
> +
> +		tmel_qmp: qmp@32090000 {
> +			compatible = "qcom,ipq5424-tmel";
> +			reg = <0 0x32090000 0 0x2000>;

0x4000-long, this should be much later on (sorted by unit address)

> +			interrupts = <GIC_SPI 126 IRQ_TYPE_EDGE_RISING>;

I'm not a 100% sure this is the right interrupt, but I'm not saying
it's necessarily wrong

The rest looks ok

Konrad


