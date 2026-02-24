Return-Path: <devicetree+bounces-267747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCbUNeNQnWkBOgQAu9opvQ
	(envelope-from <devicetree+bounces-267747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:18:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F67B182E7F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E496C303E48F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFDB36403D;
	Tue, 24 Feb 2026 07:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hDDZeAQ4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fbRaKfmN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB0230C372
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771917482; cv=none; b=McxYhjGT/msQbVC8galSCgTq0K0uEW5tf1ToB7+n/N5nHdUAk5cGqQ4gDpWjpGH90yVDT0alqSKN5W12ZSQY3cIr8ESfV+FP3Df43N9OI+/ulSVZwuVMeL12KUc8SNUh8ve4QSW4eKzKcc0Nxmh1MlgStoLVEn9TwnqnWzQ9qAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771917482; c=relaxed/simple;
	bh=VmTzI8mtp0wdHbaALcIgF6lw99fcnc+CknX8vJONi5o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iilYAOhKi0nnadfyhyREs85qAecvYcRht3/5ysjVwvYgAea8tMrnhpBBlDn6pHHR3piSZ+NaWTtpMjqpu5EkKiWz84Kr/aZ0Kps9qc15YJQPd62IBjjOSpv05UQ7Zn+mGXTvUkxDBIkg19D55K2lFt+2+b9At3fd2RZ1yGiEy9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hDDZeAQ4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fbRaKfmN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LgG8694209
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:18:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ekBQ+gwM/4zQdd6ugVpTA+Fd
	cj3wp/ekgn7ZSZzvo1M=; b=hDDZeAQ4GaYhBtoWoBfbrYH5jfydhRHq+QJmJgyB
	JP+D/BiNRc92N2sA27/en7J6DxhqygNRckguAxinN+BVGrO3/Q3AGaY6/Na1r5vh
	+x0b2LuVNFgRGHeLm4aLVbXetq1QZre+9VpW7l/LD2juuCW0U5SAKc4DMttvqsSw
	QFFa+RwHBMueJVo2PbTGqR2TZpJJSQQwpxtFSDJims4n7fCZsyI4PGaTzS7RZF2h
	ZCg+1g6dqCGcjyr261bUPHuJ8OhiygWjhrY9PyGMl4pAU1Eqx04SV0DRn0CYWH2A
	PAtkE1UAYIs/eMj0QW5XkawoSDCBuHg2cbJ9rvaBBTMXpQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9t657-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:18:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3b0d938dso5113297685a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 23:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771917479; x=1772522279; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ekBQ+gwM/4zQdd6ugVpTA+Fdcj3wp/ekgn7ZSZzvo1M=;
        b=fbRaKfmN4T1HJ/d50RkkxqAVfhLG7d6sdSJ3PtDhSTkku10+40SKuZ64LU/p9Yrqn+
         NORGwhHdR0JuTpsm+p/3AkJnnInosr+OJNiyP60x5d3eZw7kOytE7BgCXQ2dI/LmtYgr
         Wdi9yTXgR8LGVguOdcxbTYwDYcDg0SBFql5qTgoNANQjxYP0NC3gEIeevKj/sN1OAsUY
         T16DZQ5OYbFJeOiCD9p29qJN8iV/VqwEoogi2FVVjAfEB5c5NRyMihxxQMOcAZL9k1bp
         ZxwjCZDJ5Dr8ZCiRW5rSUJcifgoC3DXARLYvFh3rv6k11qpej5YOMdBXZRWsinMHOC6L
         PsMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771917479; x=1772522279;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ekBQ+gwM/4zQdd6ugVpTA+Fdcj3wp/ekgn7ZSZzvo1M=;
        b=T2b6PUIri2nrS55jv4Xmp6tDNwnr74+OnWcSkoeWN7NLTBQYwDVlzsdrcBBCH/PyMf
         Nw/9f6CSCG6PPqEqmlF5ZpACVIMvmhbv0X863Q6gCwsw2TSUVoKT/0ClgJPd7JNDSOqv
         7yYHzS6RGG0rxb7EWL/zgBiFYGriY5iFQWsjQ4cdDJdGWo/KfrAPU/4SqYxYXVW3cMWp
         43AsTqF6FUWIpkK8DSQh+6rt9P0IBoPDYCAA9g4/I5sTXRnwlmBIEajFKY7DughGW7Pv
         L4BkHm4ALCvWvUQkw0R2qWN3scpi3Gh6wv9LrMEBbxjsxM+3CzB5aTEWHF5wYUeRw5Yp
         6rGA==
X-Forwarded-Encrypted: i=1; AJvYcCVNIA+DPx0f/VNEb12CFJLBI+OobUCgCdmtKDVzvrbwaP+lmow9fq0Tglj9IWEsipDyyUb4gWFd2dI/@vger.kernel.org
X-Gm-Message-State: AOJu0YwSTdkV/yM3Q7GNynopmYD+E/rq3zj6nDVib5COfi8404FLO1rl
	FD9UFVwd/ArNUA9shEwIyCYIEJlg2WZWFtrGOMBvhzGcgHfnRyPT4rs/C8pgsBIBL1x27j43+7z
	9GhtLAvaCFQm+oMkjlOZHEEvVRc2iqZp1KiOtR++opOG0IrjnOSL/PtRqA8iskhK3
X-Gm-Gg: AZuq6aI+mFCA9GXsg/Pr/LTA6sQz7b5mfAKgl+US46nPrrv157B1EzIDLipNRvkWWPi
	SpZ46A7joD0GhrvpxeX06nJmayHUVALkNBzcSM3WaMutyYv/r/RdH+D2ESNjtlOAlTFGw6pxksx
	tofLAzceIczPWP0IP9IiIb9KGvhYI3bcpkk8SeNOctyY7l1Igo9l36fIqffhtPi+mNu+zUAWT8q
	J7PMrNXgZOTn2I5NygWb3JJ7CXZTIhScWkIqWY4cK8NxHKVdizogq8EqkusfRMUB3zDi0fE/I1F
	PYTuB2/nXCIMyxRQd4NlCxjKXBiqGKJl5AWGRQdqhTUJEF+cDPg9H5aeAUpSxqi2FDQ3ckD0W/y
	RrqLkNO2p0RCFokn4acFxpbgtE3ns64TuPkFhNAGNZY8z3pwLUfUp1i5W1dUGQb3VOLIfBC8cnm
	eYC6ouAOUwksDfyhOv4+m5ZkvP6/jN795OCZQ=
X-Received: by 2002:a05:620a:25cb:b0:8a1:b5ab:bbd6 with SMTP id af79cd13be357-8cb8ca88cbemr1310575985a.71.1771917478974;
        Mon, 23 Feb 2026 23:17:58 -0800 (PST)
X-Received: by 2002:a05:620a:25cb:b0:8a1:b5ab:bbd6 with SMTP id af79cd13be357-8cb8ca88cbemr1310573585a.71.1771917478321;
        Mon, 23 Feb 2026 23:17:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7878be0sm19544151fa.4.2026.02.23.23.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 23:17:57 -0800 (PST)
Date: Tue, 24 Feb 2026 09:17:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hermes.wu@ite.com.tw
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Pet.Weng@ite.com.tw,
        Kenneth.Hung@ite.com.tw, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] drm/bridge: Add ITE IT6162 MIPI DSI to HDMI bridge
 driver
Message-ID: <mjbu2cdgyj46e7fethska24cwj4zu63ilikix6c4izepjxix5k@bv6446jnei2d>
References: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
 <20260223-upstream-6162-v1-1-ebcc66ccb1fe@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-upstream-6162-v1-1-ebcc66ccb1fe@ite.com.tw>
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699d50a8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=Ns9eNvu6AAAA:8
 a=DgozZX_GfGlvXY9SbtgA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=LZLx1i01EnjtqRv10NxV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA2MiBTYWx0ZWRfX6rn3Gs2CUvzg
 9jlZfJKPzPdAMIZQH8urVNHejDHh/DNaf4DfKQWi1jDBOXPTjwPjqt3Z6pUgxYfZMdiHK3TB+Ad
 4dIy63WFX/mc7i1s1BmEONrtlT4yxweb5RhvY2XP4fgbWoOS/1zxjW+AGNnDXfdUDqgVX8fDFYf
 IEXKsgMqjfHJEQ8M2Bp2ubEsGQNMVxYzbnnGznRCZvII8pm32aVSyazOqnQlqVZ1WEDZAefvOti
 GHpAyaJQBS3Ux5F1ZCRNFzGDRFXWhbpGB1bSnKIIFSkB1nK0v05aACw6/geVxgZYsszvbtl9gfs
 2l/v8HDsLxCpS9mrvI1QSTbCM94kXRmc/IM0qz2ZHEq9V1qSfDNVNKF0sbqZROGGE6VolfHFUTb
 XpkjX0qSPIbK+Nu9YMVmFYh55NsD7AMc8N2Jo+bilTcOOCFZ56C6IXH9+wSoE3b4pwr3Ar32s5P
 n/45/Nk2h9f+G2Sbq7A==
X-Proofpoint-ORIG-GUID: 3awLgwwurSNP12cOvsrhHXaHp52D2ws5
X-Proofpoint-GUID: 3awLgwwurSNP12cOvsrhHXaHp52D2ws5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267747-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,ite.com.tw:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4F67B182E7F
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 05:20:45PM +0800, Hermes Wu via B4 Relay wrote:
> From: Hermes Wu <Hermes.wu@ite.com.tw>
> 
> Add support for the ITE IT6162 MIPI DSI to HDMI 2.0 bridge chip.
> The IT6162 is an I2C-controlled bridge that supports the following
> configurations:
> 
>   - Single MIPI DSI input: up to 4K @ 30Hz
>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
> 
> The driver implements the DRM bridge and connector frameworks,
> including mode setting, EDID retrieval, and HPD support.
> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
>  drivers/gpu/drm/bridge/Kconfig      |   17 +
>  drivers/gpu/drm/bridge/Makefile     |    1 +
>  drivers/gpu/drm/bridge/ite-it6162.c | 1876 +++++++++++++++++++++++++++++++++++
>  3 files changed, 1894 insertions(+)
> 
> +
> +	mipicfg->pn_swap = of_property_present(endpoint,
> +					       "ite,mipi-dsi-phy-pn-swap");

None of the properties you use here are described in the bindings.

What is the actual meaning of this value?


> +	mipicfg->lane_swap = of_property_present(endpoint,
> +						 "ite,mipi-dsi-phy-link-swap");

The same. If I understand the name, you should use the order of lanes in
data-lanes.

> +
> +	if (of_property_present(endpoint, "ite,mipi-dsi-mode-video-sync-pulse")) {
> +		mipicfg->mode_flags |= MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
> +		mipicfg->mode = SYNC_PULSE;

What for?

> +	}
> +
> +	if (of_property_present(endpoint, "ite,mipi-dsi-clock-non-continous")) {
> +		mipicfg->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;
> +		mipicfg->continuous_clk = false;
> +	}

"clock-noncontinuous" from video-interfaces.yaml

> +
> +	of_node_put(endpoint);
> +
> +	dev_info(dev, "lanes: %d pn_swap: %d, lane_swap: %d, mode_flags: %lu",
> +		 mipicfg->lane_num, mipicfg->pn_swap,
> +		 mipicfg->lane_swap, mipicfg->mode_flags);
> +}
> +



> +
> +	/* get hdcp support*/
> +	ret = of_property_read_u16(np, "ite,hdcp-version", &reg_val);

This one is also not defined.

> +	if (ret == 0) {
> +		it6162->en_hdcp = true;
> +		it6162->hdcp_version = reg_val;
> +		dev_info(dev, "HDCP version %x", it6162->hdcp_version);
> +

> +MODULE_AUTHOR("Pet Weng <pet.weng@ite.com.tw>");
> +MODULE_AUTHOR("Hermes Wu <Hermes.Wu@ite.com.tw>");
> +MODULE_DESCRIPTION("it6162 mipi to hdmi driver");

MIPI, HDMI.

> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.34.1
> 
> 

-- 
With best wishes
Dmitry

