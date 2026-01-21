Return-Path: <devicetree+bounces-258156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL3uN4JhcWkHGgAAu9opvQ
	(envelope-from <devicetree+bounces-258156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:30:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E145F886
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 856DF4FB402
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79BB8347FE1;
	Wed, 21 Jan 2026 23:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lpdbYA78";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fjaaT9ST"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEC93491C2
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769038097; cv=none; b=j/fmP9MJvrwk1t7BrkAYu2APWHNIsLt+ir+ewZ2FL+7rjKdugsM2BYw9He+SlCz/c4AYb5y2fauUbmcUv7RfGThFuwPbYLi7yykuM8tBQHHvcFyKReYWJkYc09O+6mfqTvQW8hfq54QcG2XZDG1UouqxYfs9XTDM6m/D06OHfZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769038097; c=relaxed/simple;
	bh=2wdp9GH8GOWp/loXnQjcloFEnSMbf9d5DNbDdTk75vQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FjMMwAjfxQ8KugqBEhquCe47gzN4kPrsuOwQjkpaBDqt8Hlf75qAUpJMYlExepO9i6AWNpBumC6eWMa62FJ9pSTPWkpnMAtwEKJY2FdKj0CjuQTVoLHwNJaZOtg6D6eYpv1QJQJW6rxa0q/VW9YX67HsSv5xTM/otY15/XbFtLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpdbYA78; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fjaaT9ST; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LDxm6G3620342
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:28:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+eZGwYuNL/9pmtkPhO1CHKv5sEsHAdFAmDE3I8abf10=; b=lpdbYA781GOrNi3B
	+vtAccJhathnY7Tv8DoTtgLyMDS8oWWIEhOim0DftASW0deFLXViBYAEnRUUz8oB
	wX62B1552q+qpYUK9fjgDRphdHyPxFTgzRQGkIobX9WQ6sKxZdNQLxtPlqmlPKdl
	rsfTvUCIn56R/gb6Os+MvqAXtcGRLh2HZ7hfG/eX4X7372hRT9ggawwZBxqbGWWv
	Lwezhs1mmKWsDXM87vUhFfBPPjOJo77DbcittOzDU/r8xFnk5UrHG0yTmAOgG/7r
	GQuZz4cRfSYTpU4j9gOW3OZMqMwVE6PQdXRzTDXXpvC9KKSrUkXNyFJyTHWqVs/M
	Bxwvfg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu062ht7r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:28:14 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6ae763d03so47211985a.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 15:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769038093; x=1769642893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+eZGwYuNL/9pmtkPhO1CHKv5sEsHAdFAmDE3I8abf10=;
        b=fjaaT9STCe138Lc7dnRJAdsw1oKi46H4qhY6TBuj/QjxVzYHccPWVAsvO7IvifQIrf
         JJafuXM9n4lcSXwwuwDdSWuwEdEsHkSbULI9aSKX+UhQDJ939Vx5YLeuISfEt3UfFmKO
         CBJr7JimU6ejebGt9qTDTvsPTuKlUWt/StaCxxbKmbk0EMkIZJFp5vB0YXLxtGOcio5N
         /Kt3y+qGKilIyk+R+/JaP4CcOwKy0LHlMYynk7aJh+Ts1V5Y9LwcnYyvyTqdz3ceVXJM
         5oPlAMbpwsbDCZavbtakl0OeVl6Q20mNRN73irZuWb4edlXfgxCOLFpYH+//hYnBUdEN
         aGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769038093; x=1769642893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+eZGwYuNL/9pmtkPhO1CHKv5sEsHAdFAmDE3I8abf10=;
        b=tKCH7OfXqNiAsdn29GNu4jtM5SfCSIZEE/LRnI/ZUG7sQva3PsyVHV0s4YCX0p1rE4
         MNlGgg49LY07oiCikiZu3lwTnoJ75u5erN/8cNXvSRKZNvOATknDdgM+A31L0jy4/Fh/
         mOIY9g/F9nNhM19VzUOUquD6kmdCmFgkzwmtsFXYj0E1nt+3uQ0fzZHEGoZk8QU9BYXe
         ulJB4Ti99W1gQ6vdvzAyqxOMh88XCc9kdQtnhfMXC2bi6V04zwPJJsqKXIvB3rbCw07K
         UTmggMtXfXoH+eMI1cr3Qar/xCTgiYidhb9J8ZpaLy05rLUBBlz2SaLUKa7T89Z7iY/5
         jrHg==
X-Forwarded-Encrypted: i=1; AJvYcCXsRA8Z/uLaucuJ46dEmIXNStoUXVJiqTTXp23mnjnW9Tdg7WeovZOCQ7I8bDuLyz7dxEAQFpNrC0ha@vger.kernel.org
X-Gm-Message-State: AOJu0YwI6GrTVR+vYBUx/PeORi5XZonNmy1SMlbouyPSxTzUXwMlIauv
	ypSbi6uW4kaUzwU//2gGDmLnSnZOX4UpOyyGBubITRYDdED+gl8WECFiJC5bnjbq1K4oBQ9X7Tk
	+hG8tHgrxQXhwIn0o1ip9jksRdqgd8e3ou6NNB6Xj17Iq2PCF+q5fFrojpDw6Zwty
X-Gm-Gg: AZuq6aLsyBub5xVk3YXjUJ8fIdKS48T7ccrJQqfRgsecNQGsBqSiVMDg5ZF6qnKJ1ZI
	edc+DDhuCCXn/YEvdmo11xY4oy8qN/uDzGBiDMcCXayir6YtdPtksQPisRiJllx8d7ndSyH6LJt
	MLpVsAjZiyMbl4dfn1iAqkEWTTLCTLorm2Qw4oaAwy6tzONQcUIBfODLuZtPj2UZ9e4nWECsrgy
	pZh5GMtF0W9E9ByqBrKbVONlI9oT3tY+3pvxc+hnjQw3dTqccr4fyknGhXZpquC1LcfwMEflDbe
	AiNzCVdiEhhvtmQQEQ20El3conMVgOknNOEM7f1XOe/kpwT/pdHwf3xccc72nsKxWMRlYzU/8pw
	h73zBI63cGpdpON5Bc3rLDhPIzAP4Z5e9O4ZJWPFU0Hm3JBUfzyp5fPd0qu8lyr1UhyJvDZEERg
	LmPPETThCBOVdV4CWa84Qf4aI=
X-Received: by 2002:a05:620a:1992:b0:8c5:3143:84ef with SMTP id af79cd13be357-8c6ccf06c21mr849192885a.47.1769038093525;
        Wed, 21 Jan 2026 15:28:13 -0800 (PST)
X-Received: by 2002:a05:620a:1992:b0:8c5:3143:84ef with SMTP id af79cd13be357-8c6ccf06c21mr849190485a.47.1769038093060;
        Wed, 21 Jan 2026 15:28:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf3976dbsm5159393e87.66.2026.01.21.15.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 15:28:12 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v5] drm/msm/a8xx: Add UBWC v6 support
Date: Thu, 22 Jan 2026 01:28:09 +0200
Message-ID: <176903808259.3665431.13908205509840299317.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260121-kaana-gpu-support-v5-1-984848af12e4@oss.qualcomm.com>
References: <20260121-kaana-gpu-support-v5-1-984848af12e4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=B5i0EetM c=1 sm=1 tr=0 ts=6971610e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=75Vji5L2PsKrzm2Ba-oA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: 1gzV0bv7n04r2nXnyD2IHZA9ecgLc8rV
X-Proofpoint-GUID: 1gzV0bv7n04r2nXnyD2IHZA9ecgLc8rV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDE5NyBTYWx0ZWRfX1iv06zPdfeff
 BZ5wv0b1sHSoMklP2cK+xzPxiVlrNbAErStd0HbLvOeEEVXTopX1T648isLaYsgfWmoNtJy3gzZ
 a45kxRA4x/UIIYsgYUlj0RYlsX/AcgXCjcAwDDp4oWVEAsAYsF3N84VrZ8Oh2n/G9KvzpgGDDgG
 NODxX9dilFA6X6Yx9fIxTwa3qhu/VgsApj2cqH1WQlgOIu05fRrpd6r0vilCIc2T7mczDan5h0I
 KWRiiTjcxQguTowR9Ej1tuMzH0ciExmuE0CvaaPsFR67kHTn1qdMt4s99j2T7MH1ikpkRC5M/Ls
 bkn/hpuflIwGXvESZAs1gdkaRzRv8y77ZbjL2HoOgthw6ABt05e2VC3f9YvKMjQ+42d9BnHqnix
 76Xtmj00S8/WXkMMNsm0Whist/gqXvrwDWtpRHqBjzVUXoEPzvbKdvMTdybXf1hNyP4tAKx3vdD
 aBqXqncnZKmXIb2dzhw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601210197
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258156-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,marek.ca,cosmicpenguin.net,arm.com,8bytes.org,linux.intel.com,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 57E145F886
X-Rspamd-Action: no action

On Wed, 21 Jan 2026 21:31:57 +0530, Akhil P Oommen wrote:
> Adreno 840 GPU supports UBWC v6. Add support for this.
> 
> 

Applied to msm-next, thanks!

[1/1] drm/msm/a8xx: Add UBWC v6 support
      https://gitlab.freedesktop.org/lumag/msm/-/commit/50c4a49f7292

Best regards,
-- 
With best wishes
Dmitry



