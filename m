Return-Path: <devicetree+bounces-261164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJqfNB+MfGnvNgIAu9opvQ
	(envelope-from <devicetree+bounces-261164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:46:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A591FB97EA
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2A7A5300AB0A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7273A37881B;
	Fri, 30 Jan 2026 10:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q+eQEEtX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I968Etkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FA2353ED3
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769770008; cv=none; b=pzxmjejCr1PV2HDCvZMd7aMBate0tyvPNfRxxRhHuD65uRehZ89q3+SVKwe1wbFGo70OWEKhGHbe5T+udy0d9815c24OrcB4ydhJ1OTXmJ7paXaxxiwkFpa9mGRN32O0lgEPu4b4yJqhgtZJ4H2FD//fdPAngHVbJ9/3aCi5u48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769770008; c=relaxed/simple;
	bh=Q6G4DEwQu2m5P1afAWHiI7kox4Y4H59hRcvGkimgfYo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rh5bso8lhUTBzad7YL2EDF2t/Qott89Wdpmm697ifHPaKpWfIeEEg6O2Cl9fEhyrJD7SW/bhSK0pYGL9Z2mTxl2wcOMUbClclBXwoPpTrRP1BeCjLscLkEBLWdNTXLWWSf8MJjVZ41MDG8OYsg/q2H0R8/Hd3aqDM9eNRQ7V8YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q+eQEEtX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I968Etkb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UAPN671488307
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:46:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rr9QiGGiWTw4PJaJOi5tnRSK
	O7seyqsjCDlJhZrGyVw=; b=Q+eQEEtXmX5CHrStHjZpHTWogkHf1YqYl+zSv7Ts
	eh1En3jWVK26aEEb9Kw7BrVeBN7HWAoDIgE9sHEOVs1bpYyojhMRTNxZMsVvZ26P
	nGbNepGSkct32JCxXhmhTuoyq5fFTx1H4cOGMyNR8ZSWl1MSE2VohuEjWGj3y+hJ
	4c/vOOFUJT6nfCeMsP08rqbNuUTD90cG4C8tpp9b4oOsePF+u3v1RPldB/NdRz4L
	cNZxMBwMwFLlVoEi3CMQ6mRy2i+WxRqg3rcRdlHG1iLih9HNYHcz2uhCogEgWHK5
	1Gfr8ztjdbzM6N4DqROAYMImLW3yUnVd+4fyqKkIWgQNpw==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0bp3tvqb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:46:46 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94839e09cddso1552582241.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769770005; x=1770374805; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rr9QiGGiWTw4PJaJOi5tnRSKO7seyqsjCDlJhZrGyVw=;
        b=I968Etkbcr8wOJnyzG8MnKRhr0yt9fsCMgdWmLW8mOHXwxzcXejhqwHPtIp3QpPZbn
         bif8IKe5+/T1X0A2bwOYRh5f3ja5Fuu/G7BeRCYesT0jphfuplrD/+Hm0bTxl+hLm1a0
         ZquMjOiisgEcyYumBaqldUbTuuaJI3Dns4QsuHKLygXmK5ouJnZSrjecSmCHfOQa0/FF
         JKEAWZPhIzAI0zSqn7opcsF0chSTdZ8AvNG8ir8h+J8aBb5Gxc6iOorpXy1YuvgjSz9+
         xKxs98BzuMthJ0C3KRBqRZIDlb+wOnsGUhK1eIhHloRMqs4lrrZso5lSvbLJRo9U2T1k
         607w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769770005; x=1770374805;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rr9QiGGiWTw4PJaJOi5tnRSKO7seyqsjCDlJhZrGyVw=;
        b=u2WmphPOfIJwpevsj9ySnYfaxG3Y2yMvFfSX4T8o2+ZTgDjcO44Gighk1IC9Ps9/xo
         ffQv4//FZOG+8m2G4EeKJ7vCY/wU7YJ3HZ6sK3BADre46X9jgp8BooVpicbL1R9jJwcU
         CjaEIt/V8J5PwpeAjIIsvN25zMoy0kwJOumG9fDSM3eJncsStL9RpWJze/U2v4sUFRJ0
         rPsE8QWsFAeV/ZP5Vr4GnGXaQYQKX0RnHcy1oEgRrArQJOYhcwCw/tukqg+lszV7PVpk
         G8o7KqNgO9oQFk7Ds1FLuiRYgC6lNMYK1W2tT0uunTYd/CmOx0mydAXsN59skY0jPX30
         y9HA==
X-Forwarded-Encrypted: i=1; AJvYcCXNunqqWNWnDBmSP1Reahc9B1K+0VzJj/91NsqvoCQno2o0s4eL9d6mpM9TNlb6PanEpFCN53+QotNA@vger.kernel.org
X-Gm-Message-State: AOJu0YzPaKRY4WXoHBkmlNhlc6AU4eFCnDJigdr4VxA+DUosKCwyEgWK
	zhonsENy2+lxDrqXPQn5YKjtrp/tmcthokOoFG30enrgBUM+a7+zgH3ZeKy+MUQ6+YtbNOUWHFJ
	GvBf8D3oHd4SnXPiksRvrDhP7nQE+n/e0bahqBdUCR3GaXaPQaVAexwfM8oORpZsb
X-Gm-Gg: AZuq6aLctgYHDAC/2YzQnSoZIW5htfKLsRy1vZ45uqvcnj7iInbAHN8yiJRZWDQWMbq
	t43vyBoUyPeN4HZ79uD44tqMAiybKr/8WX9B/VqyzIYe+/hyOhO9rcOkzbLPgQ3v5jCntr00cel
	spq2ADo1wso6l6xS0CXJy0fXoo0324JDJlPuuraY/VF65hSrUZtuWhc2D7ExGPvISSCa+fS/ZOo
	ALlIGN/FRE8ba6wgh1oXb2nSb3mVLI0ca5WjkqtBKUb82l5u8J/sK22/Cev4zCc42RkT4T9/RJF
	R7Y+05/qV6YQ/1hthIGvlGvysJ8T6VYlSchsz99wwIOMvXmjM8nMdCX/rRQW0R/538MoU42eBw1
	NGNHmqVaaFqHeUgrTXMRXrYSwIO7hhmRFI1VoOwn5vN2+xvAodfwhhoM/ZWEAualBiA8ZKeYfJG
	zUtgsMFuqfq+DbQg6j+PomB7Q=
X-Received: by 2002:a05:6102:26d1:b0:5ef:2457:8015 with SMTP id ada2fe7eead31-5f8e259eb28mr708223137.29.1769770005333;
        Fri, 30 Jan 2026 02:46:45 -0800 (PST)
X-Received: by 2002:a05:6102:26d1:b0:5ef:2457:8015 with SMTP id ada2fe7eead31-5f8e259eb28mr708214137.29.1769770004915;
        Fri, 30 Jan 2026 02:46:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b6fcfsm1697127e87.69.2026.01.30.02.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 02:46:44 -0800 (PST)
Date: Fri, 30 Jan 2026 12:46:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH v2 2/2] arm64: configs: Update defconfig for DSI-LVDS
 bridge support
Message-ID: <cxpj2seziv5kgblf65yy36hsg2gq7abbp73gjhx6dyvlx2ipev@azfyp5ksf2s7>
References: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-0-a98714fa1531@oss.qualcomm.com>
 <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-2-a98714fa1531@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-2-a98714fa1531@oss.qualcomm.com>
X-Proofpoint-GUID: LiqtWynpRkGEXU-0zaUS8OH7pvt9M2ij
X-Proofpoint-ORIG-GUID: LiqtWynpRkGEXU-0zaUS8OH7pvt9M2ij
X-Authority-Analysis: v=2.4 cv=d6T4CBjE c=1 sm=1 tr=0 ts=697c8c16 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vueofUzKTQJII_GiKD8A:9 a=CjuIK1q_8ugA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4NyBTYWx0ZWRfX8pBZgbfM9u31
 4v1tBmQx7PjAofIz3ah+rTlNV5R6Al3kFvfTGmtEEXVpKs1UUPn39lii1uYh5qA3aIEXHY3g1Nl
 2+Z++O3X65PB6XM3xltWW4zEnokzftteEXdcAJ9NrhobZsN8/nek9D46KLB0+VkLJAnJAkeQGrP
 Tb/kQia7LwrV/tp0r53WdC5RV6G0woqbGCt4bnmcXI1nejeLSfNhcV91N7ksDtfMhTZ8H+TgFSm
 Yi6YRYrkLESbNtqysnoAA9akWqMzqb7/RlQtNSDMKHLNZhlC/uQQ9ZMB3ZeLIYefUXHe6IxC64G
 NltYJj/6FQv1W983ZEiVll5fLtM2S0m01xWtRr5VEfSQdRAiU4NmrVBhVJVPrMOpKZhkcmmoDTb
 qV8nq3IfP1i4m6GctTkpOv7mG5tZab8E41M3xiJwMH6XGRu+s84HPMtkPo/GX2ZbhpOa3mvROYj
 h1r0lUua1kJTHq2069Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 malwarescore=0 clxscore=1015 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261164-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A591FB97EA
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 03:57:26PM +0530, Gopi Botlagunta wrote:
> Enable the LT9211 bridge driver to support DSI-to-LVDS conversion
> on the Qualcomm RB3GEN2 Industrial Kit.
> 
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> Co-developed-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>

Two engineers for a single line?

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 00d15233a72b..b8a7d299acbb 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -959,6 +959,7 @@ CONFIG_DRM_DISPLAY_CONNECTOR=m
>  CONFIG_DRM_FSL_LDB=m
>  CONFIG_DRM_ITE_IT6263=m
>  CONFIG_DRM_LONTIUM_LT8912B=m
> +CONFIG_DRM_LONTIUM_LT9211=m
>  CONFIG_DRM_LONTIUM_LT9611=m
>  CONFIG_DRM_LONTIUM_LT9611UXC=m
>  CONFIG_DRM_ITE_IT66121=m
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

