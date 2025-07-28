Return-Path: <devicetree+bounces-200130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E73DAB137AC
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:40:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4CC31890857
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B86253954;
	Mon, 28 Jul 2025 09:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T5V8P7It"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49446225785
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695606; cv=none; b=ZGjUKICVBRyaG7G2W9wFxzE/v++XFHdoVY41OPLeO0/X1NXUHbQMgumoKNF2ONuDdruDdNUmmHSxeu7t/Na+ceKqQcng9rlr9NQ08oBvL8XVKRbQRxZSXCQmiYewNospfujlhmw44lz+YBsF089P9Xryd3Oyu+jIvFfcYnoiwCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695606; c=relaxed/simple;
	bh=QiOeBrAIdjrellCMOaNYCha7F5wS46M1LiivABH2puc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AeZ77M0JtBG9bqdNXKArYpZQwZSg8jzio5zC/OFTwAg2zbh3sY8TM7Aot+83kgiPjQUAlxQVFJ07oF5TvCWD7vvf0KKoA7Wlw8+D9r9K3xdvcDxBfB8wJXhrh+iU0IEOQ0faufZ2Hbpt8av8sccJ2vQNr6g3WfhAEqtdNCv773c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T5V8P7It; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56S4rUE4013269
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:40:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oFB3vG6oMDSksw+IqlEzE+5W
	vTvnqjVwd3/y/mOq5Y4=; b=T5V8P7It8OhjF0CIKXRDa6KThqdnW/9ojBQXNTKg
	w55P/G0u/d6gHVqyWSpcirmZyfECTukbdy6anyJecWkpIjq0cS09/b8hIzXcq+FD
	mKG4hWT2gyZVTHavL+UPeQi0UunHhIMvYcuEYfrvIXxid8v8ePZv7/npSq9pxVYP
	OWduBbOYfpHLh1VUIRT51TMIPM/1ZNLCRPmNe+LUQTw1/of0x4WF4OH3n2iV8UUu
	LZ56X43pLPiv0sd8fEGIMKIsZZ20xws++qwU3NHGSyKxLKuVB/SC5ATuE/tKh0lh
	/4gx8s7V07QX1r1MmBtdhq68S53D4ck4mV7KHi0a+xCnTg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q85v38k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:40:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e33d32c501so1107461185a.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:40:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695602; x=1754300402;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oFB3vG6oMDSksw+IqlEzE+5WvTvnqjVwd3/y/mOq5Y4=;
        b=dQEx3Ce5X+AwjD1gRtYCAFj+8bm8JVong0UyIXRn61tx9u9v7E7fTjn8H+6u5PIFGM
         pgOuPbXeb1hNTxcVGh+nLPE4OSxTtxA4D9Q3ZyC8IZHJoG0pJG1d2LLIwron25Fuzep+
         fWM0W1tB4Z11pONQOq+/CI7gD0iziDgzfAdUDbG4hstAjNdD9FCs/TDtrST6hhJziyaM
         hrU4dcVge7bAV8G1nhYje2KfYx3t5PkMg5B5NqsD9mh+YjnAzza79aQswWiu6S8aduA0
         Bc8+cHEukeaWa+ugRZdzKY970wL9uj5T8C3hHG9Xg/iE9+qiBU7xMzu5SsjPw0NG2xQM
         3DKw==
X-Forwarded-Encrypted: i=1; AJvYcCVF4UEHXPwtm+iti2TDvGBrSzRfBRPSSdisqvVm5RKBRZMH5NY4iVcJx2WTTzI5hmMBwihYd0Qa5gRh@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1sfRdGvIiLGRTsAe5SB36HDxtVPX7h+CDIEHAG37y+1VrG7fM
	B5nb7ldRVpLhuE0jh2ji8V8v7SGECOippr/S3z3+oVjB7vXWHwfjG9fq/gUKP5oqsw6u8hIesUf
	ttCQrDETobVMmRGVInXJ+ctGyOfoIYDgnB5kW9Rao2nqEFJjspMNDAISy4YRQNksV
X-Gm-Gg: ASbGncv/min/RM3FMDoN3qQx5IUxyUtTj+FmonlVXLSUM791ki5Gr2MelVWEGkInpsE
	2DQLCzDwcdVdm8AmgXxeDez+4w4iyqlClm6SV7PcuHwB1UCgLpiKcRYjojI22LlDEawWkmX9aNJ
	tWUkIkBy3CBXS5DOSdi4v1bqx8WxsYy5LUakl/KMeVHSDrfypnI97R1od/qRYc1PzZvqjhe0O1d
	ORPDh6GTK5TLNn7lQAUNbqJ5LA2LNZPZWGgAdKuzs+v6mMvtp3KLMFriYrqjsIAuaTBhV3gIQSL
	RYxr6I+sTAwmPdtnnFMActxekEibBPvlLtCRMoaCTfCyQgEsNj7PJynTISXe/6Wzz08RNfZAp62
	Zg35KiMqrGDo5VL/Zfw5/VzKIXeNzeSGCs8CwspGR7D/2aH0V0H++
X-Received: by 2002:a05:620a:d87:b0:7e0:2c05:6b9f with SMTP id af79cd13be357-7e63bf84f20mr1494157685a.16.1753695602103;
        Mon, 28 Jul 2025 02:40:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh9YvZXA5UIvwUmMAvvJ/c4paHn9tAvNskBJAWiyrfPCKv85m6T5ST1rY+bjPyFBgbZApBiw==
X-Received: by 2002:a05:620a:d87:b0:7e0:2c05:6b9f with SMTP id af79cd13be357-7e63bf84f20mr1494154585a.16.1753695601548;
        Mon, 28 Jul 2025 02:40:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f4278c27sm10815401fa.76.2025.07.28.02.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:40:00 -0700 (PDT)
Date: Mon, 28 Jul 2025 12:39:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Cc: quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        bryan.odonoghue@linaro.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        mchehab@kernel.org, andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <gr63jb6yoovm52l6a3h53scnhgkg7xoda6lond26dduy6seg3o@knyd7qavg7yj>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
 <20250715204749.2189875-6-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250715204749.2189875-6-jorge.ramirez@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA2OSBTYWx0ZWRfX6lWpEUeRB7GA
 H/i4dMNC5afN6k2sUUPDe05NhuleDGlPhw+nWwEDKAiaMYb5Fo09BP7/U2zbERCnmq0EFyjPGmR
 n18nNmInUpZMyEfwrLKt3SR23llvsb3M+TJ/mqRZu4azaZsxYSl+feXUNrt0ICW8IBLUng6llC1
 ITZrukIrtLm9PDR+LWZNn6NAh5PCzAKJAJ/p45n5y2mI2Ucfb8hEPM5MF2aqTX4McJUFtXL25+b
 xCNIc1svUe+G1iSTkZ03au7w5XHInS7aTa8O/BW2IKOeRQkOpn5ig4IgKb5ikAkx1ZuRjvWlcKq
 +CJbxxcwv9evxI9D4786ot0teA1O7pLrcw97E6IH7zxJ4R6kSzmK6pQjql6chfDmTUcwbIKsHN8
 /mcQx7cecakn4iYA3EeRCHNMUaPnAAHud227PhMHz6t0bckArz0dTxicOkCLW4PKZnw17QbT
X-Authority-Analysis: v=2.4 cv=TqLmhCXh c=1 sm=1 tr=0 ts=68874573 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=fNMmvbdrdlD2suN_VgQA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: RMkbhCL0UyNItolqmz8hML5HhdzdygoM
X-Proofpoint-GUID: RMkbhCL0UyNItolqmz8hML5HhdzdygoM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 adultscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507280069

On Tue, Jul 15, 2025 at 10:47:47PM +0200, Jorge Ramirez-Ortiz wrote:
> Add a qcm2290 compatible binding to the Cenus core.

Nit: Venus.

> 
> The maximum concurrency is video decode at 1920x1080 (FullHD) with video
> encode at 1280x720 (HD).
> 
> The encoder is not available to firmware versions below 6.0.54 due to an
> internal requirement for secure buffers.
> 
> The bandwidth tables incorporate a conservative safety margin to ensure
> stability under peak DDR and interconnect load conditions.
> 
> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  drivers/media/platform/qcom/venus/core.c | 51 ++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)

-- 
With best wishes
Dmitry

