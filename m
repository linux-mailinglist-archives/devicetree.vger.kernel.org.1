Return-Path: <devicetree+bounces-275395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IM5ZOo8ztGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:55:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E462866EE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E41E33010825
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8726135DA4D;
	Fri, 13 Mar 2026 15:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hOF7wVz4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X9qZZQ/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49634DDCD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417104; cv=none; b=gU0CmOUhMflx934C98u27PjAfM/diwLKkqsMNPIPU8xm1EmRIXYo0nq55enZwXExfEE/BC7lDXkPM1o1GWRona2tbA0BDBiiHp+R5Hzw0O1yVRFtkmbl+LeODa2OJ5nB0D5z7yBAOKX8cAol+dWvlAdN0ypx6BmaNRZTpTfOLKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417104; c=relaxed/simple;
	bh=F9f9KePH80kSBIUcTn2iCdOlP19qAWALfWYnXK3xzNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SUT3S9lpPZHZLug5p0HMeNz1wP4HYSiVfrBKS6FT6tVmcZYNrwih0NIFknJ90N6yhWVsPTxaUarZqPF55IdAcfdyGBAbt1NFRZ7CKNAMPuRHzVMXlC9DFvzXWFra/ftuKikO+cRZWgkzxoNgbZmaCvywDPmW1LzIWbp4IiGP+o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hOF7wVz4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X9qZZQ/c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DFXKhB437826
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:51:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OiLmq1wwIot6pMpIDx87cpRI
	y+uDiLPXKMUJWppQYzI=; b=hOF7wVz4rPZT/3W3ohVgJEa3BcM3Czp7CKDSa+/5
	/cgUEy43qx91K4fh1KJyHEtaCH82sW6aD5Vb573aaBW3fs4CCHtEQaNtvrc8pzRx
	hzSNRmJoHGpv3ritxPJdBH8vG4P+kZG3e7mMBcrzutruOp37iSQ9BGZ7La2Ng/g+
	vmkU7xnJVfOtuBSSQd5bgw71mwcrHe+erBKW+92WH1z2woBUVKq6du9BIoQ7A2sw
	wHaiobEtMWognL0NAjamipVmBiU65nprTimd5pL5vBIuxMO3Jw5OcQ87R8YqoutJ
	Q0axXvJ11wmrMF5g+b50MIJBnyHTmCvY0RjzWpwuoLsUCg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvnax81k5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:51:42 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94df16a0801so4027084241.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773417101; x=1774021901; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OiLmq1wwIot6pMpIDx87cpRIy+uDiLPXKMUJWppQYzI=;
        b=X9qZZQ/c6vc3eJxAo91J/NFJe0KqMHJ6Bj56INjH2qJo3RtZ41BpIcfRZGb0CqP7ze
         BTkZw4/M58fXgCjOlkziqFZHo39YqGhCp25GMuh07stbub6v83twruxx+18SIcrEwowT
         qmt+sM7ocgtTGJCT+ntb8HxdpexACdTvTMdViaV70xkCeDitQ5bKdZUAtyuV30YlVE9J
         bhCECCOtL/eTl8CZUCakMZjze9X4CeWN5EXpM5L2CbAWbbNMQLcBO0BEij6lWMUjY71W
         F2BNSl/QundOSKmuFdD8Y+bcWEXhCv/qqghL9lBHrcXA109L8qFO5XmBnqFjjaKa8j6b
         ahVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773417101; x=1774021901;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OiLmq1wwIot6pMpIDx87cpRIy+uDiLPXKMUJWppQYzI=;
        b=Im6hsdt4bRlL9+9lBr6+vmEDPU741MpJyyMKoUo+1hexyRVR0g9hiL5w/4hp4V6pEH
         L5eW5WsMYthjduaAiXtanrpFR8CXVfEHIcF3I/foXcpaM7X0GG/PztMSyvbvqPuG7SNT
         Zdq9B8R/usWBDCByUKu2DbksEG7nFOqjE2s6jU5poNKEKRil0h/iTGChVv4KZLazGqNp
         Bq4kbiHPxFCU4PYrQ3xJ/WZ3VKSEEl6wQPDBGboUPlhP+a9d2xLtc8JjtNCBcdzkJ7v4
         i9PzqnAXnC71l7ltPr9caJWkwgXcjnLfilxJGTkUDcFZ78qw6u8juvGfs/LWCN0jXTqI
         WnZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2dtsm+ju3E5l79i2JoC1nPmVE653PwAm9WLZu9d+BO7GnRGiJngWAQlKoLyHwYgjgjixXwct/o1PF@vger.kernel.org
X-Gm-Message-State: AOJu0YzgIRCC8OEovMcp412fVqbRzZWx166/JLehMI/CWy6mqEILvyEl
	yNGY4WV+uQuO7OhGGZsygdZNNaav984QQly53pnqrRJUWzTgnujBIPaA2F3ayyOcofILF88LfIG
	BOdpZux39HODIUAAe5t9TKccfIvJhHxKvbCjhIom1KV3zzedvyvnW3HxXBUwI52VeX+/YbjRq
X-Gm-Gg: ATEYQzz6MikspdiCpNOLm36CaV4L1kdvk0pEp8g76WIVdkHhlv/wVukDhxQLPRPkjwG
	A6YkhzyMu7V4IkLJUFgniAf9YKmTzn+6qRPcULo9C4sEdE8qKQ7AL9Iio0PGP07C5+3LHTFc55I
	j2irgPJ5wMos5ztUwhe1GSsL8p1b1k6Wj5pEXltlaXi71F1UXvphfrFbNhpCAoIrBnqQzSQ2oy8
	WA5mjK/iiSdsDpOwRZ/KEgIDJp4hY/728UDgV7XOB9EUHtjQYcPKoNXmU+zp8OG/acHPwjWBqe0
	Rx8g2/94NAyQAldTmRr9oyqHwTMkECl0c60MyTMhmORy+Luw2e4oEIIygW47/H4WR8095+Rbxpu
	7HHtcIETcIVrZ6ZIJy843/sbEat9QIuA+R0fWVThfQKfje44sPK4HdDFK+KSEtS0ywsUeS0uGyj
	7D8fSNq86As3cfAaFLJDfLX4mcuTc9kzUp5OI=
X-Received: by 2002:a05:6102:512c:b0:5fe:159f:2ca1 with SMTP id ada2fe7eead31-6020e223118mr1374566137.13.1773417100616;
        Fri, 13 Mar 2026 08:51:40 -0700 (PDT)
X-Received: by 2002:a05:6102:512c:b0:5fe:159f:2ca1 with SMTP id ada2fe7eead31-6020e223118mr1374558137.13.1773417100188;
        Fri, 13 Mar 2026 08:51:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a8c8979cdsm4263801fa.38.2026.03.13.08.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:51:38 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:51:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
Message-ID: <sf2e5rld6oiv7piqq277ppe3xqrh7q6bz2qntekzusq6w56rr5@tc2kdlnocul4>
References: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
 <20260313-eliza-base-dt-v2-3-bd91367d860d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-eliza-base-dt-v2-3-bd91367d860d@oss.qualcomm.com>
X-Proofpoint-GUID: UrBQRi7an3eU_0-7OED17RotO23mg3Cw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyNiBTYWx0ZWRfX0DkVM+knLCXV
 Nws8LwxBNgs6Eu5NBx2YX+J8ohqVLJTqfJ9CNB7MhB83myjDD8Eox+4YvR16toNB2DI/fQ/WUon
 aWz9mmZ4DDWCQUp+3LuM6ZPLVtvYc8d34i4pjBOBrNkTxXFNiYgmONFzKQcLYjILBnG00TmFnEO
 TDwlbbfYCpju8I3uV7BC0nFiJvYXCEjQEcKkmg5OOCKnWIy5aoOgri1Un+2JsWMa1WBBbd6w5Tp
 DDk9zn1HxtkblSACFJRxanPYPe7/B6GQxVhgUFvRT8+J5RJFMKG2CvSB903m+zd34e3Hti2ozz1
 ILhXHYLO8pAOfVgvl7nYP2M4VWQrr4qjYuMQ/Ozvo7VRrSTK9/jGFbdLb8G3BgsJpgASuizKf81
 uSntP/CyHJtZQlpkTPhTYbDRpSogKSyUftsZ/ooA1yTb2cgJK+a42sZzme/dN/m/GP76rDcTnBd
 BTkYf3Fd3CPN2EFOy1g==
X-Authority-Analysis: v=2.4 cv=X5Ff6WTe c=1 sm=1 tr=0 ts=69b4328e cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=dn1uUJcRrVR9k03n-jwA:9 a=CjuIK1q_8ugA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: UrBQRi7an3eU_0-7OED17RotO23mg3Cw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130126
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275395-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F1E462866EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 03:23:52PM +0200, Abel Vesa wrote:
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
> +
> +		vreg_l12b: ldo12 {
> +			regulator-name = "vreg_l12b";
> +			/*
> +			 * Skip voltage voting for UFS VCC.

Please continue with 'why?'

> +			 */
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +

-- 
With best wishes
Dmitry

