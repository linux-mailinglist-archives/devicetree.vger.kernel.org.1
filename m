Return-Path: <devicetree+bounces-296991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF+3J9qzBGo9NQIAu9opvQ
	(envelope-from <devicetree+bounces-296991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:24:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4DC537F74
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:24:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E898A3203206
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 16:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563E341C310;
	Wed, 13 May 2026 16:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VqcTOxGY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OKTRRs7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3A73D4132
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 16:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778691197; cv=none; b=kqPUSGp6uKvQ5pv2H6qwnnJHrAMO6n/foMh3vcRClUS/L1p1BqVhL51HydAtQgvm9TsNTbdjNRzMDt4ckOBJw2Xl7xNr/o7ob7XGH2E8hIK4rcu1DE9ltXmYP3e36wSMhKAamVcQEdjLUdozR3cC4QP6/FNdeqMmzNAs4uqDA0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778691197; c=relaxed/simple;
	bh=HpqdRvguomuoFu8cYA9HoqXvq7sfUqnGJaGKOQnfdKE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C0yqvDjUzWohZYVuKgAwFH+ON0FLlIzglespXhnXk+UqEGqfSG6K86R22nvo2FwiXkhFalauGCLJIpelgo0ZBbe87ad+A3YiiFuvUOIkHvGwPaqOTQnGstNQSWXdyf/RTDL+l9cz01yW27pDteSLKChBPnuZjOT9sTBYbsRjTA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VqcTOxGY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OKTRRs7C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DCVBBJ2965625
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 16:53:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZOuwO8Oe7+fhFiUNtPbUZRGD
	3ndfLf9Y9W/ejus3N+4=; b=VqcTOxGY8MgLhpL7QdJ7no1pbuPJqDQSDCOQZvYM
	mMv2QA+Iibd/P3kLfEp/Ky0P4VHfBddRiB/PPRujgkEMFpfPetiBU6hWAsdCxFIR
	8Ut7dqpEQwHYBfUyicHI/0cWX9KFNFZE8rT3VOCjQcL8m9+BfElsdQUsIATm1skS
	pjqwAgJ3ViXZjsjoVldeMz5idJoo0ZkjKbBATknvuPAPXU97jAjlkJH4mqR05W1q
	VnYqmW12Qt9uGodhMDo4ORsMNGmV9eXSkRflCsy1J/r6OmTNtqFcMmFHAlhVr5RO
	81+YfJ1nhuBpv3IM31e6/dco5ewo+GlxS3b6PQ639X3PqQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4ma5adyf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 16:53:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-514b5d6bb45so45613271cf.2
        for <devicetree@vger.kernel.org>; Wed, 13 May 2026 09:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778691195; x=1779295995; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZOuwO8Oe7+fhFiUNtPbUZRGD3ndfLf9Y9W/ejus3N+4=;
        b=OKTRRs7CeMDxfLbXH0uP+iP/lW4DGKdD1aJ8cdpuQsaKgiPjIDnv5rDnXvCBo1rq3f
         BVMqzjLL77lCR8BNfqL/vpD58t0Cwbq/He8h78DaINYY2Rl/Js/fVSUmgIYWZUW2K1PD
         1cCCNkoO7uR5PlhfNSquoIsihkisL6SOwzVfFa+iQQEoqsaidwVSxIOImaTgcoT3rBq7
         3PeOVqu8cmFDMkg46iLQb2p3c1uHCmyAUEGhxR0H+yJy+FmPNGQ8uGOxs7Q4VuOBzGjt
         VuawFdVU3/M/JLw5GYolUGo3oeefu4q2GsbMcdoYp5afYlJiyqvICtqAW5a6n6slMJhM
         pyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778691195; x=1779295995;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZOuwO8Oe7+fhFiUNtPbUZRGD3ndfLf9Y9W/ejus3N+4=;
        b=l1yqN8NsS11zlIa4g2Es9VgbbuZXs/wgM/Qm1N7Int6v85Hs54m7thltA+r+VljrRy
         Qx0ch3dBIfKvqc/vso0blSbFP3SZKTzZ211TErczmrMf5nIF9SXPAIEXEmSFT78SC606
         2P4I2s30fzv4l7Uraax9QEDJIQDoAyDiW8PxD+hKMaOovLZuVOsZlEi1I5FZeq4M6wEf
         j9SRLBc/ifuKchz5quKullj5v5YtqpPArLvHVKElKQgS8KlD40NzfVPhL914G7q9ry/O
         55JWBw8f5boytwFPkVI2taIbTQBmXMBkW31uuIgD+Ht/hVvHStG14At2lhm4ENY1mu2a
         TH2A==
X-Forwarded-Encrypted: i=1; AFNElJ9llnYUQKewR3BsRDGs2PndS642RGrsflyf1nub39J+8n+X4KoIRlN7YsRRRjgQZsKcUP+hwX795bBU@vger.kernel.org
X-Gm-Message-State: AOJu0YylbQaBuNMnguhJZCvYdjBDr+AjQss5M1496C3WyD95PMWjI5EX
	V2iksAj48JFEUAUnCvCFdlrOyUy+uejsmzS/UNYJW88W1HncSKeRjiqn5Cm+N2Ph2WWrnvLxQiz
	k/QKKZKQk/wZas4USB4DbOhDq4XrzJJLmvTFQfnycRDmqldIj1UhIj/HXbcZy4wub
X-Gm-Gg: Acq92OHDO6b88282VjR8qnoCcPU2fe3DR4ptHKGB1iGKHg0HJZt4hiQZ+RDc9EQFLas
	c6Ub/BSJYh+nbROmen0c2jPa6EZ8qTR4vbaVWvUK5xK/RboBSuNaaq3yWJ4HWPfK4NYTvl2sW/Y
	s5b29Xv36sOsqN098iJLfKVjDQGQH2Lrtkr1LNULueM5QUUyew/q/rtPC04Bl6URGxkzp/oHMGr
	o47ZfNiDx+P0i6QZ5piAtZQzEaL9d0Se2QCM8b5sg0e57lMGXrPNjEE0b8jSsTV9m9ncH9qjk2j
	hu2q3QfbGoQ+I/mUUSWTCS8lMBSdOo+EAD8SnhFcieANrH6FMRUTZiD6abg8Zd0DaDOkwU9gQT4
	4+WlZFZv3AWNXz/J+BDweV0mVcDC87glJValAJQrtmfP98iZPHnNtOMaexxQ73ZWvDCfBa2Qxuw
	fTnMiTqvXZcpWa0kBo29a9adm1Br+ldqXUCMQ=
X-Received: by 2002:a05:622a:5912:b0:50d:7384:a660 with SMTP id d75a77b69052e-5162f43f2fdmr54430451cf.6.1778691189576;
        Wed, 13 May 2026 09:53:09 -0700 (PDT)
X-Received: by 2002:a05:622a:5912:b0:50d:7384:a660 with SMTP id d75a77b69052e-5162f43f2fdmr54429961cf.6.1778691189063;
        Wed, 13 May 2026 09:53:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-393f628a724sm40620501fa.39.2026.05.13.09.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 09:53:08 -0700 (PDT)
Date: Wed, 13 May 2026 19:53:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 5/8] arm64: dts: qcom: Add GPU support for Kaanapali
Message-ID: <hdpvs6gftjhaa2xx3r3ds6ss44bvytnllv2lg6anoiq2iyxwtc@qd7ejefkxmwk>
References: <20260512-kaana-gpu-dt-v1-0-13e1c07c2050@oss.qualcomm.com>
 <20260512-kaana-gpu-dt-v1-5-13e1c07c2050@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260512-kaana-gpu-dt-v1-5-13e1c07c2050@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE3MCBTYWx0ZWRfX6uXpTSlr9Kmh
 WKAWvkM3q5C1m7Zohspp7wFRKUl6mTlWJt9uC7QmD9OMxYmR5UpWC9hNxnguwElLe7PtffjQPlY
 Tf8DaajKtRjTS5rwz0y8IGtmhcjm7+FjOuxbyQRmmuJI4dMU61/y4Z1z+OOWc9rRr31CC4tgmBj
 3XT3tS/JEuFQEgy0ELhKQcxTBomkGSvu6ylJVlEa1iOm+TjZ0cLN6kxV22W1fwAt+YHb4faqK2C
 wVjXEJHHD2+wIy9Ts/tvkG+jXr2xWLKjWvcORfKmS7ydtQnSVKJel+uZ052kMQY+TkBivYhPtuw
 SOQS+fgbH+es+5y8md9OSQnEdLObRj8HrDfzlbrfRcZi8G6FdSKai5mkqBqUaJ63YVOjQ2PhOY5
 xw7XXO6Xm2SIZ9coRcPrtcM/n+4p+LsmmBB5H+JDDFW+TjSZvPJDKArrb+WTBbcoa2dRtS7dvvV
 T7IvJj+VVLKe+H4qFSQ==
X-Proofpoint-ORIG-GUID: rUEbiK45voC2_Vb0G_U3tcKVnfbs6M1R
X-Authority-Analysis: v=2.4 cv=TJZ1jVla c=1 sm=1 tr=0 ts=6a04ac7b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=XJtuOP1FUQBXJGSJDRYA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: rUEbiK45voC2_Vb0G_U3tcKVnfbs6M1R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_01,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130170
X-Rspamd-Queue-Id: 0A4DC537F74
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296991-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,arm.com,8bytes.org,oss.qualcomm.com,linux.dev,gmail.com,somainline.org,linux.intel.com,suse.de,ffwll.ch,poorly.run,lists.infradead.org,lists.linux.dev,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 03:53:19AM +0530, Akhil P Oommen wrote:
> Adreno 840 present in Kaanapali SoC is the second generation GPU in
> A8x family. It is based on the new slice architecture with 3 slices,
> higher GMEM/caches etc.
> 
> There is some re-arrangement in the reglist to properly cover maximum
> register region. Other than this, the DT description is mostly similar
> to the existing chipsets except the OPP tables.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 232 ++++++++++++++++++++++++++++++++
>  1 file changed, 232 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

