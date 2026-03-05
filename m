Return-Path: <devicetree+bounces-271593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uESBHRKXqWlKAgEAu9opvQ
	(envelope-from <devicetree+bounces-271593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 15:45:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E758C213C1F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 15:45:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E60D6334EFEF
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 14:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABEB13A5E7D;
	Thu,  5 Mar 2026 14:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dBxqYvA9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bFN55yuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E173A7831
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 14:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772721139; cv=none; b=Ov+jEQ7fSYyDwS1g8qk0nqCk3m/l9f/wx5jOAtpOck8iTmy+eMGgrpdJwuJgWkc7d3+vPXrljz2dNJ22n8PyfFxWQhX3fcCyVyuELRC52BJ31VI0ksPqk47SDS6tZQKCycTiIM9Du/JPBLzVY2qvXvYwcJu3JUrLeT5y82bmkd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772721139; c=relaxed/simple;
	bh=XWHn+1ZPDu0FcapTL44ctzL2aOejDqiTvMTJMwQPAtk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aKltFXMDEg/ZpNKh5tBNf/bSSxantFKENyGUYxMNUCRuDOb8L0Tvv7JUr95muNUTcFk3lNHoNdsx5LUZSV5u88EID7LuF31kHTf2MSSvy/k4VFdXxgNmqUDoFXRft6Zx59mlMGrgk54/46vbN12+PqE45lpfhQUDIBDA8vjJZb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dBxqYvA9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bFN55yuQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFpK21517929
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 14:32:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z9t7wjwaSPH7MTmoJHEvGf2G
	IFWMJMag1Lhetr+FOmc=; b=dBxqYvA9e1DoQUi6qOJNdncGEpxiiTsPE9Syg08Q
	bbyR0WngQzLWCYNZB34JATCS8+MgaxS+p0ODRlF7yMDi8FGmtbbm3jZTaUFhlk8h
	+MIsHiNZGiY+k+c1OkHBKy4jJ3bLoH9rHXl2I8/dZQ87an4SMMkmaI9ZDq+E/PE1
	f61/fNg/Cd7WcBWsZSNRb7Ziz2pGlA2vaylzVLZ6XmV+jS5sIbbWtEIJRpF2Qcoi
	GHt8uk2gLRGLRMggO9p0JvlZTuHNVANXBsvtedmhrtz1Qme8TOPPPlhga/vC2VqK
	Yo43iSycI8fIdr4JtpryUPbc5GxaCDG0TdF9WWKhNGvSLA==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpuptk35b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 14:32:17 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-56ab2253e6cso47763243e0c.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772721137; x=1773325937; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z9t7wjwaSPH7MTmoJHEvGf2GIFWMJMag1Lhetr+FOmc=;
        b=bFN55yuQ/2mNoOmhBd+D/TKaRr6ia4cQRZz+VfjqJN0D8Vq1AGfR6BEmAc0DDmfEhW
         cGe36iGFB+OMECIvsFCtSIVcgcls3DNifdp+WukhIhRGmDBGmPrFw7IGdSME8GiNPgJd
         DlRqNaLEhphvlu5+mEo7t7lfwvvJvUjicau9VSZGdeYbyoBT5mbq8eMSRMr6E0aYm5la
         v8IEzub0V5nQRgv6tlOg4abtYNdak3VCqnWzahaTP7SlP9kCPva5BNY3Sekce3W6Dka8
         W7qtNnuYp7eh4Z6sdEbYeWc7XhldMnaiznJE/PKIVwHcCg8SMiwQh2uUaZZnJQFdaPay
         e1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772721137; x=1773325937;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z9t7wjwaSPH7MTmoJHEvGf2GIFWMJMag1Lhetr+FOmc=;
        b=m8eEAjApJE/7q2LfsRvR9kpqXerRvcE4fpZmfnImV4IuH9idJHpZpayLVbdrLbVquK
         C5WKZckBsGjj91bwJ9dQfnZEONUY+uruQikJT10I8JPyJwfcTvc9+CFv35Gz4Y4AfOn+
         WXZyPql3wXEIUcoXQG7oTU059ZqlIO/vQrHMrr4/eVHpp4Sz91g0+edo0s+Q0e6dmxPS
         s+BIRyiMaonzyTaEY26EKSAd99PvQJ4EEWfHnYP7e2b6lJpNCBJr+r9UzvHgHqpIHILi
         HIBjBAeT3lnUKB9ac7I3WW8lLZTR8/0jiMe0tp5oXNj73FwT5+6vzxUmQFUVDCE01aa8
         bj5w==
X-Forwarded-Encrypted: i=1; AJvYcCUvBisTa01dvUAMdm5cBU+BvUwRT2us4um2hX30NzXVQqhbmXiauYhOwsiWK90hD3rgSzreSajQ2I4U@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh5Qd51+4ZbLJpXtdWKEIS2a79OLqKWds25n0oRBa/hvoFSxjw
	fGNdTs7Z1ZwuWUkahMQMJw6yNNPnrXqVlHh+gQu9AYu9O1V2yYIYu3Bc+gauSTN6gQ0WFaMK5S1
	tkfHQ7u0XRSdLyKxeqVLF3x8TGOwxCPcKvitt+YB0kMwsvfnIL41GeGFkWqiQUK/F
X-Gm-Gg: ATEYQzzJeGd8ey+OX5Q6uiTFHcS/G+tQZPqsXapb3wmMri57GgSJqX1ArVQNfDxSewM
	vWDHr9hWkGc/+z34pkWGPK21ZFXBAqCJQcz3op4HmvRgrSBUCQghGdMurk6NHzKNgq6bZXqcDk5
	smEehKndMiOXGhEX9/tBL8VsCc2sd0UuyE2Sr0XSOa4qZDz+s4YKaD+WorcwkcPUVXPQD3Gpepc
	vl+oY6KCg0BU+sROnAjFVHM1ZFHRPjqJTlkakSyR+Wlm5bzi0KKt1Grn/3VICW3aicQRlKwkFGB
	h0JXGKaN/CjMuHDmNDqdvbnULzWo5lrvv+hbJiPKeCPVIXJjqXETCa/fL4y0/U5xsrEPA2i5i4/
	qh2Uwrl4f0YmGwGrS9THUh+J1L98wtHJW/QovZPpqa68y8Xeg5PPvqIBb0vQfrOJgFu59HzgP8P
	gwI6B6DX3D1HGTVHesE4cA3xd3hvNSuLHMJcM=
X-Received: by 2002:a05:6122:ec7:b0:56a:92d8:785a with SMTP id 71dfb90a1353d-56ae77a2c83mr2575229e0c.15.1772721136780;
        Thu, 05 Mar 2026 06:32:16 -0800 (PST)
X-Received: by 2002:a05:6122:ec7:b0:56a:92d8:785a with SMTP id 71dfb90a1353d-56ae77a2c83mr2575192e0c.15.1772721136252;
        Thu, 05 Mar 2026 06:32:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a125c65f9csm1633905e87.86.2026.03.05.06.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 06:32:15 -0800 (PST)
Date: Thu, 5 Mar 2026 16:32:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 7/8] drm/msm/dpu: Add support for Eliza SoC
Message-ID: <anhregq3m6axyjozkrmcaeh3fkbmxxioypfq74gar3kl7l5vew@mmmh2fckulk2>
References: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
 <20260304-drm-display-eliza-v2-7-ea0579f62358@oss.qualcomm.com>
 <mo2fc5oalscfgagdrj67aa7xssnugsara4dartp4ycsdvoyvwv@swzmdnwtij6u>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mo2fc5oalscfgagdrj67aa7xssnugsara4dartp4ycsdvoyvwv@swzmdnwtij6u>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDExNiBTYWx0ZWRfX1XWe32+jpxOz
 +XLBv/+kGXf8RTUuxnZB8spVk0E6LiyJjEhJ2LW2+D3iyLOHXRWeF78eM5LBN/RdKHUC7XvJVS8
 LODltNre4IEQ9MpJXBkZe3lGe/KXOU045c52xpp/6KOuDwFz71MGR4wvK+ROY0PnUnvIU+OIibJ
 EZHc1yejtLRzob4hqzci6g3bahn+qW4L3N7hCaYFvfmdFWrKZkHENFeIEzfJcX0MXw12PaLBMbV
 9FBqHbL8Wny/I6m0qN4/tVnW6MDa5ki6Gg7MBYSOMVDBjo8EbD0WI7zaH4bHymrXB/O8W54FsLK
 u8m4JO3uWOJfbpJHhXw568kqYTou6vthE9AUaA78AmRY9oa7lw9AKpzqR2mdooqK0NtNg7fkpz/
 ywCVeOR/wTicqG6B+z4wJkHOz0ohm3uLMOKcZNP5FfigFx8vuz8eBYhBjttMAhV2oeHoHreTF4/
 kgTUwubBs+Bo2selEsg==
X-Proofpoint-ORIG-GUID: sLq_9ijENc4mjDRMkLNbI-m3XeZabpEW
X-Authority-Analysis: v=2.4 cv=Ddsaa/tW c=1 sm=1 tr=0 ts=69a993f1 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=RHq2fkPijMoWQiYS0DMA:9 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-GUID: sLq_9ijENc4mjDRMkLNbI-m3XeZabpEW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050116
X-Rspamd-Queue-Id: E758C213C1F
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[bounces-271593-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org,vger.kernel.org,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 04:29:43PM +0200, Dmitry Baryshkov wrote:
> On Wed, Mar 04, 2026 at 01:58:49PM +0100, Krzysztof Kozlowski wrote:
> > Add support for DPU (v12.4) on Qualcomm Eliza SoC, with one
> > incomplete/skipped part: HDMI interface (INT_4).
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > 
> > ---
> > 
> > Changes in v2:
> > 1. Drop stale comment
> > 2. Fix INTF_3 controller_id -> DP0 (Dmitry)
> > ---
> >  .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_4_eliza.h | 365 +++++++++++++++++++++
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
> >  4 files changed, 368 insertions(+)
> > 
> > +	}, {
> > +		.name = "intf_3", .id = INTF_3,
> > +		.base = 0x37000, .len = 0x4bc,
> > +		.type = INTF_DP,
> 
> This should be INTF_NONE until we support MST.

After checking more, this is fine.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> > +		.controller_id = MSM_DP_CONTROLLER_0,	/* pair with intf_0 for DP MST */
> > +		.prog_fetch_lines_worst_case = 24,
> > +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 30),
> > +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 31),
> > +	}
> > +};
> > +
> 
> -- 
> With best wishes
> Dmitry

-- 
With best wishes
Dmitry

