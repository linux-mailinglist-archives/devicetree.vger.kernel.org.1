Return-Path: <devicetree+bounces-154644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 820C0A54166
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 04:51:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE7BB7A71DC
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 03:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3C841993BD;
	Thu,  6 Mar 2025 03:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BqOlPHxo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E6580BFF
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 03:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741233081; cv=none; b=aFkUqbakYc0WUzuFhbI5F/Cs0CzMY9wq1Y3qYauhALmm56KYhJjDGSZeYFlTeZpZStpvqU1gLmw6+Tzko/gL2VyGGq0dGWGsey7XBkqY3laPkYVnYsxUlYQXtWoSUsnbRdp/O7MGImXyIJ4TzLBwCmgcX27Z09tHeZea8Au8KSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741233081; c=relaxed/simple;
	bh=PyDSWogbuMLwJJUkiRPbuDwXzHUhvl6OXkNbENnYVbA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MwrfkJpCFPIj9FHEHNDh/rW0hhjZOr5LqWD/Ppnn+y1RRQnE5KQu2et4h0ktBQloWA0QXOef3BBz+02DRxXQfCHWI0dDavRb9F8Z/LFmKpWHhkEMTJRaEj8HHo3SvjYfI50R8ZsufDWrqYpufxQuPChFT4pWWuw9IpNyuPdjSiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BqOlPHxo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 525K05EV023909
	for <devicetree@vger.kernel.org>; Thu, 6 Mar 2025 03:51:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mp/6YXxA65JIhOvOJKohYGo0S11I79RtwIma3xS3OWo=; b=BqOlPHxo1eU8RaL7
	AgemsoKD6fdgK98jr7xgjnraAnWZgusgB1wv0VuvpKjEsnehYSFzoSFhMOXhrmm4
	2Ixsm0VlzIrw3Ed41hdDR/DlOpy6tZtCs2HelB9Cfy/iLTvpbUROyvLmx/5hC+iH
	RDQZmfVBJB3UMySDBFtm4PCShfzSLJofRL7A16JuBShqrlZjCMT/xgHYFxm3dF14
	t9Gpv62krCmTJ8/H/D1rR0bnpZ6YblimzHBIj5NS/wfg0BbPtU6omSRb9wKIRAcX
	gf7fdDDyMuQ1/oaZTxuxenKqIjBGLnN9nruDScJeswYE49YTXGwN5BjOI+Tp+BSy
	6GK2VQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6t7pc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:51:18 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff581215f7so520805a91.3
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 19:51:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741233077; x=1741837877;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mp/6YXxA65JIhOvOJKohYGo0S11I79RtwIma3xS3OWo=;
        b=I76SwCVqM4XbgCWdHGqKWAgT1SHmttFZM+tC3rjdBm+EVReizQqxSHQ1ZbrpBgpvyy
         CdiBCFBk9JWZs4NoSaOO/QT515+9m35ydrq86tKSZh6MlPI69N4dJ/bRHfL217amde1J
         hrwRGbI1Iw+OlPtujfb0Epb1YIySH2ymDqICz9tUEbwJLKJBdS33XoWIxGI5OSfIUXEY
         5BcpFTxEBGSU4VXNKlRmnlNq8rkdysBtt6hhzIBs3KpyrRb9AU3kOAT/qIGWfNdsSJzT
         LtuoP6/atRhkSnV0j2GnxB9pZ+aeniGhasRFXE7TlfdPj0Wex4vHTCaJQW6QHAaq5iG0
         aIAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXK5wJJA8FnAP4Nhs+u5PoXLmt6obLDBQmHi0s/q6KU9WJ/mB3vxVPpGc6xb6uSrs+za2bQd/whAbVR@vger.kernel.org
X-Gm-Message-State: AOJu0YznzE6XwfaPe7vvfiZW53HKWpgtfzTpgaPGxquPhyJSPeO9Nya7
	XYTM7uCPwJQwzTrD4fITxRAoiw1NhWBB0Xpbmnk7mrD79engtL46zfbwcT5AnLpRZ0xp9T8XL6k
	tl7WXqo+2NoVOy6ZLy1/C9yHuf9yBNQLZPJRJiucOkswPmb3ieQ0WFeoYPRiY
X-Gm-Gg: ASbGncthYFe0MJtPmhTOvfVVDvmvPUY1AY/sQy1sNHyO9i4lrah6SWn82ha3uDkqxJf
	yRykjF0X+/Te0JBzsu7pOFoLzZv2vaIx28mqAVMp1M90RRco2jWuEeEHcf8DSRsloes5MQNekSV
	+T5fWTfOar+EZrx2WAd8YVTf0iDYKX8e4xVkIgzzvqc3lk5yJg1XaUS7MsYjOgAsNmRY/a+DlyM
	OR0fYuw8zs5Bzr/3eQGlksLnQ6pi5cWu6xwbtV4t0Iiq2wNCnMjwdVR3MAS2YVm6YsPoGtlmKl2
	hE8a64+gKbEsSLJ1it/8kgcz3wZmibDTFIad6wCMvYly5EENR5Ewtvy56A==
X-Received: by 2002:a05:6a20:2444:b0:1f3:2a83:7548 with SMTP id adf61e73a8af0-1f3495c01aamr11494982637.38.1741233077604;
        Wed, 05 Mar 2025 19:51:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXCFBh9xo033zrGhysb3PJP32S0ZetoTc3J6B1zaxoFsgl/GvE1z20/MNB4ugW5rmtFHNnQw==
X-Received: by 2002:a05:6a20:2444:b0:1f3:2a83:7548 with SMTP id adf61e73a8af0-1f3495c01aamr11494943637.38.1741233077208;
        Wed, 05 Mar 2025 19:51:17 -0800 (PST)
Received: from [10.152.204.0] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73698244180sm256743b3a.63.2025.03.05.19.51.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 19:51:16 -0800 (PST)
Message-ID: <d0433fb3-e8f6-2f5b-6c6f-490aedc5aee6@oss.qualcomm.com>
Date: Thu, 6 Mar 2025 09:21:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH ath-next v9 08/13] wifi: ath12k: add AHB driver support
 for IPQ5332
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
 <20250305185501.2400888-9-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250305185501.2400888-9-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=I/ufRMgg c=1 sm=1 tr=0 ts=67c91bb6 cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=cKnEvPqYOVkaVG8RjQYA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ObohttGFpDayDzAj4TFRDqHpGlpsXNWz
X-Proofpoint-ORIG-GUID: ObohttGFpDayDzAj4TFRDqHpGlpsXNWz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-06_02,2025-03-05_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 phishscore=0 malwarescore=0 mlxlogscore=741 impostorscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503060024



On 3/6/2025 12:24 AM, Raj Kumar Bhagat wrote:
> From: Balamurugan S <quic_bselvara@quicinc.com>
> 
> Add Initial Ath12k AHB driver support for IPQ5332. IPQ5332 is AHB
> based IEEE802.11be 2 GHz 2x2 WiFi device.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Balamurugan S <quic_bselvara@quicinc.com>
> Co-developed-by: P Praneesh <quic_ppranees@quicinc.com>
> Signed-off-by: P Praneesh <quic_ppranees@quicinc.com>
> Co-developed-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

