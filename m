Return-Path: <devicetree+bounces-196615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCFBB066BB
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 21:22:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F7F71AA3AFE
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 19:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3232BE65E;
	Tue, 15 Jul 2025 19:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bqoYeKB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ACF129CB2A
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 19:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752607351; cv=none; b=EjQpNfl0JQw3146ZYvBPu4cTznjbzGBO4f5RWkuit5svfqEnDrDqjBuYBoz69vIO19gFYMDB4xPHgUL0UCEqLBeNzcmjSqju52AwTijHKxgs4fkyTMowJpaXqObKmnb+huwRWmyOcu6FFZ2lt+KDx7JhrgSJluWS1wZy+t2nneA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752607351; c=relaxed/simple;
	bh=19KvyjqMmU2ow8TIsZWBmVsN9hw450pUe9rTmQEBA3U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJaqQggsFlBQNU+E6s9Dd9TFaV6zux73MoMMbATuCmi/trhEfEJ6CpjwQacp06qrHZzevuDMDJosrFVK7WIkbSQ8uA/vWtBmg5Wwc65n9NOUK1jSJw7KnMVwn/FQR7vRCSxByWG0/SaDqvt+L8IcpAOP/jTDcNEHp3GccjisC5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bqoYeKB1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDH0F031230
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 19:22:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zI0oX333gQStniWEomZTauYu
	g/oMZm960vNJLdTExhg=; b=bqoYeKB1hGzW6afVwzAHQbUcOyf3IMDjhWdfH0CR
	a0aJfMWo+p4OuJLhEuUKVuxJM0a97OhTG/hsWqRiNz/2oUGu+DWusCbB78P3Cxe0
	rhPSJLCRkbwuORdiAb+nZrdoTNoQU6pFb/WSRLlvjJqlHm64pjCCe1HXBEbqWWCv
	jaKgHzymBrI9OyJ5fjBkB0vRUoi3o0Zq1xOwARmE8Qq2WWpumazYl9zprk1Q8s2+
	Hv3ju1m99vpaOqUJb795HmnbgUhDMsGrCKqyX7NHHEw4Ki5PPPsW2oB5l+0Cyz1q
	htv1D8sztQNrLHhgfdhnbWXHzOJbKiLNRM+r5HbF32e95Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut99pf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 19:22:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e095227f5dso558919885a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 12:22:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752607347; x=1753212147;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zI0oX333gQStniWEomZTauYug/oMZm960vNJLdTExhg=;
        b=PD5jEducIDyXcrRvKRdvptkM109HiqlRpyfc9Ppdu1M5ao42bUo3wmpygApMmMkTI+
         2jkAwdh65Bq6VbXIsmSk+S9uRclc0U8sw3tLqRbZNbLKkC9xxvH3SWGHGPy4geDX3xlP
         hOplyupt99LWe5XqVHSKGKUSfjb/ZXuXNIFKGNcFQkJNTdYuHxueI0XRqVjA9doea4VB
         lZhAWTOl9zFSSuRcBfj04cQyxpl0ik3yU+MZlCMvwQW17za/6igBBTmGxX/HOtDGuZ+0
         +cNN+Rs6h/1xbvUmXxa5SDFZYTbFNSaRQJ7OYJx2He+dOGjoJD630vTvthWuHlLj0sQM
         nFRg==
X-Forwarded-Encrypted: i=1; AJvYcCWcyLVUUReFVSx9bKGKkn3ymm/+5jEyTwxrT0EIFRwnTfwPZtgpfqOdkz1ZR1gX61AifmNlQzbXmfPT@vger.kernel.org
X-Gm-Message-State: AOJu0YyN6o4ZM4liR91iM70e0H8wHyyDkrO31+GfELK40XidgQLx5vsq
	CAsVi9sCe8HTEgBD+EdqkJYRIvCCM0yv1ftmDsUOsLk7zjK/8y8eswIoKl/tx92hJ+XtODuS/oA
	2loAEFCDqq4TXU6jZ0MIOz1cnv2d6D/p+j5EUepvBCBP/TWPs+2IPvZ26KJHUV8EW
X-Gm-Gg: ASbGncu1h2AWCH1qD3BoXiFS/iccZmKvdTTx24J5lVn6lW+QkbXq0zBOorC+YaXS63M
	3yLr8e9jT0y9i8ifK7EMCHrMDBnbaIAcyEzbviVn++uFG/QEhBGB+2lmyKUzHEp1eJLceMuJS95
	4hbXCnejTufYz2inNqMeZSusn8imiwY4btsPQ/yBArhQa503bBAWHsc6mZtrjLxZl/jlsVnnpJz
	NhqpvgEFtSo/Ui8TlhVyrKga3v8RkibZ8Y7VaovtyLy1vo2LR84u9t4hKGgDvT1ePUzzGnZz1wk
	sBXyRkekdtuYQUYZr2viiNvGTFob0zMygmWr9gw0zDAWGaO4u9SdGybdGb6XXkWNJKIlcqmvZJK
	EZ6K2tijxAAg5ClQufEVu+gurwHClHkf8A193PAMPmwxWocoE4mO9
X-Received: by 2002:a05:620a:2992:b0:7d5:d0a1:c907 with SMTP id af79cd13be357-7e342b368a3mr43518785a.30.1752607346998;
        Tue, 15 Jul 2025 12:22:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyvyU8q1VztPYAnznpjtyu7x55IjSjmKm+4cZLhYOyyteqfz9dyaEsAo3ZVngVC3/SzLpLbg==
X-Received: by 2002:a05:620a:2992:b0:7d5:d0a1:c907 with SMTP id af79cd13be357-7e342b368a3mr43513985a.30.1752607346476;
        Tue, 15 Jul 2025 12:22:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a0fe70bccsm1067203e87.30.2025.07.15.12.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 12:22:25 -0700 (PDT)
Date: Tue, 15 Jul 2025 22:22:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Arseniy Velikanov <me@adomerle.pw>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Luka Panio <lukapanio@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v1] arm64: dts: qcom: sm8250-xiaomi-pipa: Drop
 nonexistent hardware
Message-ID: <uvw7usijkllom6cox4fkhrxpckqf7gk65b4hn244hpmj62utyt@zlbxwwmj5t6u>
References: <20250715185636.21758-1-me@adomerle.pw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250715185636.21758-1-me@adomerle.pw>
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=6876aa73 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=9pW74NbYAAAA:8 a=e6LoFHyyGpLHkRjQ_EwA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=67o8LzlnqLyy2xoPAWJp:22
X-Proofpoint-GUID: zGusX2pOZgWSYDgG2eA4lWkGixHQU8uj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE3OCBTYWx0ZWRfX5B8b4JQRzXtp
 g4//PbYh4RqM0334X98FjoX9OXc+iOArJ+jQGIFUOdALFgHkaK10js55paPe8Y/+o5fgy3N0ElG
 dWEXd5fqqo/enMGPSqRwIfmb4pb11uujw336AAAJ9Er/I+pU1FscJVBItFRG4PblmdaFoZhyvaW
 4S71BqZgUqMDAhZoMhtqf1pnd0nFaw9IJ8jbcUx6c6R22J8a7+B0TtCIbfG6YEchEXR6AP8AxLg
 K79jyxjpdr5qkAMxOL6lsptEEDigngeVvCU8XPUGgiLKi8x8Dtq4xaYkXQsMv8ltz/M1fQVKlWy
 v+ypy1NSnRWUGRwPP75p7DEiW/K+b5lmpTJxAIELxt8Oz7KUn8DdnFWmAAEwlsKv3D44hhuuO26
 p0h+N1Yj/gmBl/l2TmCfws36rmBLiGWzcuCC9GmvWp9eKCmMaGXWTHKR5+AjbVRFREizZrce
X-Proofpoint-ORIG-GUID: zGusX2pOZgWSYDgG2eA4lWkGixHQU8uj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_04,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=849 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150178

On Tue, Jul 15, 2025 at 10:56:36PM +0400, Arseniy Velikanov wrote:
> PM8009 was erroneously added since this device doesn't actually have it.
> It triggers a big critical error at boot, so we're drop it.

Might it be that there are different SKUs?

> 
> Also it looks like the fuel gauge is not connected to the battery,
> it reports nonsense info. Downstream kernel uses pmic fg.

Separate commit, please.

> 
> PMIC fuel-gauge driver uses mixed stats about dual-cell battery,
> so I combined it into one.
> 
> Fixes: 264beb3cbd0d ("arm64: dts: qcom: sm8250-xiaomi-pipa: Add initial device tree")
> 
> Signed-off-by: Arseniy Velikanov <me@adomerle.pw>

Please remove empty line between tags (i.e. between Fixes and SoB).

> ---
>  .../boot/dts/qcom/sm8250-xiaomi-pipa.dts      | 95 +------------------
>  1 file changed, 5 insertions(+), 90 deletions(-)
> 

-- 
With best wishes
Dmitry

