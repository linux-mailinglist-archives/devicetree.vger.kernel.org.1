Return-Path: <devicetree+bounces-148489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B3CA3C263
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 15:42:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 687601889047
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CEDB1EB195;
	Wed, 19 Feb 2025 14:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CRjEBzTr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B741DF962
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 14:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739976152; cv=none; b=mWKSjjYiZS9YXHZdDMh5jC/IPiSdeDqE7tbgvvG6JjduNL4ky221TtCmjEmMG9EXA8fLDwyG3C+rGtrv0IO1q6kvrVYuMjJyCkjjjtYiAjYxT+Bk/xnhmk460NEiMpbzfqQgobx0l7lONf/otz4bmXov/b/WmC9r8wzy0398hQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739976152; c=relaxed/simple;
	bh=2/cg0CLMQpDd2SRP2VcBmhFX4ih79DdQEz7YxZKjcJs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ahhMN4w87UP9sD6F6qpkaKKoyFLgDNSichaTyNxcXMPOJ9vI5ag9lalV9Ke2xz3K5Tcge+CXXPWqTBdB6UaZ8VcpLDhWMOfEijiHX5t+Qv9N5iLik9OCwf2gp9XQQoBxphA/3/fUqkuAVBecakecGzkjmqZ7R0oqqLG725k0oGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CRjEBzTr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51J8Mfhp009730
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 14:42:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KbthUQGiUHpb4rkYFXNHNn9fqm2ZNwMaGsqaUP4qiQY=; b=CRjEBzTrz5k8SYYq
	0xOYDKKjueZkThTzSi3YeUbnytbBserM5tfB9qCNLpBplVrctkkaSwq0r2yEdK3U
	SgEtv6vrcuq3BR9KQ998F8irEV3+UB0rnf+KioptzeUfZ4bSh0G4zLQgCsbD94Xz
	71fHAqQM/s32iwqFzK27wDZGCLVU8yzjGHZDJrU6rnFZIJz1mxy+I6H5eBJfa/k0
	Tu1for1IDNaTnGS0fxcg5QkFA4VzcCngBhRV8vZ75NTmuWxfWIS80r5oG6OWGV/X
	bb1G2cNK2uPymKBKIk/oSTwJlFyY5ql3lYFymVQIXLZ/gC5vWvzaAdqCMDFojlLT
	nSBN5w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy1u1uh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 14:42:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e665343a70so6473706d6.1
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 06:42:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739976148; x=1740580948;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KbthUQGiUHpb4rkYFXNHNn9fqm2ZNwMaGsqaUP4qiQY=;
        b=jnxAj80JDI4M826B2dslrIwcRO8SwpkMjnCrnYZmM7K1RbsnHgpi7wjda7kxmI9s/T
         sn/lqYymA6mSs4oqCAQCQlikO/EgJDHVK0lKuja2WLh/xb4chKB9sxQE2fMMT6U6TUFl
         b5DEOkiJwLYv0QXe2cNm2Kxd5oKh4wIlhsFqVGxuAYul0UuFcpslkbzqxhPczveTkYji
         tutQ1eLQdnOFgPZwzDRiBN/mJJIgtCABorasoGydlMUJGfOG2nINkVjiMyXl+pjegktb
         zrySMdidGT5Tvl55I9c+MBj1ltsHZd+G+fGSNe+mkouJrzohrim28py8eApYBjUaZmI3
         BgRw==
X-Forwarded-Encrypted: i=1; AJvYcCUQyARISzfah0Nc8FDRh+5OYjQUkYKEsqx/RTVLHdZmCsIVjT8TVndQ4Lgy8tZZI5Fuke1GZlRcLb+c@vger.kernel.org
X-Gm-Message-State: AOJu0YyNc/B547p0wyZtuUxZjhzI7HAjOz+xK15TQSXV6uGRqfJx9slr
	mzB+7biVEkOpM6O/cSd1CfTPFEd4q9WJYo34KxIprY3eQPFSrdyt0hjRZ5c1MUPdFtiOXstvidD
	K46btwRKkqdcXLapD2urRyPKb4HKLp4DQE5Hd49q1MFP6/mWxIUpdBwF2Or3L
X-Gm-Gg: ASbGncufNvKvaS9v2hXhIqYiFgjQJ7c7tIPDNdAkFcHE5DzaDsqYGWCFH1HHp7Zz5Jn
	aBcG4n9G1zJTPiQ7dTa1LUu6eRep2EGULYrwdszi+KM5bL0ajiMAODGeXRHcZcCHFDks1ITWZC9
	+tVPqT92NESPcWYVdUFiEx5V+WcKeWbMTt761MkMNXhLtP0F2byX5d4MLd2jvRyrLkdFEyBko6n
	qv51AqzSvvSJW4jPHgroVTbvJNmr4G/vXsk2HpDUCVhR7O2mSEZ/aaio5sCWUlAgRFSq5pxbvnB
	rHBt4dS3jIYqDRsPwJGKFxwfb/vAG9MhhpcWmrFWjio9DJTIg+uli3jDeDY=
X-Received: by 2002:ad4:5766:0:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6e66ccc47d9mr88788136d6.4.1739976148129;
        Wed, 19 Feb 2025 06:42:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHpAj+Xqw9qSXsdwXUvLSdDHBpi+ry1U1ggEwkzdRQ/MVC50YQowsUTy3N3zJnQoanhNQNYfw==
X-Received: by 2002:ad4:5766:0:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6e66ccc47d9mr88787916d6.4.1739976147828;
        Wed, 19 Feb 2025 06:42:27 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb9654a6b2sm652600366b.135.2025.02.19.06.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2025 06:42:27 -0800 (PST)
Message-ID: <27a0f921-437d-4744-ae99-d1f5020fd55d@oss.qualcomm.com>
Date: Wed, 19 Feb 2025 15:42:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Drop `tx-sched-sp` property
To: Lad Prabhakar <prabhakar.csengg@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250218125157.412701-1-prabhakar.csengg@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250218125157.412701-1-prabhakar.csengg@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: C5-CJtv2-JDzz2KpocEpXAMifBRwRv-5
X-Proofpoint-ORIG-GUID: C5-CJtv2-JDzz2KpocEpXAMifBRwRv-5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_06,2025-02-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 mlxscore=0
 mlxlogscore=985 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502190116

On 18.02.2025 1:51 PM, Lad Prabhakar wrote:
> The `tx-sched-sp` property was removed in commit aed6864035b1 ("net:
> stmmac: platform: Delete a redundant condition branch").
> 
> Therefore, it can be safely removed from the device tree.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.csengg@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

