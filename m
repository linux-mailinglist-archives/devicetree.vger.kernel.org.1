Return-Path: <devicetree+bounces-202892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0A3B1F2DA
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2CAEE7A60D5
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 07:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199D327C875;
	Sat,  9 Aug 2025 07:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bRNFMl9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918F621FF36
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 07:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754724616; cv=none; b=qBgiqrp1NLwI5rfhybXks73b5ePE9XWI5zeQgiGNx2hYPyErggZSF242yT9D+nua5BHYxfeXBAp9zFuc0Nl4HQSmEYbMbvm9Acek6yKH2aND6vSuYo0lHc5bSo2/dTghbEwD85xq+YhBox/DNeZ0nL0bfS1JzgqJXomtUtiL3h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754724616; c=relaxed/simple;
	bh=l8z2N3VCZM6RQchSw+3RLf4E55Fhb8eHOiRzLOSfIUE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kEcFjdwr3nWhwrdLf5h84gJ9WVDlLlXZoVm74lhmINFj6WrZZY48c/bdJ1Tw09pLWAgYyHst82HoJwcoarqIjGKitAEInLYhS0hxh/4pK9VMe9EICMPWfuphqIGVnpZplgVZyoSSUELbpjZ1eAD2FmO6A5UaLrG7BaaPRJSFvt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bRNFMl9k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793UJFG005462
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 07:30:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6cdLO8eSlr9RJYCTskzMuxsJ
	U7OJLCh7xxZyeqOV+Z8=; b=bRNFMl9k01cPZ27SnLt5YRi+YNY8iZx2Se8sUBfr
	wkdGbCG5I/c7d0fecxzy1YDdtmf+DSwdfngbzNbhspvgYn0ZNPTX3L91KwEDJnTp
	UoWPDv1/CbWaNsndJoF1V409sON0wUz/g5xk46o0jIB7AICMPIOAglezeszcjO7p
	fOhMZIgqUQfzDNuztLwhzG2UOuk/yW3DfmE24ft6+62CZ3rSD+Pt/7eyE14NI46L
	Zgn572YM7oVKOsyTrrXHKhA3TNVjGJKU1VI5rVT9w+ZRDgbtj/XqW7m9gK6zyUAk
	ClZnZPvEXUooZeSFfN957vlS28mPZLSqQHsAFYlkIRR/ZQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxdur8wk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 07:30:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b08898f776so67285421cf.1
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 00:30:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754724613; x=1755329413;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6cdLO8eSlr9RJYCTskzMuxsJU7OJLCh7xxZyeqOV+Z8=;
        b=LNdyTsnHXdaGXo4UNywKXkhN5D9NVLKW4KDUWu/naqJz3rJmttwhPCPXIT7Coso/DW
         xHquX94WYcKMY2epJeAXinOtspp2ubGz4tNYz0fBE2vORO1Fl4VA+EsmvgkTWf/PhR88
         M4SdII5nAnH6qZIDlxyTATtqi0VXjPpqe4Jg6pMqtR9m6WPAhAxBtZ2mjuWv03g1rEM2
         /DWycH18tVUAtVpK+zaLRkD0p/WPIyweD4nmFniQGIdbLiKr6crZNfvRtlOogGyCKolH
         EUKsoOOsR6Mn7qw70x9zXY8euwKGqEGXsVAs8TzolgzPzvugvxbWtuWqNzvStenDtK8q
         HyjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJgZG5Mo6IohPdLVDO8n02H8ml8WmQIKIAsbIWirDrWklJMgVMuES/SvVRJkTkk70jc72jhc92prE6@vger.kernel.org
X-Gm-Message-State: AOJu0YxfW+nwuyIJMbZaI6QRd1rwf3coysYVZNiFmvz2Ra5Qp3D5ZRCK
	thYILpg+lgGHIdqdGP6SDPJh3AdaY2eZ+VhQlXGtpWq5R9YKbPW9NYDxeovGcJjFsZ3K+veeX9Q
	V1nO7AB3DpJOY5nqwGsTti00vjXwyv79s46ipm/t1x0ICnZRfSSfvDGiq5iXvqgEX
X-Gm-Gg: ASbGncu9fdXQxlGwArGLsJare9vOF+HCrXc2bf9D/oHnIPOrRQqZi47nCe3OJr2qzft
	hOiWB3pPV6xuYVZeiNDLdi2rdpbtY1jyESdlLsmdE9wbqhGZqgYyAGPe++jp5SIMY8Vjnf6sQYI
	85/HugYp9Jzy9ow3EAOGvyZcVAqaVdahN3hwTpI//8D84YCkfPagzaGDDhI8a2/BsOHE76O3PNs
	SYdgmyaZPS4uhx9drwOR0SjPFVYIAf6/q5NRKJKad+62woGAIAH7OhU2RyJLnhmGCj6Xhlup0Yl
	rHJlQBIymxtLgNohGH34NP2XGOmIQmM/nzkEu0dRP4XRZNLVG8v94O/b3vYakLqt4woCCbfmqp+
	LUDMyIZObMdKhjgpiA2KSF4bWO/IYwsK6H0ryEKAXSuz6jfSm7/J8
X-Received: by 2002:a05:622a:258b:b0:4b0:65cc:f64f with SMTP id d75a77b69052e-4b0aed7c945mr88513421cf.54.1754724612729;
        Sat, 09 Aug 2025 00:30:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHI6V+Z5+t3pF8WT1G/7aQiYdC2lbd+mLRd22M3GqlN6tzB0CFSCGVQ963LVGJWMyblECj+jQ==
X-Received: by 2002:a05:622a:258b:b0:4b0:65cc:f64f with SMTP id d75a77b69052e-4b0aed7c945mr88513091cf.54.1754724612236;
        Sat, 09 Aug 2025 00:30:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-332382a9483sm30812911fa.23.2025.08.09.00.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 00:30:11 -0700 (PDT)
Date: Sat, 9 Aug 2025 10:30:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
Message-ID: <5nsglhsnqdx4l44r36zmxumcpbbwhns4432hm3lvttsgyjaknb@feobdhpzzo65>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806154340.20122-5-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=6896f905 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=eDCZef9bSGwXM37ZZ4wA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: R2WfdRUYKrqbEDeC8p7Ggjheo9pyX5yC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfX4QxJT5bQh1d5
 OqdoEnPuYTqOJnOrg3qHKxenAZSzCpmS+MfsjmuIdyoX8AO5/Ap7vTAaml2+DmLQc0DHjMN9/Jj
 KRlVDS4pFbDGQZyU6zMAiU3SmTrXc4O0SXOMz6VDKNSx3cptseXOAgUOkPgfbFOvfmYF5Yeqj44
 072urGBNioCBY3VOGBGnuQ8ZvJISRuPykmpiGXJcvXwTucfuH4L6UxlODDDvZ+0qLyhwlUCV8Bs
 J4P3G4OXL6Ebhd/CqCKcib7DfkpssQEEaiadKf/ZMqMsfm1769U5OTx66/baHhX8MiLD1j1iOjO
 vweVZ+49IY+vBV5vPuxsqxiAoy8Hx9YSEWdoJuXMY19sQ5S4AliIWc1rpCJASfmOJF61ls2/VCZ
 //iMEI6M
X-Proofpoint-GUID: R2WfdRUYKrqbEDeC8p7Ggjheo9pyX5yC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025

On Wed, Aug 06, 2025 at 09:13:40PM +0530, Nitin Rawat wrote:
> Add support in QMP PHY driver to read optional vdda-phy-max-microamp
> and vdda-pll-max-microamp properties from the device tree.
> 
> These properties define the expected maximum current (in microamps) for
> each supply. The driver uses this information to configure regulators
> more accurately and ensure they operate in the correct mode based on
> client load requirements.

What defines those load values? Are they actually dependent on the
platform? On the SoC? On the board design? On the UFS gear?

> 
> If the property is not present, the driver defaults load to
> `QMP_VREG_UNUSED`.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
> 

-- 
With best wishes
Dmitry

