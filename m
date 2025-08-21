Return-Path: <devicetree+bounces-207432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F06BB2F6C8
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:34:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ECFDA1BA6FC2
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0BD230F538;
	Thu, 21 Aug 2025 11:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OcnEEl6I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673DF2206AC
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755775914; cv=none; b=aLNG8gsfJFN2f6hxa0+PwFosb5HB2dA7JzrcNAgURr8N8XK7qmaicXKyo75QPooGKXhChIG8EE83AukAi/iL0g/H3udmkPN3CSXNTQpB+euccm874Dz1r/LQrvQA7szfbLJQu9au/ktoEAjlPZYc0KFII8G8SC4O9Z/8WXxfcEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755775914; c=relaxed/simple;
	bh=k0hqNrxenf7tOoz1+BiyPg4/HKw3EOU4N/CyxC+9DoA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PKDZHDA7xCg2gPdHNqOOoV1IkFl040rCvpCxgaNahgD3QUMx02eKdDlfAb2xOhjLR5LtVEnAoxaIwTza6K4+qfsADbPRpN6VhXvL57lPu9vKzv9/E62c3AGZCjMZ/SAJsAlZJ3pwPMOd8+GmWTFLemdoi9lwCXUxmQs3q3J31q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OcnEEl6I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b8sw012896
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:31:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wCJF5c3+QMhdemtPbsFinQUg
	kFKPi2bpCjGACADj15g=; b=OcnEEl6Iixdz9PVUZ2Zfk4Cr60+6BNxiSiK9QQxX
	YlDAdZyteOIbIJ3p9wrlwEISmUEZdwXf7Y9lInD0mTaJGFVOTzVwJZZmdnME8Zjd
	X3rS8TEdN+ybrLWl8Z08tZ9a/YmPUhsCA8crQWpPprLRVzV2xyF0l5dtLqKhCtdr
	sB7hAj1Imigm4OfEwT0TcC57N6LkCkr3TPObt/tpTWrei3wnmeCVYkm//+ZalfS3
	jOO1JxFiy3RefpH9UzIYtLCz2OisAa1isyao1XOzTI2kx4UfKoeBH3lhatOmu7R4
	bjw9UQ78KKXtWahUl27JLkP378jZAerl+40S0bwEPPDBIw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dn597-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:31:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a9289280dso20047436d6.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 04:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755775910; x=1756380710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wCJF5c3+QMhdemtPbsFinQUgkFKPi2bpCjGACADj15g=;
        b=NbV5wRiaq7zRXJb1KExlIVvMknhqgHGMCkOsHVe8smF0Dm+slSgHaR/91KnWmMipIn
         rafTrgn4j0xfsUYXmVwPFuHSvD74fq9VtLL1CzHut6Raxg/r2BlB6B/z/fZrL+jt5JnA
         5ZhIyjlpox2Hd5CnczsFwOIfmeCRlKmekQct/dJdwUG5uH8vZYEMtQl+wzh/bRB9MwjV
         M3NAvzq6BYvpg/41V5TRioH1IowR+q/vVzhZU2qN5US7LNS7+cTDa2hiIuVZCxjdLeFl
         PGcd/yRYdb+bve083qpbSNuveFzsb6lmZfMs1L+iwHiWhZL6FjsnIyItSJjaJGL+Ctoo
         9Vnw==
X-Forwarded-Encrypted: i=1; AJvYcCU3Y7ck9DofxGw8hHaqoPcYGCwarweKqbghASIOtdxfrnbwqraV9bcpySHVFsqCJ1eC6Ra3xHXi3vuT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3niRpRsKdvggP48fogC2DK5CmcMty3MXCelbjPaD3GjhBN+cb
	yny/ks2JXj+IhsKAexBVTdOzd8hZXnrVcFKaeTTBSH7ct0adlUa/AV3KwOqg8B7VJ818cVFnWYj
	+gPcuchoqosheo8bgLcGr/MSlE1gHf+rm7Dl0NXksCBcupGvx88DxSOHbhWPATepk
X-Gm-Gg: ASbGncs0lA8E/UvpRLxwMWto/3eU4fvYbqaabUFAHUMpoNhsjbmRYvlaQfMB+f7b601
	z2SHdjepBxmXj1WTCpuVSI7DOAtldjqjHZ/+ixBpWQIVB0aBYlf1CvfjVutmo9HVuEHE4lSXKK2
	aU94R6+fgH5BXOrZ8bqEPY8WF90TASBrhCZTTaGX/D03KToLOYF0fUFpbdYX6I03xWnTG+RSlP1
	AeUSuG2K9uzGGnzWg/WKjMWW0F6H6QdgL4h1pVwDHGiFnh6SVJRvY93bzDTM7tqmB1QnuvGX+gg
	PsSX0wMkYQO86S2hipi37hDKi8+rqG32X87hjilSTH2EiYtHWxVEJVuwDk73+u3yuE10rIgK/WN
	eiEth6XULJVHpMjjevl6FpodUGQrQJfFEaJhCo9xxuxeozTtYuS6N
X-Received: by 2002:ad4:58f1:0:b0:70d:943e:1623 with SMTP id 6a1803df08f44-70d943e18c4mr1654166d6.55.1755775909999;
        Thu, 21 Aug 2025 04:31:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFSs4VKIibVozJgAfWYCmiz65wGeoOsB2ADhDuNHcn0UHHXs9rSr5gNX58F9niS9BZiB15Dw==
X-Received: by 2002:ad4:58f1:0:b0:70d:943e:1623 with SMTP id 6a1803df08f44-70d943e18c4mr1653726d6.55.1755775909466;
        Thu, 21 Aug 2025 04:31:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3353a08ae5fsm8719801fa.56.2025.08.21.04.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 04:31:48 -0700 (PDT)
Date: Thu, 21 Aug 2025 14:31:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org, naoki@radxa.com,
        stephen@radxa.com, cristian.ciocaltea@collabora.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        yubing.zhang@rock-chips.com, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh@kernel.org,
        sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v6 04/10] MAINTAINERS: Add entry for DW DPTX Controller
 bridge
Message-ID: <qf7rp5fca6b4orisls2m7jmmtpqriiwiqp7q47vvzwq7zva3b2@6qcsswlzke7b>
References: <20250728082846.3811429-1-andyshrk@163.com>
 <20250728082846.3811429-5-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250728082846.3811429-5-andyshrk@163.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX45nQI3vEYcmV
 /hjfMIrKH3uRR7owifG6rpfpwkE6WGtgUkPuo8jA7aVOp1Bt6E/9LjqJPG7WPD1jsDCQ7JJPfU/
 OAjNLdX/YbWX2gP/OhpMwQz9re70YQR8HGZsItnRvj1fWLjr2Vqt/HYnnhPOzI/BKJAilRbSiKS
 EEkDBxQo4b7hMAy+vfCP0secJuVuHutIEfi4C1uD8AcektlUiRFq836dBRcfjYRKffEw7QicI6x
 qLtt74q7pebR2H6fLEcB7z3CbOEsgzxh+M9GuKsfF/PEvwCUSG59mRyF4R856pTxHwm3B/g1LzS
 0LEtKDU9wN6H63krRYm/xuzGQ6ao8ug77iW91PlJVP3qlRXqnH5Qk0E55FMzbb0+3XyNxOwNEbm
 cK99hkbIa/Jl3384bpUyVl/Ar/HyPA==
X-Proofpoint-ORIG-GUID: _2rIiyHTOmW5AJNVRTfzIPwRjAEZiU1E
X-Proofpoint-GUID: _2rIiyHTOmW5AJNVRTfzIPwRjAEZiU1E
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a703a7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=3WFxphGLh404ikClcyYA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Mon, Jul 28, 2025 at 04:28:29PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add an entry for the DW DPTX Controller bridge driver.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> (no changes since v5)
> 
> Changes in v5:
> - First included in this version.
> 
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

