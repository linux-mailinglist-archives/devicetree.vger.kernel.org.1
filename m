Return-Path: <devicetree+bounces-218398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8C7B7F7F6
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:45:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFE7B169AF1
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968362147E5;
	Wed, 17 Sep 2025 13:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l7KlTeAw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077AF14BFA2
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116287; cv=none; b=nF5hN9/wmgcsSz2qzhFuaqrGyBf/HDfotvqh76fKadLOPcYup2PtUnhk8hgYrs/CucYm3GwCfCzuCA/YJOPZF7ziMA7yE+e2UNd3cgX9NmYnRUuhme1xCRjRXvxUEBEmIzcIqzqI6CxXmw7lXEpFLrYJyU0q/jtNE1AvokDT/xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116287; c=relaxed/simple;
	bh=PPJ625NvM7eluHFld7PJ5RUi59lKn3TMrbeTuUnNf8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=niOnuU8DeJfAyCM6U+n4T5Qy8B3hpGFFBsDwBad8kZr7rcVSENiU55YZUhXfoDQj8d3AFlAzUYZ3U5eErk2MACR6RtOsFyU7ROIyjnnPFODW1rZEeUlrNn6H5qHAtk+wBTDcJXUR/u/OKyCm8FWEW9nuxpD1BBGAqE+0V0VU510=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l7KlTeAw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8Y3mZ020577
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=w7GTRhgq5rEoNKib7SIm646B
	tucURKVp2xtEeVTevNk=; b=l7KlTeAwE8ujFDO5CgxNkSl5pqOaQBM0QX+JDmXZ
	+rloiPMN9fsw5H37KWm9XNUV4foPoiKU4RXP5gnlEBKnY+f+UTxUt8jKup6SFOk9
	loEZAwRLCdBIjsPHjBGavUgzYfSrnDg3l4s5CSJcfPScp+XBQXcTEuJOykZF/vPM
	lIgcbhEY3JsHlqhjnGTPV79sJ1OxUWNfZ24QzXdEUA9erLTRNhEqH+H3iLUZJgRA
	r2Gq3nqMvcUXBlXTXDYFotYnu8wjFNRM6xuZ+hsih7hCsrtbexf/0XTewlAusX9S
	VjEbdV//vHJrTuQgyfHZ4EsrOdzqVgdQwU4zNJNSvu9ahg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy1thh5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:04 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-777a81f38a6so103289136d6.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:38:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116284; x=1758721084;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7GTRhgq5rEoNKib7SIm646BtucURKVp2xtEeVTevNk=;
        b=BQ/U0CnutOOaFFUsbD5ezbb3bDGKASBr3YPeZrB3yRdVIPfUzEhZnw4aJBT3LbP41/
         ckCksBPjoI1aHHg/jf0BTJH6x47Tm9ywxBssv0EMaR8RiNugH8LgOvQEdLBSTo8SFL8u
         yVZigbVA+l2lCT1WlDQok59hJyYGRIH/y1p8iwT+wkbLfKS+J3dgPgfjK0jt2HuE5oE8
         5nk0MPlPcbT/3mmb0LheQjk6JP9nKpQM4Q+pSXaOgTAumaDbe8BzgVtsbk6QSVw/u8tf
         B6eP+RIvDEHRgtyxM5+dF3p8Ac0ElrGdhOtvVtRniigRzpvJcgD/c9hAZVRaQ97iwKnu
         Y5BA==
X-Forwarded-Encrypted: i=1; AJvYcCU9usFtlOv3jUr+E8piPMIPqKF/NBPCt7BxJkIkDCJ53sALH+8ibHM0oRLJedYVOrjkElhyXvqKLusE@vger.kernel.org
X-Gm-Message-State: AOJu0YyIxEO03QwK7zqdXtdY8sSDbyRKhPA9L/fBr4wMtgUUaRvBC2ti
	bMJuPaojsVukLoYNKSj2dibSKNOl4LyGtBaG9tMg2s29SJrFcK93oKluJWHzQEb1uw9lk7NOp+E
	W3XViR8l4DD3eaaDwpPPCPZED6FE25kirOZev2ftiXato4fTS8WkfYfZSSxk4RYll
X-Gm-Gg: ASbGncu43fPPFjK0rXqHYdXdRtFZmAMAnLzcNgHS8qWWremnqCdJmecpAB0N+Drwe9V
	2JKqj7X1kg3MI72uEjG34BrMXVn1m3CIDuAOiNB3wpOh4olJWfJi6G6jccpn0CybTAdY4bWJXYE
	8pV0teucjbi/b6ELRDrwbiPMVx7HKzhL2itTXGFTj1pLNKBbqrd8t6jCA8K/GlGehYSeK1lqopo
	V1Zux9zsW9uJJbWWIvySWR6ZsMxUvBCi51/csabRCquSgHM2A1pK9+CTiKSLUX3PGndlGPX5KEr
	xA1X8JZdAYNzqxHtI6HSJ4aMC/6IvrAWGI0asIKs5+I1q3ZewbGEtnBpi/4tazTU/vv0Gn4wxrB
	GrR55EE0C2qWUvOW9pHyLkhbkBKDaEKBmlDwG4TUgl4+GK9vDuZ7G
X-Received: by 2002:a05:6214:411a:b0:780:247c:4b1e with SMTP id 6a1803df08f44-78ecf4f6ae0mr18960706d6.60.1758116283712;
        Wed, 17 Sep 2025 06:38:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLCBopqInSMbBFKEwP1RvqvH8otaHG8H1R8WN+gvIViYqCYgDcJp7lOy8hiGDIKsQjsbUB/g==
X-Received: by 2002:a05:6214:411a:b0:780:247c:4b1e with SMTP id 6a1803df08f44-78ecf4f6ae0mr18960226d6.60.1758116282976;
        Wed, 17 Sep 2025 06:38:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-570340058c8sm4822487e87.62.2025.09.17.06.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 06:38:02 -0700 (PDT)
Date: Wed, 17 Sep 2025 16:38:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yongxing Mou <quic_yongmou@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: qcs8300: add display dt nodes
 for MDSS, DPU, DisplayPort and eDP PHY
Message-ID: <suwpswv3jqes2mj5rilhqv55e72bgipqqq5rvhx3thhtnwhz3f@5hbktxchoqta>
References: <20250917-dts_qcs8300-v6-0-5c862aa80f64@oss.qualcomm.com>
 <20250917-dts_qcs8300-v6-1-5c862aa80f64@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917-dts_qcs8300-v6-1-5c862aa80f64@oss.qualcomm.com>
X-Proofpoint-GUID: NrXwB89-zX7CmUO0byfg9_jEuLsqpjWy
X-Proofpoint-ORIG-GUID: NrXwB89-zX7CmUO0byfg9_jEuLsqpjWy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXyJdUprwPLXvw
 FX9oh71N0yZyv+Z2asBNKhhZ/2uHhWYvaCnb7aeGxVJCttUP8nw4S51sJ4LLu6/2/RHQRW8CnLr
 5v+kq7RzRDgbNgtIvaPG0wq3GqDApSPBKjEFOMs9jaSh9bN5fC9247MDoJDrAnuPCLZYX3wqb++
 6ZMfS62wopWI+tysX5W7rO8RLAcB20zzWr8uvw7ZDVLN+vh5ruWJvFfAAIMKnEavzh6Jq73OwJK
 +GzW6yGZBaY4tqErE78tgWLb4koZH7snuJBGjNLwHPn2P9FdO9UTcpUgD9OkhZ+fe1Tql/5Z8xk
 nYW++OEfQp9A3lGL6CJpbPES3mBXRYRHkBLEVc5Y2AMd1YNO5XYHsR/EdVTkM4YL3D89jtX1ZLN
 /3mjsUvn
X-Authority-Analysis: v=2.4 cv=cf7SrmDM c=1 sm=1 tr=0 ts=68cab9bc cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ggSMAipNaOlLgWN-UjYA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Wed, Sep 17, 2025 at 02:09:47PM +0800, Yongxing Mou wrote:
> Add devicetree changes to enable MDSS display-subsystem,
> display-controller(DPU), DisplayPort controller and eDP PHY for
> Qualcomm QCS8300 platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 220 +++++++++++++++++++++++++++++++++-
>  1 file changed, 219 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

