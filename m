Return-Path: <devicetree+bounces-159054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0676A6965D
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 18:26:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B41217AA2E
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 17:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61CC21E9912;
	Wed, 19 Mar 2025 17:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i4IKUdhV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75DC1537A7
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 17:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742405162; cv=none; b=Lip6MvSG4yyWO02WTQvMA9EK06wrXLdpXlN/EDaPO1g5kupquDl7i2DR+6enc/CxWqCehD1RUWlcJ2OJpoQd3Or58RKNt82V669K7ONpJD1WWhQmj5lm4bWfaHJQcxkI8fuSA4Cj/MJb3QrRnISGtnXMdvs680xCzmMZQsNNDBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742405162; c=relaxed/simple;
	bh=xWlwplV+ekInbFsUxRgTauEuEgk6dMw8nIVG3sysQ9k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YqdTO6FK2pChs5frv6zS4AYIgYb7fHMxvTNr+b0Vbhn+hSRJDcY1KsWTFJmoquersUEkj7bS9wf7fibOa+aNKj2dyVHBU5OSjT/vIX1ctnrxYflKusaoRvWiR9pzA3VKTLh9PPsT3fDOIoo11bycf7MbUrT+aoFt4SdUgGOMwk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i4IKUdhV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52JE73Kg009922
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 17:25:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wxTkGbnrj2G1AAERlXkdXjST
	vimabqMigiyhzGpcsNs=; b=i4IKUdhVb25iQqlHQyI4tVrN6igUBit9UBocggcP
	1a7AnHYWIcOPTbuHdMANqFkBy1Por4VMEVmLcrde8N34D3RJobN90CmEN8+gW5qP
	xBpyCCpDTlVWC8GLejse8Ih33ueswRS7ey2dFimN+w9Un2lF/YpDikChWoaC6iFP
	exD7cZEBY0RsiabXOldUuB9sw1sF9xxPFvyny0VSDnej4HtkHjSElpkrD3LSTyhs
	AGARsGvBYXtbVvqkBbrCyVTB67rTjSOMCBNzTo8qNVk+Kj2pV5ZmaHPLFQ56DPwZ
	hhLrEHVjyE4XSbr1GSMqWEEJaYUzaw7nOGn3vo2BnqDBMA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdvxkckx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 17:25:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8ed78717eso125069006d6.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:25:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742405158; x=1743009958;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wxTkGbnrj2G1AAERlXkdXjSTvimabqMigiyhzGpcsNs=;
        b=e9+ujvANUM3ko8PLf8eTk9zOuFjHXJvnmnUQOkmPIA7ZmZI/RdbQRGqc4uOYliahZr
         o1Kydv3R5/uMc2DazmEUDQXzeVtgUDHewKJ022ngnCnwUnnjwW0VBWJ2Rv3kTuw/CRN+
         pgXdgZG6Y7zVr4mMo2J/xNlterMyTvaaGGGuNq8pvMZM3hypmh+1WJumGB8dOk1qK4hU
         ZhsVs4v9WMOzPTCYdx2693FHZcQ97tzoA2CTfTY04hVWtoBih0jwBQBjDv3D7Rw0AasR
         q12L4S7X4LJk1bG4xH5m+olEQSBCIwhLRLvje1a5OPsmIvP4G42UVo+SKcc01+mPsm8O
         MDJg==
X-Forwarded-Encrypted: i=1; AJvYcCWPW4qVsxKETYF4hTjhhbbxhKArBXVt9uJeaQHzeD2eZccAZn6tiVeWz8GciL/1AFPx9XeVJcc8Od95@vger.kernel.org
X-Gm-Message-State: AOJu0YyUXjRC/FlBvzfTv9KOQCR9nXurV7iyk0g+3S/7ihTiEZQrLkfR
	SWBxjjHNaS3d/9gloGqzRrbPeizMeO++9C3k8WL6fqRlW6WQQrO9sB6G1HQMyybhH47NGnEwpkj
	uFZSpst9dJ+jfJDT97VJnPzejhug80mnOjkL/5HC15lJUtQpKULaqCo36xRjk
X-Gm-Gg: ASbGncuv+uXPcKiDPXlO3fVQZ9WeI1IvHiM0vwee9K7yvHOcD1hJGf4s66+fPPXFh93
	4V/IAigYO2P26WwJ8OIPlAXcCjoWyqaaRCXdbFaKQEED6L1laUIG+lnTSNxbdSeRt1tgiu9mOPU
	tgRJm9hS6FXcJc2iIinVCOeI2kH8gZtJG50ut/3A2tM0oYi45ePgJdzNv66USybnUNiBgNo5EXb
	gX02nHri6TfGp2m6Io/akh07N9wEYhPhXqb96spiZsMuZiulPqCauOrsr4kjAbvrQ1g8ywsACGw
	FGtP/HBj8INM591z5RpEDMMryDh+83H907I3F6vlJ5pgZ/rSUnk13r1uq/QwbYQEo66O13hqtFV
	b6/M=
X-Received: by 2002:a05:6214:528b:b0:6e8:e8dd:3088 with SMTP id 6a1803df08f44-6eb29446070mr53033466d6.37.1742405158321;
        Wed, 19 Mar 2025 10:25:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcStmY6qruGD6vBp50x0OySWHCpSi6v3rL7uOiQJh632CHkOyH81K+9C72wFo4Ponx60tgYg==
X-Received: by 2002:a05:6214:528b:b0:6e8:e8dd:3088 with SMTP id 6a1803df08f44-6eb29446070mr53033006d6.37.1742405157828;
        Wed, 19 Mar 2025 10:25:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba888039sm2002361e87.203.2025.03.19.10.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 10:25:57 -0700 (PDT)
Date: Wed, 19 Mar 2025 19:25:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sc7180: Add specific APPS RSC
 compatible
Message-ID: <rg377etwxv3yupth3acak4ycthahi7sennm54sbah55yqj2qdk@vip4xxkbsp7n>
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-2-cb36882ea9cc@oss.qualcomm.com>
 <l4vd2xmrowmmtefieb4cbirq6ntkvnwbhtpxcyzwdeok2vgtt7@zqgqndumgecv>
 <881655b5-30c0-42f3-863f-5b6606a3e2cd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <881655b5-30c0-42f3-863f-5b6606a3e2cd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SKhCVPvH c=1 sm=1 tr=0 ts=67dafe27 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=p9JctohuHJosm6c4YDkA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: mDLVMBEzHC-pP9wTAzY_HIrrQ2Kv_usd
X-Proofpoint-GUID: mDLVMBEzHC-pP9wTAzY_HIrrQ2Kv_usd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_06,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=913 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503190117

On Wed, Mar 19, 2025 at 03:14:42PM +0100, Konrad Dybcio wrote:
> On 3/18/25 10:30 PM, Dmitry Baryshkov wrote:
> > On Tue, Mar 18, 2025 at 07:35:15PM +0100, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> SC7180 comes in a couple firmware flavors, some of which don't support
> >> PSCI in OSI mode. That prevents the power domain exepcted by the RSC
> >> node from providing useful information on system power collapse.
> > 
> > Is this behaviour specific to SC7180 or only to ChromeBooks? For example
> > TCL Book 14 Go or ECS Liva QC710, would they also use this compat?
> 
> The hardware and firmware representation of the RSC is identical, but
> I wanted to alter the bindings required properties based on the specific
> possibly-chrome platforms.

Should we instead have a separate compatible (?) for ChromeOS platforms
only?

-- 
With best wishes
Dmitry

