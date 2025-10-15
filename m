Return-Path: <devicetree+bounces-226958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28074BDD18E
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 09:34:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B53683A984F
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 07:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0563148B3;
	Wed, 15 Oct 2025 07:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q/CJRXpr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6C0314D17
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760513139; cv=none; b=b11IE/08gfVyFLrSFoA5tmSkuHPAEKwFiXH3TROQK7EyUWEo3su5Lsu/nI0zp0IgeZzMzuR9dkolQSCVJch5arqVUIaYeA4gTOl+FFNt1vkkr6PRqZg4HzNn7mXB3GRQMdxQYu8ELmHlmM2r3LZQv1VoEdhbYCZy4+2L25I/Mjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760513139; c=relaxed/simple;
	bh=6gmfVVgbfWNvvDaUk3hTVO+71Cq+RRWFiZGTHy1foi0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s0x3JYtahqKrDprFKPhKW9W4LlOczFMAQrVO6BLJtwiK6fIwFh9qzjJXokF/caER7+ujOKzaLGEfKWboZ0NUa5LzrTLAiQhGo5TH6hdRQnpzQTqHFUZ2GEUyCrST1I4GwAwPYkMYj3P9IQ92sHkeKld9YBFwe4GSvaSoFkSmoZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q/CJRXpr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sDgn015270
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:25:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GHPfe8EeTRZ15JTjN4b8ScmJ
	ardyS/MH3CAfBlPEP1E=; b=Q/CJRXprn6ZbXjfhYXaVaivn+95fc/vLJssU+3dY
	4MTMirYjJXzOMoIMnbhyyq9ISy8ecvQ96eZTucj0tIKGSsqB9RR22OeQMsVCWgNf
	T8oOJEBaOm3q45XtHubAx+uTNcsuvydOxY639194tXgEwcLGsK5dK7Zb9kV/Rqsf
	/z/Pstwy3Vp+AfY65aQEtdmCY9QewaN4jB/I8v5KEjnxTzpU/0WParLqQ1klY9d5
	BcMeaAqL+W6z64dcnTO0D3NHQIeb2U9PzM2MMl3P4YGjXx8JzGPG6ttXJTYmGkaH
	+NKU+lpEauQ54Lhv1BUXROif/u9RKWryYPy3GhT7vkIObw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5kkc9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:25:35 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b57c2371182so10530504a12.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 00:25:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760513134; x=1761117934;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GHPfe8EeTRZ15JTjN4b8ScmJardyS/MH3CAfBlPEP1E=;
        b=OlFl9X+5hYXquOCHm6ABJeWlWMZ5O7yPNOaqANGxEDQ5Ey+EDluPG/79eiwA/qnQME
         Klr3B+dK5JvjEa2LDXtDk1w9qXZvfcccbddXg3MI4fpZbNBXE0grceSzmibpzhYaNVao
         HX5jBJevXMwHgbgpbuYNb6NaVEeCeBCFxOURqxy3lFoTpcmDcmXmUhUaVl/q2Xsu5N4Q
         r/79cfP8M5ck87FAYuDo3w3jyhXJ8WhPoGAtkxqXsO5axkilQOgiXbu1gT7FAi1QwU+v
         hSYYVecFLzZ5Twa5VWPYPqi0OOMIG6ItouLKozZQwgNaUD3P6BAFQTfIafTdssDSDCr9
         kz3A==
X-Forwarded-Encrypted: i=1; AJvYcCWFCeni+BevElc01bOiy1cvp27jPaFGxlp8CgigsEMRAMsAzTnAjYtFZg9aIot7M+tj0HNBrq8P3OrK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxinaek3nlIk6Jbm8lt9kIUQhbmfy6+D4ItgfobSvgKzM7kKMIB
	5qT37n4UQz90OqyLlQfJuLgwh0DkvepFM4ACCMQ86z6ZCaJUn4ZpYJ1HNFzJ0Kqmywqm2l01VIH
	+3Lvmj9tq+kXs3Wpvqw3H4e1ehTmO+UjmiaEyWSbqPmMnb+dGG4JWKLRye4HE2Vjd
X-Gm-Gg: ASbGncsSCo9IPvEIxbVYSXhPw2Of9CzaTy1ec1TKQmBO+6fFSqKKvy7+vKLw01dfXTL
	iQGWUVB3WeLTim4wIfT3d1WHO75OJabjfWVRLgZrXkiAiajOIqfZ+am+RnSygpLkvIsk9DVJN3m
	me84Am8iFipefovesfMyWUjL1mQwbCtzOy+i7ljTpOAY11CCn5i0bL9znBBxbrrMcvaJxFWBsTB
	k29F+U3QmM+oclYJaoikd73zrRCK31n7D2Sw9T/wI4mSUTNUvGiQgolbuv/IUyCwVJTrhuIlem1
	n2G3PuVGwatYUvnnSjcbOHingSSD7RegBUdUq6YaWcFtTQqsFYdYFj4wSM/9nP46UKA=
X-Received: by 2002:a17:90b:1e0a:b0:32b:aee1:18d5 with SMTP id 98e67ed59e1d1-33b5138e670mr32489948a91.29.1760513134216;
        Wed, 15 Oct 2025 00:25:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0ZbnEF4yOGCHFDEAhhLez+4ecjqlvL8SZOoJYcJYW6ixKJaNml6FB1IPNIVPQ22Vsn+vPJg==
X-Received: by 2002:a17:90b:1e0a:b0:32b:aee1:18d5 with SMTP id 98e67ed59e1d1-33b5138e670mr32489915a91.29.1760513133465;
        Wed, 15 Oct 2025 00:25:33 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3ffsm18297987a91.1.2025.10.15.00.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 00:25:33 -0700 (PDT)
Date: Wed, 15 Oct 2025 12:55:26 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 04/13] remoteproc: pas: Replace metadata context with
 PAS context structure
Message-ID: <20251015072526.xr2v4co4dg7awwuo@hu-mojha-hyd.qualcomm.com>
References: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
 <20251013-kvm_rprocv5-v5-4-d609ed766061@oss.qualcomm.com>
 <27b9a906-3348-4b75-b5e4-12edad91b93f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <27b9a906-3348-4b75-b5e4-12edad91b93f@linaro.org>
X-Proofpoint-GUID: mIHQugw7tP9F-9yDf2S0itAaHwJ0k-xb
X-Proofpoint-ORIG-GUID: mIHQugw7tP9F-9yDf2S0itAaHwJ0k-xb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfX4GxNd3U1erVc
 bzSSv/ZX9ewVQPcIVpJiHSJSULruMLFIYhmO3WTzXiZAgTmsU/XPOfk+zthnzdymWHp/CAfvKvk
 92ZCff5agfy9I0/8kETGyPJBf4mUE/htJ3fcv4g+9vDSKu/++ntDA/Da8jEeUaDN7OuA1rbp9FU
 z7bz1lAOqFBTSOmxk9pmb0g8Dq3h0PzZUIvtKzcU5tDaoW3ZvyC3txtIZzBPkaalV7S0GE2fYJ/
 jGv3D+FmCxNykzb+3soDSZAtN3pD3yhnaaP1+PP5RdImlXmC4+0MR3RNxv+MGJObVEVQnZsLxXN
 WthEkxCFbB/2+jRvrO12a+Z3m3Bi/vLeg8iGzQwhHDk4m19oYZNW3g8umIQOepZ/1OwNPiM6X0W
 FMLytLAMDzhuoc96gnB7+KAyWNytFg==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68ef4c70 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=UajhPyQYDytr9ejxyjsA:9 a=CjuIK1q_8ugA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020

On Tue, Oct 14, 2025 at 09:24:27AM +0100, Bryan O'Donoghue wrote:
> On 13/10/2025 11:03, Mukesh Ojha wrote:
> > As a superset of the existing metadata context, the PAS context
> > structure enables both remoteproc and non-remoteproc subsystems to
> > better support scenarios where the SoC runs with or without the Gunyah
> > hypervisor. To reflect this, relevant SCM and metadata functions are
> > updated to incorporate PAS context awareness.
> > 
> > Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > ---
> >   drivers/firmware/qcom/qcom_scm.c       | 32 ++++++++++++++++-------------
> >   drivers/remoteproc/qcom_q6v5_pas.c     | 37 ++++++++++++++++++++++++----------
> >   drivers/soc/qcom/mdt_loader.c          |  4 ++--
> >   include/linux/firmware/qcom/qcom_scm.h |  4 ++--
> >   include/linux/soc/qcom/mdt_loader.h    |  6 +++---
> >   5 files changed, 51 insertions(+), 32 deletions(-)
> > 
> > diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> > index 6d22b2ac7880..b11a21797d46 100644
> > --- a/drivers/firmware/qcom/qcom_scm.c
> > +++ b/drivers/firmware/qcom/qcom_scm.c
> > @@ -600,7 +600,7 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_context_init);
> >    *		and optional blob of data used for authenticating the metadata
> >    *		and the rest of the firmware
> >    * @size:	size of the metadata
> > - * @ctx:	optional metadata context
> > + * @ctx:	optional pas context
> >    *
> >    * Return: 0 on success.
> >    *
> > @@ -609,8 +609,9 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_context_init);
> >    * qcom_scm_pas_metadata_release() by the caller.
> >    */
> >   int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> > -			    struct qcom_scm_pas_metadata *ctx)
> > +			    struct qcom_scm_pas_context *ctx)
> >   {
> > +	struct qcom_scm_pas_metadata *mdt_ctx;
> >   	dma_addr_t mdata_phys;
> >   	void *mdata_buf;
> >   	int ret;
> > @@ -661,10 +662,11 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> >   out:
> >   	if (ret < 0 || !ctx) {
> >   		dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);
> > -	} else if (ctx) {
> > -		ctx->ptr = mdata_buf;
> > -		ctx->phys = mdata_phys;
> > -		ctx->size = size;
`> > +	} else if (ctx && ctx->metadata) {
> > +		mdt_ctx = ctx->metadata;
> > +		mdt_ctx->ptr = mdata_buf;
> > +		mdt_ctx->phys = mdata_phys;
> > +		mdt_ctx->size = size;
> 
> Suspicious looking code..
> 
> The second check for ctx is redundant as it cannot ever be false. You have
> 
> if (ret < 0 || !ctx) {
> } else if (ctx && ctx->mdatadata) {
> }
> 
> The old code was wrong but, that's no reason to continue to be wrong.
> 
> Is it currently possible for ctx to be true but ctx->metadata to be false..
> 
> void *qcom_scm_pas_context_init(struct device *dev, u32 pas_id, phys_addr_t
> mem_phys,
>                                 size_t mem_size)
> {
>         struct qcom_scm_pas_context *ctx;
> 
>         ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
>         if (!ctx)
>                 return ERR_PTR(-ENOMEM);
> 
>         ctx->dev = dev;
>         ctx->pas_id = pas_id;
>         ctx->mem_phys = mem_phys;
>         ctx->mem_size = mem_size;
> 
>         ctx->metadata = devm_kzalloc(dev, sizeof(*ctx->metadata),
> GFP_KERNEL);
>         if (!ctx->metadata)
>                 return ERR_PTR(-ENOMEM);
> 
>         return ctx;
> }
> EXPORT_SYMBOL_GPL(qcom_scm_pas_context_init);
> 
> No.
> 
> Lets fix the ctx checking logic in this code as we modify the patch.

Old code was correct, I see your point this could be same as before
for ctx check and metadata check could be dropped as we still have user
from qcom_mdt_load() which could pass ctx as NULL.


> >   	}
> >   	return ret ? : res.result[0];
> > @@ -673,18 +675,20 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_init_image);
> >   /**
> >    * qcom_scm_pas_metadata_release() - release metadata context
> > - * @ctx:	metadata context
> > + * @ctx:	pas context
> >    */
> > -void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
> > +void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
> >   {
> > -	if (!ctx->ptr)
> > -		return;
> > +	struct qcom_scm_pas_metadata *mdt_ctx;
> > -	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
> > +	mdt_ctx = ctx->metadata;
> > +	if (!mdt_ctx->ptr)
> > +		return;
> > -	ctx->ptr = NULL;
> > -	ctx->phys = 0;
> > -	ctx->size = 0;
> > +	dma_free_coherent(__scm->dev, mdt_ctx->size, mdt_ctx->ptr, mdt_ctx->phys);
> > +	mdt_ctx->ptr = NULL;
> > +	mdt_ctx->phys = 0;
> > +	mdt_ctx->size = 0;
> >   }
> 
> If we have established that mdt_ctx->ptr is the fulcurm of truth for this
> data then setting ->phys and ->size to anything after setting ->ptr = NULL
> are wasted bus cycles.

You want me to clean the older code, I will do this.

> 
> >   EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
> > diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> > index 158bcd6cc85c..e9dcab94ea0c 100644
> > --- a/drivers/remoteproc/qcom_q6v5_pas.c
> > +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> > @@ -117,8 +117,8 @@ struct qcom_pas {
> >   	struct qcom_rproc_ssr ssr_subdev;
> >   	struct qcom_sysmon *sysmon;
> > -	struct qcom_scm_pas_metadata pas_metadata;
> > -	struct qcom_scm_pas_metadata dtb_pas_metadata;
> > +	struct qcom_scm_pas_context *pas_ctx;
> > +	struct qcom_scm_pas_context *dtb_pas_ctx;
> >   };
> >   static void qcom_pas_segment_dump(struct rproc *rproc,
> > @@ -211,9 +211,9 @@ static int qcom_pas_unprepare(struct rproc *rproc)
> >   	 * auth_and_reset() was successful, but in other cases clean it up
> >   	 * here.
> >   	 */
> > -	qcom_scm_pas_metadata_release(&pas->pas_metadata);
> > +	qcom_scm_pas_metadata_release(pas->pas_ctx);
> >   	if (pas->dtb_pas_id)
> > -		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
> > +		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
> >   	return 0;
> >   }
> > @@ -241,7 +241,7 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
> >   		ret = qcom_mdt_pas_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
> >   					pas->dtb_pas_id, pas->dtb_mem_phys,
> > -					&pas->dtb_pas_metadata);
> > +					pas->dtb_pas_ctx);
> >   		if (ret)
> >   			goto release_dtb_firmware;
> > @@ -255,7 +255,7 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
> >   	return 0;
> >   release_dtb_metadata:
> > -	qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
> > +	qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
> >   release_dtb_firmware:
> >   	release_firmware(pas->dtb_firmware);
> > @@ -306,7 +306,7 @@ static int qcom_pas_start(struct rproc *rproc)
> >   	}
> >   	ret = qcom_mdt_pas_init(pas->dev, pas->firmware, rproc->firmware, pas->pas_id,
> > -				pas->mem_phys, &pas->pas_metadata);
> > +				pas->mem_phys, pas->pas_ctx);
> >   	if (ret)
> >   		goto disable_px_supply;
> > @@ -332,9 +332,9 @@ static int qcom_pas_start(struct rproc *rproc)
> >   		goto release_pas_metadata;
> >   	}
> > -	qcom_scm_pas_metadata_release(&pas->pas_metadata);
> > +	qcom_scm_pas_metadata_release(pas->pas_ctx);
> >   	if (pas->dtb_pas_id)
> > -		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
> > +		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
> >   	/* firmware is used to pass reference from qcom_pas_start(), drop it now */
> >   	pas->firmware = NULL;
> > @@ -342,9 +342,9 @@ static int qcom_pas_start(struct rproc *rproc)
> >   	return 0;
> >   release_pas_metadata:
> > -	qcom_scm_pas_metadata_release(&pas->pas_metadata);
> > +	qcom_scm_pas_metadata_release(pas->pas_ctx);
> >   	if (pas->dtb_pas_id)
> > -		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
> > +		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
> >   disable_px_supply:
> >   	if (pas->px_supply)
> >   		regulator_disable(pas->px_supply);
> > @@ -779,6 +779,21 @@ static int qcom_pas_probe(struct platform_device *pdev)
> >   	}
> >   	qcom_add_ssr_subdev(rproc, &pas->ssr_subdev, desc->ssr_name);
> > +
> > +	pas->pas_ctx = qcom_scm_pas_context_init(pas->dev, pas->pas_id, pas->mem_phys,
> > +						 pas->mem_size);
> > +	if (IS_ERR(pas->pas_ctx)) {
> > +		ret = PTR_ERR(pas->pas_ctx);
> > +		goto remove_ssr_sysmon;
> > +	}
> > +
> > +	pas->dtb_pas_ctx = qcom_scm_pas_context_init(pas->dev, pas->dtb_pas_id,
> > +						     pas->dtb_mem_phys, pas->dtb_mem_size);
> > +	if (IS_ERR(pas->dtb_pas_ctx)) {
> > +		ret = PTR_ERR(pas->dtb_pas_ctx);
> > +		goto remove_ssr_sysmon;
> > +	}
> > +
> >   	ret = rproc_add(rproc);
> >   	if (ret)
> >   		goto remove_ssr_sysmon;
> > diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
> > index a5c80d4fcc36..fe35038c5342 100644
> > --- a/drivers/soc/qcom/mdt_loader.c
> > +++ b/drivers/soc/qcom/mdt_loader.c
> > @@ -234,13 +234,13 @@ EXPORT_SYMBOL_GPL(qcom_mdt_read_metadata);
> >    * @fw_name:	name of the firmware, for construction of segment file names
> >    * @pas_id:	PAS identifier
> >    * @mem_phys:	physical address of allocated memory region
> > - * @ctx:	PAS metadata context, to be released by caller
> > + * @ctx:	PAS context, ctx->metadata to be released by caller
> >    *
> >    * Returns 0 on success, negative errno otherwise.
> >    */
> >   int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
> >   		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
> > -		      struct qcom_scm_pas_metadata *ctx)
> > +		      struct qcom_scm_pas_context *ctx)
> >   {
> >   	const struct elf32_phdr *phdrs;
> >   	const struct elf32_phdr *phdr;
> > diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
> > index 75dec515c5d2..7c58d26ede24 100644
> > --- a/include/linux/firmware/qcom/qcom_scm.h
> > +++ b/include/linux/firmware/qcom/qcom_scm.h
> > @@ -83,8 +83,8 @@ struct qcom_scm_pas_context {
> >   void *qcom_scm_pas_context_init(struct device *dev, u32 pas_id, phys_addr_t mem_phys,
> >   				size_t mem_size);
> >   int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> > -			    struct qcom_scm_pas_metadata *ctx);
> > -void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
> > +			    struct qcom_scm_pas_context *ctx);
> > +void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx);
> >   int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size);
> >   int qcom_scm_pas_auth_and_reset(u32 pas_id);
> >   int qcom_scm_pas_shutdown(u32 pas_id);
> > diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
> > index 8ea8230579a2..07c278841816 100644
> > --- a/include/linux/soc/qcom/mdt_loader.h
> > +++ b/include/linux/soc/qcom/mdt_loader.h
> > @@ -10,14 +10,14 @@
> >   struct device;
> >   struct firmware;
> > -struct qcom_scm_pas_metadata;
> > +struct qcom_scm_pas_context;
> >   #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
> >   ssize_t qcom_mdt_get_size(const struct firmware *fw);
> >   int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
> >   		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
> > -		      struct qcom_scm_pas_metadata *pas_metadata_ctx);
> > +		      struct qcom_scm_pas_context *pas_ctx);
> >   int qcom_mdt_load(struct device *dev, const struct firmware *fw,
> >   		  const char *fw_name, int pas_id, void *mem_region,
> >   		  phys_addr_t mem_phys, size_t mem_size,
> > @@ -39,7 +39,7 @@ static inline ssize_t qcom_mdt_get_size(const struct firmware *fw)
> >   static inline int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
> >   				    const char *fw_name, int pas_id, phys_addr_t mem_phys,
> > -				    struct qcom_scm_pas_metadata *pas_metadata_ctx)
> > +				    struct qcom_scm_pas_context *pas_ctx)
> >   {
> >   	return -ENODEV;
> >   }
> > 
> 

-- 
-Mukesh Ojha

