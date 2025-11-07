Return-Path: <devicetree+bounces-236050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CA9C3F8FF
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:47:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 654574E4B21
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B62443195EA;
	Fri,  7 Nov 2025 10:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZxjAZa4f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZmsdOCxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D61131961C
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762512429; cv=none; b=S2HgLbmF9QNtOkbGWB72Gc/KpwMSIQMzgU2Pz7F+hpQYnWZQnYA0MFMULzTtGWVxnJXdvLi/ny3KFm4K9Go/IHwcutGAmzxOu3ffwI9A4FNHmbGCuuzHShH48lWj1gXk9F9x68Dz/NxcNxqzGsBs9/Pte2EQME3HXCZilo0ZBbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762512429; c=relaxed/simple;
	bh=5IK8RZHfjPF/UHfY+oixKY429zs+fYo3a6pLKo6eKg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BpuiRT2qCiL1UNjoCh01ifGoXZURXkni7bqHZcgGdM8zGaihLto7hrkXt9phc2r0/mSqszLqk8A03NBde6KQ4nIIjZtodD2L8OJFmH1njTOiYWwtRB1JX0byTDPkqSNjAm7Gce1CRhsgjjgWJQv3y3CUI8WoEX4in00M3ogA2CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZxjAZa4f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZmsdOCxc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A78qJYU4131640
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 10:47:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dIHOZvzi4E5EsAkZDn1XATnMDVaEEEIARQJGPB/JU9w=; b=ZxjAZa4f7mtmONPW
	ErmgE26ODqDURmIFU2UUiKJNWDzvNxwxTHGwqOrK02FY93zjU8FmfpD6FrfUbgCU
	Bc8dj27iYKWuZ50NMDl2/8Oqy0WpZpQZ3icBScgVphbDpwWePjegGNlnG/cp+COI
	omeBznjo8LJtz9JpcAVCtGGcx+TGJQgL9SwCuSRAqQ8Wx2RVBrTH/jNRnUICuAcl
	LhX53Bh8zHBXbLWT8TluWGdLDuebM9vRouKPcAp7Brswpiy+M5LzL9md7bMsaclo
	kT+mLgiW/8G84BLOe/ypxc9dbII8xg8pCrAEUNO9ugQagng5l4kRtMKIdvvbhEid
	obNeCw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8u3x3rg0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 10:47:07 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4eb86039d9aso1576711cf.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762512426; x=1763117226; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dIHOZvzi4E5EsAkZDn1XATnMDVaEEEIARQJGPB/JU9w=;
        b=ZmsdOCxcB5H5sSForMSEH87sUQkStVn7cOlx05yi/4Qihe1Ky1/kOUviBGd5YO3s5W
         yjIqI4z/jH5noYf6TLQJAV1RRx9tN5gWMaECU4sH36WiEGfZACXBbd/k5jVelbSxVaEq
         R//P1yNjp/DLFckAPEHkzeuia3Qgmz23nl84WCLE2WMTzyCMQV61q/QzNCu3tRQ3oxc4
         AQ7u9jg4pFre8MuVM1RhQD3gw29x9scbd/fiRRjHsoUO2rFQ06uLhwVi4yZaIHirs0ft
         huay82eB3MidcfXEjbP5NMIJ8mibd4+2+UxrqT8nfmZp7BB/V6VrwGPRSH8NARmLbPJA
         gRQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762512426; x=1763117226;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dIHOZvzi4E5EsAkZDn1XATnMDVaEEEIARQJGPB/JU9w=;
        b=LKux/aOqXNjSCrWIXzoi25iNnkF44fj/3Y0pGd+PsNxldOUOrMaj9HcqS+B2n0E5rg
         eSQ1kwqb6Dr6jYOUVI/JZ75fvtH0TO+N2pGtKV4o+nBn/skYQz2VZ9xCBgWkR9OCW7d8
         bxAt9vtQrv+8IMYPQEJwE/xwwfllnrdYaZDGueuAloyRO8M0U/lifdMBYJGj70v3eqoY
         wweDHA/ecasO72DReAXUB27aH3VSNLGL6DAbvHWofds2YKx4LiqU1v4136H975jVbi24
         4EdTRy4AJ4+6eiYaY6vGztFNJJhpvH8Qzipjp0nEa3Ba9QbbEZ0jB4mwPN87YO/G7n2x
         cjbA==
X-Forwarded-Encrypted: i=1; AJvYcCWhdfMkbPgf+9J/wmAPtb980DmZeodbo8Md8SItH+O5NDhstsg8WbHzpMgjuPtmrS2T4jysIoro+HOt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzparx3HwacLZjq0TqlX72I0purQSgz/IZd0Jr43FOWEQwZbZdl
	hwIzc6ZO1QSxLobPxFhaLwwPWJp+LmZ4JI31xSYy7XdylhBqCF9L9lHMD+DNiRcrjUnLP0KpfYf
	ZsI4Fe8uu4ustSRO0XSsewLGUGA01weeXZfmksxCd77ECvc7pkjPBhW9hGvg6cyfY
X-Gm-Gg: ASbGncs1Lwouz7qtyZoJUIot511OFXl7hn6n+B+CT8KC/JT4A11ueG5e8vlU3sBVNzK
	g/FhvI+QlpXqhU4bRS4I96mBX+gXKU8UyRzAXf6EcB8pG5xRqNSb58PlxjPhU6paVzUkA4khMrw
	c6qJukaepT3I34UFNLWugixcpYeqVT4CVd46nfQOJOzjjyBlx1Cnl8+m0dyo6vc3tVmE9OtdzxB
	jWjpbAv+cB0Bve0wQtCOjARzMkn5mu0uSOwg0Xuxvy4eoMIoBxZ+r66uYO83WTc4J8n1ZKyGhQF
	hldP+3N2ftuq/qJ6HstvBMRAvDPDZ1cSocEkvrSlWnLcQMYgRnkXonEMy/NjB81L27BZ2BwuAOk
	GRe/5kaGKl1qxt2n1cxpy+RCCB0wZ6Lg+ZaHwtYD+VVI1BFmS8/gr6FVw
X-Received: by 2002:ac8:588f:0:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4ed949427a0mr22179261cf.3.1762512426097;
        Fri, 07 Nov 2025 02:47:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoxSnMWMtBwQXfeE2aIAOpjt2jjGXuUkOeuQMREJLvNPefUZXyxg0VWuhBA5nLVm4h0jmrNw==
X-Received: by 2002:ac8:588f:0:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4ed949427a0mr22179101cf.3.1762512425599;
        Fri, 07 Nov 2025 02:47:05 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d456sm218152066b.39.2025.11.07.02.47.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 02:47:04 -0800 (PST)
Message-ID: <89e65adf-fdd4-4b98-a220-fb0f77dae7c6@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 11:47:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 12/14] remoteproc: pas: Extend parse_fw callback to
 fetch resources via SMC call
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-12-7017b0adc24e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-12-7017b0adc24e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA4NyBTYWx0ZWRfX7+JNnrd4LyeK
 CmC4OTSOa7ERA6xIxt0N41KuPbRav4GB2f5JG7/X1//mAgcXdLWCCLHfkEETPc4FR9B0ch4D8ZV
 58zajAEJk9Q1YQ1jYQhn00RzCXM/QCtwYtkeNHBldgUJc3pOVtGW9nO3QxNSQi/42FLQ3rO9j2S
 GzKV5rNL0a6uU21U+KEgRiHeZnhCyiq3Cy2vUN5+AVqCuIbvkmprAosdMUcsfsezwEJBar2thtk
 06I4Y1Y82ZTa55pDm2gUwDhDwp+sa8mX45/7kmuSYdTcyocS6ZM12GwfM+00EmKTlKXl6AEYf9w
 0XqahLjhQwq9PzFga3/UKr7UAOKGRbUhaBF45N1X0bkncJYSTON64ADyn0Bl9HfAu7FNNi/BTcd
 OBD7wwDgcUVmVwIlNz+R0unryxQMtA==
X-Proofpoint-ORIG-GUID: ctx3rbRedy2nnm-ur-xDFEMpfG-E64dh
X-Proofpoint-GUID: ctx3rbRedy2nnm-ur-xDFEMpfG-E64dh
X-Authority-Analysis: v=2.4 cv=BrKQAIX5 c=1 sm=1 tr=0 ts=690dce2b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DHMX3CF8R6px0_vBxB8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070087

On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> Qualcomm remote processor may rely on static and dynamic resources for
> it to be functional. For most of the Qualcomm SoCs, when run with Gunyah
> or older QHEE hypervisor, all the resources whether it is static or
> dynamic, is managed by the hypervisor. Dynamic resources if it is
> present for a remote processor will always be coming from secure world
> via SMC call while static resources may be present in remote processor
> firmware binary or it may be coming from SMC call along with dynamic
> resources.

[...]

> +	/*
> +	 * Qualcomm remote processor may rely on static and dynamic resources for
> +	 * it to be functional. For most of the Qualcomm SoCs, when run with Gunyah
> +	 * or older QHEE hypervisor, all the resources whether it is static or dynamic,
> +	 * is managed by present hypervisor. Dynamic resources if it is present for
> +	 * a remote processor will always be coming from secure world via SMC call
> +	 * while static resources may be present in remote processor firmware binary
> +	 * or it may be coming from SMC call along with dynamic resources.

How about:

"""
The resources consumed by Qualcomm remote processors fall into two categories:
static (such as the memory carveouts for the rproc firmware) and dynamic (like
shared memory pools).

Both are managed by a Qualcomm hypervisor (such as QHEE or Gunyah), if one is
present.

Otherwise, a resource table must be retrieved via an SCM call. That table will
list all dynamic resources (if any) and possibly the static ones.
The static resources may also come from a resource table embedded in the rproc
firmware instead.
"""

?

> +	 *
> +	 * Here, we call rproc_elf_load_rsc_table() to check firmware binary has resources
> +	 * or not and if it is not having then we pass NULL and zero as input resource
> +	 * table pointer and size respectively to the argument of qcom_scm_pas_get_rsc_table()
> +	 * and this is even true for Qualcomm remote processor who does follow remoteproc
> +	 * framework.
> +	 */
> +	ret = qcom_scm_pas_get_rsc_table(pas->pas_ctx, table, table_sz, &output_rt,
> +					 &output_rt_size);
> +	if (ret) {
> +		dev_err(pas->dev, "Error in getting resource table: %d\n", ret);
> +		return ret;
> +	}
> +
> +	kfree(rproc->cached_table);

Would this not simply discard the firmware binary table in the "split case"?

Konrad

> +	rproc->cached_table = output_rt;
> +	rproc->table_ptr = rproc->cached_table;
> +	rproc->table_sz = output_rt_size;
> +
> +	return ret;
> +}
> +
>  static unsigned long qcom_pas_panic(struct rproc *rproc)
>  {
>  	struct qcom_pas *pas = rproc->priv;
> @@ -425,7 +481,7 @@ static const struct rproc_ops qcom_pas_ops = {
>  	.start = qcom_pas_start,
>  	.stop = qcom_pas_stop,
>  	.da_to_va = qcom_pas_da_to_va,
> -	.parse_fw = qcom_register_dump_segments,
> +	.parse_fw = qcom_pas_parse_firmware,
>  	.load = qcom_pas_load,
>  	.panic = qcom_pas_panic,
>  };
> @@ -435,7 +491,7 @@ static const struct rproc_ops qcom_pas_minidump_ops = {
>  	.start = qcom_pas_start,
>  	.stop = qcom_pas_stop,
>  	.da_to_va = qcom_pas_da_to_va,
> -	.parse_fw = qcom_register_dump_segments,
> +	.parse_fw = qcom_pas_parse_firmware,
>  	.load = qcom_pas_load,
>  	.panic = qcom_pas_panic,
>  	.coredump = qcom_pas_minidump,
> 

