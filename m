Return-Path: <devicetree+bounces-273575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMqBBf4usGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:47:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AABBD25262E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:47:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85857337C37A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 195FD391E7A;
	Tue, 10 Mar 2026 14:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ppXc3x6I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eKSlLvXD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5BF38AC94
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151915; cv=none; b=Fzk0I7kJUYgY+4XlzFekgTgKP14lLllLK1XiRINopAeuPihJ9AgdczXHPulAsrNH4DilGlgZrr2GHJx6tjfdbTDPajXf+m7pAufhB11LgkjmX2ZXXT0OTBDeoGAL5mAzXZUhFUayqje9AGAymkSW4Nr3yn7JIm6xsJNr8BsEU6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151915; c=relaxed/simple;
	bh=7muMfh6lcHWoySE4hvw56qjM02VGOSc1W+rxRD6Wf7M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fZBKLBRdvbUqggHUSDMTZWFBZh7iEr+KeP2HMTjINHnvmyriPJzrdU+6ihtDsK8qTNurTTkn2SqRUmiPeO9WO7npYEtq/YEKDa6la/UR564+w2ke4aLUI2v3CfrxqFBHHWD18Jwbwc4CI2nw8YvN3yTjhuzr93NUTF4l1U4HyBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ppXc3x6I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eKSlLvXD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACnonx3893470
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:11:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BvqiKT0wunx5Wn8N1T4C8ObS3BrVloNnACj2VIsFGmo=; b=ppXc3x6It3Uc3En8
	GdZ+fjEhhrvAjzqSqd9UxJcZeAVNJmwXRgoqzS5kZgQQYS34HwdvKJMPBHh+M0Pi
	s8azKCmcWlzLwHn62BtHCH5aVa2ge6SV2g5pmdSFexsMxCqf6NOyzNdghJiJRvsT
	NLFsSb4eSm7TMj23WoUgloheMhP6v/GPkHqo4rqyxjy0kfU6HZzPtAgTGaJ6My2e
	SxgH6PvG5pTwc1lqH6lyBQ3f1HgkSXo5ovGGwen0FHZa4Q1bPCwJZRqGgUMTFrGs
	eEceoVGrmn7+AEALCeHxqtmWakljzbBA8/urdRRDZfHRZPhPgdXEzD9xvSG7tGi0
	XZ0lNg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctkmyra2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:11:53 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5ffaa21ba15so1279462137.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151912; x=1773756712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BvqiKT0wunx5Wn8N1T4C8ObS3BrVloNnACj2VIsFGmo=;
        b=eKSlLvXD4InNC1ftENGV1C6iDaZtXonhHljd5mRI4oCm1bMLrd4hXJIrLaf5iI5g/a
         ZiFN6yYEmQORlPWSkje3oHwQ24CX/coDcDyOqMk632ODOQ5AHmkvTe+9o06lGA/W8S27
         sgUUsFYFA8CElbPB9nsHmfRO/OCVFKWYECQ6fqaYvr0mXSDOO3p6q7ZJBE91YTSE9rWB
         lhEmNk/K+lg88ooDWMcZ0KPs5k2H8tTTS/AmR9fQIcEbFtn2UYf1PtLh2GrZNIOUbKXn
         nn3TJBbfyliQLCiD+Isr58V4jiRvzYh327bnsdeg7/MSQBNvoO2Y6hz/dZNQTA5+6wt8
         k7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151912; x=1773756712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BvqiKT0wunx5Wn8N1T4C8ObS3BrVloNnACj2VIsFGmo=;
        b=nDDZ3R6cONnDOIGsdI6XyIrptskuqNTXYVzhKyAsJBEiaPg7AonRs7rvyLHRRCBEeM
         QBIgzrfzTn7OxHkHSIoXkbls44VLBq7iG08BXxnSREt3UJ8GvJyoxdQiL11fkRrDVIwe
         7sJCDd2Yk8cFk8h0eVfvOcQlivhrcJjBDL+6d1eLqz5S2izBWCPFC5o/92lC+y61SFfq
         zV1fAUf1IxQWQYQ5Z0uTa98M7W9B78lPeLoGQuBbW35yiCQAXago8ST3vhV//jxn7s17
         +w3DgZdgDX30Ec6IQ7mqxmRaYDLORcNixAQuUebosgbJPxwu/hZ0QHyTssO6ALzkyJ5q
         NE+g==
X-Forwarded-Encrypted: i=1; AJvYcCW6QiuB3DWeckn0DtPKylefc/FNC/i6mYCgp3mrBSdz+FoU2KBgM5LV8T210U/5g4EzsLC/cm28Ksks@vger.kernel.org
X-Gm-Message-State: AOJu0YxdprtbP1sDmdHbqEEZMLjc7tZTUz3lQliE4SV4vVKYVhj4LgZy
	/wKGO0Bwx8DfO5zk6Id7kt+RRYkVuwGMCUnHvJYnSor5R6wAMCn9nrZJpRKNJS6V3ZABiA5JWHi
	KSu0OxV2Y+3VOgHfqSWM5coI5YUzs1AgJTiFn/1g3oCXaV7Dtv8gcXBN8fkVDrjKF/EeM3eRL
X-Gm-Gg: ATEYQzw3bS8n4BdEk4nJz1CS/QBQlHGppjm0D6QqVxp9u3gLM5apJZrbLg1NxNubZOT
	QT3efK9EnC12ng6fZGytunuGROp3yACeyxjIaWGHgOvVv/bNaeHqoaBSIx8Mgvilx1Ht6AJQd4R
	lpYrg18oODdcWdiYCduW5ZbGccRiteytIbOQ4KpN9ySMuZE1MuSvdE8Ajn9CDXQKlazyEo4MRUD
	ESa5KmTKgLxPvyeniZAdBVJOw8JxGtM8jlCS57yM3GotcLpw4gunhhsMdKOTvPEiGgvh6LJzojR
	W5zrspFAY3SjmhPUt4jO42LG5VGSmsLexyRnSaE7bo0tHRt3kwuz4z5jvu7XgS2aogen6xOopX/
	E5uHVzbhNvMUI3x6jmpA8s9vfeo2VxFbOB7M5vtYMMRSS4SvYxPMBChFItqpqdag/6mnjBugmML
	Z1UDs=
X-Received: by 2002:a05:6102:5094:b0:5ff:2a5a:30ce with SMTP id ada2fe7eead31-5ffe5a6dbacmr2804825137.0.1773151912061;
        Tue, 10 Mar 2026 07:11:52 -0700 (PDT)
X-Received: by 2002:a05:6102:5094:b0:5ff:2a5a:30ce with SMTP id ada2fe7eead31-5ffe5a6dbacmr2804810137.0.1773151911583;
        Tue, 10 Mar 2026 07:11:51 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f139e0dsm520650866b.41.2026.03.10.07.11.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:11:50 -0700 (PDT)
Message-ID: <5186fd6a-45a4-404e-895d-671a88fd0469@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:11:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8250: Add inline crypto engine
To: Alexander Koskovich <akoskovich@pm.me>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260309-sm8250-ice-v3-0-418bf5c5c042@pm.me>
 <20260309-sm8250-ice-v3-2-418bf5c5c042@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309-sm8250-ice-v3-2-418bf5c5c042@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RYudyltv c=1 sm=1 tr=0 ts=69b026a9 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=HrWJjY-GxD1LJqCxqiEA:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: tdbE00w3UcCJsAE3xRPHxuqCkq3NS7vo
X-Proofpoint-ORIG-GUID: tdbE00w3UcCJsAE3xRPHxuqCkq3NS7vo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyMyBTYWx0ZWRfXyXZDPw9QMl76
 WJ+jgCAkfRjIze4U+f987KUWAf4nCTYEqm7eB05FVuDAoGBxncvkq2p8EzRa0GeP7932Duos1lv
 zGRU4drMgxAem1mTatRvvLXjo7sqD61DygO0sv45QFTQC54r7M0dFvLenw0KF4e2zwoLd4rrhJB
 LgoZmup9Bilu7WJFdHQcV76PjS5EM6sw2jrs+2ZDmqmVPfEwRZ+wE6UlhLNamDyH56qCYmb1TwF
 8yalbMVwCi/FAg9YrLOw85MFZSkjwx+l4G1IEP1pdDbKM/SQ6khOsKQhVO2M/tSbgnRyvT+PCZW
 HH+mhYIaFysDToNkMQ+hqXkaVdzXM7y8k9oS1xA5AiBWT5Gjtjq97p1Msr8c1O2uoZPv6YpgoPW
 eEhO7ki9X/eugHQeC/vJKEZVZMPNQvdLeBVSg1B9by1eWB3uPkVDn5v/TZX/2nP4chmJJbD0np5
 HyEWrf1Zb0Xwv0O9qNQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100123
X-Rspamd-Queue-Id: AABBD25262E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273575-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,pm.me:email,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 4:12 AM, Alexander Koskovich wrote:
> Add the ICE found on sm8250 and link it to the UFS node.
> 
> qcom-ice 1d90000.crypto: Found QC Inline Crypto Engine (ICE) v3.1.81
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

