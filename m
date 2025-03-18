Return-Path: <devicetree+bounces-158624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C76A67838
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 16:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 357D81893E9E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 15:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD5D210180;
	Tue, 18 Mar 2025 15:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YhVTOffV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BDD20F09D
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742312694; cv=none; b=H1y3EdKSzBoWJukb6+skYgp+66lgK1Z+oPcynTn9XYS9AlZoERqh3yXa9lPry6/gpI5wvN+WY3UXQRtX1hLtpdqeJkQv4xs9UNMeqNh+c0q4+DFAvx1OPo/0mRyj4ff3okIy2Nloolr8rncYy0r69z4pWs2aMQVD3Ts8DsY/QJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742312694; c=relaxed/simple;
	bh=ZyrAsfG49DpGrkR8H0kzvP1bytvhZGZoDf14miCEpnw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iTpryDZ6StEo1cksLEo4ANbPQEAz0uayfrc0HRGl1pZdNUxk2LNTSLDxwkwxR57d6Vqj1OP5E1AlD3OXcgtqSxlQ4jIIoHxC8v0e6+HC6re/GxLob+kmL4i3JCZ51gplfxvfDEZMNEdtecoaFYYPgBzX3/6s8P2+aJRcQjFYiE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YhVTOffV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I8xq8d006734
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:44:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SAVIkA2nJaCLd5wAcdILg01ybenTh1RV6XjKZhSWOTk=; b=YhVTOffV+TQlTTy5
	Idt5nfGNUPYHSpbS9a7570JwGHmhOBtWPl6B+rk6g8I5J10SoNk2BAhLZeaSAqlq
	D8Y4h7pXldifp2MFhgA2TzHVY/XAKvtso8M484z9VMrDyjRnjLAbR+/p1svnRkXN
	LXzAozz4gpQC0w1OsKCEx0LW8wHbwDUu8m1aY58ot9WYmXlqhUrZR8HnSBuEOTH8
	oQwaspgm5GinYXF0swQbYHfj9V54d31BZI31SPQgWGAqFAKjxqgIzwHmsO3wLkqi
	OPkad7QCOl39wBuh0ELSwhJsqSSARI5+ShtBR7F9kPd2OE4bNmfR2woKdMEf9Bm/
	Ypt56w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1t4rtdv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:44:45 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2242ade807fso154252575ad.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 08:44:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742312684; x=1742917484;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SAVIkA2nJaCLd5wAcdILg01ybenTh1RV6XjKZhSWOTk=;
        b=Sc/zfTcmwzylVmB2hNIvJi13FRt0kLlVUUCLw4ZoGXejPjyDcJxTXC9MOPln4NyTXr
         9DdA8w2sgYteQHfXgG4/Ldss0fXMXST9dYPsalE3OKgq5KJTfdWjGSVuWvAwjGnlFgpL
         XA6jMKNQBIwuJrAewEw4CnqgOsuksjn+QYfRBjeK5gUOQWryPix1Hv1qcxqMBanI33/g
         hxx8TM5TuhhD5TLg7MLswZ6M/OCxMAZ0mMa4fOVLWWiOoAgIYNuXd6HtDO3miYZwpPOG
         wZyMZWZA9WqrC+kw+HTsFeENbE7D/QFxv9uR9Z/cWN51k60UxUDMjKB27bzUFxvpXbaC
         +vHw==
X-Forwarded-Encrypted: i=1; AJvYcCWuZ15nQcz2mau63XVZlY32t+gBBwYSYHJvwYYmYVyNAUpLOSLWw5I7LkrIr09oJ1fOc3dA5ks9naxv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6/IrDG4GXmCUW348ilGnp8ujnMQy3LHGrQTmD0CU5+o+KZMzr
	iGIao7Il/kNKmgy63M7YHh1C75vYXYWDNPzCiNG38qmjggmCH1PwUMuHlQjHjsIFhL7jNjKD4bf
	C9RK1TsxdkgGNrfeMHJF8y+xVNYWTges6M92dkdZHiD2LFgJYJxTyGp1iK5dZ
X-Gm-Gg: ASbGncuID+gBqLPn5F7NO73N6lDCuM8wwaoVwT2xXrEIB62xY9T+9hGKkx2AURG49dB
	gX49SLsmLe5n8RXJobyV+ItKOfqmiKhvGd2bz0Wwp281J6gg0VYBJYSwa41Ipf/Q182jhwhSkOU
	PCZ2WSRsBePRDdqBqxCLgKD7/FnK7r8jSOPI0Jx7gwIFX4+hfVpJ3TRt32G2VjRyqlOSa8mRLaK
	UggtCatJkQ1hX9DTi3LMAhMBJN5fzcCdNfZ7mQc4kG8/UMwF6Zv2/7Jf8avKZeqBSRbuiD8ADSu
	b718MCGvAuSh5RSSpHHsQSsnBHQlt68w/U+M4OrAcFYhLo7OWx+rNnOigjgG/XPbMHAz5io=
X-Received: by 2002:a17:902:ce0b:b0:223:668d:eba9 with SMTP id d9443c01a7336-225e0a15945mr234860045ad.10.1742312684424;
        Tue, 18 Mar 2025 08:44:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4lLp5t7+ZMhTjiUg/ojVkZKcM7/NIU48U90wLJENACatjgBlOPc+VKldix4F3T50fec8NNA==
X-Received: by 2002:a17:902:ce0b:b0:223:668d:eba9 with SMTP id d9443c01a7336-225e0a15945mr234859595ad.10.1742312684072;
        Tue, 18 Mar 2025 08:44:44 -0700 (PDT)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-737116af372sm9716397b3a.160.2025.03.18.08.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 08:44:43 -0700 (PDT)
Message-ID: <683b16dd-a3e9-4cc3-836a-95f3747d3c0a@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 08:44:42 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH ath-next v11 08/13] wifi: ath12k: add AHB driver support
 for IPQ5332
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Balamurugan S <quic_bselvara@quicinc.com>,
        P Praneesh <quic_ppranees@quicinc.com>,
        Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
References: <20250317204639.1864742-1-quic_rajkbhag@quicinc.com>
 <20250317204639.1864742-9-quic_rajkbhag@quicinc.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250317204639.1864742-9-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=VLPdn8PX c=1 sm=1 tr=0 ts=67d994ed cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=E5dAun_1JQ9YDljNTxIA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: klqI04u8iES7Re7rj4V5SCv9jdkwtkTY
X-Proofpoint-GUID: klqI04u8iES7Re7rj4V5SCv9jdkwtkTY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180116

On 3/17/2025 1:46 PM, Raj Kumar Bhagat wrote:
> +	hw_rev = (enum ath12k_hw_rev)of_device_get_match_data(&pdev->dev);

kernel test robot warns:
cast to smaller integer type 'enum ath12k_hw_rev' from 'const void *'

looks like others have fixed this by first casting to (uintptr_t)
a few examples:

tsa->version = (enum tsa_version)(uintptr_t)of_device_get_match_data(&pdev->dev);
model = (enum ep93xx_soc_model)(uintptr_t)device_get_match_data(dev);
priv->cks = (u8)(uintptr_t) of_device_get_match_data(dev);
rt5677->type = (enum rt5677_type)(uintptr_t)device_get_match_data(dev);

not sure if there is a "better" way

/jeff

