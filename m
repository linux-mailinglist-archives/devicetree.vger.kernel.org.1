Return-Path: <devicetree+bounces-239731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 14318C68DDA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:38:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5B023357AEA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E2C5347FFE;
	Tue, 18 Nov 2025 10:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NyTfH/mX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XmMbQ+Tk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A808B2571A0
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763461922; cv=none; b=S37DthHmPO1vPtWBEDJefliINReZo9VPZ12RL+1VgVUwY8cSbwtVDEg+PZUDDCi1zuolho1yqR8ncNZG0N0hUFzicyJcjknWGwczl2tEiS7Z2aIg438QiMhJ0EwppALytDMwx4p6NjzLo/Lt46CLwF8nVbskPpqfHIehJkKt8xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763461922; c=relaxed/simple;
	bh=RfZm9aKl1NjMxKyOCQg+4SEjvwVpRMYv2mrcH4ZNFDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bk04p7Rf3qdiyTEUZLVTf8c6vP0iRU4ZPmmif8tbSreWMAN8Ffor6otO4XTRq8NTninus8uRD4Id9Pu3cwxV6RfP4gAb8pAr7LeTBSqdkEEDy8vKO3S12wx505t/bfZQSKs5aNJMyPwaWTYzXjc7FA36Dwp55oRBMdrGr/rACPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NyTfH/mX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XmMbQ+Tk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8l9SH2755434
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:31:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fR7x0kFz0S+JBP4vbyeBal4hny3WSPiyeEcYELp4NhM=; b=NyTfH/mXnnzRlUpW
	/8EaVfq2RmAGxcf9s0qkoKmjM6ILtC60bPNjradasrc4K2wfRHi5qi2GKC8FUUv7
	nxpXN8WyX2NY0u8SVyIGebNFg2QFtEFdpdittsjjDl0KH85hn76n49TRtHCeThis
	ZO6a56ekneI+J28CyLnqX80coK98h4s2I+gNuDOlquGI5W5QtCJOqr4/ri/5w1ng
	YHmBobxjgx0FtJDPz4tp8TYHbf1uJq009wk32chcO89l4OYzgY7awOunVORoYh5H
	h8sClrJCNqb758q3VmtDc+HNw0ZuhQjp+L0feY83ualA16aDYZQkIaog8DqoMV8k
	LxnTcQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agnkj0b04-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:31:59 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2982b47ce35so61904465ad.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763461918; x=1764066718; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fR7x0kFz0S+JBP4vbyeBal4hny3WSPiyeEcYELp4NhM=;
        b=XmMbQ+TkdjSg7ftZ3xxejMO+y46e4/wLokz2PQnRONy+DJeMP3RpTgYj2fNanZNK3u
         T7UJeRZaQD6C9WLwiRSyTQZNEsfMpFZ7f7O05TUnDqB4r8aD9I4kf79I6flLk6HKi6Sm
         lfVjXqTWVtkrMDrWCv78FSOHW/7OGGQAKE1xfmX3Mbo2iEPuYCpbTibiSGI2QVRfGt7s
         zm0HWbiyJI5zsZOANtb0MEWMmxLMOpQYxF5i2+xDpH2nWsxY3qpR+q134PF5SpGCRhdv
         Apcv44flWniIYsv56okaM6PYuxyPuWVpGsq/mP9dpT00YrzrX2Gt/0LsBUYBxMFSQbtI
         Wm5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763461918; x=1764066718;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fR7x0kFz0S+JBP4vbyeBal4hny3WSPiyeEcYELp4NhM=;
        b=w8NGPshm97mkfBnHyuYuDaoIpmBE5IuSQQaJUPNuEnTKID+WCvMVepkYIN7/TVEnN3
         WliUIXNwFL8bJSthHMgtYFmhKHkCcenpP9ThhSnf+AwwfqL6kFaMf+e3qbwlYXpAo4+l
         cD3vVudtxwE9Nwu+1NH39uqVwvoD3ZBgFumCivCW4AgTlMjN+YYBhbUnOuTJ55gW4tiq
         a2KgqY4ByGRz9ts8uobWOmZxPL9qcxpPS5ZOi2td1zozBAfs8tvF72phkjpoUcNCqkIc
         VUtjVO7p/eY5DF2QiaZSi2Jjn8utSMjH7lDpxlE1fX1zvUbHTjLwCsyFgdiIJgT173UO
         /GrA==
X-Forwarded-Encrypted: i=1; AJvYcCVlm9m/u11StkEdoFaFBgtEdsyvKsdpx1Zmi62bv9BT8/qHWiLPgAUFI/mvoIrJr2VMmpn7El0AwXId@vger.kernel.org
X-Gm-Message-State: AOJu0YzuahCD5C/vXGlSvYMC4L6oSwFKORPHxYff/QyFZjpkpW2YMJXw
	JsWfsL3mhuMvs8MfoeAZeSQdG/rMHJCBxe/crT7M7X9XdHJbfcofM3NPnt7uYU/3siPL9CEBV3h
	3I9T7K6dD7YjuNuVq+acgPeWVjeF/C/y/TcMoriHac/Jy8mtdsAtATQEJdYmcjLxr
X-Gm-Gg: ASbGncthw/sSr7PEEiy4JqSZJc2oqlJEFcMRI6/PxS7Xhf95ES4C4PrUtChW2RNAyYQ
	d9m9kdDG2gPNxgHxChRByItil3ZPh76Liiu6Djol/O7TeSzdG5Lg5ld9O4pnS1MMTWnYz0ZiJpy
	pMxMqmInlyKXxfwadPfjzDsvnXb8yICcmHxU6Gf3qxkJaeQ+2VGvxfltWz/qkFZN5RyEia0Ow9L
	6+64XXbDT9wu6aQ4CknKf6q4isV8ntVH9ZfuUZwv9TkUZ4fXdWxIzCbGRPiGYolRrMBcvHyOz7x
	2wSo7sdvx+9RkqwmosYAVZtQmfEGNa2Mf7YoEvEtWV6ROFa2mXgiZUG7tH8LT+5qan8/Iuomhg5
	wCF2qwWHHeliES/eDuumKOYYt4A==
X-Received: by 2002:a17:902:d4cd:b0:299:dd98:fac2 with SMTP id d9443c01a7336-299dd98fe08mr99139185ad.54.1763461918309;
        Tue, 18 Nov 2025 02:31:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEzq8B2MXbl1pPxPLemh3fklf2/A5DSGVm1kKDAvo8dNVVqRFeNS/BF0AI+yuhX93bBja4Saw==
X-Received: by 2002:a17:902:d4cd:b0:299:dd98:fac2 with SMTP id d9443c01a7336-299dd98fe08mr99138905ad.54.1763461917819;
        Tue, 18 Nov 2025 02:31:57 -0800 (PST)
Received: from [10.218.33.29] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b0d91sm170294015ad.63.2025.11.18.02.31.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:31:57 -0800 (PST)
Message-ID: <6fe09872-368a-4bab-96c3-c34492255599@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 16:01:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] clk: qcom: branch: Extend invert logic for branch2
 mem clocks
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
 <20251118-sm8750-videocc-v2-v4-3-049882a70c9f@oss.qualcomm.com>
Content-Language: en-US
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-3-049882a70c9f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ctKJLdRFJ4P9o0yvMMevnyQaIOCPwyAb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4MyBTYWx0ZWRfXxDnMfi5WZCXY
 U66Y/GRZQ1H/McKznDajPWsivNcwFWWmBw3L2Z+zs5z+lUBIqBmxV9BwHf2+H+4c1DZph3TmBTC
 tnOAQimLPzODpXAMTepocZr1hIVQjhdDw0oa0sEhANNKxwCOFUdn8n636pltt8hzZWGFSbvJxVm
 dLt0w6EL/8++WUJ4HxPzO2XPoVJyfhuB3ySVhFztCTpWuR3DwXEaLloAq2p7BCvUQFrMtQzGKoD
 81ja2ngrPOmUFzyueyBz1BbMJt+ZmdQEu1KpDpLsV6pqHXjE23CRYVmyPd+U6RXpn1FZSiFTVP+
 wiiHZg4zBbW9Tro1dK6uR/WnUSD5Qim1/i++EjNuzTEEsk0EAZH8o8gwiu/GgFeJfkyrbMzoncu
 O2QCv44OU7wsLkNfawKN/7iSKXGJJg==
X-Authority-Analysis: v=2.4 cv=cs+WUl4i c=1 sm=1 tr=0 ts=691c4b1f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8EbF_sMYILjvT3iq7EYA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: ctKJLdRFJ4P9o0yvMMevnyQaIOCPwyAb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180083



On 11/18/2025 12:47 PM, Taniya Das wrote:
> Some clock branches require inverted logic for memory gating, where
> disabling the memory involves setting a bit and enabling it involves
> clearing the same bit. This behavior differs from the standard approach
> memory branch clocks ops where enabling typically sets the bit.
> 
> The mem_enable_invert to allow conditional handling of these sequences
> of the inverted control logic for memory operations required on those
> memory clock branches.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-branch.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>

Thanks,
Imran

