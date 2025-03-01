Return-Path: <devicetree+bounces-152907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F46A4A8C2
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 06:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67C7B7A4EFF
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 05:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF4A1C245C;
	Sat,  1 Mar 2025 05:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LATHb1Fj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9279C2F22
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 05:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740806217; cv=none; b=CXM3h4TpAd4SeAj7ES5lk1IDA5bFs4MqWD8BkMTIKGQUteRiF8m2NjqCDA7dEV5tAOjv38A09zPCMym7YoepJyQUZfd76WktMKZkrrURja/ssjB14VrvAK30KU3lABGIMNM2ODOi6HLgPVEiu23/UE6QDqQaioENPVDr3uJyaiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740806217; c=relaxed/simple;
	bh=DtItdFBimduhboShkKtxIGz5kyi44ZEGAZ0fnu6kwGc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NZi3QmbW3a+0TOBTZo89hHt/TbIfYZp+lAQkO+NAZwA9qkvwvonBsydKhEaVcfAc1ooqVz5c/KMPhVdSbzXxun3I7PlGjkc0KCTY1iBJje/llyaM29PAyYpzxO8o+ZdQ9x4Aw3Q4A3M1stJLWwZPcWQrkzJq5Rwv6AOV+G2aVhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LATHb1Fj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5213k1p9027199
	for <devicetree@vger.kernel.org>; Sat, 1 Mar 2025 05:16:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WVo6nghuEpOQ+Nm0rERFSUfDDz0sz6FNiNMDN2cXVD8=; b=LATHb1FjVZyZe4L/
	2eDmAuMKC80sld1J1fB8VfdLm3z2sqxr2JksDoOFzbq8u1wtYHdhKv0L3UpDJoc8
	Ernp4pV2sNuCmafxmvjil1bYSQbHGhDmjxEDMBuK6DT4OEoxcxtLPi2nQ770P7sb
	k0K5Uosl01vNat84WZimzvveDqL95WzD5d0qxLbs6/szEjTU8nDNxdIcO81H9q57
	/+vmO/pqTtJbaB8QktIi4Fd286ApvBUgBMZB9miVNZ1EYuDAKegq/9j2+5n0NXP1
	M02KVhbvZjbSww50XYkW8DeVpLKLdE5ZM+tsZk+mWBOiQ5bQH1kKfoJqHL9/g4CN
	Tg/kKg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453tm5g49f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 05:16:53 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2feb019b13aso7389583a91.3
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 21:16:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740806212; x=1741411012;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WVo6nghuEpOQ+Nm0rERFSUfDDz0sz6FNiNMDN2cXVD8=;
        b=cRJ2Ck4Gn5S21NiuJBvmb9KlYUH9ycAhV+nyMw6E6Qx4jzDDBdCfg6fz7Xx+d/22Sg
         dOQwXPLCLgtaAhty1tmB1h2iy68mp8zDTWlBA6/wKOLGNzMUtArRJYc4TYUB+7MVvvCB
         /AB1DqY2McOoKTquwN35PXltYS33rSZSPPug9lfBZbqU1xk6zsfDl8bgJUynN9K6wZyC
         OcEH9YLqVUqRkOcCi7ZT4zCHg8tBZcapZwe0kFOSr4FSMEdZ2NJ7tCLU7Lyf4oTJikaX
         Cfj9hpO962qUVhFjBUZ39pUmIrkXNxvKCvLYCPQ1PQFlMy1JPAlmiQKK2j5KCB1Y8/ma
         n4ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWawdo7e8CESNIFlT/D5H7bR4UMFcK+HDTnf+th44TGUM+DugKSEgXLxx0j9FsO3NmcC3P2C5SbHdGg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+rn7YrOI6eLWFCne7xrRsDiuYvSoK21EZDjz1G58vbigJVjbG
	zm6KiaQMX9lH/1wabyB12kCRMYW5V04O7l1CKglmEyDwEdlLQPcuKFmmNPlSMmCNbX9eD24XmRK
	KBUYKuRUy/C0fDmzieIoO+MafG6u047aGrs/t4iLJchJY4jij97x2G9PfEpHo
X-Gm-Gg: ASbGncvtX2XDQF6f+X3LLn4QvNYbG/0jtSJETUAwXjDlmISXA1BZF6XfGkliY6J/Akz
	YyUzl79TltGnPVNR4BzOlnfxlbIdI169h+FsIBYAhv83ojB6qR6gimI83dQX/i7U5fi3BUWepjw
	Qv4yggVTgqshgHBWJoSc5zBdIJuyEoWg3fVp/FhLLPc/54Lu6f7riPRcuzGmUmUOdJHwFa0Gpqr
	LSssKmhMoLmqDVIlih1jfJft9Xd+5m2PcoPNyVLRqhmEvi1h6yWQDdUMseiJOKKK6D74v130KwY
	NNX7ZFAMeri/e2QhHTH4WsJTgTmxeXJevCJupKmQHMGiVnu99Sl8wqo15U/xft4=
X-Received: by 2002:a05:6a20:4307:b0:1ee:aa06:1a47 with SMTP id adf61e73a8af0-1f2f4c9c8c1mr9616176637.2.1740806212102;
        Fri, 28 Feb 2025 21:16:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqTLPw8t4o2yXeEVqe3vhe7yJW+wL8eFFyyJ0Nc6LXnxQe+y67eZQepiQeEEbsFn5E/Jfnfw==
X-Received: by 2002:a05:6a20:4307:b0:1ee:aa06:1a47 with SMTP id adf61e73a8af0-1f2f4c9c8c1mr9616156637.2.1740806211769;
        Fri, 28 Feb 2025 21:16:51 -0800 (PST)
Received: from [192.168.225.142] ([157.51.160.80])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-aee7dec3e05sm4329848a12.49.2025.02.28.21.16.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 21:16:51 -0800 (PST)
Message-ID: <a7a838c9-2a97-dff8-3db0-940dab7e172a@oss.qualcomm.com>
Date: Sat, 1 Mar 2025 10:46:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v8 10/13] wifi: ath12k: Register various userPD interrupts
 and save SMEM entries
Content-Language: en-US
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
References: <20250228184214.337119-1-quic_rajkbhag@quicinc.com>
 <20250228184214.337119-11-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250228184214.337119-11-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: yvYKbzkYLJ711smqC7y9RNvNZ-USTIC8
X-Proofpoint-GUID: yvYKbzkYLJ711smqC7y9RNvNZ-USTIC8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-01_01,2025-02-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 mlxlogscore=772 suspectscore=0
 priorityscore=1501 adultscore=0 clxscore=1015 bulkscore=0 mlxscore=0
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503010037



On 3/1/2025 12:12 AM, Raj Kumar Bhagat wrote:
> From: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> 
> Q6 and ath12k driver communicates using SMEM and IRQs. Spawn interrupt
> is triggered once the userPD thread is spawned. Ready interrupts denotes
> userPD is completely powered up and ready. Stop-ack is to acknowledge
> the ath12k driver that userPD is stopped. Ath12k driver needs to set spawn
> bit in SMEM to instruct Q6 to spawn a userPD. Similarly stop bit is
> set when userPD needs to be stopped.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

