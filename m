Return-Path: <devicetree+bounces-220878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E715DB9BBA2
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 21:35:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 961EF1747EB
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 19:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1D4726D4F9;
	Wed, 24 Sep 2025 19:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IeD45TIx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358652550BA
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758742510; cv=none; b=QGcx7BRPBlTF4iY+EIJ8EMjnozSkjLltnlgJiEQJqXDpAC1adhSUllfFL8fuoJHE1EBCiofc1/+Ung0l/k96lyqa9Icmbt/+uHbg9b3MZU7RkBGe255KD3aU7qp7qM1RkTfgepdwUgx5/qJ0fSty/ooCBrT4X8nwIT4H/ZJwbDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758742510; c=relaxed/simple;
	bh=JVhXArOWemQPLrAxDExGAeOdw8F8ud5AdjfE9pP8bKo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r2r/gAoYfsMILQ6jCfmkdasZuUArwVk4fh+s3wU4NQ4B2abWabis9PZ7Er0Fck+8G4YWVo2ehpJqVhZ5Ml3cr+0a0i+y0h518BLElXrAghTa/TxBID/6doxCJ6P6DyDmzcXLJRsQ6Y4RfSIm6JlViVOMW6Pq/hWjNgSdZQeXSWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IeD45TIx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCq2R2021483
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:35:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TNlc6/vrXO2HQmuvBAOIMDlW
	uUXokEx/akryGttD9H0=; b=IeD45TIxGK67Oq3ViacGVuBJFVBuF42Wn0vhGcj4
	aBCYkK2Fn4ukG2I6lUs7WQEhixz1/n4JRWc63TKbN40BQUbCOMGn2gHWnVCoNkoU
	mvLKIag/mqWRpMS2LSj6n9ZKLJfdvPm6H9SZpi0fjsc9njzDa/06l3MlzDa8lKg4
	FQauxHQCRCNdVtjbWG/h+G/czDv4mtKnVkgRHXq4gsPHoq0ChRwUawh5U+X+cooP
	VyiBKijFkq0IFT0g6oIqehmZ/6fkmTGsV5Ub3mdJUA6IOiSmJbdbxDRYeBM2Q/kt
	wIqYw+MO+smiNOgbgLhfqj42TquAbkPhlY7DSFAloL9xAw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budad46d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:35:08 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b47b4d296eso4787021cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 12:35:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758742507; x=1759347307;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TNlc6/vrXO2HQmuvBAOIMDlWuUXokEx/akryGttD9H0=;
        b=wFW/O09l5l7LqIq8CFCy0CdUCTDVRdHKZfIJSFgbfjgV6rdgi61bO8/J2xE75nrXh7
         ZqmwKzQHyG7f7xa0N4Ga9590igxTds+2iMAeh9vjqEeYpfbX7X/ORQgTXqgDttbsEFn/
         c/DSiizmFTuPRkg/aUHNXqv4qLj8cjgwCHs15z0lq09x3R1GZJcD1HcQYKeqKjvOXYVZ
         0+z4bfPEFt4qQXbKATA8uYMeNdSdAQti2f/LbCDKqXe1KPHeJRKhq+9tZe+gL8ehUOzC
         AamYEIAo8+9BLw1uw4aDdqNqNSORR+1U94UVwYmneUG4AnGBMJblX14hds/7YHVqIhuL
         dhFw==
X-Forwarded-Encrypted: i=1; AJvYcCUF2kIyTaxoASO1j7MqTEwouidWmmEuMbsKs6Vs0Y4pnjJJweVXaQXlOEF44kCmU4ZEbZBYQ3O1BOUM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+9l0G9KGNoPN+jW670n06jgkCjhyQaFBrFFQ9YMKHXcJ4uJEo
	iq3ksvIAjywfHk5jFTNnbyHuRr+Bqif5sG87u7pCps7ITL3XrUsiosjdHgWXsxlSpX1CsSJeML9
	4qmYKoCMUv6cGY4nO0lWGOnkYmbyn+Q0d6Bpni5iLhxYBxN9rm01p6ut3vMpb56/R
X-Gm-Gg: ASbGncvLCDG7cMklmS/gAHi6E5ldJ//EYxN6/pysyn9xoox6hP0hMSUTXAHteTRdbo3
	4SCjMh2HfNO1AYmki8Mev7DfPJaDYUuiUOmF92A4WZRthOJu1v6h0EElQJHSOzERNdYy3709n7G
	3ZaNGCVK7aUwSI1sQs4CBrSZD6AzxVQXI+rKYP39DzbI+ezXKy33/d9qseaHaSeT07PoFRw+PQP
	Y9Ys9VR+8nWkCMDXqf/cCUGgcslpMJUk41NUNi6f5QC2On5h5JVAQc6pihVRjmeDRGJIYEV8aSY
	AJt6mjOetzTP7+I8H0ig7yhx4/Ow0Xy4kUan9PeS4Yqrwq7I4m7swn8MJArnqYOzImazQskgLRR
	LFIg88VTPNHL9sk4x1p08c6vNBw0rkKBHpr3ffYvldC2MXuolaY0Z
X-Received: by 2002:a05:622a:5c85:b0:4b7:9abe:e1e4 with SMTP id d75a77b69052e-4da4e56e355mr14523471cf.82.1758742507195;
        Wed, 24 Sep 2025 12:35:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvunyYwlMrtpEhJRVotUbghi/QPDvwX9pX5ZtFUlvPG3ImxRAdBB7QbYV0goF20BESh/Jo/A==
X-Received: by 2002:a05:622a:5c85:b0:4b7:9abe:e1e4 with SMTP id d75a77b69052e-4da4e56e355mr14522991cf.82.1758742506719;
        Wed, 24 Sep 2025 12:35:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a8f57156sm45081381fa.37.2025.09.24.12.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 12:35:05 -0700 (PDT)
Date: Wed, 24 Sep 2025 22:35:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
Subject: Re: [PATCH v1] arm64: dts: qcom: lemans-evk: Add firmware-name to
 QUPv3 nodes
Message-ID: <uudcntpurhydj454jemum43a5wizrg3efbqb6h4co3cvyqvn4g@qighmntbkr5s>
References: <20250924035409.3976652-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924035409.3976652-1-viken.dadhaniya@oss.qualcomm.com>
X-Proofpoint-GUID: 4R4yKYKw1dYXDfc_eoOuK9CaSgOdPs2g
X-Proofpoint-ORIG-GUID: 4R4yKYKw1dYXDfc_eoOuK9CaSgOdPs2g
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d447ec cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=B4HikTB3W-0rk1GVoTwA:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfXxoyItbC9St3v
 sResAMRuKnb2xQ7QuxUktqA9ljzbybXN5SAzsp+x/eyfZxZmnArnxuLPSD6bexk1ETgcrZUf3Wc
 UdUBK5OIDfDwwqaMSV9QRRX+QDhrhkDYllwPCMF8T8Qb4wpFAtJm3Ze/rdStShfBOwEmp/3DSFh
 McQQ2JkZErRPoVCbULP+G9VqLFeX98l9mcqPb6aH3R2wX26k/1a9+cQuJcIsyxfefTyaYLb7X5F
 olcmPtFeTXf/OIrmi9AqACCQQIkcTd9S5jubQNgPUmpbXCxeoaaa8IMSUvSnt5s20TnAR9uzT/w
 CHfiiTJ4RX4QWuov1bb4Hz81AAnuXPFI3E6aSBQKAjIicjGBzQpAwXOxAAe+vp6CXMEHw4CDEhe
 LHbfjyIO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_06,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

On Wed, Sep 24, 2025 at 09:24:09AM +0530, Viken Dadhaniya wrote:
> Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
> of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
> ensures secure SE assignment and access control, it limits flexibility for
> developers who need to enable various protocols on different SEs.
> 
> Add the firmware-name property to QUPv3 nodes in the device tree to enable
> firmware loading from the Linux environment. Handle SE assignments and
> access control permissions directly within Linux, removing the dependency
> on TrustZone.
> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

