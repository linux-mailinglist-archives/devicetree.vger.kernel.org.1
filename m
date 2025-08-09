Return-Path: <devicetree+bounces-202893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA935B1F2DE
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:35:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC0FE5666C3
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 07:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97788264630;
	Sat,  9 Aug 2025 07:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZTh+RC49"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E79120126A
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 07:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754724946; cv=none; b=CQIzo8czlL8lfFHS2Kcsw57clV7ekA9oi/OKv3ryxFA5bV6GHnvMFqnDnkH+nmRL8HeLvYy6EtB9Ni8IzhQUcfWF5bd3xZG9Xg4DfEqG4PTWxKNI71SjtmSdEFzcplYpPZFD8v714xnZk3SpHdvZ4KoJsg+UP5uLFk3QV32+bQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754724946; c=relaxed/simple;
	bh=E6AUHyZMMF/+zPZS44mF8zqFA4Pv6VLV5G4A7JiW9ek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uN8Mujp5VimiCauqhZ1iW5MKLK2f4LQx2SVvKHjx463EaUcY1z4OTdChCLjh6MUnDfDzz3T7DYzBfx58d+L90cyi22Hcmf9tismODODPuClFfbR2jTMbCSWbuTzn/9QxhIIoJ5xipDNOhQ0mjAYuwzBQs1BrnMYlDakJ7ZqHNpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZTh+RC49; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5797GEd4010484
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 07:35:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=793ppZWsrIij77Y1OuUluZp4
	P0smE2E/QLjBMEM3Awo=; b=ZTh+RC49HHbXdonFVTRS/yBg5wK6je48hIaNoPuW
	qoHu1xemBHvxwbSXjRFBSrPQqWFyfBAiLgRvly0sP7NgrsnL6ZNUK0c2TOp6grOc
	v1ffoKlsvVfrIBeR36UkTPumPQ0IFiWLd3LJzFXrVfSpHvMUsep1L+Li4GnWvy7H
	d9tIza/J5l/ZE1WRNA3cuxf9MTrbxaxWEuv61WCMAe1x81Nv7Q4GUr1ayRUDw6Zm
	9SWsiE8vXoH0gy59mUvZFyhwFYsdhOvUlD5mbsF2UXgHSOxOFgKIEgd0YsWYYZwJ
	P1shnX4tfyJ3LoZyVk8DblEzJgrTkDh9unHQtS9HRjSQ0Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dwb70bsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 07:35:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e7ffcbce80so608810985a.3
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 00:35:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754724943; x=1755329743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=793ppZWsrIij77Y1OuUluZp4P0smE2E/QLjBMEM3Awo=;
        b=hD9O8nsL6JrOeNo9EGWr2RfeS+0GjzM6ZyWyGMzfKZnsVlyLU3GT4v+94SxEB9BO8y
         PfACvhHIVFgTDUBV1fOKgbMWCr3jshV7xaomIyncPuD0jZ9J7+XeCRHK5nsIYDxquJTh
         M+eTpBExcJyzQJRUJRSo6ig1kZw9EYTPAGHmxO26zNtuFTmDqOrDOai6ZeZHi/bq4RMw
         y9VdLRzBakuxS+qDZ+ngDVJB3YVk4IeNLd3nT1e4ySUAzdal/bB1F/Frsrfm4u0JibHy
         58tzlMgl4A45paN0s1dfrQIkWFQ8RiOjV44da7bvbcZSkIbKMqRO1bRX9fNcRUcWACft
         hHtQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+2B0TNeD3/W339P5c2IpZA12ZXyLjCFYtivzEUW8XyLzk88mNvzLZfms5mUGsc9Nqt0MoMSNJPwKH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1xltDO2ChN2bUYEKUFkaB3lPmeDAbZJQ6jOzGEY2+vP6ip+Ca
	ilILU4tdOa6EZJnoPLqvkEekpwl6vswK7rWyU6ieyVu5QsVF1SQJl4sAFMa4502GcKsYKmHYft0
	BgpCpeWmZ86dulaoa0dljF1nVGx8Ab/uko+UexUyR/RbPNMQ3cdnV3BYBk10xAjk7
X-Gm-Gg: ASbGnct065ytPTlHwfhGdXjYm798KExuweYUQ7cXVa8zWgutR0hEjk3yY97BLkcM/nv
	NU4fLkpvP42uTiTVNUik0ecRCywHcDn6EpKmZ30Gvc5hf9KWcm67e1LMfr/W8OPglew+Lg+LrDM
	vvbL8cSFtVAI5he8vUNKnqwDD2OJM3FdLeB6TCXEzjjTAfxKdM0XHNn63djmvEjid5SgpC+41pY
	MFsNnGDnsKnlEZ6A5krrscLQx+5C7njaqpByzvizxjurSvq5m/DynEt/zltGHNhgkmhh9qFbK46
	4TKdHHMRM2FQnIupvFUC+GUIfgmlFwC1w31Y2Fv+K94pvpKqGIz16sx3i/urfwyE2DVa+2eDioH
	ooTLM5ZKL3LYlln7W9yhIkKGP/bm8aqzgt7VHeYwcZO0aQ+KQxgKf
X-Received: by 2002:ad4:5aa8:0:b0:707:6977:aa9f with SMTP id 6a1803df08f44-7099a374e7amr75943736d6.36.1754724943151;
        Sat, 09 Aug 2025 00:35:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+V3FN8kp+AjaeE6KYwRPxZyM6Hct2o3VLDBaJ/JP9bICpHavNGCU00WGCKhqaasJHXQECEQ==
X-Received: by 2002:ad4:5aa8:0:b0:707:6977:aa9f with SMTP id 6a1803df08f44-7099a374e7amr75943476d6.36.1754724942748;
        Sat, 09 Aug 2025 00:35:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88c9904csm3407575e87.112.2025.08.09.00.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 00:35:40 -0700 (PDT)
Date: Sat, 9 Aug 2025 10:35:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] interconnect: qcom: sa8775p: enable QoS configuration
Message-ID: <sdp4moiiii5zjz7m7ysds3je4h66biuusilc4fx4bq2j4dw7ur@5d3c6gkk6wb7>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
 <20250808140300.14784-3-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250808140300.14784-3-odelu.kukatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=K6oiHzWI c=1 sm=1 tr=0 ts=6896fa4f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=t2WmfeA6w6qF_8Xn0-8A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: hYFy19cWW_kgAP95MwiX3UhygwvMBeZI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxMyBTYWx0ZWRfX4obyJmURyurf
 Xqcw4YGs9a1M6sK3q5nL24uJuVtn0p2ERQvYV5TIvAtZ8JnPtK97lIxBTpwvaX61+37ums0lBxo
 4IMmnzNP3FmKo/vFjRPqJhhvFVR1yNeu2pBfQGwqSxkJ2nRNImq382c1aaNKVnMFD454YEnVy0A
 H+VkWwdVMRSs/V30Mehitqdsldenev+EWu3ujba+9kh/aGdXmfbc29YLPJBvUIDO48Ar7wnX9nl
 i4Fbwca3JvtoFyRDu3bF0wrpt5k+8vrEVrpVACTwvG4yylJ3aARIKYtnonTWXroaTyxUUHHztxU
 EUmQW5zO80HH32bXap3UXRUi2qfekQIrpqVhVCrT5MmOlOXr1/P3Bbp97XC8jjGOvFUDz1oE2XX
 Gb7S33Jc
X-Proofpoint-ORIG-GUID: hYFy19cWW_kgAP95MwiX3UhygwvMBeZI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090013

On Fri, Aug 08, 2025 at 07:32:59PM +0530, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefined
> priority and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/sa8775p.c | 439 ++++++++++++++++++++++++++++
>  1 file changed, 439 insertions(+)
> 
> diff --git a/drivers/interconnect/qcom/sa8775p.c b/drivers/interconnect/qcom/sa8775p.c
> index 04b4abbf4487..5bf27dbe818d 100644
> --- a/drivers/interconnect/qcom/sa8775p.c
> +++ b/drivers/interconnect/qcom/sa8775p.c
> @@ -213,6 +213,13 @@ static struct qcom_icc_node qxm_qup3 = {
>  	.name = "qxm_qup3",
>  	.channels = 1,
>  	.buswidth = 8,
> +	.qosbox = &(const struct qcom_icc_qosbox) {

Please follow the design on milos / sar2130p / sm8650 and add a separate
struct instance outside of qcom_icc_node.

LGTM otherwise

> +		.num_ports = 1,
> +		.port_offsets = { 0x11000 },
> +		.prio_fwd_disable = 1,
> +		.prio = 2,
> +		.urg_fwd = 0,
> +	},
>  	.num_links = 1,
>  	.link_nodes = (struct qcom_icc_node *[]) { &qns_a1noc_snoc },
>  };

-- 
With best wishes
Dmitry

