Return-Path: <devicetree+bounces-224542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 00315BC50E6
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:59:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CB5744E47AF
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF4F260563;
	Wed,  8 Oct 2025 12:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ioGIzFw+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED2D2512C8
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759928348; cv=none; b=dcGm6rM1veIsvYkVVrpHGgAl22Oa1jNTqs4Ujk9MoE+as8S9k3QbKW1ZtT0eWUnPRJclf2fQmrqLzMkrM+bXfxiptmvvzK0u1xDc5CFoCgGSneP1PB41hX/4GdN0u491Nx7b8wOj8DWQdHOo/nzW4UlEk2swAbtekKQ5Vc65WJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759928348; c=relaxed/simple;
	bh=ZJ2kKaRdwvu8VSF4BFdpI2S0DF5Knvpt16rbDWhmgBI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N2tnN5tT3P0jcfTdDEOw9On5xwTxZNAEBm/c9grQ6H0xxW7nY/KfdAxJOqQ+Ieiy8DU4l2bClJItOf4go/4/q+tWCWqnvGKy9fhmax3QJqgGZUcFBToVNvYxuWXYQ9QCzjfNvDI6HT8+OAh45JoDQJQClrxsHHrRtSfupqQMGHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ioGIzFw+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890ntM010197
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:59:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5KgYauIrBbKoQVpQqVgNQnHP
	AyVbPvahAJXvv+HqRxo=; b=ioGIzFw+qKFKX/+2hfVRuFmgaRNZNkrPgT6MZH+L
	hdqhc1x3yaMy/pPG0rPHczcaXUsWual6WvmuANcLpREzA6UNrvsavEqVhxxKrC0s
	oRjncqNyrwelRM72QTTE2nPtQoCBCwOPYs7VteuByx/qgQj8EDZd4LNsA8SFU6wP
	EoLZUvf9NgFw4sE9dR6+1XfqNieztW/GmHCyOcxkLoKftcqJ8iNHQUy+35XDO9BE
	ztbs2gYlhJfkzitOgrkB8Q114iMWJtbzXuSZiDR60TfqclKvayiNRGArAEvnvGfN
	w0tWGXrblfl63idaOVFgVa1dBSYAnv1/2Lo1EqkViAiNHQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junuak2x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:59:06 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d77ae03937so201324891cf.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759928345; x=1760533145;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5KgYauIrBbKoQVpQqVgNQnHPAyVbPvahAJXvv+HqRxo=;
        b=mPPFrOkLFohsYYHmZxi/JqxY7LcoOZHw25xtOtWh6NK+jM0YVgRXMGsk4RJhiG8AXb
         +YcZjY/QrBNI1OarnGJgwwVuvbxtMf+oq4e/meEYirbbeXZICERbwNQQEGkHLcTZIjYQ
         zU23FwQB5uNzSrnhiY14P6G7ECGOCE/MmydNCcK6vKLVwTKiGHNRSdxR6SToHYQlrhGF
         apMiEKoL6GX8Q17sGMoYL+cCmLPMKsXBbGPfzRiORy6Ah1cf9Z3KfYzUVdKiOd5mYhuA
         gG0vH7VnsmDInYMewVyH4o+7ZaObjnKwYuCHYHgZdhZbmCP6a63KRmHOknmWFJQ52CvU
         lKJA==
X-Forwarded-Encrypted: i=1; AJvYcCWtuLaWWx5u2fT6I42N7anIcX1gIToJWPr4JFnqdEtedK/ftgWSJlMFJvCVtYgCX60ygRPOj2x2Aw2+@vger.kernel.org
X-Gm-Message-State: AOJu0YwfZ6FHif4orh44Oz3MmN9qGeAJnDaB2ql9FOq2TqUez1TytMQn
	djkdn9LhlHpzEbRdR84yXpsul9kvLST42FuOGqWF3k5Maj2L2LVesGPs3VUNYPRbpsKdm/8E+FB
	n0XF3et2cuNc3tw3F1YIMXy8cT85IZ/O9Xg7nq7wGI8c0GcOmBkljXgN9zYEEzu/y
X-Gm-Gg: ASbGncu7KsY5Q4OvA2EOvzMFlfToxB8VSpfey4UEkcQKKbQ4EQIMJXVANiPw8TA/Muh
	EN0uTSFFy49GtfQbm7Yp1tig9HB6F/TO7xrKkmxs/2qD9jzsC8f/V1qhQ+OIYDcw2uTA/tqUeqS
	NkBC7TK/GsIGSRiJyVTij6x0xkJDrs7uCjpE0FR3DxCF05QJWDfBFbJBG80U+jKOfYYW2cKhreh
	9ZBPWtvMy9OY7LJfXN3/eaDN2/jc9Crz2TdG3CCUOiZU4e0l/YyRMT31loJ5hT4mad7KGKf0d6i
	rGjI59xlc4cLm1lC9n7mpHCJddFXDhwaj8yCunQmWtsBkCsFeRqtL7kDypUsAYQ8MiCBnXpQiJb
	eZvqStF6jFSqOGh7vEtt7tgX4b55k00LTNpneqUEAzKftZYVkwQSN4JChLA==
X-Received: by 2002:a05:622a:54e:b0:4e4:f812:20f1 with SMTP id d75a77b69052e-4e6ead85777mr42850941cf.55.1759928345231;
        Wed, 08 Oct 2025 05:59:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/kDjU9mNrWpli4fOGqzpllZTDEPDlABYWO/CgAWgxK//4LXGijoGQVXWueGutXf69+EneuA==
X-Received: by 2002:a05:622a:54e:b0:4e4:f812:20f1 with SMTP id d75a77b69052e-4e6ead85777mr42850611cf.55.1759928344801;
        Wed, 08 Oct 2025 05:59:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b011404a5sm7192234e87.55.2025.10.08.05.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 05:59:03 -0700 (PDT)
Date: Wed, 8 Oct 2025 15:59:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        tingguo.cheng@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Update regulator
 settings
Message-ID: <yjqg2xani47xzik4hrxcuaa4wwft4hyvf4dcjf5mosgdrrfxbc@fum65ap3zha4>
References: <20250919-b4-rb3gen2-update-regulator-v1-1-1ea9e70d01cb@oss.qualcomm.com>
 <20cb3921-1344-4e47-864e-ea99759a1dad@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20cb3921-1344-4e47-864e-ea99759a1dad@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: SmX7LlOJt_tMskFuIoOxgwTB_24StgW6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX/sekYOkWV7uO
 qv0QGqbN4COfkNQ/jILgU/Qky5ipCk+Px1UlOhTpWAnyQTJGNfDM+nMpdm84nCvDz2RhdRMNccm
 BzRl0NM2/e1YRVSd2/73MASefxhMoGUsiIYBKJI3qAbsik5DLIA9O3TpV+O3HNkxp7dMBq1nzVF
 OEdOwQrK9NWacV0hy6t+6eu94s3chyU52E8HFsPafitMIcvWJ97SSroWwYh5QQgxt0O4Qoy1055
 DF5V4DtRxE58CAxC1kAXH87szPCoW1iHrkLyHhLmE8LCsfUyER1NPpLFllsYjTbgqrRPKPBH3OQ
 YYzu3Gu+Nfb2KHFdTYVO8QLVqdijCPEIJ/Kmu2ytVeD/J4GRU+B6gBL58mUCKYbrCKOtITYqNCN
 GzFfP9FHGjBAJu17gUrdx6nb7BCZmw==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e6601a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=wPZmJJNrXprZb9I2VNoA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: SmX7LlOJt_tMskFuIoOxgwTB_24StgW6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On Wed, Oct 08, 2025 at 02:44:58PM +0200, Konrad Dybcio wrote:
> On 9/19/25 12:39 PM, Rakesh Kota wrote:
> > Update min/max voltage settings for regulators below to align
> > with the HW specification
> > vreg_l3b_0p504
> > vreg_l6b_1p2
> > vreg_l11b_1p504
> > vreg_l14b_1p08
> > vreg_l16b_1p1
> > vreg_l17b_1p7
> > vreg_s1c_2p19
> > vreg_l8c_1p62
> > vreg_l9c_2p96
> > vreg_l12c_1p65.
> 
> You should rename the regulators that have now changed their
> ranges.. I'm a big fan of stripping the voltage suffix entirely
> fwiw

I think it's typical to follow the net names from the schematics. Which
can include voltages. And which (unfortunately) can be incorrect and
misleading.

> 
> [...]
> 
> >  		vreg_l9c_2p96: ldo9 {
> >  			regulator-name = "vreg_l9c_2p96";
> >  			regulator-min-microvolt = <2700000>;
> > -			regulator-max-microvolt = <35440000>;
> > +			regulator-max-microvolt = <3544000>;
> 
> This change is funny, no one noticed that before..
> 
> Konrad

-- 
With best wishes
Dmitry

