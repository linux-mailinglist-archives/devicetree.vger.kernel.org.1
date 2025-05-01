Return-Path: <devicetree+bounces-172779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DDFAA65C6
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 23:45:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 697EE3B04D1
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 21:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAE562638A3;
	Thu,  1 May 2025 21:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K6vyi+7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40263212B2B
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 21:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746135931; cv=none; b=ttDNsztUqcm6gxyjlals5cenaDlKXpBzlDzs0NABosp5EI02NcCNzbGseBMmh1A3/X86LBsjhfLCEgYpbsqm9alqwGVTeZ9T5cGYGyjNwDxTuZ514nA0wUYbpRg1spsdMiOQGS0iv/T22MVkchNmkLaJGYp2qon4H38HPeYDoUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746135931; c=relaxed/simple;
	bh=Vl91YjoG9bqUjwa4D3IQmMOeHqOlYv+Ub5TMWghr/ww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QCCNNb2pGBtOzANOo9Nxe9YCUoFHkW+8I79mzZWnAFTQb3Y7WWRx2XZpGNnftjLGjDILaix3ziSARXfe5lR4WixXpgObQnnMhOfGxAQST27spa8/AGjLx7fhdVx+BQPQIrSXmhdd2PACySN2PTG4UuS7XCH4t+KgRoYkciE8pl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K6vyi+7m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 541D27oF006989
	for <devicetree@vger.kernel.org>; Thu, 1 May 2025 21:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZWvEe+y9fZ95LVZsDUiRwMr7
	gR6HVKRq8+OepTYfaZw=; b=K6vyi+7mToNIxjqq+Ofgd06E3o9S/X8ARJPRxMz6
	Unhkwgq3QdDdgB7/LoNv13RljEQ2wjstmw4D4y3PKkA7L+u6j2+3OBdSH0eklOdb
	trR54Z6tA+VB0OfEqSFs+thq2Yi/aStvjKUNbNSdbEJbaPV7bChyArEVh30sUFDx
	vr5NUHdJoS+pOtJbUDH9x/GWeF3PzTsOrp6tjU/Yh1ZR2BugoAqMJLO4qzW8WNR/
	spOs4ksP/c4jHEHpbSp+QCDAwjcKIS+x4n2rqgzYGJBU5vL6fM4nWtgbDF8cJUtk
	41i2MzIdzp/q9BCiI+Fv+N7hsX7bay5REUyT6LwjaAr+vA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ubpk2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 May 2025 21:45:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5e2872e57so245152185a.0
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 14:45:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746135927; x=1746740727;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWvEe+y9fZ95LVZsDUiRwMr7gR6HVKRq8+OepTYfaZw=;
        b=vYT+muUzvsee3gYD0+Ft5JfDNWc4ADbRcnJG7Let4YfW2MBszY2EzIoCoPtYP2B9+y
         DkTLfX3qBeolFUlXnHrd8TaFj4QD2euR/kD6aKvyAYZwiyC9SIP5JGMP0KUko7WmByDb
         2mTviLY1DCjzaT9yPF1kX3sK/Tg8DGHZoqGCYeg0Ts1Qw5aT0BkNCiub73BkJDFvlsO0
         SMrzlXRmqDqVe4wyc3g30uLgpXA04byLR7N18NG2uyU1mPSTXIEc63IWUjeWe2UytR+Z
         k64zT9c9oBAvccKT8iyNyO1t50i233Mk1wYilkkM+F2nx+k7DoOrMcR/IbD7XrfzuwPq
         QHeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWO1I0JpNPKKmu0ziYYLT27EqBNRBjRml1YGa3N3akEqncF1GvD8qJ3S163Mkrsu7fPIpyPsH+DcVCe@vger.kernel.org
X-Gm-Message-State: AOJu0YydniHKH9Jex0TZ6pBgnM5RgYRj5L471AN+n3nOWx3Nnjx0vLI1
	zd6uN6amx2aSMNnOxnnBqTE57gRoEoI3vw4cQ9XyXOvkZN7ttosZLb+FggH7che8GUGamp5LjmP
	VI/jn4h7qxthHutWqm3fw6KtQyvOHdwcsYNWz8Ej1HlFj9e7H5g+2wmzDxLxc
X-Gm-Gg: ASbGncsSb0VAG3a3DyyouwQ6I2h47DM3K6otdRy9jqAiE/DV0CnFFoExR59oi7TgS5T
	kDj8WPJ5ZzNz4a1DpUfVuXjhkRZhzKGikk+h3j2mxOb3+vcC+QkNpsZVklBvLkLECofHc7qj/62
	sIsInc3a+vghc1x5ZbjJwqek6ZVdoWoONu3LsnhjuKkimST6rG+MChJvMlSPVD/aVyj7GofzQWU
	Gkr7bCEicYSSKL8rZGF3u/MlCHdEcWcdqjHdpp/bxgbRgu44I7HTQc0bg1vwqDRZ6f1Rcljrc23
	QcPaspgaxYYiBJ5LlSvM12t0s52tRUorPe7ksqFb5lYGrO3XcIJE3NE2NLanRc9mZt+nRRk6d0w
	=
X-Received: by 2002:a05:620a:4304:b0:7c5:9a6c:b7d3 with SMTP id af79cd13be357-7cad5b8e24dmr91837685a.37.1746135927306;
        Thu, 01 May 2025 14:45:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+2T3LiQpLagEU33hPpPGBOSneQuetQ2NiGG7X9LR4oyqvviiI/t4vmBzHx93FvWEjq2NtFA==
X-Received: by 2002:a05:620a:4304:b0:7c5:9a6c:b7d3 with SMTP id af79cd13be357-7cad5b8e24dmr91832185a.37.1746135926940;
        Thu, 01 May 2025 14:45:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202930c92esm1997371fa.54.2025.05.01.14.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 14:45:25 -0700 (PDT)
Date: Fri, 2 May 2025 00:45:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Robert Foss <rfoss@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Rohit Agarwal <quic_rohiagar@quicinc.com>,
        Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-usb@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 02/11] dt-bindings: display: msm: sm8350-mdss: Describe
 the CPU-CFG icc path
Message-ID: <spvg6kmgzkmkknttwrzjonn3pshj3vvoqn2ffv7euucnkysbtc@vmiqfocytvar>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-2-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-2-0c84aceb0ef9@oss.qualcomm.com>
X-Proofpoint-GUID: D9bLQVkKcX63yU7TuyEybBjeJsm5i_nH
X-Authority-Analysis: v=2.4 cv=bsxMBFai c=1 sm=1 tr=0 ts=6813eb78 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=EuULMs42TwgxzVLzQZQA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAxMDE2NCBTYWx0ZWRfX6IZ0+sNdbNy6 OhqFUcwkoDmOig/cKZtMJ3kdncfEeCvEd9zQPstcDRI89VawtjpNqBCp3imcHtQ18RBzkXfrDLn 41aHxdop3NpiJfH5Doyej6KJR9iZCsf3Q+a5YhHxHa3CfLznqjUFrlxpjCV4RhLhHkEy1fDxcYX
 l4u+UZZQYZex1hwgOS9xuU6fMf0W2ViKVJut7y8vjdIIu73nQ7fdJp0Q5QBVF76SDgetxZ8yFEy CJ2+oqrPOvcpTVYZFhtysry9TXR9s9u2EA0luUIbOOl7ZYVI/IYv9jsflPeTQ86rzqwmEd77Ayv 2vXN6l6dmpcXnrxCViyOcmgFaaOvTqwoRWWg7RjQ2gzp7M6g4Ln0tcOx9xHOzAkkdUh5JnkhI77
 ryzxLUU0Jo/Xq0tCVp9d8CwY7IJ1putmHGXzCh0FeFjAagbNnUCdlIPlWID32H3FbzgxMx24
X-Proofpoint-ORIG-GUID: D9bLQVkKcX63yU7TuyEybBjeJsm5i_nH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=597
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505010164

On Thu, Mar 06, 2025 at 07:11:14PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There's a separate path that allows register access from CPUSS.
> Describe it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
-- 
With best wishes
Dmitry

