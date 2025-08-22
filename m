Return-Path: <devicetree+bounces-208360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 82645B32226
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 20:13:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38D8B1D285AD
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 18:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B7462BE058;
	Fri, 22 Aug 2025 18:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="okVGphik"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692AB28CF5F
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755886415; cv=none; b=aE6JEwKQoDWt7DVC5TUF/AEmioJcRtiC2DWtsY7vqrPT2DZR4hf9gFldiNNMNW3oc39BO+bP7ryyKy8fMunQQBRjDQy8x4BUiQY7sPlu7sEGimiYnY++Lhz3M4mvAmsLBdKRPUv41grUn+31fU/B9kLmlnCJJ+cTR0LJ7YhKvMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755886415; c=relaxed/simple;
	bh=OsSWM5rafowFUmYpNuV9JqMJVXfG7U6c2e6naLYaZ7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sHmQfzn1YHOPpM6it/QBfwtZNi5pdDK78YmkPyaFhEVgAE8GeBOi+IqA4wIwfGu0j0Zc6Uyntd6WnRK1wdSaWZnlHKJaj6Mdw5wXy1i68xXN5Yls1d/sgk/RwqMj2JxH+rBpFAtUvmrLRqlDvPtDpBt1aJVyymSh/ZMchkRI+XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=okVGphik; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57MHVCKv032035
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:13:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dSO+6ftuDsb8o5P/S7crWg+c
	tsTiUDkNMjVkpDX34wo=; b=okVGphikPj7NyIg2pKsu8klAXo8PB5IQDnuSM7kh
	HvPvnLXHjcd48MnHikgSXdd1KttVCUhl0VU7YRm2yHlUp1Oqc1p4RRBxh/KtlCM4
	feUMxx4mnnuCy3RkXkbZSQyN+lMg2sJMNzlCv8MC8ctaVcqrHPzWG6JUvZIlYkgX
	8U6pSTrrAaBPZOvOZkzsqgUH5H10RaOpNEmLND5CkZ2Bw6eHzBenXZxrogcz+xj/
	uUs1Fn55cAK4HNcLzP0jFPn6KJYjTKNNX0kBY8YQuDItjZaiTxgvpFps3ImkYWd4
	8bqjG2pq7eFmv05rSuVuo0pf5d8Tep4jUBITagqi+0XYfg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48pw10g4dy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:13:32 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109be41a1so95694231cf.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:13:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755886411; x=1756491211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dSO+6ftuDsb8o5P/S7crWg+ctsTiUDkNMjVkpDX34wo=;
        b=MAcLnhj+b5gq2S07jDcAC84om3pTGhSyB8VQeVHLfCnAP54tj5WMzV/mNTSWabARP5
         0JPRZ32uKOFPygEtteVUd77PlTqXEUspq05EVZDtm7+WyeHG7w9tbiXqe5mGUO+Z53JW
         O+cuzMoT/qZMx9l/hA0HetXEytl6nCm8b4qP8n8uMRJli445AIOJ1nGcfHivI/dZQ02U
         HG60tjfe6M0s3Q2rVOQIAj+GjD0PT5R5guCPU9PhCkWKW7q5SUwXxh6nNrSr2xhKNUkz
         88FTHe74QRB9MWeZfYA3OwOeVCnXwHuHc3ZiRCiNondl+sL82kJsg1Omscs5kladZ3NX
         EulA==
X-Forwarded-Encrypted: i=1; AJvYcCWTPua01fbeKjsgFbgBOQWEUFfeQvtCoy9IppciVpzzBCfG8ppN++RS80zFTGj77UkK+WZptCeFGAys@vger.kernel.org
X-Gm-Message-State: AOJu0YwPDPnQsVUxI/Gg/87j8S620aOMLbnu8jgrRHRRaWm8w+o37un4
	Kv+OwvvAd6gPP1W7i9NWJ5P0bMx43hqeVdOlHuJnVNajPm/TmbO3YT5APwqg9q4KU33mLfwjjYx
	8DGJNaX2ZyCDUzEUwzzNrorCmHnFJiI4Z//FIEwp+E/ldoxCI2YTeCWv+jLeYNNeF
X-Gm-Gg: ASbGncuIPjg3oMDY2jOt3tdjhTMgOCOXmbVzNm82dQva7CEyNVn7rdNmICxqtHe5DRD
	nJFxWboNsARMTMjV0F+6F8TgjkKDEj6aBK53cnFfGVlfZ+rCxbLb15d09BWXwqrANDOSq397kYp
	aab6+XogqGrWuUnFLorMqUzLgKuzAa0ji4vngFoq5ov2JxGC5H2SJI534R/CceI30X4sy0gD0GY
	CQanyvzpevcLGaJvmglptzIkjz+QC1jnHGV3myDVHBdy3CBjl5Nd0BIagTNa5bv82fjQFTJNbaV
	0oSOL0BgfYCt9EF+1zV2vtzfahoFe9hpvHGgsb6FRIYCdssgRdfdAZdvlVMbJe6ETG1Hsho5C73
	4K/Ejx1T5qbqgSikmAyrhrGvsIe2tly9T25pbuCUxRxBM5nsr+zAn
X-Received: by 2002:ac8:584d:0:b0:4b2:83d8:4e19 with SMTP id d75a77b69052e-4b2aab2f2b4mr47540091cf.67.1755886411337;
        Fri, 22 Aug 2025 11:13:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgl6Rb3LPZBdGK6f5eEI93UymhJjbrLRHxUSpKaWOlHOwLwB0Hqe7KQvriMM2BunTVfmUN0w==
X-Received: by 2002:ac8:584d:0:b0:4b2:83d8:4e19 with SMTP id d75a77b69052e-4b2aab2f2b4mr47539671cf.67.1755886410756;
        Fri, 22 Aug 2025 11:13:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e23df6csm691821fa.21.2025.08.22.11.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 11:13:30 -0700 (PDT)
Date: Fri, 22 Aug 2025 21:13:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/9] arm64: dts: qcom: Set up 4-lane DP for sm8[56]50
 & x1e boards
Message-ID: <yf5bw6hesd2vpvum77zprr27oyedaglhafumx5netfqzxcy3cg@2r3l5w3ddns7>
References: <20250822-topic-x1e80100-4lanes-v3-0-5363acad9e32@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822-topic-x1e80100-4lanes-v3-0-5363acad9e32@linaro.org>
X-Proofpoint-ORIG-GUID: VqqjKNooulphOEsa9ci3ZEOdPK12N3hA
X-Proofpoint-GUID: VqqjKNooulphOEsa9ci3ZEOdPK12N3hA
X-Authority-Analysis: v=2.4 cv=VuwjA/2n c=1 sm=1 tr=0 ts=68a8b34c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=i8zRFognpsdf2JTOJ_QA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIyMDE2MCBTYWx0ZWRfXykMwAqyBMceH
 np+xkOL5JGi0d057vWECAOYMGICdY++a3vcWqCm/iPLYJvZ2kEY/LwfUVweXlUSCudiVTHJ45p9
 blIXZSsD6PbeVNseaI87fJHBgMqOWJtfRU8DlXnfiRpEfaF1RYLwC4d5BkZEVXl/6VPtbCWHCnp
 1NGr2T0JFe5HmNCMmtthTjHG+iDrFcaJMztGM54prRVE73STlrLn9IbfkykIIsSbP+Wd9/Q8ZrQ
 g1PJt7IBIxQSsIIf3PGqvAOjxkloeKjD980Pj2T5GzBxWJ3/oXHdOg5e8UDnkDdeqlZsh+3IA1Z
 A8u2lIzQinNDfUqWs6GrEE4gKzdK+EWgY7riDhprktUNXP1SpnVQmxM7ii7txrQI/o+9TyBX3Od
 vFsfhuVF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508220160

On Fri, Aug 22, 2025 at 05:56:48PM +0200, Neil Armstrong wrote:
> Now the 4lanes support in the QMP Combo PHY has been merged in [1],
> add the required plumbing in DT.
> 
> [1] https://lore.kernel.org/all/20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com/
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Changes in v3:
> - Move the data-lanes in the SoC dtsi, and update it there
> - Link to v2: https://lore.kernel.org/r/20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org
> 
> Changes in v2:
> - Add missing x1-asus-zenbook-a14 & x1-crd
> - Link to v1: https://lore.kernel.org/r/20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org

For the series:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Thanks!

-- 
With best wishes
Dmitry

