Return-Path: <devicetree+bounces-202246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D7BB1C870
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 17:13:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F677162DBF
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 15:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C57828DEF0;
	Wed,  6 Aug 2025 15:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="khTcZuR5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39403AC1C
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 15:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754493202; cv=none; b=j8cfFbLXbkO+xFe0st2EPFfiSlAD8iNGfTboiHknlgVqVrnfHEPBuq6qGksIoBd86pC+X9nRV/28HeO7c67KrxkNORWFpNu35PiDBJtAiaOBpg6S3ZVe3uzZ/2cb6bpkgjCCEH8niwXiCYuEEVQe/A5cCjBBRUfWpfAbc+jr6a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754493202; c=relaxed/simple;
	bh=E1ywD+6b5TLidW881C8mih+zT9s566iOTR/teEUThjs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Udp77Ywxd5OxxyoqkpTF7pbYSydQ5GcrHY7kwWaoQ98zKPTeIXaEjhkZI0H8bKP2p3vOjhw7IRjU7PsxWsBgTjdUtkkUaivOoP1GZyJFhRt7M7dqTIytJIoZWEh35SlzkKP7CSW89b4AUIT9sxRpfvb5+oBLdJVO4QvuawWRLWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=khTcZuR5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5769epCB032380
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 15:13:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FoD5ue7FLv/tVVaOYwgBAkYsHyRWsTQqwoytYtbdy8s=; b=khTcZuR5SEhABMhO
	WwwhLWA5NvWeZ3UTRbz//6qHPRP6zoOaKH+jm41Ar0R3QiURPxJlIeRaiCI1mjvJ
	hf2GyoYqtjuusjbVywIroHfjbUZoftoUdB+Dn8a5hYBAhE11k/OuvYZrGVRq7q8i
	Ts6pnSkBprKFdNFQyTDqDEvkZKzRLA2icIDCFnLQO0w60667mcNcNV6q+UZh4NzO
	eYvDXM4aJVtOpRmQX6zGoby+oVH6PiLU2dsSKrQUNCkSHkqU/NOjxpGD0IDhYwdO
	nQeI6eDpKV3q5tURWaYc190g3xOcnhBcfkE3sNPHAD3z6siBecp0rT0Js/sLJDVJ
	ebpO+g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw2u7af-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 15:13:19 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-707428e0cd2so80996d6.3
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 08:13:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754493199; x=1755097999;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FoD5ue7FLv/tVVaOYwgBAkYsHyRWsTQqwoytYtbdy8s=;
        b=FmPgTvXu2yeE78MTyonolSF7fNU+rhsM+0NUUvqRWHr4W0pGwa9l5z7S2iZp3Pb/86
         /Nwmn6XE/QTVSR5sGGchc+0Ls4SgO59dpmuJtt4FEkvLiXxFBxkKtCtF0OHPL7CogOMQ
         ItsL2AHxImd5QLlmNYZTHCMZjKulNFzKkbEFICtdvcRTzwfNL3OtExSgK73LJ8wjP3vi
         YzxMjrG3xy9ZglvnQOI9j66N/AYZxTLgQoYaAzVofxIA8+FNlCbDRmHYnPKQ3N56AuSW
         RkWibLW6/urb8K/wJRBHJyxW7X1mpIKjmrual21B+iNIGNlSygPoOWUxCVnSiHHTh4W/
         6jog==
X-Forwarded-Encrypted: i=1; AJvYcCXdfDPRR4PRqWTbfiuEcAPEOBML5ZdTwy1roGqHyJ+LLvEnzslBvQ0RovrlTvBW7GQMlhMVKEfAFIUf@vger.kernel.org
X-Gm-Message-State: AOJu0YzPKS2rtGUWE8WuM4dIfc49zyzxuonNKQyY2OFQJRsE903H0A9+
	1XpQ5eg0sS4lFyjWp3Wi3i2BdhXALssh7ylUPy3OCUkPzZCRv1WYHKOqCvoX2xfB7JMGC2ukC8V
	x5+hCxfgCwb0N1v3PJFUuJhM+SigUotXpN0pIj3F77Oz91NeusK5/bl8VgidFIleD
X-Gm-Gg: ASbGncu2LHmQguJjq9brtvZN35SFfDXpqSfKdrH7fHoahwUhz3qb45t2kKRx7L2Rygs
	QSZGTEnRhLZXYJiTkb1Vzxa7q0NRB3iQLGO3LvNFkaF90eSrxwQ16oXu5EZLGWg9qnX/OXIXfmK
	E2b3YSIj4z3+W7TqSlt6GsBsi+adxZBbJKzqQCeZ0YtO3O9jhpUAbFPZ7KjPURoHGk7R1uQyurI
	ubWBb1TLCrnThhNfwzgJvOgQSrJM9ih5V9PSF2G0oVM7K+DRSQCJZ1Nv1e8wjJRzQnoxSFRMxP1
	NmbsIBuvDZIkxM+E7JVoCZ628wSs18wEMn/OyYe5DpOQSknDwooNhAjT+rFJOEk+03xkl2+DzJG
	0/VfGVO+//js8hvah7Q==
X-Received: by 2002:a05:622a:486:b0:4a9:9695:64c0 with SMTP id d75a77b69052e-4b091575d69mr22519781cf.8.1754493198920;
        Wed, 06 Aug 2025 08:13:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVjPaBvVyXemUS3cDbhkwc4YdKlt9IkD9oqd8GDTb3Ol2Pm9hJNwgpylnDtIcL+fPMzpoJVQ==
X-Received: by 2002:a05:622a:486:b0:4a9:9695:64c0 with SMTP id d75a77b69052e-4b091575d69mr22519121cf.8.1754493198074;
        Wed, 06 Aug 2025 08:13:18 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a219ecfsm1118111766b.94.2025.08.06.08.13.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 08:13:17 -0700 (PDT)
Message-ID: <581aaa8f-9e08-475e-ad23-3369fa05e53e@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 17:13:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add vibrator
 support
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com>
 <20250806-aw86927-v1-3-23d8a6d0f2b2@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250806-aw86927-v1-3-23d8a6d0f2b2@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vbz3PEp9 c=1 sm=1 tr=0 ts=6893710f cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=ZdkvxXOI2w3T0V8kwTkA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: ooMCXdQMWylwwWNtfN7XhDL7RO6bbWoS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOCBTYWx0ZWRfXwidkYJ88+Ojl
 SyJEsbmK7OPU63dol9T8Af2RoH3cBissnI36NvkUM6hyypS+D7077JC2FF0/RHmVamPPWwiff9C
 yZdTInn+bfqSHCGmgzoBAfDVUOSxkpOxHiQCBRn6cuV6WD+qxL1B52FSRF9bToNVcdvfR2OKTOp
 LvQgNv6v3S21Zm4zc+bM05gd7r2Iay/GonzG0SHpN4mXWtWicwV+LX2BlnQBF3xPeJT1mxQPyiC
 ui3TUkvJYCOx2FTx+eDwJW4QzYqarATOmdmwzW7hreVtmKJmST6SEsX/f1HbqDKSOFC09qCjdUu
 KZsW4wo+Fq3PjISPC5Nad80i7YrMZC4vOs1kxIOfKFNsseeD/c9b7QSzEF/EZUmI/zOkhqY176N
 bRwNnxGV
X-Proofpoint-GUID: ooMCXdQMWylwwWNtfN7XhDL7RO6bbWoS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 adultscore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060008

On 8/6/25 5:10 PM, Griffin Kroah-Hartman wrote:
> Add the required node for haptic playback (Awinic AW86927).
> 
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index 4c6cb4a644e2..9576efdf1e8d 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -866,7 +866,16 @@ ocp96011_sbu_mux: endpoint {
>  		};
>  	};
>  
> -	/* AW86927FCR haptics @ 5a */
> +	vibrator@5a {
> +		compatible = "awinic,aw86927";

I noticed the suffix is absent in the compatible - does it matter
for discerning the particular chip and other variants?
Anyway, so long as you and the bindings folks agree on it:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

