Return-Path: <devicetree+bounces-274663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODQDDhbasmlMQQAAu9opvQ
	(envelope-from <devicetree+bounces-274663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:21:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7CA2743F5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82C72305C6D7
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D8A37C910;
	Thu, 12 Mar 2026 15:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Eka4Audy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MO5PAuuj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC514310655
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328783; cv=none; b=KwhedQGCh/MsrMLFbS7xD/XYh6m51Y3bx6NcItwJMRun+oMQGaDvkD1YeLIWt1jbcT/7uFrDC2w5ucNFKVzXwtr4MuTNR6tsF9aNkcmfFRCcYZL4vq95azoXk1j12YJR9Jy8L3H0u1kA4ZDvNZ30XJIdtfGBTZ4vGZnhme4idYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328783; c=relaxed/simple;
	bh=Yjj3Zdg4KSzC/NI1xTNy20Pukn7725BLIZPNSgpUQoo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qKtr/diDizHrGcldFVHDghfvwNLF+qLAXPkWLIKmDaKv0S974NroVzdNsjvIGJ4cmbXZd6TQZzXR2EflXcsessb0NcnpeDq81bcI52aWOMmKrMGuRs8inYOziKgPzfVcLyR42FGGHsgJp9sNT5zw2plmOzFvpyGj1FjEoxmvh6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Eka4Audy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MO5PAuuj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9QTsk4133000
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:19:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VicwKrZmXauWaaAzXToOjmF+
	1QwCRXO2GFnrYbGK/Gw=; b=Eka4Audy7N4zQ9bCSVYPmZlv0l0Rw1/RuuiAH5MP
	WVVS7UeN3FlS+qWXiEttoM0+8txpDKVvnf5rZ06xbs2uN6PWWxtRillg15owqk7I
	G26Oy856J01JqP+50hU3OnDjrF6UVf7va1ofWX6xqeeDUk55+32uUPgpFARFct5r
	xQIpc/MvEEepFesJ1/ivytllqkg79vcXuKdMwTET5X/3XojMW/NFwUYflgXr2zBm
	1soq7+/StY4B4drTIQIfciSWdNBSU9KRTpNZLO/z4NmhTatchLN6FDuXyxBy1yGK
	jUvoZJIvJ6mNjww5xheLK+OfPgEPdhMrhDOAar59FxIQlA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w2hqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:19:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd820c6a4fso963418885a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773328780; x=1773933580; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VicwKrZmXauWaaAzXToOjmF+1QwCRXO2GFnrYbGK/Gw=;
        b=MO5PAuujZeT/X8IAnEj3zC++MpbCa8PkamSoinJoPGp33n/5aphw1FtD4e2A9cIXsg
         Zgk8zYeeIfg7PvFE146KWGWgXFrwzW6gVRMIzGvkFPCXoQIQN2hDupipiPjHY6gDNmKS
         FMZM+yZPHH7wrQtE4tc+rG4+VKp9fdRGBJAVxkvfUo9NL+mWnqh0NLH5ECiZdPMffwYe
         kJXOU7qZ55/fMl+Qk463dQcoxgAg+P1tVWGCZBghvfHbzXVqEJe1xm8nmqlxaS9A/Gts
         ieR2BjSua1YnKsltfQqOE5GCxQuQv+06S8PAYLXX3f3ztQmGGefbF+NV/Fau9+LzAInV
         3VCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328780; x=1773933580;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VicwKrZmXauWaaAzXToOjmF+1QwCRXO2GFnrYbGK/Gw=;
        b=BOnohusSI29jdCc+QnUW2cAiRL5Tl/UF0P/d+2VwNlAtqMH156q/siCUU9kdnDQ2ZS
         uDd1DH4jQIeZkRJ+yCVJxW3Q0XSL5Nxbe8IeZ4jNCh/OuTFxe/1O9qSj0lxXPs6QAbDo
         b2/d2ia/3SKLyqqfT8zBh4dKgR5O/Pkwiemg+XZthXDL+lVS3UVhMRsyhruqHviNz39b
         Wh5z47+9HJ7U5yjR/NUInXU95/7PPmmlcKadSIkiJF9uugXS/pmPv7w/KxsyjR0xENmj
         MlCpRds6eAANl4JDy5n2DQX9IU70EvrX+3YajHLooYg6YpRqUzt94WuZetsjwwF94vr3
         G4eg==
X-Forwarded-Encrypted: i=1; AJvYcCV5NRPcydxOU/jVw8h+EqXmqzA0mWkrXfHzXEuixMamg260vme9yDbDzXqB+sOt33N/tZBZMSntd29L@vger.kernel.org
X-Gm-Message-State: AOJu0YzuhDN7bcJ0cqLONLMkXhouzEuPfzyv3hNjJmGaADYmbw47SDyl
	6eDMI45oMsc4Bip9pJ/tlUXBBAHdaFwK28npEMzAA2B/QM11ZTsjaw/4Re/T6sCzhEoTpwJlVYr
	LUdew8c3kwFkBVuD3/1LQrtqrVFsiYgeA7cVtcfyBOh1FJ8K2MfFsf7BXZF6odd08
X-Gm-Gg: ATEYQzzNRu33ec0yHtMiQVYbmZjcbSwaICa00yBg/qcuyeqZ77GsNAf3kvM/VbyS4zS
	ntu9+tGDNqzJjpAhzArtYY0d33BndCtcxeGGF4fHiXZRg/Y1ASbMY75kTU6Kae3nlqsjIhd6F5k
	OYlejlVEF7N2DYmlRYH46pg/ToEmv/GvvXAaHRJSWIUPUQytdD0dYRqD3mUn/qPibpka+FzGE97
	54FFYXA0sNmNyswqfrt7ZBOJNZYYSXzh8jXTL6edcQc7UIiIucMsSztpA2Y4EVcEVOqxLiqxO3X
	20iOgn2/CmXmjoluZqIpJ2XvH3+Z1IAyH0tag8+7/ldWwdgCIXsaaFINqQBmvXX06YtKW+nENFB
	4lb151ZvCLicdtfe2gPrm1a4WvXBVSk8AB+Acx2btYNCcPmY6Ad39Ra/yeuH16p8ilavyG+dwu0
	aUav05VkfndsiUcrvvKp9p+T/rCpJZdKS1jJ8=
X-Received: by 2002:a05:620a:40c7:b0:8c7:1986:6b3e with SMTP id af79cd13be357-8cdb5a9e986mr12946085a.32.1773328780335;
        Thu, 12 Mar 2026 08:19:40 -0700 (PDT)
X-Received: by 2002:a05:620a:40c7:b0:8c7:1986:6b3e with SMTP id af79cd13be357-8cdb5a9e986mr12935585a.32.1773328779480;
        Thu, 12 Mar 2026 08:19:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33cd4sm1003801e87.8.2026.03.12.08.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:19:38 -0700 (PDT)
Date: Thu, 12 Mar 2026 17:19:36 +0200
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
Subject: Re: [PATCH 2/6] drm/panel: Add driver for Novatek NT35532
Message-ID: <bvcaqyjoahkxvexjgra3zpwcc54xmo54gsyedg75cfweq3rutk@rckmxgjcyprq>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-2-aa2c330572c0@protonmail.com>
 <kvq4py5svidg7c4tu2kxwpj6fnsod66kq555pwchd44nfdjejk@yvpk4ismso7r>
 <xftpHWQbO-34K0sCpyznwHTYxoNo1CMY1NyFzsDhEeM0s59S3Rqvu9tmdlEk6VAaxam3HVz3Bk7_7m10FEn3X-3Lc2HMVMxWUXkB-Olgt6Y=@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xftpHWQbO-34K0sCpyznwHTYxoNo1CMY1NyFzsDhEeM0s59S3Rqvu9tmdlEk6VAaxam3HVz3Bk7_7m10FEn3X-3Lc2HMVMxWUXkB-Olgt6Y=@protonmail.com>
X-Proofpoint-GUID: jsBXIVy5KYTw2mRk4P_K2ts37S3rncR9
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b2d98d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=sfOm8-O8AAAA:8 a=yFjy0gZ77y6Bn92TwrQA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: jsBXIVy5KYTw2mRk4P_K2ts37S3rncR9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyMSBTYWx0ZWRfX+OHuFZGaI7ev
 tjWwqYieQGCOWh1BTcy3UsFnkjmGYdXMbwpr7U0pAvc0fnZdWVgT7JmYvwy6V6HOkn6ml87ATht
 UHysnilpuxyJOWVLu/Fpl9G/0Z2LKW38vK1EzXDm2nYfmZJz+DT/xiqK7wl21gjN7ErMTctuJdg
 Xx0IcOhKe2KHMWql3PM7G4JwgT3EdUBJsRHND6FvR69uuHhjIq3KNVM0dctLCpO118xAru3zrV8
 0RDupv9LyReMabJiEv4uvZI8z/NpWDMO13xw+WZ5lS8mxcK03mj+485M9P9+J0RfDV9EYPSODcp
 5+j/2l3BT/oVjgf9FtG9PVXR7jsNgyU7n+MMVDvUCWIBOENcW+vbFqZuNrQDpJ6ZEEDqxkETU6z
 UVxHrteFtvW4Q5Wnk38u7bJ+sa88u/FXNkaOuf1fLYCnz0zsteSR0JLvfozE+64uwurS6vpBGwB
 xe2qLZAM+he+JSfO2XQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120121
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274663-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AE7CA2743F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 08:27:33AM +0000, cristian_ci wrote:
> On Sunday, March 8th, 2026 at 20:27, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> 
> > On Sun, Mar 08, 2026 at 04:52:42PM +0100, Cristian Cozzolino via B4 Relay wrote:
> > > From: Cristian Cozzolino <cristian_ci@protonmail.com>
> > > +
> > > +static int nt35532_on(struct novatek_nt35532 *ctx)
> > > +{
> > > +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
> > > +
> > > +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xff, 0x01);
> > > +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x6e, 0x80);
> > > +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x68, 0x13);
> > > +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xfb, 0x01);
> > > +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xff, 0x02);
> > 
> > If this goes to be resent for any reason, could you please insert an
> > empty line before 0xff, 0xNN wries?
> 
> Just to be sure about such request, should I add a blank line before:
> 
> 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xff, 0x02);
> 
> , before:
> 
> 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xff, 0x05);
> 
> , before:
> 
> 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xff, 0x01);
> 
> and so on...?

Yes

> 
> > > +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xfb, 0x01);
> > 
> > [...]
> > 
> > > +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x11, 0x00);
> > 
> > I suppose this is MIPI_DCS_EXIT_SLEEP_MODE,
> > 
> > > +	mipi_dsi_msleep(&dsi_ctx, 120);
> > > +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x29, 0x00);
> > 
> > MIPI_DCS_SET_DISPLAY_ON
> 
> I've done a double-check through NT35532 datasheet and 
> include/video/mipi_display.h: instruction codes match exactly 
> those mipi dcs command enum item names you've mentioned.
> So, would I have something like:
> 
> mipi_dsi_generic_write_seq_multi(&dsi_ctx, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
> 
> mipi_dsi_generic_write_seq_multi(&dsi_ctx, MIPI_DCS_SET_DISPLAY_ON, 0x00);
> 
> ?

Yes, thank you.

> 
> > > +	mipi_dsi_msleep(&dsi_ctx, 50);
> > > +
> > > +	return dsi_ctx.accum_err;
> > > +}
> > > +
> > 
> > --
> > With best wishes
> > Dmitry
> >

-- 
With best wishes
Dmitry

