Return-Path: <devicetree+bounces-223504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82187BB64FC
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 11:06:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 776994875F8
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 09:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4804B285CA6;
	Fri,  3 Oct 2025 09:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MduUiZA/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9F32820A4
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 09:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759482283; cv=none; b=Xbl+P3FvD8CQv4h+MmsiiFxrGtzQvlpn9NYMpTsU7SBrOuny5vV0Toq8lB6PuYIs85PdsWCXVYm1n/dopT74ljBES38idFVNNjqKxykyXUa6TrvBMDjKBMcqPPB+Jdrgx3SLDr8oDVR9tVURlXTr262Iwcl1OxA3AKKC0FID0IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759482283; c=relaxed/simple;
	bh=BuT24nSXvzllvHpbGMwermrZuD8IyeMFRfXE9Wlb4xM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PNJCCEXma7WvV2xwDxcXbF5YaFA/R11WZH5FE4k3EPClglHzBd5L8pJ9YawJE4xWYcOb/RCFg13GJO41herXuAx9awaF5UJhQ1tQ/NIRQP1BK5Eoz2Rj6nPnvh12F/wKIqajqhhJ6XUlcZcV8l1wwESs16Yj35SxKQ1h18t8YHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MduUiZA/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 592L99NG024148
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 09:04:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qLWZtUs5fVCswzg3NxSw0ymwhU21Dbhg4Nf1Ubu3B3k=; b=MduUiZA/NDh0Esax
	BTQNOqyqAHSO9Vww0gxpBsbXOIuZarsajaYJ0+bKqzAo0SsIoR361XBB7Q1bb2dv
	cjha7pakwKPu/H8qK/+RQeMyzcDwULQFXUqsYsovoee2e1AgUIFv8ytwfobSQcTW
	bydV0EmrlfK9UojlHtOdWSR87KzUCi1bcRrY6Utfag8uHkTJMif2H+s51F/XXMz5
	KaQ3WIBHJBb6Fd2NvTnZ5EY8X540f4AiwsMVS2P23ThHHUwROzf81d6Ah68OLcb5
	BmVVWLmfr2xAUatTbwu9YL6IE06WhRIXj0ZRNDjEtM526tRKC7X1IDncPLo+kox4
	xpeUiw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a6abmu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 09:04:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2681623f927so19149285ad.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 02:04:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759482279; x=1760087079;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qLWZtUs5fVCswzg3NxSw0ymwhU21Dbhg4Nf1Ubu3B3k=;
        b=cXpUiKXEtZYbC4L8rdKfONH2VZpnS8jJozlQFRzDKcQ2MvtX+tvbP/CyhyHFAqe8Jq
         178Fb6CNoEIPlPJPsdsZUSRzv5a6PXFwM3fWqu+hoFTDo9UJYhss1eay5UeSGsQ9G+Iw
         Qgac8XDQgVX5gMJV5CIjmF3qvXp2C7Vfn0GAgRcO46CMjpZFsllqQOhF8rSvGb8qso7k
         61dV23VTyZYFoIw5YiUTgPfBcyEqKq/EU4dfWuPPmYsH3LqqjleFz2n0S2A0tJf3f7Zs
         8MgkuUFM5UgImkeP7wWkbxFIuYM7wJh5WttXuatGHUBISmtO/hGTZhawRnaLVvrbF7eZ
         e8Ew==
X-Forwarded-Encrypted: i=1; AJvYcCXAD8hBfkODBR9abGiDmRU5aXKJ381T4aCWW+mEhxeOvvXEqs/Z9/sCw9NyUcmlrso3JNkSkNla9kR6@vger.kernel.org
X-Gm-Message-State: AOJu0YxOEm0dn/O60lN10zdS0ROSdWvqnOh8KZu9pgv4yoUCuzBV7G1u
	Ec7grAf6XLcriUe2HXXApEB6315QTQ61sA9GYlG/+pMsaSgMCDHN9X4uV6gIepNw9YkCEcqN4Rc
	Z84XP1P5O1QJ36Jv9xLRUcoYtXPr4JU/r6+g1yBCe1kGXjhUh4H3EXnLgP5X4B3s1
X-Gm-Gg: ASbGncskqvUGL2RAyumsTYfPEhTkkP805mscR2uZQc6/5GPYux50U5bML8tDDqpa0Y7
	sRquxoKz4uKBQFmk6YFy9MbZVpDh9QQ9/imAQJ5P/ZtUIBk9f61jjZ8RIAoDJNBipX0j/tvjkO6
	IdP/mGAlo7tJRWOkWww5IL4Qt32inKm59Fo2rePqwg5CsDuJ/j+Xs5Wl3x/9vl+saY1pR95dWSe
	RljzKoVJb7fID98fQ5NtVtFVsi3sXz+YoeinQEcf+iO3Fp0OHYTwKzJ7iaKXZaV0RKzUQf2Hako
	EsjP+e/gyyCzVO2T2Q54gXcK5aTF6KnmIOGBW57Q8i6Svs8nGz2QnvCHWG6GkhsTp+E1WAA37tE
	5Ae1eq5lpuqA98g==
X-Received: by 2002:a17:903:fa7:b0:256:2b13:5f11 with SMTP id d9443c01a7336-28e9a645c5emr30186725ad.40.1759482278649;
        Fri, 03 Oct 2025 02:04:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8osZ94IBlmYS6mfN6OxharIdntATWBnaR1H/rolxzIfSfK2AidWvRxzbO2yAgkm6oFVwbqA==
X-Received: by 2002:a17:903:fa7:b0:256:2b13:5f11 with SMTP id d9443c01a7336-28e9a645c5emr30186365ad.40.1759482278141;
        Fri, 03 Oct 2025 02:04:38 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d95bdsm43659375ad.119.2025.10.03.02.04.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 02:04:37 -0700 (PDT)
Message-ID: <3cb50330-effc-4089-b80c-d454bccc63f3@oss.qualcomm.com>
Date: Fri, 3 Oct 2025 14:34:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 0/9] Add PWM support for IPQ chipsets
To: george.moussalem@outlook.com,
        =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Baruch Siach <baruch@tkos.co.il>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Devi Priya <quic_devipriy@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Baruch Siach <baruch.siach@siklu.com>
References: <20251001-ipq-pwm-v16-0-300f237e0e68@outlook.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20251001-ipq-pwm-v16-0-300f237e0e68@outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68df91a7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=MaTjDNABAf216yt7wJUA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 6bBQ-EcQQNMDiPdMxg85b8FXu8AjjbY_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX4UMem530y6rI
 BVxCwk0Xdj+NE3G7Cweq2m4+1FRMi6ehIWtKgomGMmDVj169mKYoNC1OgMfw06M1/lm0xnufYfJ
 AXkxip0QWDreXs4OMSrjZuuYw24+fy0s5Zyy7yXhcO2BwKrM9Tivt4CI2//H0gBBfTvG6CI756x
 lELtZmeyYXqTcmgHRpG1LGpJn190LAFGWNLwHcahH20Sz6NQrMQ323jvZseWYWdF4maeOSCT10C
 mMxycXEEsSx0OachZTngqEbzrMhbC5tknb9pLdoylRJkZVur3DrNTBPYhn4aK22zNFjHm6dbpSG
 JEKt+NLZTzHTuY7MK3IZ8bgkgOjcn+/pwNtbrc3UJ4Zf979mhw7/x5TU7f7fsGpeL5W2TqIQLAs
 NhGbIgp61YaxN/Uaq0tmfFbcfGNjeg==
X-Proofpoint-ORIG-GUID: 6bBQ-EcQQNMDiPdMxg85b8FXu8AjjbY_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_02,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033


On 10/1/2025 7:34 PM, George Moussalem via B4 Relay wrote:
> Add PWM driver and binding support for IPQ chipsets.
> Also, add nodes to add support for pwm in ipq6018, ipq5018, ipq5332, and
> ipq9574.
>
> I've picked up work based on Devi's last submission (v15) which dates
> back to 05 October 2023 as below SoCs are still active.
>
> V16:
>
>    Removed reg description in bindings as the offset is not relative to
>    the TCSR region anymore since simple-mfd support was dropped and PWM
>    nodes defined as their own nodes, not child nodes. Updated the example
>    too.
>
>    Dropped patch to add simple-mfd support to the qcom,tcsr bindings

George, thanks for taking up this series.

Can you elaborate on why the qcom,tcsr binding change is dropped and 
made the PWM as an independent node? IIUC, it should be child of TCSR 
node. In V15, I see the qcom,tcsr binding is applied and *dropped only* 
due to dependencies / lack of information on the "pwm-cells" property.

Thanks,

Kathiravan T.


