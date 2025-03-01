Return-Path: <devicetree+bounces-152909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDA6A4A8C8
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 06:19:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAAAE1893150
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 05:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53FC21C1F07;
	Sat,  1 Mar 2025 05:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hYndMg9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244BEEC5
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 05:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740806356; cv=none; b=KoyfSLDx3X1leYfUXIWEle0KHzO4dCWgqjIa3nEzvG0CgG7TaxEiKWuJ3Yk8mJqTh0xK8m2N3No8mrfpKXlkQR8YXbmseQ/4cHVfhlNOVcAdKz6I0p1zmJCQdVmQhe6fDuJWS4FX9LHpEqMEdUNALeyfJURQqF8gYAmnX0KUT+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740806356; c=relaxed/simple;
	bh=tu6Sm0hCdUZksAy8vutcJzdANnD13tljjz4kIw1SKbw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W5pkiGvD0+LoPFkqf5l0t6C1N4gkVd9DAP2yHeAlcX2lhBg+TYBxjOaiYy8A8vDMcCF0zRV5Koa9zHgdjxsWUbuALvswhUJRN2X72YJLCKKEWiRL8p75Y8PYhzibjejiEDN+TOzyDBXjlciXp/EKBj1A+jmSwIyF1AlYWdPpxyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hYndMg9Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5214m83u020607
	for <devicetree@vger.kernel.org>; Sat, 1 Mar 2025 05:19:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fItfMe60bL3KBr33oQ76T2mDSO4Mwd15Hpg9wQXBud0=; b=hYndMg9Ze+m08WSz
	4NKTdcptpWjT7ezxu4EUah+SHYRFgVxoVWUVCmFOfnvAqxVZJEzaTUZ5+EbRqBMe
	RUkYdiPkNIE1E49Ns5wapD4FTakrU/aeyomSAXz3EbngxkQZkJuJQqVYnmb2NqT7
	zbf2wGuwYEw6y+irXUJCStH5R7ecaAruOABJcpcqTDJ6GcdPMgunynAOXMIGzFQF
	tmYIfigeXN8QN0tMWlTJ8NSAy5kLqixp3WghnvawaHztdbwCce8h3v4Iki1Q5sWj
	eR0goC/TFYLs1hVYikzguN1rG0o+6ZOSFoYzS3MKvGQ3o2Th5fV0dvNoRo57KsY6
	ZdJTZg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453uh701fv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 05:19:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-22366bcf24bso31517945ad.1
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 21:19:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740806352; x=1741411152;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fItfMe60bL3KBr33oQ76T2mDSO4Mwd15Hpg9wQXBud0=;
        b=URenvDMguwd6RsC/ELY+X2JhUON2YrsiVrv1EQ38tHu/Zwat+VYpnVcdnFtbaWESCc
         VPRvt5GM3SYxNTGlk2KuLtC23p73yho1RrHRxnYRsTKNV4926m3cOmfd35B0KLEagBtb
         QEBl9wStzWJFTfIUdNir+wQuXL8rb4P+xdwImBFdKLVudau2hVdTv2g4rENeYDbjuenN
         eIqP25p56ORlzCy+Cq5ExW1BMV0biPmd7oWXrQBI7FWufAN8N7Go5cilcxSyG99Olf+M
         o8FAp0UilZ4nVOR2JQLyR+9CA60HrZbi2XW0EzKdWFT9NBtX/vndaPAETduk/kULJqdw
         ClUw==
X-Forwarded-Encrypted: i=1; AJvYcCWmvHE/bnYvAzQwSYFfsp/lIjWtmL5jTdFYmK9JRx9YRXja5BKTFV3Z6rskAla94mVy/Hk3kbDjJ+tt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq9QWNu5q6/P6NoVbhcLYOIsZGLQ9ABvj9K0h/ys67lkY/BKRe
	JZJncmCibUwUssbhNB3WB2XUzDYZQHn4iVYAaBWxq01eXEKlODIET1UW7cgiWs8ROCmUxJYGd3m
	PqQt95HyUP9YiMPvZQuxOS6lhAGx553bJ+RK/cjM+ox8j5GBBHGYxEMLf3JtM
X-Gm-Gg: ASbGncvahP84CxfdRNMKW87YI+ZCFmKJzzECP8hBSHuWHAVHWYmRAydLvAvoRX9ET72
	s8OgC00LpTJS024VIgaFeqNlzhkf5iFG3eU4C/tQFaQCVpGN4AjZ9kzlP9q6tOiO+0UftQh1u6y
	ZhdQapcUmNJlZT+pPkInu6tyDneNTiMmhkIEP6Q+KcXk5qOrRvJTNJSJu+4297GRfTNgJqG/+0F
	JZs+Wd7H4EaSnfdZd22+cyPH4HukFMwhlcIPaBq6CNwD6RUJkEaQAr4On0W0PvNmmesVvMjajw1
	Gx4Q1978LHFoH9UKg7/cmHJoaaDzkjIZWD4M1aQN5zJMObAxl6bSuByF9Q+4nDc=
X-Received: by 2002:a05:6a00:2d8e:b0:732:5276:4ac9 with SMTP id d2e1a72fcca58-734ac35cce9mr9750321b3a.9.1740806352525;
        Fri, 28 Feb 2025 21:19:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEir5MRosoUYpbeb1u+Qi3ok691SR2Z4tKIzWpFn9/rNRTWboX60CDNLHbz04mtMwAbblyS+g==
X-Received: by 2002:a05:6a00:2d8e:b0:732:5276:4ac9 with SMTP id d2e1a72fcca58-734ac35cce9mr9750299b3a.9.1740806352169;
        Fri, 28 Feb 2025 21:19:12 -0800 (PST)
Received: from [192.168.225.142] ([157.51.160.80])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-734a00400absm4673454b3a.151.2025.02.28.21.19.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 21:19:11 -0800 (PST)
Message-ID: <fa72ddab-b2be-3481-8e33-e0dd30e3e8a7@oss.qualcomm.com>
Date: Sat, 1 Mar 2025 10:49:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v8 12/13] wifi: ath12k: Power down userPD
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
 <20250228184214.337119-13-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250228184214.337119-13-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nPnrlNrJxkONaVA9wWCJmpUZS3-gPKIb
X-Proofpoint-ORIG-GUID: nPnrlNrJxkONaVA9wWCJmpUZS3-gPKIb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-01_01,2025-02-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 mlxscore=0 spamscore=0 malwarescore=0
 mlxlogscore=742 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503010038



On 3/1/2025 12:12 AM, Raj Kumar Bhagat wrote:
> From: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> 
> Set the stop bit in SMEM to power down the userPD. Wait for stop-ack IRQ
> to indicate power down completion. Release the userPD firmware using its
> peripheral ID.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

