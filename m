Return-Path: <devicetree+bounces-249897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CEDCE001E
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 18:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80DB7301E584
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 17:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC5E13957E;
	Sat, 27 Dec 2025 17:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f5XilzY/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AXvqUwNb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E02199E89
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766855735; cv=none; b=Kfkl/C9iWP68d/3gR7GiQpSCbLVtpWlJ0DxD49tTSs0qisr4wqd48vS/TEDVUlgJkd5wu2u4Tv4iVhebk9Pze/G7aR/f5nh4erio/BYp8SjAsDPQjNRQa7/TkA1ZVQGdjgMNwmzd+4ecezjzBA/1xNeXxvRdgvuDS6xNScAxHng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766855735; c=relaxed/simple;
	bh=fwSYoWUhlvOk93mAFeFzdqaippMyY4rx0voE/me39Xg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tg9b+7MIeMkaCuTuQEMOYXrnwEzmQzfxGaSW282fm+Y9UckjekM+3B1ihsOdvWHYM24+rpUgfPBICGhqImK9fAGve9LbOqPwwvkpKgTzktmSjRLM932YDs30W37C8HWd8tV8si/fyib52giOuuzF9mbRLnlMUj4g16M91n93jjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f5XilzY/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AXvqUwNb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BR7j9rk3425940
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:15:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hDrucTMu/d6l0Lwjs5E9wquH
	PdvJCaNtTxxCTiFaX0U=; b=f5XilzY/UKLaixnCNcAADCTE7WCdr5FrS8gJbvgP
	Lmh+R4YCTzdcwt74969KA7zaPL7gab/Tbew7s6S+LpcbnDMsj1Kckqr0T4e8c5lb
	xmtNtcoGI/aFY6QbeVT1dyhffGV+pLSJtBFpBJ+oxoToJQvIIcBoA44I91QjLl3u
	ze0ec7mkudIWks6HRwOAE2keQXxZDAImgYUHd0TuOMmNuc4TeXm/O3DAZAyh9sZl
	OsjNpF7bMUdd3xusAN97whjRJJiKQlWu+AG2S1nrtvWFxESHvqZvu3OvS4yATGiH
	NERtw+anAmPRztJ9W7uDMr0oG3N+L72jDzPShb89vaLvTQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba55e128q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:15:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8823f4666abso195152176d6.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 09:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766855732; x=1767460532; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hDrucTMu/d6l0Lwjs5E9wquHPdvJCaNtTxxCTiFaX0U=;
        b=AXvqUwNbETvVFJMwWiXvcff3uDd+bZQsZl/O0eprdimDAcqKZ4jnL5KmwvD4UFQX8q
         OxKEZzJfeK3dCteVhTUiymZ5b3HCqc9LalCg/OVtNDHWpi2LCAoe/HWHZa5KzDsfwhQh
         1XAtDyied1DfOxwB3fwxiReSZtCiRw50LCR13PybotTzYD1Tu6GuNr/GUyk31NJAv8Z8
         vIzM3LWQm841sj2yIl8u5BscPT/+1hmzyYbiuDUCgbVDkGiSIawwwYvKBtKFJwlkqzaF
         YEmAFWNAYjzbFx0GPpfynTy9YyNQtqm7oeZnyg9SLDQV1E7mojjJ78ROEVErTonnJndG
         A5hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766855732; x=1767460532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hDrucTMu/d6l0Lwjs5E9wquHPdvJCaNtTxxCTiFaX0U=;
        b=j+yIOJWrFbobEsalD2wxK/QDNnbNDU+MHDJ/DHqd4ksWEpXIuqG808yGHIK7zUC35z
         tU9mZCAGs66ZTh5NB4QELIVgMLlkQrHQ1u+LnzS96B6pDCJjFDDExFaLZexvKPkF+fqQ
         jycx1LyBDfwtQTogvRLA+V3JNRpTM/eUL/9h20SE8QUh/EbVexFDJP5EJltgwEcqqEpn
         ko8QVBu+9DvvHsDOZhi6jtQoFgYRtbZ+3MRvPHwfudsTkrpUv3yMdBM18yn67uyL//K6
         NjrjnQsfq3ksKvOBKLTflFxyhKHHlJckbM4TWtCCLui64tRlejEvZGcRI0JyHlXIVLAM
         SFlw==
X-Forwarded-Encrypted: i=1; AJvYcCXPskLMR/W4kkruoBDZPgZ1hja+3n4wnVC/Mjteth0+tkoJXBpvwEBJ8zZP5FYfYtnA4SYxYmEyskdV@vger.kernel.org
X-Gm-Message-State: AOJu0YyNZghNj+NOYwOjmvi97yNqtnGv0ii40CbKY6kKsuvuTiHHeBCx
	EzPfvEB7tsB6vXdGc1zB0SM2FwVQ+NSB2SuAIk0k8o4XifZDrYgy6B2qRyNxBxauhcHh9+ztqhj
	ArmtSp8CIQibsiElEWohdMjeXQovLhNZs5HE+drmwba6Gj797kOjujYxxKyuTBpIZ
X-Gm-Gg: AY/fxX6xcHOxwAHg5bPr3SBVvFw9Ov4gc8m7YP6HesLri7yKdznAd0l7aF23X6QrNUz
	hR77H0Na3Y4856ID+hEb8O05BoNXt2Yf6pRamOLdNVOVHdkEjoZzD1PbgU0QV/2XjtDWQUGbU+Y
	T+DvQ/9+CWvUZy7ngQIdEsHN5f7GIwwDm6ek7e/wUhfyA8gD2ygOANjw+/CmV8xo36llsEk+9Dj
	O+XEhkC719ATZpA/loljw271bGTBu9etpFvDyhubqAT0cUQCDoUSiHp1JjR/oJ872qJ6MuPkg7N
	8IJIx1eYrYuYw/Lnlb+GEsxH6lo23R0X8AMq0mkdXf9mPY2MJkxLcb82sPworkphcb7emKUuPOo
	6ajubADMRFPNcaoNR5b/XK/ITFSuofFCwPCMm7vVhjPzs3Q+3mRi1aAYwmYBu/TueSHuikgcrik
	E+x0Trindl9zE0FlTVFE0XiUk=
X-Received: by 2002:a05:6214:610c:b0:88a:30aa:6c01 with SMTP id 6a1803df08f44-88d843346a7mr320090636d6.57.1766855731858;
        Sat, 27 Dec 2025 09:15:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGG8dtmHBCMixEdDr9CNrcosDg1mqfzDAkf1YwW4Tzgo2YwThCJUKKo+QNtZbWzCCm8riUZ6A==
X-Received: by 2002:a05:6214:610c:b0:88a:30aa:6c01 with SMTP id 6a1803df08f44-88d843346a7mr320090336d6.57.1766855731439;
        Sat, 27 Dec 2025 09:15:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812267b184sm64491571fa.43.2025.12.27.09.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 09:15:29 -0800 (PST)
Date: Sat, 27 Dec 2025 19:15:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
Subject: Re: [PATCH v7 2/4] misc: fastrpc: Rename phys to dma_addr for clarity
Message-ID: <hglfo45u7omm2g4e2yn6rl3kxcw7wwfdf3wl2wjibt7jedm2uu@5z4rxbtemgdc>
References: <20251226070534.602021-1-kumari.pallavi@oss.qualcomm.com>
 <20251226070534.602021-3-kumari.pallavi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251226070534.602021-3-kumari.pallavi@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI3MDE2NCBTYWx0ZWRfX4XBtQiGf5P35
 4TKnSKv9R31ncfpfeQbaKxpIMNwwlknoc5sZZRIJe8ueATjo3U61WocyW+6AqHFIQ8DEMrAareU
 ePGZL7R4Z11TXTXrqkxybIe1lyQ8omhWhKg5RH4q3FKLT1WqP8RSozKMjkpKeF1bLmRbR4MLt+e
 Dh68avT61/tbE81GZLL7m84j90Bst0ptqHv0rv8VEEXllajFQM4zEAntoqATYYhWo/+gHJEZUcE
 RgdCOFlHT/XlXve0oUK03bDZlvTvtVW9PBsOrn0S64+RUnD/7q0JzWZlZj9nafxsXPj2cFmIwIq
 l9PFtjfybQbN40yvd3d4rsTZa7jt1OppcghmUddZPamSgOzzyIfIIAWglNC2sQX2VUYlZyH98z8
 qaNVCSp30qb4GOlkCg9O4H14zjGdJLvCl3EN8yRPFbbXzL6b+ELoPbVqjuEaboR1vMP2nAF7/sU
 CKDe4Z6NepZ7arM/zdA==
X-Authority-Analysis: v=2.4 cv=UMDQ3Sfy c=1 sm=1 tr=0 ts=69501434 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qdViAtwzWZxfokMtc90A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: P-yBjQPFyJjh_EN7rHc30crfA0PAhaKZ
X-Proofpoint-GUID: P-yBjQPFyJjh_EN7rHc30crfA0PAhaKZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-27_04,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512270164

On Fri, Dec 26, 2025 at 12:35:32PM +0530, Kumari Pallavi wrote:
> The fields buf->phys and map->phys currently store DMA addresses
> returned by dma_map_*() APIs, not physical addresses. This naming
> is misleading and may lead to incorrect assumptions about the
> address type and its translation.
> Rename these fields from phys to dma_addr to improve code clarity
> and align with kernel conventions for dma_addr_t usage.
> 
> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> ---
>  drivers/misc/fastrpc.c | 77 ++++++++++++++++++++++--------------------

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

>  1 file changed, 41 insertions(+), 36 deletions(-)

