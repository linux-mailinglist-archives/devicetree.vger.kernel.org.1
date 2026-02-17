Return-Path: <devicetree+bounces-266021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF/+B/wjlGnXAAIAu9opvQ
	(envelope-from <devicetree+bounces-266021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:17:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 401FA149D54
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 24CAC3004692
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC2792DA77F;
	Tue, 17 Feb 2026 08:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kJ58iPct";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I8uUKgXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FD11FC101
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771316164; cv=none; b=VnfLxtGcEuaqAGRM2n5xqft+wJ1FjomjeqX/HOHRLpRjEVzP3Idpz285FTbm/qGwMIsmMzW7kXoekv1pm9rSM92/2YnapZquYB1iPkBJzAX9Eb6/Ux3QaL5hjSxbhHznPcMje+yDjQ2h5iVd33Y5ND9OdlDL67emfXezS5cI9OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771316164; c=relaxed/simple;
	bh=B8POv8ZIKsRgvCr6Pbmc77ycRPgPxdSfwEH+5j/FWLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GjvAc3XgyJgbymBrTQK6txq7dD2XkNc+M3nuuOv+YFFnOLH4rXbEUCyq9w0wpRs6fGi7+1Tv0w/1PTNOy7dyqJfJ22dT1lzEsp6BkOMgxRQ5RU0Bvs6vqkyyoUXMBAam4xBaD7j+inKCX7Aiw6LqW73vn8UAI2arZkBNpSSwfdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kJ58iPct; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I8uUKgXx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GL82RM1614018
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:16:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=L7Se9ZozDPuZSwTwJ1P7pdf1
	wL0THwc/KeQEqUqTJZg=; b=kJ58iPctnagvC2lIwIZ+tUtNaI3SBiZhGZxUfxy3
	e/OP35RiIWwvEksFW1LGY6aPpwhNJMvskrhXbT1NlBvVwfbtUMHIK3TkuakV9rF0
	10KOtj7APxCeNffFXjPO6ZknRDpdPzq+SDPX68KsnUb8kvtlpE+Nf6+xKzerzZud
	JAt39Pn5Rnv0VtJArp2TjTQL7oQJLIu+NdaQwDRmKiWTvPAzP7MmFA5kuUIa3xta
	hqpM9bT0HIHXwiq15J+lOVPetBqwABI/k+FEji7I9VAY+EAqxnN0wXnbOP/Tcfui
	C98i5h9oyRtFuNmL6Jbdw2FodZ6EBGVRePZWz6cu6vpKoA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662snad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:16:02 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50355952ac2so239632951cf.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771316162; x=1771920962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L7Se9ZozDPuZSwTwJ1P7pdf1wL0THwc/KeQEqUqTJZg=;
        b=I8uUKgXxgBLZiul76GEtQW6Vx7kKcDNEV0Ahc2sPR7ky7/LW7D+4GqPVqx01afkSoI
         F08awKrYyZFK6K90+9aIOJ+xn6VI9h+WCFaNWtlC88+Fg1mk9s0AE8hRu2bDT/VgizA0
         e4J95hD3/FkXxq6/gKnVUkbhSDYIwyCw+l05NMjmpGQwgUYgB6aS0xepcdt6IhKcbzSl
         tsq23IX9eCKATUt1PHwOZl/KSitRi7G5qPnit597eR2wm5dOs4jJ2ZSIqoMvSPed8ZpL
         ha1P7gg5JehLzxMqQ6aPkczcquSwfmKb8+gETwH0TrQJrvsDacYgZKwADZHb+ZkmnQiV
         O8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771316162; x=1771920962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L7Se9ZozDPuZSwTwJ1P7pdf1wL0THwc/KeQEqUqTJZg=;
        b=vBRS68i4Z288DKUVelAlGxOvP24RBYishUy9KZmsFZB5mllgsBWYYNSehRAQ9sh//c
         P3OHuOujS4+Nyp0J/uM/wWYWyDYxueyME92Sv17pj1Oc3U/IlZX5GdyB+M7BFdeI7dgZ
         r5/HyqZ6S4ffOyBZYKab86YskVrGlxJug9y6PsDpj27SpqoqzwC/nFRIl0FWdF/Q05KU
         2kSK9M/Oa2b4+0VlHNV1Z1iwI2QkxlwyinXkH4ZwgGZZQID81IuzuK4a3LFoB5d+Dqjw
         Cy2JGQ1T3uF6S/cZz6bmzAiIstz0Ldk8MOsO4EflM6/TPfGwDXyM459DFwiG8A0Nwdd1
         y1Kw==
X-Forwarded-Encrypted: i=1; AJvYcCXKc0OCvSYg2QTJkF6igJqSksWzZV0PcHzXRT4KoKn1RFGYYMO53qsMXuU7yO0oT7i2D5tT9G+mRyIs@vger.kernel.org
X-Gm-Message-State: AOJu0YyFkcAKf9EsA9ZxhMSz6FyyX5Hx6mZ4y7MNj+an8HIPEJ6+qLoS
	GaUoFPezZGcncQvFEuMe/2dvVRYwYo8inQXe/WeW2uGjPn1Zij2F8yR/tyr56wnwP6TkKnmC13E
	x0WTlg9EecjjeHnHMFoe3LrQXFrP2IT6NHvEhgt1+iyjrxeSYa0wLraVHfaJimgyr
X-Gm-Gg: AZuq6aJ5YFYIqzkGyPIrf2EkdY8XlF2X2hXNaEDsdOkEw/zoL/BhV0F7yrQ0Tj1/dlT
	ZZtMcS97opxS+Dx7y1+/NzneQ0vVjYOiGCwXmZ6uIMAvoTX7XhVJZowUCl7lqbfJ1dVzemQpGas
	Syr7Ft4wEZ08S+x7V3wU/31x3YoYfS+FMGucroHbTsiwV5LGZ2JEzL2oog9xQ/lEsOKQiSBZTh1
	qfikGWzTQk1xwvJLGL32Qf7/7nHLJUbwxXu09+tHP0MT32ABTQnLFEa4qNJ3UbKSDimr6w2ldVa
	GgbP3cdMyFd4oDQz0T6t++b+LKTNgndKJ3QnR9rj5DdznDExem0f91lWLHtW/F6FNntp6CGQ5Pe
	oQGrJfe8TpdpaoqUpcyssNVy03IT04Fp+RwPmRrnEzHOWsfYeGr2mGPpGpzLIx+Sk8sdZT26wTe
	KH4SA4FOeItsewuTLplYRaZOrJc+27XH4OI50=
X-Received: by 2002:a05:622a:4ca:b0:4ff:b0f4:c307 with SMTP id d75a77b69052e-506b275f142mr134586141cf.24.1771316161750;
        Tue, 17 Feb 2026 00:16:01 -0800 (PST)
X-Received: by 2002:a05:622a:4ca:b0:4ff:b0f4:c307 with SMTP id d75a77b69052e-506b275f142mr134586041cf.24.1771316161365;
        Tue, 17 Feb 2026 00:16:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5ac0bcsm3769119e87.61.2026.02.17.00.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 00:16:00 -0800 (PST)
Date: Tue, 17 Feb 2026 10:15:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        yifei@zhan.science
Subject: Re: [PATCH v2 3/6] drm/panel: Add Novatek/Tianma NT37700F panel
Message-ID: <3nhx24v2tqrvnhj4iklih5iprjqyqekedqbzn6vdmzvyxfikbw@bbn5hzefjyhw>
References: <20260217000854.131242-1-mailingradian@gmail.com>
 <20260217000854.131242-4-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217000854.131242-4-mailingradian@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2OCBTYWx0ZWRfX3mOXkJXpN2YQ
 XYWUEhinhvw4x/EPuNjqi76+Z8V9lsWXpH9NKRqcJVzlIGj2QSN/DTE/f7dz0mcq32qOX0PhSHV
 fBYHEHVi+Xq1v17H1L4yASFetDQJrHEwRUjq3qNNizEhju7TgJ++XEYiZDRZ+qikNHsdFy+ZiOs
 He119bY8/oqwDsSrYnNULY0WNOV3z2wR9cTpBbXLiT5n7B2H70NUk+qeByWNg8/AoMcxWSgITCD
 h7jeE3K9quW1uJWesver3aB5xmpLcr85fzoZM3RbwDsA+dq5ZSSLb8LpZ2e+fwjJNS/Jjy1BUFf
 8+gXW8eeiftRPEKYQRgnKsAqGDCkPmQgNo4BU7xchvTzXpUKcZDLPECdcciiq4GJi175vCOnokJ
 dbv99jjG4t0M3/LJN+z/+8vjws7GiXEPpb4Y5GcrojPBJKrwZqbyyP9eJu4maT9gFZWah6+b948
 DKm6zsSg+wdUptoWSXQ==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=699423c2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=NEAV23lmAAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=oINNAWDTXFj4uIHvT00A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: a6LyVQe5ngLNUf57bpNNtTCnGag2rO_l
X-Proofpoint-ORIG-GUID: a6LyVQe5ngLNUf57bpNNtTCnGag2rO_l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266021-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org,zhan.science];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 401FA149D54
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 07:08:51PM -0500, Richard Acayan wrote:
> Some Pixel 3a XL devices have a Tianma panel. Add support for it, with
> the aid of linux-mdss-dsi-panel-driver-generator.
> 
> Link: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Tested-by: Yifei Zhan <yifei@zhan.science>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../gpu/drm/panel/panel-novatek-nt37700f.c    | 282 ++++++++++++++++++
>  3 files changed, 292 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt37700f.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

