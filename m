Return-Path: <devicetree+bounces-236100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A851C3FD0A
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 12:50:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B76543BD99B
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 11:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB55E322A21;
	Fri,  7 Nov 2025 11:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ncQf/rj+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q0R1m5kW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A67322524
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 11:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762516208; cv=none; b=TqARRNyjYbvPqaq7mY3ERMru/TiVJ8yrnUGtOaGf1zBnqJV08UYQqz9VU47l4dvUwNv5x6MuLjtmA82xePaIVWxp5p5FVHXkmFcAKwdxMyDuFtVLX3UYXpSYMjmh4yIO9szhvDHFodu1XTW9x2ZDbBKOsHAw6HjcwIcdEkPBA8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762516208; c=relaxed/simple;
	bh=9zKjZpUIYk+itNggUJ5MlXLhe3sBQBIWHa35miBX6W0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tYqQZ1scirwcGk7iTXdj4GX8ngc+a7sd2Gy/ysWBYxEZRLYSP6mwNr6v6m9nOR8VB4S9wit5Jhdun1MVueuzuIVJppAziyi9vksw2fpuyR5uhDxjjMeMJAPvW+65jI2ExXAplC1FGaR1BKPyyxJcB+kD89wPXdc8gm54a1O6Il0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ncQf/rj+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q0R1m5kW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A7B2UNM3041120
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 11:50:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dMrXAflLekSr2reWqAqWS0yB
	ySzoUwcO6ionW8M4Tzc=; b=ncQf/rj+sIhsA9BrBH/ZggfgAEiW/UZekYS7yKHN
	ojUvgTNPnIUixJvdLfDOzi1ht0SF46BR7ysoEvXFivkG+H8HVtpIMu0SH/emDGyH
	Ofd2ID5ytSt0xD+ExRDAVwG3XJMP6szhnHM/vW+KRcOD73Qj/XRu3qBwZPv+HKGM
	teW5F+LdC3DlEzzK45+FCOIGh/o99jX02KRhcB2G8sxPXr7XXVzk4ZMV0lw1LYU6
	+mB9fj/AyXUuu+xEkNLlNAqAhDT3qBcq/9KaGr0JWvYZjEERdrsV8gdl1SC3Sx33
	50yHxSA/31sAmJ4Dzba4UDCPCtjYTP/a7kkSyX+Wh0q/ow==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9fj083ma-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 11:50:05 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b99763210e5so684912a12.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 03:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762516205; x=1763121005; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dMrXAflLekSr2reWqAqWS0yBySzoUwcO6ionW8M4Tzc=;
        b=Q0R1m5kW6mvk1HP+IDu/LJmSdt/PGqMeSR1ZEpXFVAeRfJJhSUREy6drB2D5hpoUqB
         QMiezWFZEyENMDXTF/5LZ8S3Mh/K0CzkveE90x1BHqs0Es0PZatCgW84U0LBTIS5ojvU
         M4SFtTkYMKaneU7Ej+5MxJR+X+7uxdTbCWw6Y965LKFk7EdzUfgarCwCw06QBdWRW9NR
         jtfG2hf3KMed478eKg1vz4++3muSBkU4sEKoy3ZYTCvsZuXv9awucnMk4Y/LJYnTD7iY
         RbNEeOZrsS99kmLpebSKhhm0XizyN8KIPZ+uQGvHxL9wNvMtsrOpHvL9VuJhqoACU/gW
         YSGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762516205; x=1763121005;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dMrXAflLekSr2reWqAqWS0yBySzoUwcO6ionW8M4Tzc=;
        b=iXVC1DiCuLFPkhEL1hpLhLB1j0wV16i4/AEO1BWupNVZeRjiPfakLmDy52ZfSpHhSR
         MK6Hp4EqZ/OzfKA2YBvfh180LPZSMNk6vta9I+hvEtI6wtcHP4C0ey3Ha32A0Kj14QzE
         9hPvNuhAp6UBKng3tbuS/De5a4sPmXA7909FerxcdIkpXF8tz5qoBvpNlPaI+W8GvXTj
         qtUAQNEveWeO/cHbj8UwcbIwqgc//xensGQkNzOoA0vAmqpv9JKj9s+x5+bayLdpqIoE
         x+Gy4NluSMq/qbDXKA3WmrGDb55EAkxxoTgtqSC1A8viP4nj6XUK/B9XkDklRHzQgZCt
         pcBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZNg/MgB79rTmrqbg8hsV7MpJbUvKvXqJxfXFBkwfK1j0PonjkVHdmmrWDCwIOEIzD17jUqRJPnwdY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr+ncGFX4E6RnfPmtPUaK68+fj+quRep2AgK35bESN7ZvRXk7W
	ztoQ/GDkPCBo5LusmLxSPs+CUL4631kitimxm0w6Kwf4ATVFhrkJLLy9v5VTAtwwnqthdXsLxcE
	ErXUPIc8C36vRLaluSt8iDl/hgvUamIjjBI7G6G7xamaTQ0g72mgiPumtgmm4WmAM
X-Gm-Gg: ASbGncsMq0cRnPCzhSY9/7Utw6IEqgJhx1PlzOkdyzyEeLDmu4DJ6QsDu7pgwknCJ54
	do7ZdjmW9/Z35Gk+SGLqb4nxj0bpJpcIr42ebmPsD3ZKRdmtOgUg1J2I93rM/Q9viDj5L/5rjEj
	DpeZsllyGh/jX3vh6L3MUoIZvJ5L99o1dmVsW0hfQIse+snShW+kKwOBdQGjc+031lvizgymdr7
	FIXd6y5luEPA7cZ+NFHDTI3Ekiu5+uLUyqhgxZ5DAtLQP+Da4XARnAIgDIMNcCn2xIlYcpj7YDI
	jEJ1TGmqqJPfokBaNIdEPy3MFvW70ENY/qluaGmckmhmtrsylWUfBX2es38ZC3bw89lrH7HX6SH
	vQGwKTjca9BgEH8WhxnmZHt2n2Q==
X-Received: by 2002:a17:902:ea05:b0:295:73f:90d0 with SMTP id d9443c01a7336-297c04931d3mr39770285ad.50.1762516203100;
        Fri, 07 Nov 2025 03:50:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFhNAjO6ANvx/Ku1ZgGqWvUkOpsCN5R864El2BfAS5aa0p1YaTkf88N9laM4ZHwBOWafYkMdA==
X-Received: by 2002:a17:902:ea05:b0:295:73f:90d0 with SMTP id d9443c01a7336-297c04931d3mr39769635ad.50.1762516202345;
        Fri, 07 Nov 2025 03:50:02 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651cc1907sm58007315ad.99.2025.11.07.03.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 03:50:02 -0800 (PST)
Date: Fri, 7 Nov 2025 17:19:55 +0530
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
Subject: Re: [PATCH v6 11/14] firmware: qcom_scm: Add
 qcom_scm_pas_get_rsc_table() to get resource table
Message-ID: <20251107114955.zprgt2peq34im3ji@hu-mojha-hyd.qualcomm.com>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-11-7017b0adc24e@oss.qualcomm.com>
 <5239980b-f74c-4458-a7e3-a5e7f6927449@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5239980b-f74c-4458-a7e3-a5e7f6927449@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=XZyEDY55 c=1 sm=1 tr=0 ts=690ddced cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=g61vSUFNigzP7AYlN20A:9 a=CjuIK1q_8ugA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: N3gKQ0gc5oTV6EtTYpZqa91ExVTXM97W
X-Proofpoint-GUID: N3gKQ0gc5oTV6EtTYpZqa91ExVTXM97W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA5NiBTYWx0ZWRfX1wPFhqaNtFPn
 qJYfd/CP7JCjx1c6SiYJ6NPLIVtzhyBxw5cqV3UJphf9Zx3uRoj+BLlJI57hD7LSnIjPbRLYCgj
 xkAqCT1bkRqCL3piLeWLEyhf2aaCQm4g8xb039gOMxIbHAvuNZaBPMDQqgbPDGjEUmSwjCRO8Az
 CHyOx+mwARRvOE+7wz2+MgcqSiv/BkKw+MjMcmzwvW7yWSdeoaH53yEWQlSG6VnAmj+IK+DZiSE
 ZrEgEqrkw0bS0CypLOre1KsPWGhuWZzDVE1ZewKKYhouzW0m1goR7rzXK1d7+tpBWwl3Sgg6txV
 +E6Z8iCWHI5+79q7i6BaCSVyzt9hzqSSs4CUaz9Zj8XbDOfMUZ9pZysDnuk5gaOBsiE8EEF2JcX
 Xxbz6mPHzhkOm8DmMN9j+9HmtKFzBg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070096

On Fri, Nov 07, 2025 at 11:20:20AM +0100, Konrad Dybcio wrote:
> On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> > Qualcomm remote processor may rely on Static and Dynamic resources for
> > it to be functional. Static resources are fixed like for example,
> > memory-mapped addresses required by the subsystem and dynamic
> > resources, such as shared memory in DDR etc., are determined at
> > runtime during the boot process.
> > 
> > For most of the Qualcomm SoCs, when run with Gunyah or older QHEE
> > hypervisor, all the resources whether it is static or dynamic, is
> > managed by the hypervisor. Dynamic resources if it is present for a
> > remote processor will always be coming from secure world via SMC call
> > while static resources may be present in remote processor firmware
> > binary or it may be coming qcom_scm_pas_get_rsc_table() SMC call along
> > with dynamic resources.
> 
> [...]
> 
> 
> > +	/*
> > +	 * TrustZone can not accept buffer as NULL value as argument Hence,
> > +	 * we need to pass a input buffer indicating that subsystem firmware
> > +	 * does not have resource table by filling resource table structure.
> > +	 */
> > +	if (!input_rt)
> > +		input_rt_size = sizeof(*rsc);
> 
> Would the expected size of the received data ever be any different
> than sizeof(*rsc) anyway?

input_rt_size != 0 and input_rt = NULL as input to this SCM call are 
invalid scenario.

Expected input_rt_size would be greater than sizeof(*rsc) if remote
processor firmware will have resource table section.


> 
> [...]
> 
> > +int qcom_scm_pas_get_rsc_table(struct qcom_scm_pas_context *ctx, void *input_rt,
> > +			       size_t input_rt_size, void **output_rt,
> > +			       size_t *output_rt_size)
> > +{
> > +	int ret;
> > +
> > +	do {
> > +		*output_rt = kzalloc(*output_rt_size, GFP_KERNEL);
> > +		if (!*output_rt)
> > +			return -ENOMEM;
> > +
> > +		ret = __qcom_scm_pas_get_rsc_table(ctx->pas_id, input_rt,
> > +						   input_rt_size, output_rt,
> > +						   output_rt_size);
> > +		if (ret)
> > +			kfree(*output_rt);
> > +
> > +	} while (ret == -EAGAIN);
> 
> This should at the very least be limited to a number of retries

Sure, how about 5 ?

> 
> Konrad

-- 
-Mukesh Ojha

