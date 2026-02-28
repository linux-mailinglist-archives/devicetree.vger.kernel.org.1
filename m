Return-Path: <devicetree+bounces-269587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MOUB6D7oml28gQAu9opvQ
	(envelope-from <devicetree+bounces-269587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:28:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7215F1C395C
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8771305856D
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A55E350295;
	Sat, 28 Feb 2026 14:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TYnd5z2T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NIEiuNKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502D82BE02B
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288916; cv=none; b=Cfp/59tF1KzQFD7WfyDHlO8SVShsZ1PxAzs09ImZOymZpPkTw8NvwRjsB0Uz9UiUa4C/eST2OeoZe3rvw1dOUUa/EIkaXCwhbDVd6ba0QNl4xP0xa8dnvZlRcJW3njongpp/5p98JjcQtmzL+lpLPp4FF+gv0JF4fC0mVqGgNok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288916; c=relaxed/simple;
	bh=eiU3HBmXNG1YkKA+akB2XnYh/0WDhZmk3Cuhy8omFio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oGSAr3EBQHPoMYla5FamyFOp7OyIizvdcLgHdYWwURb7ribm62ukgRjEQt6TqwU8KfSDbYqmn+akXuGyd8IESsOwN2+Bishj18fRtSd2+OQ1gKP/Sk6nqwcfZbm7febYRc4011dHIJYZlF9QLPwwzueCIj3Tn4yAzwjIXNdFh/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TYnd5z2T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NIEiuNKT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61SEO5B52618678
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:28:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UtIEEx7IZ6KH8YRRxMiZGyHC
	dpv2NzwcnMso4YuYxKE=; b=TYnd5z2THhCb5lZj1xRTbIIB7raSmA8kDle3jvyQ
	/01GYepsD8lMgs6VBCnZemA/gT0VEdBa5RUQyGWiVTiCKxqR4YajeFYvBUdEKs1H
	jkCX/kleQMSLU5mPRvG7C9o7iFg6h5X87B48nlO3p6Zrzwz1AuS4q+j+3O0DsI6z
	hdtZe/cEw30+t1X0IN5Nvw9OaLZDzlgmB7fxWjIEHDVnVxeZgHrphk7BxUeqR4oW
	MViiCCt0l6PxTgEH9RrNwqbbyz21byVyBLyCgbEnsW/qTcmLhB7ALokEJNebLIwG
	1vdkycwzgb0D08RHQvUGoNOjGr3UcsoIvWc/vzlcVn9ZMw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfd0ygs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:28:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8ca3ef536ddso3053571385a.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772288913; x=1772893713; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UtIEEx7IZ6KH8YRRxMiZGyHCdpv2NzwcnMso4YuYxKE=;
        b=NIEiuNKTbcVZF3Fl/CVWcA6L9ShILJSMnok4vYWs2aEOiBKG5ao8KeBPcNHBHZDaeq
         9oggMC7DuGQPZlJcraYxJ/5xXEzpM15Hm0vEWbHKoHQqIvV78ajI6UG8/OU9oVfYCvd+
         /jQI3JLttNalL7ufT3hXcp76hEi78I0ODgu1CLBSZYNxrtVXy8iUxukUcku1zrm5S0G/
         zD58Glch8TBlDyr8Q2m9M9i0+phL52JrNtJWVcKTV/ehux+RAGmScqNFSDPXQSOmAwvx
         SQ7R6qVy93Bc6Th1Phqvls0LAktlz/MeUi+wsKCwaMAOHrYZ7H+Q0/UHQu30qm5Z5oM2
         BvFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772288913; x=1772893713;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UtIEEx7IZ6KH8YRRxMiZGyHCdpv2NzwcnMso4YuYxKE=;
        b=P4kxyDxqwJKtIGepzwqWOuop/HQhEN0kp/S5Xi0Pnne4zs3/DDDA7wMS1sfPsPs1TB
         ZFUr7+iQgb2VViJQqBewPQQF6Ntfr8GcPLZYVv92RsiM07YdE4XWEx23G4+g9ge6Tan9
         qX5tUUVGOyoxafDg+VHD9c8zYJDXP/vgVzl0FTSxvgE8mQwAefdq+QE8TbKacEnUI1IL
         Tfnm7KB18KReys52QGhG383d5FNJn/KCuNMBi2J7FTVEgohdNfeLP5Tjhq7FwpP2xBbm
         lYJiwFwB8bXUyme3L2UPiawWLFyAiG6dAjH+xYiCMWyTEkpsBN5c8kHsD334v5oqeRYt
         /vPg==
X-Forwarded-Encrypted: i=1; AJvYcCXDxxiL/aEvLfHGchZ8Q+ltfl1OUMKJB3FGwVaSYbvWqeo+qkFOs5u4FFeoA4ztncQHXufQ44bwGl6A@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6xrsAvFk2FKjEl3PeJAiE/JjkizWJvSbvYMlNdkEr+OYaLlJK
	8gNJ24MjQs7l1Bd0TJqVuG+om9KuG3xFphYPIVqxHBZxGHaAA9+DfBcAAmkaJi/aKhB6ZeMElM2
	TOez623nY9MoibHiYHgKUU3MZSPQAkFHSxHrSCZrf7XQMTA9BTAiS15zvjDnS3rsk
X-Gm-Gg: ATEYQzxtIT6UdiM9j7OPkoC4iTkgt4n5r+rJcvzPQXcb8Ad/vQxyxEeCXlhsBBgr+pF
	ZXhFHL9+N31b1KStgmh/7iKR+oSz6J6iS2rwmYdm54gM9xNpCIaNwdtAhycgYXxaSZf56PLggO5
	1ZUTboxIZ4P0Kj8whW7nPRiKZDUO+ToZVmM8WRXD8cFSyNuArSM/WHUjJVzt1OTWz7G4Q0fSfjB
	9mzOtcZmn7dkKPfMDO5tat1cFPbPkVfOzgCbKU9CuzXpfkZloCmvO0JvBmf4KBU4vAki7gZImU0
	u05cUEUZZwwEs+IpZFQLjVjanlh02FhcYc0pQjtJ++VSPL7qSLh3enJDaCmoRKUgGjzLjzTRzSG
	SXTT1eagHyu3f/97KWUBs9Odi2LyH9nACa4gRJSVLD+K9hl7wFEhhyWahlFbOeve1jWqwlih2k/
	oa1sR9Xbe18AdDGKTRDmqG+ufzQG56pm/j23s=
X-Received: by 2002:a05:620a:3191:b0:8c0:d344:47b5 with SMTP id af79cd13be357-8cbc8e525famr760922585a.77.1772288912594;
        Sat, 28 Feb 2026 06:28:32 -0800 (PST)
X-Received: by 2002:a05:620a:3191:b0:8c0:d344:47b5 with SMTP id af79cd13be357-8cbc8e525famr760918385a.77.1772288912154;
        Sat, 28 Feb 2026 06:28:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115cae82dsm572059e87.5.2026.02.28.06.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 06:28:31 -0800 (PST)
Date: Sat, 28 Feb 2026 16:28:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Tianyu Gao <gty0622@gmail.com>, White Lewis <liu224806@gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: sc8280xp: Add dsi nodes on
 SC8280XP
Message-ID: <u5ra6kbotpihuizs32iufz6jxh246tiqhzabtvjylksavekvyp@x5oa3vrggvxk>
References: <20260228141715.35307-1-mitltlatltl@gmail.com>
 <20260228141715.35307-5-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260228141715.35307-5-mitltlatltl@gmail.com>
X-Proofpoint-ORIG-GUID: EHNnqpIvtefFqWAGUoJHE4zU58zQOHGc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEzMiBTYWx0ZWRfX6OTkZNTc3xTx
 uVUKKodTGBanT9n/QeCcMmGWQAS4dIybQxY26z3QTyEOBaw99Yunupqc7p24E4X2A2AIwwL4y/Z
 hgSStRSecCjFa7YgqQuVaQRdlfKLMZO37YgPiDWYENj96PLim2yRbRu/MTxQO2Mo1T6Yq7936jt
 Z7Cfe5E9DMPkU5wQQBM9rFdFq/5Wa+Iz8rA1Ra4m7dFvRfQhWuUtuSwUR4VkkIjmE3K94lnRmj3
 kZRvLyaI44EvIOJO3gTcLsNStZWj4gjoopaHWdY+VyjIFp0Oko4EUgOz7h3JWGKbLN6SyYn0WPG
 jiYZjVr7TmhbollRDsR0lg1H5cqsPfm3LC9l30bW32e7oCRCaZJKfOooPgKVWvwecg7RuPfu/ye
 FgaWnfdftSwuzbDJw9Fll4u0e+qB5q89lDZFLd8O87DdhveclAXz2u+MOK6M6Sqay8dAnCKiIDX
 DfaBC28J6c222o+zoZQ==
X-Authority-Analysis: v=2.4 cv=HKDO14tv c=1 sm=1 tr=0 ts=69a2fb91 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=oZPMeiHd2FbyKtjdOA4A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: EHNnqpIvtefFqWAGUoJHE4zU58zQOHGc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280132
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
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269587-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7215F1C395C
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 10:17:15PM +0800, Pengyu Luo wrote:
> The DT configuration follows other Samsung 5nm-based Qualcomm SOCs,
> utilizing the same register layouts and clock structures.
> 
> However, DSI won't work properly for now until we submit dispcc fixes.
> And some DSC enabled panels require DPU timing calculation fixes too.
> (hdisplay / width timing round errors cause the fifo error)
> 
> Co-developed-by: Tianyu Gao <gty0622@gmail.com>
> Signed-off-by: Tianyu Gao <gty0622@gmail.com>
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> Tested-by: White Lewis <liu224806@gmail.com> # HUAWEI Gaokun3
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 404 ++++++++++++++++++++++++-
>  1 file changed, 396 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

