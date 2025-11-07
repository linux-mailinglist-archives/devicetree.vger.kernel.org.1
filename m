Return-Path: <devicetree+bounces-236030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E71C3F612
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2319D4EE443
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC972FD68F;
	Fri,  7 Nov 2025 10:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RVqfRCZw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YpDDELeJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D7D2EB5BA
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762510650; cv=none; b=gNylGGESYeC57giFERO7moGMlppPhIJfyt6mu/KQ2hkkYBtSWLAPeRHDP1pY47tt4wSz2jhuEkkLGiOso8AkASxcXIAimlV/d/BOJaL8Rzwt7OLyarVsWLBsJMSiErdC2vGZqrYJuLnGLBAPu3/Rc4M/ojShHRcrviiGT6pjVVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762510650; c=relaxed/simple;
	bh=2qs1VG1n9bjiENuAjdiCJJSJcQywxwAJEW6SFZp+G7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CKGcWmQ9HA/54cgOLBjywg0G3h/UbJa4UFofjeDYNvd7b68CBqN5UF2wmmBgcZwO7NNs8ApZ2c0UD5rNNa6taXf/hyw9kb9WB91hRBQi3yHj5bP7gPiJiknvonhJlKgbB6K+ENK+ktG/r2hU9bhMGQPKSbG8QzRRmfUpd5fpWX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RVqfRCZw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YpDDELeJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A74sXLa557154
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 10:17:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VB0as2X5rpIdpcXtCyAvYkLDtHq+50iUEPo6nofU0HI=; b=RVqfRCZwtn03rQYw
	y1tVIWooVijUQhG+dkJdwmLnX130OlTFVOPw9wL5FA8dUGq0DWl/BF0RXbKseiYX
	yGDkrhtqhAZQygkom+Sfb2ndqg5iPHHcRV4XsSRoLmiDsFu1d59J7a5cHwccNUu2
	bhFfPQob8kwarW7UFGPqWRHuWDPmJK/7IPPrJ1omQIMfArGBy3UANVjDyF9uG9Po
	2kZTUKATVYi+uJSeB0co/uKZ4qDzyMvl1mlMOhNnKgZr267lYXRwx+Z3rmKK+n70
	5bnBAi+2vdlF8wgpErX2YNHV+gHnbGFw90XCG4B5yYkmUg8DkSX8SmPakVS6k17S
	++RNLw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8yr9tp5f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 10:17:28 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6a906c52so1556511cf.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762510647; x=1763115447; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VB0as2X5rpIdpcXtCyAvYkLDtHq+50iUEPo6nofU0HI=;
        b=YpDDELeJ1/DmshR+ehv/RQOOKc8HpFcMbhTMT5vG1tcq4zrBtGeISu6wkLHZ4GNqzz
         qStzJec+hyjP878Pp5354lZeWqHOppnC9uFUPaGe3t+Mvk/UWNbUelSSAJOF96BTEjvX
         zu54zRQfBq3WhUHiMsu27GuoD1VEugIMVQZpFUoYMEPd7aukuwLZ/y9RD393gBkW/3X4
         KpCkCCEoxAMrqtmosct+uNkUq3lnJUuO/Fob9XB8XInL3vw92bb8FtmBFA2k8p4rBlmo
         XCQxYsEwXsgWlpCCnfC8LquuPEDdkCjfb6BAeCEVQhiybyPp0rK6f7o/NHtU4H0Oqk+1
         AkaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762510647; x=1763115447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VB0as2X5rpIdpcXtCyAvYkLDtHq+50iUEPo6nofU0HI=;
        b=WtfofUCbSy3i+eYI7yRxq7z3PNWX9btte3nVccXVMUTZYWXbRjPPiZT0vbIOxXIVeH
         SeTqvGDspw1/Myazo/RW42V2bJvLtRZPZlnn5DWDMfkSQWgY/urM4v/BBT1Knqk6dnS2
         38+SQpE+HMX2ce21Tm0jy+XOJXO66gbd5QPeN9R6f4WHOSDbsc6rskJtuzeiRmwVYmwr
         qutazhhPYlMseEtLHC2DdSDD+syjDXo6miNBT/fGNfE6uijR1Y4Nk4MVacHzXQT1upCQ
         W2FdXycTtpaQqAyZ0imYV3bhdqChV29eKSLPI9n5Szi51iNipUhCdD65uZIp3lW5H1yX
         A0Fg==
X-Forwarded-Encrypted: i=1; AJvYcCXLHuPfeLwgMak5ArN9sb9cjekzO9Epb9M5cXZtyEgC3O21YJyKRiXAfrbcAvTxB51eKvEaZgA5cwGb@vger.kernel.org
X-Gm-Message-State: AOJu0YzTaBuW4EepPFFNnjchDLnyxzDTtLrzWbNrgXPzV+A2zp/JARjo
	PcQc+x81qgcg37xx2qHS6w/dNeQvOEn3Bkk0nN2UxOBIkldm0Zksi5rsreOkply+99G9vOEnMas
	RiczCv5g9zqCEAApPpPVqc+CmSREg1Y/urKv9qEJOd343bhnuywdqa8zW4uZezgYz
X-Gm-Gg: ASbGncvb+Boq+W49Si3ypkPK+wZshSOxCvvwYfDUDWsTeXJy8z27KQBepTXAXANahA8
	zo+TrtOocUjl2MmZHjq7hJID3cAR+IOW1OQL+Z+OSpkgme9q7AoodkASVgsYsGivA8vwGEouc44
	7GqgVGvIxHNetVGkqJ2v/hJVpv8vY/OvLppnFg7FX07X82Y7E1DhlXqIIhdFcTxIkPmrS/RbeHs
	B/hkQRd/SvAtZrrpPFfzmCQ2nyFOIi0VddCe0KuL8NDL6faC5xQDbCr8k0trghrpjPtGjjOpGtI
	u+jMowaMZXoRIcuHvIvyfSfJLiJzpDA9DGQ/Es7/SbwsbI1NV9MdZnBBl3zV6emKqivWmRh09ZL
	R4NEoCPkz0P+nPEPeSaVHCIjHvFlBQOR+/FzuaCt2evZbyMOK7De7Fs1y
X-Received: by 2002:a05:622a:15ce:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4ed94a37e04mr19204801cf.8.1762510647013;
        Fri, 07 Nov 2025 02:17:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+bmYMl9sgolDCLtI/3Z/25Cac3Pm5sw0YnJKVwj4DCLlvp+FVu1J9wmfnutrUm1ga/1XlbQ==
X-Received: by 2002:a05:622a:15ce:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4ed94a37e04mr19204671cf.8.1762510646566;
        Fri, 07 Nov 2025 02:17:26 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f813eabsm3712122a12.11.2025.11.07.02.17.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 02:17:25 -0800 (PST)
Message-ID: <7a5d188d-989f-4843-a10d-0fbad94a9ef0@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 11:17:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 10/14] firmware: qcom_scm: Add SHM bridge handling for
 PAS when running without QHEE
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
 <20251104-kvm_rproc_v6-v6-10-7017b0adc24e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-10-7017b0adc24e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=DrpbOW/+ c=1 sm=1 tr=0 ts=690dc738 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rBf8QGEbTI05NIq0_6IA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: etIcQYjGeZxnATVYXg4CgErWzCGRdqEy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA4MyBTYWx0ZWRfX5cZM6PUkjVSP
 Wem99JFFnZqcIgSnqROIDfOvEYZWae1ogMvSGRkKR8/3el+rddsJH315ZFsnG2p2kBh4zQe/56M
 xdd6vA/LH7+cnHKtdK4qSX9B4jz3IrpBaqEV+LczQToZEFKtj2jStDa5C6ZnZmd2Px9nkVlcbvr
 LZ8r8lhsVPQhf0YkhuIr57EDar/bpFQdrt09eZjmzqjDZQAy9nuCNn6xfWlbHBDxdahqoKRti6D
 FUAN9vmqMVDDzIMK2O0Z7tZRfoX7grH0ihbfiN9fbdGSNp4Nwc2tS/oqeca2jT6xZCryoLc53dF
 hzliX1ISPSLpBnDi6oDCeA8fh7yLc/vVkPRWQ1Kl4jH7PZC0XlnqdXyoTm9oAz/OId2ta2jVfP/
 x0jR/nqtZmE+Bl93FZYNl5D958qNzQ==
X-Proofpoint-GUID: etIcQYjGeZxnATVYXg4CgErWzCGRdqEy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070083

On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> On SoCs running with a non-Gunyah-based hypervisor, Linux must take
> responsibility for creating the SHM bridge both for metadata (before
> calling qcom_scm_pas_init_image()) and for remoteproc memory (before
> calling qcom_scm_pas_auth_and_reset()). We have taken care the things
> required for qcom_scm_pas_auth_and_reset().
> 
> Lets put these awareness of above conditions into
> qcom_scm_pas_init_image() and qcom_scm_pas_metadata_release().
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 35 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> index aabdef295492..9d3e45ec73ac 100644
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
> @@ -625,6 +625,33 @@ static int __qcom_scm_pas_init_image(u32 pas_id, dma_addr_t mdata_phys, void *me
>  	return ret;
>  }
>  
> +static int qcom_scm_pas_prep_and_init_image(struct qcom_scm_pas_context *ctx,
> +					    const void *metadata, size_t size)
> +{
> +	struct qcom_scm_pas_metadata *mdt_ctx;
> +	struct qcom_scm_res res;
> +	phys_addr_t mdata_phys;
> +	void *mdata_buf;
> +	int ret;
> +
> +	mdata_buf = qcom_tzmem_alloc(__scm->mempool, size, GFP_KERNEL);
> +	if (!mdata_buf)
> +		return -ENOMEM;

I'm still a little sour about this function having to be separate just
because we use a different allocator..

Did we conclude that using set_dma_ops(some_tzmem_ops) was not going to
work?

Konrad

