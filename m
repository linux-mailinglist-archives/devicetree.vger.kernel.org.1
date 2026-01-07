Return-Path: <devicetree+bounces-252181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB20BCFC12E
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 06:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FFB1303C9F8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 05:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FBB265CAD;
	Wed,  7 Jan 2026 05:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H3VE5fL5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ANd3xk+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664B125BEE5
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 05:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767764000; cv=none; b=jk2J2qG+PWO+qELOwEJis/PFdVcekuZ+CRvelGgdg2RoGNNJkyLp0MekbfgvFxwTtTjXIAm8+E8aOzVYd6+L5nunPuMNCLNueRgr7aH1txg3hWWfgvXw2osfFVvUIfGuG6fXI5wyvPodvfWaJw27mYQlzmZ2oTtRUB50ESY0uMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767764000; c=relaxed/simple;
	bh=8AgfhEWDZUNErEUD0EBGzeS5ORKs/qQGumTlGs+iNJQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h/TLIqqTbAMHBkI5lVfHoorYvxWLQDSAsvI5vFtE8JwPWBpIDhPIK2brkvuVUfXlkAZ6TooUUIRIna9AJDa3yeo4D8gA/ooFs/wwh/ikEazyKuVPa75HcqUAvIrbzGD6DIPydHqPAHS1R8ko9ler3e4220MFQaWQaLX7aSfVo1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H3VE5fL5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ANd3xk+5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6073VtSZ3888892
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 05:33:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IM7LCQ0sGj6OLZ9XtkfAleS0gJYcIZuB+fuwo6h2M2E=; b=H3VE5fL5naNFXi+n
	O7xIIuISF/Q8t/l2vRelk+DEHVZGL1RHlvpp50ngoj6YQHvBbQuAK9PCniwgUl13
	yQkbcNPO/95BoRFDfPSsIRY+yOGbxc7JABi7MmZAAwxbAV7YvQujWXlouU4fYtKN
	F6fStCrdKFK985jDYaraAtU4LY1Mu5Byad1Yh/dLU8F7fdygoFuNysY+r/Tigexg
	+mLM+0osMw9/8ICdmS9V3u/+X0aBEmM/LKRaoPm7RLj9ftGpIR5MZZv5GGVS+wYo
	774zuUjpBDGad6yVtnO43smRBveMCkt7LyBeKQVJvQv0SHXEnsvQmue8UE/WjA+g
	+uj8jA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh6a0j1s0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:33:17 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630753cc38so2739600a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 21:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767763996; x=1768368796; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IM7LCQ0sGj6OLZ9XtkfAleS0gJYcIZuB+fuwo6h2M2E=;
        b=ANd3xk+52MpyGcWpdwCC9jgntZ72brlW24eBL/74U9h/DPWZr1mBiZU/dMH1xFwjtP
         8WsfCOx8pbizMri7MSExst2XuFoJibaRo2hMCwlWXM+qgS0cggksTfRddE++Si7b5rDW
         OiA/AiMylkUR+hZEB0JWHaFPCA0k/q66QU9civgeRJhXVpOMy/sW3yeCv0hPl0kW8+Rv
         U8it5EkZkZ3klf/dBRhTQeplsuWaHvpLSM4ON0w10slkO94+HP6l9IfRW7r7rPRdm7v8
         HIMG108BakCwvyERN9vEIeDIHe2tmoJkUNhu4iSen0LNzHw03yWkzRaQSGL2BQE/QGVm
         u5qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767763996; x=1768368796;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IM7LCQ0sGj6OLZ9XtkfAleS0gJYcIZuB+fuwo6h2M2E=;
        b=gwZhNKUGEEXU69YunKgb+dmsPI8QNjep4NFC8l1tjE4E9l12hdafU/1OL0iJtb0xRN
         qtPAKe1OYgAQglpluP0nfhHaTtnECd0VAclW+1e7bgNxmcz7HAFdj7RERGRi5wjHTYgD
         dC3hRWo6dH5UglU5y3xKvnrSTMQVDU0S5NyVfc59g5aV3NolS23WZ0XNmLjsLBqFcE0B
         bVzznj/eA32pauR582kDYnOrljYQD9Rsdy9lUcaCEvN0A5UMx8BvTYre9AaQQo3j4n3w
         g8c/G0NxjuvQypYF+1LxMe8R2qgG8ST5szqx8G2QAQz8cMaqwFEHwXtVOQCRKk69IVWD
         CtIw==
X-Forwarded-Encrypted: i=1; AJvYcCWUbwPHLTyJn+znuWHSg6UakPgGEAS5nwKNkr6qaMvSP5tfRJbBpbSDPHW9+CTsshH5rhLZIFIIE9Ep@vger.kernel.org
X-Gm-Message-State: AOJu0YxHI6gLdwDilCb5wsFXaZl6eHWG5rYxawUYQbsYXMJDTxVmXcTz
	t76VCts9h81sLTFH/mBVFN71LWq3Zzs98XE6Oe/Pz8bZJDbmZZwfouA5U/stZuLVAECZXZeVT5u
	Vgu1FOa4QvWSg+VUcfBLT/Hb/bA7Yfnp47oZXZ1Gkesp+KlPE297xz+FYQdYivQTi
X-Gm-Gg: AY/fxX5L5gqYTbQt+C28KapfgYUZO0u1MEuh1UQ6LPOmYdQLFI28faESq+vqRXrXiS/
	yop//TccvOAaCXQQCfzncDOSSetdORdcY+o8D5z/IZ0Zj6ywJ8Iq/nz1HuKvWkY/COhrhIeeNOy
	lzOTHGHKBTENkjtNkKbOh5taR6IMllEoCkcghXM1GQ0JATsBcNBx/aVklNThvhgs6YPnYoU2VEB
	ew144AjKUbvQwDE8xYzv/obR1/SZBkbfS9yCd60c5G5v93P99gnALK33MR5Lb1/o6LL4kqsfvog
	y9+tVJX5W+aXm1DXTs7rsrj0HH8Ox2yFBUOwqTMRg/UT7mS9dGc1ajIsnkCG5rK0ElGk0oG3GWg
	LuK8wjuPWWpsqN+jeUBnAnQboxSSrxqCP5BoQHpksSgDI
X-Received: by 2002:a05:6a00:340a:b0:7ff:a5d2:7c9e with SMTP id d2e1a72fcca58-81b7de5c1f0mr1403694b3a.21.1767763996168;
        Tue, 06 Jan 2026 21:33:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGsU6Tll0jH+4cPRN75Crua0J0WmF4N1GJ8rbvbzF/Esty0h551IC4VDJ/8fjpEFvJJVbAYFA==
X-Received: by 2002:a05:6a00:340a:b0:7ff:a5d2:7c9e with SMTP id d2e1a72fcca58-81b7de5c1f0mr1403666b3a.21.1767763995641;
        Tue, 06 Jan 2026 21:33:15 -0800 (PST)
Received: from [10.219.57.109] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c5de66d1sm3684127b3a.62.2026.01.06.21.33.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 21:33:15 -0800 (PST)
Message-ID: <fde70548-61fe-41f3-9bdf-37ceda603e02@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 11:01:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] of: Respect #{iommu,msi}-cells in maps
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com>
 <20251231114257.2382820-4-vijayanand.jitta@oss.qualcomm.com>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <20251231114257.2382820-4-vijayanand.jitta@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: V5UoV5cq-n5CNOLxz_BicouaRTk3WmIH
X-Proofpoint-GUID: V5UoV5cq-n5CNOLxz_BicouaRTk3WmIH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA0MiBTYWx0ZWRfX25eCOk4ZEKcA
 l+KpKay1u19ip+B5S2ZDUoKP5ematiR8kUUmrel7I91Kz8CMofK8QgGATJ3HhbPgZ282k4Kc+t/
 qrK0yeUQDc8kWW6d5t+I2JR7pPawI238ja0Yt31FAvDl6MHBoZXST6a/ceGKhxG56vrNunDwzo9
 8JRpaGLIRwFCnlx6UBg0AsYdyxfu5o9DZ6GCYJna+gpSQtbzAA4i8JKKq6BpQzoojE01mc5hgoX
 QH0OQRre2bkVJx6FWdjdkqfg4OS5vtJd3ClCaoew3ZjEhHMoaJ4Nbf3nZRPYnS5ObJz2gASjTPD
 8Hbi+1pJumYjvM9Mai01FOFl+PLkN4iEJZWwawv9U09QoZxnj8OO7n8sxzIYUJQcM/A/+fFG1/D
 dM/h/Z2Tj4irRCQ9z6AWghbUXKt3KaWDvE9WEOAgJ5G764TX9hscO0fsc9i28M+jRwbFuN2Y6m8
 bLMz1tWi2sXJeDeag6A==
X-Authority-Analysis: v=2.4 cv=MtdfKmae c=1 sm=1 tr=0 ts=695df01d cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8
 a=3f3g1KydcdST7NtTSaIA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070042



On 12/31/2025 5:12 PM, Vijayanand Jitta wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> So far our parsing of {iommu,msi}-map properites has always blindly
> asusmed that the output specifiers will always have exactly 1 cell.
> This typically does happen to be the case, but is not actually enforced
> (and the PCI msi-map binding even explicitly states support for 0 or 1
> cells) - as a result we've now ended up with dodgy DTs out in the field
> which depend on this behaviour to map a 1-cell specifier for a 2-cell
> provider, despite that being bogus per the bindings themselves.
> 
> Since there is some potential use in being able to map at least single
> input IDs to multi-cell output specifiers (and properly support 0-cell
> outputs as well), add support for properly parsing and using the target
> nodes' #cells values, albeit with the unfortunate complication of still
> having to work around expectations of the old behaviour too.
> 
> Since there are multi-cell output specifiers, the callers of of_map_id()
> may need to get the exact cell output value for further processing.
> Added support for that part --charan
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> ---
>  drivers/iommu/of_iommu.c |   4 +-
>  drivers/of/base.c        | 114 +++++++++++++++++++++++++++++++--------
>  include/linux/of.h       |  16 +++---
>  3 files changed, 101 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> index 646ac5a67475..768eaddf927b 100644
> --- a/drivers/iommu/of_iommu.c
> +++ b/drivers/iommu/of_iommu.c
> @@ -46,9 +46,7 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
>  				     const u32 *id)
>  {
>  	struct of_map_id_arg arg = {
> -		.map_args = {
> -			.args_count = 1,
> -		},
> +		.map_args = {},
>  	};
>  	int err;
>  
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 9f327c6b4f6b..f0507ddb6dae 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2045,11 +2045,38 @@ int of_find_last_cache_level(unsigned int cpu)
>  	return cache_level;
>  }
>  
> +/*
> + * Some DTs have an iommu-map targeting a 2-cell IOMMU node while
> + * specifying only 1 cell. Fortunately they all consist of value '1'
> + * as the 2nd cell entry with the same target, so check for that pattern.
> + *
> + * Example:
> + *	IOMMU node:
> + *		#iommu-cells = <2>;
> + *
> + *	Device node:
> + *		iommu-map = <0x0000 &smmu 0x0000 0x1>,
> + *			    <0x0100 &smmu 0x0100 0x1>;
> + */
> +static bool of_check_bad_map(const __be32 *map, int len)
> +{
> +	__be32 phandle = map[1];
> +
> +	if (len % 4)
> +		return false;
> +	for (int i = 0; i < len; i += 4) {
> +		if (map[i + 1] != phandle || map[i + 3] != cpu_to_be32(1))
> +			return false;
> +	}
> +	return true;
> +}
> +
>  /**
>   * of_map_id - Translate an ID through a downstream mapping.
>   * @np: root complex device node.
>   * @id: device ID to map.
>   * @map_name: property name of the map to use.
> + * @cells_name: property name of target specifier cells.
>   * @map_mask_name: optional property name of the mask to use.
>   * @arg: contains the optional params, wrapped in a struct of_phandle_args,
>   *	which includes:
> @@ -2067,18 +2094,19 @@ int of_find_last_cache_level(unsigned int cpu)
>   *
>   * Return: 0 on success or a standard error code on failure.
>   */
> -int of_map_id(const struct device_node *np, u32 id,
> -	       const char *map_name, const char *map_mask_name,
> -	       struct of_map_id_arg *arg)
> +int of_map_id(const struct device_node *np, u32 id, const char *map_name,
> +	      const char *cells_name, const char *map_mask_name,
> +	      struct of_map_id_arg *arg)
>  {
>  	u32 map_mask, masked_id;
> -	int map_len;
> +	int map_bytes, map_len, offset = 0;
> +	bool bad_map = false;
>  	const __be32 *map = NULL;
>  
>  	if (!np || !map_name || !arg)
>  		return -EINVAL;
>  
> -	map = of_get_property(np, map_name, &map_len);
> +	map = of_get_property(np, map_name, &map_bytes);
>  	if (!map) {
>  		if (arg->map_args.np)
>  			return -ENODEV;
> @@ -2087,11 +2115,9 @@ int of_map_id(const struct device_node *np, u32 id,
>  		return 0;
>  	}
>  
> -	if (!map_len || map_len % (4 * sizeof(*map))) {
> -		pr_err("%pOF: Error: Bad %s length: %d\n", np,
> -			map_name, map_len);
> -		return -EINVAL;
> -	}
> +	if (map_bytes % sizeof(*map))
> +		goto err_map_len;
> +	map_len = map_bytes / sizeof(*map);
>  
>  	/* The default is to select all bits. */
>  	map_mask = 0xffffffff;
> @@ -2104,27 +2130,64 @@ int of_map_id(const struct device_node *np, u32 id,
>  		of_property_read_u32(np, map_mask_name, &map_mask);
>  
>  	masked_id = map_mask & id;
> -	for ( ; map_len > 0; map_len -= 4 * sizeof(*map), map += 4) {
> +	while (offset < map_len) {
>  		struct device_node *phandle_node;
> -		u32 id_base = be32_to_cpup(map + 0);
> -		u32 phandle = be32_to_cpup(map + 1);
> -		u32 out_base = be32_to_cpup(map + 2);
> -		u32 id_len = be32_to_cpup(map + 3);
> +		u32 id_base, phandle, id_len, id_off, cells = 0;
> +		const __be32 *out_base;
> +
> +		if (map_len - offset < 2)
> +			goto err_map_len;
> +
> +		id_base = be32_to_cpup(map + offset);
>  
>  		if (id_base & ~map_mask) {
> -			pr_err("%pOF: Invalid %s translation - %s-mask (0x%x) ignores id-base (0x%x)\n",
> -				np, map_name, map_name,
> +			pr_err("%pOF: Invalid %s translation - %s (0x%x) ignores id-base (0x%x)\n",
> +				np, map_name, map_mask_name,
>  				map_mask, id_base);
>  			return -EFAULT;
>  		}
>  
> -		if (masked_id < id_base || masked_id >= id_base + id_len)
> -			continue;
>  
> +		phandle = be32_to_cpup(map + offset + 1);
>  		phandle_node = of_find_node_by_phandle(phandle);
>  		if (!phandle_node)
>  			return -ENODEV;
>  
> +		if (!bad_map && of_property_read_u32(phandle_node, cells_name, &cells)) {
> +			pr_err("%pOF: missing %s property\n", phandle_node, cells_name);
> +			return -EINVAL;
> +		}
> +
> +		if (map_len - offset < 3 + cells)
> +			goto err_map_len;
> +
> +		if (offset == 0 && cells == 2) {
> +			bad_map = of_check_bad_map(map, map_len);
> +			if (bad_map) {
> +				pr_warn_once("%pOF: %s mismatches target %s, assuming extra cell of 0\n",
> +				np, map_name, cells_name);
> +				cells = 1;
> +			}
> +		}
> +
> +		out_base = map + offset + 2;
> +		offset += 3 + cells;
> +
> +		id_len = be32_to_cpup(map + offset - 1);
> +		if (id_len > 1 && cells > 1) {
> +			/*
> +			 * With 1 output cell we reasonably assume its value
> +			 * has a linear relationship to the input; with more,
> +			 * we'd need help from the provider to know what to do.
> +			 */
> +			pr_err("%pOF: Unsupported %s - cannot handle %d-ID range with %d-cell output specifier\n",
> +				np, map_name, id_len, cells);
> +			return -EINVAL;
> +		}
> +		id_off = masked_id - id_base;
> +		if (masked_id < id_base || id_off >= id_len)
> +			continue;
> +
>  		if (arg->map_args.np)
>  			of_node_put(phandle_node);
>  		else
> @@ -2133,11 +2196,14 @@ int of_map_id(const struct device_node *np, u32 id,
>  		if (arg->map_args.np != phandle_node)
>  			continue;
>  
> -		arg->map_args.args[0] = masked_id - id_base + out_base;
> +		for (int i = 0; i < cells; i++)
> +			arg->map_args.args[i] = (id_off + be32_to_cpu(out_base[i]));
> +
> +		arg->map_args.args_count = cells;
>  
>  		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
> -			np, map_name, map_mask, id_base, out_base,
> -			id_len, id, masked_id - id_base + out_base);
> +			np, map_name, map_mask, id_base, be32_to_cpup(out_base),
> +			id_len, id, id_off + be32_to_cpup(out_base));
>  		return 0;
>  	}
>  
> @@ -2147,5 +2213,9 @@ int of_map_id(const struct device_node *np, u32 id,
>  	/* Bypasses translation */
>  	arg->map_args.args[0] = id;
>  	return 0;
> +
> +err_map_len:
> +	pr_err("%pOF: Error: Bad %s length: %d\n", np, map_name, map_bytes);
> +	return -EINVAL;
>  }
>  EXPORT_SYMBOL_GPL(of_map_id);
> diff --git a/include/linux/of.h b/include/linux/of.h
> index 0b0d545b80a3..ee07e8642133 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -460,9 +460,9 @@ const char *of_prop_next_string(const struct property *prop, const char *cur);
>  
>  bool of_console_check(const struct device_node *dn, char *name, int index);
>  
> -int of_map_id(const struct device_node *np, u32 id,
> -	       const char *map_name, const char *map_mask_name,
> -	       struct of_map_id_arg *arg);
> +int of_map_id(const struct device_node *np, u32 id, const char *map_name,
> +	      const char *cells_name, const char *map_mask_name,
> +	      struct of_map_id_arg *arg);
>  
>  phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
>  
> @@ -909,9 +909,9 @@ static inline void of_property_clear_flag(struct property *p, unsigned long flag
>  {
>  }
>  
> -static inline int of_map_id(const struct device_node *np, u32 id,
> -			     const char *map_name, const char *map_mask_name,
> -			     struct of_map_id_arg *arg)
> +static inline int of_map_id(const struct device_node *np, u32 id, const char *map_name,
> +			    const char *cells_name, const char *map_mask_name,
> +			    struct of_map_id_arg *arg);
>  {
>  	return -EINVAL;
>  }
> @@ -1442,7 +1442,7 @@ static inline int of_property_read_s32(const struct device_node *np,
>  static inline int of_map_iommu_id(const struct device_node *np, u32 id,
>  				  struct of_map_id_arg *arg)
>  {
> -	return of_map_id(np, id, "iommu-map", "iommu-map-mask", arg);
> +	return of_map_id(np, id, "iommu-map", "#iommu-cells", "iommu-map-mask", arg);
>  }
>  
>  static inline int of_map_msi_id(const struct device_node *np, u32 id,
> @@ -1456,7 +1456,7 @@ static inline int of_map_msi_id(const struct device_node *np, u32 id,
>  		},
>  	};
>  
> -	return of_map_id(np, id, "msi-map", "msi-map-mask", &arg);
> +	return of_map_id(np, id, "msi-map", "#msi-cells", "msi-map-mask", &arg);
>  }
>  
>  #define of_for_each_phandle(it, err, np, ln, cn, cc)			\

Rob, 

Gentle ping, could you please let me know if the latest patchset looks good enough
to be considered for the next merge window?

Thanks,
Vijay

