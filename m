Return-Path: <devicetree+bounces-249219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD19CD9E61
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B92743042FD0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 820792C1595;
	Tue, 23 Dec 2025 16:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lxqpnrKs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ej3orwc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8592C159A
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766506071; cv=none; b=E5Kulw7yt4SSUZNoZiIEiwGeJeDjZh0MJQBYSb1HvBeUEPf6UR1RYE8ivEmyoQ73hy8Y2wWO4bsXh3e99udbzFikVUJwKLtC1FtdgXZaoSYG6VbsXvUEI1qiWrakoK6vJLjLy1qgdoAWOKquvrDXScuMb+I2dA/8Dlg4Z0AGlLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766506071; c=relaxed/simple;
	bh=YdD5Kq0TZf1TYKtFanhPoaAha2bwUa7ZAco99EdeE30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SXbrP9l6OvbRVhFCIYK00BEkw6fj2mRQ73oLElL4OAJfRpAAtIbKVEZg58S/dz2rWJxnuPtP15T+EZgEicQw5w4b2ZFH+ou3/N+XN52MaxVbpqwR28hWAnLR8nRvKcLt9ZafmTdx9qyz+sYulJEeijEJJLZW6wKDWFHf77+0MhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lxqpnrKs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ej3orwc4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNENGXw913618
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:07:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kbtm09XgsnHXRaYbnO3t36Ix
	nxTu+GwnF6MLf76D5Fk=; b=lxqpnrKsS27cpUGKjROT3DCFGQRfyFc4EHtHPU3o
	1aLM0WtZolzWCjdq7laXK69n0goUs3k6/WlL0KUleWpBX7gKKcko8kQ62ZePOnqU
	I2Kn66zunwtbOS2+WrDR+H8NHfCuapn0yH/Ny+oyEijh3Hf3z8K2KOR7VzsOuEEs
	fMxiu87lxO2dMdeB+jtAT0k/6usml49X1Y9D8LBCgO8K/93nyUx9dhulS12xckE5
	9Fng1qgAPc9gF9BvL9NisyALUWBJsBQEYX5WgXoZqJHIn7FyRQV9UXJRDMqy6MiD
	Tp5dxCcNluXcPWLymfp6pV6kpKLhJF6biumL9Kw116g7EA==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7vt2g9ku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:07:46 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7880bda8e5aso74008967b3.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766506066; x=1767110866; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kbtm09XgsnHXRaYbnO3t36IxnxTu+GwnF6MLf76D5Fk=;
        b=ej3orwc4oArrcdyIAYdJT+Ax3FzRlH3JqPYyHkkBsWT2DCqNeDcUGkk2f6iUqqWIKe
         1M1nZ9ePAsN6Zg5mldh27TX6gyRTGG9ftNWZotcni2YjCPBJMW1FZP8HCeCfx4DDWszH
         ajIelx1CBzLg11cpYlhe/otCYBAZkxinhXWwSCi1o8J0tVLbgoGalw/bDftMkQMOY0R5
         yn5xoxVTwUoVEhlICDciISUU1f8+ZUe/X47Lr2auVMJlYp4ZxvkHXjYceV8hz88vHWgu
         oIcUiyHLcNCvbmXXAaZdc98+A+lw7TkyWVDdEZ7C+JBCP5S2ACREyn3JYKdXsSENNz6R
         t95A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766506066; x=1767110866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kbtm09XgsnHXRaYbnO3t36IxnxTu+GwnF6MLf76D5Fk=;
        b=ErfBHsz2VUOfUFon4MQ/0dUkR3o6nkIQCbhQyYqxJHCy258zMh4oBYr4wKTnsnk3N9
         NOZZoTMfwhRLxoAXI3ynbcIoCnwQaFLudLqqeECivJLSoEn+h2NqBHxhDteegjgduNs+
         ZzVFvPGz6/uNd01E80vaHgDqoqRw9o9IeTIcU6QRN4AcP6d4xGiYEyOXDwN6EZB82rYV
         RSvuuJLSqcPmWuU60S4g2HMSe6k1iXaRUAC0FbngQ7P23ReqG5fjq0il+eYU5VU6iqFo
         9r0OLFmsCDO4g0VHaryqy1hO87cZMHiYuRA++VPLXn8gmmKsBN5tE6kUq/Nqq+2UfgJ3
         QZJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUB8bS4FBUcTWyR3EMliue5iKvyHFOunYx5OERZ92ReIDPiep7V/yTIs1OJ6fx8eR+0F3Q1u4hRVz/I@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmid+2Q12/MI/OaMjGwjkuH7r6snkCp+7DOqzvgUicjAfbDkY6
	vikhPzQdZSLxWAljTsoux9oljYhImWeZDywpOdEhsm807fxi5iRKzQruZVZ0FUF+GipQK/9uf1s
	W535x4/fp8qIp63tVq9F/qD9YE4BNa0wRc+D32J+aIHMW6aaOqzGiitsnU365gv7/+ooukZKU
X-Gm-Gg: AY/fxX5A70CeDl+8GxNAwDeS+Uf6SMiW45l5i8vqpdUPaj2ZCcy/vq10OhkhjLhg5K8
	ckbtUfYwksg5mAcO/R8Kmo2L4uELC8lk18sgZkjIm58C8Glvw7f8lsn4z+paOMj43axkvX0sHN+
	7MSumqlZt6kPRMfHTj8TtAmqHkHnTOXXWjn+5tzc83Gi57fLi/y+7TKikia42gn7su4HzkO8evr
	gEdP0nugDiZGkrbycVGD9a02kASUn/O4P44+PmUHPqSSX2dZ4s50m3EqghQTmtde9Fz8SoHGtTL
	e29JBQYCKD8RE2OCj+d1RK2czjhoqZS2izSjFnFw8G2HeZ910SIHS/r+bi2Af+o/wIM2qYk6lSi
	G9DVWNW+FcoUB2fZwSddZPQ==
X-Received: by 2002:a05:690c:d1b:b0:786:3ee8:6703 with SMTP id 00721157ae682-78fb417c7bbmr116684477b3.48.1766506065943;
        Tue, 23 Dec 2025 08:07:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSHQuIo3pRz2riwwISQLa/iVvhExEFa9vzYsYI/lDVGWXoCsnaqj3YhJahBtrnysEZI7FYqg==
X-Received: by 2002:a05:690c:d1b:b0:786:3ee8:6703 with SMTP id 00721157ae682-78fb417c7bbmr116684247b3.48.1766506065469;
        Tue, 23 Dec 2025 08:07:45 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm14291553a12.31.2025.12.23.08.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 08:07:43 -0800 (PST)
Date: Tue, 23 Dec 2025 18:07:42 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abelvesa@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 0/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Message-ID: <mzs4x5bme6oewfptxx3tt5cdwuweu4vjptvd64ika5p5i7kj74@3iqgysicqugu>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
 <aUq2VWecmWRNX139@vaman>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUq2VWecmWRNX139@vaman>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEzMyBTYWx0ZWRfX7wFW3GVcvZZg
 o9k54a9GgdlIyZqqcTTvjrFGf2EiiOdgFXVsBIWIZyLlmbMIIan5hfwU3QZdU009Obo8erALLth
 6vW/uR/bwBqK57Hb2aTXWaVHzDtQ3o8HPmBT/6z88ZzJd7geV7vQo4lc++OdwwLbYPbOnmwgtDL
 6zykRC5UCy/7l/Yi6rJyDnkyWZ658fIvDEImu0MUMmhuWm/J/+dpCPgwqrQr2b+qrlxKgsGOueG
 AilyEPA0aJcv1LnRGhGtmeyz/gvq2kNIm9YlCYTPbeIFoOOL7TCJwTBgKIa7EL1fvCxILkf8qWb
 ZMgtz1a2cDDaDiaz5Iy/5vJ8mbc1pwIrOZLsl3yfpxYhlg8w3b/uBDlZbAZd/fMOc0x9jTncVtr
 JBxJGaFZA0bHKRO55UbcopC6y2mfJAyAKMAW+aeleBPCKn32Cy5c3NY6aCbA333acafIgHjK0Kr
 ixLMj0pLHSXWL9pTTtQ==
X-Proofpoint-GUID: 3A5HnRIcpNRxluv72E6FPYXRazb19TWc
X-Proofpoint-ORIG-GUID: 3A5HnRIcpNRxluv72E6FPYXRazb19TWc
X-Authority-Analysis: v=2.4 cv=brtBxUai c=1 sm=1 tr=0 ts=694abe52 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=kz76AC6XHOyiVgLuqU8A:9 a=CjuIK1q_8ugA:10
 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230133

On 25-12-23 21:03:41, Vinod Koul wrote:
> On 16-12-25, 10:25, Abel Vesa wrote:
> > The Glymur platform comes with two PCIe Gen4 2-lanes controllers.
> > 
> > Add support for their PHYs and document the compatible.
> 
> It fails for me now. I guess I picked up bunch of patches which is
> causing this. Can you please rebase on next tomorrow and send
> 

Sure thing.

Thanks.
Abel

