Return-Path: <devicetree+bounces-265374-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGk5MDo2j2n2MgEAu9opvQ
	(envelope-from <devicetree+bounces-265374-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:33:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E68137146
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:33:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01EB7301778A
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D5773563C5;
	Fri, 13 Feb 2026 14:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L9Q82LAK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="amAie5Q8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234F5239085
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770993207; cv=none; b=kYbSOIwpfhmAf6+318WUnQ1DtseFPaA0bALoowisdWrbuX9nobboIA1/VXGnj5n1+EfKgBurZV2gzaBdMf2/v1Bti58iRq0boKiO+gn3FOOX0ycJxGr7jnzrmAAlgFqEHHAGf0+WhFa6bpYJFfnlgWG+gTURmkmwkrnqWK/QRJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770993207; c=relaxed/simple;
	bh=68E+T3PGFuMWflggEx3SBzlM2xkC04IpzybUwLbDYPg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eO8tQime/zxuLInQAHDmc7sW61sny2c1qQMl138EnpeWsx7iFCNl2vnIUhNq5+l0QtIY5RR6UZMbh2tNgIqrHtGJ9NaPj5eZI0wfqsSnLSbInsgBUNRzKuQ7zeI1hOhXrdVu/8fhjbNm0XtzRlUOVZLTkl5HIEMnG3E4x44XRZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L9Q82LAK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=amAie5Q8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D7TG2b3046895
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:33:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tyIzdXSy+XMC6Jjitt8Y+qcd
	oD4cwJ3GMbkRA9cZEwE=; b=L9Q82LAKZRqq2o1ywnWNDX9lZLzdFjx+HCCtXixh
	xtojrADUTjX9kYxtwRD0dVO0YkJNeMMZqmQCJhgZmh4nQiKvFk8q71CftqD13fwb
	NKEOG5buNgNSTt/DqgMtUh7h2g3eZ521hvJbh5JO9OPTg6k+WFERuZhpD1G23unx
	TBYemUlHnyfZjROyucYlbrElYVXMoYQnz3/M2IHtLlr7s7kknBG4Iwj3j1Sa9IDV
	YmfI26fZLPFlG+NnCk1thyacwGTPor6OFngVjaTJhrhKlYte6SzhoJo5IA+IByGq
	L2yoetPFyg4h9E6oLQN8c9reV/W6ZdV1i/p8/hgfq+iyrw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ps2u555-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:33:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71304beb4so286119285a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 06:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770993204; x=1771598004; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tyIzdXSy+XMC6Jjitt8Y+qcdoD4cwJ3GMbkRA9cZEwE=;
        b=amAie5Q8WrdUFbnQjns7e6UBCylUnQjPJyNYZZUygdPKt1rmxcXZnPw8CPT89ppgCL
         WMyHf8VnCuTbbZZUaWXwWAXPgeHoR2/uPrK6Dwz9b3SAfr1WJGTOJZXfoM80JCIBNSB4
         3db9NabqAz60KWL97UZju8ePoYzCxwg8kV/sYo73Be+ubPMdKNn3Xku1p8kQK6VqBnPE
         oW8xmIdAH+FKVQ+UcyKSBdc8Ngdw8zbacBN06wpzDRCA6V1Zyj8WfuPsY0Sqea6Y3/vH
         /fMOjYx8+pMlRUU/O1phIVyC5eFKBex+EABd4BCG4yO2kX2aDIm1uAsEgZaDmXE2hxkS
         XRGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770993204; x=1771598004;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tyIzdXSy+XMC6Jjitt8Y+qcdoD4cwJ3GMbkRA9cZEwE=;
        b=ZxXWx/Merqf9rjwyWErUOILVLme7/CdlvRT9tJFhiEp+Ccp+wDZmB3WHlV/0ap8HCZ
         eoTJJMyzwD8ggb0wOo5ptKUEWUNK5Ebs1JNsUg8Z4pvwHF8mYRuiMRqV4rPkLqXsWpwj
         2pnH1VtPlOB3rnQixSTO/RZqWi7WYEvB6wH1wwyqPoeApsCEy2T79Z08omzKYrFdmgEU
         1qxlOdtEmxBD9GdD+jXEFEhJAaZhqJhGfMVmt9IO4QhSzShHYZB5cnpN+eRrp3b9dDvY
         vOp2abLggNY6iAtZ5NBMlBSsffQ8PeYgO+ryhrBm8bBUHwfB6eQOPXRY4nv2qRsX2RGc
         2pew==
X-Forwarded-Encrypted: i=1; AJvYcCVeXc1KXU8x04+PI7U9tzPqTH33/M8SjhOXA7riiqlelXQsSzrTREdDIQi9OX9IVdDIJue7YyNcrLYj@vger.kernel.org
X-Gm-Message-State: AOJu0YynL0hDPUY5CRsIAyYm2QpB9rSQ95crJGz/s6N9dDxwtxbsYSuu
	LM3TUno6nxSlq32M+2p2GJXjG43IUPMXeeE0jFj4+Meqqdi+rayiJIa9dXiIUbacj5qpXWbSYmh
	+jehbIZOjCz9Ht8kiCnn43WoXJVlqTDVPcGBWiNqdAxa/3K72sYa3T9XX00+VCDcv
X-Gm-Gg: AZuq6aJicHQ/Dj1vrSwUd3cKMttqnAwQQPVjzcp/u6m8YVQL8S6ELqIrlFdlfuDtDJO
	pz5glVDN6GlRbdB6fMi1Z5kxya/P8AQXOWmNOjivo0IvM0VwHaOmciTqRNS1i4wXrPlTMDO78yN
	I4Dj3ILomCEN/muxR7X56AiQXYL0ZwyJiUciwjKSRl6HhB/stgTfYdizfhCGEQKAjrRVd3p+Onc
	YO5BEaUSOkbK47YTIiFgaOJk09eH01P/IwBfllW1icEr74AYFatvYbCg+trr0FVn3COBUnJbSfE
	vQUFe53/WriHEZpHJqgxf1LSvV1hdqphOO3cycF/sI+WTwbkz85av+/j13B3dgLOTbwlCJHkFyv
	CWTCTC+oWbf1B09lGTVFQEXhwIvFaYIVLbnvGCpldZrGofomjVuy2abAiJXinMqUS8PtPZ3P4Ml
	PzAq3QpGw6vSmbFzhg9PJUxlQ59nA0YJGYhMA=
X-Received: by 2002:a05:620a:3703:b0:8c6:ae3b:e134 with SMTP id af79cd13be357-8cb424c4cd9mr242312985a.90.1770993204349;
        Fri, 13 Feb 2026 06:33:24 -0800 (PST)
X-Received: by 2002:a05:620a:3703:b0:8c6:ae3b:e134 with SMTP id af79cd13be357-8cb424c4cd9mr242307885a.90.1770993203747;
        Fri, 13 Feb 2026 06:33:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3870689ccadsm14892281fa.11.2026.02.13.06.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 06:33:23 -0800 (PST)
Date: Fri, 13 Feb 2026 16:33:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: milos-fairphone-fp6: Add Hall
 Effect sensor
Message-ID: <qb3zeuhh5fjteyjy46e3dbsx7ktqvnuh3snqmcvquajdal6igm@fqwv7436yw3m>
References: <20260213-fp6-hall-sensor-v2-1-ecd113d4919c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260213-fp6-hall-sensor-v2-1-ecd113d4919c@fairphone.com>
X-Proofpoint-ORIG-GUID: 3-RB6rsc3kvhfX-2ruT1b3WLbg9Zxiki
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDExMiBTYWx0ZWRfX6wcUGsBHjuVK
 LZeGCXinhB4H9IWucmagXUVp51Tapj7a4nE7WlzxbqK5Bde0xz1JfnL2VpxWsNiGrQemCOWRlKp
 yApWJLH6s77w3zPYaCDozkWeZODxyvsHzB+Zr++ubk8GeMsTK63vf2r7R7E5lzxIl1YuDX2rVC6
 6kD/mJb/qn7uFI097Bh4Dbs8/yyp4Cfz6xEjdMQrh4cVEO45AsZiN+RwtyMwsBz6S9CiTEBLj4w
 DY6u4yaI+vVesWMmlf16rhn9j8Df7rJoi9bDz6ceTz8XxndE5IHJkJ9bPXKgG8yDucux8ffsBiI
 liiTl1h2svFDN0stzmuSTv+ZcNvxi8TALYa6dMMz7Izxh8Cdjl6Gpmt9XcPJeVtu48EgQHx8vUD
 uCM2+Bv2QiGA2KXaFsQGn+ywwLFyZsnfyCHBzoH3sFSVdRwme6gkf2XgL6FMzCkL2IpQ0HltJ+H
 TvVlIOSC5U92DHVEHpQ==
X-Authority-Analysis: v=2.4 cv=LoOfC3dc c=1 sm=1 tr=0 ts=698f3635 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=6H0WHjuAAAAA:8 a=Gtky-Hnke50i5UAIlhAA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 3-RB6rsc3kvhfX-2ruT1b3WLbg9Zxiki
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130112
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
	TAGGED_FROM(0.00)[bounces-265374-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.sr.ht,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D4E68137146
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 03:21:06PM +0100, Luca Weiss wrote:
> Add a node for the Hall Effect sensor, used to detect whether the Flip
> Cover is closed or not.
> 
> The sensor is powered through vreg_l10b, so let's put a
> regulator-always-on on that to make sure the sensor gets power.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> As pointed out in v1, this would preferably go via some vdd-supply to
> gpio-keys, but this support does not exist yet.

This usually means that it can be implemented by the submitter, sorry...

> ---
> Changes in v2:
> - Add pinctrl for gpio70
> - Link to v1: https://lore.kernel.org/r/20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry

