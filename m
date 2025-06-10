Return-Path: <devicetree+bounces-184337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EE9AD3B6E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 527E27ACDA1
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E578221D5BB;
	Tue, 10 Jun 2025 14:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tvc5Ue1N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B5D20B803
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749566353; cv=none; b=KqFOuzg3vYf60BNESaAMQ+8qA71Pg33mZoSkCI5IY5dYhzZlSCZXs3CAjbuygEbdctNxcfGGpOMkOALvgRL+v4HCqy1waBtCVioD+01lC6keqSu4zgx1AsfHS13b7cGWck/QvFdq1GnymRVfslDv19zPf0mHkTCkeoHrrPeuocg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749566353; c=relaxed/simple;
	bh=JEhdZtu3qJRdspujX7loWXgzQgwNvA/+M6KwCyzZOt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Af4+IadaUjmk/JbUxKFXTJt8QWDqPcZOdJ+lJPyIhmpjdBg4K2SpcTkdlNi3/Z4vW68fP3DAZ+fShfEstgMjlBWTnVuWmgoU2HrX62BHTcmQ5q48+92hFO1JJj5aVBEqOH8hmvvg1vX6p1oAIG3k6JBlWUSFkG4lJ6v7txyGtb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tvc5Ue1N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A8lfps017676
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:39:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4pw5nq7+Bj/Ac4lWh78WSk34rnPTAijZmCV+DGEjR6Q=; b=Tvc5Ue1NTVvtqo8o
	yOpjgjwsKLep1BvG8wafzxNyght58u8GSohG6CRMXmhuL6zYsGegs7ft2BRQLHBU
	UAzcFNwkHxgCJGGe+KthukAfiuV8P15a/s1QHRKMirw0DtBGx6AJHONUhAcr2Fze
	awtmYShBqwXz8Ekn+iMnF0qhg7q3kP89FywP1GiBClsMTNm5Htw1aOQCnyFDh/oW
	Jzg/LIGAB49aCDdo4TcpT2dTJ2TPMufCIIxtWsyVGBScKTJmrhqHsW92e9/K0c79
	djQdNBuSJBtTjwQH7mbPSftwrWqO7mn4BsVMrgVSLlc9+7Gb91jI9kcR5V9XnDoN
	WlBQTg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4766mcjh7v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:39:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a517ff0ebdso15722211cf.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:39:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749566350; x=1750171150;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4pw5nq7+Bj/Ac4lWh78WSk34rnPTAijZmCV+DGEjR6Q=;
        b=fGnMDQjTJ7Je+8txleM4SAI6EAJ3kdvPnlsamNcgzjshOV5Jp4jhad7G7EqQQMk87J
         /7OQK9niGM9xKpOCg+cb+el+R3aqtroQBT/ZdW4Xgy/9Z4Fy4o9rz7uzKt+GSw5CgPV1
         D7odyhpXBrEi+5//NTTBtPTXMJMxcYOXNwj21njRW+2XwD1Czaxq9YAaHUWr9dKlkk7P
         PUjO94945JN4ut3ffrM68o1XDfRu/+YtDYSeBJwiolF/tkymi+fTkcjSj8GIOcvjXdXD
         BK8sX3K8X14o7w7MTyLvZmKC861UAXWstuH05VMHHlg8AwSvNwQ9Xb3HkjdDlgmAxBfM
         vq3g==
X-Forwarded-Encrypted: i=1; AJvYcCVPGxzSzzE7d7uDJiay5CRubClOypTk3q/aJVgHPl/PAoykGDMLN+SWNOTCrW92/1bHVkxqNdAx4383@vger.kernel.org
X-Gm-Message-State: AOJu0YzQEywci0maQkGAvCwEoXnLz8ZLzkOnt98WlCZJG0FkzjBM2low
	nDQ2aWAQvpyL3CjSymPrGOaVFOz365DbKO1fLdGGglQO5UV/RCvRu5eiwwWeK9Gev8XEn5l9IbS
	Gny4JMKgqDcKGI0sFImXz19QkKB1k6ixxekB5o2Jv7lI5R3iNDnjDgp0Q3SYVsQFs
X-Gm-Gg: ASbGncu9ljBEWK90Ump6Qbr76xtu1rDR2LbDg74tH+VdtAsRMeuD+I6pfN1JIEUxSWU
	zjrhiLl1+J1oWuECiSMn302086lrOY6P63j1kboHyqiEfMTN73me9X0A9jhGZKDYKs2f+L66lNQ
	d9ekse7zYEKtkC1N6t66Pi9PEzvv7td7r30STvJygFuJfFiOayV+u47X1WiWApoJ+WTVjokc0Sq
	inB8QsuSz9W07mJUcAuaKmSTkIxnwwo47LTOJLNJ7j03TYZ1gj+fFnw8SxG90mYLjMHyW5Wl0oo
	Juk8O/VnPdUIYYhL/XMbs4kleby0fbAho6Fv+Dn78KlQbqz52VVlqG2xbZaXi2hCfAdDmgD7yp1
	t
X-Received: by 2002:ac8:5a0d:0:b0:494:5984:1022 with SMTP id d75a77b69052e-4a6690a28dfmr95786531cf.11.1749566349764;
        Tue, 10 Jun 2025 07:39:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGouqX7qoKwblwHdCsP8sXYcazh4DdthTicdnTn7xgesyInCIp3oCS88Mi1046CwU/GY9svig==
X-Received: by 2002:ac8:5a0d:0:b0:494:5984:1022 with SMTP id d75a77b69052e-4a6690a28dfmr95786261cf.11.1749566349310;
        Tue, 10 Jun 2025 07:39:09 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55b68sm738346266b.59.2025.06.10.07.39.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 07:39:08 -0700 (PDT)
Message-ID: <1b26fd75-f316-4cbd-b60b-6b3496551314@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 16:39:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add GPU support to X1P42100 SoC
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
 <20250607-x1p-adreno-v1-3-a8ea80f3b18b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250607-x1p-adreno-v1-3-a8ea80f3b18b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T8KMT+KQ c=1 sm=1 tr=0 ts=6848438e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=nNJ8jBrhinZ9UXkNAM4A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: EQtcgwD3GeoygisNl9o1j-TLXLg3t_f9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDExNiBTYWx0ZWRfX7v1R9bmWK8Gg
 SmLL+XDLI7JqCDl0l27iDTHSvGBvQ7CnqvhpaPxDSaAGYdNIXXxVWeCKJIJZqek/uLXje7mEHol
 Qx6U4dyowr2FoNKw1QWjje4pK3RFd2SL5FSXsfRRgQND26OyClA+i0x+gSz55JXoT7LdoKik2ND
 Wx0uB6dsomUZv8sfds5vTfKmDxO3Z+oJlOzm2FJIOTb5m2+DkjyxfFSmoB3YYMZMEJ6uVagAx+l
 L3vNX+IxFtW4DErLxrxOGQNvHVYe+wX22uIWxr9FHxj9POS7zXwgYLLPmtKBGLNs+CM1wsf0tPf
 +odG/Zi0K+IEbJ9XoOIl/2vBq1qOqesx+D41xpd/bNncdvQutIrHlJ/Fzb+QkqCdHWZJooCg+EO
 S7ZnKXJczXDq+ycB49jFZvhNOOsI/9CQ81lQ/j/KXuctBUF/XgVb9gSge6qXySHB+YEydHh1
X-Proofpoint-GUID: EQtcgwD3GeoygisNl9o1j-TLXLg3t_f9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 mlxscore=0 phishscore=0
 mlxlogscore=808 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100116

On 6/7/25 4:15 PM, Akhil P Oommen wrote:
> X1P42100 SoC has a new GPU called Adreno X1-45 which is a smaller
> version of Adreno X1-85 GPU. Describe this new GPU and also add
> the secure gpu firmware path that should used for X1P42100 CRD.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

[...]

> -/* The GPU is physically different and will be brought up later */
> +&gmu {
> +	/delete-property/ compatible;
> +	compatible = "qcom,adreno-gmu-x145.0", "qcom,adreno-gmu";
> +};
> +
> +&qfprom {
> +	gpu_speed_bin: gpu_speed_bin@119 {
> +		reg = <0x119 0x2>;
> +		bits = <7 9>;
> +	};
> +};

Please sort the label references alpabetically

> +
>  &gpu {

Konrad

