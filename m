Return-Path: <devicetree+bounces-269586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNE/Nlb6omkZ8gQAu9opvQ
	(envelope-from <devicetree+bounces-269586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:23:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F34A71C38DD
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:23:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 548AA301B66D
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E25CE42188B;
	Sat, 28 Feb 2026 14:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NAFUMytl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VjHdjDl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB862284694
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288593; cv=none; b=ZbhgCPGWV7nxgYd98qX9BzGPlXvopiIZdmjACEKrNjwNB79iQ4c4WhBgQ+KFGe7ZAhUDpuJB+MNCZ/lDT6H3xju3MYeJOxczZbHds7vnrm4r4JCLD+/JvTDs4z/grLS52vDn+KruVi77KkKqqEkg9BhSZu5bDRRjLms0FFILvSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288593; c=relaxed/simple;
	bh=Ci4ROwVY1MxEeiIMK52w2nHfIW6FRx3iu1FU46kdIHo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LFp2VRFchCNJCfKpmeK5nd4vRDq1SULGvGFh2pf8cAV7bx0+PCNd4kWXCqF1l/Ywkf0i/TMEJ/YLGb0aEzQ83p7ACIctuyTfJHJFldFCUm5U5Za4lK7dgLR1UVHD5EsrKZwvIpmh3Ke56kVK+hP2btEFZ6JADzQXFT9nD625DdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NAFUMytl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VjHdjDl7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90BYl1970103
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:23:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q20wbwBCJGPSMFGwy9v5J4U6DmpaME9iS3j8Ccw0t3I=; b=NAFUMytl84dm0cKY
	5u7ym9XgbfSg3TLkCNkKBS+/z2lzKhY/3+GwIMyVP7nTmMxQ93CYvbelIf9RMOLM
	o9kW8ILIDeJDvGkJxIu5Ehf/gp9E18KS+Av4wmNAOMaIj3Ea1gYmIlDpscxh1Gny
	ZUSUhkBhu2ARo1urq9rTO/BLT/eCQa56jJ9nzFXTF6RAnIEjWbrDicfNuuZJ6Jl8
	erzmTtM+geEsiUB5mSL09wsSpLkIV0GL8v73z+1ChO+kBGpaaRqGsvS3rCDR+LMU
	FUVYI1R0CT4VTb/CZA+c5uLoSDJ9krqyjkRurVT+/bUQSqsykCB5GBjqfe4Y+Eb3
	wMba5A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfd0y9b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:23:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70ab7f67fso3682261285a.3
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772288591; x=1772893391; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q20wbwBCJGPSMFGwy9v5J4U6DmpaME9iS3j8Ccw0t3I=;
        b=VjHdjDl7ZFoRJsQ+8/a7uc4QoilffWJNmwX+x4eX7kBwOlpkAR+PBU/ynhbYmn6C3o
         b8mCh2Xshk0sg1fac0BsVKW+C+S/7OQgZnxmYrKj5zemHnp/4MRcbLil5NTC3TqMCiWc
         0U92KVhXv1dmAYbwzHYYpR34xmqOc8BYiKGdLLEENHaSzZ3CBAEIVx+TeUbh2I0L5AgN
         LRefXhkqUm2EeASA8j1WsvSPOiS6j7dLIe8W6ZVsrSy8Hqf3a+z271ZEyUQm0SRh+d4R
         XfGMC2gacwwtCraS8973jRymSt9sXW76VoJ+zTKpIiuR2XjeEhZyXpZdpzHqnBdgi4jd
         iO8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772288591; x=1772893391;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q20wbwBCJGPSMFGwy9v5J4U6DmpaME9iS3j8Ccw0t3I=;
        b=Lw1+l7a4F98AuIJekcI6K9Pp2c/7GaL9v3vrkZnVgwWp/sfJ2h3D7F8oSjj6XYbj+r
         ENv/C0D+A724sPoPr7RjcJEE0LC4UZ7zZ514shPct/E1wlw5Tqa34h5l9I4dVGkkt/li
         PgpkBDoL7OQzFC7WA2RODE4bibbffVMS+UAVO4R8i2sGoWbQK6gN3zNEZa/yN9l1VhvE
         bDF79jGlypjisOgTFluvLtx1IRm3HLzP2HocZ7uzAjBbKY3jMclN4w6bh9eyAlAK5vWl
         BnOxS57eLoRodrKfSNhN2Y/PyT3VfVRfPEN2MbHZVAM8yruo+e2d4BKFJRStJB55shuN
         HMUA==
X-Forwarded-Encrypted: i=1; AJvYcCX0M4fqw+1Pc4deETjFWwRA8VqI4s7bFvBgxTpoGF7gXgU66XMlh8sqNhkPpQn6R52eeyBt4s9pKTdG@vger.kernel.org
X-Gm-Message-State: AOJu0YzwkhfuoIKEs4rvG7ln0l4zCuIwvSkTG8XV8EPRng2/TCq4k2Gw
	z9rlzBYI77aKomVtpX4R14dTub8027743NX2jIcbw5WiJihvFUPBpDxVy4KYar/1m1XKQ2uuXyD
	C+rs7O6BGuOd1Crdiy9httozsuZo7Bd2BgWRwZxX36pNG7zzKxQ+W5oAT3wYETA4p
X-Gm-Gg: ATEYQzyhC88sC7TLOmdvgjBnRqgoB0La0/exRvN7+cJsm1mUUxDqzOeSTfhJIgQmh02
	rHyne22X1Z4hxYNPrr4WrqZyBGRqHiv90BQjG0UVwXCqIfEY8a3uuYl9wIAu8kpRYKiRKZ9++e/
	/GLEtEnsXwe2JP9u/+WwVKX4Gt0BggBxM/wwVBQUNUlMyJITzP8/CnuoCvAH9bVBYkN+6J1JV6s
	WxFWM4ZZaNHO0MgnQU7xBnSXZBJum96JhU/YssZtf9hPH0d86OvsP9lc2q7PRPE4fVGIrOAm5Pz
	oadgBoE3qD/LYiaCYUYQ7/aaDmHEhjDk6J+4n6d/bymUKtv39XQklP3bvuxJIPaaY7HONE3fcr7
	KsgC2OFusc9M1KH7k66aF0xD0VyU8IQzdnI+C/V8dnRtN/JZl4vRhGIk0R5R6q+vOy5h8cxeNqs
	LqK/Tj1eVBwfjCA7T+iUwJ+GZ7LsjBxNriiqo=
X-Received: by 2002:a05:620a:7118:b0:8cb:4059:a90d with SMTP id af79cd13be357-8cbc8e50bf3mr818711985a.38.1772288590867;
        Sat, 28 Feb 2026 06:23:10 -0800 (PST)
X-Received: by 2002:a05:620a:7118:b0:8cb:4059:a90d with SMTP id af79cd13be357-8cbc8e50bf3mr818708385a.38.1772288590441;
        Sat, 28 Feb 2026 06:23:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bd238fsm564965e87.11.2026.02.28.06.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 06:23:09 -0800 (PST)
Date: Sat, 28 Feb 2026 16:23:06 +0200
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
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sc8280xp: Add dsi nodes on
 SC8280XP
Message-ID: <sb54l554woevgaetb54zwyn6fdrz4bqi7vnsavdy4czqzbcwjn@qf5wckbfzt2z>
References: <20260228101907.18043-1-mitltlatltl@gmail.com>
 <20260228101907.18043-5-mitltlatltl@gmail.com>
 <hfohv2evihmqbaehmnjsj2cgmqbjytsa2j2z6l3cph2jlszv3t@d4c32rfdvt6d>
 <CAH2e8h5J7FdP41JBgEC7aUPk4AGwNnZ83+dYV0=n=7+PNeMVng@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH2e8h5J7FdP41JBgEC7aUPk4AGwNnZ83+dYV0=n=7+PNeMVng@mail.gmail.com>
X-Proofpoint-ORIG-GUID: 0-NRYtALgIYSKVKCpkCOE4FJnhrF2Saf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEzMiBTYWx0ZWRfX5yfqeRCMUl8w
 bC4S7zs2w2fybwFZMEHhsMHfg/q/x3aQWqSgFgcB4WOOiJQpyvP9CFykfIq6Wje1e7bdJkDxcmv
 207SHswSTXFzhAzh8VSL0qoxeJ53VZn3pz/3eTSWI5o4xGCJzBpbOp3Gwo87cmkPeJubk78BXqU
 1YPNNg8EttrI51gzU37tXkw7uLIFjagrJac+bQSyfUAw1QclFz504zIyAzKHRuWTCuobYjY6kJ6
 2iHTkADAu3LPKfbGV6x3K0GvywBo6D9LVQD5+0K8OlOvqpz5Av6gSVXamVZctNcZWnK3gXttxCw
 EkCftLU1Mnl4eeipeR897nKk2ToHma8/DR/bfQ085A/oqrHD8Enn8K8SSXDsCcEHi/qSkfYf9Zn
 Vjq24rofho1Y6oAhIZag+AVuyX+niz2uRuuqBXoOYtxNGmtG6QC66x3BesmhAf4i4VH5PruVYO8
 BMcu/HJACAp550f3vtg==
X-Authority-Analysis: v=2.4 cv=HKDO14tv c=1 sm=1 tr=0 ts=69a2fa4f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=p5Qc6n0AjNsD3RYv9wgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 0-NRYtALgIYSKVKCpkCOE4FJnhrF2Saf
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269586-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F34A71C38DD
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 09:57:19PM +0800, Pengyu Luo wrote:
> On Sat, Feb 28, 2026 at 9:32 PM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Sat, Feb 28, 2026 at 06:19:07PM +0800, Pengyu Luo wrote:
> > > The DT configuration follows other Samsung 5nm-based Qualcomm SOCs,
> > > utilizing the same register layouts and clock structures.
> > >
> > > However, DSI won't work properly for now until we submit dispcc fixes.
> > > And some DSC enabled panels require DPU timing calculation fixes too.
> > > (hdisplay / width timing round errors cause the fifo error)
> >
> > - Please squash refgen patch into this one.
> 
> Ack
> 
> > - Please post at least the dispcc fixes.
> >
> 
> Yes, it will come later with the panel driver. Lewis provided the
> patch but it was generated by Claude AI. The patch itself is not
> complicated, it only removes CLK_SET_RATE_PARENT from
> byte_div_clk_src dividers. But I need to find some time to analyze the
> dsi phy clock diagram and reword the commit log.

Krzysztof wrote a perfect description in the commit  b8501febdc51 ("clk:
qcom: dispcc-sm8750: Drop incorrect CLK_SET_RATE_PARENT on byte intf
parent").

> 
> Best wishes,
> Pengyu

-- 
With best wishes
Dmitry

