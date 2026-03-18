Return-Path: <devicetree+bounces-277110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SP1ZEA1/ummTWwIAu9opvQ
	(envelope-from <devicetree+bounces-277110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:31:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B291A2B9E65
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 816E7300D6AF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C31C377EC1;
	Wed, 18 Mar 2026 10:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TGFxY/8T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aIv6brBU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240AC36920C
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773829888; cv=none; b=WZ4lHD3g9dhYrsphlDbQHZB1y1pjf/kkJM9ky8w8fPgTLxbix1X6qet8w+C9J/FbGS4dVtJPX/Tk5FZbbvPuvOOEmp956GQ52SNVcd1d441+VLgr6Lq0ZTECqyva6FWBSrIjriPX+NMFlVw6N1uI7S+KG2gJAaKKIC3+5UgHq/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773829888; c=relaxed/simple;
	bh=SHdcvjN1TdUibYARofA+CHLFRh4yZAA+Sf+ctDBUp1k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=emcH1Gp+amQRhaj+6h38nl04ZO93WtVo0x0yi1xHeUM/033n/5JmsxgJAuk301jN2a9qqe4fE3w9bHWxsEP5KvZs3Lzt91ZHaxGaZUA0ov3mbofFWOJu8Z9XwZ77yj876jbrA34zJ4tRSqvojdqd5miuY2LQ3wmQN1CkvKlbxmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TGFxY/8T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aIv6brBU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I76Y082612575
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:31:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Spa5wHlziLMkSl4f1KWDnSpE
	6bUgad+mSLWgpSQfhJ8=; b=TGFxY/8TNlM3RD3JXz5VqDdAdgJiUy/AEtZrUDDC
	3cRviAxRvZ7bCoIFsDySfSIoAHPSBmU8kbBXsdDRe26y86icd0ZWBt36mTbJWLsw
	+HpWWzs8y/+tO/nCRaS/aAmYgFDd8Rq9uDC9tqBAxAJb/pqi9mhBiyK/hpY2OZMk
	NOqxOYaEJ3P4mRvLfKzSMiQHRdWeXSBQq2oEvtyvbLKtFVKqbCTJBL/w1IFRGq75
	EvwehnMTDR687GLc1ev7bJ3HV5SIfMxW2npl39ncuCMyqbpau56R5U5jRyXtbUQP
	vhqM6dFPtuz1dyeRca6UFh7Vqo4kpOLpOagmytDCPLz3Cw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyqcdrv9n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:31:26 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5ffcb2bef48so732000137.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773829885; x=1774434685; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Spa5wHlziLMkSl4f1KWDnSpE6bUgad+mSLWgpSQfhJ8=;
        b=aIv6brBUMRo+IOZt1OcfAWXiOh6eFYRuEKfyXhY+Oe2Aw2XwBRHw1nA4Iw65PE4AM7
         v7Rhon6vyD3mHbKkPTctSUgRodPW4Zj5ATwlwCQsmAWel8orjbfMh9Xn3ZIQj4u7VJxh
         xxaPFnz8QIFD0TNfLLApU4AGKOT/hCelft4QjOxIsBxk9XWpneODSMaXYWbyYXYxHPuf
         sQwlx8p1k2cKdsPatMxtksmnOvYtOm73ou8/oTzC1zUj4Nmav6B8rOnSt26+D3M481RW
         2SnXKZXmKISNVywoovLYKYIZtbcG5O0LQmFkGE8Gy0ZNRV4OesA/7wvCbAnxT9OAKJLp
         5ybQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773829886; x=1774434686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Spa5wHlziLMkSl4f1KWDnSpE6bUgad+mSLWgpSQfhJ8=;
        b=G1iuKZjH0yVQQjt8dg050Sp3BxSNFkR7GnWSz7yg1LB06q2pF7T/a0S//NUDgtU/Dt
         Gz27uf/4h2ZhBotYe5m/S2vUydTn87PXAhdThuXW1x2YNaEwJallUfyumvayulRSF492
         gBMs2p3/JsN/FhRt4BYOA+wfU9cM8tzuKuw1hr3oReKnXDGC87Xn49VF1CnbwJYBw1Ya
         hTjAyEi8oO1Rc4IFubsRrLASoTSLqOi79epIPhHYWh7iWZQOXnVNTCi4gwL/HjAlZ/iK
         CKJEQEYRZF4q7SEY5R0EUyXwqLXS2P/lbj4K/eb27fMZdx59ma0KB/ybiaI7HeXADY+6
         NwAg==
X-Forwarded-Encrypted: i=1; AJvYcCWxddg5QQwDEb6XTXIY0DbHklHVyuXl2WdN15uErNmkpLGh/WhcGWIyn+PUYhT4nwmLjownbsvOwLYE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1yjZZ8Lm4jZkXaRpIia+fUv9fnhwqVNMIMS7sgwVXKJd0oG/s
	9G2EeP7EfmqePYqh9/0tAhJJ/KKLz53eq/az//TYCEGkLV2AMze36UpCh7KNSuHGymaZHZmH2vv
	rUjHKx5dMBU6+TuspGmIpQsXxIK51IkdeAHvQpt8UZwKE1F2P+NKbGGJ9U4b+dsor
X-Gm-Gg: ATEYQzxqLP0a3qfP8YbdFk115vGGCFu1QOznxAHlWaflWQ9qfqijfCdClktVtZi5Hnk
	DnguyxZf+2o7TX0vEp72wOWOHQjI/2ewVTzGghxppY3uBQAdIu2b1eVigt1DFn3o5mR1my/CPAw
	miwCk5yzjDH1kQ2SQQomOp0rf8OSRk6yTJY9W30a/csye4aCvgREAERjMGV9KYUoHpkuoQeg+H/
	W0reb4VUCFY7DZC47VIEUZA68PmqNGTanKCvN+4ZbGhLQS+CqjnjQBLc7+GSMr6k8TQyO2uyO0C
	ILvPchWb8/nxY35smsqcDsA+SFvf2/2FmmY7xLtfdN3Up0GH494nDek6YRcNjaMub4QXRR296fU
	PL2MyqSKV1dxubcRJVzB5pC3hF243pPMIyZMZAvkiFYBJAKrt2BkYpTZ1x72J3jPX/JScsMRr+R
	lyXRBvqhSnWBgMcSDp6o+ppAEDqgZVN+tsVfk=
X-Received: by 2002:a05:6102:c48:b0:5ff:d1c8:a85e with SMTP id ada2fe7eead31-6027d3c69c5mr1195003137.32.1773829885567;
        Wed, 18 Mar 2026 03:31:25 -0700 (PDT)
X-Received: by 2002:a05:6102:c48:b0:5ff:d1c8:a85e with SMTP id ada2fe7eead31-6027d3c69c5mr1194999137.32.1773829884990;
        Wed, 18 Mar 2026 03:31:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bd54dbf75sm4808711fa.37.2026.03.18.03.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 03:31:23 -0700 (PDT)
Date: Wed, 18 Mar 2026 12:31:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
Message-ID: <cdf4xbcxlw4qpgyqughpz5a534wrvcqea6dkpzk4gioc4stft2@oa4fcud7dwe4>
References: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
 <20260318-eliza-base-dt-v3-3-8a50bd2201ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318-eliza-base-dt-v3-3-8a50bd2201ed@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4OSBTYWx0ZWRfX+nPcN8EF079L
 adF87qMe7t1h9V9kjdOmakGNSg4mGSak/4bHbRev6q/E7HdVBx9ah+rD1Mx/TQYYIWXOr8yBBzU
 HLVbDaRgCPinaZujVlTtZeHkWFA1X1ZCIM9mDLLY9LcKzZEC5Tr2CyMbrXBXwBLWnAlkU8qdebL
 TfCoarTagJ2y7gMk4pNA9S4LpOVNHPAqABc7mK9oGwUJdDMIYqYtAMtp1JBTNvrjZLSsn87gw+q
 n/VfRDHTwzmKYfsKGeulz7wmOSLBx/7SI3138xmWqWOwqDYauo4NHgeCMowPQqnXvoQeilN6aER
 2knEa/vjJceDSTXY7SSS1Yin41TaaR0JefsNdUO8ttqF9r4/M1rHmRwwMHGeCVGLxLyjY6kIIZz
 LJ4zETvPikxgEgASbgrQkJMzgwPUCKJaM+AwrAfNvtwz/9vOJA1azvw/KRlsQVOCkYC7ZZa2B/T
 uF8Wq/PiXTWuG6s2iEA==
X-Proofpoint-ORIG-GUID: 4ezZVUpszySS-g84CuzAIn9z1v1TmiCk
X-Authority-Analysis: v=2.4 cv=H87WAuYi c=1 sm=1 tr=0 ts=69ba7efe cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=dn1uUJcRrVR9k03n-jwA:9 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: 4ezZVUpszySS-g84CuzAIn9z1v1TmiCk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180089
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277110-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B291A2B9E65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 12:19:34PM +0200, Abel Vesa wrote:
> The MTP is a one of the boards that comes with the Eliza SoC.
> So add dedicated board dts for it.
> 
> The initial support enables:
> - UART debug console
> - Ob-board UFS storage
> - Qualcomm RPMh regulators (PMIC) and VPH_PWR
> - board specific clocks & reserved GPIO ranges
> 
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile      |   1 +
>  arch/arm64/boot/dts/qcom/eliza-mtp.dts | 407 +++++++++++++++++++++++++++++++++
>  2 files changed, 408 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

