Return-Path: <devicetree+bounces-219986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C0FB906BB
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:35:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEE9A2A33C4
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA090305E33;
	Mon, 22 Sep 2025 11:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ROBmfsUw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976D82BE62E
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758540875; cv=none; b=Junsf1rKZ0AJHeUz/wXpS/mkMy4QxXdq11JDRH5ikP6uJ6km0HaWsC6DudzMx+6G+ZmVUZSymJYoYHW1X8a480cq3S1ASJqvhMDF6OuEZm/nZLovq9690kMkKTERhlYC6YmEPG9IE23y0iAXDMrwTDsdq3FPtcdcgL+byjo8gso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758540875; c=relaxed/simple;
	bh=nCwdjfI0SURBS39EG5PHMSwXsuzdyAL0qCvr1aiINNo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JXAx2fIo62eFF/Z74M9uUqYpvg1EElVevGQqO8uYfjTwNEx+EMVE4c7gUm5rkMC+cg87myr4mlZ36aTumwoaMY7tAQZwJAVao39SJDfoR4TdzkJ2cOkSxqTUb2z/BSCXZkG+Ep1+lsTgL9N8fY6lEavJ6lnyT18gBNyW3ba0W4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ROBmfsUw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M9GDVk022762
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:34:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uUfGDGkZAIgCqIbzcLqPc9KO
	qLECjBVf8MruWksh034=; b=ROBmfsUwwH3z67s5w0cWtnjMZVnuTwznNjstj93r
	AczuCNfDxAD7HIp/PHkoJW/OMF9X/FqyofcC6gLEsItoGKTIFIjwa2i22snlpzsG
	ptl/znopxqys7KmdWkqq6NAc5LDpWSGcRTU41SddAxY7CdzqOEUPt/Ibj2ARGsyr
	g9Qs7ZHVIrBd2vtm44Khw6vqzRqOgaynEWcbbXZeXM7goh6Vmm1O3cnZCHsvICjW
	JDqj2QtkrM73EFFheM8uPCQWuBVRIo8dtpuEi6xoKrq465eVSp242fX2nN0qTvOB
	wcIaPrnBShZTVauCVepKFNmHZla+Ji4ty5srZTwS0EbC7A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3ny8cmx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:34:31 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b522037281bso3239223a12.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 04:34:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758540871; x=1759145671;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUfGDGkZAIgCqIbzcLqPc9KOqLECjBVf8MruWksh034=;
        b=p8aotflFYlwlVUY7VZiw8QvfQBfHh1hIVz5DIQEgNdV5fG/XjFL4+MdS8gBsItaAnu
         577MAuh+QiCCAAA8EulEBGCXOdM1qmw8FmHuTwv6mJveMBJbrtbLRhNoKjcHQO9IHta0
         yGUlGP8T8y28saQp0zhKXUdWuvqBq1S7Ip7Wh9Wt59agakBWXKx9mzXFiHXGdblBRtlF
         2n1A7TwbYGY9H5jjnFbsSZOtlni+wDQZtL7HiVAn2rWXBEHl5z+74VGramvFwnWrY1rl
         19JgwT2BRmYCQtnlIuBEyIV7Y2WE4qi1wf8yU70tcuaP2UviiRbANyngV7S6TUwkFfBZ
         qeeg==
X-Forwarded-Encrypted: i=1; AJvYcCXF3trnw7RnLdkYotrLX9guiS6SQ8DhSApy6GvlSvQRIciLmiSmQYH4/Ze+JlTyQ6jCyaRqLvN6Wqcp@vger.kernel.org
X-Gm-Message-State: AOJu0YyJgpXh59sTsNerB+4BSTv3M9nNPxbcJyLOpT9q2Mh/etpYW2tZ
	NNxlEkNUwliUVsKoTLu7DXWFb/WRyp4Yyrpj8TozHscPMX2f3N3dZxqgmIl5IA6J9g1ownVcqII
	r6Sk4bMhTlm8RYgGOt1Z9tPfxSyklZZcD5gOnagySMexwVp2A1wtxU4WbguIexRhC
X-Gm-Gg: ASbGncu7ud8z7sibID9C67BdhX6QaDeTGC7RRuxnyQ2BnkvdF7nQTxytrnLE48F+E8v
	R49sDT+ks0yWTeTEY6sympRnU+WwM8qJZcCFuRLicIPWn+VajjZZ6uSm69SSnHKHaiJcGMDZkwb
	2R+v+6BINlEbcLbC5P2udpY5ukKONXHOoYHUuZNWKy1kE4j4BkRBuxJiO+fOFLM/QSEHOhU2CMx
	E+tI3uXuvbFZ2GaObpKz/5VwF5Burl2sNWYUuVZgdvVRy5ro7Qn+3TVL2yaG+N2xBgLIbytmube
	5mcjSFU3rLZDNdOR4cIXxpn4YXCugOzHiib7c3JXELJtb0rvA0ncjDbCNiiDPoSH0AI=
X-Received: by 2002:a05:6a20:6a06:b0:246:354:e0ff with SMTP id adf61e73a8af0-292588a2f8dmr16971107637.8.1758540870841;
        Mon, 22 Sep 2025 04:34:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHty8IzAd2wpBrlPbxbu6yitTq6fHhUzkUsvSD8PXXyURoyq578xMByJmjC5QPDFGqgklDEA==
X-Received: by 2002:a05:6a20:6a06:b0:246:354:e0ff with SMTP id adf61e73a8af0-292588a2f8dmr16971069637.8.1758540870326;
        Mon, 22 Sep 2025 04:34:30 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff3fd7easm11994949a12.30.2025.09.22.04.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 04:34:29 -0700 (PDT)
Date: Mon, 22 Sep 2025 17:04:24 +0530
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
Subject: Re: [PATCH v3 03/12] firmware: qcom_scm: Introduce PAS context
 initialization and destroy helper
Message-ID: <20250922113424.zpweoe5cgcfticzt@hu-mojha-hyd.qualcomm.com>
References: <20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com>
 <VaE1QImrKf8gxtMr-dFBEHJ0Mv9-1ugwsOz5I1Uaz1PXt6aJMrWR7G3c5bN74hJYzy5v6_obB1OqKgtgdbCUcw==@protonmail.internalid>
 <20250921-kvm_rproc_pas-v3-3-458f09647920@oss.qualcomm.com>
 <9139706a-708c-4be6-a994-120cce0cd0e6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9139706a-708c-4be6-a994-120cce0cd0e6@linaro.org>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d13447 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=HFU0YHx6uJ8-sYg2Z9IA:9 a=CjuIK1q_8ugA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 7_fmYtzeqzV7AGz8omzkNr8HAE6_xH1K
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX+iaCJkmwSRLl
 +xgTOQ0R1HRPlUhgvMwdH1Ibet2gX/ezT8p9Pao5VaLnkUH/fnwu+VR5U4eKh3Wz9UTYODyB202
 O2C6BpLW5tY+KTr6kt1NfdUWthQWsj4b97fayAjyBOHB2sL3CijWgWKp2S/3KIohyyFlYHUFrCI
 IoUnlm5l+69A1cPAjxezdCGncu9KX22+UT0R0jpjjLJgYmMXFlVXt0wPxhNtW6m3u5d8sRdrnW7
 vqE8FyEQ9Y/wB66MVqh+gjzGsDuscK0KLfQDJBKG5ugyeXd1gg45lTjjuevxdd1YGz43iBAwhpW
 DAqml+ttTfZZkoz+c+xiLB9J15zswkWuC3snDo3Q/rK+69Dx9qjdP7VYlwVFMFv0wIdNPlNMq7Z
 ejim/I3V
X-Proofpoint-ORIG-GUID: 7_fmYtzeqzV7AGz8omzkNr8HAE6_xH1K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

On Sun, Sep 21, 2025 at 10:40:55PM +0100, Bryan O'Donoghue wrote:
> On 20/09/2025 20:41, Mukesh Ojha wrote:
> > When Secure Peripheral Authentication Service (PAS) method runs on a
> > SoC where Linux runs at EL2 (Gunyah absence) where reset sequences
> 
> "i.e. runs without the Gynyah Hypervisor then, reset sequences"
> 
> > move to EL3 and Linux need to do some extra stuff before calling PAS
> > SMC calls like creating SHMbridge. So, PAS SMC call need awareness and
> > need handling of things required when Linux run at EL2.
> 
> "Therefore the PAS SMC call"
> 
> > 
> > Currently, remoteproc and non-remoteproc subsystems use different
> 
> "Currently remoteproc"
> 
> > variants of the MDT loader helper API, primarily due to the handling of
> > the metadata context. Remoteproc subsystems retain metadata context
> > until authentication and reset is done, while non-remoteproc subsystems
> > (e.g., video, graphics, ipa etc.) do not need to retain it and can free
> 
> "do not need to retain metadata context"
> 
> > the context right inside qcom_scm_pas_init() call based on passed context
> > parameter as NULL.
> > 
> > So, in an attempt to unify the metadata API process for both remoteproc
> 
> "In an attempt to unify"
> 
> > and non-remoteproc subsystems and to make the SMC helper function
> > cleaner whether SoC running with Gunyah presence or absence by introducing
> > a dedicated PAS context initialization and destroy function. Context
> > initialization beforehand would help all SMC function to carry it and do
> > the right thing whether SoC is running with Gunyah presence or absence.
> 
> Since you need to do another version of this patch re: below, please tidy up
> the commit log here a bit too.
> 
> > Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > ---
> >   drivers/firmware/qcom/qcom_scm.c       | 53 ++++++++++++++++++++++++++++++++++
> >   include/linux/firmware/qcom/qcom_scm.h | 11 +++++++
> >   2 files changed, 64 insertions(+)
> > 
> > diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> > index 3379607eaf94..1c6b4c6f5513 100644
> > --- a/drivers/firmware/qcom/qcom_scm.c
> > +++ b/drivers/firmware/qcom/qcom_scm.c
> > @@ -558,6 +558,59 @@ static void qcom_scm_set_download_mode(u32 dload_mode)
> >   		dev_err(__scm->dev, "failed to set download mode: %d\n", ret);
> >   }
> > 
> > +/**
> > + * qcom_scm_pas_ctx_init() - Initialize peripheral authentication service
> > + *			     context for a given peripheral and it can be
> > + *			     destroyed with qcom_scm_pas_ctx_destroy() to
> > + *			     release the context
> > + *
> > + * @dev:	  PAS firmware device
> > + * @pas_id:	  peripheral authentication service id
> > + * @mem_phys:	  Subsystem reserve memory start address
> > + * @mem_size:	  Subsystem reserve memory size
> > + *
> > + * Upon successful, returns the PAS context or ERR_PTR() of the error otherwise.
> > + */
> > +void *qcom_scm_pas_ctx_init(struct device *dev, u32 pas_id, phys_addr_t mem_phys,
> > +			    size_t mem_size)
> > +{
> > +	struct qcom_scm_pas_ctx *ctx;
> > +
> > +	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
> > +	if (!ctx)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	ctx->dev = dev;
> > +	ctx->pas_id = pas_id;
> > +	ctx->mem_phys = mem_phys;
> > +	ctx->mem_size = mem_size;
> > +
> > +	ctx->metadata = kzalloc(sizeof(*ctx->metadata), GFP_KERNEL);
> > +	if (!ctx->metadata) {
> > +		kfree(ctx);
> > +		return ERR_PTR(-ENOMEM);
> > +	}
> > +
> > +	return ctx;
> > +}
> > +EXPORT_SYMBOL_GPL(qcom_scm_pas_ctx_init);
> > +
> > +/**
> > + * qcom_scm_pas_ctx_destroy() - release PAS context
> > + * @ctx:	PAS context
> > + */
> > +void qcom_scm_pas_ctx_destroy(struct qcom_scm_pas_ctx *ctx)
> > +{
> > +	kfree(ctx->metadata);
> > +	ctx->metadata = NULL;
> > +	ctx->dev = NULL;
> > +	ctx->pas_id = 0;
> > +	ctx->mem_phys = 0;
> > +	ctx->mem_size = 0;
> > +	kfree(ctx);
> > +}
> 
> This looks a bit strange, manually destructing an object you then free. I
> get the argument you might make about use-after-free but, I don't think this
> level of defensive coding is necessary.

I agreed with Pavan in my last version about adding destroy version of
it., otherwise, it looked a bit odd to just do init and forget and not
do corresponding destroy however, I do agree the only place we are going
to do in ->remove() but would not that look nicer to have _destroy() as well ?

> 
> > +EXPORT_SYMBOL_GPL(qcom_scm_pas_ctx_destroy);
> > +
> >   /**
> >    * qcom_scm_pas_init_image() - Initialize peripheral authentication service
> >    *			       state machine for a given peripheral, using the
> > diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
> > index a13f703b16cd..e3e9e9e9077f 100644
> > --- a/include/linux/firmware/qcom/qcom_scm.h
> > +++ b/include/linux/firmware/qcom/qcom_scm.h
> > @@ -72,6 +72,17 @@ struct qcom_scm_pas_metadata {
> >   	ssize_t size;
> >   };
> > 
> > +struct qcom_scm_pas_ctx {
> > +	struct device *dev;
> > +	u32 pas_id;
> > +	phys_addr_t mem_phys;
> > +	size_t mem_size;
> > +	struct qcom_scm_pas_metadata *metadata;
> > +};
> > +
> > +void *qcom_scm_pas_ctx_init(struct device *dev, u32 pas_id, phys_addr_t mem_phys,
> > +			    size_t mem_size);
> > +void qcom_scm_pas_ctx_destroy(struct qcom_scm_pas_ctx *ctx);
> >   int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> >   			    struct qcom_scm_pas_metadata *ctx);
> >   void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
> > 
> > --
> > 2.50.1
> > 
> > 
> 
> Once fixed.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> ---
> bod

-- 
-Mukesh Ojha

