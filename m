Return-Path: <devicetree+bounces-200460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0441B14C80
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 12:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22C653BFCE4
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 10:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F11828A735;
	Tue, 29 Jul 2025 10:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="loqFY7Bm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38DA266F15
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753786144; cv=none; b=PrQVpfPyPRNdZF4uY1UrOX1ik6uHa0wvp71Evb0pEmiBuI5+8SDxshn7qP1HcUSXx4an7tMdvjVrOp9rq9ODetkLdNZAMuRLTME5czOh/TSOvfOvaaQPM1NiRoVu0cuCcLEUzA502NjdJRGr4oNSM+Z36X0D+PHs9Jh9JffaKPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753786144; c=relaxed/simple;
	bh=C34G1P0eEB9SxiCuqdA8stqbZ3Q36ewqbLLMaPiYE/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k7ZSElLdXeUbjR6TJBfjpbKO/+niOZ7AVDzXZaRSMhkqZlOG537AEs7+W+d9DVVxGgbVcc3lumNsWHfKY8wXi3U3KkbUYvzfDrcdaCfo0abv8KPwwUxXTWzzeeDfWsmBOFxTjmwSBZnh0hpEWJ1P3xRfq7zB6NU/4N4eSirerZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=loqFY7Bm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T7vaEq001435
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1gZCla+PC7KgPMRAN+a1woAP
	P0liPJQbm25JcENNdXs=; b=loqFY7BmrCJYeVDVc6xMnBSuo/ELUNMMfhK5vphh
	7F/FT3iEYz5Tu82Nt/dvO3epT7d423WV3PBOWNkSBDJmqpgtx7iH1GgWnxZ4NGju
	H2X/jR7u76EWIYs1nnuF2MRzDOHIoXEnJjVzwmS1jIH/02UZT3VM+WP0c/+rvfjt
	IZ4bnKnUNt8NCeV6JaWpbXc1UMBrHLG0eNGRjhajDe051v07nEnuyfsjjRHKF22w
	POg5/vmaQJTbiwsQVc+AgTYzZYbErc7Q1Z+ccNstICCvWC25uVHUtApNYPDYxxjN
	8CYjtOqnsRSicepIAWoWsvCM98RgqsNYfE0PjmDX610kSQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2fqpw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7073a52a800so42057796d6.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 03:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753786140; x=1754390940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gZCla+PC7KgPMRAN+a1woAPP0liPJQbm25JcENNdXs=;
        b=k2OPhihibh/FXrdppoXsWS6nghgY8pUA5nLgY1/dhBQCm/7id+IFN8KP3Pnv/1+ynD
         EfD4dMfKM2HuR25RNLtJ4DAVYTtBOFO7aExg2qAVu+ecJI5V5GEC31VXHi/xDD5MZOma
         VVxoCK0OnPSV08h25S3/vdG5ajXP1HdbqpaRccogYT/uA2sTWaZ8quW6idx7NqK+/5kN
         URu19iXNVdFUF68rWbETZUcOq3DjRdMr9B77NeJPYTuhibofePgPORhQhOMLrIqWJGuP
         7qJQn3q1JMRQQkhyhEV3ftBypOgd7z1bamxb74KL5TqRKyMKZjCIp0LdxeHy/9z82VoD
         KJEg==
X-Forwarded-Encrypted: i=1; AJvYcCUAh2pIxGsNFvthVS9l+GQ3H5misZ58dREC+8/JH43vKQ5ND6pw8BjpSpduz1swyReS12T7dMOfeo9i@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu+dwOqWwH7gpEhmUJYrei0xoXrOpjcJrvRDpFxPYsOq1XN+lD
	QHZA7Hk4LmEnnJ6KRJ0vBkppxOyTvlf+zWnix0y7JN89tezxGEHPttVqzykNhGJ293kOWTell2s
	sqeF+Xc0dkSCc0Qoamp4eHgd8ChXpkK84i0ElomMsyB1h0Z/cmSrQQcKxIhjKhj3j
X-Gm-Gg: ASbGncutHRskgMYAl6DQI89iiTCybOB0QboQjZpN55JlbRYDob0cnQbtVZibmVnLh95
	KX0N5nFrQ5wZSGzdju1jWMbAvtIvIWKCeoqCmvtZ4fk+FuIPQ2hCGs6HEqJQcegjqwqnSa4sxAC
	KjtJKe+lY4Ssiq+6IjJsO1ryd+7ITgsOW4otbrdZCjxuW55XpHy0OnUNK5kdj8UFN2q/lLNrvyk
	tchnWQm8hbLsRwFTuCFon9HdyvLDSypP+FtOHHtLQCTE6VDeFvgNiuyFdS8l7x4fIQn4xlWG0H3
	ARtp0SZ996hxGAQNFXi/XrGnMnAcrja81u0avkRJBmz6giI56u+W1YXr2I4rnDCqRLhTAybmI/m
	Lrwqulq6ZWReJMDBDvRkFC4RCQEvsdHATxGXVsVMEF/MsaTi/fpKM
X-Received: by 2002:a05:6214:5294:b0:707:611a:c7af with SMTP id 6a1803df08f44-707611ad0a1mr3722176d6.6.1753786140452;
        Tue, 29 Jul 2025 03:49:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOF6nNOAgWT75o0XQd1gv4X7CrFSmPeC7FXcrYQvNIQQ+mEZ3Xm0poc9B4mIvJJW3s49BzIg==
X-Received: by 2002:a05:6214:5294:b0:707:611a:c7af with SMTP id 6a1803df08f44-707611ad0a1mr3721946d6.6.1753786140046;
        Tue, 29 Jul 2025 03:49:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6336381csm1639826e87.96.2025.07.29.03.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 03:48:59 -0700 (PDT)
Date: Tue, 29 Jul 2025 13:48:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/7] clk: qcom: rpmh: Add support for Glymur rpmh
 clocks
Message-ID: <dph5azc7mrdmsrau6jb7alkhntkziwfhz62r6fwsiaq7ra44ta@qokbet7yue6l>
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-4-227cfe5c8ef4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-4-227cfe5c8ef4@oss.qualcomm.com>
X-Proofpoint-GUID: xjQlwEGCR_mgS_jeVIsqAnaRSQuKxn_X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA4MiBTYWx0ZWRfXxBPWSVb24/1j
 0pZoTB2FGbfHVse18S3GaqN1LDawQobEolmFbExmM5Qe7F4jyoH88mMWfTmJ1sJXsmkqMpqpJc8
 zStonRf3stUm4rEXKjcFpgDwlHxPD2JcmVYUVG9SLm37cSt6aoKT2HPJJRdK4gsQmu7H6QEeU1f
 iUDyOqEMNZSf+qXDs/jSZbI9zj4YWBJi+EeL6Ps91Dl/qnsni/bqg+oBH4P+OGRNhFlwr321Seo
 P1O/mQslXvslg0xHb+3nc1GvWSYotWuLBLuU71FWR7uHaqa274f9/xgC7m3VVgHBOscJx0LEqTo
 p84tyKW//msUvEEBz6hkzSRjsQq+tItFvoIUv/HVrJO+7kcQLK3c/UsYePOR9/yJMf1lx+pe/T7
 n9KOXNW1cXFhsQI89Dlj50usr1m5DflmQJrNDmPlJIF9GC50fZCms1KUkpCYmAHUzfOh/DjM
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=6888a71d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=EB8bpfT8cBTzwKD-FZUA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: xjQlwEGCR_mgS_jeVIsqAnaRSQuKxn_X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=677 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290082

On Tue, Jul 29, 2025 at 11:12:38AM +0530, Taniya Das wrote:
> Add RPMH clock support for the Glymur SoC to allow enable/disable of the
> clocks.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

