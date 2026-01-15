Return-Path: <devicetree+bounces-255431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB53D22C81
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:20:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 013F3302488F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 735B032862F;
	Thu, 15 Jan 2026 07:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UbKbqBLs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GNrkqXJn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A878A2E090B
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768461635; cv=none; b=FhXieiBph55CbFwIQBFjPsmvxuMKuO4rvj+iN0zifzTHDlDhEtzMT99t1YQb2vXi4TWk7IqXs8Aw73FV9TMWQdVsn+lHajbqtMpx12rAmVyqHOUY1s/A4LzyaHQBwGCOgI/meybD5N7lCyrL9KC0Ls8JCTORHuyVjYLSY4TT2/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768461635; c=relaxed/simple;
	bh=aGPu7lOAxostfIr7Hdv6uuiYt6WlfrfULOUu5vhYRCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BnYWwMiCwoUCmoWNjFf6xFF7MZSMNcsAyXeTaGrwROaobNrlplnYRoeu0fcqV4d/OsRPmOVNgJim2rZ9W+dJcJeOJhVHvxgCpW2ahSGbXHVKbO4AnCFXpGP7P38L2Jq1gNuwYJrutUNagNWWS9OS9P+QdfH3Nx86/6BpAqXIzWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UbKbqBLs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GNrkqXJn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fwdR1991673
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JsqJ+BcssC0bKx6pEIhys3wH
	xBLuNFT3wIZaKyupUSs=; b=UbKbqBLs3gYRK8Aif7LqTLI9NQ6QZD2JYWykP5Jh
	xGupDlxsUDIxVf+LY5eJjYqDp+tHoqFruP1QrjUBsHXUhpsraovrN36lC1x0I+tj
	X4JKJvsUUU9o0MvFoV3m5fj0rxM1sF1WSjHHKCg2bH0iE5qNsYrLAYlF63hR+4XR
	uoltrvKnxUIy8z2nK+7y4ForH3eCNF8fU0UJYweUOaBqLZXWclB10H/thLBJ3vJc
	EJaz9STd+zxe7RBJbqaXFIXkxsklm4bQQ/SmXxnbw6LmkjgXov0jEXB/KliI6VDG
	iH0OU84es+F3NtoKgkjo3cBELvju5MuSTb7kKpX7+dLewg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbdbu0cc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:20:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52fd4cca2so159482285a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768461631; x=1769066431; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JsqJ+BcssC0bKx6pEIhys3wHxBLuNFT3wIZaKyupUSs=;
        b=GNrkqXJn2cXdjdwTcwdr/TAzP9gwmM7irnKBEM8/twMz3XkdLurS3y2EAK3DJKvnpT
         Yt4j2J0zycrPBfpffjBIj3Bk84BylByiHqjPrE6EtOoNyIAiAHoZRLnkBaMA0ywB18vs
         +D7DGqW4Dskaju8Csc7X2ao9Ig7B0OZlPtGmhEf1U9vc3xtLKob3z0h+SmZXrErWw/tz
         iL6tXL6+APF1beZpGBSfWtGrzNMORXqkITzYpPxnNjlG1dSoIxAf7d0NT58CKOee+5ii
         qGaWDCK3N6WisbqhH6PtY/6xJpe0BlGDB4/+yl9knzRLh28XWizEgfmh36moeLJbPeC2
         i2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768461631; x=1769066431;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JsqJ+BcssC0bKx6pEIhys3wHxBLuNFT3wIZaKyupUSs=;
        b=qiAnxSH3kyO5rkngLLOiBkpbE5zgQxwCBoFtJYVfToEunWOeFbvpiy8x+3l/fU+vx0
         /huEyJDeovoLPGcrA6nPjQoU3xoDX/LumlC2v/Ec4kNWttyrU/cJV1Jo9Q0YxuxRdLg9
         WrmNvtFpi6kt+XuWq45HnbTXK8pEHmONm8zBoTBNXPDHAMB7iRGRJ1udHuOR4S+ScJvD
         iVhj4DAQcurxf67HyHmKEt5tnwhTR0TCEpOUQg9viR2qyQpryUVNxKNC9EZvGylyQjKd
         cwJgS6X4nNRzgbZKXQHUOjTO7irzd/DfyoqLIb7z1OuYDyMeV4AsyQAH5ajbgkWVGRhX
         0RkA==
X-Forwarded-Encrypted: i=1; AJvYcCWLe0m1Zo4afTWmAT9vHmGLfJIlPYjPYp+dFDjoP03OmjB4jAOgexH+U7AULr6tTw/hG8/8M3+NCMIc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4zV3TtxCd3KEOeYg/y9IJgCzxQDlBpuYC4ttYjjYYm7q0NKpd
	5DQORuKuAeXvwbvwmwkcP3HqBX77YPIFy2oMMJLOOzXp7Ayn6lm377lVwa6I2i6HCIu8PI1vPti
	pf/9DH68wJdPCKdtkr2Dq4HgIfFIYtBnb20ghG/zYxAltcS8yx8E8H8u4On7JjZMD
X-Gm-Gg: AY/fxX5T/Tf1jEoMDac5Oz+OM2T+T7/enT1ybwJPi2Cwl0oEKrQJdJ/ZNGe47nlVKZd
	VePvQSGsNBPbyLmEHHY/ZJyESEWT6TmiFDOgauayiL8WY51BKxJ1S3PZfZblcqLd6n5ePQu+2aa
	DTUgz9SaLEGm2b6VHOxcFgbpxmsfe8mdZoYS220FVuluoD3LhM7IbAzQf8uhQP1EAsLEqb4Ryb4
	NkBP/fD+n2GGVgn4U8y+VuC4UMnIAvTzFSRIdTlEzojOxmP8xBIWBrblA91+F5NLpRM1Snjh4F+
	mDmgXoSjej0+DEO0Da0eiY6yItTulnfKrBLWWFNCJCc+3dvuUfFNUrWOLseoDsONMP3uiMJ7n80
	ihVChAvwMDKK8onUTHI6VsP0MmardjXAspu3PxtVOgugdXogqjlLfuWS7mNCL/SVq9YFaSpN0tp
	TQfLKVEN8ieYO11dcW+Neh+D8=
X-Received: by 2002:a05:620a:2806:b0:8c3:6f20:2ed3 with SMTP id af79cd13be357-8c52fb2408fmr677710485a.1.1768461630720;
        Wed, 14 Jan 2026 23:20:30 -0800 (PST)
X-Received: by 2002:a05:620a:2806:b0:8c3:6f20:2ed3 with SMTP id af79cd13be357-8c52fb2408fmr677709185a.1.1768461630260;
        Wed, 14 Jan 2026 23:20:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba104a397sm1420598e87.92.2026.01.14.23.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 23:20:29 -0800 (PST)
Date: Thu, 15 Jan 2026 09:20:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH v3 10/10] arm64: defconfig: Enable Kaanapali clock
 controllers
Message-ID: <mq52brcwos2tzuvwkqsjkii6ldukmpxhauvs4jrgmmwnivn3ex@ar6j7fprdf6k>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-10-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-knp-dts-misc-v3-10-a6cc9e45de93@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=NvncssdJ c=1 sm=1 tr=0 ts=6968953f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SSOGFJmjRk5Osm8MSs8A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: BrR6tYGwqdwOyDbW6yFfgrmxZ81TBceG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0OCBTYWx0ZWRfX3pmOQYPgzqNd
 FPm8HMmi7DQ1qynydQHQHYVHxeoR93gUwU1ClcEK7DWLlo1g1KMPjE7m+88FYaNH5OGQB22RLdk
 b981sy19R164PR8OsW5CwldJm1I2s3PEP2+fFJYSl2bndS4xK/nxUbydY7u8QYlhh0t0Wq0jzs/
 o832SboqBdCUI+9Af6aRb7e/BHCLRE+YGjN8dqDc61GtsY/soPPhEqQ6v4ZE4fEnyjaR60SHXAg
 iRL8eKcMuh9mq2KSSE15a6L1M4Ve0l5rlaZNB0ZEXlD08+lC6W6Llk93AwAjip2JEVJ1mt9bMK0
 9TVb0sSL6s1JpgbWM/1seaRUVk/5Plwl9XCK7RmJ+yq6M8P7mnPHHKo4iMibMeMqnAuvwV8Blto
 jCoCKTfule2cLPm4+6Aes7IIBfiWBdn8Vh67rSy4sMheUI9qd9Ms5Y4I9IIRPjukvw1sGvKsTNw
 TyjjLPEia9eVE41CPPg==
X-Proofpoint-GUID: BrR6tYGwqdwOyDbW6yFfgrmxZ81TBceG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150048

On Wed, Jan 14, 2026 at 10:49:12PM -0800, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Enable the Kaanapali display, video, camera and gpu clock controller
> for their respective functionalities on the Qualcomm Kaanapali platform.

On which board?

> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index c43dcadabec4..84e9d5785de6 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1452,8 +1452,12 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
>  CONFIG_COMMON_CLK_MT8192_VDECSYS=y
>  CONFIG_COMMON_CLK_MT8192_VENCSYS=y
>  CONFIG_COMMON_CLK_QCOM=y
> +CONFIG_CLK_KAANAPALI_CAMCC=m
> +CONFIG_CLK_KAANAPALI_DISPCC=m
>  CONFIG_CLK_KAANAPALI_GCC=y
> +CONFIG_CLK_KAANAPALI_GPUCC=m
>  CONFIG_CLK_KAANAPALI_TCSRCC=m
> +CONFIG_CLK_KAANAPALI_VIDEOCC=m
>  CONFIG_CLK_X1E80100_CAMCC=m
>  CONFIG_CLK_X1E80100_DISPCC=m
>  CONFIG_CLK_X1E80100_GCC=y
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

