Return-Path: <devicetree+bounces-260044-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPkUMJjteGkCuAEAu9opvQ
	(envelope-from <devicetree+bounces-260044-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:53:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9E98020
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:53:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D4960302BA23
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F092362133;
	Tue, 27 Jan 2026 16:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NG0jul8N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZjECSYP/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D8331ED88
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769532711; cv=none; b=BzioAWAsyK8xXOD8smuer4G0PYDy1ZmE7AO7IjjaSO99io3pMU8CP5SLj4IgOq+Tdv2e6z6pn7HFQ++QNWcWb6qZ8aWgW8CSd1Rw2v78LoFFAnVUqACppxd/mrugyYmCf5cPYwmz9bqaRdXTJXHWNbYadWmUrg/cHTYvy1EepCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769532711; c=relaxed/simple;
	bh=0/gTW7bor57iy5w64fnPV26UmwycSkGkW6ruo+OWADU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X+cuj/tjOhB9AP71G/6WgwZpVYX2m9o9igZvqaXXmPdlwvtbze1myMpl2ATE1vw7IwPLAAmrq9lMpn38nkuMEbxmOr6qhx21G5hB6k1cDBZWnEzPGoQqULIgZs+0qw6nAnDbxV4IgSzUTUtwHB2a3D3CywOZXRmAVUdhllIp+DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NG0jul8N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZjECSYP/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAOoNq171359
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:51:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wwxcj6mRk5Q30Cl+vWJ0/QTM
	svRdn1mFr6ryQOZbvis=; b=NG0jul8Ne8/K2FX+ue+cXvxm5PHIy+iKemXCs/nU
	zcY+cbxDPX0i5otqCcaequa6zUOCwT7ROZ/v6estoNGCoZyHROkBv1EFPIkVmz4+
	TuT5e9wiWBBhhTdNkSLg0TbbD8RINPoUtGW0nWZzrVURk+YiaP3z+1ad55pgaMsL
	6TOK+cB3zaEFcQSFYJyn6StkOT5eQFRcjObP5BzOyoZ20rmy6y/Ij1kYwm5Kq6R2
	w9WVrvM6pmai2tdVN8MjEBFi1PT51yU0bZXs/uWDJCQceOf/WuzPLHC0+z6OABSt
	5tvDVCcTijMJFtGZXcdIrBCG/WCsSnRHcdgLyr8f8M62jA==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a3pyg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:51:49 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5ec8781f5caso16831882137.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769532709; x=1770137509; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wwxcj6mRk5Q30Cl+vWJ0/QTMsvRdn1mFr6ryQOZbvis=;
        b=ZjECSYP/U5CyQ5gsrZjxfiEWpwdxoBpWiWJLr3+QA0Bbo3NoCjnvVggvdZipIWyDgf
         89M+CQawumrUjymCXge/rne2LQnDnaMWJuGUSKkgohUpSSu+5atZze66UWJJfKEUy8qL
         10lTr2NtocK7gBVjYYs5rmBhQF0UVBxX4rxv2h+SrFE4D4HlwLhNFrovDEKCHS9C99cf
         RTaM1AwFcVwrz0ayZtZnYu8sm52ADx46NoFc78PoloSA32jketIKiD/1EkNfnqXr6Y4Q
         TDZ0wmWc7RE8P8vZciZrIZRbnukI0d/Er2TtLPxgRrl0DhA0L3av9T3mRUDOKw7wHMEN
         KKHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769532709; x=1770137509;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wwxcj6mRk5Q30Cl+vWJ0/QTMsvRdn1mFr6ryQOZbvis=;
        b=Tfcj6rssFC0OU46p++TAuX/PEC5b7+Jz6UuDMGjIskXGg83D7i8efbP5lJqS06a+Sa
         LAg5aCcFbnh3GP4FT6SBje8KTZ7LTr4MDsmn9XGHPp4j+7D6xb0dYXZFo0VIujWV5UAZ
         cpYRrlEL043THb+TVV83ALGRzZ/T+jTn3bgAfIBKN2p8me04CTuItum531iI95EAYHdS
         gaBSdI7rIbxSsKE5qgEoui0PeZb3un4EiPja9QtLhsJz7x7hduwEeO7tDneNfIZm6XcL
         yPUm0bGioOVXPCxnNbz0Svp4a57V4uuCR6Yin+OLZr0U5Xg2kOPuySxQPrv3/D0TWP55
         OJsA==
X-Forwarded-Encrypted: i=1; AJvYcCUJNklCVQQUnSqS7WB31bU80YFyb+RUe5C/VOnMqww27Cj0LhnIPgFI0W4CG/B/iu7gnjcFMHo902ML@vger.kernel.org
X-Gm-Message-State: AOJu0YxKAInZmmdaFaBcKY6MoJ1wKF31hVkj1T00cGF0yRmnQY1BkMyu
	nbixlm171I8aDsZIM2JV6ug/1KiyCVt7+aFCuU8O7YWkXvVNnuuVmqldo19zIUz9q++pGzCgE0H
	12yVFWNOUoXY5nikcEw4xCKBG56aSKH6YyIZd/Ix8RtPzaew+0is0ww+AUJogWFDl
X-Gm-Gg: AZuq6aL9qLdPlrxXEpG4hjvs5fYUCkEycJegGLd75s1DiIq0VE4w8YAcDdhCNzgjt+P
	Ue/EOW/MIF1ZriDRfdoNddjrZMXTmc3Kq+TgbUrutQZ7O/PXzF1Ee/pbRZ1ErPlGIvovLG5iHTR
	BI0y3aYUDP6210GndMyOycWWXSy0Dt8ohNgl34hq2AAxwRRTdF+kxS0q/fU81s/2QP8niC1L86M
	ak154mkK6nw/BizGFWqyeWAvXhbbnKKKiQQPMoG2HZXfLfdkK3eHBJkb0Qz1/WdDBpqNlkH2ESo
	iRJysa4Qsb4bWwyqF+H4nH7KObt49b/PfWrknye80z2gnFrSRkJTXjMX539bDWcT1GX5afOnx3q
	I/q76hW7Z4Ze9zTAk7CSYpFZ8NmZHjRNkMJsyguhgxgQQI5CSay9/ftKScGK1l+KkLDrVWKSc6+
	TFmxVpe3otvjjZgWf2FDNCyA4=
X-Received: by 2002:a05:6102:50a5:b0:5f5:46f8:466f with SMTP id ada2fe7eead31-5f72363f336mr1057415137.17.1769532708716;
        Tue, 27 Jan 2026 08:51:48 -0800 (PST)
X-Received: by 2002:a05:6102:50a5:b0:5f5:46f8:466f with SMTP id ada2fe7eead31-5f72363f336mr1057401137.17.1769532708183;
        Tue, 27 Jan 2026 08:51:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074819d6sm48722e87.20.2026.01.27.08.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 08:51:47 -0800 (PST)
Date: Tue, 27 Jan 2026 18:51:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: talos: Flatten usb controller nodes
Message-ID: <w2qh2jjcltzwwxoyfs5b3ggwvn5xdme4spdk6d4g2xbwegfu36@qh5oxsaljqpv>
References: <20260127155537.4088709-1-krishna.kurapati@oss.qualcomm.com>
 <20260127155537.4088709-3-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127155537.4088709-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzNyBTYWx0ZWRfX2AvV6uMnSQlz
 B7VtAfsn1mRhTT0P2captz96pf1n8/Q97i9b160BcEAxi7HZN5NQqtE961ulno7khx0yqSDDGQP
 bxGUvCqWNz/BsU+wHTG3c6qacTYVtlvjFdWOxrQg+xMGwnucJ4IINcaILmmbFwYmboKPK2qq7HF
 hA3pMTZCZF1fMygpA+qer5SbgE8XmLAdZLTATHqZsR5wSLyqzUe/Wdni/ziLQ1PiQVJC9rq/pIX
 DwPQeh1hOgJrnaf77MM2h6HnX2Y7icSb2mxPn4STz2EaFTi6JtGSOmAg1v/IOTdWy1knzSIZtzd
 5P+nUg0U+/ictBENCsCtqy+4xhzKsT2DufR2615ZuTpBLfgMYpUlEoE2JgwFSSWZqRoy7AtOiJQ
 GwSE7af+yG+3m8oGcrJKAIafDnERFQeae9mtViZjg5T+pNuJ6TFM4t61hcDTpbcXmTTe7xZTypB
 EVRUxS7IIOiYEObVvSA==
X-Proofpoint-ORIG-GUID: fQmwLBAg6Thfmk4P9_jQZfypgEgsy2rC
X-Proofpoint-GUID: fQmwLBAg6Thfmk4P9_jQZfypgEgsy2rC
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6978ed25 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EWyAuBf0Nt3ETjVQhn4A:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270137
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260044-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3AA9E98020
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 09:25:37PM +0530, Krishna Kurapati wrote:
> Flatten usb controller nodes and update to using latest bindings
> and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 12 +--
>  arch/arm64/boot/dts/qcom/talos.dtsi      | 93 ++++++++++--------------
>  2 files changed, 42 insertions(+), 63 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

