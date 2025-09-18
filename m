Return-Path: <devicetree+bounces-218619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7ABB82664
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 02:42:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDDB17B0AF3
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 00:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6739D1A9F96;
	Thu, 18 Sep 2025 00:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H+X0HKaU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F31A4315A
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 00:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758156142; cv=none; b=Ch66Sz3OeJaI1VfPyZLRgKUUTH9387VA256Up0dBAGnVKDiDlSEgSG+VNvuhxZkD0DVh1G7nOJ6RqdByzv0Pe0rL3F2A/kChtgwqVZccm0JQ6tMFC3jOoMc1fU8J1rPBeeGXUfBgNwIwOxoqzt9scucnNaoouVbqyTjVILbjgiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758156142; c=relaxed/simple;
	bh=YdV7COGGOMPVhecWOYestYtdTpREWML0WlMUyB0sjho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=maJjp065/qpewZN1KTkls6d3HFA4JZJEZ4RQF1BR/pzGCDwfZDlhuaOI2O23z2g88LVnGI2lcq/QSMrnWHggY+lHly30BT2qJFs7kYJeomKbRd/YS1oOw59HWYp9yHLzcm7BprAeEV2ajUv8zvk52f1olnIzanLwz/rO1S+lX+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H+X0HKaU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HGlp7F021420
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 00:42:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dCK4ulC9j0Q9Hz2Zw/kTODjQ
	UCKzpgh5o1LvEZMTkgM=; b=H+X0HKaUZ0fry8T8Xiovzg9wDeElpLs9GOcBLV5t
	qxOooFAVASn+EPabz15cRnma6uRbsPXMXmiy7/d6gUNnumgILO5hXQ2DSkDWLS6f
	Yj4eEC+n87tTCkkuyoffC0MTsbBsUgi++qSi/gUv4AV5/Akd27HaO7CvwrPpgyt1
	rs+Sm15iaVwxhn8FpluQjPIoQVbEz7gFHaIAhuyOTDfz1oXQJrLcVRF1zOs3uK4e
	IoD0YZCt7mmUFkhqTvaKPTDh99I8Btm1mQM6qZ8lFN9Dag0SQNdOD28dnPvhkmB2
	n6lsLeCtc3vprB9IPTXtfhsKtpTXrp2eJhxR0CBjGpt2HA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy5c9sq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 00:42:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5e9b60ce6so18021601cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 17:42:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758156137; x=1758760937;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dCK4ulC9j0Q9Hz2Zw/kTODjQUCKzpgh5o1LvEZMTkgM=;
        b=oprpnWKdBxix/ALgU9ac93RYDEis2zVIUzslgP1wkr0BTJdSPIf9IGkybFmFYggwDb
         pV4BOEEHtBK7noXczT9qn1/dXnGmwo6u7+wY6jXsmek+1qh6DwYRXs+pdd0KP6c81Upu
         Ehu+SHUbfK+s0p6JMTFR8X2VTvDe9BzMrXVtc6axAw/wGjQbsJh0Tz+IbLGEGECK1GsD
         yZk5RABTqxSpHodgEhaIxUHFjuUjcW5K4oSfsSRNxZtC+a8x8CwqnpSYTqB9PsfT1E33
         UsZ3wKaKG595cGcWJ6Z1QY5vA3ZTGt9aw36jsPyMFDLrN71r147EUcO9AqXK6z0XjPTr
         C2yg==
X-Forwarded-Encrypted: i=1; AJvYcCUkAHBZG1/3hfh8JDQxI4myFVE1Elg0cvgfbs+OclabBWsY7g9dabS4mMqXC3JMuQY5w+rBwAibnZas@vger.kernel.org
X-Gm-Message-State: AOJu0YzXqksg3Vwtbe/OCTUuw429CIpH1OqzfwtvcXYFbi3fpaKJxxXl
	Y16C0h56pll8WBxQI4d3JhkzXr84jn1rfVBZjy9YJXkx/dZl7PQOIcJKDu1b8P7ov4iyJNrUHs3
	FIajWWdTF7/dYVOceFW458sDXzg+0mvKaEHyiEIvjEKTxa9iyl0CQCov94RIwAiKk
X-Gm-Gg: ASbGncvKiJDv7AjeN3jVw1DyRsSG1Tw2Gy6LusPJAejkUzF5Z/RUMoEeob6Cbc3eCY2
	bXB8zz5BXs404aqvwNqxlHAswSFXUYwJ9tYokMiwd2MU/+m+EeuCmxFiTdwi0KuFNxovrmP3lGh
	efwacSNE1no+2cZdS2KrgJG5moEAGw9JXVqqJN5X4QglV83KLN0OmitjJ78F8WvSI5jAfeeqRH/
	v0Q1Ytx5ffliXvSj+TaZRZzRKWR+ywP2zQz6Wyopq7k2nBi5O++nhVkaGDmxZ7O4VujzVKdq5wN
	n/FbfA+HB9c5lV3sDgpHmEqKUZNnJGbLIMjEGUnYaXzWgVC/igNZjP98yIpNpi3xoVG7zioIBeY
	FDkJbyS+YL2DBuvlUASyp48nZuS02vW/cEHfIQ0tggb/u8TdC5vrW
X-Received: by 2002:a05:622a:94:b0:4b5:e8c2:78d2 with SMTP id d75a77b69052e-4ba6c1e5f1bmr49561281cf.62.1758156136873;
        Wed, 17 Sep 2025 17:42:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmnlrSOZ+/9rFvAyw/YJlavLLxbcgRskATJaNJjDC/kpN3Zr+Z1o9qxPxwvKeazhC76AmPFw==
X-Received: by 2002:a05:622a:94:b0:4b5:e8c2:78d2 with SMTP id d75a77b69052e-4ba6c1e5f1bmr49561171cf.62.1758156136473;
        Wed, 17 Sep 2025 17:42:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a65072c9sm251143e87.41.2025.09.17.17.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 17:42:15 -0700 (PDT)
Date: Thu, 18 Sep 2025 03:42:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qrb2210-rb1: Add PM8008 node
Message-ID: <a3fkaue7vbh36gtvofkuucop23spupytjwtsuh4yq6k2rznf4o@fyfw6mi6lqol>
References: <20250917163534.832523-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917163534.832523-1-loic.poulain@oss.qualcomm.com>
X-Proofpoint-GUID: ROPMdEKzn099qcXtfn8w7cd3jYJ-6ukw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXzVL25xgrLkXj
 BN4AjMbEfl2MsgqSrE+jzb65FXS9aLAeZyyxR2GGgo0xvYtYDLX3zl5FLgS/szgnRVJoBF2CsUB
 mjJrXVpsfoxuXLAAIY+s8ciTSi8vr3h5NRwLWHbAvsCeF9zQpiNjhyJDvZ8J8u4xIlAevuABEmP
 l3DphNQ/dbk27aTd/0JAJU1W/mjjJE2//xG/oQMjvbcGVfObYFk16fkRabTe8s1W3dkzrDWvgRZ
 oj3iqJw1KDJuZJU3LNFgjFYose72GTtR7fBCWUVq5Lsz4mgOvUGcBxm8AVqTB6h0T3Eq5T+9Asv
 Dlt+ZCAxtAy7JnkO/bWx3HHQjSlzpXsSKpByZU/BAr/5VCAW8rBJ9NSMFj8PmzOnRUoReTzcPoq
 Xs45rs+P
X-Authority-Analysis: v=2.4 cv=Y+f4sgeN c=1 sm=1 tr=0 ts=68cb5569 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=F2uzNt_Jvis__oCUEkcA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: ROPMdEKzn099qcXtfn8w7cd3jYJ-6ukw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

On Wed, Sep 17, 2025 at 06:35:33PM +0200, Loic Poulain wrote:
> The PM8008 device is a dedicated camera PMIC integrating all the necessary
> camera power management features.


According to qcom_socinfo it's not present on my RB1 board. Are you sure
that it's a part of the main board and not of the mezzanine?

> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 81 ++++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
> 

-- 
With best wishes
Dmitry

