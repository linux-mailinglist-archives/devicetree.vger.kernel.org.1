Return-Path: <devicetree+bounces-266308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GD1KH9NHlWkLOAIAu9opvQ
	(envelope-from <devicetree+bounces-266308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 06:02:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E73A615317B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 06:02:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1078C30603F4
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 05:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB292F3C3D;
	Wed, 18 Feb 2026 05:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oWHRATlP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hSqMCF5v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5752765E2
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 05:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771390897; cv=none; b=I2uvVI7UinI05vCKSRJEzwHlxg38ynYq+YameGUDnkXs6KbQNrTYmS+xxnkrEbN69QSvTn8rUH7dFbhSgyu0Qpe8Q+clEXFo8eh8Jqf2ykCoPqV5SNUUWBoppWU8j8aVnvjV5ZHpv185i3BHGiCw1yweBmJphlbVEmY6wnJEa/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771390897; c=relaxed/simple;
	bh=IpXbrC61/fq9QXKuA8vNqJv6ogdbFJyCwrJ+zr6Jr7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZWkrKz7rR9wOzloAj/Lq00liWmsPv0ghv+r+VUJPTe2YnsAQB7BSq0DTcoOg1Yv0X6a8Wn3Oi8Bsot/h8SvmUfzd7Y601pGOlIn0FNTy2GzjD9PfwLZ/TtkdU2l0l6KSnZBCc4IyM2DhnTJWM86t9Z3XR7mRVU5PA3QKWLQsZNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oWHRATlP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hSqMCF5v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HN6Kvc413923
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 05:01:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jO11N00KLBiobLQAubKnwu0ldzywWFwUTepoHLqvWF8=; b=oWHRATlPey5V9xdj
	wwM76sugMwaqzJYAkaYwcbCofIbmzJZCcsL8AQOw++JEkZbvRN+a+KTkRi/5iLdP
	puCp3KC5jwtpyATmnOdjlHyX8n0z5UbFOkBtb+JcpdCDmaMQ6catAjgTotSb8/B+
	K+2BxzTnbrYfzM5HSLPdT5Uqcbbyk1obxd7go5hql/f263ecFxX+m2Oa9XYjT78+
	e3mp8A+8xuVqYQLDDeIka2wSXhLvPbN4XxCgs+clxB08Oh0Yxt8b9oZnL1uQ0M2z
	Qh3wvmnqrhzHQFZHJBCIIFKLqg7vWGZpbfj06FDDyyQ4PVKTgry6rXY4BnxMv28r
	ay3QlQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd1q6rnau-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 05:01:35 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a944e6336eso289560235ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771390894; x=1771995694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jO11N00KLBiobLQAubKnwu0ldzywWFwUTepoHLqvWF8=;
        b=hSqMCF5v2DQeBwLmzxeXmNHq+pYpF3D+uadcl1Oyjto23viQUpjQfV3Ucv7jBQX+7m
         QASIrNLNUcVr3YTw5ucal0Q0EIXqikDPfS4wNzJCfMS2+1aefQLcKDfn7ULoK+u7+Q7j
         KI62tQotxgUdQgUBytB9uB+42y69d8OBC3O+AAjMcx5yaV3Sz343yZuQupqjJ62FNEtN
         QX5ADmcS18x8PF1v2ORxcXBn/0qVuUDQJ/lDtWLHCGsRlYcKhNUKVtlCyqgy+iST6N6R
         G2PBclK2KRBCzqpxbJtoTp+kXGvEqdFLNsfcn4hdY0SatFb/6m1+hANw7wkOIdiD5KK7
         02UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771390894; x=1771995694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jO11N00KLBiobLQAubKnwu0ldzywWFwUTepoHLqvWF8=;
        b=gPpc6X8KxhH/sqr7VJYCdc3BdS1J+NUOZlTzgoafD+vB7zfwgY2nywBHOoSULWSEuz
         KGqmTEshocsk/6xKl5BftwBPMe1u63Q6dR39lfFIgaJbmzWLBRuPI16obbtT7UsG96+3
         KsUxW0cMuD2RzKyAIZVJCohIzdmn0BIR42G/Tw6tx5weM4XnQg9g3+Y/mkJU5HXIUMOa
         c2ofTUCTRam7xNRZeOk+rsaaGP1iqAV3JJfZWh0Gnc/RpD9DmDQJwBdfSKhiCVh5xAeA
         e0MWGdU4/umxmYxb1ish3Um2DasBBu9dA0/3uKjoXzI8bjROZV7vt+L0jfm/DdfvRrbl
         hPRA==
X-Forwarded-Encrypted: i=1; AJvYcCWhzV/kDvXoA/leIWv/L3uG1Tq1yAo9s6NAQb3zXM0nlbph5o2MRFi2CEijojhLLK+JMMrzxW4YsXg6@vger.kernel.org
X-Gm-Message-State: AOJu0YzNro6Vy9TW3vUXCIyPqcfj2tgBBIcQRuH1TZwDJSdMtzs5oODi
	S+NPRB66pDIweqX5XdreH6Ne5smlkoVB58e9Y2lmXRSWzHwMQAYwoPjvcGdZ1NSll7lFO83VSB1
	NbH5DtrKTjcAWqZ5TeBuGYtvIMRjowzZZfjrI2VHHDEdZr/L0fHvfjulDVdq+KPn1
X-Gm-Gg: AZuq6aIxhKyT63UUccj/cTyeCWRrEazbIUaZzdVmkfaM3PkxHq8OHXlw8mmiOnK3gin
	Ypw2forIpSK3xPzqjhMxNpiWaVnN9B031eR3bUFA7xD+d+VdxitL/jkx95/zvpC421BI2qPcbZs
	lvZsjHAHApsSHsoUETFMk3NKlaHoQuOvkMQ6fXwsO283RP2tjTUWKMEwy5wxl26VcCBZdJ55Eia
	zj56u/EXbn4gYqTFTlmcdD7W6yR8BTEvg5Ax+vDcuNvY3hrxlmAPC85wwIcX0QwmHbBeEcFC0aH
	TwdTN9r7RoHdEZfN0I3ddTRxKML4kULj6Xo9rn/XFd9d7Igu+XzA7eGxaHWFgFwLL91yfR/Qfaw
	G8MhLGE/3rFYjLs8wlArL9pnGO//f+5xYXq8insc/8o+YOaInzriCDr8e
X-Received: by 2002:a17:902:f549:b0:2aa:f0d6:bf59 with SMTP id d9443c01a7336-2ad50f33fc6mr8541465ad.35.1771390894363;
        Tue, 17 Feb 2026 21:01:34 -0800 (PST)
X-Received: by 2002:a17:902:f549:b0:2aa:f0d6:bf59 with SMTP id d9443c01a7336-2ad50f33fc6mr8541225ad.35.1771390893896;
        Tue, 17 Feb 2026 21:01:33 -0800 (PST)
Received: from [10.219.57.109] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a713e8bsm163530905ad.28.2026.02.17.21.01.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 21:01:33 -0800 (PST)
Message-ID: <f3c8513c-e249-4dcf-aacf-785f9ba2427d@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 10:31:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/3] of: parsing of multi #{iommu,msi}-cells in maps
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260211054033.2796660-1-vijayanand.jitta@oss.qualcomm.com>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <20260211054033.2796660-1-vijayanand.jitta@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=K60v3iWI c=1 sm=1 tr=0 ts=699547af cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=NEAV23lmAAAA:8
 a=LNEgvAdLbYxa4KfAdnIA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: lfDqIlqSg6DEKKwbv3B6jRMNP5UZsje7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA0MSBTYWx0ZWRfX14uIqeEadSKd
 sPaYipwNd+Ew3ZdY3rzal/sl90ow6TkYFyuwMOkBHtL3MA2MhtQH/DRC2kpbC9R3g0loxGT8aeN
 SRut5fs/IibmtZbohHZqh7qE/h0hHvFxRlX2njIILih+IyByuODRNL0CYhptqhpjlupGi9BeB9Q
 NJAuak0Ccj4ssg9B5F2ILXK2cHfuAT5efgnU+uO9M8qPNYS+9Pv6kdPvKH5r3UCfRSc8hOLBhpC
 vrI+iMwQEX4gTLk65OpbEHjgNeWtPoTGLq6JKFWrIiAPafObKOYSev1HlYPBN3+lIJD4rhgjYlE
 4/MW/ZLujNA29w3c0JIKQDPHNSZH4BCZesIzG2D77stPjS+I6JFFmz/KYHGoRYHvo2Wax8da049
 /uHT/pcUHP3mjCP5/jOuikEWk4ozaT5PWJ4HIy5jFCy2npvsck+1uJqYWqeKicD+ei5md5sT7uN
 GsSmn1ncBSB9LAE7KrA==
X-Proofpoint-ORIG-GUID: lfDqIlqSg6DEKKwbv3B6jRMNP5UZsje7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_04,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602180041
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266308-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E73A615317B
X-Rspamd-Action: no action



On 2/11/2026 11:10 AM, Vijayanand Jitta wrote:
> So far our parsing of {iommu,msi}-map properites has always blindly
> assumed that the output specifiers will always have exactly 1 cell.
> This typically does happen to be the case, but is not actually enforced
> (and the PCI msi-map binding even explicitly states support for 0 or 1
> cells) - as a result we've now ended up with dodgy DTs out in the field
> which depend on this behaviour to map a 1-cell specifier for a 2-cell
> provider, despite that being bogus per the bindings themselves.
> 
> Since there is some potential use[1] in being able to map at least
> single input IDs to multi-cell output specifiers (and properly support
> 0-cell outputs as well), add support for properly parsing and using the
> target nodes' #cells values, albeit with the unfortunate complication of
> still having to work around expectations of the old behaviour too.
> 							-- Robin.
> 
> Unlike single #{}-cell, it is complex to establish a linear relation
> between input 'id' and output specifier for multi-cell properties, thus
> it is always expected that len never going to be > 1. 
> 
> These changes have been tested on QEMU for the arm64 architecture.
> 
> [1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/
> 
> V8:
>   Removed mentions of of_map_args from commit message to match code.
> 
>   Link to V7:
>   https://lore.kernel.org/all/20260210101157.2145113-1-vijayanand.jitta@oss.qualcomm.com/
> 
> V7:
>   Removed of_map_id_args structure and replaced it with of_phandle_args as
>   suggested by Dmitry.
> 
>   Link to V6:
>   https://lore.kernel.org/all/20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com/
> 
> V6:
>   Fixed build error reported by kernel test bot.
> 
>   Link to V5:
>   https://lore.kernel.org/all/20260118181125.1436036-1-vijayanand.jitta@oss.qualcomm.com/
> 
> V5:
>   Fixed Build Warnings.
>   Raised PR for iommu-map dtschema:
>   https://github.com/devicetree-org/dt-schema/pull/184
> 
>   Link to V4:
>   https://lore.kernel.org/all/20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com/
> 
> V4:
>   1) Added Reviewed-by tag.
>   2) Resolved warnings reported by kernel test bot, minor code
>   reorganization.
> 
>   Link to V3:
>   https://lore.kernel.org/all/20251221213602.2413124-1-vijayanand.jitta@oss.qualcomm.com/
> 
> V3:
>   1) Added Reviewed-by tag.
>   2) Updated of_map_id_args struct as a wrapper to of_phandle_args and
>   added comment description as suggested by Rob Herring.
> 
>   Link to V2:
>   https://lore.kernel.org/all/20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com/
> 
> V2:
>   1) Incorporated the patches from Robin that does the clean implementation.
>   2) Dropped the patches the were adding multi-map support from this series
>   as suggested.
> 
> V1:
>  https://lore.kernel.org/all/cover.1762235099.git.charan.kalla@oss.qualcomm.com/
> 
> RFC:
>  https://lore.kernel.org/all/20250928171718.436440-1-charan.kalla@oss.qualcomm.com/#r
> 
> Charan Teja Kalla (1):
>   of: factor arguments passed to of_map_id() into a struct
> 
> Robin Murphy (2):
>   of: Add convenience wrappers for of_map_id()
>   of: Respect #{iommu,msi}-cells in maps
> 
>  drivers/cdx/cdx_msi.c                    |   3 +-
>  drivers/iommu/of_iommu.c                 |   6 +-
>  drivers/irqchip/irq-gic-its-msi-parent.c |   2 +-
>  drivers/of/base.c                        | 148 +++++++++++++++++------
>  drivers/of/irq.c                         |   3 +-
>  drivers/pci/controller/dwc/pci-imx6.c    |  12 +-
>  drivers/pci/controller/pcie-apple.c      |   5 +-
>  drivers/xen/grant-dma-ops.c              |   3 +-
>  include/linux/of.h                       |  33 ++++-
>  9 files changed, 152 insertions(+), 63 deletions(-)
> 


Gentle ping.

Thanks,
Vijay


