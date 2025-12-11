Return-Path: <devicetree+bounces-245855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E64CB60DD
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:39:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22715301C95A
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 13:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D28F3126C6;
	Thu, 11 Dec 2025 13:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LpZ2A0Im";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d1gYuOkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D8C30C601
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765460290; cv=none; b=aUeqgfqfpMPrx3mnPosLkYuMGlKPnPoC4Rwu1T99O/GS+i2oNVaMtulOD12S+h2RiVl4K27SsbZwywTUQGyKubl3u/4iZP+3H/ltOZp3i8QVDM063JK/FDrK1lWlXYAEpHysX3I+qthoLJfVp0dmlYOBegiqv5FLObQgd/NTsvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765460290; c=relaxed/simple;
	bh=35ixyszUS07eBNKrdFuWw5OLtMjp9oN1jX4TCYQvWFY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k4UDA/b+b1qCbPQmWnig+sRc4nFFxgix0zco2N4FB9h/xdFKzemCUoi2Aj7g/yHrMlEDIA8T/PBXNGX2qwdJhDttH7onzGu48z33/wTzZ0NnPKC3e6Jilk3CDCXLOtCs64RONX6WhdQSrahr9l4SC31+EovOMB2167FUpOzDhFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LpZ2A0Im; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d1gYuOkK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBAXp8J1211810
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:38:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=btLod8KCgkBXOYqTjWmzuMKs
	QAf2aBCvMBzErO4K4TE=; b=LpZ2A0Im30d/BwRmSbP6H5Jptei5ci3P4+4h0kFX
	kDgFjAPbFdBNc2Zh+N2rVLOFibTo7YJpaLzh44nLlFUdiBwTvrLRn0JFMQPmZyzc
	4eNO0vOJJfyqV/RItGDYt932buh9WhGXeE5s8u7YEbSarzBM1IMlEFJd4e0k+5Jo
	47ppOGbQ51EOAtNSQEYuxzKnLJLQ5dlxq4sJqehwnHJC/OkO6w+qLjSrhyKL9HnR
	blMBGZ0o9X9bruZHhlJ1z05upd3S5/jdDRJR5lGsZL1aersQI7iREEnGys8Ipofz
	QI+mgvuND7cewc3RDL4w6jGx04UWQ82tpRjL8REz0o+qsw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayg0ptrve-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:38:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ceab125so2356971cf.1
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765460287; x=1766065087; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=btLod8KCgkBXOYqTjWmzuMKsQAf2aBCvMBzErO4K4TE=;
        b=d1gYuOkKtHFMxTnJr7vZWUdMQsyJrB3f7OLOEpjC2j5wKi+rqMhY95g9P5hE91xJmL
         InvvSSCSJ/STlsVtSIF8gdYin2uhMzuf06RL5Aw5jpZlNJDIQcIOcYRkJkL+IWGm2lcA
         K37UABoSuWRVXXrS0EjNj2lr5b0RtAEaAj54Avc+kaucjTPhvvr5ifCUoawH/aHovDIK
         gIUY443Lgli3f6HpUwqE/t6QZxSAGC9cWg9unfwUCyWttUruz0RpxnW+BQRLWmR2Xuhf
         VPs+RNp5/5yoDIF0xFcA91aL9eoP7KEWkg/iE6J8y6DmIzrgWPWqXXWbKS3MlJK43EvL
         bYnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765460287; x=1766065087;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=btLod8KCgkBXOYqTjWmzuMKsQAf2aBCvMBzErO4K4TE=;
        b=RZomtXAhKJwDJiqW3epWG2LZGJ1J86SNmZDMYk9PSc9fhCYcfVfBKoE4KUeH5kKXuV
         0LFYQLpQnzLoe4ON8ctjmVG4Cbd38ZkTlZqik87s+Ggx5Hffpbvux8Yj7vyzS6aVpkGN
         Ned4lLvoK97uZEipgCRmE273kVww5ycL/w8GtchjLGCfU4ppvTPxvnVt8nWNAoRX6DPZ
         B316UVxuNayZDVRS0I2uFKzbIxKYLxaBAcrzfyT50NiPNGgAuOi/RLP45mCTJ7AC+ofT
         EM5t0wKyQ/uHZjJJhOpPEnsOZwALtdO5C5VA5oPkjAMGJP9WxD2yKbhFt/sBhUSgK37S
         iZBA==
X-Forwarded-Encrypted: i=1; AJvYcCULKvxCc+F4mPrqTRiWsnUy3i13OWe9rSKAFxZZnhWUAphwQ3EDYiYf8mNwpuqv1jLbGlu3j/bp6V10@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6VIdZ/9vV+VpzJ5uD3aVAwk/0WnAMuPJ7ANyjfL5n60+938xK
	ylfq3M1/yhFyb1jvO7jxzXYvhWEe5iFBb+l7+C/jFUOXJcmhrCy1FE3URlZDlM1MRjoc33rELRH
	8iS7//8mIpbCN4xWiU43LglM+srdK+s9iUBqNIfJ+t1RllObnHqgjyq8W+YvihMHq
X-Gm-Gg: AY/fxX7FL9Khb4t871g/gk6ggcLMWpWbB+u5z0GxmmIGB7PB4TdmDlSU8ObJBJGQhzV
	+ibw4JnTF53UghAO5SZyTJXB1OvdIh25CGqnimWK8tOA+CfxhbxZD2AjRC4gRqFffBF1Rv+0NjK
	Eu1XAk4PRobPAMYTYOvh4KHKmy+57LUuWnBb5gK4TBzaOxSTubG1XtQU4W9t+pf37zpzxtKquNP
	q1OC7SNkK/qIXpCW9OIiAQQNk1WBD3nMBP6D5pHq0LFL5KZozoQClLt4X6SSrXA/8noCjGNstia
	Q1FqREFUrmgy9G9/dS0Hgwo+hPyjoXUYY29+qPXmFH8TTUuPVR4AMQ5NkLFVhvplHDG1mwSFGcw
	EBN/MoYvnn/INxfkdHPA3e+L6wUy9APO80d9TjgOq8ThXlEDI2XCef2G5HjbeRQ5f8N3G4kg4Vr
	sm6N6Gg56k3D981QEymQdd60Y=
X-Received: by 2002:a05:622a:1b0e:b0:4ed:b06b:d67d with SMTP id d75a77b69052e-4f1b1b1043bmr71990201cf.45.1765460286352;
        Thu, 11 Dec 2025 05:38:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGLMRbYCtIrZPo/kO5PieMuTFgJ9ZqVY/bcxiT2+sHAFaHudjyECVU1VHo5NCBj34tieLBKg==
X-Received: by 2002:a05:622a:1b0e:b0:4ed:b06b:d67d with SMTP id d75a77b69052e-4f1b1b1043bmr71989591cf.45.1765460285835;
        Thu, 11 Dec 2025 05:38:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f379dfsm870083e87.9.2025.12.11.05.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 05:38:05 -0800 (PST)
Date: Thu, 11 Dec 2025 15:38:02 +0200
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
Subject: Re: [PATCH v6 3/4] misc: fastrpc: Add support for new DSP IOVA
 formatting
Message-ID: <iweswdjn6owhotezqdrdk5q7c4npazw5mb4zgurpfc3kb4d27b@fdywmzmvbn6d>
References: <20251211100933.1285093-1-kumari.pallavi@oss.qualcomm.com>
 <20251211100933.1285093-4-kumari.pallavi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211100933.1285093-4-kumari.pallavi@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: VF4w5q2UkqRO_zwn2HndaSH2Ldz2h3RM
X-Authority-Analysis: v=2.4 cv=b46/I9Gx c=1 sm=1 tr=0 ts=693ac93f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=7AOTrF8chGgiLGUaiC0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDEwNiBTYWx0ZWRfX11opabK9qJg5
 LEIhLf4CKSqCNawpTtXWg74F5t3W4/DAjybYclc3gHTLF2JqJDidWEgziW7JZ/ngw3MfQqPg5Nz
 +DDeU5pasOqpVHD3BAU2Mvvk8LNKE4zQoGyuYZQlNLTO8pdHcEcJu5KEkkq/rMs7woWVZ4n/KVu
 aXQ7iq2ZSYHiVZPJ/fNzVaS7r/BQ44fftBl27M44HLAEYm5DnicC6z5DOdeacSGHUYRtha863J5
 cqZJAY+LbiUz8cmRex9GM75VUxuy7BWrxFW62nQMKYvPJfsVPZD5Dwm5aj0E5S4sfi+6UWF1S2u
 WL0QuuCWAUTNVn4ezVUqlxDBwKvp9c0aAK/hMRd96SK+q/GblCwdhI71ssey5TDxqmgMjp6a3dN
 syH+MFuVVl6TWHUJ55fBt4srvJzQZg==
X-Proofpoint-GUID: VF4w5q2UkqRO_zwn2HndaSH2Ldz2h3RM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 phishscore=0 clxscore=1015 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110106

On Thu, Dec 11, 2025 at 03:39:32PM +0530, Kumari Pallavi wrote:
> Implement the new IOVA formatting required by the DSP architecture change
> on Kaanapali SoC. Place the SID for DSP DMA transactions at bit 56 in the
> physical address. This placement is necessary for the DSPs to correctly
> identify streams and operate as intended.
> To address this, set SID position to bit 56 via OF matching on the fastrpc
> node; otherwise, default to legacy 32-bit placement.
> This change ensures consistent SID placement across DSPs.
> 
> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> ---
>  drivers/misc/fastrpc.c | 61 ++++++++++++++++++++++++++++++++++++------
>  1 file changed, 53 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index eb9501fe79bc..af92876f1cc1 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -22,6 +22,7 @@
>  #include <linux/firmware/qcom/qcom_scm.h>
>  #include <uapi/misc/fastrpc.h>
>  #include <linux/of_reserved_mem.h>
> +#include <linux/bits.h>
>  
>  #define ADSP_DOMAIN_ID (0)
>  #define MDSP_DOMAIN_ID (1)
> @@ -33,7 +34,6 @@
>  #define FASTRPC_ALIGN		128
>  #define FASTRPC_MAX_FDLIST	16
>  #define FASTRPC_MAX_CRCLIST	64
> -#define FASTRPC_PHYS(p)	((p) & 0xffffffff)
>  #define FASTRPC_CTX_MAX (256)
>  #define FASTRPC_INIT_HANDLE	1
>  #define FASTRPC_DSP_UTILITIES_HANDLE	2
> @@ -105,6 +105,23 @@
>  
>  #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, miscdev)
>  
> +/* Extract SMMU PA from consolidated IOVA */
> +static inline dma_addr_t fastrpc_ipa_to_dma_addr(dma_addr_t iova, u32 sid_pos)
> +{
> +	if (!sid_pos)
> +		return 0;
> +	return iova & GENMASK_ULL(sid_pos - 1, 0);
> +}
> +
> +/*
> + * Prepare the consolidated iova to send to DSP by prepending the SID
> + * to smmu PA at the appropriate position
> + */
> +static inline u64 fastrpc_compute_sid_offset(u64 sid, u32 sid_pos)
> +{
> +	return sid << sid_pos;
> +}
> +
>  struct fastrpc_phy_page {
>  	dma_addr_t addr;	/* dma address */
>  	u64 size;		/* size of contiguous region */
> @@ -257,6 +274,10 @@ struct fastrpc_session_ctx {
>  	bool valid;
>  };
>  
> +struct fastrpc_soc_data {
> +	u32 sid_pos;
> +};
> +
>  struct fastrpc_channel_ctx {
>  	int domain_id;
>  	int sesscount;
> @@ -278,6 +299,7 @@ struct fastrpc_channel_ctx {
>  	bool secure;
>  	bool unsigned_support;
>  	u64 dma_mask;
> +	const struct fastrpc_soc_data *soc_data;
>  };
>  
>  struct fastrpc_device {
> @@ -390,7 +412,8 @@ static int fastrpc_map_lookup(struct fastrpc_user *fl, int fd,
>  static void fastrpc_buf_free(struct fastrpc_buf *buf)
>  {
>  	dma_free_coherent(buf->dev, buf->size, buf->virt,
> -			  FASTRPC_PHYS(buf->dma_addr));
> +			  fastrpc_ipa_to_dma_addr(buf->dma_addr,
> +						  buf->fl->cctx->soc_data->sid_pos));

fastrpc_ipa_to_dma_addr(fl->ccxtx, buf->dma_addr)

>  	kfree(buf);
>  }
>  
> @@ -440,7 +463,8 @@ static int fastrpc_buf_alloc(struct fastrpc_user *fl, struct device *dev,
>  	buf = *obuf;
>  
>  	if (fl->sctx && fl->sctx->sid)
> -		buf->dma_addr += ((u64)fl->sctx->sid << 32);
> +		buf->dma_addr += fastrpc_compute_sid_offset(fl->sctx->sid,
> +							    fl->cctx->soc_data->sid_pos);

fastrpc_sid_offset(fl->cctx, fl->sctx)

>  
>  	return 0;
>  }
> @@ -685,7 +709,9 @@ static int fastrpc_dma_buf_attach(struct dma_buf *dmabuf,
>  		return -ENOMEM;
>  
>  	ret = dma_get_sgtable(buffer->dev, &a->sgt, buffer->virt,
> -			      FASTRPC_PHYS(buffer->dma_addr), buffer->size);
> +			      fastrpc_ipa_to_dma_addr(buffer->dma_addr,
> +						      buffer->fl->cctx->soc_data->sid_pos),
> +			      buffer->size);
>  	if (ret < 0) {
>  		dev_err(buffer->dev, "failed to get scatterlist from DMA API\n");
>  		kfree(a);
> @@ -734,7 +760,8 @@ static int fastrpc_mmap(struct dma_buf *dmabuf,
>  	dma_resv_assert_held(dmabuf->resv);
>  
>  	return dma_mmap_coherent(buf->dev, vma, buf->virt,
> -				 FASTRPC_PHYS(buf->dma_addr), size);
> +				 fastrpc_ipa_to_dma_addr(buf->dma_addr,
> +							 buf->fl->cctx->soc_data->sid_pos), size);
>  }
>  
>  static const struct dma_buf_ops fastrpc_dma_buf_ops = {
> @@ -747,6 +774,12 @@ static const struct dma_buf_ops fastrpc_dma_buf_ops = {
>  	.release = fastrpc_release,
>  };
>  
> +static dma_addr_t fastrpc_compute_dma_addr(struct fastrpc_user *fl, dma_addr_t sg_dma_addr)
> +{
> +	return sg_dma_addr + fastrpc_compute_sid_offset(fl->sctx->sid,
> +							fl->cctx->soc_data->sid_pos);
> +}
> +
>  static int fastrpc_map_attach(struct fastrpc_user *fl, int fd,
>  			      u64 len, u32 attr, struct fastrpc_map **ppmap)
>  {
> @@ -788,8 +821,7 @@ static int fastrpc_map_attach(struct fastrpc_user *fl, int fd,
>  	if (attr & FASTRPC_ATTR_SECUREMAP) {
>  		map->dma_addr = sg_phys(map->table->sgl);
>  	} else {
> -		map->dma_addr = sg_dma_address(map->table->sgl);
> -		map->dma_addr += ((u64)fl->sctx->sid << 32);
> +		map->dma_addr = fastrpc_compute_dma_addr(fl, sg_dma_address(map->table->sgl));
>  	}

Now you can drop curve brackets around.

>  	for_each_sg(map->table->sgl, sgl, map->table->nents,
>  		sgl_index)

-- 
With best wishes
Dmitry

