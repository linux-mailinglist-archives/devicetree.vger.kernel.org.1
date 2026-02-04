Return-Path: <devicetree+bounces-262745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPBhC85/g2nNnwMAu9opvQ
	(envelope-from <devicetree+bounces-262745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:20:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA6EEAF28
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:20:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD68630125E9
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51CB3491E1;
	Wed,  4 Feb 2026 17:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RFXJtpQs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M19LPpot"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8D0347FEA
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770225608; cv=none; b=t7PgaEQN0PdJD49381kjgFJmQQ9Ux9RCIN7D0sVZvzrAUX2v5mQKkqZeX0fH5PC3tMdGICTQxm4yst4EzUnlGNMhncdDbkQjalDbDxA1dcEnGUEkDiJNHd5WJxbZ4veLhyfH70JCOvHahW1qgHYdI5mrJt4+4SuEetizxgaTl1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770225608; c=relaxed/simple;
	bh=EMpRL583vOWVeU4W0hEVRiaRUtKRmUWLFzWTRy4Ou08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZFARDeB0wMzFOhu2n/dAPw9uwUMr1Uy3xT6eoz5K/9D7L4NWzMkcXnM1w4X3wLEUa36NDw4btdikd5X1MptUq3k5+gVxUVJnZxl97Q1sh+Rpn5wePxp8mxtDKD8ldEV/T2UnXxr0l5kKVsbef7f5XNPl/sxlllV/LTUBCyVWPxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RFXJtpQs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M19LPpot; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CImjN1881152
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:20:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VqbAWXuLedjCbn8BYtmfIasp
	H5UsLnVKguhalwtG8iU=; b=RFXJtpQsyEAGCCdZN+tDGI9L+WnvNuqSXFUPk8L9
	lcAV8QvF1PnH9HeHklAPrbDeLaVkFNPfY8c3UgGUI4EC0yeA03RXXmCLgORfy3hL
	KVcJ1zFrs5V+FeyD/jJZtLCaSnblXlrD/e2iMwaTWQ6/lZmbkG2kbAbSB/OchxCI
	rAwqTIFgW1q162Z0LnS9X+2XxBK6yJHYZIqcYsrFbSulI6tRip2YEyjIv508+M/C
	rSXjno9CW8ddAYdTBezoBmT2oNQlpPOMcuxD5OZGgKECkqFnWF3VdjpbrdiIBtQ6
	Hd2zFwgYsoabBkf4R4ISsr6e6dIDNZ41PO5UT6mM/Ohciw==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c43n9sd02-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:20:07 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-124ac76ea5bso849590c88.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770225606; x=1770830406; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VqbAWXuLedjCbn8BYtmfIaspH5UsLnVKguhalwtG8iU=;
        b=M19LPpotTWzLtZrca930shBffvHIRCkeCQ2abQastp7yLcmiIIceFjSDBvt0MhbA+i
         aUXSXgQW+Ez952vXmsS6WnQKK03jcXDtMG9Eqk1GGIDqkVQy3I6HBBg1hZyozehUUcaH
         RGM4JuIM4MYL3feizVeuNUm1HKA+3FnM1Gk1fa+TDxbQLyRTJBqMsobXei8FinI63E/F
         DCInCz6PpQQSgw2I4ggAuKCNN/tM/m2gxRfCAwi9qAWMzLb0r300+EA7Iavm/p1JSae5
         C1s2jic0r3EVx/Vnc3V3XpdbbLshzA87iRu+B9EUnD+JDaIgCsnJAcGka031JLFMHR5a
         EREg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770225606; x=1770830406;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VqbAWXuLedjCbn8BYtmfIaspH5UsLnVKguhalwtG8iU=;
        b=XNclxIHXo6K0TR3wMH1nxJRfP6l1KG8gToannRin4eLzUXtgm8t0F+J8zs90ZxOUg3
         DCWyL25wfiRWn4qxP5GEUQh4hR2IBEgT/vC95VG2p68atunUbSkAiFI86N8CzY/kL6Bo
         4wTUXvRNICwsWpmtM8bsKxUbnR3eReqZXgcoGhZGHYCSA2EXs9BXmcC1VOQJEjhs6V0N
         ECqIITK+8wJs5BnCqhhdmvVQFc2wjGs0/XFQz7zd/QKnkk6WAM0bBDFu9mKz1F2qMORS
         4o5ysBo0+3kBWdoKV805FnpIVsWTABVJVh4LZV4+UbCqvwzoe5B7Zn7XIVtuNfiw6VkD
         eG1Q==
X-Forwarded-Encrypted: i=1; AJvYcCX6FxHntpd9qYCBaNpHfoipmaB4RKduI19gIfxboOBCgwqUfT3thJeaaGBNd/h5YlaNOVTbEHP1CR6U@vger.kernel.org
X-Gm-Message-State: AOJu0YzGRVwibQj8xIIw+ZvHPqYVhncP4ehJkJB70ltY9BB8RcpOPGg4
	ZN89wBLZCRAKCVpM/vk5BMYA+XSQ9yh0FH+53WgSHcUNZacXBN5i6L49e65afo44tafAH01yp8c
	Rznxw6dP33isvw6yuBgB2CUU4a5JnSpZk9MsYlGDXF3x1B9+7PfkMyXWFCSzG58Pv
X-Gm-Gg: AZuq6aLEnS6zcMpNrTSQpWk2e/JVNvhKCxyYPBUS/wGVG5CvkEfmowXCrlm/p41bG+8
	bkWCboVzk8R+77MTyUTDTxZKtJhLLAIKy4u5QXb48q4MXMAlnc19CBJDyIs0XRgFAm4IWDTl3ek
	vVVvCQYg2sLytVL5w29WbkfAkZsLeX8FoWb0NxZWBqRwpLmd/bYxFN0eA3VCVUhy81+Q5BMM6/e
	CMypn4ITiRBBaujdWx8YDxPyhCupn6cDO/NgV/TeClku4PVS3kFEufxSEzrmbCBF+WjFts5LpQA
	N13GIYVb+tsM/gn6AKYIZWhfuKpgR6oBzRcvDKNlxCb3d1I8ISoDeXodcPDvdS6FqtnTo5jCnuo
	OhOuQocCR6KkDrE5joTg=
X-Received: by 2002:a05:7022:69a2:b0:119:e569:fb96 with SMTP id a92af1059eb24-126f4771f0amr1691820c88.5.1770225606322;
        Wed, 04 Feb 2026 09:20:06 -0800 (PST)
X-Received: by 2002:a05:7022:69a2:b0:119:e569:fb96 with SMTP id a92af1059eb24-126f4771f0amr1691793c88.5.1770225605519;
        Wed, 04 Feb 2026 09:20:05 -0800 (PST)
Received: from localhost ([140.82.166.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f4e107b4sm2433926c88.7.2026.02.04.09.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 09:20:05 -0800 (PST)
Date: Wed, 4 Feb 2026 11:20:03 -0600
From: Andrew Jones <andrew.jones@oss.qualcomm.com>
To: Lv Zheng <lv.zheng@linux.spacemit.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
        Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>,
        Zhijian Chen <zhijian@spacemit.com>, iommu@lists.linux.dev,
        linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org,
        spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/8] iommu/riscv: Fix WSI mode IRQ number handling
Message-ID: <2ueryrki7uzpjn6rbqz7scy46sjhw76jjilddz2naslz3eyfdp@ycwf42eaw5yy>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <F77F878EF7C59BD3+a9078997d97dacd05d1271a5390dfd08a402b325.1770195980.git.lv.zheng@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <F77F878EF7C59BD3+a9078997d97dacd05d1271a5390dfd08a402b325.1770195980.git.lv.zheng@linux.spacemit.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEzMiBTYWx0ZWRfXy54R4WOy2dAN
 1ySgsowoeOPL/iXPYIJ9hwI2BvJ7PFB2ibZQdKa4O2pul1FjqHI6HzwOkvWYG/VKMm3Hj/Dwgu1
 u0/XXYG+AWYlZDgWxHmH13Ihpz+ZzcIne+c6YIA7WGyvrDJp7XaryTEAs71+5MZ4TcBK+omQEzs
 O6W6RdiV4fYFJAW3QGaFlFnMvgxPXHK5QMC3sxJvoCnQH95+lgtaIHpOphoQIVJfHfMXFCzAxxQ
 dFp+0xmLeNJh/BeoPg6PmgEuzxmiQE216HNstBjKJa87VbOrWA+5b3NpQHNRVv9Rr34o1o0DYcW
 IFkC8idSQUGm29xKDaT2hBmvQ7PLDWEfBG16B078bD17YcDxBt2KJ6OiEk6DroNtpWYRGPh7sz0
 qjD4fZz0Inu7vfyqPlIF5aMVscrkK6/PDJB7EB+Uoug4wnVJsz9SCIaiGJtGUFQjmwDga9jDMfh
 qFPYS0SrcmBHvrn+VdQ==
X-Proofpoint-GUID: eUsWXl-ZNIftYRm2ePxNncSoufgDzD6f
X-Proofpoint-ORIG-GUID: eUsWXl-ZNIftYRm2ePxNncSoufgDzD6f
X-Authority-Analysis: v=2.4 cv=b42/I9Gx c=1 sm=1 tr=0 ts=69837fc7 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=cvcws7F5//HeuvjG1O1erQ==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=lv0vYI88AAAA:8 a=vzWCA-T3srDMkzUxSWUA:9
 a=CjuIK1q_8ugA:10 a=Fk4IpSoW4aLDllm1B1p-:22 a=9qqun4PRrEabIEPCFt1_:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040132
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262745-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew.jones@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7BA6EEAF28
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 05:08:52PM +0800, Lv Zheng wrote:
> From: Jingyu Li <joey.li@spacemit.com>
> 
> In WSI mode, ICVEC doesn't exist, thus reading it returns 0, which
> causes IOMMU driver to fail to find IRQ numbers from device tree
> IRQ arrary. The issue is fixed by applying icvec indexes of WSI IRQs.

ICVEC always exists, however it may be hardwired to zero when an
implementation only supports a single vector. But, that has nothing
to do with whether wired interrupts or MSIs are used.

If ICVEC on this IOMMU is always reading as zero, even when 0xf is
written to it first, then it should be interpreted as there only
being a single vector (or that the IOMMU's ICVEC is broken, if the
number of sources is known to be more).

> 
> Signed-off-by: Jingyu Li <joey.li@spacemit.com>
> Signed-off-by: Lv Zheng <lv.zheng@linux.spacemit.com>
> ---
>  drivers/iommu/riscv/iommu.c | 25 ++++++++++++++++++++-----
>  1 file changed, 20 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> index d9429097a2b5..26630979473b 100644
> --- a/drivers/iommu/riscv/iommu.c
> +++ b/drivers/iommu/riscv/iommu.c
> @@ -1593,11 +1593,26 @@ static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
>  		       FIELD_PREP(RISCV_IOMMU_ICVEC_PMIV, 3 % iommu->irqs_count);
>  	riscv_iommu_writeq(iommu, RISCV_IOMMU_REG_ICVEC, iommu->icvec);
>  	iommu->icvec = riscv_iommu_readq(iommu, RISCV_IOMMU_REG_ICVEC);
> -	if (max(max(FIELD_GET(RISCV_IOMMU_ICVEC_CIV, iommu->icvec),
> -		    FIELD_GET(RISCV_IOMMU_ICVEC_FIV, iommu->icvec)),
> -		max(FIELD_GET(RISCV_IOMMU_ICVEC_PIV, iommu->icvec),
> -		    FIELD_GET(RISCV_IOMMU_ICVEC_PMIV, iommu->icvec))) >= iommu->irqs_count)
> -		return -EINVAL;
> +	/*
> +	 * In WSI mode, ICVEC may read as zero. Only validate if using MSI.
> +	 * Check if FCTL.WSI is set to determine interrupt mode.
> +	 */
> +	if (!(iommu->fctl & RISCV_IOMMU_FCTL_WSI)) {

The behavior of ICVEC does not depend on FCTL.WSI

> +		if (max(max(FIELD_GET(RISCV_IOMMU_ICVEC_CIV, iommu->icvec),
> +			    FIELD_GET(RISCV_IOMMU_ICVEC_FIV, iommu->icvec)),
> +			max(FIELD_GET(RISCV_IOMMU_ICVEC_PIV, iommu->icvec),
> +			    FIELD_GET(RISCV_IOMMU_ICVEC_PMIV, iommu->icvec))) >= iommu->irqs_count)
> +			return -EINVAL;
> +	} else {
> +		/*
> +		 * WSI mode: ICVEC is not used. Set to identity mapping for
> +		 * riscv_iommu_queue_vec() to work correctly.
> +		 */
> +		iommu->icvec = FIELD_PREP(RISCV_IOMMU_ICVEC_CIV, 0) |
> +			       FIELD_PREP(RISCV_IOMMU_ICVEC_FIV, 1) |
> +			       FIELD_PREP(RISCV_IOMMU_ICVEC_PIV, 2) |
> +			       FIELD_PREP(RISCV_IOMMU_ICVEC_PMIV, 3);

It's certainly not correct to set iommu->icvec to anything that can't be
written to the IOMMU's WARL ICVEC fields and read back again.

Thanks,
drew

