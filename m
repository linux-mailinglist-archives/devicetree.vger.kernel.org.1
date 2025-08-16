Return-Path: <devicetree+bounces-205382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B29B28DE2
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 14:44:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81CDF5E0257
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 12:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A574E2E1C4C;
	Sat, 16 Aug 2025 12:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MWTsFUKl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36527A926
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 12:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755348223; cv=none; b=qUZS3L0nBk9sUKk3YGd8jCY3veDixrQxh9j0DuBNIbq7ET75uwtE/F67EPm9Q/yf5Sw+N7qbckB8v/VPwixX5lm9jJmR3jbNXVw86U7ck25n3z+L8impn6OCKzlKFYIFEWWKKVJpb57Mp9LharPzdjYoEyd7U/gGejku0xKuFRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755348223; c=relaxed/simple;
	bh=6TgFYNP1lEjsHaeBStSQCEGmt5hICkmmUy4Bb7K6JPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NTNFkAkllPFkSLavTwHuAYWqv73JOxWMgFLXMI8krvbhxQD8Cwe0aGkTlt7F2/fP0x3n1/TKzONLvmC8ntcMdzlvcgD1wbu+eDt267yQ+Hb62yQzCuw6M9mBbOxDwxt0+oPQ1Sk2CWpTR6t8ZPBpIejEC6aNvJEN1Ts5h23Pdx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MWTsFUKl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57GAl01I021400
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 12:43:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wnbZRQQ9mMuQHPLOu5zBC74Y
	XEciAewoZhL2vFlk+pI=; b=MWTsFUKlqALOj7OfW8kciknPt6Q2q7IBhyKAx6lR
	8R8UQt+XD2B6i/wqbq9AJAdtA7mk83xLw1EshRKsQLHVorllDv+sna1QGdACfRQZ
	d5ixMq0HD3D6AS04dI3jAXAftt449vEnEA5N/4f0Ws67eZpVoXkUOaGdeuXNLuq2
	99MwRNkWF3mzd/4pi3Colxt/raiuscoKnS1S2FSspkqIv6QnZABBOdvhn2gSemv+
	Wy1NrVf3MKfW0yMRUO61eIb8c8t2+/LqKiHZv3KzQ2eNq0+CX/lNoBlg6yqqvB+9
	vUkrHWiqEcJckb0sa0mTZKb110vnpF7i4PvqItXKwL+stA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jfbn8vq5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 12:43:41 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a88dbf013so62933076d6.0
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 05:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755348220; x=1755953020;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wnbZRQQ9mMuQHPLOu5zBC74YXEciAewoZhL2vFlk+pI=;
        b=tBhx9Jw66UhEZ0ZVoAb8pUAUjzqCyVBp3gJmaVh0MpF0gcEYUXEHQKsrIPagpv5Gr9
         FuQ3qiXAMtljPWg3BmxM60EGSt2cNr8FrdwXQO7eTJ9sjpotQ3FoxLXvD5aQ/PaJ9s1s
         oF7Pt4hhz+yZJybUZ/oJY8nrY3oSHnAnxZniXVM1m4Yz16ghU07WrmM3nHp1D9/z45qY
         s93FfgIvQhX/KSNmLDB4U2x/dCLlftkQNlRmeKurL0QOxvW836ZqaEjQ2lq4CARSKBo9
         mHFJGs6CufwM3gN7Q0Pb5RE5AcqT04Jbd75puMgKvLLCNYiByacxKeQjseWHD5pYlaCq
         Gb7w==
X-Forwarded-Encrypted: i=1; AJvYcCVvYHCYtnaJpLvwYI+WGDFnjusUEdhi1vGwjf3SgNo1hfaCErl+2YO0mhNXjkDwaPq7dO9RHnBVef57@vger.kernel.org
X-Gm-Message-State: AOJu0YyeRaOS0wstdxp+HRjb0XfqinUpcaubxas7/nsgzksm7WUFz581
	iUpTZukVRX8LfLB73NNuAWOR78D3JZ4l+abGXHZaXhP4zd629vquoLgfnxjv2HXL2vOvUsAij4M
	9OHxN7fNdCHRHtYHbJnbb5aCjQBlC3VnyX0TRyfZzSH4d9DlP0Pf63qFerqlE/vcY
X-Gm-Gg: ASbGnctHSjIt76jo+LV/uUFLay7yBg6Z+BXD8gFE+nfxOKvnzl0Rl2K1rKNjR5U9GyG
	8IsAdDDGXB95sr3MT5rGWx/mHiqZpJjiSWPrNqQJfHo3AkoMKibFV0RjNotX0jYJNjA015oLLnx
	a93PuxkPp4xvxslygukZYBB32g6MLtT5ZG3eZzz1JBrPAzt57BWOTSWGzo3ZRsEAeqSGGBPAsQr
	6AGN0LTCF0oZZufClorxiO4qGB1AXThPKNdSa5TeVPdEE0HF2YfraNZbyUEsroCBlviiXvSBxwr
	i1otJvRn31Yi40/mu9u3ge9LXdY/O0zI/gN5WQNN9y/7M3Ar490svRskx96JaHbT0mlj699DoSO
	W/j0wDziuSrF8we7PMca+CAQBzg0quoT3JEFSOZ4gFSzgzfsUHfpM
X-Received: by 2002:a05:6214:5299:b0:709:b6d0:946e with SMTP id 6a1803df08f44-70ba7be61fdmr64078926d6.27.1755348220243;
        Sat, 16 Aug 2025 05:43:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2mxaGHMBAq3flMOYhfAbZP1Br65//td+kAgSqcW5C7HRLHSAZm5covXfrQFeeIoI2toC0TA==
X-Received: by 2002:a05:6214:5299:b0:709:b6d0:946e with SMTP id 6a1803df08f44-70ba7be61fdmr64078656d6.27.1755348219799;
        Sat, 16 Aug 2025 05:43:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a625b59sm9446991fa.59.2025.08.16.05.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 05:43:39 -0700 (PDT)
Date: Sat, 16 Aug 2025 15:43:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] interconnect: qcom: add glymur interconnect
 provider driver
Message-ID: <ncay3hc6jqabm2r3wflzxza2g4buc6tbyc77tl4nfjctjmbxal@22e66ed7aswm>
References: <20250814-glymur-icc-v2-0-596cca6b6015@oss.qualcomm.com>
 <20250814-glymur-icc-v2-3-596cca6b6015@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814-glymur-icc-v2-3-596cca6b6015@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAwMSBTYWx0ZWRfXyJEwhOTb0M4G
 mQVKOC6qlGVEHD0EyhH22yzMseplj5MGF0U+6E9cReT4oqkaj35v9vV+CFwtuNcw8DKPVxS5Rfy
 m+Y6/kWBV/LOe2vcAIYNm/urZRczfjIulZDocLF66VxnVBU+q1AWJO1Gsrvj9yOifft3DboVLU7
 +U/sH/y3TpOw8PoYyKa2a4I7g4UocEnp6fSGqvxF85ewU9YdBz+rGeD2rSSqRsu6FR3bJNTr88J
 Z2arstws19EeCoO/c+EsBkEoxI27A9FYnSxdJiJ8g5GAsz2QjmN7emhuRyqKMk6s5qXGI9s34t8
 h+cWi+hE6LyyXVaNxxD9q2jz5GgqvZ97OjfamUidaI8TiQYze101O2BpjzpjfXiP8JtzhQIo8bp
 bU6RN8GW
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=68a07cfd cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=88ugLqT0w4BtEkFF6HEA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: wWk6gH4lTJqA6OaP5-NYSB9hYcBTKwy7
X-Proofpoint-ORIG-GUID: wWk6gH4lTJqA6OaP5-NYSB9hYcBTKwy7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 malwarescore=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160001

On Thu, Aug 14, 2025 at 02:54:21PM +0000, Raviteja Laggyshetty wrote:
> Add driver for the Qualcomm interconnect buses found in glymur
> based platforms. The topology consists of several NoCs that are
> controlled by a remote processor that collects the aggregated
> bandwidth for each master-slave pairs.
> 
> Co-developed-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/Kconfig  |    9 +
>  drivers/interconnect/qcom/Makefile |    2 +
>  drivers/interconnect/qcom/glymur.c | 2543 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 2554 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

