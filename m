Return-Path: <devicetree+bounces-221687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB600BA1E8C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 01:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A21D46235C8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C83DA2EC094;
	Thu, 25 Sep 2025 23:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aGbwZ7eQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424F42EA754
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 23:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758841408; cv=none; b=jE3fh5ZmoIHxmxvlkMV69VuAE3kR5vMKLfQxA1C1AMdTzJYXnZmrg6EnHwXgBDd9ulZbGCcEiFhDN1eh9xkLSBlftziil90pAnY8nY16x4+ROq4sY9hB7mPBneVjSbmV1vTEhWbr1X5sHrg0hkSveAC+hCRp0j/SZ95OVMdHYeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758841408; c=relaxed/simple;
	bh=Re6vJcgbqIa0a2Z8s/dyJr+80qdfjB5ADuATqHo7/iY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o1KW/6wjirDWzhyYhY9ir6z/Npwp9aUu9DIy+/t2yQgRCdktpguov2joqIB5ooTr4lpWmWGZmWd9PZ8qmfgxSJTG9fF3ev4HK8h1JXqjw5x2iQ/7f04srT9e+iTUDY5KzOXg3n5AnWbYPjUY0j7tofHrPVCEtnvbPtV9x8d8NAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aGbwZ7eQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIUuOI006031
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 23:03:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WfzKhTLo4L9EzNBCoQA/Ic/EtRob2BTZ1wUdjds434Q=; b=aGbwZ7eQaktzZUWg
	TtevFKgN97y9vQBzP88J7XVt/wMNzOmew8z97fNrK1c5Kh2V3DhUBDjDi1g2VtPR
	8S1/M8Mz4j/Aubuz5cnHf7znpl2VPnxpIto7IyLMvnz8L+zZKHFm3Bf552x1nkme
	QE5/wnQACNH4COg6qdHBk1bv+A2TT7IilVu+WTNsIxRaoJiatdxhwx+iRP/ynafO
	XY3VlPlhJNPTTILXWRujMJOaTM9uiv7PoSzfa/69EeO8IxIazJwE+bIxOj9jvcWE
	10mhHmmmvp47afkRDWXwUtV7QjOQNxbQXd0/4P6XN+0bE+hciNoUtr7n1ovtHVt/
	EVSN3g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db320ky5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 23:03:26 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2698b5fbe5bso24991495ad.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:03:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758841405; x=1759446205;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WfzKhTLo4L9EzNBCoQA/Ic/EtRob2BTZ1wUdjds434Q=;
        b=IusKizf3n3MuGEswVH3TDJ6y9f3RE6a9c7NLuZcJ5Jveg+eSZv4iYPAAvZ3rcAttdY
         UZoi+xeuRaBJrBvRxpjP6khqpESMYJ1iVUnyFjAQIzq58uXmfYUNKXUzmCt4mG+gIwlt
         yT8RVopw32GCbaRA2b8M1V9vjYRTOh63+i7fZTHhyRANLZsZtEZjxEdoXQ0l8CwnKeXh
         E8pVpnY8nkrCmsJtInmHNC488wxAf0Qs+QL/Q3hS2liBrMBZFFmUOxoPdmNvaPh1UnRZ
         pJb/bsSTCyynsgd0GcMsfBZA1mH1cNpJe1FFZzpsxl4Dsu/NOkV6zPayMsU/eRah4ed2
         CULg==
X-Forwarded-Encrypted: i=1; AJvYcCVqAJ2Uo2+mAvMjDKYEu2DlMmFtz9R+miuCx8xXW1+3zGnPkRFhQD6lAs0vncrUbFBbS+5PlI5WpoC+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+Tk6wZetIY5u4cz/kPVeiZV7s6leAmKAcaRa7p4as84Nq7Hpz
	jVzNGl4vlX1WLxtQsNYFC4q0qR1ICgQax+uU890K0ZJ5eKwkA8Rii0eTzNjDC1y6x6l4GJg6MsL
	H9DEYK5zil7v3Q8gJDHlctbBoaNQWmCRIegxsivsNYogweNZyVLsbgU6wLe9saLck
X-Gm-Gg: ASbGnct6YF5eIPAJMwK0KAiJjEFYW/VrFSXwcrnrni09nhd8p6QDmidnER6YriteLcG
	U6W+TlgdLTp6xO1iJdd6ojIDFxupMXVIxtDdL/q7iob2sqp5x8oJqm5xHW3+geAjFiFgTbuRcWR
	OUK50HiZp2H/AgxFray9QkzzY0Ae5Kolhd3LVl5lU1uj7Ivs/CEmWDPDKp8OSqRiYEeKbmGh6v+
	o3Pbc9D6mfrUyUo+XNMXZvGdTRJ9IUa4DpSDfexTOdj03feSXDB1EVGOJKn4CgjlzODIceMLeol
	ppk0ulgAt88FrLpWdQbIkLFpqR6ACoI0L3yGPv+drCvCb8MAEkucJQVV80xnDVcltP/+JR4tGp9
	f3EMHBWw=
X-Received: by 2002:a17:903:2ac7:b0:24b:270e:56c7 with SMTP id d9443c01a7336-27ed49c771emr61707215ad.7.1758841405495;
        Thu, 25 Sep 2025 16:03:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHOJqmjzO+AnKfT1eW43G4SzpCox+5vXEEMV2sxZr+rbaIyUa/gbfX30AzcLSCvAvNAzb4yA==
X-Received: by 2002:a17:903:2ac7:b0:24b:270e:56c7 with SMTP id d9443c01a7336-27ed49c771emr61706895ad.7.1758841405047;
        Thu, 25 Sep 2025 16:03:25 -0700 (PDT)
Received: from [10.73.53.199] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ad1d45sm35260175ad.141.2025.09.25.16.03.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 16:03:24 -0700 (PDT)
Message-ID: <297ee4ab-73f3-60d5-8e16-8830135603f1@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 16:03:22 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
 <bc866f21-9b41-43dc-b450-59a25d547b88@oss.qualcomm.com>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <bc866f21-9b41-43dc-b450-59a25d547b88@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d5ca3e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=R8zOBIxM2Q8kPqU31PkA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: F5HRWJbkf39lM7EC8aXc4Uinrx1cIfRJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX/sPfQ8YrpPro
 mmsyQHbDbJGA1f2n6SfxZ6deZvqv45nbX7pPZo+/6rL6o9V+94JnSYeqTePFeiUquu/GTWTcFd0
 vm6QsD5glwGUAeCortUA5Uol2a6KaSSQCgDEUOybiassNZRPi8PCPVIdsSMAcZKaWNoglXR+b2T
 4GhGAZXAQ6KZljBT5J2npoMLYDti+/e9HtKFCAOb4CZG6qvwVgMx1V2Tvn44gMh4HJJ+Jp9qtT5
 MWlbIMypTlIxQE36+DJbmHr5i/tvrkJi28UNGRnUPVDToigvB9v+CAt26hn0eRSyGHiOuBoYrO7
 tF0nwmn7F7ZvXoW9Erw5eB8xx/YNvhh5fSkIdaejqtMUQg5QTdBA3LXRTZlCqirKimBleag1K8D
 rghaJh1mwOxyPYOc0TcpRWVCwwMEcw==
X-Proofpoint-GUID: F5HRWJbkf39lM7EC8aXc4Uinrx1cIfRJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172



On 9/25/2025 3:43 AM, Konrad Dybcio wrote:
> On 9/25/25 4:28 AM, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> [...]
> 
>> +	/* override hardware control for reset of qmp phy */
>> +	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE])
>> +		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
> 
> Clearing this field is going to prevent the PHY from ever going offline
> 
> The HPG says this should only be necessary for keeping the phy active
> during MX retention (and the listed usecases are USB4 wakeup clock
> generation via a respective _USB4 register and/or USB3 autonomous mode
> operation), both of which are currently unsupported.
> 
> Are you sure it's necessary / desired?
> 

Hi Konrad,

At least on the PHY HSR, its mentioned as required, and if I remember 
correctly, if this wasn't done, I'd see QMP PHY init timeout.

Thanks
Wesley Cheng

