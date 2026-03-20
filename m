Return-Path: <devicetree+bounces-278101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uF0QAhv6vGmd5AIAu9opvQ
	(envelope-from <devicetree+bounces-278101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:41:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5875B2D6B81
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CA27308A258
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25E693346A0;
	Fri, 20 Mar 2026 07:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pmdwroOB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GLJlBSN0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C057B32470F
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773992386; cv=none; b=nF2IcqnIX8aifKpWvOZFUkMb6NZoUcsj8fPuKLYsWdO+70DLQnDP9hEmumUBrfRcKA2aan8Aq7RjmTG5Pjd5TjLGXzC2SeYKOsKhOkSLcb1mVrXFk4krfq4VBBoIEoie+CURf4o5+qWLlPJRnjbETTmwP0YJ8kTirpu4EA4bij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773992386; c=relaxed/simple;
	bh=YHsd+LM6JlYxfw7tk3vabZwEeL2zTPZ0zzwjD0iqJHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hmnhvZ8XNvRDufW4hMEbM0MQORSKvEZng2RE/bKGTwERUsHAJ36vmKmXG5rKqdqaiDfgT14AY4SfnDFgEyk6ESDscnqAeFgwbX+Rmb2Ec7xsHfVWw5wZ7lod1r2oNFgdy0MYAPlgwOEoGRFgH5xDgeOky4YSbXLOIai+oLKU0rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pmdwroOB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GLJlBSN0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2Xt4E539459
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:39:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1JvBC9OODow9TYPa7jEqKZFt
	uz/xNa7SSOiJgEze6lY=; b=pmdwroOBvURECLSvdzRVuRYwGVCdCkHMUPG1Yd1b
	Nv56Q4c6ydDJ6g7ZUC+ihzFYtI9fxVTMjPT2RdC+tY6QqdDoca9lIxTd63wN476R
	5kigQ/mT6jpgjWCChzmxpwse3Dwyh4MI4a1gPJ11kR5UALTjlW29h60EElpQB5Lv
	WeS2nEDyHJT0XzGeANILFaRDySsR41S+bObGha0hzPTffvqGJNBzdo2HNwAiUr76
	kX1kaSsDgrU3JB4Ig90Nnv2+DQn1ijftvZWGM/1cEM5+0qjdnEnnz7n0Y4LoMGwR
	WYDVttBwPrLTgQxOfxtvAw2U96cAa4nfGevrURQ4ssRfYg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0sm6h7fd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:39:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-509070bda13so157927011cf.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773992383; x=1774597183; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1JvBC9OODow9TYPa7jEqKZFtuz/xNa7SSOiJgEze6lY=;
        b=GLJlBSN0BIcqc3rBTtMV5PnptKwMs2wkLiDz5Wn6B85QFmCaq5zcdvmXk2iBxt/NLP
         RZWUtuUySVGSpSKjnUAvmstdFzLqyNsfl+OefmEDnJY29wehDhzMnG1LDILOt4feeRZY
         zFp3Kn8RuipiaBXpGRpuP6panfZAaLyHkG9fAeEkWgOzXyJ6coBRt8VavjAsI4YKD5kQ
         aNSbfSLDprKT5tENC7zSAGmd04YHPS73X6yxu6EW0NwfPR+kqmj696E73t9jF+yaFrfy
         IkhAhoJTOProNiS5fLEnwwBTxfPIEjPazX5pRKbzHSLRA5wFet1ESB8TPW0+0/DeCe5T
         WFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773992383; x=1774597183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1JvBC9OODow9TYPa7jEqKZFtuz/xNa7SSOiJgEze6lY=;
        b=Z8oplUU96KpR/2dMVovR376pj2lWVy9JVt1mqC79qXBHQTnNtqFpV3sSP4H5qDt4tS
         cOX6NhMIRL2NSzs1EySGB5/DMjddpxAlvoxOJrlyOzTnUaEcWHsZLM9CNmoF6IYI21xY
         skcS6m1kQNU0pswzTbEnN1AuHC90uJCM28gmzvd+XYndF/wsJGzoUWIulmv/bbCVqpbF
         hWlB9BWak3Fc0G1vJzEzWiahqWKXwQpkyyJztFv3D4amyczqsg1kr19K+Hr4YQhTWRpo
         EHo+1jsSlFSQWcNoPqx723CNG+PWy5iE+nX4fmsjVNmG3t0BpAvxpBZ4eF/z+etUV+fo
         t3Kg==
X-Forwarded-Encrypted: i=1; AJvYcCU3L524Zo4JofWNnWYJHZv9uVbloJD+b2eYdmor3qL8ieaGtdcJytiE81Mutx1Gt4ljMNkObhc4RFz8@vger.kernel.org
X-Gm-Message-State: AOJu0YwQt8HzMls/ARF5EmJeg3asmL5j8XYaahcPSHGBvl85GsB5vhte
	dNDuz2HgBGAXw/4pV3Xt5qkfdsuU1eyuxyDONVcTakQnXEKm/ax46j8FIY4JW1xt7fTOz4Dm49y
	hHVXc50i3k6Id3xOgcSPSvF+3uRUSKM0Rhv9HAMQvddLE4YyIRCNcUdRGJw+Z1GXC
X-Gm-Gg: ATEYQzykL2Epc1n7A2dIqqBpv0l+JYGXXJ2x++JYZW3vr0sy5iwjy4QVY3gP3alqxIn
	xCbp3nCLEDUZ5APuCeoGmTrvekUta/m9fWcTc50hd9OZwC2qt6fJqMy7RvLQDymHBU26RtLm/Z4
	h7SSZV+P6yp0ukbrl+akEcEOHP3h7jgn0xbWn/2E4GQSoUYoWZDkc5AUfpQwNonTLuF123rg2ba
	sjJqpYHbIX26fPbwSXzsE4A1YY9xzzPshT3D+35jV1UMbTRJyFjUY4yL0n0txvXDeSjpEXF1JLo
	gwKPOc9AAPtCENvmLdNw8LyEPKL7vzZPvAynb50fTTUaKCJe1KHpH7QPqG3ctTFM6747tN/lc3+
	wIh6wZesYvYt/LLRALKE/lWXW9qwRHInNuDixpuUxJY8J1KxrHzFyu9kUa3t/HYN/7+2KE4GLV4
	xdm9k3ORbU+69fnwwyzdi8EJ3cNKs3pZzWeFY=
X-Received: by 2002:ac8:5d4b:0:b0:508:fac4:76ed with SMTP id d75a77b69052e-50b24796847mr86992141cf.36.1773992382914;
        Fri, 20 Mar 2026 00:39:42 -0700 (PDT)
X-Received: by 2002:ac8:5d4b:0:b0:508:fac4:76ed with SMTP id d75a77b69052e-50b24796847mr86991921cf.36.1773992382466;
        Fri, 20 Mar 2026 00:39:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bf972ba78sm3909261fa.5.2026.03.20.00.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 00:39:41 -0700 (PDT)
Date: Fri, 20 Mar 2026 09:39:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: cristian_ci <cristian_ci@protonmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/6] drm/panel: Add driver for Novatek NT35532
Message-ID: <wqbpvsy542sij2tb7uxksvaokca3yseednhu3omiczytt7hytx@r2jxzi4tzt6j>
References: <20260318-rimob-new-features-v2-0-c1bf8917449e@protonmail.com>
 <20260318-rimob-new-features-v2-2-c1bf8917449e@protonmail.com>
 <byxrw5g4t23vivbt4xxpyfcsbrmlaju4lqqwsc75iqizoqmt4n@ltuwlggbitye>
 <4f3qSm2N-iqHmdKAzp6YslvLGtZbaeYJhV9pae3gtww5xiIUDM3Xov9wdCCumhINDMaHeFaJPMf23RqvZZkDQlE8D6hObDFaCd1vZjUHUoA=@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4f3qSm2N-iqHmdKAzp6YslvLGtZbaeYJhV9pae3gtww5xiIUDM3Xov9wdCCumhINDMaHeFaJPMf23RqvZZkDQlE8D6hObDFaCd1vZjUHUoA=@protonmail.com>
X-Proofpoint-GUID: kpDtjakjWf6pKEDjkCMWfKF2If51hmUJ
X-Authority-Analysis: v=2.4 cv=Rv/I7SmK c=1 sm=1 tr=0 ts=69bcf9c0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=sfOm8-O8AAAA:8 a=iTJjJGd3XSQqdiMV66UA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDA1NiBTYWx0ZWRfXxHRo2WHUNmIa
 QNz5Ondb02jcucjZoUscsBDaw19yzTweA3BK99yvB2taGrRFY3PlPfxRa8a4XzVHmIl9AfCi+nd
 kEbbLwaYdRoTUmrt8WYIQAxGGI+uNkSEWMa/KZpK+QfblX/9rKPrODxmdSPnOzx50YQIB88Wf4s
 KdXxypJSW0B0IUvYRdvK57usOcwcp3HEw2Afccp3+7kkFJwil4Js7Wr+YaEXb+4Elfz7PUQkiD7
 pG/FBWKxZJJ/mIoDhEWEMcatT9EPruEOhxJpZitvFdV5un8g2Jy5k2IB7pzfA/xryeFmqIR9WzI
 JK4/thwtPfT35A3G2gsfAOuN2HVxjhaQqLiduhIKYdNEpNKnxXcsQhVknnatOvtQlg0uhD5Kkl5
 kkkOO6DEG6/HQayWly8DJYkYhNFeQLbvWucxMW/2/QNZ+u39HERgGTSrTAkZk56Zo5gf3QcwJFZ
 uMnahiOarLDl9Ch3ryQ==
X-Proofpoint-ORIG-GUID: kpDtjakjWf6pKEDjkCMWfKF2If51hmUJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_04,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200056
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
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278101-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,protonmail.com:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.959];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5875B2D6B81
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 07:19:06AM +0000, cristian_ci wrote:
> On Thursday, March 19th, 2026 at 03:27, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> 
> > On Wed, Mar 18, 2026 at 11:28:10PM +0100, Cristian Cozzolino via B4 Relay wrote:
> > > From: Cristian Cozzolino <cristian_ci@protonmail.com>
> > >
> > > Add support for Novatek NT35532-based 1080p video mode DSI panel.
> > >
> > > Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> > > ---
> > >  MAINTAINERS                                   |   1 +
> > >  drivers/gpu/drm/panel/Kconfig                 |  11 +
> > >  drivers/gpu/drm/panel/Makefile                |   1 +
> > >  drivers/gpu/drm/panel/panel-novatek-nt35532.c | 779 ++++++++++++++++++++++++++
> > >  4 files changed, 792 insertions(+)
> > >
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> I'm doing a test: since I'm not sure if:
> 
> 	select VIDEOMODE_HELPERS
> 
> is actually needed in Kconfig nt35532 entry, I've temporarily 
> removed that select line and regenerated .config file. Though, 
> I've noticed CONFIG_VIDEOMODE_HELPERS was still set to 'y' 
> nevetheless, so I decided to not going forward since that 
> code would have been built anyway so that there was no 
> point for doing that. I wonder: is that select line really 
> necessary, at this point?

No, it is not used (you don't use corresponding API functions). You can
drop it.

-- 
With best wishes
Dmitry

