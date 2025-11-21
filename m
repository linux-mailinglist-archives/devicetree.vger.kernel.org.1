Return-Path: <devicetree+bounces-240908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C53C777DD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 07:00:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 3346A2C01B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 05:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D77242D6A;
	Fri, 21 Nov 2025 05:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ceE3PBkm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QL9xh0Cy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3CE2080C1
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 05:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763704457; cv=none; b=vDAwP3a0p+7mCrGx2jMfOpNw31DVMZIxPGCRvjoyEEOakGnTQ3UXsHGLOZRgEJ9vx05eNxuMQRFTSaxzNUc42LYfggXL3p0KRzLpq9xg9xpPG/8vkG8JkBC5qaexvXaZfEdHATcsacq3GA0ZEpX8oMqhlkEOh1km8e28kv/4uwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763704457; c=relaxed/simple;
	bh=9X7SGMHwfdDaWhwvXtLbh75M2VDciXVe/v3T1Ye8Feg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=BWgkT1b9UjR0BePw/hcpKIGxBDjLus84947QB/SoEHiI8q6wEeFsbnk3klvA7R2fIzqxF4fWZj/roMA9/UM4TEvIZON5mDYdiho7+6eWvqrS9bJdWYKQ325qTZWwBSy+CuYyrmRXiI4YjV4Vni8cOEr8ISBGOY5SwaYDRDIAjcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ceE3PBkm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QL9xh0Cy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL5oCCM1338144
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 05:54:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N6dOCQqfdW5KBZlnKBU27Ab7elxXmhCesDUpJ2r5DSo=; b=ceE3PBkmZb9rZf/G
	Eh5V/Iw9nXbMmwu5exIi5iOMpWeDfSfWp0j8SfLUAPgkrgAx514lYGZC2HCq+eeA
	cuV5fOyuuXc8QZ4M5zzAHZQTDPc7vcMaEc38BscDg2l/HvLpR0Sq0UER+XRKfitt
	HHS3PiLE+uPZ7QC+ZahFPHKiha/zcMa2RVSOD99sVqFfHYJJA5kyKW1D48W/SOta
	+JbjCPbQuQ5yQPCr4bYwRkBLJIs+9AEJphvYiCnpN5FaH1n0tO8mYJthWfTyNNK3
	vOvTAffhJHL5QKYosetblMd0CTKUxecgRyjMxd7O0OZriGmi4YXu9DNZ5wXLb6lc
	QqehvA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj5y7t7j5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 05:54:14 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34378c914b4so6258178a91.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 21:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763704454; x=1764309254; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N6dOCQqfdW5KBZlnKBU27Ab7elxXmhCesDUpJ2r5DSo=;
        b=QL9xh0Cy1K+MR92pBP/dI1khrdV3yawyqoW1v4MldriL22t1UoqOdrJtpMUf4KlCZt
         V/ak/m/Wpsp0Vc4P91jHyAxVgkCwr9JCMSs6Y7R4+dEAiGDu6jUK06xl1hJ+WT6rutLr
         a5cQIbbv6MEv2KG0tPXse5fKPMbk5kFSlVHILfiKbFxV/EYL3Nav2yjvyi8ET3txAioH
         qgVJMUd53fTZ3jfj0e9HKfVJpsVR4kFbOTQLOv4ta+gl2Pjx/nKYtWDL1btm8Mz16uY0
         XLBkjiVNCGaOuTKaUfL4711/1JNwKRo/NyPNZUwuw9EIu0nMEQXRE8nGM56JGV0Gp4d0
         PrqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763704454; x=1764309254;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N6dOCQqfdW5KBZlnKBU27Ab7elxXmhCesDUpJ2r5DSo=;
        b=Vpix+nzywdDwWKBsaasQtCkhN7gk1erK32fRlnzjzt3iSCOO2z42HhHvGYViIhijNf
         BHwYpNBsH7QoB6KmTYNhe0EnwmDEU2z21B+ZT1ihQNJ/Apds3yJlQTYRtJjkRCePkr/X
         pm/EWXMZkvaqKNlKsEyKL0jPsQbN4r5JYhjRx4EjddHD/fl1OITeEm1LEsY0TMdv0Qar
         QrVNeTPOCIe74kz7hEEHKtBKPeXbbcdGJt86yuefFPW7ZH+zPKqIFyKrmAjaoTlCRaB8
         Pk4c/zMDlHyi8gJ4VyPaeqQqc7SN3Phs+LZYR0HeVbuauRLl9h5KC8q4zdsHC7Mu1C+a
         cgbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDl5poLG9eP0ZQEyPeDsk2TLQY/JfdOjxLmpXuX+BhlaNrNCw4RR0EM+yauIFRW+nsM6hqH/5BF1x0@vger.kernel.org
X-Gm-Message-State: AOJu0YydnlsMR78lk7vAVoCnmUWuud5Y2ojtOcMfI+XHlPuktJ9YCPWF
	Wj1dl8pYZf6a3kF49ISiWKBPjuDcYzR6wC6uaGAKX+4Yl+vmPhM2BGEuLlIa4sT5xq9+c+bvexA
	fn7yaTFNzQe/Ws0CR7KnUf5mBBcOCs6R35Bg478t0wLkhqd0qHK/nZu1AxnLkFF8Tp9UsX2nC
X-Gm-Gg: ASbGncuCdjDVHHAJol9rG2HN58CivzI7NeYzZzs8rsRqCPeCAMEnl1AZ3cbB4ed3rSo
	Ol3p5YelOp5Ht0QF/HRbxAFuhi8S8lHI6p4UL+P0twKdOpDVpqwiVdMK2aEEolWzqrdxm47IwOQ
	T5unErnwTe6uVALq8cLUgHR2hvUbAR1tQu22hSuJJc1gBDbskFBW68ntuAvmszALIlmE4qsEwjG
	20RnhxDNqZXXY0eZIGAaot+vDoqldirVLmYFpKVCm3f3w0IRxhjmFVoXBo74OjGpwj4yBkD0vIO
	e4bMj7sKiGGtyfbi/EK+LJ3oKklMM+pVSZsicfvkvwPic1cHRyS4oAUkkiuibjIOV2D4gVETyqW
	fbqOeCV3grdEgtfp0OBAK03/hxD0bUIumzKdI/Q==
X-Received: by 2002:a17:90b:5628:b0:343:c3d1:8b9b with SMTP id 98e67ed59e1d1-34733ef6e38mr1383759a91.19.1763704453573;
        Thu, 20 Nov 2025 21:54:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwFVp4n8DLtVSs2NpiwUJjr9aSWGASQp3L4CiV2L5WMRYOJJ/h7lxIzbBv54uqkg1bG2wHXw==
X-Received: by 2002:a17:90b:5628:b0:343:c3d1:8b9b with SMTP id 98e67ed59e1d1-34733ef6e38mr1383735a91.19.1763704453016;
        Thu, 20 Nov 2025 21:54:13 -0800 (PST)
Received: from [10.219.56.14] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345b0202b16sm5993512a91.2.2025.11.20.21.54.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 21:54:12 -0800 (PST)
Message-ID: <74c2bdbe-1346-4229-b9dd-694b3063b1bb@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 11:24:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] of: iommu-map parsing for multi-cell IOMMU
From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org, joro@8bytes.org,
        robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        saravanak@google.com, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <cover.1762235099.git.charan.kalla@oss.qualcomm.com>
 <0319bdf5-0a46-40fc-93f8-30d74cf6475a@arm.com>
 <351373ed-c699-4945-a978-cb35412918bc@oss.qualcomm.com>
 <e6fb7000-7aac-45b6-b4f9-c9efa2a98d57@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <e6fb7000-7aac-45b6-b4f9-c9efa2a98d57@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QMxlhwLL c=1 sm=1 tr=0 ts=691ffe86 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=Nc0QaR6EQMpeMu4v8QIA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: MN9WlA3k5U5kRBwJqjOlqsbv_kZd1BSI
X-Proofpoint-ORIG-GUID: MN9WlA3k5U5kRBwJqjOlqsbv_kZd1BSI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA0NCBTYWx0ZWRfX6zBYEDcXvvx1
 sbxLxEELndIHNC/alt4fOjgaEcFEa0kUN2y4aeK2Z1FtdvZqlkqKKBQq8dSUnyMayfKUQjsoEcw
 h7GptH6ry1EWvF/FkZDMxvw9kIquUImElNU7E7pGuSH8CvlaXYmD5ykhYYj1scUfolzwArVi2+b
 y32MOuhmM3gakZ8F49BfQGyGXl86UdVmbTtxJQ64q0GYjHpstBA0aZJ6OMPyH0PSevTiLraKWy1
 z5nFnKvWBDQPdeO0Pg5FC+BRcqLyYcEjGYo5oAqBeP37qkh66bS3/212E1hlB2tj78H4Ivwdh1w
 BMkj4GYaa45YgUmPlxixqMb4vosbq/S44GoLJsk2hAFpl30gSEhM/sdU1Y/N2wYInQpHKcYqZ5K
 WWcZTJg409t8UYvqPhognhygl1T4Rg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015 spamscore=0
 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210044


On 11/12/2025 8:12 PM, Charan Teja Kalla wrote:
> Hi Robin,
> 
> Don't want to bother you with my ideas, but I can't think of other ways 
> to handle such cases of multi-map than the below. I just tried this code on 
> Qemu on top of your patches(with some nit compilation fixes) and just checked
> if devices are added to the iommu groups.
> 

Hello Robin,
Not sure If this is early to ask for feedback, but waiting for your
valuable inputs here.  Thanks in advance.

> ----------------------8888---------------------------------------------
> 
> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> index a511ecf21fcd..ac005e70de7d 100644
> --- a/drivers/iommu/of_iommu.c
> +++ b/drivers/iommu/of_iommu.c
> @@ -16,6 +16,7 @@
>  #include <linux/pci.h>
>  #include <linux/slab.h>
>  #include <linux/fsl/mc.h>
> +#include <linux/platform_device.h>
>  
>  #include "iommu-priv.h"
>  
> @@ -41,6 +42,18 @@ static int of_iommu_xlate(struct device *dev,
>  	return ret;
>  }
>  
> +static int of_iommu_configure_cb(void *arg, u32 *id_out)
> +{
> +	struct of_phandle_args *iommu_spec =
> +		(struct of_phandle_args *)((void *)id_out - offsetof(struct of_phandle_args, args));
> +	struct device *dev = arg;
> +	int err;
> +
> +	err = of_iommu_xlate(dev, iommu_spec);
> +	of_node_put(iommu_spec->np);
> +	return err;
> +}
> +
>  static int of_iommu_configure_dev_id(struct device_node *master_np,
>  				     struct device *dev,
>  				     const u32 *id)
> @@ -48,12 +61,10 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
>  	struct of_phandle_args iommu_spec = { .args_count = 1 };
>  	int err;
>  
> -	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
> +	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args,
> +			dev_is_platform(dev) ? true : false, dev, of_iommu_configure_cb);
> - 	if (err)
> - 		return err;
> -
> -	err = of_iommu_xlate(dev, &iommu_spec);
> -	of_node_put(iommu_spec.np);
>  	return err;
>  }
>  
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index a4fd4a4f720b..8abe36c17309 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2085,16 +2085,21 @@ static bool of_check_bad_map(const __be32 *map, int len)
>   */
>  int of_map_id(const struct device_node *np, u32 id, const char *map_name,
>  	      const char *cells_name, const char *map_mask_name,
> -	      struct device_node **target, u32 *id_out)
> +	      struct device_node **target, u32 *id_out, bool multi_map,
> +	      void *arg, of_map_id_cb cb)
>  {
>  	u32 map_mask, masked_id;
>  	int map_bytes, map_len, offset = 0;
>  	bool bad_map = false;
>  	const __be32 *map = NULL;
> +	bool mapped_multi_id = false;
>  
>  	if (!np || !map_name || !cells_name || (!target && !id_out))
>  		return -EINVAL;
>  
> +	if (multi_map && !cb)
> +		return -EINVAL;
> +
>  	map = of_get_property(np, map_name, &map_bytes);
>  	if (!map) {
>  		if (target)
> @@ -2189,16 +2194,29 @@ int of_map_id(const struct device_node *np, u32 id, const char *map_name,
>  		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
>  			np, map_name, map_mask, id_base, be32_to_cpup(out_base),
>  			id_len, id, id_off + be32_to_cpup(out_base));
> -		return 0;
> +
> +		if (multi_map) {
> +			if (cb(arg, id_out))
> +				return -EINVAL;
> +
> +			mapped_multi_id = true;
> +			continue;
> +		}
> +
> +		goto translated;
>  	}
>  
> +	if (mapped_multi_id)
> +		return 0;
> +
>  	pr_info("%pOF: no %s translation for id 0x%x on %pOF\n", np, map_name,
>  		id, target && *target ? *target : NULL);
>  
>  	/* Bypasses translation */
>  	if (id_out)
>  		*id_out = id;
> -	return 0;
> +translated:
> +	return cb ? cb(arg, id_out) : 0;
>  
>  err_map_len:
>  	pr_err("%pOF: Error: Bad %s length: %d\n", np, map_name, map_bytes);
> diff --git a/include/linux/of.h b/include/linux/of.h
> index 183be897b088..84a24c2a1041 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -24,6 +24,7 @@
>  
>  typedef u32 phandle;
>  typedef u32 ihandle;
> +typedef int (*of_map_id_cb)(void *arg, u32 *id_out);
>  
>  struct property {
>  	char	*name;
> @@ -458,7 +459,8 @@ bool of_console_check(const struct device_node *dn, char *name, int index);
>  
>  int of_map_id(const struct device_node *np, u32 id, const char *map_name,
>  	      const char *cells_name, const char *map_mask_name,
> -	      struct device_node **target, u32 *id_out);
> +	      struct device_node **target, u32 *id_out,
> +	      bool multi_map, void *arg, of_map_id_cb cb);
>  
>  phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
>  
> @@ -1436,17 +1438,18 @@ static inline int of_property_read_s32(const struct device_node *np,
>  }
>  
>  static inline int of_map_iommu_id(const struct device_node *np, u32 id,
> -				  struct device_node **target, u32 *id_out)
> +				  struct device_node **target, u32 *id_out,
> +				  bool multi_map, void *arg, of_map_id_cb cb)
>  {
>  	return of_map_id(np, id, "iommu-map", "#iommu-cells", "iommu-map-mask",
> -			 target, id_out);
> +			 target, id_out, multi_map, arg, cb);
>  }
>  
>  static inline int of_map_msi_id(const struct device_node *np, u32 id,
>  				struct device_node **target, u32 *id_out)
>  {
>  	return of_map_id(np, id, "msi-map", "#msi-cells", "msi-map-mask",
> -			 target, id_out);
> +			 target, id_out, false, NULL, NULL);
>  }
>  
>  #define of_for_each_phandle(it, err, np, ln, cn, cc)			
> -----------------------------------------------------------------------
> 
> full patch is at: https://github.com/charan-kalla-oss/linux-next/commits/refs/for/iommu_map


