Return-Path: <devicetree+bounces-270015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCmdAYGNpWmoDgYAu9opvQ
	(envelope-from <devicetree+bounces-270015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:15:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EB41D99A3
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:15:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 31B83301FBA7
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACBCD3E7142;
	Mon,  2 Mar 2026 13:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k4mbPpKN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I0evF6f0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6952035DA45
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772457334; cv=none; b=XsAT/J6Nkl65fDRw9ENG+bC0GR2S9RonSOKC8aiPRVZdROQSkxvBuR4PhmamVtfqmkvHzrs3i3ZGl7lVBe1ERFdWzUXB3ssqwLE1H9ouEIwu0dFieat2Ip5qCD3lktNE8X1KkL9h+jwRU7eTVHrxIxKiKk932XBabIWiimCovWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772457334; c=relaxed/simple;
	bh=2kJkiDJU3bODKAFmqbpKedWpQJLTCt+Y607Vdp6pIec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BKW491Er1gbPnOZRPdFDXfJ5ImQk3QcNfs/3XSREvb4u8eUBtA3hwT9z8JNBgR2n/8DOieBjl2O609Ucr0yA6bPmk5MPaJSNuQOvzZnjWeUaGWdE3FXSIFNi+BrEDBa0pOXkHi6NeVZGc697OIwbr7zBaD8/Z8kZrwp5BooUCvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k4mbPpKN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I0evF6f0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62294ssf1291635
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 13:15:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OhkpJKWmWuPFZ9yQlNnuBWCgu1aOk0v6t2j8gXLrTAw=; b=k4mbPpKNE7NeMdYt
	O1Mr0HCB8bASBnh45d4ZrLgCgg201TbPrVxp0E3MoJV+DyDECPRxzTloYIX7ulyL
	jfUTMDynK5xnIQFw0g1zg7d100vvZZpASCeHQ1loo8ItskC6D/SmX3i6oEEq5xCA
	UO0Q9twSn3BryqMgM3VVTtRTbL+IL6OzuaelRNTPwLDB/NL9oRrjoYqmOhEL9XOx
	eCcarJqR2UvXgkA7rrhMgAxCN6AXDQtO5J7z3mR56rtIp94Zz52sEfQoIemPNbV0
	J7N6hFmYDNo891ujrEvLVGcQqEapnFBvzG0rq+ujaDo7FUfEIVlZvDMrb88B3F9v
	ikj6Xw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7ku0t6r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 13:15:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ab7f67fso5546494485a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772457327; x=1773062127; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OhkpJKWmWuPFZ9yQlNnuBWCgu1aOk0v6t2j8gXLrTAw=;
        b=I0evF6f091oG5d/7rXkbf3svzocHh5EU/ZsbXnoVBcivzUDWWAzBucQTd6v510ZUFi
         /M1t3zTvqWhLyF1WWU320pyKmN0xClRQngkMTNJkFM0Qt5wlwaGujuxq5rO1Bp/I3Df8
         YEdXMIpxMGXGfCC9jrIB0l7GBO3SDcdtQOLGshIVJjZ5KmfjqeRVQ3FLMidvbglbBwmO
         /eNGaoxv5wGI7DFFvg7qeA/pCUuYgSj+qPNzUaIkROk2Q1Xx262RuhmZPplsk6GEvmfp
         HTfrtzr5UHsoFMoE+FkMvaNRhV10BAm2CiB95kgfr5w9EqJ1XGFeg8v1Su1LvyamQfe8
         BPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772457327; x=1773062127;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OhkpJKWmWuPFZ9yQlNnuBWCgu1aOk0v6t2j8gXLrTAw=;
        b=tTbqlD2QSa5glDoWFxHzwfCFSC8DBfIifzgzK1QWYfiJfHLbzN8TWWkvoglP5IoYx0
         J6nIuNWJcqTeqEXW6TpDz39Ewylg1jLghJ2jx0XD4Dbxspf//PZmWSeRiyflSgUSCppw
         2aqAVf2oWMwCQpyQQheM1j4Q4r8t67U1X46lj2v/jlXrbKCxBX+JkYPWEK4AvthFbdhP
         sI6Ml2NgV+L7FjOWs7lU5N1GY8CLjUyBreyetFDyECzg5zAQwAbL13ilAFTOMbFCMlBx
         VsKNoSL+2++tpEw6jm0kL69oDItZofjUdDOC6JtNDvdIrRUU4VzcFi1r5gIoUGMwwnVI
         htKw==
X-Forwarded-Encrypted: i=1; AJvYcCV0gjRWww6w93syXlP73NTDhmeGurjPiPkxsT2hhAGhEzGjCAoo2/UKUiYTQ099HPMnz4VtosOHMCSN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp4IwIIhg57Ey3fgbFyPJH3bZGytdgLzhbhMRUvaA9AVlf0wdq
	pp5ducJmfVpuLAoaHU46TKFUi64vne63i7qvKsnIuwidDs0cXJoYQUJ403mZ4lmbaIFqDisY+Nm
	bXa+4eujviJVtIix+2K7yqGJkNtFZMFFz4rr5XGfqfnnkIb0JLo9dAC5D2u4pH9GU
X-Gm-Gg: ATEYQzzt8HsbILghCFcaM/jn8rHRYVMz+ZeUhPrlWAIShy+K6nkFnuL5NAQfnhj/2b0
	1tr9ztnExFhGkn8Tg/i3HQDswlAI7llTyCQ8phbiKOVvuUZubrkBjKBKs5I2ZrnMkXFkvI3WqbE
	UR7EKKyAFsNYDOdpvVoIKgAmiA5B9+mPWAeXX3QY29ImW4i/mCtFUHxkBJFo89LY72/jO7XHDTZ
	duXKrzuRv1waPjPSA71vJBEZUAPl09IUDGjm+wdshYOWNGrsIiAbzMaqI78Y48AX9PeeyZz6Hng
	Z3H1wEvaazK1prf2IQ3VrGB1NpUxaaJyDpNd4G160QdWGLfGzIZ+jRgh9cEZZKdDvs9YlrYhaeV
	BkdyfY4yepUmv0gtgI4cjFvkAlM9rfn55BUtCimkGjtPB1s7MGnvKOblDF4/rFUslOL4hA9CsYj
	AsNM/yGQcFCd+L8nHD2SPP+nGj4cjn2hpPMj0=
X-Received: by 2002:a05:620a:4451:b0:8c7:acd:eec9 with SMTP id af79cd13be357-8cbc8dee809mr1487952485a.28.1772457327098;
        Mon, 02 Mar 2026 05:15:27 -0800 (PST)
X-Received: by 2002:a05:620a:4451:b0:8c7:acd:eec9 with SMTP id af79cd13be357-8cbc8dee809mr1487946585a.28.1772457326578;
        Mon, 02 Mar 2026 05:15:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2f4b158sm27060481fa.6.2026.03.02.05.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:15:25 -0800 (PST)
Date: Mon, 2 Mar 2026 15:15:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        manaf.pallikunhi@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Update TSENS thermal
 zone configuration
Message-ID: <f2azsmm35xe45xrtzspp24vw7lh226pztewlfgmqtnkam2h4fx@gstiujtjzsb5>
References: <20260302-higher_tj-v1-1-4c0d288f8e7f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260302-higher_tj-v1-1-4c0d288f8e7f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=V4NwEOni c=1 sm=1 tr=0 ts=69a58d6f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=8V18cw6oI9jMPSUKXXIA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: bGIIy-BwVZHVxmaITnrUvyHf7veLRyoE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExMiBTYWx0ZWRfX305QgwCgLzqV
 cAg13YGFxomdbdVOok4BjNhy4u5Sz3SBVdJQHKnYUIc4JN0yZsdIH61fdleXcZNNa7RS0afD4On
 x4w9xsd5vlcQh52rm9ZNJaDY46kOd/O+vlkD4zAqSotGlLEf7O138wBG2xCVysUH678S0pG3JZa
 kVVH9nI0gCGxflO0wVBPnBVTKytgi/pRn04zM8y12T1i4n+yVjx1oho0YcVw7vjXVBmvkSoh4wz
 9oyjGnVFI5kJslL1be48WoILwgWgokJXtgF5pw36+RELodmJU2Om2HcaM7CrLkPjWNzJgWP4idX
 spbm7o3c4ZqCiuOOvEukVthJBuuEk/tXdoOvx0bMpiiVqdkau0+zz+ZDvmFEC6Q+/GIgEpf+1jQ
 8o+o895Y0SCwfaAwmYhOMVGF2EDexJkpJtQmecDB7AMRKQiIhRPcHyAu7BPdGlCwaDOKFbJrf37
 FSO+QyXq0ekK7vIjlGQ==
X-Proofpoint-ORIG-GUID: bGIIy-BwVZHVxmaITnrUvyHf7veLRyoE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270015-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 97EB41D99A3
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 05:00:28PM +0530, Gaurav Kohli wrote:
> Hamoa IOT boards support a different thermal junction temperature
> specification compared to the base Hamoa platform due to package
> level differences.
> 
> Update the passive trip thresholds to 105°C to align with the higher
> temperature specification.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 66 ++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

