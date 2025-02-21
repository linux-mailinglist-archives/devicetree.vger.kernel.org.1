Return-Path: <devicetree+bounces-149694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C94B9A40225
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 22:39:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDF404260FE
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 21:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD909255E30;
	Fri, 21 Feb 2025 21:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U5e14kld"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B4C254B06
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740173931; cv=none; b=QRmW9y07BXymZgDk+9g5iK1wwU2RfBaX9dvg9B7YZ3Pt794VJLuagsd62aTs20S1TGww0sjS/Ynmv6rW5OsJTVbgj0FLcugHex148wp3CNVYuCFqBLEv42gisiSTnpaaCkFM7VQzjAGauLF+lu2QWeuzVDQCq4IubJKCtmPwkCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740173931; c=relaxed/simple;
	bh=4ygCX+BlAc5yHgLuL83+bGU6HjWO3YrRUAIp22PE1Xk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tskyELsHpKSU2Ds1EjA1woo8kQWGWZ6cZbOVzvftJvV4g4kvGsAcFXpsqHU2drfTBfMTrkJGRY27RsC83j6vtXzpoUZxVjhTeoxZxzqo80pBEeabhndh4fn8JzhiX+5RKg+IovAHICVoqvEFRm0k7AHL77wcjaxQOG7A4J7Eu4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U5e14kld; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LD6Y2D015703
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SQKkyFpJsq0/fkBHSwHXcQmdiJaguo6VpRU5m0ktNdg=; b=U5e14kld8aRYrbsU
	hGjuh3RLE5I0lkL6IyIwFK4QryDka+4Ujsg597s2g4Qc0IMO326k/v8nXdgvWwrP
	LPB1gowUls2lNhjt9MFluFfY/AESBgo8kdype4YuS9X0vcBZ9ATs6CjaBRwINpQi
	8UdxTGZPP3zuML7+YyypMQ8vxlfL+SSvoICqp8VYkCNlEy+vgswijWRHjkpunaVs
	jgzpm5inWkB7CRrbBITE6fRxMe7aOBgr0bmVNAprBhT/PAixOeZDOEPG/MGDd7dO
	7L1kE4/3LTpVSOvJ/znNfqPo1QXkfdsn7Mo7hAxxYgGEoe28R1FxYPOLlcJxJIJF
	UBfP2g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44xku6tmkp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:48 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e665343a70so4355476d6.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 13:38:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740173927; x=1740778727;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SQKkyFpJsq0/fkBHSwHXcQmdiJaguo6VpRU5m0ktNdg=;
        b=ow9cdjnfxOi/dDlQWdRZ8UXxu9SHPyum0I+xJHFc2VqgiCTe/ey0J7UG60EZ8KFvBA
         jsDZY8LIG9rtT8HMYoPURYshxqrr9MeaAm2Jwi6VVL2Ev+GZdXM2HXHmPve3dxfI3vx9
         hLjUBDSeAkah8goAqVV9oSSXM0yPyG+LCNT2w+tlqxX3ApG1EpXIHNy4iaMk7DQwkBVm
         oCdhr2s2434zQ6LdBzI3g0TvakT8c7bJPoqyusNqAQgWnHlDK7RdyU3rR+khYdsFSz8w
         nCmtbiZZjTzmnC2Hf1uDTz7FESChx3tHJCBKDMhrKiCa+98afOzaAwV8gxNgEDfvvSyk
         SCjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6xQVzbhCwIS0lNyL/PqJcJW1Ozzs+B6SDGaLi/AjlnhbHv08AamF83LAznAV7Jlyp9YyYLMDrWnDG@vger.kernel.org
X-Gm-Message-State: AOJu0YyDMaDvE1yyJBYhonHc4Wvy74OB54cn5xx8U+uXtE2BhAND419d
	b6fFX2JvsYVBZvRd/GUeKwoRtnfNybC3pNDGtkW9McGaqqpNopNRvw+MQCj1J6TNFeBj9cA9VqO
	NRJItzEDC8TP+LdDVFvO1G7emh2QxNF5GFGv3OZru8vExv5Nazgc8DXpMuMS7
X-Gm-Gg: ASbGncs+FQxqMmg8q7jubtyEQU0c9y6hu/Wj/L+IkNAiOFWo3Qyw9bN6xAsYEMWAzqM
	qaJN8hrbaD/g7jhClNacuvsee81RMQ6dXwKQZjOyWaidzaiXTp9pMygcI3xcQIMjam0IyEre5Di
	f58h6Odu7pGAgbEJiwm5F5Ln+B3GI6yjeJPgiSujwcwRwjqcp169FvYutMe5FrxeT9JyZFFSB6X
	idGA6+Hf4tc949MI9DMyJ/5bNpXn809ly/Dfo/QaEOyLn7sAhkdVou+mQFp92fjg6SXvIgARPem
	vmGYNDWm64Rut14k4q4tDDqL5aNdwXWNIgd/DLHgp3656808hWUP4U6CWdo2yod3KLv3Jg==
X-Received: by 2002:a05:6214:2a8a:b0:6e4:2e03:c54c with SMTP id 6a1803df08f44-6e6aea324e1mr22692986d6.10.1740173927467;
        Fri, 21 Feb 2025 13:38:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHH7bR1yTZ+s3Pcg5KBoLzFiK/8eGo0r93T0qBxtQINa0jSC0PQxR2KObfPhPcHklFloCVexQ==
X-Received: by 2002:a05:6214:2a8a:b0:6e4:2e03:c54c with SMTP id 6a1803df08f44-6e6aea324e1mr22692816d6.10.1740173927166;
        Fri, 21 Feb 2025 13:38:47 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb98ed07afsm1067043066b.102.2025.02.21.13.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 13:38:46 -0800 (PST)
Message-ID: <626ee5de-ab07-478f-bf10-983a9a321570@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 22:38:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8750-mtp: Enable ADSP
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
 <20250220-sm8750-audio-v2-3-fbe243c4afc3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-sm8750-audio-v2-3-fbe243c4afc3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Bny1AZ5qr9q6iQhIE_zjcQakhWCPF9m8
X-Proofpoint-GUID: Bny1AZ5qr9q6iQhIE_zjcQakhWCPF9m8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_08,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 mlxscore=0 bulkscore=0 phishscore=0 mlxlogscore=547 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210147

On 20.02.2025 9:49 AM, Krzysztof Kozlowski wrote:
> Enable ADSP on MTP8750 board.
> 
> Reviewed-by: Melody Olvera <quic_molvera@quicinc.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

