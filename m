Return-Path: <devicetree+bounces-225236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 399FEBCBC76
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:24:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9ED9E4EACD2
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 06:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928F824466D;
	Fri, 10 Oct 2025 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c44opu8g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7914D229B18
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 06:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760077463; cv=none; b=Mko5rTe7GfOwcg+a9PXU+Y8CKOe4JdMXa/7chhpCBtui9v0otAPLjRo4h+/JEbtOGHrV5HjdJcxRdGQRA3vR9IPMOcnr5Q8hZ8K/F/gIIVYEpX4hRMrh7dVRqdalM7Hm0j89NTMpMnIwa2bBKeqU50K3CZPrk3UHpJ9A1J4nkj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760077463; c=relaxed/simple;
	bh=Nsss/Rw8F579NrBEQATuT21NAYC394pncld232qwJJA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Esq+xxoStnZkBriG/urF6aWLOeczuUMAxJncwDoZx6mqa3ZZ1soLRLkZPqmmgZGNDDvMPpI9cjOH7NFxjQ6iD/AwCol++1O65jNj+G+89x45/foKCiUCsYJaKWYETFpBKZf02IvIsUJlVOuOckciNnO4v0aVdfHLBl1D7p76mKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c44opu8g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6J6DR024720
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 06:24:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jFzSZYpvtUZFzWObwg4srbgH
	vh7CbKtgqp7T+kySglU=; b=c44opu8gLuh+hlspnXwVpdOdOFO7c217bJb4/m8Y
	yCZefLkzeBuU00RS49BJ8Q97PsAoxJfFbCyWlN49Vip/MK2DewDm8R86aptL3fsW
	B9L4GuXwKi0USkcdYs4iK8XS0Z8dVQGWxRnd6ELyyASKBn9xnyvsbCorGtI1EtFb
	v77sVGGS7BXVlEQp6jDaLr+B7K6neJTS+HK/YtavdJVAAeMtOQB0iVyDzbCwvmaG
	TCb5E/Q0md7aWJ5nqahsT7McgwWHCxb2isOS7QJ9erw66T4TM8E6QphPYd+JTt1M
	uCZDhwdJLjqENV6yEBY0Si+TXSYu8KCTs4dHWWcjGzvOGQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49p9m0u9wm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 06:24:20 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b632471eda1so3389408a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 23:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760077459; x=1760682259;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jFzSZYpvtUZFzWObwg4srbgHvh7CbKtgqp7T+kySglU=;
        b=YleO3ulLtACITgNr3Wb9FjAcOAY0ZzY3nU+lDwlYR8pDi564Cj2c4+eYW7tI62UlZi
         lSnAuF9UavoZ11eAFuSphsWDQhXOZgi7nQJmhXDhv5FUY4eUddf2YPXa/ydCge8DZrjN
         a1IXOqkw76h1wBu9Q+6x1WwSpXG5HPRErdoAlxFkEOmWnGW5yOE0cxtKo/XPNwxC19PX
         YNwckzqy9+v1Zag8pnE2fhbrPJUcPvWDVTZHsVxtXYaFcWrK8oTfWGFo7iIF+f2nCvcv
         oaXakPYRfExpKVGc9Y02pSC6P4ZvGaPyW1pW9EqvQYOoJlscJGtxWyY9qeA/QpTvr9lb
         0o7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUHj2vgf1RkdRZuK3n9Z81eDSuEnne1d6ghKKcWcHlPOPgF9h3IcDcCyD0I79QyEqYiK3ft2dm4DrJ8@vger.kernel.org
X-Gm-Message-State: AOJu0YwpF2b/augu/lWZalJlGy1jOQzBVpNrhKLPx+PESa+CMMCETvgV
	UWFUgfTls9WksLnqSrHwcewk3szbZ9Dn/tx2+MLVnUtI6Zdluo2I/La6jEcUrEo0D2w4VyvqYjg
	SBoCeKfPJx58e5mx4iSyzOdIHF1gZLkllvSrIBQjblimzIMXM9ok5/K7NZcbWTnZI
X-Gm-Gg: ASbGncsISdKnmIqBT8jLNHsRnJNv+hl0HBJCjQ76p4rVIAkA60hkv9KtOLixo+0I4bz
	HRxtU43szmdbJXpKDw57kIJtJDIHk3ep48mbE67r0wG6cnDxyTW1mhYsd1TStMoVu6J6C3oWERl
	eRLloo4EDXI4BZZw5OLj5rA4bLJGfiYAIDmBMwCPn32qikLyBmDYeOq1QE5FgGbvZ7WRBZ3xUKj
	q4MTHv7rfps0AeYvcWN+FVmdlSJkjiZsdfPl+zuCMAUK6F7Ox+tKuDKxnZLtL43ZmyoGaarG4zO
	xGH7rYqU1k0m8DFAccT8LBTeN3o/guT8M7lduAbtZgdDlYDFEQXpvFYYYzpPz7kCLtk=
X-Received: by 2002:a17:903:1107:b0:275:f932:8636 with SMTP id d9443c01a7336-29027344a2amr140946725ad.38.1760077458512;
        Thu, 09 Oct 2025 23:24:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5PT5fnuqNMzfdt4BS8g9SFlz4v9jtivcu/HhHzChcBc8sRDmBlsDmCsUOGP8NXatH8NqZIw==
X-Received: by 2002:a17:903:1107:b0:275:f932:8636 with SMTP id d9443c01a7336-29027344a2amr140946185ad.38.1760077457718;
        Thu, 09 Oct 2025 23:24:17 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de56desm47435335ad.19.2025.10.09.23.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 23:24:16 -0700 (PDT)
Date: Fri, 10 Oct 2025 11:54:10 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 05/12] remoteproc: pas: Replace metadata context with
 PAS context structure
Message-ID: <20251010062410.h7smjmvpt5fbog3p@hu-mojha-hyd.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
 <20251007-kvm_rprocv4_next-20251007-v4-5-de841623af3c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251007-kvm_rprocv4_next-20251007-v4-5-de841623af3c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=a/U9NESF c=1 sm=1 tr=0 ts=68e8a694 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=hMk7HZvlmUkqmH-NLHIA:9
 a=CjuIK1q_8ugA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: 6m7wyYnOwQyzBeBCqgi7qs0ifwPbCILa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA5MDA0NyBTYWx0ZWRfXwAc3jFaOQrep
 MZErIG2tw91AoU03p1muz7rp1sFuNadnwhHIR1wQkdbuDtZYOmGqSWhGOFS1CgPfeyrRLDYdwd5
 9kKTJvLVoib8Z7sN56Ppvwywj8fIyMoIzR9wewVlaO33M+46IqCgRWmyYsNMyiT7kNufdrh+tGm
 I7R4EbZ8unLzvBNWTrLiMkr+W362csDj9LYDvT5hWi0VDM5TQgPg3VIqRWElaCVNE2vLAo9Iapl
 P2Afo3Xvh4wXN/zMgcfCv5TjRbc3FGUMKOBumKLhUzgqZoIgjvluy4klXJEoM+iD3JBDcy436/A
 aE3KR5G6xd0JFHn+HyHWzVQKkEKrGBZKcMsIbsmN8Mrke3Ggz2IuaewOHfJqoDsqolDObixgU54
 XC1MCuVmJABBpqZ4dgqLedTtoUVIUw==
X-Proofpoint-ORIG-GUID: 6m7wyYnOwQyzBeBCqgi7qs0ifwPbCILa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510090047

On Tue, Oct 07, 2025 at 10:18:50PM +0530, Mukesh Ojha wrote:
> As a superset of the existing metadata context, the PAS context
> structure enables both remoteproc and non-remoteproc subsystems to
> better support scenarios where the SoC runs with or without the Gunyah
> hypervisor. To reflect this, relevant SMC and metadata functions are
> updated to incorporate PAS context awareness.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c       | 32 +++++++++--------
>  drivers/remoteproc/qcom_q6v5_pas.c     | 66 +++++++++++++++++++---------------
>  drivers/soc/qcom/mdt_loader.c          |  7 ++--
>  include/linux/firmware/qcom/qcom_scm.h |  4 +--
>  include/linux/soc/qcom/mdt_loader.h    |  5 ++-
>  5 files changed, 62 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> index b8ce4fc34dbe..7b4ff3cb26ed 100644
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
> @@ -621,7 +621,7 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_context_destroy);
>   *		and optional blob of data used for authenticating the metadata
>   *		and the rest of the firmware
>   * @size:	size of the metadata
> - * @ctx:	optional metadata context
> + * @ctx:	optional pas context
>   *
>   * Return: 0 on success.
>   *
> @@ -630,8 +630,9 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_context_destroy);
>   * qcom_scm_pas_metadata_release() by the caller.
>   */
>  int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> -			    struct qcom_scm_pas_metadata *ctx)
> +			    struct qcom_scm_pas_context *ctx)
>  {
> +	struct qcom_scm_pas_metadata *mdt_ctx;
>  	dma_addr_t mdata_phys;
>  	void *mdata_buf;
>  	int ret;
> @@ -682,10 +683,11 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
>  out:
>  	if (ret < 0 || !ctx) {
>  		dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);
> -	} else if (ctx) {
> -		ctx->ptr = mdata_buf;
> -		ctx->phys = mdata_phys;
> -		ctx->size = size;
> +	} else if (ctx && ctx->metadata) {
> +		mdt_ctx = ctx->metadata;
> +		mdt_ctx->ptr = mdata_buf;
> +		mdt_ctx->phys = mdata_phys;
> +		mdt_ctx->size = size;
>  	}
>  
>  	return ret ? : res.result[0];
> @@ -694,18 +696,20 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_init_image);
>  
>  /**
>   * qcom_scm_pas_metadata_release() - release metadata context
> - * @ctx:	metadata context
> + * @ctx:	pas context
>   */
> -void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
> +void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
>  {
> -	if (!ctx->ptr)
> -		return;
> +	struct qcom_scm_pas_metadata *mdt_ctx;
>  
> -	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
> +	mdt_ctx = ctx->metadata;
> +	if (!mdt_ctx->ptr)
> +		return;
>  
> -	ctx->ptr = NULL;
> -	ctx->phys = 0;
> -	ctx->size = 0;
> +	dma_free_coherent(__scm->dev, mdt_ctx->size, mdt_ctx->ptr, mdt_ctx->phys);
> +	mdt_ctx->ptr = NULL;
> +	mdt_ctx->phys = 0;
> +	mdt_ctx->size = 0;
>  }
>  EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
>  
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index 158bcd6cc85c..46a23fdefd48 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -117,8 +117,8 @@ struct qcom_pas {
>  	struct qcom_rproc_ssr ssr_subdev;
>  	struct qcom_sysmon *sysmon;
>  
> -	struct qcom_scm_pas_metadata pas_metadata;
> -	struct qcom_scm_pas_metadata dtb_pas_metadata;
> +	struct qcom_scm_pas_context *pas_ctx;
> +	struct qcom_scm_pas_context *dtb_pas_ctx;
>  };
>  
>  static void qcom_pas_segment_dump(struct rproc *rproc,
> @@ -211,9 +211,9 @@ static int qcom_pas_unprepare(struct rproc *rproc)
>  	 * auth_and_reset() was successful, but in other cases clean it up
>  	 * here.
>  	 */
> -	qcom_scm_pas_metadata_release(&pas->pas_metadata);
> +	qcom_scm_pas_metadata_release(pas->pas_ctx);
>  	if (pas->dtb_pas_id)
> -		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
> +		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
>  
>  	return 0;
>  }
> @@ -239,15 +239,8 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
>  			return ret;
>  		}
>  
> -		ret = qcom_mdt_pas_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
> -					pas->dtb_pas_id, pas->dtb_mem_phys,
> -					&pas->dtb_pas_metadata);
> -		if (ret)
> -			goto release_dtb_firmware;
> -
> -		ret = qcom_mdt_load_no_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
> -					    pas->dtb_mem_region, pas->dtb_mem_phys,
> -					    pas->dtb_mem_size, &pas->dtb_mem_reloc);
> +		ret = qcom_mdt_pas_load(pas->dtb_pas_ctx, pas->dtb_firmware, pas->dtb_firmware_name,
> +					pas->dtb_mem_region, &pas->dtb_mem_reloc);
>  		if (ret)
>  			goto release_dtb_metadata;
>  	}
> @@ -255,9 +248,7 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
>  	return 0;
>  
>  release_dtb_metadata:
> -	qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
> -
> -release_dtb_firmware:
> +	qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
>  	release_firmware(pas->dtb_firmware);
>  
>  	return ret;
> @@ -305,14 +296,8 @@ static int qcom_pas_start(struct rproc *rproc)
>  		}
>  	}
>  
> -	ret = qcom_mdt_pas_init(pas->dev, pas->firmware, rproc->firmware, pas->pas_id,
> -				pas->mem_phys, &pas->pas_metadata);
> -	if (ret)
> -		goto disable_px_supply;
> -
> -	ret = qcom_mdt_load_no_init(pas->dev, pas->firmware, rproc->firmware,
> -				    pas->mem_region, pas->mem_phys, pas->mem_size,
> -				    &pas->mem_reloc);
> +	ret = qcom_mdt_pas_load(pas->pas_ctx, pas->firmware, rproc->firmware,
> +				pas->mem_region, &pas->dtb_mem_reloc);

s/&pas->dtb_mem_reloc/&pas->mem_reloc/

>  	if (ret)
>  		goto release_pas_metadata;
>  
> @@ -332,9 +317,9 @@ static int qcom_pas_start(struct rproc *rproc)
>  		goto release_pas_metadata;
>  	}
>  
> -	qcom_scm_pas_metadata_release(&pas->pas_metadata);
> +	qcom_scm_pas_metadata_release(pas->pas_ctx);
>  	if (pas->dtb_pas_id)
> -		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
> +		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
>  
>  	/* firmware is used to pass reference from qcom_pas_start(), drop it now */
>  	pas->firmware = NULL;
> @@ -342,9 +327,9 @@ static int qcom_pas_start(struct rproc *rproc)
>  	return 0;
>  
>  release_pas_metadata:
> -	qcom_scm_pas_metadata_release(&pas->pas_metadata);
> +	qcom_scm_pas_metadata_release(pas->pas_ctx);
>  	if (pas->dtb_pas_id)
> -		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
> +		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
>  disable_px_supply:
>  	if (pas->px_supply)
>  		regulator_disable(pas->px_supply);
> @@ -779,12 +764,33 @@ static int qcom_pas_probe(struct platform_device *pdev)
>  	}
>  
>  	qcom_add_ssr_subdev(rproc, &pas->ssr_subdev, desc->ssr_name);
> +
> +	pas->pas_ctx = qcom_scm_pas_context_init(pas->dev, pas->pas_id, pas->mem_phys,
> +						 pas->mem_size);
> +	if (IS_ERR(pas->pas_ctx)) {
> +		ret = PTR_ERR(pas->pas_ctx);
> +		goto remove_ssr_sysmon;
> +	}
> +
> +	pas->dtb_pas_ctx = qcom_scm_pas_context_init(pas->dev, pas->dtb_pas_id,
> +						     pas->dtb_mem_phys, pas->dtb_mem_size);
> +	if (IS_ERR(pas->dtb_pas_ctx)) {
> +		ret = PTR_ERR(pas->dtb_pas_ctx);
> +		goto destroy_pas_ctx;
> +	}
> +
>  	ret = rproc_add(rproc);
>  	if (ret)
> -		goto remove_ssr_sysmon;
> +		goto destroy_dtb_pas_ctx;
>  
>  	return 0;
>  
> +destroy_dtb_pas_ctx:
> +	qcom_scm_pas_context_destroy(pas->dtb_pas_ctx);
> +
> +destroy_pas_ctx:
> +	qcom_scm_pas_context_destroy(pas->pas_ctx);
> +
>  remove_ssr_sysmon:
>  	qcom_remove_ssr_subdev(rproc, &pas->ssr_subdev);
>  	qcom_remove_sysmon_subdev(pas->sysmon);
> @@ -807,6 +813,8 @@ static void qcom_pas_remove(struct platform_device *pdev)
>  {
>  	struct qcom_pas *pas = platform_get_drvdata(pdev);
>  
> +	qcom_scm_pas_context_destroy(pas->dtb_pas_ctx);
> +	qcom_scm_pas_context_destroy(pas->pas_ctx);
>  	rproc_del(pas->rproc);
>  
>  	qcom_q6v5_deinit(&pas->q6v5);
> diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
> index 31855836b251..105a44f42ba7 100644
> --- a/drivers/soc/qcom/mdt_loader.c
> +++ b/drivers/soc/qcom/mdt_loader.c
> @@ -234,13 +234,13 @@ EXPORT_SYMBOL_GPL(qcom_mdt_read_metadata);
>   * @fw_name:	name of the firmware, for construction of segment file names
>   * @pas_id:	PAS identifier
>   * @mem_phys:	physical address of allocated memory region
> - * @ctx:	PAS metadata context, to be released by caller
> + * @ctx:	PAS context, ctx->metadata to be released by caller
>   *
>   * Returns 0 on success, negative errno otherwise.
>   */
>  int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
>  		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
> -		      struct qcom_scm_pas_metadata *ctx)
> +		      struct qcom_scm_pas_context *ctx)
>  {
>  	const struct elf32_phdr *phdrs;
>  	const struct elf32_phdr *phdr;
> @@ -505,8 +505,7 @@ int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *f
>  {
>  	int ret;
>  
> -	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys,
> -				ctx->metadata);
> +	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys, ctx);
>  	if (ret)
>  		return ret;
>  
> diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
> index e82fdc200df7..af6ab837ad5a 100644
> --- a/include/linux/firmware/qcom/qcom_scm.h
> +++ b/include/linux/firmware/qcom/qcom_scm.h
> @@ -84,8 +84,8 @@ void *qcom_scm_pas_context_init(struct device *dev, u32 pas_id, phys_addr_t mem_
>  				size_t mem_size);
>  void qcom_scm_pas_context_destroy(struct qcom_scm_pas_context *ctx);
>  int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> -			    struct qcom_scm_pas_metadata *ctx);
> -void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
> +			    struct qcom_scm_pas_context *ctx);
> +void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx);
>  int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size);
>  int qcom_scm_pas_auth_and_reset(u32 pas_id);
>  int qcom_scm_pas_shutdown(u32 pas_id);
> diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
> index 2832e0717729..7d57746fbbfa 100644
> --- a/include/linux/soc/qcom/mdt_loader.h
> +++ b/include/linux/soc/qcom/mdt_loader.h
> @@ -10,7 +10,6 @@
>  
>  struct device;
>  struct firmware;
> -struct qcom_scm_pas_metadata;
>  struct qcom_scm_pas_context;
>  
>  #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
> @@ -18,7 +17,7 @@ struct qcom_scm_pas_context;
>  ssize_t qcom_mdt_get_size(const struct firmware *fw);
>  int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
>  		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
> -		      struct qcom_scm_pas_metadata *pas_metadata_ctx);
> +		      struct qcom_scm_pas_context *pas_ctx);
>  int qcom_mdt_load(struct device *dev, const struct firmware *fw,
>  		  const char *fw_name, int pas_id, void *mem_region,
>  		  phys_addr_t mem_phys, size_t mem_size,
> @@ -43,7 +42,7 @@ static inline ssize_t qcom_mdt_get_size(const struct firmware *fw)
>  
>  static inline int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
>  				    const char *fw_name, int pas_id, phys_addr_t mem_phys,
> -				    struct qcom_scm_pas_metadata *pas_metadata_ctx)
> +				    struct qcom_scm_pas_context *pas_ctx)
>  {
>  	return -ENODEV;
>  }
> 
> -- 
> 2.50.1
> 

-- 
-Mukesh Ojha

