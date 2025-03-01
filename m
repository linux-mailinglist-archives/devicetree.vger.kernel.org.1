Return-Path: <devicetree+bounces-152902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6182AA4A8B0
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 06:10:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41EC01888B8B
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 05:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D04461B4F09;
	Sat,  1 Mar 2025 05:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ov5ckv+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B22510FD
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 05:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740805816; cv=none; b=PwtExb7GC8CMQqi+3bAhhzVQf37r8PERSUPMVxrAB20adEMJLFpPMIZ9PCOg/d7JsgO6xp4ZfvYnZls10+fiqVHVbpTK9zW8J+O6G3RHWJC+j4Rc9jW+QPSMMwUReed8VElEDIgFg2j+FB2316zA4noJSluYTg0H4BHjG16KXtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740805816; c=relaxed/simple;
	bh=7QETPNCf6V33FwpP2/eapAsWY3oM4Bh1FsTYCCOMHa8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MjJ08LU4tQ5CiZIY/jjtudzH6zdaPkEIfoSTk3fQg5buxQc2Hvtzj5hdLOK+9HHu7SNPds80JMTciTElkYhkRqb33Xt52/oIHlf62rHcP/mFrmk3iHxQ1J1/kGvtBf3kxLqf945CEnppc1vUrUTjXQkUKp1zxA2JT3oOW2iMX7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ov5ckv+7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5213wWPA011120
	for <devicetree@vger.kernel.org>; Sat, 1 Mar 2025 05:10:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B/nGUNL5/MAVNh5LohVX5xo6ka5DWHkfH/+vaZgEPUo=; b=ov5ckv+7oUao89+W
	YefWowuuliMnzs8vTuO6ZbhAZ0NFfiHc7IpcwUuqBOP1nLOE+pTfmId6Y56YvXzb
	VEZgG6mW+cIbjnS2jAu9BRnYqBfxNdRSHwq4HmPXn7agqj3HwSHhF0fUuj3O/lo3
	Xg9cC7orVZPswoNgfUQz/7mBVPAmWDsbqvpuqFNHpvOmgy3B2vZd/fJx9thv908J
	nnGFWisS9xc0sy3tfTEGuZqLozeO7io5MI3jO90XMp2aH3j57DaPTGG5nbmIjXfd
	LpX9STTcQRxP6S+XplDybeok/ZqzkM7GBSASLd1ST/Ug+DuJ/5CNbus0zEDKQXjd
	hEmp6w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453t6k05ec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 05:10:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22367f4e9b9so30038815ad.0
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 21:10:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740805814; x=1741410614;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/nGUNL5/MAVNh5LohVX5xo6ka5DWHkfH/+vaZgEPUo=;
        b=C6mpoxWmKTej7XcdkYGZINGO43xQKusAoI1v+w0x268tBVdM6J37TUxWNbmDlcLPrs
         ODRjbPeKhGF/1Qau+j5fcrBrNarkYavO2ZyLqlbji6C/a7oHiC8m+o51cU88r1rFr0va
         r1/n29k1jA6ftU/z+Saei3mNCCV2Yz+o21pfsru6I9NC7NKCbrojaW2ouc2vqKg+c2ld
         qMasd2PVFrDGCyWjP+79P0GHukxXHiFHTNg5dW4lTnpus4gC5iyxUesKtAm9h+RwMycs
         nhrz0ZbDsrDCV3GbCiLPp54Z8WD8UhuDCC3iUCJDmdTzePJmqlklgwfGbMdPKrWQSTHb
         o32A==
X-Forwarded-Encrypted: i=1; AJvYcCVjtnebKymj2Yr75SArpAuRWkMoG5Xv2eVCrCI5X20ujm/8FLtfJqLTidNCM6si4Iu0BSF9X/bd4Mvr@vger.kernel.org
X-Gm-Message-State: AOJu0YyhpTgyKZUHEuDgc19Td8f4JhwFf2iriIpfqX+mFKBlApBeNj9v
	4rUA/FAVqga2LzYuSk6XurAvR6cizlY6WgE5vtecMjkqYCo7fJljSwMUokrhbNaUloFdtJqbSSW
	1BBPjLblE/KsxyrwR2cMo5i5Mpe7j3HrZuG1z2JSC3+OQfQJZvR54MlZKYQdG
X-Gm-Gg: ASbGncsaKNpZPZCvqjjkaTD1KmyjoD9un0rt9FYo5gnwhjjFksbhXGLWYDfucmCh1+E
	7t8Ji/LAPHCbeJ/+FJJwODN19LNrw7mDYQvWTjybpQUVN6EXqNuxL6CvwsMMpCIx1mXmHlPD6e2
	TXrVBGhgYVdhML1dMhupWFRW/IM/KKu+GmvIIf5DZdP0W5yHXYUyWs9WoqnH3oCvA0m+5moABr8
	T9wdoD57khE4qfobnsYi3aaMebuu4pxVpR3vCVr5tNMsxLHZSNk7vyscoMS5zRdP544ouSgPMfo
	xU+QYi7SPAlxRKiSFkZP/G/zwLnXbA4By2m8KvI7sbhn5Sy/JymNsWbhgJg5qlc=
X-Received: by 2002:a17:903:1663:b0:223:5c77:7ef1 with SMTP id d9443c01a7336-22368fa8746mr103580665ad.21.1740805813948;
        Fri, 28 Feb 2025 21:10:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEEK3Hzs8YMaX+ebCf82T6SbKihl8RzxL2usQf8Gyh24s4uG9dkfZ+FAPIt7h/dWk7RXW4j7w==
X-Received: by 2002:a17:903:1663:b0:223:5c77:7ef1 with SMTP id d9443c01a7336-22368fa8746mr103580385ad.21.1740805813586;
        Fri, 28 Feb 2025 21:10:13 -0800 (PST)
Received: from [192.168.225.142] ([157.51.160.80])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fe825b7b10sm6742150a91.11.2025.02.28.21.10.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 21:10:13 -0800 (PST)
Message-ID: <7d7e8e07-ccd9-da10-c84b-90cfc5a5b1e0@oss.qualcomm.com>
Date: Sat, 1 Mar 2025 10:40:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v8 05/13] wifi: ath12k: avoid m3 firmware download in AHB
 device IPQ5332
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
References: <20250228184214.337119-1-quic_rajkbhag@quicinc.com>
 <20250228184214.337119-6-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250228184214.337119-6-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WdgdFkdWUSLQO-S_XBNTvsDJJqAkjPyG
X-Proofpoint-ORIG-GUID: WdgdFkdWUSLQO-S_XBNTvsDJJqAkjPyG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-01_01,2025-02-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 mlxlogscore=992 mlxscore=0
 lowpriorityscore=0 clxscore=1011 spamscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503010037



On 3/1/2025 12:12 AM, Raj Kumar Bhagat wrote:
> From: Balamurugan S <quic_bselvara@quicinc.com>
> 
> Current ath12k devices, QCN9274 and WCN7850, supports m3.bin firmware
> download through ath12k driver. The new ath12k AHB based device
> IPQ5332 supports m3 firmware download through remoteproc driver.
> 
> Hence, add new parameter (fw.m3_loader) in ath12k_hw_params to avoid
> m3 firmware download in IPQ5332.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Balamurugan S <quic_bselvara@quicinc.com>
> Co-developed-by: P Praneesh <quic_ppranees@quicinc.com>
> Signed-off-by: P Praneesh <quic_ppranees@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

