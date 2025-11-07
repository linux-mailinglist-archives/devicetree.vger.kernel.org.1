Return-Path: <devicetree+bounces-236083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBCCC3FBF2
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 12:34:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 745554E257A
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 11:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E21332F549F;
	Fri,  7 Nov 2025 11:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ipnMDxEZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EFtO1X6V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E1B259C92
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 11:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762515294; cv=none; b=ueSr+jTPP0fBMIYefOENeaM/qtAuDPbdNuY9mHJOGrbIhGNIaydGdJ0CyaoEtn07N9Ss6xx140U7y5xLzwEIWkjS+qGv+EExrmNa6IP44OZ97VGhMgwi8Z3szEnijvs54y0GktFqywA2NNqj+4k4nIfV4vsQFq7C4kUYzbVE4sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762515294; c=relaxed/simple;
	bh=MQXsnjnfIpZGCTh04vWN3x36IFSv+n8I/lg/WXT96n8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PqVayEfz8vKOJiG4mRxj/fT3QLXNTWu1CGNTwg6Ig0PwKkMRD1S92klg2B+IT3dO0VDUcCashQ+Td7/n9a9V1DdybLZoGA/+v+k+HXykK7e+vN1VYL/lb3fTlcrzBEEytTVf3pWI/IoCxAuosO/m2nTm5o9gQMUSm/wdSzUb6bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ipnMDxEZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EFtO1X6V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A7BXMDe557134
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 11:34:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vZWka9X/5uROFI+18ZwN5+YD
	qQ7ZdMbSuHHh59YqHZY=; b=ipnMDxEZnE5JiNDp8YepmzxOlukJiZSYRz79qfeh
	gLM6COUIQkbBOGJ71uwZGXX+DIoTmwCoKskG57HIe+muhbday0Pz3qbU2c7Cm8GP
	KbCk+1Zo0rptIh96XiTcTjJQujPW+EUCTwdwSu+vfKyTasxe7xVkVj8BYiTlw3WX
	7GxUDBClAvg9ufmuDi/We2x792qmBP1JO6o6EQcukVPqejkI0hI+AVGGJYwYl1em
	EcO4po2ex0hwJaMk5hs+pM6Kp5v2jy4n4mwWIAOyVl9mVhVTXWrdklLeCXOfWb/M
	b1zhk2jE9frsvEbCzbKXjrB7CCqBL03jONwDTeexboNpIA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8yr9tw4f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 11:34:50 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7afd7789d4cso1043664b3a.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 03:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762515290; x=1763120090; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vZWka9X/5uROFI+18ZwN5+YDqQ7ZdMbSuHHh59YqHZY=;
        b=EFtO1X6VZCevJYpdLopzxYvLV4EuHZ0ROLHkeXQ6n1J/Y5z32l6RQDPUwn9kMFNQDg
         B6Uo9A1u+EbqzKpGAayeWP0Q14DCEeRMZGN+m+80UMX4909CA3R+/HM4CFjgi/FiNDlN
         raLw9vJ+yl8LlgnSa7VQ4hkzkFiBl0Dqa4LA1xBTdridCMJoI5JS8iKzRajM93c7UJRe
         i5WZ5jn4rycqcaP3mCUUtKjGpJLKQIBm8ncA4wm0znVmlh/n/YKpbPdLU1BuvwmpXL/l
         uQfl3d37LpWDdt1m2m/BXAel9BuP7FqvG3BEs+eXm6lm+MZamc99CWUEZFQlqQndyVVZ
         dWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762515290; x=1763120090;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vZWka9X/5uROFI+18ZwN5+YDqQ7ZdMbSuHHh59YqHZY=;
        b=MFoYJSjLTyWw8aDaz5G1RSp5O5yEU74jz2/Ft1Fhw3psgQwpPpWopOl69t+JnvRutu
         lGi6l5yBhlkdbGEuRb2YpTlmCNWXHzpviuivttXm/YW4s+s2U0jxGEneIceqxlQD15GL
         dGwDHXvCU173BTsz8xKTLbG5KBprzBFGj1GeBqwH2UCV+6FQvV3iGk3KcFnEP6sQUs2x
         bYSdfPLga1ALJMQiKWNfYWyCyg0/IVfa4NY5q48kvFko8/CRSe0+TDktBdTh9O2t6DKy
         bAH1wrnuyQJnZk+AJ7pZsLDL5+ujnrdztYwmSfmUL3W/dYE4PZGz79gJkGPbceY5lHEc
         sWrw==
X-Forwarded-Encrypted: i=1; AJvYcCUOb3qBzdAwI/c7q3cLFrRF82mo31vlN6QsRwiqhisKsLd0EFXITGo3cGSAlxlfnpkSpMIuGn8SVwa7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxlz3TAIdvMuR+HwRHJLws/UthsUTqEl2tiCdz6wC0vt04yMdTw
	Jm5VZAfKJP+Th9gJojktIHbcwr/4YFfgK76R8OjSDFm0M6tuvItjLF3vxgnPEq+k/xT8VOlBqp2
	YREVGvCtbXEhtKr+xVls8VZacNEYrYb1AZVbsS0bvqFK/UFYeypjvBVhGtxpTlJdH
X-Gm-Gg: ASbGncvFydcuUOCXsHTykw/04Omq+AiSDg9RTgAgZMxxdfWwhbceEdabtv5DsSI+rFR
	7B6YdquuPlGe4WBcRvLzQXW0VytauCWmoRaL9B0WdWOUCOOHTkFgzUK2sj5fNgP5jZxT0V9heYu
	gPxn86etrMPkAEZKSlaZk3FnawosSbPfY9SgCwl6Rl4r7erQMh+lNH/TQ1XjS6haDD0maCbd5bJ
	NBkqnz4dA2n30z/4zFPwtRZkdFnPoC2dXRULgMzqraLvv08Yid7fe/LBOEgtC/5hXHCCNfO9Jju
	99dubdo/i05/LlqTVKzslsf257W4foFvsTUNUtcW+7XWHyWnbJ8tghTuqP8KyNFJ9KOFhC2tkoa
	sbr2Darq1N85yWkd0ET34lklaEA==
X-Received: by 2002:a05:6a00:1812:b0:7ab:f72e:8faa with SMTP id d2e1a72fcca58-7b0bdb873cdmr3778415b3a.27.1762515289749;
        Fri, 07 Nov 2025 03:34:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWwrPXDpHf0VORSSfbxDz+3mYFgZW9OhUNZ+39bE+mQIPXy5tKbSJ0RtFga+TqnfE2aoBL5Q==
X-Received: by 2002:a05:6a00:1812:b0:7ab:f72e:8faa with SMTP id d2e1a72fcca58-7b0bdb873cdmr3778378b3a.27.1762515289047;
        Fri, 07 Nov 2025 03:34:49 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c9632e22sm2786673b3a.8.2025.11.07.03.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 03:34:48 -0800 (PST)
Date: Fri, 7 Nov 2025 17:04:42 +0530
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
Subject: Re: [PATCH v6 12/14] remoteproc: pas: Extend parse_fw callback to
 fetch resources via SMC call
Message-ID: <20251107113442.e2qxn6ifmo2rprus@hu-mojha-hyd.qualcomm.com>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-12-7017b0adc24e@oss.qualcomm.com>
 <89e65adf-fdd4-4b98-a220-fb0f77dae7c6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <89e65adf-fdd4-4b98-a220-fb0f77dae7c6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=DrpbOW/+ c=1 sm=1 tr=0 ts=690dd95a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=MZ-GuwlMPDuacp9TLA8A:9 a=CjuIK1q_8ugA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: re-JcdSACBbb4kKkLL8ej465JHKwyap8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA5NCBTYWx0ZWRfXxmPf2oFLgFBO
 /V7H34lb41EulRC3ruKe+b+VPg8cIRHMeKswLlRG+X90UqkbIS6lHLyUuddZOqm9aav+5BhZn5V
 YCWCrAy2wstNgMVofV7yITu8moxfnY9+DIy7VfjDCdL/hfKieCiRnQE6FkBzTHdqZOlz7/yT/v1
 PzMNKxG9Cc8raf9lf+ovC00TpwTqpsnHMCaT8spw+T95QQPcPYbtb/MHZ0H80UTAT+BWuoctcXO
 pDHHbI8Y2FHBm5Fb0jEdhPTyun+LhPlLPOubuLR6cAyykBtg/ORC4AY8RiAWvTEJBDsMdLNrXlS
 0hrWjryOwc8z7nlM2QN1WJZSMY23j372A9lvHvj13zCzDYAdW81lnJ2uXyJkcA8sEi2pQKl6Pp4
 1V77spJm7po5OTD9hVbFW54GTKTB2A==
X-Proofpoint-GUID: re-JcdSACBbb4kKkLL8ej465JHKwyap8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070094

On Fri, Nov 07, 2025 at 11:47:02AM +0100, Konrad Dybcio wrote:
> On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> > Qualcomm remote processor may rely on static and dynamic resources for
> > it to be functional. For most of the Qualcomm SoCs, when run with Gunyah
> > or older QHEE hypervisor, all the resources whether it is static or
> > dynamic, is managed by the hypervisor. Dynamic resources if it is
> > present for a remote processor will always be coming from secure world
> > via SMC call while static resources may be present in remote processor
> > firmware binary or it may be coming from SMC call along with dynamic
> > resources.
> 
> [...]
> 
> > +	/*
> > +	 * Qualcomm remote processor may rely on static and dynamic resources for
> > +	 * it to be functional. For most of the Qualcomm SoCs, when run with Gunyah
> > +	 * or older QHEE hypervisor, all the resources whether it is static or dynamic,
> > +	 * is managed by present hypervisor. Dynamic resources if it is present for
> > +	 * a remote processor will always be coming from secure world via SMC call
> > +	 * while static resources may be present in remote processor firmware binary
> > +	 * or it may be coming from SMC call along with dynamic resources.
> 
> How about:
> 
> """
> The resources consumed by Qualcomm remote processors fall into two categories:
> static (such as the memory carveouts for the rproc firmware) and dynamic (like
> shared memory pools).
> 
> Both are managed by a Qualcomm hypervisor (such as QHEE or Gunyah), if one is
> present.
> 
> Otherwise, a resource table must be retrieved via an SCM call. That table will
> list all dynamic resources (if any) and possibly the static ones.
> The static resources may also come from a resource table embedded in the rproc
> firmware instead.
> """
> 
> ?

Concise, thanks for the effort.

> 
> > +	 *
> > +	 * Here, we call rproc_elf_load_rsc_table() to check firmware binary has resources
> > +	 * or not and if it is not having then we pass NULL and zero as input resource
> > +	 * table pointer and size respectively to the argument of qcom_scm_pas_get_rsc_table()
> > +	 * and this is even true for Qualcomm remote processor who does follow remoteproc
> > +	 * framework.
> > +	 */
> > +	ret = qcom_scm_pas_get_rsc_table(pas->pas_ctx, table, table_sz, &output_rt,
> > +					 &output_rt_size);
> > +	if (ret) {
> > +		dev_err(pas->dev, "Error in getting resource table: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	kfree(rproc->cached_table);
> 
> Would this not simply discard the firmware binary table in the "split case"?
> 

For split case, it will have resource table from remote processor firmware,
which we are passing as part of qcom_scm_pas_get_rsc_table(), TZ firmware
will append dynamic one after authentication the static one and will copy
the final table in output_rt and its total size in output_rt_size.

> Konrad
> 
> > +	rproc->cached_table = output_rt;
> > +	rproc->table_ptr = rproc->cached_table;
> > +	rproc->table_sz = output_rt_size;
> > +
> > +	return ret;
> > +}
> > +
> >  static unsigned long qcom_pas_panic(struct rproc *rproc)
> >  {
> >  	struct qcom_pas *pas = rproc->priv;
> > @@ -425,7 +481,7 @@ static const struct rproc_ops qcom_pas_ops = {
> >  	.start = qcom_pas_start,
> >  	.stop = qcom_pas_stop,
> >  	.da_to_va = qcom_pas_da_to_va,
> > -	.parse_fw = qcom_register_dump_segments,
> > +	.parse_fw = qcom_pas_parse_firmware,
> >  	.load = qcom_pas_load,
> >  	.panic = qcom_pas_panic,
> >  };
> > @@ -435,7 +491,7 @@ static const struct rproc_ops qcom_pas_minidump_ops = {
> >  	.start = qcom_pas_start,
> >  	.stop = qcom_pas_stop,
> >  	.da_to_va = qcom_pas_da_to_va,
> > -	.parse_fw = qcom_register_dump_segments,
> > +	.parse_fw = qcom_pas_parse_firmware,
> >  	.load = qcom_pas_load,
> >  	.panic = qcom_pas_panic,
> >  	.coredump = qcom_pas_minidump,
> > 

-- 
-Mukesh Ojha

