Return-Path: <devicetree+bounces-273090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACqwIGcjr2n6OQIAu9opvQ
	(envelope-from <devicetree+bounces-273090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:45:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7C6240498
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 189D430EDBE0
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B2643EDAB8;
	Mon,  9 Mar 2026 19:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GfewEV7Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WRPyr20E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D8E345745
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 19:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773085226; cv=none; b=YSctoOhFZI/aXGT1x27P0n8UUqtDDIToPTL2zGeKwPlb7rhutWRlMf5pm1aJg/WhDZmOfMttbRTh7QCiiwwoq1gOBmMnqNo/Vol5+TyAjKehx1oqCxoWZuQefBtcMJBxkI6fjV4PdBtF3c9kbTR7shTBm4XCzDpYbbVvw6inHyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773085226; c=relaxed/simple;
	bh=gGElRAb+Ho4lH3vbTCvZTt21pg2iKNB5JUgCrpu40As=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LDQPatPzF0+tLUHZ7rmYlFCcuaDEeJSjzEOoE/1GMvHpnPhTTEMmcz19WDQNhSpShHxETPqimLZNqITqHrmHfvwSTs2UmMx4WaQyA0orHthsLKFuhfPA615or2G3y8PFSG2bepv9RAIU02IWSu2QisVaFsxu6cffuPQYcA8t2Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GfewEV7Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WRPyr20E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBq2H1203563
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 19:40:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=piv/iC5mZlqTCM4BXe8lzoUr
	PF1ixR/tg/jQuWfPUec=; b=GfewEV7Z9HuJfK35W24qU/4xSfiL7kbNtq8HnoPt
	EFT2G2+ynflAAGSGcYjMJiCeBRoNa7sNuqWqZRtFzbOhRl2aVEeVMJouEBlyzumO
	iQX5PybOcRGm972r8g7OKAnPNEokhwpV2NZgSkx+XTcGM4jaHDyfqK7cWl05Qz+z
	lgVC9lESrMDLTFgayCtLahJe90fCYljRsMhk07sEZO5mezf/s7+9eKAOAwvVHM68
	3pqYMJ1QvylkaC8FLNw3Rxq2j6q8OlfBSxxDy+7hGyMJRO9qwCsLmDy4fZDmyZj3
	jCl4rSJZbyCwKmvuhwYY18tDQjjtoq5OdIoiKyLFn1XXsA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct03294wf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:40:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50921f7da67so34631731cf.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773085223; x=1773690023; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=piv/iC5mZlqTCM4BXe8lzoUrPF1ixR/tg/jQuWfPUec=;
        b=WRPyr20EQ88fWGf+KgFlXNtzIGFX254R0TOmQs4Ga7rQtqI9moe1NKO6OHVQQ+pbsN
         GE2//lvAPWmvDdN1NGNqqfjmJbyGFLJm+P2Q71s8My2hckrGB582G2pJvsdoIjofhCDM
         lE2p3ZtV5adB9h+a1Uk3TjLTl04syX8nbRoKw7XejcPN4OLahnMWUXPybmiymd91eP6H
         YhoH9kUhyEdHDqBHO+iVM4R/mCGDX8Y68R3fDyJa2Up7dQY4XzLXr+kme1w4ET1b1fAM
         iByOhiPhgB5l4Bho7FisXNxXTJRcqTcs3F2bVp+sHzVC/W5alNDUI9+VC4jnG2+gbomY
         b5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773085223; x=1773690023;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=piv/iC5mZlqTCM4BXe8lzoUrPF1ixR/tg/jQuWfPUec=;
        b=mpxImqGbVsmeb3P2CK5hOh86jQSLkJGW9kkHad5IT00QGuShhJE10gXxeKDOxrKI1B
         oDrwt3nHtv3yXEKVdN0uxVzPyIkXCUygzXBumhuz3nmAOKwETpMPknxUZQn3fyfxAaIg
         6zj5IpgFMQpliRO7RAywofqdABS6wLxRYFZn9+WS8wctknEPVE5A9cNfWrb/1y33C0eg
         wXU16X/Qdky4vCu6hOAL54g3uFKCaBqQOO1XjsS/+s5k5HaCEpwqa82gAKfouPq+9u4F
         4AsGqVlULxYqt8KqkkyP5Ob8FfKItuL8ysnKoGiEtZFP6QBDbAVEV28kHMdxCp5KdS7b
         PkMQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7pailbYuGZmUWkFdFCbFSre5tq97YRb7jHCOyRp5Pc1TvG0Zp5UtdPoXn/2/pp4lGWqS3X5UTeQFJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3/5WCVyhxYM0lLf/5tL+dsb7D0oycTU9nmrK6Tdzsdxh2BAkD
	4WgRMa4sAkNZSiadwdsLEY9t9UZUjKa8DFOfmN4Aner5kVdsu7JM5uzV/+zKFpW1JCu7SBW4mvt
	qTctft5FP52++1OJA7zD2457hs3AH+8N3QFEu7uzxADYtH4XG8+gjIjp6TdGKCawa
X-Gm-Gg: ATEYQzyB66iBaj0pkXtooEo5ydjR2H/RTt2Bnj0YUBUMs2c+PfyOWpni78bO79EoL34
	aWdZc/oZuHZSYGISJ/47i3ACQUVflHfiUnOfgiM+lF6KewWYCXdpSTIBQHIREARoR9kOYyfXewO
	YSyLqwfJreF3tq1/PECu7YApGbO2hzU4l8EhKVX3lHKWy+Bmuy5C4CSGyFc0jN2mElojYdtSlll
	drqToVyNJRDQ8Ph/HLjV0cqFmroWJvcj7a9LEJz3lbOcwWc2ecxFFiyS/lqs3LlUcpzmQ0+LNjZ
	NTQ+GUK3yuT5mck7a3O+n3oajE7u/Ad0xrAak/16grBDtlnzPxobvyaUjeu5uGGExr8nLG6A6Hq
	1KojLPDGD165Y8FSGS8eaSm/J0nA3rXxB0cVgIlgnDEteOw6HpQuhfLzWhwiKaoQQPQYQaQD7bj
	JVa9pftqT1iip8p+Wn7zcM4SBx9joAtQV1+UI=
X-Received: by 2002:a05:622a:450:b0:507:3d1:e4fe with SMTP id d75a77b69052e-508f4705779mr165327761cf.9.1773085223399;
        Mon, 09 Mar 2026 12:40:23 -0700 (PDT)
X-Received: by 2002:a05:622a:450:b0:507:3d1:e4fe with SMTP id d75a77b69052e-508f4705779mr165327381cf.9.1773085222946;
        Mon, 09 Mar 2026 12:40:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d07e015sm2385123e87.46.2026.03.09.12.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 12:40:21 -0700 (PDT)
Date: Mon, 9 Mar 2026 21:40:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: glymur-crd: Enable WLAN and Bluetooth
Message-ID: <6cxuqytvlfdvtgns5v2dsc67dzmdtizbw2b7bzkd6p2mpxkqvx@uxjijpdjukom>
References: <20260309-glymur-dts-crd-enable-bt-wlan-v1-1-3badbddd5439@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-glymur-dts-crd-enable-bt-wlan-v1-1-3badbddd5439@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE3NSBTYWx0ZWRfX7eSTcLflIpEA
 gCLxQHBHZkX8WNQwq+k7Az/xa7bSJ7Y+lshyp7tiQnpPnTPXzlt1hndzgvTG0bY5wyYJPewmLYj
 gv47aiX2feobRFeuWUULZ++YjKMmlUMwR3rCJV5sMoNKehEg143cgaLiuCeX1zsNS4DdOhvazOc
 euGVcs+VYVIt8z4PlZNT7vt1SyVW3G00L+50W9vcx+m6TVylPBdGKSxLvNWf2UVzEzo8Kok6q96
 m4QpU0tupCWhWCQz7LFNOKVMLwvtJ096nVpVvTSTWifcrsluaz9eC5L/Bzv221ulyXgChSEPDCl
 /kazWApCFX/2nrjB3yQJZ2RQ32LoOnUk4CycpI7mDrfiCsFVWqsChL/D6N4LfjH6uJP9YVD4MKy
 Fv1PCX6tPb+KCsJMpdAVo4m28gPtkY+9efKO0w35tM2ZOX9Nf/bbAygCZOhoJ2qsiCJoInQn1Lm
 jC4vo043OtjE3UgKS7Q==
X-Proofpoint-ORIG-GUID: AAx9KhPBwczjzfvOUNRAFKjttQqPi8zs
X-Proofpoint-GUID: AAx9KhPBwczjzfvOUNRAFKjttQqPi8zs
X-Authority-Analysis: v=2.4 cv=WtEm8Nfv c=1 sm=1 tr=0 ts=69af2228 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=pobEPZGGObRtYzZmInIA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090175
X-Rspamd-Queue-Id: CC7C6240498
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273090-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 07:33:25PM +0200, Abel Vesa wrote:
> The Glymur CRD features a WCN7850 WLAN and Bluetooth combo chip.
> 
> So describe both the 0.9V and the 3.3V regulators, then WCN7850 PMU and
> the PCIe WLAN and the UART Bluetooth nodes.
> 
> This enables WLAN and Bluetooth functionality on the CRD.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 119 ++++++++++++++++++++++++++++++--
>  1 file changed, 113 insertions(+), 6 deletions(-)
> 

Is it directly wired to the board or is it connected via the M.2 slot?

-- 
With best wishes
Dmitry

