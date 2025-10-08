Return-Path: <devicetree+bounces-224417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF17BC3BA4
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 09:52:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A7ACA4E7119
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 07:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1FD62F260E;
	Wed,  8 Oct 2025 07:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nbEkQFpe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3322F25F2
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 07:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759909925; cv=none; b=QhPokvZRuQwgadCai8UJvA1TwOGC1RobTka9O+g0VY/9VyB7M1hRvySNRNvLhvvzXrSBU9CQJMJlPBzJk14Q3BI5igDPODQK/9qTxIGkHMvAKmjyBk4oiMgEljdboGMS/4Z4FkYVtoBYp5lNcGW8ZyOliSjOC87YyEl87N3ZNlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759909925; c=relaxed/simple;
	bh=jp/zJEcCPvf4jK9W6zx5g+YSKeu8yY8hjmywdRuZSmE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=laEZVajXPEgjoTyWqq25iJJB6/LKGt0VPKMixr4U9/kPiM8trc0GTItkb36Mg1YXmzFCon4oaKhx1NugSNdRmUnzW5G0eGQ2eHXP6y36I5Koc3bZ+n3NXGv7hsLHZ6qsQ6H8cXC1dZEOrfn6Bn3tXtIHiHw48Zx/q3wAqZ+YhUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nbEkQFpe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5987arx2010635
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 07:52:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YRZFPPJQeCYCUJqQnDigqrNWBaX8OJqlWKA0JVc92S8=; b=nbEkQFpeRBLgPSQj
	/f1GLwdqSYQnSLmOMzcCP/how7x3+eNBMtAEDUCjEX6Utd/E+yinB3QFfMMQlwSc
	Uv2i54Y9RR30fXkrqie3pUnR3f9Cp0UQlYWlbniINnGP7l/4ADBxvbF9HlWpZawl
	tUUh/kDy69TLdt2XWjXovWJT0u+AF2BWBzBoyWTd9UTyc0+dHg6Z+d148idjyTZv
	B2gpn/vQoYrza6C3lHN0woop40T/CvLqET9ZGP+2k8ZNd0/k843l51L83fQV+v8G
	36q/si8FyItZ4TygoYzZOVRK8RK03imRIVzfWprJVKf6VLO6AY5QEopuGSRsCy+w
	Saq1sw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu9qcf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 07:52:03 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ec67fcb88so6271248a91.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 00:52:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759909922; x=1760514722;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YRZFPPJQeCYCUJqQnDigqrNWBaX8OJqlWKA0JVc92S8=;
        b=gqSe8r2h5q002h78rYu3XYU7OJ8pyddl7/by0Hey1VnxoMVXXNLjJptQtgO+ZU/nTV
         Xr4oD6QFtI2vScmBQZoxRMUye7IvFcwimWgyStd6vMU9LtlzN9LtplvFvtT1LXgkpTFl
         ctR651dKiiyP+keHiLBRnXZtyEuXxpG1EaFYLhScNy9+1e1ltjBY/5TYMuM/0KgjfWzB
         PQAXLHHKmdcwaVrBm1FbB9jPEkAnWCKsruqPJe4PMY5QZ/vXr+Pp34HNkJ0emOvUS2gG
         CKGdc2KZzCi3b8dCnGmirz/5VIJzb3fCpM4I2zQRIa6f7iLn1rWZ1ZQZhrkIuj+ww4cM
         xOiw==
X-Forwarded-Encrypted: i=1; AJvYcCVjDveZ/0Qz48K8APXoh7Dd+IAmM2gsczqLPAI3Bi9/5PObrGcP8rlVfN7f6V6vWaLLZTAFkwrvOMtO@vger.kernel.org
X-Gm-Message-State: AOJu0YwuvQj3BVw3EUBtGCwp7FcxCV0W8fHLYdw7nDXvLu+xfOXyPjoo
	e4VqrH3MORiO6U4h0RtjsmV4MQ3mzl4HqdR/+sIp5PMvMgSxiWdl0GRbGeJagBqAgwlFj9U3ix6
	o5vk/VpHH0RsR813e3FJaPemn5SZ5aCiAxtGUx3vWxgK8sn/fq7Cm8r2jWQFquSNh
X-Gm-Gg: ASbGncs6AecVMOEqlq6uuu0V0BNWGejhQVCL5AmZ+DIP2el4a/hOhuDA2uMtFyPEaDq
	nuocbizchoI8q6h4ssN0c/CvoSOVLfEzvv0PLLrAgf0mTSOtUz2h+XlQOzOavf+VEZX9OHOS2xM
	1wFYzmAVppqaOLJxKjDUMXQvMfSuA0uj67t0vGj5tBXN3h4oNMKKGWZNi7X4TbyYeYFhE9t1urn
	piuI9cjxe8P4HtIx3eBQdhMGeYePb+BqMkXjGkt/uoOzU+c5TBLmTR4WkMnfc4m11CB36d1yXEl
	Z3YupP2irdBNFrfin0YKrSzZ/Kum+mghz/XX/bIg4KuW6dk1HH+JzrBxTITRLNwBMhR5K6UN
X-Received: by 2002:a17:90b:4d12:b0:32e:3c57:8a9d with SMTP id 98e67ed59e1d1-33b5139a279mr3467242a91.30.1759909921538;
        Wed, 08 Oct 2025 00:52:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHu01xYjaBLVLru0tk2ZrxcSyg6W5LORhAKpnIdoAjX3D22/ZziNpKkl1IjWF6AN1qDNFxpNQ==
X-Received: by 2002:a17:90b:4d12:b0:32e:3c57:8a9d with SMTP id 98e67ed59e1d1-33b5139a279mr3467197a91.30.1759909920761;
        Wed, 08 Oct 2025 00:52:00 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b5296d52esm888452a91.2.2025.10.08.00.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 00:52:00 -0700 (PDT)
Date: Wed, 8 Oct 2025 13:21:53 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 03/12] firmware: qcom_scm: Introduce PAS context
 initialization and destroy helper
Message-ID: <20251008075153.wjvlnjr3iuncfued@hu-mojha-hyd.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
 <20251007-kvm_rprocv4_next-20251007-v4-3-de841623af3c@oss.qualcomm.com>
 <qqjynnzjhpe6elglh3xb4ghbtesfkr4ssxyq5flhcy7a5jp6ym@3viy7jyesamq>
 <45eb9c5b-bc8e-4866-bbaf-5afaed9fda21@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45eb9c5b-bc8e-4866-bbaf-5afaed9fda21@linaro.org>
X-Proofpoint-ORIG-GUID: fUM9aq4YKdS40a9xQpxK-fnpNKz08utA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX9T1wKNoaq6q2
 9BIZCWKnPlUMXyweGAqwzwOI2aAxxwkSdpfRz9AESfms8jjcUilYStZl/cCaaInBOjEdU8ligR8
 ISrpthq1z12JOJMzHESD1EuB6MBgwbfgD+rsiMlBAeuQjWSeRa6mp8PTVRqGS5K+I2A3gjEkuMz
 isuFWlaWgsnhoJ87Eex70yVIys+vDwNVkLo/FoeG+fUiXh0CBrIGnqwJ9NruBIF5ZPVEHMOs4MN
 /URRu2SuVZJb6JjO141PyFb3esfhXYvMOaQ9x3N2I2iKG1z4zCyxr0uQYHMyssK+PD+8UGPXieN
 Rl2Ho+tlGWPia83OsxCi4J2C+jnYYhAOG+Y6ZnkfKpbOj8JukquAEXLmoFY4bFfYjAB7o5nyBKN
 LJRbikLOUSTA7ZnvxHgeKqcAbWL/TQ==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e61823 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=3aEvWvYx403qF7UyPRkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: fUM9aq4YKdS40a9xQpxK-fnpNKz08utA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On Tue, Oct 07, 2025 at 11:16:28PM +0100, Bryan O'Donoghue wrote:
> On 07/10/2025 22:23, Manivannan Sadhasivam wrote:
> > > +void qcom_scm_pas_context_destroy(struct qcom_scm_pas_context *ctx)
> > > +{
> > > +	kfree(ctx->metadata);
> > > +	ctx->metadata = NULL;
> > > +	ctx->dev = NULL;
> > > +	ctx->pas_id = 0;
> > > +	ctx->mem_phys = 0;
> > > +	ctx->mem_size = 0;
> > Why do you need to zero initialize these fields before freeing? Are they
> > carrying any sensitive data that warrants zero initialization?

Nothing special about the data.

> 
> Mukesh, have to say I don't think adding my RB to this patch is really
> warranted.
> 
> I gave review feedback that the above looked odd.
> 
> https://lore.kernel.org/linux-arm-msm/9139706a-708c-4be6-a994-120cce0cd0e6@linaro.org
> 
> Could you please drop my RB here, and fix the above in your next version.

Sorry if I misunderstood your comment on this particular patch.

I assumed your concern was regarding the manual destroy call, and I
responded to that point. Since I didn’t receive a follow-up on that, I
proceeded to address all other comments and added your Reviewed-by tag.

However, since we are revisiting this discussion, it seems appropriate
to remove the destroy function altogether and switch to using devm_
APIs.

> 
> Also please add me to the cc list for the whole series.

Will surely do it, thanks.

> 
> ---
> bod

-- 
-Mukesh Ojha

