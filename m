Return-Path: <devicetree+bounces-204480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4603CB25C64
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 08:59:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 904CA3B820E
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 06:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77BB225D212;
	Thu, 14 Aug 2025 06:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OZD7Az6h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9943258CE2
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755154569; cv=none; b=jfPJUzgK0Gh4SdckwuQqPjdkWqku8ySNgUpJSpRIdL1O9SteAKzPD5v9njgvvFyWat0iBL/jV1NxxUfx5OmsRgQqPFqYZ0fsMOU5ZNoO4MIyx/yxJqGp9fp1K6lkonQwdD98e1D89rycioNxqb2ACm6J44ZKmMX/j+EAdIEUTAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755154569; c=relaxed/simple;
	bh=Z0U7PjtN+kG7WBV1dWh9tbgD5U+ORVUekeXfSD0DKxM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qvTyCR7qwxyrZAQtKstOz/QKYuI8qAKFcirY4zKxjXFeK3JGXSUPuZUGFulkza7/dB998sf8Vm5t9UAK4Avf/qsDkI/+j/2BRRxpAjN+CTeRCKv+OD8QT4omE6gadxGosl7c4OZp4cvuSqV9hw4ljhFBt2xFTejW0nOoXveTHfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OZD7Az6h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DLkD1F031974
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:56:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=446NGPC4IHTmfxm6TNEJ0F5d
	cdGOD5iAOKWcZQN3Tyk=; b=OZD7Az6hQdCV3hnFFaBeTxMouTOtSCMGZRTKyvfr
	CkcjX5ZJBlI46LCZnKcLbqGoMfGf1MGiKv6wkjzEPOgT7EhAaT7MG8oCsBwYI+kK
	VNe4AH22aVSyV2fw1q9ZbtrUbkSo6Y26Lm902j9Z1tbaR1tDeCylk4hXm/o9Fz6A
	Fgbr9adslP6BkVhiuRGFFKcQ4HeGxVkbICawX8v6TXxfPGgNybsIFe66VTBcXGh3
	KmZ4szc5c3TPmD9TXM7zcSn8ttke7uRRwT0cWGjXS5vHzBZaCX6KJcdRT4PE0ur/
	+pPJcGP0WQKqkC9B7P79HnhE/Zs0QE0NZPuYcVl3GftKEg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem4jmv5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:56:06 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b109912dd8so6245571cf.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 23:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755154566; x=1755759366;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=446NGPC4IHTmfxm6TNEJ0F5dcdGOD5iAOKWcZQN3Tyk=;
        b=nsgOdbo2C9aPpvoBXxnRQimryVTHBqlbIn5rNlCRCDV9IvEet2iFtc96IZhZSHvJRs
         0yLIh68QWoRl4MjXsWzdjwv0b2ZqpEkq+FOWL7fX2gFixzl/1kpii8ekD4/hoqJe62Fy
         40xP03yeKG4ZDClDOAl2x1uiiI/diXNOeQrlsu/LadGoWy1Jy1TERcw9PAtr32QAjW0t
         pceRK06i/Q5VKaxPmGIQaqxtVnKwRTnNJI1qDbmvrPKTAwTdCTIWsGynBz7jTUttwb3w
         sfO/M7WOU8KiZkN+lbgY0FwCyfBI/1IUK1dpRRef748WwU4sIHi41w6xE7WQZ7v3cXZJ
         uSeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWR7/NbKPQfdiBO8qkci199OF2j5g2B0G08ZUX9ZlmCoUf1DstXvpTOJ4MmGJ2PEzIx+jpAmbtWnVb1@vger.kernel.org
X-Gm-Message-State: AOJu0YyiVXg1hjfg4wiPVS2oTdpKj3VbF+XYiGanHRrvubAQnJzuFai1
	LWmACce32N+HfdlBPrI76I7m8Cbj63a1qANTVidLTM7bqsZhNmt0LihFB5NyjP90CGO9sieu1sv
	BoHSuSSF3uoV/4xQdoeKdhAUpc6fcVCLizPLp0FCgDxftuzHCwS2npGv4ypNNgFML
X-Gm-Gg: ASbGncvYy5LREP+GVi7HWPK1jPFH+mdH5EvUq3lZ9z0ATu1FPafJbchsDB2Q4LSxsQP
	DCAZKZtstvjQgNkgM9H3KfhRJSh6jEIy1OzKVDTPbazwTclOWrhNVl5xmNDcDjxHaEHGlkn2/26
	5fEi4OwkU93qn/uHcN1SZGEqnUVgDJKtbv8PgEQwyZFDHOBpBcKdheoPbOQaWSpbtby5ytwq1zT
	DfKB3cnhAmAeI3rTF++o2bqeZK6veEz9nueq6cvBcElumkrETND0ytDPydNxnhmmJMcUBzcs6f2
	ORbR7pL9Uii1eNeozxiAAdNWqW+gvBCiNveTio3MUJVaQFybp+am9F5AYYE7cW86kQYRa5Hd3GJ
	BL9wq/poeWt800/JMom12/fIfEcNH7FE+rtdykR8zQy7DEoJNInT8
X-Received: by 2002:a05:622a:1887:b0:4a9:cff3:68a2 with SMTP id d75a77b69052e-4b10aa6271bmr31969031cf.37.1755154565829;
        Wed, 13 Aug 2025 23:56:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEu4eE3QLS9jnWgL6hZSYfORd2c5h9kWoE1NL/aOYxfZybe6CsmPBNHqWg40mW34hJP+Uy4Ww==
X-Received: by 2002:a05:622a:1887:b0:4a9:cff3:68a2 with SMTP id d75a77b69052e-4b10aa6271bmr31968791cf.37.1755154565366;
        Wed, 13 Aug 2025 23:56:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc859266dsm2374101e87.38.2025.08.13.23.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 23:56:03 -0700 (PDT)
Date: Thu, 14 Aug 2025 09:56:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Cc: marcus@nazgul.ch, kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, andersson@kernel.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: describe x1e80100 ufs
Message-ID: <iezjm5d5o7ec7jqweyip2vcqtjv3icidw34yq36k7blxuff2sf@ou7ub3cpwx2k>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-2-harrison.vanderbyl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814005904.39173-2-harrison.vanderbyl@gmail.com>
X-Proofpoint-GUID: Y0W4X7b-kHX5Qk-YKO01seTMbTd54qtA
X-Proofpoint-ORIG-GUID: Y0W4X7b-kHX5Qk-YKO01seTMbTd54qtA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfXzsVpVLEjA2Hm
 KfqUcSTwB/xpAz9d2UQTFOd6YmeupcE371UXGaNERw4wIP+HUOzGIfvzRG2lzeEA1lY1SPj5XOk
 4e/hKmrxrc0Kg6ILfO/PyZUX9lG9F1N4pYqiP5S26bPnxzSE3Ddtnptdld+P94EmGwODoWdCud7
 WqXwwdFf4mVfiSeww1WwIRTkLp6BWAiQp3il0HicapRiB62wPj4YSxuTvUfebgGGCm1YY6N/XIX
 2kfCCOACUPhvdfkS6BLWKHs6xM6/UeMyQBsEUlYsnDJMMUBPu+W87+Lm0w7mlnAf+pF6UbLrVMu
 M2WxJUgzIgV3K8gopdiKTbDveJ9J8JsIuI4gGiltRUBX7h69iGSR4HqUjqYpzd6AjmI5xHGaA01
 cZPicrDA
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=689d8886 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=pGLkceISAAAA:8 a=2WfLOqSWa4--05Z-PRIA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068

On Thu, Aug 14, 2025 at 10:59:02AM +1000, Harrison Vanderbyl wrote:
> Describe dt-bindings entries for x1e80100 ufs device
> Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>

EMpty line before the SoB tag, UFS not ufs.

> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml             | 2 ++

These two files are going to be merged by different maintainers through
different trees. Please split into two patches.

>  2 files changed, 4 insertions(+)
> 

-- 
With best wishes
Dmitry

