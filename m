Return-Path: <devicetree+bounces-275388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNNcFWwytGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:51:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCC5286596
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B5DCB3039F56
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02C2735BDAA;
	Fri, 13 Mar 2026 15:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EuXAYKaM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O445ZmKx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A785735B63C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416798; cv=none; b=E3xjsbpxl+zHZkkhdNyig2DlwL4r6fkp8dU7sOOBcyby26uWwD3HF7kU1+rsStwfqovUOk7mxWu4BfnUS7UTIhHbWKDh+ishAPTOZVMsw9VJL/StmxUIc+UjiSzRdHLZhkzGAJMyCytdtrQ2atDdqySOvVIU38JVmQ3oiU2T1v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416798; c=relaxed/simple;
	bh=cKb7iIDUhdsATRBtJidymi9RdOckv1OVQnn6HVmDnf8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I+S1mw4opWLRfCJFc0OlAFbORCynJoQONJj/hOCYll541ah0qXh4je9jiA8OR8Sfw5toHkug54iK9WSXuCs2xBNP8cBDpbW8+ASarVdPg9l6R5RaKbtBKy0HLa6YBesa2s1Qvhrpj5EKyHANrkquaHPt5tndc6gXpJGAG9ceuA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EuXAYKaM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O445ZmKx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DC2OY64140646
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:46:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tH0wgKb0HurOox7bL5ptdkXW
	HS3fEbajVfibpkUu0kM=; b=EuXAYKaMC/Dre8YvJI6B/b2OR7G8UlUExqUolKeI
	IipFLYyGO9EU/oFWUO9Ra+5LxRi0sJEPjR+LxZdbV1vbTYO8EJ5wJ7p2kzicvFDX
	lkYEqY9YR/2vsj6lMNY5o68qYVqjrV4S/jzzk0Ay2oRQLIJBGFxbIKSzsP0OJPLp
	pK65PUCmzVjLTMyHkHRpTWl4MpmyPY6PDRgtY1qzU2h2/RML8wx095djidin0/A9
	peIUWOsu/QdWHz2YMiKRu9OeIbsYbZpBm8UFH7x4AC54+MlPbkONV7Ka3+HCunKa
	zP7nqGNyvhu88Mp2jaA3ApVsnXPoDxntMBJaaON1M2Se9Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvbn2a7tt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:46:36 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50911c94db1so130040481cf.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773416796; x=1774021596; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tH0wgKb0HurOox7bL5ptdkXWHS3fEbajVfibpkUu0kM=;
        b=O445ZmKxk+mDNOE/dll0dpiHzw51L019dfgit36DVBVeqsbDyKbs3QzyRC36oKHEol
         dhQgp4vvGeqNpc9eFFGaJpliUaMDBR1HcKMHaUPmfBC/RXsgOv7rkoaZ/InOylh3UIqA
         DvIzvNQSNlIF1bO5cQuH7H773z+wYs4y6wsQuKPAcZIFxfyQxQuNihFcR57O02KB3+Oa
         d6ri7BETdCLx1Hld6/9vktP3eJdQNo9lC9snNkFD0kELh+mjGXSwiKVOWRNGkADneqJ8
         YT6minhJqGuo7ihpWrB1Qh/2G/7IX3+MSmDJZ4KHXkFPnO0uCln7VCpRTMMIA9GcKfGG
         6+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773416796; x=1774021596;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tH0wgKb0HurOox7bL5ptdkXWHS3fEbajVfibpkUu0kM=;
        b=qJ8iFnxMDjYqT+dm/J/oIbHROnJ47SSvA5vywu6+WcMYR9vD9zfoYoLAHLPfkBm/63
         LJ1AW7yvQYha2XwIWZPVWP7K+utBM7aIueXwKf2Xs1F5ItV/SnE/P8BxhvlwLtZXI2Rp
         egryHlOIO1/yHJmwQJP5wL+BodUssMRB2FAUBvKC6epKmxFIPW9jiXKWSM7yNwf2wQJr
         iXNBSZFLOiPCQJRGwMbbvkBnS7ZW7KmmaT1eSKleBbaNc4qiDt81tO3N7En+wLW5Tc2w
         wFxj+sCCa7BAB9SUaPaAuDSWcnGSHNV70F59CsdaL6aK8ArtaZU2Lvzvj+vW6YJXP//u
         QR9g==
X-Forwarded-Encrypted: i=1; AJvYcCVc8KxB8whsaSKM6uxB9ZixwV3tY79mAm2+Z/APFmWWVAN5pXhaOLn7D0dQpJ+0JIuKI59pfde+gEte@vger.kernel.org
X-Gm-Message-State: AOJu0YwrmzfObykoeQDa1cx7T+HkdTiDHqUyCUF3Gnj6GseoNaju32N6
	jEDNQjaCxEbWIuJWZuWj54oJMU9XQ2E4yPE2iDaPgBYNEAZanThiZbIF3v2PFunDAGQNO74DxjP
	uv9x5LUyDMnPA1smL1FU+rjXr9z5RFGTiNAts0kh6uYmtHSpAl/Q+Dcd1sEgAHCZt
X-Gm-Gg: ATEYQzwFU6bql84q04vAkvhYqDIO/aBqcpKWbH0KrucVJ22N1tN6hV+4BXHcnst6yZn
	C4L5WkUMbf80Lb9ks8lCA4DZewJ4aWIzjUrBn71KATbTlxkD+8ZN734yC7uJ4g4uMJ4+IQ5vFuv
	Cgh1Aazzxk7iwdeMwqB1jzNfi8JuQDwhYQIJ5cKCqRLIV+TfqQbQIlqoKvEkQTrLIWLolVirBzA
	Z/qAiOMSC7N8jVozLFT8HqiNpa71FMaCZJHjaImDTduU8LGrJKR/MIVuk8Dh+0ipHgD5Yq5TT/Q
	vRhePPsHkT6UegGmtVizcVz/dV2QotttWnitaoOW9V7Uz6wVO/U2V+R8wqQwShtI6zr+rEkp6I5
	sxicn8VDr9XjoL27EhpQzKyu6K2SnaUE7g2mjt8eAipatJUoclcDVSdAEQVqgqF/7uywOKiXNaJ
	xk3hmL6K+HjOhElreXBy6coqR+TOEgsvPKC4A=
X-Received: by 2002:a05:622a:3c8:b0:509:31bd:3dec with SMTP id d75a77b69052e-50957ebce44mr50157301cf.70.1773416795990;
        Fri, 13 Mar 2026 08:46:35 -0700 (PDT)
X-Received: by 2002:a05:622a:3c8:b0:509:31bd:3dec with SMTP id d75a77b69052e-50957ebce44mr50156891cf.70.1773416795456;
        Fri, 13 Mar 2026 08:46:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162baesm1669034e87.42.2026.03.13.08.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:46:34 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:46:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 7/7] media: iris: add platform data for kaanapali
Message-ID: <5t3bke2sjkxahn4pjhdpyznbrdmu67u7cfgdfwqgjcgo7cbg2e@4wr2jadk6b7i>
References: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
 <20260313-kaanapali-iris-v3-7-9c0d1a67af4b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-kaanapali-iris-v3-7-9c0d1a67af4b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: rSrMGFi_CgfVANPKv81uJcz4SjxGfmqG
X-Proofpoint-GUID: rSrMGFi_CgfVANPKv81uJcz4SjxGfmqG
X-Authority-Analysis: v=2.4 cv=ZKfaWH7b c=1 sm=1 tr=0 ts=69b4315d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=IruxtDKsvQMgliTLv4gA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyNSBTYWx0ZWRfX/fSdwFRjSCXK
 3D67hwLVIfXkEURwxz6DNau0yXuF51Q/q9XIa4eVX9LFLKdMKkFtN6qCQyJnulSHSh2hRze+oEW
 948x0mNc1L5ww6OAQ0AvZgDRH9D+lYMFDCK67z0bc/UX/wb5rIR4ODuA8pLJARelcnmiyj733J3
 2JCdGglBBZKxuDtcGNNlfmbkaXKzJazZlFWGkf+bwYCw6gPsNGE2lo+1H9p/a7XMJloB2KsUvJj
 ExbY1PscHMpiqkylDYKkKPQnoL6VM9fOvaPoldWm/eEsv41wzGAxJviYxF5JUcvaB1bh+dgAxkB
 nI+pp4GFwJmqwH4W10dsHq68H1fAnC8jW7ZjqmpfKPqwvoWI7Ab82RmLBQeS0lyZ9tcg3n3G7H4
 oA/RKdl1BRoYdsXkDZ39yx1p2K+CJ4Lhcv0YeBeZc8vSVM+mQL8q5GLKfPuy6WhENPb/Xj2c/s3
 Vus1kDtyRYr/f0D/Usg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275388-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BFCC5286596
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 06:49:41PM +0530, Vikash Garodia wrote:
> Add support for the kaanapali platform by re-using the SM8550
> definitions and using the vpu4 ops.
> Move the configurations that differs in a per-SoC platform header, that
> will contain SoC specific data.
> 
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  .../platform/qcom/iris/iris_platform_common.h      |  1 +
>  .../media/platform/qcom/iris/iris_platform_gen2.c  | 90 ++++++++++++++++++++++
>  .../platform/qcom/iris/iris_platform_kaanapali.h   | 83 ++++++++++++++++++++
>  drivers/media/platform/qcom/iris/iris_probe.c      |  4 +
>  4 files changed, 178 insertions(+)
> 

> diff --git a/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h b/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..bdca1e5bf673353862c1554fb0420f73b3f519cb
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_platform_kaanapali.h
> @@ -0,0 +1,83 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#ifndef __IRIS_PLATFORM_KAANAPALI_H__
> +#define __IRIS_PLATFORM_KAANAPALI_H__
> +
> +#include <dt-bindings/media/qcom,kaanapali-iris.h>

So, you are including the bindings here, from the header, which gets
included from the C source file including headers for all the platforms.
What if Kaanapali+1 (or +3) defines different sets of regions?

> +
> +#define VIDEO_REGION_VM0_SECURE_NP_ID		1
> +#define VIDEO_REGION_VM0_NONSECURE_NP_ID	5
> +
> +static const char *const kaanapali_clk_reset_table[] = {
> +	"bus0",
> +	"bus1",
> +	"core",
> +	"vcodec0_core",
> +};
> +
> +static const char *const kaanapali_pmdomain_table[] = {
> +	"venus",
> +	"vcodec0",
> +	"vpp0",
> +	"vpp1",
> +	"apv",
> +};
> +
> +static const struct platform_clk_data kaanapali_clk_table[] = {
> +	{ IRIS_AXI_CLK, "iface" },
> +	{ IRIS_CTRL_CLK, "core" },
> +	{ IRIS_HW_CLK, "vcodec0_core" },
> +	{ IRIS_AXI1_CLK, "iface1" },
> +	{ IRIS_CTRL_FREERUN_CLK, "core_freerun" },
> +	{ IRIS_HW_FREERUN_CLK, "vcodec0_core_freerun" },
> +	{ IRIS_BSE_HW_CLK, "vcodec_bse" },
> +	{ IRIS_VPP0_HW_CLK, "vcodec_vpp0" },
> +	{ IRIS_VPP1_HW_CLK, "vcodec_vpp1" },
> +	{ IRIS_APV_HW_CLK, "vcodec_apv" },
> +};
> +
> +static const char *const kaanapali_opp_clk_table[] = {
> +	"vcodec0_core",
> +	"vcodec_apv",
> +	"vcodec_bse",
> +	"core",
> +	NULL,
> +};
> +
> +static struct tz_cp_config tz_cp_config_kaanapali[] = {
> +	{
> +		.cp_start = VIDEO_REGION_VM0_SECURE_NP_ID,
> +		.cp_size = 0,
> +		.cp_nonpixel_start = 0x01000000,
> +		.cp_nonpixel_size = 0x24800000,
> +	},
> +	{
> +		.cp_start = VIDEO_REGION_VM0_NONSECURE_NP_ID,
> +		.cp_size = 0,
> +		.cp_nonpixel_start = 0x25800000,
> +		.cp_nonpixel_size = 0xda400000,
> +	},
> +};
> +
> +static struct iris_context_bank kaanapali_cb_data[] = {
> +	{
> +		.name = "iris_bitstream",
> +		.f_id = IRIS_BITSTREAM,
> +		.region_mask = BIT(IRIS_BITSTREAM_REGION),

I'd say, it's really easy to mix IRIS_BITSTREAM and
IRIS_BITSTREAM_REGION when looking at the code, which might be bad
because they are not equal.

> +	},
> +	{
> +		.name = "iris_non_pixel",
> +		.f_id = IRIS_NON_PIXEL,
> +		.region_mask = BIT(IRIS_NON_PIXEL_REGION),
> +	},
> +	{
> +		.name = "iris_pixel",
> +		.f_id = IRIS_PIXEL,
> +		.region_mask = BIT(IRIS_PIXEL_REGION),
> +	},
> +};
> +
> +#endif /* __IRIS_PLATFORM_KAANAPALI_H__ */
> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
> index 439e6e0fe8adf8287f81d26257ef2a7e9f21e53d..f6d8761daf0471d3aabec21c708445ee7698487b 100644
> --- a/drivers/media/platform/qcom/iris/iris_probe.c
> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
> @@ -406,6 +406,10 @@ static const struct dev_pm_ops iris_pm_ops = {
>  };
>  
>  static const struct of_device_id iris_dt_match[] = {
> +	{
> +		.compatible = "qcom,kaanapali-iris",
> +		.data = &kaanapali_data,
> +	},
>  	{
>  		.compatible = "qcom,qcs8300-iris",
>  		.data = &qcs8300_data,
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

