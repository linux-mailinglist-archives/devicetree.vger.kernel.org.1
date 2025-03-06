Return-Path: <devicetree+bounces-154647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1F1A54179
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 04:55:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D7311892FCA
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 03:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32CC619CC39;
	Thu,  6 Mar 2025 03:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WebLRMYi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3391990CE
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 03:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741233292; cv=none; b=rCPjL7lDYHNJhKTjvZRM9Dy7AnAfh/G0O3tnk3e4S8KXBKTNdBw1olINjfCFb3n5x7L4ibH0fSZ3tldXfmqV67cSP0ZaB92M1NYWuzplNeDMzZ2aUu4K+gaUKniy7UpMYeTMc91/EHWqDfx7e7RjmG7xVheQxVzzYYhJXu63Nz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741233292; c=relaxed/simple;
	bh=gK6PoeLsGO+Auc46xWPQ8Vw6lIha/f1al2HF/4g9bLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k9FlDb+hXKBIVRqBMq87fivSrkmDUsuCdo+ZSWuXiYw60kGjZCG2rctZhquabPgE7p6LKno6z8L6LfC9e8NS1dCf6/0Rf8WuuKIDZeIazAfsub7OEc1DH7iBe/Qge63R8ptTlCh64DiubA/h/4dXesG/CB4hg8JgpaxgltIqAY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WebLRMYi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 525KUNTk001782
	for <devicetree@vger.kernel.org>; Thu, 6 Mar 2025 03:54:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VMj+XM3Z7JH4+lFd4b2GenYlhhOZHTCBQd8J2A+tk1w=; b=WebLRMYitnfl+Si4
	FxnOil3mxGXKTb6d+s9nWOzg9pwMBNmAkbyYJFdcfWhtvkBC5I2HQiBsTy7Bei29
	VDeE/M7QOlJT5zzwacaQOVfgCx2wKDpI1x/IP5rjYwMMKT2jXMweeZB7KHr18YS0
	1bF6aVoC+Xe75pKeeVPJn/IeY96sWBLAgEmBVrJcrCiivFM9Nd/8ktPr2PeKMIxw
	IRY8jwMacGhUGpjh/gL+NrGk3nCJMye0MiimmMg6C+vvnnwBKKLqIga4xGmW0ewS
	0O6WVMoSC0lgQjRjx1vBPGGnYNQPFbvotpkv3AhFxQgIIcHWHL7flqFzMmDMypdJ
	IM77dw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6tqkmn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:54:48 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2240a960f9cso4848575ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 19:54:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741233288; x=1741838088;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VMj+XM3Z7JH4+lFd4b2GenYlhhOZHTCBQd8J2A+tk1w=;
        b=GzhTEvvRbmJoD3UidffcZ12fluwq/ln+V3zi536nXXULzzh/bUqVnvhzbNq4K8Lyu6
         buSm3Sk4/See47VOzzKN5rkMEOvX0vpzbp1mapiaPGO7rnNLOrjzIKBLAWmaCwdAOAzD
         gzhvxCYf7uUA2kocUPNdGC80f2aS/+3XhE+Le+stYTyh8v5NcFucqB/pH5tHcVBs2Etn
         RfK/QfOXrQcYDWZqz0EPRjgIeDZNzfdn+wdOiBalsVhT3QerePAJhJ6rvA9HijnsFRr6
         fQzXCPeq+KpvFzgNGUrGunx+U8oQTYEu3Oyv54bteN8Wt0aL2R6loINe4zb7JtpX3Jz0
         K2kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcHNP65pRn/gV7zhFdZltyR8ZWbz5vx9RMOPI9E5xXiLjia+r6EX0NZrN+gKaHaEk6OExpvCPBYtvj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6x+Su9dM4rXckTefUpJ/fQh+ZxBU3euE30A1dU+/urcsXBErX
	tLDghg/aMZoc8d+qFjd4L+6KxMQHXKrUCNdk6Vy/7tQVEWjgzLeKo0tLgPMe3FrIjQJFASqyd/m
	jB9+CmjQawsxJEvsV/DuvrDf75lBqNKmwems+Nw2dXEb2GFPnNGjKrjBvfz3Q
X-Gm-Gg: ASbGnctPyrOnIbLwFcSiwI7O/1PDv6V/ZsMpt2Sex/OHuFpojdkqRNdBTEmfYPdpGho
	cd9ULL2NR0aTEyJQAiMFWzm4D6dv9wtxYQ09SY90Ot7vPq88/xGIwOPiG7sfk74suFOIV68MiS+
	MrYxknPJdMlZQAk7Z9K0RSOXQzwj+otMLG4O/q/GffadBwTyUmmHEKf/M6iHHMIFgWt5nQ33y66
	IlZUOi33K7dIvsqEZNTq4Ys8GTL1xuGNEp+afuC6N49xZ0xl3tZOBYeT1+ouFwYdAml6WDczc1E
	HwCUyLCMBY3ZL7VEcDuNrLC69zVTTjqHJe3vb2h2RUt2q0xpMdR2cH41aw==
X-Received: by 2002:a17:902:ec90:b0:221:7343:80f5 with SMTP id d9443c01a7336-223f1d8430bmr93073165ad.53.1741233288032;
        Wed, 05 Mar 2025 19:54:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrogsGcvQe4xJVpBUgNzk/PrC3/Ys140YEy4yJBQknm/w4HVahaHFJ7/Au++I8Of0gIUxgkg==
X-Received: by 2002:a17:902:ec90:b0:221:7343:80f5 with SMTP id d9443c01a7336-223f1d8430bmr93072865ad.53.1741233287636;
        Wed, 05 Mar 2025 19:54:47 -0800 (PST)
Received: from [10.152.204.0] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22410a7f7fasm2054525ad.115.2025.03.05.19.54.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 19:54:47 -0800 (PST)
Message-ID: <4ed9eebf-3470-0cdc-498f-ec4811b909a4@oss.qualcomm.com>
Date: Thu, 6 Mar 2025 09:24:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH ath-next v9 13/13] wifi: ath12k: enable ath12k AHB support
Content-Language: en-US
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Balamurugan S <quic_bselvara@quicinc.com>,
        P Praneesh <quic_ppranees@quicinc.com>
References: <20250305185501.2400888-1-quic_rajkbhag@quicinc.com>
 <20250305185501.2400888-14-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250305185501.2400888-14-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PMb1+eqC c=1 sm=1 tr=0 ts=67c91c88 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=w_ZfqNI5J2udKohul8UA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: QB-AnOLdgJAvnva3l4XQU5FiyWToB7rH
X-Proofpoint-GUID: QB-AnOLdgJAvnva3l4XQU5FiyWToB7rH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-06_02,2025-03-05_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=725
 phishscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 mlxscore=0 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503060025



On 3/6/2025 12:25 AM, Raj Kumar Bhagat wrote:
> From: Balamurugan S <quic_bselvara@quicinc.com>
> 
> Currently only PCI devices are supported in Ath12k driver. Refactor
> Ath12k module_init and module_exit to include Ath12k AHB support.
> 
> Add Ath12k AHB support in Kconfig with dependency on Remoteproc
> driver. Ath12k AHB support relies on remoteproc driver for firmware
> download, power up/down etc.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Balamurugan S <quic_bselvara@quicinc.com>
> Co-developed-by: P Praneesh <quic_ppranees@quicinc.com>
> Signed-off-by: P Praneesh <quic_ppranees@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

