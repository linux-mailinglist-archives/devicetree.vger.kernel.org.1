Return-Path: <devicetree+bounces-235053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDFCC341D1
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 07:59:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2ABF14E58EE
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 06:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351C72C237E;
	Wed,  5 Nov 2025 06:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mJO+vP7Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DFtt1y9D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEAC2C21F7
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 06:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762325941; cv=none; b=c9F9Jdtnbol+ADWptPbBRB8K5xaNTRztCsJlRtGjBnAWq1wnbUgi1xJNinQocBn3fqY+acGZ4eQwcHpK81WDZqDzXvoXspWAHjQtRSmQ7x0kFrs67nFOG3B3Cb9NU3blhzxNJ9luOfD8aMc6Ffy+KJ8L/RUJTDlLTKiJmYJBRhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762325941; c=relaxed/simple;
	bh=h8jeUXOPEWHjBZ/v71fpiBeCmHncTj3cjcGix9nyi/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PaEnBtd7XXoFPQTBAj9p9vpYEUu3ib/0KqSqavUumjqLi7mKjkAfU5MUoH06zXEO+Pp888mvrF6JRmUYwlNNYbyL4xn7FdtACIz0hoM3NtR58bjLNlJd/8MI6k37EbSOok3gFOCw/OMuuPuqs+RCo1eyEsGcJH8yqM8+tL6mxrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mJO+vP7Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DFtt1y9D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4KgMU23165836
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 06:58:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HEM1LFM1zi8Gc6HqJqM7X30t
	DM7ApP1caBVZOcNYVv4=; b=mJO+vP7ZAYYmlPBjck1JGaOoGYMBmxAYHvvERR6L
	AkVkWCaAOirxTeADvTNX8a9JZ84IvGI1C+RIe8hJxE7gvzQgWjQrPUD8bRuIh9bK
	yk2exPMD/2yHwhhi8i0t+UGewPweLyRk9HYTx8CrQOZR3VGDLq3PnQlMV+P0QlYl
	cExEwU9LZwoLw1bqkXpRDQW0YGOMEcIw0YuAtdoQ74m9fxpYn4CsBiTeufi5sabU
	jqoV/BmqoguZFYIyrvES4bukLrvcBt6jRU8eEtkeuNs3UL/rowEaP4DzMdVbHJJU
	MxwrtF+8piohwv/aVix5BXRXRh9zYxybfGOEUzKopVAegA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7ketjnup-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 06:58:58 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-341616a6fb7so2669998a91.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 22:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762325937; x=1762930737; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HEM1LFM1zi8Gc6HqJqM7X30tDM7ApP1caBVZOcNYVv4=;
        b=DFtt1y9Db4LSj5B4TmIYmAtpJiE/kSznH8ESgvbMWqbaToRhVK7FO7riX2RccdlERj
         ikoBjodRBPVrapUXJlXao/cThwKFz05WCzy9biBayWIJlS0AEd0f7jQYYpGBGMyYLPXh
         8WTk13kdtH1YtuTWWvTaLXuHZJV2ZVWOFFuxTjPzh2GRUMLIcQ9IzjnCQrGgl9fAjjTw
         QMoI7jxSKZ+nEtUCUK7U2qQsJn8UkNriHb+LAm870J0j5gPbsFyagMPHGeF8nOkmMtdO
         q2NWzS9PyeSrIXQlw8Iw8qo3/YuT/ZrL3igiseN6E/YP77sdbYCKOKJqtLPAIhN0QKRH
         B/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762325937; x=1762930737;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HEM1LFM1zi8Gc6HqJqM7X30tDM7ApP1caBVZOcNYVv4=;
        b=FJKvHf3lfsR0rWpWVgnpgSRAXA+FH+yE3Cx8z1CLsBowXUo+9i1KnOcrqGQsxWlVWf
         JU8ApCVFDi86NimskdxoNCE0ywIJmE4YupwmwdEffZuAA/WyH78U6e3KEv0HybJV13SV
         aWVw08qFFf70eHDaMrFeL8HzEFUpUkxD+ATJHSy1pV+u4Sxmz1pL1lNJScwrLNtmPyRb
         fOCwhLRcKlcnPoH3SddxCPRZfYgSU06jOTtRf5dKggekHithhzmUXWTB6uMwat2Ph5v2
         TRCqzmbkxdXfk6ebfyJloWKubvJllxZAz5AggEt3sDuJnnlWpRLM38d83lsPmHps5BP2
         lfsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpJtzozaCQZlNtQro2UO2vkhKwi1dSmKqnVs3fiMSYJ3YH+xDjCgseZWcHVt51q6PHorGIC8J0TCNu@vger.kernel.org
X-Gm-Message-State: AOJu0YzpfBYjX4Y7WD9E/8Z9d2OHZehqvhANRM4QuihVJ6wlOjj86DY4
	0VIITpu3pgcerKO+ddld4rv6bCL/fj/qs0MsuTjuraOZ29ShHe7sXAxod8CrXXA9UOekmdvfu3V
	La2IcQv9jVDdMmzuxRwZM7iaCGt33ARtcqhGB+JYG8Va73b1cF5xEvWz1yC2UWHnS
X-Gm-Gg: ASbGncsIP8z39yWyCLvarcxNB73k/375wJHC8ao+w3auuTmfMwe/XpoSwynbCLqnTTJ
	w7cagYHw+dpeAQpx3dYKJCOyLhrVZDkA4RPeRJIHvJeRgFuoVscTVl2yrD+phYHSo0YoSqPESfa
	sESIYgLzOsfZXu173kW3i4GrcJxDcjYFo5YHPLNE4ueAXP/jmGfXqgFhDSz+ktrw7z42ZURW2oW
	LDyQG6Fh1fnORm0E+FCmGkVyrMcxempun/6UNaMpwaf35ZhGxtHzo6EYVpixUP1d5bV0ErYbFE9
	qsqWQUzZxdH/kPmDj8zTS6QLA7VidqNtFpgijGA+rLfXOouWF8ihZNk5u9WYeV8EMGqnP2TSrMq
	CaOebmaCVk8lk0wDYNJeiazQx9g==
X-Received: by 2002:a17:90b:350d:b0:32d:e07f:3236 with SMTP id 98e67ed59e1d1-341a6dc59b0mr2189049a91.22.1762325937242;
        Tue, 04 Nov 2025 22:58:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEw4ZF0K0SBRUAhZQ1BlurHJnjB4/a4CV+U30Alqbq8q4r/L18cO7AsOSgcElBJqrOWXpPksw==
X-Received: by 2002:a17:90b:350d:b0:32d:e07f:3236 with SMTP id 98e67ed59e1d1-341a6dc59b0mr2189020a91.22.1762325936515;
        Tue, 04 Nov 2025 22:58:56 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f86b0688sm4501045a12.28.2025.11.04.22.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 22:58:56 -0800 (PST)
Date: Wed, 5 Nov 2025 12:28:50 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 02/14] firmware: qcom_scm: Remove redundant piece of
 code
Message-ID: <20251105065850.iyywczjunyb42vwz@hu-mojha-hyd.qualcomm.com>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <hYkrnjg1UIGrFwo6STFGKeRf--qSPLYkFuXckQNSLhqo75WL969Gk2ZA_gwICZpY0aIMpTCt3WLrO_0aHhqWxA==@protonmail.internalid>
 <20251104-kvm_rproc_v6-v6-2-7017b0adc24e@oss.qualcomm.com>
 <ee324fd3-bd1b-4255-9899-a0e1a58ad1c2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ee324fd3-bd1b-4255-9899-a0e1a58ad1c2@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA0OSBTYWx0ZWRfX0NMSaok0YG97
 CKQg1QVI913WdqJpcGu4mDWmT6CBxjdTpn+paACw46D2CU8eTTmdJmGEhJA0QbmqB0FHEbO9m4j
 tpCCeyFDE03IU7F0pyOtSZxNi2I52XGl7farzOT3BoobpqN0xYoDU0uFeJgKiDJJW+LETgNhYMc
 5c5+yl99IxAOiQ3/pMcbJdgfVmjNe/psldhtOlrk7J2wzEgKozycWeE6g2osV/lYdcnHiBhg+uj
 OKRCBC1Kz0tV5oCPP4dQHuOp3smF4DbTSNfQ8r1vVmtQA/utgCcajBrMAEmXB4Hv6ox8zmnzBwH
 kk4LjlmM3TikCku1t2XqoAFspz3vejSMIP/uUfCiXy5buSm/hDMKL08f0UmIF2GnCaYJBlv0iq2
 MK3G5At40xKRstJIrfg67As6XOrdnQ==
X-Proofpoint-GUID: 4e01YxFZ5XUBPUSB_lk4INa5SwM7zUla
X-Authority-Analysis: v=2.4 cv=IdSKmGqa c=1 sm=1 tr=0 ts=690af5b2 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fZA9lW_KvhpsZj0-wjAA:9
 a=CjuIK1q_8ugA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: 4e01YxFZ5XUBPUSB_lk4INa5SwM7zUla
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050049

On Tue, Nov 04, 2025 at 04:58:58PM +0000, Bryan O'Donoghue wrote:
> On 04/11/2025 07:35, Mukesh Ojha wrote:
> > Remove some redundant piece of code to save some machine cycle.
> > 
> > Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > ---
> >   drivers/firmware/qcom/qcom_scm.c | 2 --
> >   1 file changed, 2 deletions(-)
> > 
> > diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> > index e777b7cb9b12..26969bcd763c 100644
> > --- a/drivers/firmware/qcom/qcom_scm.c
> > +++ b/drivers/firmware/qcom/qcom_scm.c
> > @@ -650,8 +650,6 @@ void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
> >   	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
> > 
> >   	ctx->ptr = NULL;
> > -	ctx->phys = 0;
> > -	ctx->size = 0;
> >   }
> >   EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
> > 
> > 
> > --
> > 2.50.1
> > 
> > 
> 
> Please fix the commit log.

how about this ?

""

The qcom_scm_pas_metadata_release() function already frees the allocated
memory and sets ctx->ptr to NULL. Resetting ctx->phys and ctx->size to
zero is unnecessary because the context is expected to be discarded
after release. 

Lets removes redundant assignments.

""
> 
> ---
> bod

-- 
-Mukesh Ojha

