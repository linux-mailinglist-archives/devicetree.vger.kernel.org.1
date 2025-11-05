Return-Path: <devicetree+bounces-235042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F09C1C34130
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 07:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9708618C1B9C
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 06:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAA302BE63F;
	Wed,  5 Nov 2025 06:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bOYb6YRI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jptRB8De"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463102C08B0
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 06:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762324983; cv=none; b=IsMn7k1ox93U8pZ3az2aOV6/KL85GkwzFpkJM9cKESQ2jyJEGq6BlXCN/6Sprz4lnInNIDPzRHkhwzJHhPQSvvZmFNnsdJTaTvBLkNxCgY0MsQUIuV3xmkLUO6HhE3gL6AgarYaRqUJEiXA0nbxUNJD0jjDUuGNQDvCOBqM5Vwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762324983; c=relaxed/simple;
	bh=UZ8lKWzIInTuNEvQSGulSIDHuHRj0ZFxre0FKSLVoos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WfeikZgHk7GCLKznPxKyA+4njgmUIFTKprarEmjQhtT/zDdTFZNfYICdrKcPiWxGpSwbKHgfMfh1pFX4+Rm/yyBJXnOkx3Amy6qJCqp7adraV3Ur2BKVAA5aygkG/dd9xXmpP6u/aK5whEXIG9iOsYwI6PScTkICrqCV2vvRURg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bOYb6YRI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jptRB8De; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4Kfbep3164659
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 06:43:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nq89DQUCXDu/1+0vbCTDrhxB
	9KHzFo3yWxIPRMSmuSE=; b=bOYb6YRIlaKl+sYH1DhFv4rrQoTtcNpvvik7wMMu
	FYdZFWIGpPbc4NuOhOkyDwr7MlxjXIONlMYhT4Lbu/53MsGD474PGd6vAaSBPHsE
	bTQCTVua321zkxQBchS9cvdfKolU6jehRhv2LrnGy34pMV/f8ycqAInHwUXtFRrz
	16oW96ipXENInuz/75T6jE701BuskBKqxLUIWAgWwiwm0ArakGAuMYtDnsm4LbTA
	Q/CywheHFNhvMZMaxKyANQaR80z0RL4n/FKalYZ0GGaloLr3B/U3nRpyXoHyYVUu
	zqcfjQCgSNzk495bN0vioU42YO3MWvcSVsofDMA9mqGHPQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7ketjmgx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 06:43:00 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b6ce25bea3eso6143249a12.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 22:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762324979; x=1762929779; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nq89DQUCXDu/1+0vbCTDrhxB9KHzFo3yWxIPRMSmuSE=;
        b=jptRB8De7cmYligLs3X6mIsCGLw4ZbTCoS93Hcr2+7St+fQABqmlD0lLWRrn35Iq8+
         LULeL0Cs8E5gIpG430Y38ThzIQikKikRVVfPRK5FszIKrIqjKUL0ahjnfKkrFLGvFs7r
         8sVH46BJXu8mHbEXPz/FgAn7HQnEZ8/LyElkaj2UKo7RcsYy1D6ZqLShxsXoO3b7zTWk
         t8IDnWlYlx9OETHGHhllClyrs9jTIt5fmIL8aD/KdqbxCYMKz3+hjKLv6wcT8UvpFV97
         Dvk5yzW7e6KE07na/TGkWnx11gt9NxWP5H3YGitgMyO2kwwCYtfG6lYc77rq0H90fd8Y
         w5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762324979; x=1762929779;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nq89DQUCXDu/1+0vbCTDrhxB9KHzFo3yWxIPRMSmuSE=;
        b=muaZJXD71b+d7Gd6du+Sf6E8ozZlDYAyPxQgiTUEsEjc7hHboiDNenHXzDNjiGulXA
         vNZQJMcGCbeRoS9KdTnvSgJoa4PadU/eBEL2TmN4rKzQEjT94PbJBCJwxYIfwWHSui8B
         HIRoqIAL6LAdy5u2rAMdHfiMiC3f3Kb6mRDV9UEKsLXhvhUPYSQOFMUpiZyclN/76ozW
         OJRewDb5shxEahSIT58+Taa9gilRSSJgiRoGxCz6ILPUOWipPkvUxLOMy7wTfOg3sYev
         N8umDc3ESZibgvCrJtY8gB/TVn4dYqxGlb3a5f0oy4xTUQdlIEAkYaDWIGgueL5z4FjK
         YUCQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9aUxcSafqzTox8X1sz1KVbxIKvquTkU3RZpnrNrgVmZJlEeKWwmlvfL/UvX5xisHyXr7N2gzHCsc0@vger.kernel.org
X-Gm-Message-State: AOJu0YzZT0EKp1demDR7mGRRP/e/adQ/SjTEFBElSyBrSC5dVxww9zFA
	ErricM613jBcr65TOeyJt1wIOEKEd0mlCxh4NmA8wCyyIZ+y+yqzaWQJUGVp5SDxYu6zN5+pAXd
	QkkZb6VtAaTx+8Xs1b49lQkY3XkXl6lNnfLPE41VILRK4viiK8wxTN6sm/2dU8eA0
X-Gm-Gg: ASbGncv0ec53xM7FryHJcF13l13xXi4+ZKyJHbQtnJwWuWxbiU68wG3qH01dmq44QJi
	1TYWj0ExCOduZRcDD28b5kA3QDivYj4Ui2rY6JsfTPlFAE7F2hmjPC07Wdm4Sca/zilnxIDxALL
	e7N3IJmZkLSYqDai6CbqEzdhCm95tB6YLfHAiAjThjKIzTnxpQQCXV9hQ4lkEb5jS5ptbOd3AWl
	4XVLRSoIK8PwQl1H+atSjldV3CKFnaB33zXRW9thofF71paZCH3fu39OXDv/cZRzfQNF66Xe3e9
	pDQx/ldlAKOiZu2VHOiU48X1zUQ83SSMq8i0pSJfO+irrhZiFfq8ebm9WOEJy8QNkGJuSmFIMTe
	CZeAH7NMDXbBWm32CAubK4TbyeQ==
X-Received: by 2002:a05:6a20:4313:b0:341:2fea:6b5 with SMTP id adf61e73a8af0-34f83b1c031mr2987574637.20.1762324979214;
        Tue, 04 Nov 2025 22:42:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGoQyYyFGTve5SA+Qgr5cO14BdLR7ffiUWGwJzX7Tsya0oH95BQSrMh+zSTJlO2QCSGsxsnRw==
X-Received: by 2002:a05:6a20:4313:b0:341:2fea:6b5 with SMTP id adf61e73a8af0-34f83b1c031mr2987525637.20.1762324978520;
        Tue, 04 Nov 2025 22:42:58 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f98fb670sm4377296a12.38.2025.11.04.22.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 22:42:58 -0800 (PST)
Date: Wed, 5 Nov 2025 12:12:52 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 05/14] remoteproc: pas: Replace metadata context with
 PAS context structure
Message-ID: <20251105064252.qxqkno4xqwfrhmlf@hu-mojha-hyd.qualcomm.com>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-5-7017b0adc24e@oss.qualcomm.com>
 <fc8beead-566d-463b-aebe-407429adf156@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fc8beead-566d-463b-aebe-407429adf156@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA0NyBTYWx0ZWRfX5JHOfTA+LNPm
 aH0u35sa/MRvR5kKHAK5vuuUUQDw9VeD4302sf1QZ29oDNuL8dh7knWdjaP0+Hl/8SmNRSytl3P
 gy/b6o/l1bvkXgIL2FekGHVOG5CNcfJ5GEqlymvvCasMBkPrjEZ3xVk8/JchSflRbkOw5uxULWu
 +FyKApTJguVYcA1K1wr2yWQi3Bdc5mI2xo26+wUxIeYZqvfCZQWlFziqMfHCspJ+N4MOwxPBKh7
 29BXQG4TNVhJgwx7apw5Kt5T2HcqEud+tT/20dlkyRd8AmwnGbnTXx4xjGLXm4WXB+BEIlor4+6
 Uha+K/eg1DmTNxlFS/4SAIdQZq25rRM+oG/cqxwgasLCT61A8eQAfVLK2xXV5GUbowILhCHoMBI
 syYemIgp1DNkOAvpL5zKSaQ9J0Z8ow==
X-Proofpoint-GUID: 49Tq8xBTQ9xzcbUTyOJYf-CaFCelzxyJ
X-Authority-Analysis: v=2.4 cv=IdSKmGqa c=1 sm=1 tr=0 ts=690af1f5 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gAF1yXKuUJ3Ueu62ksEA:9
 a=CjuIK1q_8ugA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: 49Tq8xBTQ9xzcbUTyOJYf-CaFCelzxyJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050047

On Tue, Nov 04, 2025 at 06:33:49PM +0100, Konrad Dybcio wrote:
> On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> > As a superset of the existing metadata context, the PAS context
> > structure enables both remoteproc and non-remoteproc subsystems to
> > better support scenarios where the SoC runs with or without the Gunyah
> > hypervisor. To reflect this, relevant SCM and metadata functions are
> > updated to incorporate PAS context awareness.
> > 
> > Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > ---
> >  drivers/firmware/qcom/qcom_scm.c       | 25 +++++++++++++---------
> >  drivers/remoteproc/qcom_q6v5_pas.c     | 38 ++++++++++++++++++++++++----------
> >  drivers/soc/qcom/mdt_loader.c          |  4 ++--
> >  include/linux/firmware/qcom/qcom_scm.h |  4 ++--
> >  include/linux/soc/qcom/mdt_loader.h    |  6 +++---
> >  5 files changed, 49 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> > index 5a525dbd0a2e..9cdd152da592 100644
> > --- a/drivers/firmware/qcom/qcom_scm.c
> > +++ b/drivers/firmware/qcom/qcom_scm.c
> > @@ -603,7 +603,7 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
> >   *		and optional blob of data used for authenticating the metadata
> >   *		and the rest of the firmware
> >   * @size:	size of the metadata
> > - * @ctx:	optional metadata context
> > + * @ctx:	optional pas context
> >   *
> >   * Return: 0 on success.
> >   *
> > @@ -612,8 +612,9 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
> >   * qcom_scm_pas_metadata_release() by the caller.
> >   */
> >  int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> > -			    struct qcom_scm_pas_metadata *ctx)
> > +			    struct qcom_scm_pas_context *ctx)
> >  {
> > +	struct qcom_scm_pas_metadata *mdt_ctx;
> 
> This is never initialized
> 
> >  	dma_addr_t mdata_phys;
> >  	void *mdata_buf;
> >  	int ret;
> > @@ -665,9 +666,10 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> >  	if (ret < 0 || !ctx) {
> >  		dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);
> >  	} else if (ctx) {
> > -		ctx->ptr = mdata_buf;
> > -		ctx->phys = mdata_phys;
> > -		ctx->size = size;
> > +		mdt_ctx = ctx->metadata;
> > +		mdt_ctx->ptr = mdata_buf;
> > +		mdt_ctx->phys = mdata_phys;
> > +		mdt_ctx->size = size;
> 
> So this will always cause stack corruption
> 
> >  	}
> >  
> >  	return ret ? : res.result[0];
> > @@ -676,16 +678,19 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_init_image);
> >  
> >  /**
> >   * qcom_scm_pas_metadata_release() - release metadata context
> > - * @ctx:	metadata context
> > + * @ctx:	pas context
> >   */
> > -void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
> > +void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
> >  {
> > -	if (!ctx->ptr)
> > +	struct qcom_scm_pas_metadata *mdt_ctx;
> 
> Is the existence of this struct any useful after you introduced
> pas_context?

Yes, it is still useful, mdt_ctx is only relevant for remoteproc based
subsystem like adsp, cdsp, modem while they are not required for video,
ipa, gpu etc. but the superset which is pas_context is needed by
whosoever need to support secure PAS method Linux at EL2.

> 
> Konrad

-- 
-Mukesh Ojha

