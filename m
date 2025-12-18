Return-Path: <devicetree+bounces-247927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24179CCCDEA
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3D4C305F385
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41BAC364E8A;
	Thu, 18 Dec 2025 16:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SN2390Uj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GNKG3h5L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B281E34A77E
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 16:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766075311; cv=none; b=oINKXjvq10BS0zJ48jnD9ossrRiWEGaerBea065PfyprYQRiMJWeatrTXnRsqrGXTIhBe7Mu++1eJ9LcOmxHIoc0lDU/BAaJd1j47Pm4GTCQxSZ5lvghmsKxQki90iE5sMRktuvwVDytbHNsj1miPV1phkt+zUywtS8kBCj6BNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766075311; c=relaxed/simple;
	bh=+Q53S7+cfkUr0qjDgKgzwKKSMP7B2bU1hpixqHl5s+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lGINejl78g09qDNafs5xvzElAin09NMJboBb0vexjQed7hmM85KMwiw6aBZJC7OpQlBJMLwhj09Lvs8g0dYaz8nsPi4QYdQhSqlxwum1FuvvOBgYifea6Aj74qG5wrcMFRns+Oaf3MhN/oR72HYAV6vTXsOdXR9kieJMYTFuci8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SN2390Uj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GNKG3h5L; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI99jGN4147962
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 16:28:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cFXufThGmi6KqtAMINkt3iEQ
	N5zq9xMwp/lgUM0zTlo=; b=SN2390UjWewENPZXe8yHFrqbnclgBBPsaucb7+9J
	CDtLH2acC2nrFbOtePebOx5yRUUCuQ8XY57iEmXe2y3uSSsirJPhglreObiZG+SK
	vAgirMsqclpIa7JFVSOu7VkA40Y6blwIntG4NRHEKI195oM9Vl1QaBNLCPCHrUGJ
	KFOUmVHM3wkKzEHmQx8J3lChH52WYdJFKBJvnNfnhC1qS5QFpOMZVAbgJrx3ONSw
	ILZlLbPEAZDALudeonUkjhjn3Oq0M6asUPjCcB3rVZZl0SujZj+7/9MSL+RN7R6z
	cRbVOvp3ORC5cJeyTmh0gRlFLPPOMGlaout52iWKQTa69w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b40u7buqm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 16:28:28 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f8e6a5de4so10901645ad.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766075308; x=1766680108; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cFXufThGmi6KqtAMINkt3iEQN5zq9xMwp/lgUM0zTlo=;
        b=GNKG3h5LVKjMeVRmOIalT7/K4Q8wUsUng8RWOjn1Ze4fAZuB9I+pTubGti+d1del9o
         tfzwsQFijCJCZZZr725X1DLq5R+Deeh9V+jdkPdYPe0g4HlSuNrCKwMJJyvQNH+w2WEM
         7jJXQmOBy1TUiWhRWvnmyXVnN35OUc6G/cbNzjaxvKlWiZKYHNCZpeXLpdj+WGuK0WAx
         S4mZlsykg4n7fPb/BeUHF5I8FYxI4Eq0+HJixvNR8oa5V97dFBqzY9/LhaI4AZrE6hia
         0c7X9ZoOIjbXrFoQ49MTjSIcdtxuMLUiGBg8i2pJ7JqUCQLYagFJxxi4VbcYOSf8F1Tu
         JVJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766075308; x=1766680108;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cFXufThGmi6KqtAMINkt3iEQN5zq9xMwp/lgUM0zTlo=;
        b=dlNWwg9Recw4/LQtf71oTXYEfa1LlTP42vBt76d+m4b7wNa5jtOlbc4yJQz9Z73oOi
         vTyHSG19fa/hcLXCFIBH7ai4KmNYfR/3VlzlPtzQW4EDTL/U5xwg/gI9j5R1ruJSavHl
         Jb8XXapxdvXhTBKBR0azcOk1aP1GMYkvc2KKcmpHmBMWErtwl9aFUlkJEysb6iFS2Vo9
         slUWPCHV4reBPUB+UN6/qmNaPoo26f1NB7BK731SB7h+wmgJ5JEv9YR9e5fuPUjajn2f
         DKoD2c88DcJfsLfdySzszL4jBrXIOURsjE3wpf/bqEa3FV+fXyy1CwRjHngkc8Bo1GZj
         KDPg==
X-Forwarded-Encrypted: i=1; AJvYcCXYnrJ1iN1wE/VeS8GxJfpbWniFr6Ny1tHfGcW+RjKwadJ/WwXPYrjUVQ0Q3S++0QZ4gkgK88grbRf3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+v2CZ6RBb+Of0X5YgfFUDy/EYRMmeLtSRBAbQPRXZ3SpZl0kX
	Mgt6NHPOwQ3IvRm4ntyA3PxjTjJrxJHOsYVjiQX7NZZBNTBP5uZit7ws6Yt0G8BiQarg2KQV2of
	FGih3TV8xaW2cBwgtuYCbv4hJdTW44eTKiBMRvCpKd/LNFfrWTvV5VMkf0dxAjN6i
X-Gm-Gg: AY/fxX7EGlFYgPzYMtICrofLGLgH6M4spYOD0jh5um9CY/nkYwdGnFh9I09kxCH5nn8
	3LiPmzlmKMNQkrzIzpHyzYbBhqmvQMVXnLe0jqzGznvEeNoLPp6d6/WjwNjMEWqFQvlKu6EtfPq
	q3ETXT3wdzQ6HmyBNvyixZbNNt+u/HO2eSeHi16ySS2LoePdDDH2yV1+PaKJzNRI5QzyJev8Ktn
	Rn2D8Eo6qprdASPnQuXrb6AevRfXn82zbvAiogE9FCJSzjb4DzCs6kCoWw4baMN1fggjCkhjTq7
	mEaB2J0ROCnZEI5hDsCPuJlQJdzhz0lSaZBz03mzR34ccm7Wau8NNq1kS0WnMkZwnWLsDuZ2bk7
	6pdzPBTBGxTY5HPJCveVRGfX08SXTzWKG11Fv
X-Received: by 2002:a17:902:d4c5:b0:2a0:c884:7f09 with SMTP id d9443c01a7336-2a0c8849791mr163809295ad.38.1766075308051;
        Thu, 18 Dec 2025 08:28:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEvV0t8gQL94/p5tlQuYFozg5mD8lYzdNTXP+98KkNS13iOcrz1ATjM2pe6BGnxrdUHVnWf5g==
X-Received: by 2002:a17:902:d4c5:b0:2a0:c884:7f09 with SMTP id d9443c01a7336-2a0c8849791mr163808865ad.38.1766075307305;
        Thu, 18 Dec 2025 08:28:27 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f0cd45fbsm761655ad.97.2025.12.18.08.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 08:28:26 -0800 (PST)
Date: Thu, 18 Dec 2025 21:58:20 +0530
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
Subject: Re: [PATCH v9 11/14] firmware: qcom_scm: Add
 qcom_scm_pas_get_rsc_table() to get resource table
Message-ID: <20251218162820.fkhxc7nr7xcye57m@hu-mojha-hyd.qualcomm.com>
References: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
 <20251217-kvm_rproc_v9-v9-11-ab7ac03e0ff1@oss.qualcomm.com>
 <646c0f6a-9d84-490b-a55c-7ff92e2b26f5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <646c0f6a-9d84-490b-a55c-7ff92e2b26f5@oss.qualcomm.com>
X-Proofpoint-GUID: ov2IvxP5ee8lDARu1goEy86083NjglkS
X-Authority-Analysis: v=2.4 cv=Z8Th3XRA c=1 sm=1 tr=0 ts=69442bac cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=g61vSUFNigzP7AYlN20A:9
 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: ov2IvxP5ee8lDARu1goEy86083NjglkS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDEzNyBTYWx0ZWRfX/zIiadrXwBCn
 YN+HRl4dv5AZPYcHMLDJqqPjoTD6jIPwzS39RBpBfLCJMDmSrPiQFEs7JlQLKS6lBbaRrWcrReG
 0FPmVdSLDFUm4zanXfqGqwj045pI1uwf7n9jjHZU7XmuafGWGhYBeqV10KZ2vtKaFkdhTyM9lDy
 fZEoOVwICMAexXj0E7tRqjHu7lH4NEt8LolLkuwVb0FzeQ9wabENvJnYU8FvJQ9E8BVfO3nDICx
 HNJMLzoWXX0wImqjlbN+584J2gitjgChjagJgjEWp6b9ij7GCm2DGmFDZtMgalaSJcJMZmmoQMM
 uBfQeW3JHKP6DCDKWv2V9xOtL0DB6mfY3y56oOhk9zse3Uki228sH0+cpBabydc39E1LuBBd/xX
 8OneLWSW1xkhKAQZaBguJr3WT84ZiA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180137

On Thu, Dec 18, 2025 at 02:34:27PM +0100, Konrad Dybcio wrote:
> On 12/17/25 5:34 PM, Mukesh Ojha wrote:
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
> > +	memcpy(input_rt_tzm, input_rt, input_rt_size);
> > +
> > +	do {
> > +		output_rt_tzm = qcom_tzmem_alloc(__scm->mempool, size, GFP_KERNEL);
> > +		if (!output_rt_tzm) {
> > +			ret = -ENOMEM;
> > +			goto free_input_rt;
> > +		}
> > +
> > +		ret = __qcom_scm_pas_get_rsc_table(ctx->pas_id, input_rt_tzm,
> > +						   input_rt_size, output_rt_tzm,
> > +						   &size);
> > +		if (ret)
> > +			qcom_tzmem_free(output_rt_tzm);
> > +
> > +	} while (ret == -EOVERFLOW);
> 
> This still looks shaky (do-while is convenient for calling this twice, but perhaps
> the allocation could be moved to __qcom_scm_pas_get_rsc_table() since it's static
> anyway, and then we can just do:
> 
> ret = __qcom_scm_pas_get_rsc_table(...)
> if (ret == -EOVERFLOW) {
> 	/* Try again with the size requested by the TZ */
> 	ret = __qcom_scm_pas_get_rsc_table(...)
> }

Nice, Thanks., will apply.,

> 
> Other than that, it looks good (although there's still a lot of boilerplate
> that we can't really get rid of with C)
> 
> Konrad

-- 
-Mukesh Ojha

