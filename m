Return-Path: <devicetree+bounces-199950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6FBB12F56
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 13:25:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D89D3B760D
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 11:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1268B21423C;
	Sun, 27 Jul 2025 11:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q89WmYfw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C30212B2F
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 11:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753615522; cv=none; b=MLD69rWuvjMx1pXJ0IfpNtyl5PjR2mHp+PAXSaXTadYMa2FBra4Dm62qGuD40skStlLNqrq/sbppWCDcxunxVxcInMUJ96cbeqm3M+LOluyGzBMyRHfhRjJ4E1EFmS6PX5/yb8AX+GA7bV7vCxiUQv1TSnXVXxTHTVsDbQ++Mng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753615522; c=relaxed/simple;
	bh=mpicCbPyy9dZQR13RfrXUc9e1M5HBHhRY/bkK7x1vjU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t0Re08ZnV6LbRx4pQ91LiaFez0Rj8e21fSoaxmAnsrfDKS2lGqDXstZkYrW99foOHRMH2Ww6nMYEgDNKmL9ldLzzHPDwl+B1Ubq/tNYUXLwo0fLR9Jj/NBwKfxQHzWXB8urrtsJZrcbmJDYkSAKfqTs+rtOkkT90A4MCgRmHigY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q89WmYfw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56RAx3pR004290
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 11:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DfJKZhMSNWDE28vPZNyTvcOOnTgpUT1dF1tLEjH+ZFc=; b=Q89WmYfw4DOBQLol
	HXZhb830aRzwUa747kEC9YifTj/wkA3q2bIZcgwtVvfdoZZHKXDmxP6bkDv7Z3ZP
	Rm9/MDUmfHojmgAC0IQ2WT04PVnhLq9TKKm5r249awK4A6PLE2y7Is+Fjdj5hG9h
	OYsPMsrDRtGAxJ9zi4wvX+rjhgsxfLZj/DteH6LL4+8KFj0GpDmhIOCJkMg++5vv
	IwxEHkLYGUEB2MkFpXKrrkMaoG5sbsPMaFVZTkE1QfETKUaOe8KydM9/H1hS5l1N
	E6WU4E/G6wtdzc8uj6i+ZWk41m9hxkGAio3xb4kQHEbLMYHMZFi6kV7iDfFapILK
	JVaAXA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mqk29dc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 11:25:17 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70734e02839so33214496d6.2
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 04:25:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753615516; x=1754220316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DfJKZhMSNWDE28vPZNyTvcOOnTgpUT1dF1tLEjH+ZFc=;
        b=NNGlLPZcL65s7365hfoVmpI7eZmk1nK9Fblaw45LpwvIJEgzUfZP+fMTVuBFCZP7rE
         1rpFVBmBor+y+gBVGWJkSDT6k9PkRV/CdROoitTh0dgBoprSWNnC3uvTLAxHo6tKc5Lq
         aqc5OJG6XjFITzQHARTTIvIXn75YBbReTwLB7Z5iOiE0G1xxhfNVuTmsuQELVfrfhL1U
         MzYvSHZwNTTG3Ta18ZF0QRAJDV4Pio3f7KGP2d0/Pvf1TuGfHyjiTgsGSp8f05Lj3p1Y
         DFse/vP7UIJodkI92qQSfLsE26VRDucWNMRqAQynI+wyddN9Z4GRzAMBTQD2aWOIll8e
         NXNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjEzFi1My7sako/l+BJJPVrQc31KfpMbqDrgFLd8aHrGVX0hW7BJyg0W+h0r/tEZEmlCyaNMio9s6a@vger.kernel.org
X-Gm-Message-State: AOJu0YyGHRkgYo8AASCepdj4r94OCAg20po1jzwuKv4JYuJVIxwmFLDR
	KVskpixhq2wY9OUTT9+lJg3mNTVWPluJWmYWxtyHGiZ9qQsRpr6X/yzBpBN7XGf6BO1iWKWNqs3
	zDbklEZRwgMXgPkJRjVJtAloE7V0RY963ZsQ2T6+lVhhuf7K0CAw/oAzooCEJo4j5
X-Gm-Gg: ASbGncs6iGhjC84b1h0VCFBxKc0yqOCSX0FJEM6zkbh0pG6Yqx/rpcftop2wrm5+663
	yCVQ8Gh7JlTGzOYM5LfAtFGfNOd0fD0GMvfa2ukeMwFGiSdFiLLnNqSxN0C9Z+kF1n0NU/OArqw
	SIlPiwAXb3axRDB13/sI1dB8neixT6sCClI7lwpY2MpVoK7JgMdNo1CzZzkn+kVHRlV1SBXUtGz
	gFWk7eh8cEo6EzfcCS5NdELGwdC+A0fduupbxuuJ6oOrEdXJien+R6T4pwQL9T5yd8gGApnh3bi
	ckMwtlcEKOwgcqDpESI2fm7ntN8DaTu9bU/YasKDuix6OBLpHEtavW8DaqK0zNXq6J0=
X-Received: by 2002:a05:6214:300f:b0:702:bd34:75c8 with SMTP id 6a1803df08f44-7072049f3famr99229526d6.5.1753615516183;
        Sun, 27 Jul 2025 04:25:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkCofJ/1O0p8bOeiGbSGwSMF+ue6NzNwSlWHo2EXq+Z7g+oFlTe7pN+OBZy9EjswapZE4S/Q==
X-Received: by 2002:a05:6214:300f:b0:702:bd34:75c8 with SMTP id 6a1803df08f44-7072049f3famr99228736d6.5.1753615514814;
        Sun, 27 Jul 2025 04:25:14 -0700 (PDT)
Received: from [192.168.68.118] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-458705c4cacsm114650875e9.24.2025.07.27.04.25.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Jul 2025 04:25:14 -0700 (PDT)
Message-ID: <8b3abd1a-4246-485c-9f2b-63ee37ef808c@oss.qualcomm.com>
Date: Sun, 27 Jul 2025 12:25:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] slimbus: qcom: remove unused qcom controller driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250724132808.101351-1-srinivas.kandagatla@oss.qualcomm.com>
 <276b7977-45d9-4b37-a4f5-1c65802ac267@oss.qualcomm.com>
 <mwhxikivaxtz5px5e7jkqtuuk2iz457fy5drsnaj32j4o5qqk6@hwkcjso4jpsp>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <mwhxikivaxtz5px5e7jkqtuuk2iz457fy5drsnaj32j4o5qqk6@hwkcjso4jpsp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDEwMSBTYWx0ZWRfX/9241NdVjLqe
 IhJivi7DFDnM9bqDiZPanpnrGkfNymvxkQIq/a8RJMe+ESiqBHYHh87LYu1H27Wky+kvxlRr4pl
 p7OazqF1LmIYm5iZFEhWAYZUq7TLpwL9ASMM5ifXnFCprxqcPeVJvd86JUttdSAiO97vfqTXVxs
 nQquQ9vgJ0FyCkdNsIByzMigjuSo/Fd+3Fnj+ZwntBVCJZ7XSXMrIwM3qcTWLxZ4JfrehsQCk0K
 sAaMtD/5fw0EaESAcvoSSTfbnI3021rdm/eH4CkukCnp7YXboCIvW36pNEvrWWX8srsnIKsIFdr
 fXTh02wk2nlOLjQZiOKoiPh3rEel8UgQskl5AdIRKFzrjlrOL/AAiiKyigtwJ0xaOBlZDeY4lHL
 JrLYQYPngkyqFE/LFfGmOoyBdh8uNDSHHrAffEkGJK/6P4Uo9ZbRbyxPPb+51iTkgr/SIll2
X-Authority-Analysis: v=2.4 cv=fqPcZE4f c=1 sm=1 tr=0 ts=68860c9d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=XE7kxn0J_hhxY9Cja4kA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: YQkLUPpyTRW6J1BJGt0seNQi2oCdRCeU
X-Proofpoint-ORIG-GUID: YQkLUPpyTRW6J1BJGt0seNQi2oCdRCeU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_04,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 impostorscore=0
 adultscore=0 mlxscore=0 spamscore=0 mlxlogscore=674 phishscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507270101

On 7/24/25 3:24 PM, Dmitry Baryshkov wrote:
> On Thu, Jul 24, 2025 at 03:31:50PM +0200, Konrad Dybcio wrote:
>> On 7/24/25 3:28 PM, srinivas.kandagatla@oss.qualcomm.com wrote:
>>> From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>>>
>>> Qcom Slimbus controller driver is totally unused and dead code, there is
>>> no point in keeping this driver in the kernel without users.
>>>
>>> This patch removes the driver along with device tree bindings.
>>>
>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>>> ---
>>
>> I *thiiink* this is apq806x code, with 8974 adopting the new hw.
>>
>> +Dmitry, does you computer history museum require this driver?
> 
> I never had time to try enabling audio on IFC6410 nor Nexus 7. But if
> the driver would be actually useable there, I'd prefer to keep it.
TBH, I have never verified this in full audio use case in any of the
qcom platforms. This driver has been unused since it was originally
added in 2017. AFAIU, no one is using this lets remove this now, Am
happy to take it back if someone has managed to test this.

--srini
> 


