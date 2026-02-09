Return-Path: <devicetree+bounces-264050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIj3Az7+iWluFQAAu9opvQ
	(envelope-from <devicetree+bounces-264050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:33:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA7E111EF6
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA2DE3076504
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2084637F724;
	Mon,  9 Feb 2026 15:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KIRwknVf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hXaJdI4F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9ED537F115
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 15:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770650820; cv=none; b=asRZzCbeJhzvmOl+H/LrfqT5NYbsUUARJW4FNbvCFf/sLYjRDLFp80B78packEbp/eyBCIxgL0K/FjnxtnGeX9l6Mpsxnvz42KXMZ+aM4kGnXdV8h1WWawnQ+s/xezIelRgz/Jvh8FE0lT9IbmxiLFRbCoB3ZHda2JqY3MlogWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770650820; c=relaxed/simple;
	bh=ZhKPgY/ok6tI6LT0kTgE+bryaFImUWk9Msy8DHA1TvI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nB/7NuQv75B777gbNaBtUFyVjQzYCFTFyFL9d24KX2EvG+iNe4K6yl7deCn38ySWMJUI68GmeEhh85+HZ0udqWeM/mWe/M93LYCDI8rLN1hOo4zBe0cvNbrfR0KaTqf6CB5ODNO+TRktGLrvAqZzq0TyZqBewFprGlzUW/dNG2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KIRwknVf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hXaJdI4F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619AOdfg2381295
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 15:26:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Nrb9jUqmDkSXq+1Jp5iSrLtt
	FVewPb8+LDQpVvObx2o=; b=KIRwknVft7mLsGtswJU5lJQerpGQJRx+C++3moSd
	MUHpMCWYX8QFxRRWPnik7QHXZ0HulO312aTKAYHoKd0oqEKtdFgvq0xajlt63OJ+
	tCBx0uqTRdxbhI9DlYxw+t0qb8iC1nKulH5PNZfMv38tPkbDzC8DYIxEWGHwRDlz
	21KABv7NTSHqTYhqLRSVM346OEptq8IiJPZ4XzuQXA1Rb8unchK4Xn/u+bxgLbS3
	MlZN8/bVKVpQdlrqEW2P+s0tVy3FQiytKhvKfcuvE4F0SHGbMSQNuMFr3/2VETkz
	dIpN7g55IBFnTfCBgcmDLjlU3r96EIdVK53CzpWEU8424Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c78gdt5vs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 15:26:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71500f274so506636785a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770650818; x=1771255618; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Nrb9jUqmDkSXq+1Jp5iSrLttFVewPb8+LDQpVvObx2o=;
        b=hXaJdI4F0mPAxRCq/pTo70K/GnD8qIv/9co9arggTIuvtYrOcVADwonKleafMsO5qV
         fKC4nkPIurtaxm5jDR++4Rb3wzRbo8Uh8iz5Ytsux2EdkHEN+u8SewVVVSC0jBtimbwM
         QL4Ab2JqiWDdhLqCWZUEmJLx/+CtCgwKRoT5apXu5FDpnYjaKCfujTxWVONGU1+PCd9t
         cBVk0ETAMKBHtRNU65UyCi1ZpUvsE//Yv+trgc3ThVbPFIHtLzJkBM5GwEvgakJMVSOU
         4Ox9Fa+EZEEvuy2XAJwVkiEKIErpnwC78j8UFQ616cYTFL1SWoisHB7DRMj3r9BiRk8v
         4LIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770650818; x=1771255618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nrb9jUqmDkSXq+1Jp5iSrLttFVewPb8+LDQpVvObx2o=;
        b=kRQKIbbUTJtKq1Twkfc3m0Bofsdn23qdK8TyQrCYcBKlVZ9sVD/7rw1Zv8Wl/p3BWH
         ttvMB0I/1r9izuPa8UdzdzxMecYtbQvK+Sgt+h+ExVtKczUm/tfsGUi2/yMuGVzj8MsY
         25iEy7WMM14jjejLq0EftsJDsFL9kUn9tTg1wVntKjxjf41J/1ZersEtRUQ6RkVUSItO
         nXZaDzEENIrSAqpnFJfIP6nvsKsJcRRWc8osvtFkKW4d/ZQACUl+7iDLUy0SZnYdcTVR
         dOwYYYwcCuIdlodq8sRjArh4sOxA5qoMUCrEujQUvYQACuFDFo1bqggWuKfTPnddV20V
         mx1w==
X-Forwarded-Encrypted: i=1; AJvYcCXVzx2E8inzhOZ9e7MqBOjaxxUY0Zu/S9cUKpBxqRAHA25LOEo0XVmESChoy1KAI6CWPI2R2at805sA@vger.kernel.org
X-Gm-Message-State: AOJu0YwPysh1RnReEGhUQN+iZOIiqTTG03QnIdBw3107DhfuU2E1PJzG
	ot3m4gyTLABm4EiOe79IGVc8rhyfc27zfoQtQSIvmSGh46+ovSLyQ1XtCF+EJSKoV+G1IvPqdvi
	ZjODnL0JGJnAbrWbfoPoYq7AVXY2RiPj6DZL8vNsMnRVwD6/Br2wSRVoXbVbRs8G22AFhpXLb
X-Gm-Gg: AZuq6aJ0GWqMq9l5bxOydSkhUsuovsMEZ493NnrIyZXvj4i9u9fvYqJ6AguiwWQQEH0
	dCydfaS0S02JiTl9ZQlo2g83uEuPrwpTVzGlHsx3GO+xL5YvxG4waW/DnlYMVhXJZUbSl6R6gdP
	k9DcQiDAxl/4jmfo/isQjSjNUjKDOIwwwi3TfMTbEin4Y9o7CD6F5h7ROG41uNRHHHIWLRqcWlT
	g/LJoeTcH28uV7798HS7fmMk+nNUkFF2stwdiK7KZRy6Lyl+MLAVd1YMLbgIo9NkCCul9xUx2tT
	fG4L+VNnO7cTNvrzxLFd62g5Vyx61oznAdZ7wURBcLuGusvf385ScCIGeWuT6d6Sl2ZUbT7GYSV
	Jb1yfKmtv0rMuYpTVDVPbLy+j2eibeWITAZdq6AuXwWMJI0g3Ygh4aDN59+BTRObrK44lgJvDpN
	Gh4Jjy/q7PBaiTZkVtrMzyt3Q=
X-Received: by 2002:a05:620a:372b:b0:8c5:2ce6:dae with SMTP id af79cd13be357-8caef409a31mr1527704585a.29.1770650817790;
        Mon, 09 Feb 2026 07:26:57 -0800 (PST)
X-Received: by 2002:a05:620a:372b:b0:8c5:2ce6:dae with SMTP id af79cd13be357-8caef409a31mr1527700085a.29.1770650817277;
        Mon, 09 Feb 2026 07:26:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44e21c9fsm2674085e87.77.2026.02.09.07.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 07:26:56 -0800 (PST)
Date: Mon, 9 Feb 2026 17:26:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc
Subject: Re: [PATCH 4/4] arm64: defconfig: Enable Agatti audio drivers
Message-ID: <ddvxacge7zkez2zjyrxz2ux7zztc67rn2gtiizhuzhl6ggnl7k@2t2amskhk65j>
References: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260209142428.214428-5-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209142428.214428-5-srinivas.kandagatla@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDEzMCBTYWx0ZWRfX00uA8WxBd41Q
 Y0bCQPiYYIv3+wck9oSc0BuIjOeC6R0MqNf8agnxjJR8A1wG+5B0C8rHjvkeqRD3dMCPTIWa17h
 6AIAqgOBSIAPfvM4GwdM5X0Ez0/d7SNphw+p1UyYyEBZVESH5tw9V8q75G60xSv2woqb3b24Ces
 4yjMc5qM4p96g5t/QVe14u70prCKf6lsnFGQQgoHUqJ+M6LmpsgoInQv8WBODQatxblwkxE9a+n
 H7tq346XifEkwUWpslCchUp58hAB1s/RLcdT7BZBgaOWE1UU/mf0zLaLLHdT2aishwDFlOy25P/
 FxjogNRrQ+OpW803gMcaIp6LHWRPWHPZpjXuZ098tjdBQoSa8IQXHVU1HMgcvV95spaINAmvO1G
 lBf/H7GlBA5rqFtqNf5e9skmc2hBv3E2ajP0Ji0VHB18jb8iH0elN0gQjNkggz1quTYW4Mk3mrw
 Py7ztC2fbTD+K4M3P4A==
X-Authority-Analysis: v=2.4 cv=Fv0IPmrq c=1 sm=1 tr=0 ts=6989fcc3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=SW5gx9wwwNEQv_Y7kvkA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: KLPjH0BmGlUItdtoTUPravmVM__ngg31
X-Proofpoint-GUID: KLPjH0BmGlUItdtoTUPravmVM__ngg31
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264050-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5EA7E111EF6
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 02:24:28PM +0000, Srinivas Kandagatla wrote:
> Enable reset controller and pm4125 audio codec driver that are required
> to enable audio support on Qualcomm Agatti SoC based platforms.

defconfig usually is described in terms of a board rather than
platforms.

> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index b67d5b1fc45b..6db35c1605a0 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1146,6 +1146,7 @@ CONFIG_SND_SOC_ES8328_I2C=m
>  CONFIG_SND_SOC_GTM601=m
>  CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
>  CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
> +CONFIG_SND_SOC_PM4125_SDW=m
>  CONFIG_SND_SOC_PCM3168A_I2C=m
>  CONFIG_SND_SOC_RK3308=m
>  CONFIG_SND_SOC_RK817=m
> @@ -1550,6 +1551,7 @@ CONFIG_SM_GPUCC_8350=m
>  CONFIG_SM_GPUCC_8450=m
>  CONFIG_SM_GPUCC_8550=m
>  CONFIG_SM_GPUCC_8650=m
> +CONFIG_SM_LPASSCC_6115=m
>  CONFIG_SM_TCSRCC_8550=y
>  CONFIG_SM_TCSRCC_8650=y
>  CONFIG_SM_TCSRCC_8750=m
> -- 
> 2.47.3
> 

-- 
With best wishes
Dmitry

