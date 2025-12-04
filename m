Return-Path: <devicetree+bounces-244312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B0ECA397F
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 13:28:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 982C7302355F
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 12:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1F6F307AE5;
	Thu,  4 Dec 2025 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UEVUgKoK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ffqkQpcK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9651B7F4
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 12:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764851296; cv=none; b=NrrOQhScIMJZdQnsOOf930GJlfyVT9lbfnxwcEKoA7uCktX6k4Py66JupQDFUQVyWtEqS2NMH4roVwUbuo+bBCubK6nZyXW18kiykvleFtqglcB62vu+jRLDMX/DgKvbEXqwN8Nx8lzxvN816hAxeqaPcaNutGl8by3oxqAdcHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764851296; c=relaxed/simple;
	bh=ZOudRBmbEmOaRJd/JjcOKm25J39Ef8Sm4m13z4UZW7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u1DYN8cj2OTTSTL+UEHnEv817mQ+efJiRHQtrpqNiO55c3kiTxv+EBqs7F8fFLlMDGL6HKtYF4yBZt4XdycBXu4WN2z1s7XXd74GoEtLClolkH/vMqkEce//CJxAx/DN8Kuv8Nd6dLCHZ+jCWGh5XgUQ++l6OyufC2mSseJocfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UEVUgKoK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ffqkQpcK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4Av6JS1118896
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 12:28:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yJdwR1meSnfISNqUOOKV2CAI
	qDZw63hxh9ZcGAIZ0pE=; b=UEVUgKoKTsJsD+xdl22ceIzj+lTqTvkYevwX2xOY
	icYhkYHvbMcyDINofJ9zblMJY1H2L62qWlvRSBG6VVBmXBJNam5xRKjmdEUoh5Cp
	KamzTUhzlmMtHOgm2akfq6dO7IyktaVL+jSyGv/gZZcnCRDsO4TiPrNHWFMr86cX
	SqMw5k+AFXGexIUeYbkHsG6Pwxlgd0n/QRAs4Chom6TjEWAsTm8r4YUvdNB93mcq
	HlA5wA6U6s734V5UB9ZtCRd+6bIj44Z2ujge9TCuE9H6ybqzTd9161XA6ptioesG
	6hQIz/ncmhTXdxkfXxgX3mudvHqkaG6t62LdBdg7CTgQuQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au90fr7mw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 12:28:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297f8a2ba9eso18364485ad.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 04:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764851294; x=1765456094; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yJdwR1meSnfISNqUOOKV2CAIqDZw63hxh9ZcGAIZ0pE=;
        b=ffqkQpcKK2RNMwi3GJ5qs7lpwGewaKe8daKUxa+wxH1j651Qkeyt1SkBgxRm1NfOp2
         s4bZapuOPNc1fjOytIxUzenSC4aifwAVJL6yWZe5nZ1+qXk4P4C2KJ/eVoCnsojBYOkH
         qy5x3WLv5OZYuDA01dRhKGPkBbheKboK++wv+PTtMqziV2ejkRC/FP8ka//it45zFfBv
         PisamnkKGNsfRyWGOnun0swAzMyh3Wl2A0oB4l68E+qvsfr5XR9WDkF9vC3srZrIKPRp
         HKxv3A+n3eWeaaawDr8gMUxpHmYJ0kV0pp0Z0TAzzPEgTst57XD89UqCZttF6JhBa1Lv
         /9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764851294; x=1765456094;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yJdwR1meSnfISNqUOOKV2CAIqDZw63hxh9ZcGAIZ0pE=;
        b=Jatw4vCK0wgKZWYLysgE5H99LeEsG6oI+reFo0+4XMaFR0S2UaBq/CVQP+lqV7pqUT
         dWaxEFtRuuxee6MVb/OuW7RoPmSgWS47ZVhTklFinDUmQDpbDd3JGNq3Wg5UzJdCWAX5
         4nNezlvCYKXYC7vBwZAgy+3PTe0bzrTA7dMx2NGo8y6M3xh7ecvx2N4ldLNoZ8zePMf/
         vLkfNv+IL4VVMiQ4sjo+AozA+AQrFArHJ+MrfMGLdXipRNF2ajYUx6N6LyFrCcKQmqnk
         ydL5Q0c+r1pWWRAG26DCmovWIJwJodRub2AdZUoWAqSyZsvO0X3phsbGwIHqqcRedOFD
         h8cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEa5ZIf6/NMGoly+bXcopl57QP/RG28K1qn1JEiqIBXaaL2ZlXzDz508iy3SRkwdYDugcUqxI1F7sk@vger.kernel.org
X-Gm-Message-State: AOJu0YyVEnzLyj84hQDQUR6PUs0QefEBZb0xC8zrlqRpl4nsxjOFe1T6
	MVsPax+CzuEZvx/Rxq8kX0URcd+TinVh+V8wbsQqzkxbjOAMvrNFJ8Li5jy2UMiMLSyDlkMaRJS
	LkS2rKloNJF4DQOBBw9z+cxcQkKoJ9nwMP314mjOWnWRe/eNaEYTqvC3YKvVVJ448
X-Gm-Gg: ASbGncuHmQDPe1z7Ntbt4bmj8A2SDuteMEZOSZHbpaMhzaPcaXDwRW73/6McxAxuC02
	RbQM3qGv7Igwkj1Nv0uHET4+jZEu3jCTGmWcg9FkztMm1L6Ev1OBceRHlgVObV60GyCysL7TbKE
	EPt+/qavKeqzLKJzqNbCyefCpwiszwM7p2ot7cmVYZJkn+qQk0ovLCH9vRWs3ZulzqIur0mCiO5
	OvXUmGQaalkjWelu+m94uBckt76JJYO6OMZ38SffOMyt/o4+6mM/8pWOLLNdXrNx+Qc5pmp/dUn
	D6FLJHaJZNjCUmSULiW4a4Y7uvHhW6TflDBMQI3S0jiEGZeA1cZBT+wZ2WB/ivNZRF/P/x60PBl
	KRauVo2zv+Hvu6bBRlyl0jPjim0piCXrRRh1g
X-Received: by 2002:a17:903:1251:b0:295:195:23b6 with SMTP id d9443c01a7336-29d684aa287mr70732785ad.55.1764851293398;
        Thu, 04 Dec 2025 04:28:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHazY5T4LAOqBiWE0ZbojffzCVeY53x34Sm+OzSUYr07hHxlMDVyRkGsLXbPbexGleqMTbktQ==
X-Received: by 2002:a17:903:1251:b0:295:195:23b6 with SMTP id d9443c01a7336-29d684aa287mr70732365ad.55.1764851292730;
        Thu, 04 Dec 2025 04:28:12 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a1da3bdcsm1745261a12.25.2025.12.04.04.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 04:28:12 -0800 (PST)
Date: Thu, 4 Dec 2025 17:58:06 +0530
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
Message-ID: <20251204122806.s7lnqffgcrd7usem@hu-mojha-hyd.qualcomm.com>
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
 <20251121-kvm_rproc_v8-v8-11-8e8e9fb0eca0@oss.qualcomm.com>
 <86f3cb9f-e42d-40f9-9103-1a4953c66c71@oss.qualcomm.com>
 <20251124152538.wt3kzztqmpr76hsx@hu-mojha-hyd.qualcomm.com>
 <4376b7cf-7088-412b-8596-bdec5bdc273d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4376b7cf-7088-412b-8596-bdec5bdc273d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OdCVzxTY c=1 sm=1 tr=0 ts=69317e5e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=2Wt6xd7WRkCmuffoQkYA:9 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: hAvc4wTaxIMk2SA5MZWRbK4zVayHq5s1
X-Proofpoint-ORIG-GUID: hAvc4wTaxIMk2SA5MZWRbK4zVayHq5s1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwMSBTYWx0ZWRfX8S1HtdCVPCHI
 z8EWzFCg/S53CRH06S4LlfwAyesnObHBRPzAcTCcmLOOSNpbjR0yBzVLOn6dTUQyTe2PhEoayv7
 5QKcLH/mGo6Y0LIvcdM9bxnIpwzPC2LZyfoRLC8y7+UxgHeLx8yzl7guhRc8dgDy/wjoFO0jBI9
 rnK3bjzKXmehbBWZabops6J7spmhAfT0aoHMCSLhw6LKtQEPtHsfUvUpLeX42cAyyxWHrLsTjY3
 9grHkw0mibpZ1zmXwnNqw1hG6DzoUYr/K4qxslbYNACw9WVDEZGsDWEsVfB18XEMFDf+UbBrf3q
 OYbmk1tcrgSAIx5kkmgVhknUzxhcos3TzvWtfRF76W/fuqRS+jBVgsX+ZUC17VL+uR84NXFsKnF
 vroag0QZkxbBOzWGlslNKW5CGE7v9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 phishscore=0 malwarescore=0 bulkscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040101

On Wed, Dec 03, 2025 at 01:36:32PM +0100, Konrad Dybcio wrote:
> On 11/24/25 4:25 PM, Mukesh Ojha wrote:
> > On Mon, Nov 24, 2025 at 12:48:31PM +0100, Konrad Dybcio wrote:
> >> On 11/21/25 12:01 PM, Mukesh Ojha wrote:
> >>> Qualcomm remote processor may rely on Static and Dynamic resources for
> >>> it to be functional. Static resources are fixed like for example,
> >>> memory-mapped addresses required by the subsystem and dynamic
> >>> resources, such as shared memory in DDR etc., are determined at
> >>> runtime during the boot process.
> >>>
> >>> For most of the Qualcomm SoCs, when run with Gunyah or older QHEE
> >>> hypervisor, all the resources whether it is static or dynamic, is
> >>> managed by the hypervisor. Dynamic resources if it is present for a
> >>> remote processor will always be coming from secure world via SMC call
> >>> while static resources may be present in remote processor firmware
> >>> binary or it may be coming qcom_scm_pas_get_rsc_table() SMC call along
> >>> with dynamic resources.
> >>>
> >>> Some of the remote processor drivers, such as video, GPU, IPA, etc., do
> >>> not check whether resources are present in their remote processor
> >>> firmware binary. In such cases, the caller of this function should set
> >>> input_rt and input_rt_size as NULL and zero respectively. Remoteproc
> >>> framework has method to check whether firmware binary contain resources
> >>> or not and they should be pass resource table pointer to input_rt and
> >>> resource table size to input_rt_size and this will be forwarded to
> >>> TrustZone for authentication. TrustZone will then append the dynamic
> >>> resources and return the complete resource table in output_rt
> >>>
> >>> More about documentation on resource table format can be found in
> >>> include/linux/remoteproc.h
> >>>
> >>> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> >>> ---
> >>
> >> [...]
> >>
> >>> +int qcom_scm_pas_get_rsc_table(struct qcom_scm_pas_context *ctx, void *input_rt,
> >>> +			       size_t input_rt_size, void **output_rt,
> >>> +			       size_t *output_rt_size)
> >>> +{
> >>> +	unsigned int retry_num = 5;
> >>> +	int ret;
> >>> +
> >>> +	do {
> >>> +		*output_rt = kzalloc(*output_rt_size, GFP_KERNEL);
> >>> +		if (!*output_rt)
> >>> +			return -ENOMEM;
> >>> +
> >>> +		ret = __qcom_scm_pas_get_rsc_table(ctx->pas_id, input_rt,
> >>> +						   input_rt_size, output_rt,
> >>> +						   output_rt_size);
> >>> +		if (ret)
> >>> +			kfree(*output_rt);
> >>> +
> >>> +	} while (ret == -EAGAIN && --retry_num);
> >>
> >> Will firmware return -EAGAIN as a result, or is this to handle the
> >> "buffer too small case"?
> > 
> > The latter one where a re-attempt could pass..
> > 
> >>
> >> I think the latter should use a different errno (EOVERFLOW?) and print
> >> a message since we decided that it's the caller that suggests a suitable
> >> output buffer size
> > 
> > Agree with error code..
> > 
> > This is kept on the caller side keeping future in mind. where we can have
> > resource table coming from the client and it needs to go to TZ for
> > authentication.
> > 
> > Are you suggesting to move this retry on the caller side ?
> 
> I think we got confused in the review of the previous iterations and made
> qcom_scm_pas_get_rsc_table() retry 5 times (on the basis that "some" error
> could happen in firmware), but if it's specifically "buf too small", we should
> only need to call it utmost twice - once to get the required larger size (or
> succeed and exit) and another one with a now-correctly sized buffer.

Ack., thanks for clarifying.

> 
> Looking at it again, do we really need to be so stringent about the maximum
> resource table size? Can we just push the currently defined SZ_16K inside
> qcom_scm_pas_get_rsc_table() as a constant and bump it up as necessary in
> the future?

Ack.

> 
> > Just for information, once video patches becomes ready, we may bring this
> > qcom_mdt_pas_map_devmem_rscs()[1] helper for video or any other client
> > should be do this here as well ?
> > 
> > I wanted to optimize this path, where caller is making a guess and
> > gets the updated output size in return.
> 
> We always end up allocating in __qcom_scm_pas_get_rsc_table() so I think
> guessing a number like SZ_16K which is plenty for a effectively small u64[]
> in this file is ok too. Perhaps we could even shrink it down a bit..

Just to avoid iteration, are you suggesting that we can keep this
guesswork as part of __qcom_scm_pas_get_rsc_table() and start with
something smaller than SZ_16K?

I kind of agree with the first part, but SZ_16K was the recommended size
from the firmware for Lemans to start with, in order to pass the SMC
successfully on the first try. However, the same size was failing for
Glymur, and it required a second attempt with the correct size.

> 
> > [1]
> > https://lore.kernel.org/lkml/20250819165447.4149674-9-mukesh.ojha@oss.qualcomm.com/#t
> > 
> >>
> >> In case it doesn't make sense for the caller to share their expectations,
> >> the buffer could be allocated (and perhaps resized if necessary) internally
> >> with some validation (i.e. a rsctable likely won't be 5 GiB)
> > 
> > Are you saying output_size as well should be checked and it should not be
> > greater than something like UINT_MAX or something.. ?
> > 
> > +	*output_rt_size = res.result[2];
> 
> Yeah we should probably make sure this doesn't exceed a large-but-not-
> entirely-unreasonable value

Ack.

> 
> Konrad

-- 
-Mukesh Ojha

