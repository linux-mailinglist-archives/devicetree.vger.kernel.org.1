Return-Path: <devicetree+bounces-241134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 16591C7A3A8
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:41:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 166074F18AD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31DC4350295;
	Fri, 21 Nov 2025 14:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UgNqHIO7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QaE7BBb0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1E634D388
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763735293; cv=none; b=AzI4zl2gKiyBRJ3JQMZeIIy3biRjhbSPPy/JTiyieuBxbqDvjq6dZVD2rST/wQU5nhH7pIA2afpN53Q0jzwrSAhXWso3TAyXyb/V43cIvZ2lgIOs1cwfJ27fT9ifWeAsdZfpQ/XbWJ4wyinI7nvhRcr75N03qNbyhyh9AGI9I/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763735293; c=relaxed/simple;
	bh=GKq7k+FS/ZykVV5gG/enZ5RpdkYwWozwzaED99QvrSo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I79KEGVpciWBSdmZrpSbSPLkP7jSi1YMTIGpNGiQzU2WwcnvtzMbNCt+/PCu/Jb0LwM4rse4iMfupNEmgsD5g57rY+dDX/nVnoZGk+Q/MEmpIzRIb5cfmjl6Jac4sV/YgvC8HG84iTmhCxH9jE03UnERKvuyAuDdA4KU4yZi6Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UgNqHIO7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QaE7BBb0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALEKtZL1390827
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:28:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NoI1dUq+oivFqL/OZGcwaq0k7v3b1wwEHa7O76DpWc8=; b=UgNqHIO7Nj81Wryl
	gDRBa8Gg58yY177WxVSXzfMGtsSnDZlqrvp8VpWbJrs8BJxPCuCUe0zdT7ghlfxF
	D5MI0HaxsXPG1hL7Yb4FVvV0/h/4iFPbHwUPHZb6/ATtQyUdUuTbIoEUVKPG+2F3
	CDohNT8K3V60UD2cj54bKgUWFeUPanI94KSwIE47LhYIE7x30OsHgggPHYchXSWm
	HgqS0w/Tib0qVgXFuZbB0TAb4tp3SqV/sNo9Fs/sh0JOJnx7X020LOx+6ntJ1aDO
	4Qx9R0nn0r7fNea7+7GTF6rX1IocLr1gAookMruiVgb1TtU/LiT9P8QkLvpzF84c
	GdIpfw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajb532t2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:28:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b10c2ea0b5so75791485a.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763735290; x=1764340090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NoI1dUq+oivFqL/OZGcwaq0k7v3b1wwEHa7O76DpWc8=;
        b=QaE7BBb0NYaSKNVnxNK/DZonIDVggrTjf2tabCysxMvhEozncUCQqEyYxUD9GPFxVp
         YB2S9VPbUkGQ1hR4FfZIGFVdP3w/3bXHG9GE1paWnLFIDId7z7T+Calm0JlJh7iQ5NPa
         C2vQlJSlm8q4vmFik0XBLMdycWOVFxMiwWrWGaaDdfkhnwKkmdJMetRHsOvYNMX3AHIR
         pS7bmbUWXmU6RyyyjUiStK68GFHXkGQBOEFNTX9h7smfXFVAqs6rUicE+4bt3AOhLsWl
         5dToHD6om9SWgUvycL1Wa+lRX3T0WFhzTFnWJbB+y+LzIw/74uoRdeN4Bp9Bs5AZ0szO
         X8jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763735290; x=1764340090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NoI1dUq+oivFqL/OZGcwaq0k7v3b1wwEHa7O76DpWc8=;
        b=AtNskOOpwGM99Ceekf3m48RtYX4PFLixoiqusK1SROVdlrJJo/HH3Da31aGk0Dh3np
         WeNTK4BdLFj5PreYNOcLY044rxUOY02ifasxLW4TAZs7NM964cKsZchMAz8nmlNci2We
         cTd58Yjhw7aXd6vjWXBl71DEHC0ntAclJXzbjhynuZj0f5rP7QuEvYzeuxGnzsJEevN2
         CEvkSYQ7T0oNoRtrbnA0fJAnGJqNaXPf3GszHaBqHJ8mKssXot9dGmw/MWGNmyQFToi4
         LxcWn65x8GLY4ZAidaTuPbY69EJiI+g8XK0YCOlOP0Qyclhe6GN6iSszGyjh3Hla0ljC
         rGOA==
X-Forwarded-Encrypted: i=1; AJvYcCVqT2ueFBDiVMQ8pSatJBqoJXbGJwV3L9BRsE9qomVbthyKzB4hqcMExkhDpIkj4ygD1PwgGrDYFNKN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5bF1uJdgvddfviZ0fOgeQZ1gYzLiDH4XljpskPAhH2jx/mKgN
	sFLZMce9lNsB57mCttpsEiZdH2p2hEvqpJ8j5HnDjbKZhqpGCFfSbSaxa6ngR6yUyURz2hr2dDu
	UqPLsD9CxY1AnQQ/xrIDIcxz3aVFxojLr+NFJ49GgkUeyohpH2wOV6LsiA53IOGF7
X-Gm-Gg: ASbGnct54FUBW4zvt15yWgG9TAYjD2z2fqcZLPBsLg5NntAwgN3racyO2dK8Hc9rtiE
	IpR6r+6pYOVwETdWaUqdl+LTdNxX1fJAvXTxT4Xg38HgeO58a+3jMyNhkBMN9WJWbWClyqLjGC8
	Qav3Jsb3vyu7V5ASY+CuEziBew90Wc+u6Dug9BM44LTinbzBbobyJsbqpPnNF0EPm6B6iNS3EeW
	yrwAs13OBSqibnpK/H4p7Iml1F4xeoAFwvvuJCkipzo4rDxiD7Qq9vwMgmXOx5Pi3YSZpbZr3Kv
	yUldkAWJarHw+lKgsYOfVEKcZxmvFOyeUQcYAodLUIUFQjoDZOk8H4MD5revyTfZcR6Se007X6f
	Eu759J0vyuI8l88yHr5iUAmYb1zGF9oXXSNoQ83Vo98grP4F3k5njhVeKP21d3ur7j94=
X-Received: by 2002:a05:620a:1a9f:b0:8b2:df32:b900 with SMTP id af79cd13be357-8b341cc1fafmr136186485a.4.1763735289911;
        Fri, 21 Nov 2025 06:28:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqN3gooHNCGCBP/6f4HRmCzZ7PnfOrpv9ASGK4PnrV+4Ug9pZjc83V82b8YOPK9fw5ws9zdg==
X-Received: by 2002:a05:620a:1a9f:b0:8b2:df32:b900 with SMTP id af79cd13be357-8b341cc1fafmr136183185a.4.1763735289415;
        Fri, 21 Nov 2025 06:28:09 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d54cf2sm472598566b.18.2025.11.21.06.28.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:28:08 -0800 (PST)
Message-ID: <43c3a330-0c46-4dcf-a9ac-86d9bf6573ea@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 15:28:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] ARM: dts: qcom: msm8960: expressatt: Add
 Magnetometer
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251121-expressatt_nfc_accel_magn_light-v2-0-54ce493cc6cf@gmail.com>
 <20251121-expressatt_nfc_accel_magn_light-v2-4-54ce493cc6cf@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251121-expressatt_nfc_accel_magn_light-v2-4-54ce493cc6cf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xXxKR6O5RGrz9hiQrkcmaS5VVhk3Ri7I
X-Proofpoint-ORIG-GUID: xXxKR6O5RGrz9hiQrkcmaS5VVhk3Ri7I
X-Authority-Analysis: v=2.4 cv=Wugm8Nfv c=1 sm=1 tr=0 ts=692076fa cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=INxY3ozUAYpN26jWuhcA:9 a=QEXdDO2ut3YA:10 a=p80W13QwkFgA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEwNSBTYWx0ZWRfX6xzyoY4IfPpi
 JNTDrG3HXqZ0ZphJEm2pTXt/X5/irzV6nsxfZdR/th6TCfV49h2IvuDAMd/DIspwYd+WRY1SxEv
 x0cK7qFMRJfbR6ZQ4VAcrPuN68oeBN4uBFps7eylFSqgL5GGvtJgcUzlhq7R8xteQ+gtMwk6tSM
 S5d19s9NPpG9kAVjsC397fISBOtyZKGkxiBeZkB0vew7uipe9fgME3ePShb5yqHQigAV75hJLBC
 YGH474Vtv8mPpWyj2b0kjEQE+pMbGhLyZdHeFpBUke7L9lKGVGdQsIFFlho8wtkCHhteuJsWx0H
 y+0+dV6UJtqRJM8ukfTyxyYM7fVjITC8ypQLbl5hBi7hy5tGjCSVh5ubY3vdDD76pBxxWblfdlt
 CUweA8qm8CaEo9Wg6r9xXdoLg2fdFw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210105

On 11/21/25 12:44 PM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add the Yamaha magnetometer. Mount Matrix is left as a TODO.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

