Return-Path: <devicetree+bounces-275393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CUdpJycztGkwiwAAu9opvQ
	(envelope-from <devicetree+bounces-275393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:54:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46760286679
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:54:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1CC8A303A082
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E46A3603D4;
	Fri, 13 Mar 2026 15:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F0/f8p7a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fvdtu3gE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B913A35E935
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416976; cv=none; b=b9BnIUHSo++VffPTe+zmgK0CxslQL6OCX9nd9f1F1lHqiKuUYHuj7Ne0n0YXMjp3+nDr8Tq/Lq4bbwOcGQcXzeASG4MHnvjtR2LcIK23IfCAlJn4U31QrX/g4Lw1I8qMXUf2i/BgHJm9absUBhI6Hb92XPq91XJhMrRuG9zXbEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416976; c=relaxed/simple;
	bh=ZM52gofR5yjzuJ3AdMUfS0gmcKkKJxWhjvHVfvQQZMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UsZdliBqdMhJtwgKl4keqnuC73gYqzKp3Rv6sRMYDYCTnyfwqYLNvQbpYT1aQBVuffZiwfSeBkpWVEUx2zLZbuVhgmOlCp+kqaAhH0IP4TFjoIhUolzmPQSH6pTdI8LSPYI0LVcG8/9l4u/UL1Wt1z6py1RkfkuBW7T7PfkHH+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F0/f8p7a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fvdtu3gE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DE0ejn240711
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WSj5lQ9aMzbJTDFdtGczs+50
	8xvStrruA5rEQ8Dn7dY=; b=F0/f8p7aHq3CCWMCaYqM2lm56MD4XMrbfrUWztRW
	NhxldCZN3+ppZwERE8Qkn6aG52O8wkNJNyKwUjTyty1ArRz+TeohzAVBFhzvU8Yt
	uOqa59RX2zAIGVWetGck+4A8/Uayk2olBETL2inXopLE9UaGarmeIPG+fkZUl1y2
	zzCs4rT/cyz2/+d+CDin53TRZ/99KSqkYIZo1mNGrUJkX0veLG/tM5zQdRowqs4t
	fZKJTm81AbqRZP9GUY+Ry6yHnpTDoSH5IXNX0Z+8Wr3mX5GASI7AG/NNPMc7PTX7
	14+68Aai5Twd1WlAHqlm/YAgZEuhE0ejMZ6A2qkF+sAIPg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cve3d9s86-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd81c571a5so1368089485a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773416971; x=1774021771; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WSj5lQ9aMzbJTDFdtGczs+508xvStrruA5rEQ8Dn7dY=;
        b=Fvdtu3gE2AjE051u5zlP97migIN0GgxMM6UzfniMWQvZknkbLsGbqfi0NnPfCeKc5q
         Qd4pEf0pzo9Q4l3H6U2ahbKe0Fc4DtwEc+2xPQK2Wjm0g60K1NAjzRSwLI+wCnu5pTH8
         H72ZWFqt7lISHmV4ld6xZ//FbZB9GIUurYKh8LLV8W2o58QaP78w+HMABZq+6PoTFb2n
         b3vWwU5zE1pJdnZnUZYsdbz8SLcBvJIwXMxSCPidVsySTgJ87rDaCfTcAqdKGbMheT+1
         MUoElfhTrDKX8X407M771Z6fg5upfl7sTM9Gz1hTa8zvbfVQkJpVaAlsiqYREiWLhuCT
         cFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773416971; x=1774021771;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WSj5lQ9aMzbJTDFdtGczs+508xvStrruA5rEQ8Dn7dY=;
        b=NmjAtdGfDw8MNrqPfbVnx4Oq/qOLdjxYHgh1r6xCjhqJjdqCCKdyhzM42jdrtaEDen
         zNY1cGeVLM2ba3r9jiPUfUtmklpE87vWtpadJFLstJc7r9HKCL8Sw3DjuHoD0yP6pSwj
         fmL/LfEk6XFhAxKsP2cUeDjSEbfg713LOUYNZX6WnHloDXBUr4MHMTOpY9v2x+mC2JPq
         YZ/dvGNGwgSA7ioGicFsrT7oV5bygHBa2Tqj2La939rru+i+klV15mN7L+/mCP5KJ+qZ
         eM+sabK0ckTVubu1Q42asWJptYiUivKh9l8dqNryA+yU5ZQNkt4IdABy1+ZaZpB9LsvC
         S/qg==
X-Forwarded-Encrypted: i=1; AJvYcCW7eamfXEkXFgSL07/eOgNrDdERd+eoYTgbU2lIhdKIaHCxScNGyhJDUbaj9j3EPL7usTjEpfm/A4ge@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy0HMOo7BnW8jjBsD/NWe9qP669rdwuZsKSuSLGwX4EeduausK
	LMhFz34F2ZQirJmGBaDkw8SCXiy5plk8l1FlFnd/OxsHlKSEEWilP+fGOBNPSP9FHuVRLgE9s2E
	X16nSXjgkSLDZ8tbGhyhKEHwtgJDKiMrKv3qg40QPi/fKZUOG+nqRPwrOvSSRhAFf
X-Gm-Gg: ATEYQzyI92hr5H/f2ObWmpdn3A4oiE02/ZKA+Fej+5457V4n19nOQrZBK8i/CW+VkUB
	Taf86w1GVr4BcYvrQeQ/g7+fmnISQVVNcOxAp6jSRJJOaTtcxZ037UBAFMQX7DaYflG70ybxDeL
	H8Nujz11sFH+aDQuCIJp5VhugiDjLdLoPhIC4ctsi8HX80GJE/NOckebogJk3nj5ORAoaXALQsS
	H1bdlRMUgjD+xF5D/qitNsJIpEYaZOc4F9h+bL/g/k9OnEII9+3P2nd3aJW8h6fZ/GBAa26hhjb
	LTcXSnpBmMKGGcUAAxbjO0xp1zXN4x1umCywOYNyV1Tiu3toIAmGPpWZYvFXbX5tggMxT7Vqcfn
	QIdkfkqjtlfcN69Ax3F4EQ0lSO9pyxRFt+PSw7LU90L/V6Fbm4izf2I6gXYm94tMYnbv3aIirk9
	1yuqiKLww5jcUrXnllq/7paCCM4OL8YxyvS+E=
X-Received: by 2002:a05:620a:cf4:b0:8cd:b60f:9ef6 with SMTP id af79cd13be357-8cdb60f9f68mr362759785a.16.1773416970990;
        Fri, 13 Mar 2026 08:49:30 -0700 (PDT)
X-Received: by 2002:a05:620a:cf4:b0:8cd:b60f:9ef6 with SMTP id af79cd13be357-8cdb60f9f68mr362756085a.16.1773416970410;
        Fri, 13 Mar 2026 08:49:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33c0asm1613682e87.18.2026.03.13.08.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:49:29 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:49:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: x1-crd: Add Embedded controller
 node
Message-ID: <5skljak27gm7io4r32l3hbhrce5iul2bp57liujvdok7aswyva@z5kvdb5b2n7x>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-4-ca9d0efd62aa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-4-ca9d0efd62aa@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: VwMICqJ1f2BtsVUu6fgZlPWWPmb1zMo2
X-Authority-Analysis: v=2.4 cv=FLwWBuos c=1 sm=1 tr=0 ts=69b4320b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=6SiODLxq02sLjzxsB7oA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyNiBTYWx0ZWRfXx+c4BgS6iHSO
 O/WSZyyG4l9Dtg2CJQPM/lR0AvnZI63fjLHFq6rzmVjYpVaLulFykMOhMCwre665VaHvB3RDTlR
 WxcaDKjJiRq4ZRkrC8Q7rhAdZ+m8BN2mcu1TXF7Uz9DSTWUqAjm03Mas/7CQfRpS6PEG7B+C8Va
 gX18DzUCRtesW1ERqODoYmwKsAxJkjS90S2f6gatgrsehNSVEFkoaU5WbEFpPrDatRUpAJl2d3h
 fekok2kA9izmSEdmFiPVdfK6ZWfYbWzPpjCqbaviHVsxopAT/yt02Iwu75PYzQnJqFHKwWA3f88
 mS9BWN+NB1fExT6u7odd07EVcALcQi9X/swHLld4PF8xkZ6HhpGtV8uFOzNi/jtfc0Q5tDdaHCQ
 6Eax+xniZ/SIHc7UO0N5ABXRBa+aTiVsmavNgrVOVABYo+ze0cSnt79wXc7sZKTJIMAa9HGpJR/
 QbAjRE0ZpL5fz2T0ldA==
X-Proofpoint-GUID: VwMICqJ1f2BtsVUu6fgZlPWWPmb1zMo2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130126
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275393-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 46760286679
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 03:59:54PM +0530, Anvesh Jain P wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Add embedded controller node for Hamoa/Purwa CRDs which adds fan control,
> temperature sensors, access to EC internal state changes and suspend
> entry/exit notifications to the EC.
> 
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

