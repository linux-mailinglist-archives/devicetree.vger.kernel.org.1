Return-Path: <devicetree+bounces-241712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3001AC8154C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 16:28:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFE423A11FB
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 15:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C8A315D58;
	Mon, 24 Nov 2025 15:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kQOPMd+c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eSix7EU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD05315D3A
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763997951; cv=none; b=KDGJQMAxw7ENMDwOLWEnwbSxcJEa2FM15Vbigp1Y4Q8bnyaJ6rZm7AasJsrooTx/+97j7TGDNSLYTAk1Dg6DE+HPY/WqLoJkaAXJDnc5xMYmVths7g0g5pjUip2JZaT96gYJ43oy+KJSPbZaeVmhjKFCMEPubYG6JGHZY6Vmaq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763997951; c=relaxed/simple;
	bh=9rLc/3CNylDcoUI2xBmO0X0AQBMSrlF6X8puYxz9pC0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AybMxTZGqyAuXyx5grdlRi03luy9yIp2uJ/wXtAfLzIkwe6z2vAE4iD3onyZU806IcXyhUsjvCiTImS5WUEHx4wOWfOP2GzNnIoHBxVzy4idOvzbn/1e9Ud0Bv/6fYEuAxxFJdwviDvToVdzmoy5fW164p3sffZjlO7eA49DpLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kQOPMd+c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eSix7EU8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AOB6Iie4005597
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:25:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fg4PBnZGTltBf0/Grl7qvJuT
	Rdgj7EINCZqJULWJKQE=; b=kQOPMd+cqRCeLDKGxWb3Lg22F8pTTwl2NhgYLioI
	7hAyILvbpwt10wFUIdysL36nFb697OmOK/Px09z5S/M0lZZu/mxGajAg8BKQxbYa
	rMXwRnN52u9CXRdavyXx+Gn2SLDDo0mjKCUmXGMzU7XbNSnvsoDIuCAk6aO5BSj5
	gtci1NVNP2Rs7kU44dXp+KaMfcax4UUFGFDgWPkAkOw3vVBCRDx7+xXowNXReHge
	1AliUw3yU6d8couoTt5PCIKpkndt5YXxdLq+j3IlGOxKRoHsrIhWECapO03tuKYX
	3uM5h5wfEOrTZ4rnCaQv7mQycD7vz1u/VFhJXkbMI/BoPg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amp6h0qbp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:25:47 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b873532cc8so3573608b3a.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 07:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763997946; x=1764602746; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fg4PBnZGTltBf0/Grl7qvJuTRdgj7EINCZqJULWJKQE=;
        b=eSix7EU8UTL4pg92F2BYQor4mU2sv1EYvFNk62qgrXp56P3lvd1ZckS+hIAxGO1UHS
         f029tKNWwO4twKEkeGtCq7NFypUyifYOVAJ/TvD6g+vDWAoMXiY1dixC5yL7Lm11mhJm
         5psNbZdrcgPBaYLggzErnlcl8RBtbIj7SofQm+H/VXGA91f6L7BBtPi4yLqSdavFf2n7
         LbidiuwQsqOrCqNXKRWnLU/cUvI+rOlK12decjStsOJVmPNwoMjvfNuLxD62bKv8osfU
         CTIiAf+x02qMxmnK92IzjjAFExLjMP/H+CxdFpnpfXFY47IcMo9e86Uu/QdEX2F0joHz
         Dc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763997946; x=1764602746;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fg4PBnZGTltBf0/Grl7qvJuTRdgj7EINCZqJULWJKQE=;
        b=o55wJH1QX229t+wdMHq0Mb6ofKOYxLmCWfvTuWS3RY3XOVa1ELLRPcSql4wIIfEtY9
         LPv8bwuFxrJVqFkxhnrzoj8WnLMQTcDaQV9j2JRsJdCEnyzjNOGFqkv01S/eAuFkDCt/
         uUoFCU/eNMHQsw43Zeoh4XUisYLNuPzxYN550a6H8SFiJ1c8+Uj+Jb/96MOgG9oH/FsB
         QiaxyOHDusq9HCphaUSZU0AkFcFKZweQDkuLahtnsXMyQjo7OqwBKGJ/2Z8OSlXKlZY/
         24qbO4gwjW6VUJ2zAMTL7tw3+n7Y58oGtFJfrRUXFPxB5OanDNC6qgg7BWA9Hc22yvNb
         lQQw==
X-Forwarded-Encrypted: i=1; AJvYcCXdXEDE6cSnJSxOSseEL35VqxKQ50OqqrbVjSfV9ENL63WaoYAr11WwilBcwVXtmRcawM4R6l+c1V36@vger.kernel.org
X-Gm-Message-State: AOJu0YwlpTJPbLOPR5fb7ncHQjhyJIxJlSkbDBb/EvH3DGKHUiPVSswS
	8q/Ypv8ZHt4zrizQ3J00BXCFlncvswrsSsTr+7q6lZaaUx+Q5BC68+9/Bpc7kD9L8lG5aQb57sj
	iyXR2WgM4kkmdYNFFZr02CiW1EuiWDVJ+5JJnx1uE3ijUgRVC9jMEIRq9dkcvVfM45xk8mCVS
X-Gm-Gg: ASbGnctT9ze9KGCJwsE7YyB82fjuWMh1H4gQYBunQh8JBA3CWU2JIqyUCCCkJ7FIRsC
	qOHkCNo5I7Ycvqkg9g/3o6OaSRwlAD8RlfyGuXcJ14/iqJhpSiE1uJmvexXfygWJmeofA90b8l3
	oJnMFcoBpgfzCQsmvDmAC+YcPz+9VjQfrDm2LofxLJYT//rgEQc83366/S+xsnSTW8bhmfl5ibY
	tv6pP0i4HeQBbOf6tkUGMKWq+u32+5uGjnfuJ/xxzMLZqdIx0e5nAFrg3y8v4+t9EDJ2/tec9U9
	4zwCdV9rLS5HEZ+E1XwvQh8bjX9d4WuthZX2nV5NVG1M7JlR2ZlV7o14R7gbxco63ywbxB+zwZ9
	u2dBPeMEAJ9PyOP4z3h5QOB+YeV7EdR+Pex0E
X-Received: by 2002:a05:6a00:73a7:b0:7aa:8c11:b520 with SMTP id d2e1a72fcca58-7c41e6f85b1mr12477872b3a.7.1763997946322;
        Mon, 24 Nov 2025 07:25:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/UHfsebODaWNAZCLgjrzCkR/LldaPt7pCFEwZe0hWH8/0+EpwOVz0Lq7CT9NvYVD4iY5QWg==
X-Received: by 2002:a05:6a00:73a7:b0:7aa:8c11:b520 with SMTP id d2e1a72fcca58-7c41e6f85b1mr12477828b3a.7.1763997945572;
        Mon, 24 Nov 2025 07:25:45 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ed076853sm15027686b3a.2.2025.11.24.07.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 07:25:45 -0800 (PST)
Date: Mon, 24 Nov 2025 20:55:38 +0530
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
Subject: Re: [PATCH v8 11/14] firmware: qcom_scm: Add
 qcom_scm_pas_get_rsc_table() to get resource table
Message-ID: <20251124152538.wt3kzztqmpr76hsx@hu-mojha-hyd.qualcomm.com>
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
 <20251121-kvm_rproc_v8-v8-11-8e8e9fb0eca0@oss.qualcomm.com>
 <86f3cb9f-e42d-40f9-9103-1a4953c66c71@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86f3cb9f-e42d-40f9-9103-1a4953c66c71@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEzNSBTYWx0ZWRfX951m4+sLSuEQ
 uUT3JCFhiT9K/H3PbkXhTyhIIKbeV7q148zPehJQBPUjNBNiRKRLVaXhkqJhacco3tQN0gwh7Xb
 9hIKd/fkPeIAZlUpi2YAv9LhtZPEroJjn2IozEk/nLiajFN8WuA9B26Bb7qhNnADwf5+/nlhDZN
 6bq82+Z/f4gCrm0oJEqlekUaYXfUVB8UI5bRZOzQCPzhi39CxepMui7o5CiPPJMEpJ966YtAUbl
 TtsWUPbLMYafnqbk/9eWMhcmzVDeQCKlwFpW3btqf+8Hq6zaeP3yrWpl1bXyzR+e/mV+jFkQden
 LUBqihLdbyvRYtNszDWJZds7TrRhvrELEcQnBtL33A5qqBZynaZ/N4QWcwK84lb9AM7T7ODWLmf
 C3aiIyWOG7EmVnLDZnY0XzMgB6uBYw==
X-Proofpoint-GUID: 0htN7UxAwdn7gSSVI1vxp-ReNLv30oO3
X-Proofpoint-ORIG-GUID: 0htN7UxAwdn7gSSVI1vxp-ReNLv30oO3
X-Authority-Analysis: v=2.4 cv=GoFPO01C c=1 sm=1 tr=0 ts=692478fb cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=pnlhYKf0aWWrAWvAJv0A:9 a=CjuIK1q_8ugA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_06,2025-11-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0 adultscore=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240135

On Mon, Nov 24, 2025 at 12:48:31PM +0100, Konrad Dybcio wrote:
> On 11/21/25 12:01 PM, Mukesh Ojha wrote:
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
> 
> [...]
> 
> > +int qcom_scm_pas_get_rsc_table(struct qcom_scm_pas_context *ctx, void *input_rt,
> > +			       size_t input_rt_size, void **output_rt,
> > +			       size_t *output_rt_size)
> > +{
> > +	unsigned int retry_num = 5;
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
> > +	} while (ret == -EAGAIN && --retry_num);
> 
> Will firmware return -EAGAIN as a result, or is this to handle the
> "buffer too small case"?

The latter one where a re-attempt could pass..

> 
> I think the latter should use a different errno (EOVERFLOW?) and print
> a message since we decided that it's the caller that suggests a suitable
> output buffer size

Agree with error code..

This is kept on the caller side keeping future in mind. where we can have
resource table coming from the client and it needs to go to TZ for
authentication.

Are you suggesting to move this retry on the caller side ?

Just for information, once video patches becomes ready, we may bring this
qcom_mdt_pas_map_devmem_rscs()[1] helper for video or any other client
should be do this here as well ?

I wanted to optimize this path, where caller is making a guess and
gets the updated output size in return.

[1]
https://lore.kernel.org/lkml/20250819165447.4149674-9-mukesh.ojha@oss.qualcomm.com/#t

> 
> In case it doesn't make sense for the caller to share their expectations,
> the buffer could be allocated (and perhaps resized if necessary) internally
> with some validation (i.e. a rsctable likely won't be 5 GiB)

Are you saying output_size as well should be checked and it should not be
greater than something like UINT_MAX or something.. ?

+	*output_rt_size = res.result[2];


> 
> Konrad

-- 
-Mukesh Ojha

