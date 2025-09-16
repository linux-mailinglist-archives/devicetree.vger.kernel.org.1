Return-Path: <devicetree+bounces-217920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BF0B59B94
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 319D2480683
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB72234F474;
	Tue, 16 Sep 2025 15:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bhF5aPWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835E23629A2
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034995; cv=none; b=hiaLy7a/A8C/LGFy1V/7BZZD+TCIkaa/LK2K7uUT4H2rQ9t8Xnm35xyJfvsdHVdxFeQ2jKcLcslkjbgMa/3zOGlVMbcawU1zlWfOD84CMWQUFtmN82zre3p101YoBU7woZfJRAzZqvJi8Zzdoh+W8wGsaU/pqwypG7ovr9AdReo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034995; c=relaxed/simple;
	bh=l6DkM0pOwEX3zjhBJfh9PR+c0J3tLQzthpKfI64urDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oG+SqvBgcLQyRwwQdFNK7uuiIfvjk80TLv45u0LCgdagrp/MFarVJpdT0Qrn3KqZXG3aW17gd57uCH11aDf/Ej1QIZxOc/d9k+prvPVNBNKFC0of7zjQtHjOvPwHTzJ51J1sPky1Hxf99NxKWIrFSO+MDSFqSdkjllS9BCpj8h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bhF5aPWJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAKlJf020394
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:03:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=voj9VSoE133vX0xE3fpc2jnc
	LrpvdrOCJNA2G6rHUfc=; b=bhF5aPWJnN5LhVHC0wwplVJohISfjWlrvByhYpu+
	oAsBGDdPh2DWY6xRBJAv1LT79+4DgyQ5XLIZFtM0IwH35C3I7iy1cC0xCHeebqLr
	hZfOwneiX9tjmsRsmywnJ6qxlE2mwaezVdnttmEJ+zJ1OZjDMU5GtHGeDSeCnttu
	xIXkXIoYADM72pDmRoLdi8z6GI2fgfg0k9xtW5hYGVCcMHGMQ16q3Xmy/6T88efd
	Q0Uh4AJG82dbmcyOmRU+oKnhk6GtqLCvjGYNKyLEmUz+PHa6guZLN/laOAJq2IWw
	YPipHZ8CBOWMMuNb8p/hV9YuQweChk3oCYDT3vmJGBunZw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chh6xv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:03:11 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-61ffb9fce96so3797023eaf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:03:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034989; x=1758639789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=voj9VSoE133vX0xE3fpc2jncLrpvdrOCJNA2G6rHUfc=;
        b=ZIVl3Zht4ynbe1KJaaoG6c6NSrz+2SqVN82O1V8XXSw+oSrESjEjzLnesDK9wbE+ph
         0oc9aE6XVWKkfC8HEypt1xnTYQBZ4KP6HaCm4Cvwz+4jUkAmoBy7GJ7q1J1JKEfKX91i
         M0654QPf/ZpTjvLhCs2wvTkvPmXaNTG1unNHVTjTZ7V/qJl6XM2CAgHJwqmVNM6ap+1n
         BqRK/rQYSwe3nc6YTNvWYeD8mlwSq0NgrarJw2cvtsUonmfu4AoWwtB99kXbDi9GW/Kl
         xKdP+5HCJumTDBLJJEzEf7o6NFR2AHX1JSJVTbSWmZBY6zdfk+k6R2MQa2qqB1vl7ByQ
         EQsg==
X-Forwarded-Encrypted: i=1; AJvYcCXyqGR4mzBBeLPaWHdkmU9tOcp4osSRHQvsOkCZHWpsGeIkjyiRSHkK8+Xun4HMlhykJPCsiNgQATc/@vger.kernel.org
X-Gm-Message-State: AOJu0YyjQN0oFKy1+ERCicH+AvKAuTFsNKl3zlpmlog0rjK5k0nv7CcC
	rS1qYj0Paj4va3ZMWyHMQvWS7h+tJXnvWFsU0I/FpYTsTlh833sPtvcyG9xy3pkUwAchc5hWi8n
	f4OFDsq7EZP6bIimpeTVo8Ga/SX3UhN5nMW1IX599Q7DjWYxDcEKxIr3e70kDB6hBCBBZHF2X
X-Gm-Gg: ASbGnctQ1/BgC9BvgN8FkZN93IZVxHA0cNqy0KLQMHehPLr+9wIwq4YtE5yUzbDYvNc
	TN66kierJ59Sy58gx57eZ6jk67O3UEadIgFMlxfC2HK/6vgE45490Vv7SWAj7/nXoLiqoWU/sTP
	Tv0GRicPtmo2m+Vv0NVpPWDGT60Z29FCM2jCR0k31NS54tpOkk4rpwMJtDFvMjY1THSKqDhud4M
	D5BRrNo9B/hHoBaH4MZHNqbVLu5njF9shWmvxC7fYE39UxNALzG7OfkH8F7JAu5gj39881SQzuY
	NeVYasic2J8XB6w9hb6HIgh7Gr2CaeFLWYuTM1Ar9HTApgnvffHBxtqNEBGBVhQxNYLo50n7vV0
	HqsMpA9dE0uNyTRDBAO8+lYIMkoHZ9cqPQ42batzRYNzgxxUhNiO3
X-Received: by 2002:a05:6870:3913:b0:30b:abec:23ff with SMTP id 586e51a60fabf-32e5886b3bdmr7740091fac.33.1758034989049;
        Tue, 16 Sep 2025 08:03:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcisuFcv2atf9H79MHkvJiSg+gdxORbtbE3n2z00jFOxZfPYG5xjPkQb5n2gWIoRN61G0dtA==
X-Received: by 2002:a05:6870:3913:b0:30b:abec:23ff with SMTP id 586e51a60fabf-32e5886b3bdmr7740037fac.33.1758034988279;
        Tue, 16 Sep 2025 08:03:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a6a33ba8sm3410574e87.46.2025.09.16.08.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:03:06 -0700 (PDT)
Date: Tue, 16 Sep 2025 18:03:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eugen Hristev <eugen.hristev@linaro.org>
Cc: andersson@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans: Remove unnecessary cells from
 DSI nodes
Message-ID: <kday4tlzjmycgfexiaxgwnan3a3nfxt7sgslncsktcyw5bmr7d@nmjtdm3gd2sk>
References: <20250916141931.601957-1-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916141931.601957-1-eugen.hristev@linaro.org>
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c97c2f cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=67COZcyXgys7xXrTGRYA:9
 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=CjuIK1q_8ugA:10 a=k4UEASGLJojhI9HsvVT1:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: XFocUWZ6iBV8_qijWjQCev7cTg9a21vH
X-Proofpoint-GUID: XFocUWZ6iBV8_qijWjQCev7cTg9a21vH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX4cKhNequg5rv
 5r6s5W0z6lHRP+TzbHRTqS06Q7eOC35r3xWo0Gxz+JHK0dkVEYwchOspaUwkK94VBF+JqbdRti+
 13YadoUblx5TNceP2LPc3iWUr+BLNQg/FahglvYmN/y1fO3HgmCzpixokG18dNigAMRYPfWWv3f
 aLXeZN4lBqDcP3PNgE3FgGuTDjyoa+HaJeszsmh7/Tho4dvVIaK9k1ktoSR6yN2S/7RcwYzRH8a
 NM3vD/3ZxQA3enQq3qNiAq8ma5ZSdtM9BQnvKn2Yr1reYS4N2fon3I7F/MoYA7UdKj0MjFga6Tv
 LBjl7V7ybMUUgXNEECoLP+yWrUhG+YdamJMujaUxiNoDRC/sSzpnrhDPrCMW9eKkGWcw64kRPwd
 mDf95Nbh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036

On Tue, Sep 16, 2025 at 05:19:31PM +0300, Eugen Hristev wrote:
> Fix warnings
> Warning (avoid_unnecessary_addr_size): /soc@0/display-subsystem@ae00000/dsi@ae94000:
> unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" property
> 
> Fixes: 73db32b01c9f ("arm64: dts: qcom: sa8775p: add Display Serial Interface device nodes")
> Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
> ---
> I haven't found a pending patch for this, so here it goes, sorry if someone
> already sent.

Thanks, but no. The nodes are correct. I don't think we should be having
the -cells boilerplate each time somebody adds a panel under the DSI
node.

> 
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 6 ------
>  1 file changed, 6 deletions(-)
> 

-- 
With best wishes
Dmitry

