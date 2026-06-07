Return-Path: <devicetree+bounces-307862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HkkoA+2+JWoULQIAu9opvQ
	(envelope-from <devicetree+bounces-307862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 20:56:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6EB65152C
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 20:56:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=GOn1Vv18;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=LsbmPFO8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307862-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307862-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 644B33008089
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 18:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9774A317163;
	Sun,  7 Jun 2026 18:56:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDA32877DA
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 18:56:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780858598; cv=none; b=d9MlieUkBunUjVezFu/GaRZCs1iDMO2O1Tsq3MGEyikN77nj/TLkus/MYC6Eg9xoZyGQq++ohD3CsAPv+LqRG2OY2k4lTugUZoEfqFztSMGx27gYGUR9M6J3bT9HlmWN7JGhXDavuMpm7ZPaS/KVS41Iq+r1W8hf5/UHz47ExnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780858598; c=relaxed/simple;
	bh=JmPAtyIrInQ/N5JA6jQcrA5nyIE6a/SsLXHzgWabEc4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PlKiJW3HubpEdPgB570i/8e+MZiSDLdawfLxZuUyp56La8R21hmibQeSP8tZWtyIRRYdwsnBlHZ0npi/V1Tt9ud+b7MNRWROK6XyXn1rdDen71umu3FmjqxD9URbpsr4Fs30BkkdUMstzDng/8Jtob1jRObKSuaq5EQ1hVEXZAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GOn1Vv18; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LsbmPFO8; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657Elqwk867542
	for <devicetree@vger.kernel.org>; Sun, 7 Jun 2026 18:56:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UOeD9y79FHj6oJovegb4Bztj
	ZrmipHoSab8dsEQjFWo=; b=GOn1Vv1884cefyitBCivgov44/8qYEbLqvLn4ezq
	uRn2AJfUqQnyf/xZL9TuytE3/rPeDhgq0vYZ/pHcWd0PSjB2YGxPhnjxq9JTw8l/
	kxFcjoo7qGer3WPk+31CVEo5WSivAWZudSLQBEOmpAfhte6nIWgJV6sRT+e9rbEw
	vEGYNxeQVHmYZjYIOWHCVpMfoBzfv2u597jv26uMP3i47SOndcO/t15ls57XTWMM
	/nrF+giNB29EBH8Xcaos/3zpszjb+q+fFY1DsfnEmnBH7vDM3guVafsOZKiDTrqw
	UfdyGlhoos0Vgy/7el3kRBCYdogFBzTWPHWglh4rbcYiRQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emb4w4m3d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 18:56:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-517a00fbac6so18392001cf.2
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 11:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780858595; x=1781463395; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UOeD9y79FHj6oJovegb4BztjZrmipHoSab8dsEQjFWo=;
        b=LsbmPFO84Hwq8lUX4C42njseT8n5OAt9qEReG+Kd3VKuVBn1whoXDGF7F3D8DHhG/P
         nf3Rla4Xg4tS1xxj/keG2UfeE+SdsA7y53Fb/irzYD5Rg7gmZGVKFnGz8z0S2JHiEnTY
         QtPtChiBURcyGIzHwJvOVcoHmtsTbxr8wClw85o7IojgFkNJNQekJ+IjAgT4Ir8WMpLI
         EZQPIuLMThm3/xJ2wdlQt4HeQV+K5JqYyBIzyg2tewEIS5jn9tOmBYYDQ9nBG1xo+NEZ
         jnhXG9/Q6CqnZxTKahJsr3fp0/sLpnglUB6SdM9zCPma+9049Q2QFYYzbPPirG3i+Q6m
         DppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780858595; x=1781463395;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UOeD9y79FHj6oJovegb4BztjZrmipHoSab8dsEQjFWo=;
        b=UMLcm+WYotqTgmbpUZaqAo+VA92YdZXZ/4aVRl2Ik6qrXYKEqs8iGUaUWac2Pq2fDK
         8WDTO5JfcHDkrILIS0OzEgGeKOEgjqJh67XMqXiu9YSvvwbLJiezTsj8Apva2+zUywmD
         cP3pmJ0O6hFzZYyGCUa4leAT5u1DaykKsbmN1ULhGY14JwNhizdndTru7wI6WAao/gxk
         k+Ext4CQ8EGKFOFtKd5XckJtJ5sHIG6ZZeT8XH+pzvdfdnQy3RK/laYUFch0eZ3fI+/V
         oxApDvp228EusGYR4+6hOU197syrrfZj+uPZaOszocG48fg3NC69x2OQf7eTg/XZye1b
         5YSA==
X-Forwarded-Encrypted: i=1; AFNElJ8aFKJBmvQ98Z7+1PpwBgzW+lf44XGp2iXrPYdWOrBdB5VJZ2jdXQUFfDAmDjp8dp7KsmlLyMph9Esp@vger.kernel.org
X-Gm-Message-State: AOJu0YxQwxzUFsRnOQUbnyPRHPCpHVFtBgIXruNMvRYn0Ofgp27z6Q2I
	y7Qz5V+RetgI16aknG2oTSC+/AC+HKvozG2rOfd3eI2fD79QDUWRjJJlPdyZ22MIeTKV6rBqyvD
	I8vBI/QnD0J/bnQjtLGbYVqVyHviK7q3kpnBUfFfGE1dXNxste6hemnZdYLoWeyPZIdSIIxAX
X-Gm-Gg: Acq92OFK0ZnHt1YyY6Q0quzM3/d9VV5x5UTEcHSNBTR4xbeSgWg/1BDOjitlaSmonBE
	sV/GOH77+a3r8r0Q/RXx3GMLAylgjA9+gXccInlQvgGEWeufpfSwxeU9VSfaamlrW0zPobl2nCx
	InePBMIBIEV+rsh6Aib9N4BrHHVsqlhk0dQAaSt7Nsh43l2BQtvtDZQV2+KGx+pu7g3xxxN9CZR
	qsyi7THQg09zfvhfAfoY8tnwDKHWiIYOAIozOVvF2iItBXcucrEJ/2BEoBXbD4cK3Qb/ZtTx19i
	Myz5Dw8AynHxq5I/q7/sCeMOiiOv0v7oaSn7wPlTZeJPXfjjJqQ9BY7KBbqxO2WoI68Wa4SdbJP
	/hR6BPE8O2XdA6uZTuVikJx2g3cdYZQOYc4vZTJtObo8tLEBDS8XiodWuD962m1L5yVXbwATmm3
	tGOaUZqZZYWuys+RjuvFfKlq0BEEHJw9q4aIPCQhb15Xq/qQ==
X-Received: by 2002:a05:622a:2608:b0:516:de76:1d5b with SMTP id d75a77b69052e-51795c52edcmr199894991cf.32.1780858594961;
        Sun, 07 Jun 2026 11:56:34 -0700 (PDT)
X-Received: by 2002:a05:622a:2608:b0:516:de76:1d5b with SMTP id d75a77b69052e-51795c52edcmr199894631cf.32.1780858594531;
        Sun, 07 Jun 2026 11:56:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396abf66b1csm40343761fa.9.2026.06.07.11.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 11:56:31 -0700 (PDT)
Date: Sun, 7 Jun 2026 21:56:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ajit Singh <blfizzyy@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: Add Vicharak Axon Mini
Message-ID: <c3rqwxfbvph5i6ejpm5bzdozab3cfpjyktbybf2e4idacxqrau@rh3el4dgv774>
References: <20260607113658.25117-1-blfizzyy@gmail.com>
 <20260607113658.25117-4-blfizzyy@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260607113658.25117-4-blfizzyy@gmail.com>
X-Proofpoint-ORIG-GUID: V1NnxAPctY-qJnObWdQq6MPfspVlLU2S
X-Proofpoint-GUID: V1NnxAPctY-qJnObWdQq6MPfspVlLU2S
X-Authority-Analysis: v=2.4 cv=YIWvDxGx c=1 sm=1 tr=0 ts=6a25bee3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=K_x56oIxuJ97mMCJ5C4A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDE4OSBTYWx0ZWRfX8V8lb84xKOOL
 zYMj7gWDz2sM9wZTr1x4eZ+XmtR/OjNy90IV2ctG8aTQyuqMkf0Wa5fGRDu1g9v6iYzJY1WvwVi
 yh6OOcnZRK4rECqdAxodj5X+5lP4mACVtndujEWWy/aDvbiHLeBkOceIhXD0SLnk77PduhyQyy/
 KdnLGK0TOLjNbKjKwCQcjBTfrSDH3p7QktHkYhzu/pYZxQhJ1XtXNe0nGoEa/QGbU4sAB1d3HrB
 7hX1I3OUgns1qKN+vEE15ciKtkxevpD0I5NHXrVISmcyD2Ax0yl/mOf581oIBqxLXfQdft01xg4
 8B0DjqMwKvgbmtdHl3QZdkkWnQdp0+uJVrYBudh7uqyxbrJp6firavgtNhtr417lLRZjFvUq36p
 NQ/QN+QOMC8r6oRQ9hkWYdH3ErBQTITK+nS0GaaZ+1t+67dVRAXfKTaNdMwo7wr7YZoPeOFwxQo
 IQmtMKdmeuSKzGXxxWA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606070189
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307862-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,rh3el4dgv774:mid,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:blfizzyy@gmail.com,m:andersson@kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F6EB65152C

On Sun, Jun 07, 2026 at 05:06:58PM +0530, Ajit Singh wrote:
> Add DTS for the Vicharak Axon Mini board based on the Qualcomm
> QCS6490 SoC.
> 
> This adds debug UART, eMMC, UFS, SDIO WLAN, USB 2.0 host, PCIe
> support along with regulators.
> 
> The UFS ICE block is kept disabled because enabling it currently causes
> an SError during qcom_ice_create() on this board. UFS works without ICE.
> 
> Signed-off-by: Ajit Singh <blfizzyy@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |    1 +
>  .../dts/qcom/qcs6490-vicharak-axon-mini.dts   | 1027 +++++++++++++++++
>  2 files changed, 1028 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs6490-vicharak-axon-mini.dts
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

