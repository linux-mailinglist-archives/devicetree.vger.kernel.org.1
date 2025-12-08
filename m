Return-Path: <devicetree+bounces-245258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 804A2CADC91
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:49:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2732730074B2
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A200721FF25;
	Mon,  8 Dec 2025 16:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eacLCENH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GRH6DXMT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F259757EA
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 16:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765212578; cv=none; b=tC6la95yt9O1DNxvVqB9SFJ9yLOEQRVFhr0DifpX1IqVpdFPGz0ITq2bZ1eAKAiIQX+j1lkoRrJ1egM/qHjhzGuLPeOOvPsFs3Y4RXcfzlG7SOmh4ypORBrFh6HiaYtQDUNzFthch1/1mH01ldXMD4Nm6QS89nBzJbW90Wvy1bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765212578; c=relaxed/simple;
	bh=rgUV2UnRhA5eQR5plaVxDaelyw/SJF1uUA0VMiNmHhg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k+HzNX6owyyBNsNOXn5XXAIbfN/mMf/qXUNvKDtmvI7S8A4Dlx/2FL7/2U6f4HtNbRpU/0PRk85pPloRGzG2RcahR4c0G6h4zCpL9tDK7RmMlikq265LPBAYwzFHBJ2MkIbj+wvWoi61zNTzkNR7ec0+3UUJiyUTL+/C4R2mT2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eacLCENH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GRH6DXMT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B88vaUC4183941
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 16:49:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0w5Rg6nrMpFkTSmRDQUkk8VA
	vI5FJTVdgCrIpXdnm2Y=; b=eacLCENHzxt2mAr5aqhTsVBgoDVzYSfSN5bpUUbL
	yfI//kcAd496GAID86G21qJecRhHRVBYW9ti1u3awz2v5LIo4V4Z3WrIJrBfMvij
	k11AzsKjkLdsvUe9S+fpE8tbnLMKnLyjh6CBDmFUEhGsJFLUqdL8nF/ynN3YLrCR
	5JjOMXpKb5o91G+AhRl5RugoukvebLC55KTI8QWad7UGJyooXXRVsrphBrsaa8YH
	vlCrPCR8Vps0GXg7lA7+T607s2mKmrIXA1FH+9E8mjB6Hf5yFcpPyfCdQhgH2fHh
	zEGA72RfMl4UksNQLSQnD0maqRD4bSYtHzMF2i0mXmTIwQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awume9cvn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 16:49:34 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3418ad76023so8815800a91.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 08:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765212574; x=1765817374; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0w5Rg6nrMpFkTSmRDQUkk8VAvI5FJTVdgCrIpXdnm2Y=;
        b=GRH6DXMTIxu+1XLEFpOHfCCfsYAHPy2PQ8dZYJlpDXW56PmVQeECQXDq+JXx1/y662
         P5lAKY/Qnx9ViHWyxAI+8VJxd39wvnvMWgnS5RWtFzj0XXVpFFWyi9wTftGpKwFTqhcx
         tQ5rWrOs7KORzgA6bMYGhP/UlRPHq5KOch5J/ZwyzknCljwQQw/qVDKiJH9+z+goF7+G
         VDGwZ+7bH66382CP+ZinMnzOYdUhEOoG4R7hIiu50aGxnQI5HE2Lv5TpDrRvQjYbPYrR
         odNmYbsAhThVe7QrzoU1+ngVYLO9yy21nK5vz80TwfuJflAQe8fD5rYMN6wfpD5mxcy9
         AuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765212574; x=1765817374;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0w5Rg6nrMpFkTSmRDQUkk8VAvI5FJTVdgCrIpXdnm2Y=;
        b=niHV3lND6INwk7/0G4DIljFa0/ix1nuaEuE48ekkJFFAK/LKBNvai4rTKCj/EMliCK
         fCpBRMmvp+wCApFBRcol9ZHbNhEEZsNl0BdOjXo13Jn/RE7q3qSHRyIkAzh9sc45+z53
         qoBppNBHvgzHU3H8nvfbrkArUYU6VQX8PqL5c7TWNFLBhuZkDmBx7K2FpvhRElUZsNIb
         WTDNHDpyl6nsO4JUVGdcG8Z0WBHUKTTvWjU3gXRmxAFsmvXMKc43eLi/dNCUJ4oPdwYL
         /F3Z6NhlPUkiSMVW1ENSV57xv8G26GBzkW9VEykb1ptKVDvy7n9Xz3o4HX9TgQ49UEcZ
         XjEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHEXu3A5tK1DgYLrBriiUXwGnKmyp9S1NrcsmeZdGayOokV/g0zCMv6I/mG+VMCpNP1GJsQaztaRtl@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk7cPd8kt7gsWHvSpDrN6+gmnXPXGm98fnafcLwlziAggqm4yH
	QE+tEiKUyHCnZAOBgF3SIump62uCBzrmzCclUxeto+1ysPSRADLie6VRP7O6tYWCqHcipXJvNW3
	u7ryEoN70R3ET/HP1XnQZZUFcN0p1XyajXcBH4gwW0vntPIWdH5gf51aSrdXrFvhC
X-Gm-Gg: ASbGnctkukJaHfC596xE70tNlsU2bfhHopWzS+dTB4YZV0L9iKRMrPDs98DhrgTo2BT
	Phes8J0uFI86Tf27AsnybFj277xLqk+9NuYJemtfmvAslcr+yaZV5BMhLEhzd+XuSyBmK6wPvyk
	QoS607sH/S2vKbYa3x2MyNDmG3F5XRFxI7Y3Z4PJHqQDJbi2IinyoncXjmNVKHtaQb1znEGnq8h
	8zQYYlytdENwyqA7etSuwItmlUUc+NNXkGNfKF5lSbEGKQGrerfq84c6e9gkCOCO4a2HP+itn4X
	OJ4qYSKWa8r4TIJqJHtK0U1g/I2ADVL0dsSVbvaSPINdLY1pbad4kUGsWw/ZT1HskXZANdVXMHG
	ZINjA1Nz9FZ5TL6toGjTfjQOFiL8C0Yf7iuU2
X-Received: by 2002:a17:90b:4c89:b0:340:ad5e:cb with SMTP id 98e67ed59e1d1-349a24e47demr6961309a91.8.1765212573875;
        Mon, 08 Dec 2025 08:49:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTSV5eJmeIb3uhkHtEPCd5vEhfrCQst3Y2iaMN0CCFEUv5tIZ65hac8Tk4x2SYCNP87lQexQ==
X-Received: by 2002:a17:90b:4c89:b0:340:ad5e:cb with SMTP id 98e67ed59e1d1-349a24e47demr6961291a91.8.1765212573190;
        Mon, 08 Dec 2025 08:49:33 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494ea7bb6bsm12050588a91.15.2025.12.08.08.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 08:49:32 -0800 (PST)
Date: Mon, 8 Dec 2025 22:19:26 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 11/14] firmware: qcom_scm: Add
 qcom_scm_pas_get_rsc_table() to get resource table
Message-ID: <20251208164926.cwe7arncr6tnan5f@hu-mojha-hyd.qualcomm.com>
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
 <20251121-kvm_rproc_v8-v8-11-8e8e9fb0eca0@oss.qualcomm.com>
 <igedl65pnenmeiybzktsw7toeqtb5mhbk7ks5dkavevko6e5yq@2tyakacovx7f>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <igedl65pnenmeiybzktsw7toeqtb5mhbk7ks5dkavevko6e5yq@2tyakacovx7f>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDE0MiBTYWx0ZWRfXzm5zKhWoOife
 rF8VHdInl3DHzrSbdELBjNNBWdg0w0M4kD8gKGZp8N26qB1YaNLmcwXitZf/bXdr/kAsRx0sz1S
 Eq4+zLkI5ZPTZ4piMKKJGFG2TWelpIEN7/CVJ3oWjJQkaotj/8MC71G6m6mLgN0c3lH7zOmxclB
 g7TxE1mEFCoDTIACP1WO1t7GxIY0comYidm0xA/qldA74/qEblLCIGL8sjcwkUobNa/6MEGAyJ/
 k3MjT2k5o4wXpjMWgVfzw0GgbqrUZJoE82T0lQDYwvlMPLZUaaymUFgE2fQCu6nSlB1hBNQvcio
 k6q9KGpI22Aw7RCTztenVls1PC4qmCUiyhbTMjB2fhWXnLzRu2qZi2PKqdvBdDrhCtVR4/Fr5oI
 AQTtFaPGwhvPoGbjnuSNnB9BFiqN/A==
X-Proofpoint-GUID: C8j5w_0YFvnDdeB2IpYde3UZXiflm541
X-Proofpoint-ORIG-GUID: C8j5w_0YFvnDdeB2IpYde3UZXiflm541
X-Authority-Analysis: v=2.4 cv=SvadKfO0 c=1 sm=1 tr=0 ts=6937019e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=N8Q_02vhCybARmlGjN4A:9
 a=CjuIK1q_8ugA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080142

On Fri, Dec 05, 2025 at 04:40:51PM -0600, Bjorn Andersson wrote:
> On Fri, Nov 21, 2025 at 04:31:13PM +0530, Mukesh Ojha wrote:
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
> > 
> > Some of the remote processor drivers, such as video, GPU, IPA, etc., do
> > not check whether resources are present in their remote processor
> > firmware binary. In such cases, the caller of this function should set
> > input_rt and input_rt_size as NULL and zero respectively. Remoteproc
> > framework has method to check whether firmware binary contain resources
> > or not and they should be pass resource table pointer to input_rt and
> > resource table size to input_rt_size and this will be forwarded to
> > TrustZone for authentication. TrustZone will then append the dynamic
> > resources and return the complete resource table in output_rt
> > 
> > More about documentation on resource table format can be found in
> > include/linux/remoteproc.h
> > 
> > Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > ---
> >  drivers/firmware/qcom/qcom_scm.c       | 158 +++++++++++++++++++++++++++++++++
> >  drivers/firmware/qcom/qcom_scm.h       |   1 +
> >  include/linux/firmware/qcom/qcom_scm.h |   4 +
> >  3 files changed, 163 insertions(+)
> > 
> > diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> > index 84498d0d2f0c..c4420b79fb57 100644
> > --- a/drivers/firmware/qcom/qcom_scm.c
> > +++ b/drivers/firmware/qcom/qcom_scm.c
> > @@ -27,6 +27,7 @@
> >  #include <linux/of_reserved_mem.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/reset-controller.h>
> > +#include <linux/remoteproc.h>
> >  #include <linux/sizes.h>
> >  #include <linux/types.h>
> >  
> > @@ -111,6 +112,10 @@ enum qcom_scm_qseecom_tz_cmd_info {
> >  	QSEECOM_TZ_CMD_INFO_VERSION		= 3,
> >  };
> >  
> > +enum qcom_scm_rsctable_resp_type {
> > +	RSCTABLE_BUFFER_NOT_SUFFICIENT		= 20,
> > +};
> > +
> >  #define QSEECOM_MAX_APP_NAME_SIZE		64
> >  #define SHMBRIDGE_RESULT_NOTSUPP		4
> >  
> > @@ -766,6 +771,159 @@ int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size)
> >  }
> >  EXPORT_SYMBOL_GPL(qcom_scm_pas_mem_setup);
> >  
> > +static int __qcom_scm_pas_get_rsc_table(u32 pas_id, void *input_rt, size_t input_rt_size,
> > +					void **output_rt, size_t *output_rt_size)
> 
> output_rt is not going to be modified, only its content, so it can be
> void * (single pointer).
> 
> > +{
> > +	struct qcom_scm_desc desc = {
> > +		.svc = QCOM_SCM_SVC_PIL,
> > +		.cmd = QCOM_SCM_PIL_PAS_GET_RSCTABLE,
> > +		.arginfo = QCOM_SCM_ARGS(5, QCOM_SCM_VAL, QCOM_SCM_RO, QCOM_SCM_VAL,
> > +					 QCOM_SCM_RW, QCOM_SCM_VAL),
> > +		.args[0] = pas_id,
> > +		.owner = ARM_SMCCC_OWNER_SIP,
> > +	};
> > +	void *input_rt_buf, *output_rt_buf;
> 
> I do one prefer one variable per line, preferably in reverse xmas order.

Ack.

> 
> > +	struct resource_table *rsc;
> 
> Calling this "empty_rsc" will make its purpose obvious.

Ack.

> 
> > +	struct qcom_scm_res res;
> > +	int ret;
> > +
> > +	ret = qcom_scm_clk_enable();
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = qcom_scm_bw_enable();
> > +	if (ret)
> > +		goto disable_clk;
> > +
> > +	/*
> > +	 * TrustZone can not accept buffer as NULL value as argument Hence,
> > +	 * we need to pass a input buffer indicating that subsystem firmware
> > +	 * does not have resource table by filling resource table structure.
> > +	 */
> > +	if (!input_rt)
> > +		input_rt_size = sizeof(*rsc);
> 
> If you overwrite input_rt here, you don't need to repeat this
> conditional below, like:
> 
> 	struct resource_table empty_rsc = {};
> 	
> 	...
> 	
> 	if (!input_rt) {
> 		input_rt = &empty_rsc;
> 		input_rt_size = sizeof(rsc);
> 	}
> 	
> 	qcom_tzmem_alloc(input_rt_size)
> 	
> 	memcpy(input_rt_buf, input_rt);

Ack.

> 
> > +
> > +	input_rt_buf = qcom_tzmem_alloc(__scm->mempool, input_rt_size, GFP_KERNEL);
> > +	if (!input_rt_buf) {
> > +		ret = -ENOMEM;
> > +		goto disable_scm_bw;
> > +	}
> > +
> > +	if (!input_rt) {
> > +		rsc = input_rt_buf;
> > +		rsc->num = 0;
> > +	} else {
> > +		memcpy(input_rt_buf, input_rt, input_rt_size);
> > +	}
> > +
> 
> Reading this patch once more, it looks reasonable, but few of the things
> in this function actually depend on *output_rt_size, yet we perform them
> in the loop below.
> 
> We're expecting, with some certainty, that this sequence will be called
> more than once, so I think it would be preferable to slice this
> differently, and only repeat the <loop></loop> part.
> 
> <loop>

Ack, I will move all the clock, bw voting and mentioned retry(on -EOVERFLOW) loop
to the caller of this function.

> 
> > +	output_rt_buf = qcom_tzmem_alloc(__scm->mempool, *output_rt_size, GFP_KERNEL);
> > +	if (!output_rt_buf) {
> > +		ret = -ENOMEM;
> > +		goto free_input_rt_buf;
> > +	}
> > +
> > +	desc.args[1] = qcom_tzmem_to_phys(input_rt_buf);
> > +	desc.args[2] = input_rt_size;
> > +	desc.args[3] = qcom_tzmem_to_phys(output_rt_buf);
> > +	desc.args[4] = *output_rt_size;
> > +
> > +	/*
> > +	 * Whether SMC fail or pass, res.result[2] will hold actual resource table
> > +	 * size.
> > +	 *
> > +	 * if passed 'output_rt_size' buffer size is not sufficient to hold the
> > +	 * resource table TrustZone sends, response code in res.result[1] as
> > +	 * RSCTABLE_BUFFER_NOT_SUFFICIENT so that caller can retry this SMC call with
> > +	 * output_rt buffer with res.result[2] size.
> > +	 */
> > +	ret = qcom_scm_call(__scm->dev, &desc, &res);
> > +	*output_rt_size = res.result[2];
> > +	if (!ret)
> > +		memcpy(*output_rt, output_rt_buf, *output_rt_size);
> > +
> > +	if (ret && res.result[1] == RSCTABLE_BUFFER_NOT_SUFFICIENT)
> > +		ret = -EAGAIN;
> 
> </loop>
> 
> > +
> > +	qcom_tzmem_free(output_rt_buf);
> > +
> > +free_input_rt_buf:
> > +	qcom_tzmem_free(input_rt_buf);
> > +
> > +disable_scm_bw:
> > +	qcom_scm_bw_disable();
> > +
> > +disable_clk:
> > +	qcom_scm_clk_disable();
> > +
> > +	return ret ? : res.result[0];
> 
> Is there a risk that res.result[0] will carry something meaningful to
> the caller (which will be misinterpreted)?

No, its just to align with other SMC call, it will always have 0 value
on success.

> 
> > +}
> > +
> > +/**
> > + * qcom_scm_pas_get_rsc_table() - Retrieve the resource table in passed output buffer
> > + *				  for a given peripheral.
> > + *
> > + * Qualcomm remote processor may rely on both static and dynamic resources for
> > + * its functionality. Static resources typically refer to memory-mapped addresses
> > + * required by the subsystem and are often embedded within the firmware binary
> > + * and dynamic resources, such as shared memory in DDR etc., are determined at
> > + * runtime during the boot process.
> > + *
> > + * On Qualcomm Technologies devices, it's possible that static resources are not
> > + * embedded in the firmware binary and instead are provided by TrustZone However,
> > + * dynamic resources are always expected to come from TrustZone. This indicates
> > + * that for Qualcomm devices, all resources (static and dynamic) will be provided
> > + * by TrustZone via the SMC call.
> > + *
> > + * If the remote processor firmware binary does contain static resources, they
> > + * should be passed in input_rt. These will be forwarded to TrustZone for
> > + * authentication. TrustZone will then append the dynamic resources and return
> > + * the complete resource table in output_rt.
> > + *
> > + * If the remote processor firmware binary does not include a resource table,
> > + * the caller of this function should set input_rt as NULL and input_rt_size
> > + * as zero respectively.
> > + *
> > + * More about documentation on resource table data structures can be found in
> > + * include/linux/remoteproc.h
> > + *
> > + * @ctx:	    PAS context
> > + * @pas_id:	    peripheral authentication service id
> > + * @input_rt:       resource table buffer which is present in firmware binary
> > + * @input_rt_size:  size of the resource table present in firmware binary
> > + * @output_rt:	    buffer to which the both static and dynamic resources will
> > + *		    be returned.
> > + * @output_rt_size: TrustZone expects caller should pass worst case size for
> > + *		    the output_rt.
> > + *
> > + * Return: 0 on success and nonzero on failure.
> > + *
> > + * Upon successful return, output_rt will have the resource table and output_rt_size
> > + * will have actual resource table size,
> > + */
> > +int qcom_scm_pas_get_rsc_table(struct qcom_scm_pas_context *ctx, void *input_rt,
> > +			       size_t input_rt_size, void **output_rt,
> > +			       size_t *output_rt_size)
> > +{
> > +	unsigned int retry_num = 5;
> > +	int ret;
> > +
> > +	do {
> > +		*output_rt = kzalloc(*output_rt_size, GFP_KERNEL);
> 
> I'd prefer the output buffer and size to be carried in a local variables
> until we determine success, to avoid overwriting the caller's size with
> some bogus number and return a pointer to freed memory.

Sure.

> 
> Wouldn't be unreasonable to return an ERR_PTR() with the allocated
> buffer, instead of returning through the reference.

We anyway have to return the size through reference, why not do the same for 
allocated buffer as well..


-- 
-Mukesh Ojha

