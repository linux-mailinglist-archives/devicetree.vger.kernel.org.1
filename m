Return-Path: <devicetree+bounces-260305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE+iKaTleWl60wEAu9opvQ
	(envelope-from <devicetree+bounces-260305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:32:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E59C79F7F7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:32:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 634A03006B6D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA692DF12F;
	Wed, 28 Jan 2026 10:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QG6VN1dG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dBQiZbr+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B649423D7E6
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596320; cv=none; b=OtZ2YbaIXmcNE/JrsUk+sZBCcNKU/vOIEuW0f29B5i5X8ezzsKPqPqLlTNVZ2/XU9nzR+jW9GXVPet+4Z1a7bEGVeTzIlh6oDp4IqqfQTW6+yyG5YLvJiRKO0pZSSo504MZxZ8fYDVUEFSkOpUVmJojPE91dQBeFMEvTdyegAuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596320; c=relaxed/simple;
	bh=FiC0GIWTbJQEi0LFdKnuQVwAbqZd0WlWbTASgIc5fLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IDxssdkAH7pLD+Uy7QquFqbyT+Ir1Ewq4moCaDSNhPRDbj1xVKls3HLPeipzDaUj1lCNcMXQ+Ho4yfmhm27wPkTTfkLYSEYouBPs0zlx6z2L9WsrwbrNza5SQcH61aUIYvCHwDmutJOlbvfjAtfZwYDuBUvQyDy/MjQyjeAhjfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QG6VN1dG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dBQiZbr+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92C9m3387356
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:31:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	402IcAbmnlH0VD0kBgVmX8N/fUEn/UEV1/Jf8NHkBvg=; b=QG6VN1dGoC+PR7ir
	hlkOHQ+6COzmvcUUV+YcDOIZuvLa+kZQuphbWfrhjtk1tEY5B476AOfy/BdM6mWa
	DrWumDrfnsO1rxVaMOcbvmb4jcmcRnLfsezH5bERVCpCohoHgOy5dIku7o5hbjrF
	16LNWnm5hqJl/WUPNeTiflYxIJwycfZyl7fYZKNy0f0RIGnDiOWwdd5Lph+d/jod
	+GK2j1U+ETakiWQP0Ua5g43VGPoJDIeoaEzkJ/FH0Gk9DLL15KYn8KUmm2eW3eov
	4PLw5ILtmGiaTGI5D6ZU74bDL/lrGFw4jY6YG28l/OupVhhCVIwnu4DZ6JuSVTgB
	NldLsA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1dfu3t0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:31:56 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b48c08deso197954685a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769596316; x=1770201116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=402IcAbmnlH0VD0kBgVmX8N/fUEn/UEV1/Jf8NHkBvg=;
        b=dBQiZbr+Xj9Cjt39icEEYuJ5/fMaXcCG2+c01ZKxp2CTsTRR5ZSYNb4niYXTeiYWKK
         ZQEm/jUnyzXJqz9H9kPDVhleENyT1vO8TUtLVS4nJorcnUApAbxREkbPCHZY5jioYelL
         pB/+SO0dxumZ6jOLLcx6TephCIGjmSrDuFh2ee72EuC2SzI+Rq2UlDWuw2UBF99Lnouv
         aaRrdZo3Wr/bXr7mtSkvHdQWYpyMZLb8T1ofrj8PCOuDl8qseb/T3iPOyS0+ROJ3dUbM
         nBQEWOn8jYncIDUF9W93ZKV2DUwFAiPsRn1gU2QoK91awWOF7a2fom1etllsBdG6wuKS
         rC7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769596316; x=1770201116;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=402IcAbmnlH0VD0kBgVmX8N/fUEn/UEV1/Jf8NHkBvg=;
        b=FXN0q0lfudg/0fSd3RwmbFfZdxS5i0SUsLspGKK7HUeoI4K76OO/+K68KFJX1p3qze
         kgntfc/uodf9G5935Gsm4Za4Th7coILnQf6UovQGUkJwIDxF8lF3Otl0jii6Q8/x6NvN
         tT5vH9mNZCF/PpaFK/oDqkp4Mi8REfoHCNW1iZ4m11DZRiE/ivj/CV9haqj2dhVvaMTC
         Z+SGwz8NiUEXBVC4dZ4c+AVWqLUJFG7LmhXdCoWbg6n8TdCX6th53gCilA34+ir4Vnvl
         kDuPvJJkcMmQTQ8dSvw2wfHG6/tTLIH8EXObbj8AdNi8Mm+9MkqvmKxdoWEEvGlMIvq2
         JDCQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9VYYzhlo1QTeb6voG7TCZ5+VU4TWEr1B+ypLVlaXkcpA91p9zIB4V8pmc4iiORgYhAuPF6sCP3x6p@vger.kernel.org
X-Gm-Message-State: AOJu0Yw73lBGVHdp6Ha9JyibNO5xnSXhG9aM5x9HVtXjc1+1mpm7QdJT
	RoXuZQwOdDmu/t1iy440t45k6nbQrmlTwNObaLXI+xnSbzHcnbcqQs88LL4EvOBNTZjCJG54Aw9
	olLCLWzq+jXaM7Nu886CPK2ix+3KBEWJ3ylyLlTtha2SrVNnor2ueewaEeAQOMm/A
X-Gm-Gg: AZuq6aLersgGLNs8PGy/j8TRBHA4TKzA9rqCpDwDM3G+G4oZOKf9urjQv8ddQ6kV5WJ
	Nzr494MD0Iwaul2mJFOgK9D4q2lQWFWAN8+Iz6qpxm49pstvY9B5Mpy8BBvySsHJW82/3M3VP28
	TrK2sw62K1N3rtuTKzhLxBYmJuvqH0KztYno1LjHHoQbIxYTKcpWtpc0xBjsAu5JglWmjVDXC1E
	YQCmeo6jIwSR/amVXJSDK4RURmsk5jSnrWcEen2zQpdF0lIvJpi6zSiXErr+GhBPCnGw3IXhmdJ
	fjYK1B/3+ZvqL5TjY5hLrZ0nuaCpb1ixt5h629xPpeUbhBtNs/m7iaul77/7kgWYiWUY/Tgh893
	DmhFk7ELJnl9ZGGXSI2Y1Z+ZKb88pjzR4GwnDvMRGNK/P38Jkrx/zHKOzKwNG0s30OCQ=
X-Received: by 2002:a05:620a:462a:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8c714c21c96mr102178985a.10.1769596316075;
        Wed, 28 Jan 2026 02:31:56 -0800 (PST)
X-Received: by 2002:a05:620a:462a:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8c714c21c96mr102177685a.10.1769596315639;
        Wed, 28 Jan 2026 02:31:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefc56e8sm109798266b.15.2026.01.28.02.31.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 02:31:55 -0800 (PST)
Message-ID: <2324aa41-6b2a-41ca-9f97-7a5b5e0f575f@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 11:31:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: talos: Flatten usb controller
 nodes
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260128062720.437712-1-krishna.kurapati@oss.qualcomm.com>
 <20260128062720.437712-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128062720.437712-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA4NSBTYWx0ZWRfXxZjhJsdKggYH
 boz0voxoLM0k//ZCY7NfBqyWLfduYvljF+dK7ChiJa/QHYzQxMBh7dQqqU/9aXJwj/J2Xn05Pty
 YLorlMj3Ia3hFn5cjWSU66lotwI8xw9fcMYSleLVQCpFV4Lp5Gg8eN+RqAfdIeiWUS29sT56FAo
 uVT4jqkPe8XFnAN9RJytzPqH0H8lp1fdhvU20cvy2Rtlewb4neiWZAaOgbh0eFAVZu3BSImVbF4
 zBvn8x9ZA+opmRaTYssS7/aSttkgtfc8qzawArzRhLoMIBjXR5UrE98KGt4dHbM0x8aDTfZAy6W
 V8A9k6c9Un0cXzxI6EOXQQ6UcNgn7nurH9F2J+Y3go9Fo2Ftl9TXhijOJ/l8ElvG7j/bDkIwcNc
 hWDAop7sXVef9ZPTne7/biGiqLMdn/ZpGyEaxgp44mN1IEv0K1zxnkt7UOzRPuRIds44CB4Dv95
 uBmjJ0J0LDn+7yAI/pg==
X-Proofpoint-GUID: liA5fdRk-IDz9gZ_Pm0Qsi65turJNWKu
X-Proofpoint-ORIG-GUID: liA5fdRk-IDz9gZ_Pm0Qsi65turJNWKu
X-Authority-Analysis: v=2.4 cv=YeuwJgRf c=1 sm=1 tr=0 ts=6979e59c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=FPiGsNb838X_Hz9JFSIA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260305-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E59C79F7F7
X-Rspamd-Action: no action

On 1/28/26 7:27 AM, Krishna Kurapati wrote:
> Flatten usb controller nodes and update to using latest bindings
> and flattened driver approach.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Have you checked whether this brings about the same crash-on-suspend
issue as it does on Hamoa?

https://lore.kernel.org/linux-arm-msm/71c15a78-7a50-4913-b677-e5308fcabfad@packett.cool/

Konrad


