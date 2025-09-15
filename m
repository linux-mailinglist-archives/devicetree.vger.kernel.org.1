Return-Path: <devicetree+bounces-217327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F65DB57579
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:03:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D0581AA00E9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D0512FA0E4;
	Mon, 15 Sep 2025 10:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MJGWvMVH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035DE258EED
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930594; cv=none; b=m+Z4HY+nhe+ZPq1MEBGx1WZwkSj1DHJHLJUfaIxeCfQ7Ie8Ifn513XlI3yypt08JSMm+8BUwwmvnyia3IDnWCRqTvqU/4/fkEmCRHyDjgrbeKPjXtUvsyLGIopnLbmbo3bstYolwWyW33cYbaj05iooGTsPiM8uWst9b6VZs9TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930594; c=relaxed/simple;
	bh=Iw9O6JFABdPImwFcOVaVdVzFNCl9y3X10Z2HGZWgFms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MMdx3rnDdenplpiOXEyMs2w4XOM0zeoqfC+jTMs635VvZo2xlBWGnaTTR0x5iPJtqdI/plowFhZFEF7WmbDU33f2gzZiXjkr+t20kJZ+WmkrqvtNHq2cmv8vuunsBY73zSkvgsy8Bvbf89/6gH2esTXzu91sYIl0cGwjypHeocg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MJGWvMVH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8FlL3027269
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iNJb9aBoW8s0FMiS/YZ9p7xI2r8sb0NzpQjCEzw6dyk=; b=MJGWvMVHbgq0zK09
	OJ59VyRCwAkg6z9Y2Z98viKfYf3Aqds+STSfibyZnNaYQWThswgGz+TFMVzyxJHM
	dBvM3QQ50SITB6Vh2CzOsORsyOObN4kDWJYhKtzUPxI8xlXhmcxtIOOa59jKdHuL
	CMi3gNAZLkH72urj5E9BT2aFRZz4CRS7eORsfMCH891HQVQtB8S2kRFbi4lN1vMB
	tOApXXnhh+oDfW5gZNcrHkA05txE8Paqk0dZTkLgKcvNd/bFByZvu/H1TTsXWevI
	D00jWAbr4FAtWPvXUwnKIpAG5ezmvpMB000Q299aevibP7qbxjsxniRhLot0MOhx
	zojXwg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072mg30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:03:10 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b7ad72bc9fso3770591cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930590; x=1758535390;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iNJb9aBoW8s0FMiS/YZ9p7xI2r8sb0NzpQjCEzw6dyk=;
        b=SHyq1mBlYXcs8d4kbgB3K5Mp5duKQL6ClbuzAHlrJb5Cw9+Bd4OBJxTcdN6tanPZfj
         MqddHeXYLjcx5kwHyJoTPfNfTPBkD0SscwVdnK0X74vfQ0XBWm3W/K1/OVgOY3iR/HNT
         LtSX8N8rDCr6U63XYYHbrYK28XmLM76qv4bJuekNaY1ZpUl7IeQuL8dkP+0X8Ek+RbuR
         VStIRUhprMMcjKapx7hWO1O06LYqoUbm2/Z3jr/Gn2PtPHHBfDzZkaV3tVNfOKNLH1Pv
         EUC+JJ5zoI9/psSnZNk8PIxc1TEC09+kFWfupRWco7PqGpp8mDLifNaXhmnUOnYcrJ11
         Fftg==
X-Forwarded-Encrypted: i=1; AJvYcCVCGUYVy8dNT6VpZbd0p0jQcT0Z8DWVeuZggRPf1y/j40N6nugZel6RPDYuteLPFBdUEKv+RJgJj875@vger.kernel.org
X-Gm-Message-State: AOJu0YxXUDk5+zjPREsDslmgYsT/JO8mPxztxXVtSHViFCjmP/Skizra
	uXKe+uYIipy0mJUl7I8460TnBLIryz7ir2mqAYvhPsdJ06n1X9+EvPyTn8Lmgd2j73ZhgXqWicD
	g5vyj+sqMUhSoTxJhIOs+zWVGO3/doZhXvW26ghdtbYnjR16zP07N4DkLYFQgARbP
X-Gm-Gg: ASbGncuhtAK6fja0gQ2rNAJrEZdmxdxA0qW70zJbvhkjteoVcKKaNTTdE5OBOvNTMBK
	uItnWHMjJnk93uKOw5zuSWd8BWKoGFthNEQMZXp77cixR7KkDanE7HTXLzH/GpqnIoidAC33uXD
	hMF1GgzUTx4DlYUPWCXqvVKd5rJ1f0R7/lMFFHnaSTYhsMN6pVTPKzykX0sNXxUVr5p8bcj7z2/
	FodPDLZVsrp4PTampZ0TEsY6lTdzH59scZakddC6Pyxlys/KzcmiNv3hygyuM54k0PWd02fpjN2
	5eOZyvZVFZFkMChPZiIvf1slcbqj5VpS0JXA5OjBSZblgsf0dWz4SntDf8bJ/QSMMnK9l/T9Kf/
	byg8j69zvDHaxc0qhCRPlWvkQemJkBfbnE8I/G/JjSjkrKmNeqf99
X-Received: by 2002:a05:622a:120a:b0:4b7:9ae8:6ea6 with SMTP id d75a77b69052e-4b79ae87162mr50917381cf.37.1757930589650;
        Mon, 15 Sep 2025 03:03:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfpvRgAhMNhUxIeD9tNbprQD/TrxHXCB7JaEsEcvWEvuJOODOSQVkWTR5TtGrU2694pjoctw==
X-Received: by 2002:a05:622a:120a:b0:4b7:9ae8:6ea6 with SMTP id d75a77b69052e-4b79ae87162mr50916841cf.37.1757930589119;
        Mon, 15 Sep 2025 03:03:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571459c1482sm2723638e87.0.2025.09.15.03.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:03:08 -0700 (PDT)
Date: Mon, 15 Sep 2025 13:03:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH 1/2] dt-bindings: display/msm: dp-controller: Add SM6150
Message-ID: <v3vuphn3n4w6ynpaqeosechjdcelomn53atwfotka7izqvjuid@nnvdwxqlelrp>
References: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
 <20250912-add-dp-controller-support-for-sm6150-v1-1-02b34b7b719d@oss.qualcomm.com>
 <sx64y6vfov4yag46erckpbl7avwmqlsqt3siebckn76m6jqxjh@f5lueyih6n3q>
 <d3743c52-4e84-4729-9f64-af856419d504@oss.qualcomm.com>
 <droyp5atpjauyttqkwqzk64kkghg6jkkubvfz3zlbrodyzlvoe@fbns762o6vcq>
 <6bb0cbd0-d3b2-4359-a2d0-6b757f66d0e0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6bb0cbd0-d3b2-4359-a2d0-6b757f66d0e0@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfX7/DjVTGiwCG0
 1lZVXF0v3m/PdFm/cq4FzFKoHn5uEq6CaahN7rG3rZpZKAU3TuFEYOlsQ2kS1WxefedZeI4iG9e
 9tWRUN3UDZFlQ0vMD0pEWQUr4uVymCXsUVfAlF1sk0lg1voeukUm0FjDxO8Ac1pa2g90XWou1Lp
 ZPuFdZw/sI/prl4KHdo2av+4ALTtCZAd73GeUQJqT1kxu40DO4V9sizz6LT+vyMnsH95IXLFZgR
 XEl4XiC4Js/NLNLZnyWvmYwQJBkVjSyQcbGzv+XtSgUtzQcONrZuphARCWWWjJHX79k/3L0XeQX
 xoJLPBGrtbUGATzRCh2cohVVsdrU8fSMbOr50UFAY9AYjswijMZQdRub8j+O2Nd1r24ZTfCpBJn
 9iG/77i7
X-Proofpoint-GUID: qJ0vCgWjHXR-3tx6CeiDxJ7Pw3baUzoC
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c7e45e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=RKHcw_4USbZLBnuPHksA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: qJ0vCgWjHXR-3tx6CeiDxJ7Pw3baUzoC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025

On Mon, Sep 15, 2025 at 02:26:12PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 8:10 PM, Dmitry Baryshkov wrote:
> > On Fri, Sep 12, 2025 at 07:54:31PM +0800, Xiangxu Yin wrote:
> >> On 9/12/2025 7:46 PM, Dmitry Baryshkov wrote:
> >>> On Fri, Sep 12, 2025 at 07:39:16PM +0800, Xiangxu Yin wrote:
> >>>> Add DisplayPort controller for Qualcomm SM6150 SoC.
> >>>> SM6150 shares the same configuration as SM8350, its hardware capabilities
> >>>> differ about HBR3. Explicitly listing it ensures clarity and avoids
> >>>> potential issues if SM8350 support evolves in the future.
> >>> The controller is exactly the same as the one present on SM8150. HBR3 is
> >>> a property of the PHY.
> >>
> >> Ok, will update commit msg.
> > Please red my response again. What does it says to you wrt bindings?
> >
> 
> Yes, SM6150 uses the same DisplayPort controller IP as SM8150. I wasn’t
> previously familiar with how fallback compatibility is defined in the
> bindings. Since SM6150 will be declared as a fallback to sm8350-dp, is it
> fine to drop the driver patch ([2/2])?

Yes

> 
> Here’s the updated commit message for [1/2], does it match your expectation?
> 'SM6150 uses the same controller IP as SM8150. Declare SM6150 as a fallback
> compatible to sm8350-dp for consistency with existing bindings and to ensure
> correct matching and future clarity.'

I'd prefer if we have "qcom,sm6150-dp", "qcom-sm8150-dp",
"qcom-sm8350-dp".

-- 
With best wishes
Dmitry

