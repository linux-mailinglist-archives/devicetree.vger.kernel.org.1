Return-Path: <devicetree+bounces-229739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 891A2BFB492
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 12:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F0711353476
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2733E31A7FE;
	Wed, 22 Oct 2025 10:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gql0+vac"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC2D3176E7
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761127418; cv=none; b=rgMIktKezWf+J00bfsvBWjkvAuzQVgxzw5x/7QL3CYbKYLcYLqbx3kerh0UW7isPt+PtaRnQn/yeOqI1akTbWBxpgoDNpR5dZMy5G/BpG2KD+LuUlvgRTEdSNdE+ByHBNeP3zJlJDvCzcJiqn7CYlIwQjF9cePJ1V5pWyl9ROAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761127418; c=relaxed/simple;
	bh=yjRSAyYrfPFuajWPybOEyPy3ib6Kji15eGFM49Hh6io=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dU52lrGA8kRgGBSSuS/n4SkbUCAX8x8V1XM9Vv9Rcp8y6zHc+u1F2d3Z9CkXAYzThshM58oKtxaDrJyYwqHigpWBV+wP3C0Dy7fjVagkQDJNxwz1Kx6tR7biXqaMrz6tHFqZ6zYJVq0K3oLd33upB8sgoXelc9AfbCZHCFB4oN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gql0+vac; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2YZfm029817
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:03:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/dOa1P9AZuIF0dByGZ+vgwV0Rt54JvCrAQVgW7l2OkA=; b=Gql0+vacgoV73WZW
	tEAx+KFov49SSBJ6PWzYrAKuHTwkr+asyQeKyqQx+gUsze5Mz1fQ5Aphd70RGHmh
	IsjKiyyr5NKnOf36w5juzl/ujoFQjRXumLm/YslCl5KiKFZBLj3PPk6OK2xZVVdf
	D1Dh6ugXpvToSvxDci3EOC6HpSwQm1kt51dDVdTVj4vjYmjbHSB9rYfA3nan2imT
	IYqNB4qzIfSq0ik3viwd8YyjGbArkzCJuSHZXUQx0WVy4XQF9eORCT61CL0g9yaL
	Lz/UTlF4LfYhzuAPJ9+1uT/ThAKGjIGKYzz0CvqPUq8Gy2Nx3LdZOndrRgITXL1E
	yTlqQQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge461c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:03:35 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33c6140336eso11385460a91.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:03:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761127414; x=1761732214;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/dOa1P9AZuIF0dByGZ+vgwV0Rt54JvCrAQVgW7l2OkA=;
        b=r1YiL/ig/P8q29I/17LSdvD++uvTU0vpVZXSmfY7+4m95rOWgytKCHYeOcHazSrXND
         52bGeTGWGrzt8LycNlHLUXojtpungOmhggOBD98RTILFpJ8kNmJgKjwXipsnj7TxAbrP
         8QO4/ERz/fYpBOn0zs/mkA7fAs3NLNQvrwSeNyZTHcQoOtdgIuaXSSQc84T8/pV7XHYX
         Z+udiAvsG/tj/5F6YrDfDa88b4uSy8V2+PTHX1/CLKzgLXuexxHi/1zJ4S+ZIFwZG1Rw
         lYYclCm1ze7xs8PpTcAoYXA7WnHIdOyHfGaooaMGdS9q/3Ndncr3h8SdNm8uRE4mkHwR
         mSFQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1rpgzZ+B9ZJvLd5uCLgMzRhg/FCfFd7Bei5PMrV1swDfjHK64FA0hSLuS4zN3CGGfyvQzSonHRx63@vger.kernel.org
X-Gm-Message-State: AOJu0YzVfPATPGwA81Shjf1kNshWol3J3593HC1lwH03xwpJsgWIQE/w
	pODW3Ws0g54VnzCf/YU63uFsmV1iUMhAGt1B8N+P/yIjo4KY5ZXvzuRNA6C7Aaf7V7ANJ8ZDV28
	marIfHnhIPvfEwClhQuknDNkV6G3gWCiKC6aPqva/feA+UPkZ7kYOzwGH7srJvN2P
X-Gm-Gg: ASbGncsv4AapqJmiVNAsdOYxvF8yXzKn58kZBLLJd+PhH2kjtD8QYt31qyhZ2XXyZY7
	54ZgC571qvCPS4hjYQ9WvdpTagmJksi1f4CMY9mbId7GjL/DtJ4jk17FY5HrQc0aa26a/Q4KEuA
	zYtAsp7nWpuVSaDa9WKZtohKVLW8z4hHAsYQsvUtdwvrFlfAJW/5CtXjoDUPIdUi94EysSVoUZ7
	GHf3eVFgEc3Fbz8Z3gJ5iF1MHQxzLO9tXLjHnPQifOYz5pNC1nh93cmzuCM+CqkdG4ATnBKcA8I
	+ejlJoEgRXhIouDNcbnwDr5Z6fqPlAavOpF2gyI1dJ/5ZDa9w8m0AMi2VcFUcGzMLifdPvC9P8J
	U4MOjCDhuxt35xD4wpOfHVhi38w==
X-Received: by 2002:a17:903:2309:b0:275:3ff9:ab88 with SMTP id d9443c01a7336-290cbd33968mr294500975ad.49.1761127413466;
        Wed, 22 Oct 2025 03:03:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnVieDpnBFjzey+iYDuF0Lk6TnYwYoa2HXV7UFtRM0HOMfHfzNVYrtlA9jF8kW4sr48Jin5g==
X-Received: by 2002:a17:903:2309:b0:275:3ff9:ab88 with SMTP id d9443c01a7336-290cbd33968mr294500395ad.49.1761127412716;
        Wed, 22 Oct 2025 03:03:32 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29247218eafsm133379585ad.101.2025.10.22.03.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 03:03:31 -0700 (PDT)
Date: Wed, 22 Oct 2025 15:33:25 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v5 00/13] Peripheral Image Loader support for Qualcomm
 SoCs running Linux host at EL2
Message-ID: <20251022100325.i3s3r2gv2wuebem4@hu-mojha-hyd.qualcomm.com>
References: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX6Ehyj2sneAaX
 bipkeqGQMbESbl8YCi+YT64d52sEqx1U73SX4HBSJla6+NQ0iqSvuEM+NIUPnKH33mHm2QnXG2g
 Y9nUR+9qhOGg6nec5M8fP17YjhNW14H9BNtYp+co/OehsIBUNQbAC5AmaceSVrV5w5HuefUNHZ6
 U/cUUATRLpdQeKWNXy6xdgBpOKzaTldOQ7ORw+IXKdOvugrvN0NEw2FicdtGBzR4qo08CAGZqf5
 o6XmLBQW3XKEy+y/BqpBYqXzsWtNIWW06L9pUw4QtKc/TMNT80zTn8yvP4b/GCnalVjFq+SbRuR
 ZdGiS7vASbx51LfbrWvx0tGxDRMzLN6jHsRLH+alKKiTwjCtY4IlTxS+/use5KVVOqNNy6YSlBg
 4nDAIEpz5z9P+Wcpa8tjkW+v1CJCIA==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f8abf7 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=x1MSAgqNs_Uq-AGLxd0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: P8tEtPTJDc81miHCkaJeo2dabhZ-a9TK
X-Proofpoint-ORIG-GUID: P8tEtPTJDc81miHCkaJeo2dabhZ-a9TK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

Hi Bjorn, Konrad,

Its been a while since I have sent the series on the subjected topic in
the mailing list and has gone few revision addressing most of the review
comments (Thanks to all the reviewers which has helped me to improve the
series) and these patches will also help Glymur in its remoteproc bring up.

Let me know your comments which I can take care along with already
present before I send next revision.

-Mukesh

On Mon, Oct 13, 2025 at 03:33:04PM +0530, Mukesh Ojha wrote:
> A few months ago, we discussed the challenges at Linaro Connect 2025 [1] 
> related to Secure PAS remoteproc enablement when Linux is running at EL2.
> 
> [1] https://resources.linaro.org/en/resource/sF8jXifdb9V1mUefdbfafa
> 
> Below, is the summary of the discussion.
> 
> Qualcomm is working to enable remote processors on the SA8775p SoC with
> a Linux host running at EL2. In doing so, it has encountered several
> challenges related to how the remoteproc framework is handled when Linux
> runs at EL1.
> 
> One of the main challenges arises from differences in how IOMMU
> translation is currently managed on SoCs running the Qualcomm EL2
> hypervisor (QHEE), where IOMMU translation for any device is entirely
> owned by the hypervisor. Additionally, the firmware for remote
> processors does not contain a resource table, which would typically
> include the necessary IOMMU configuration settings.
> 
> Qualcomm SoCs running with QHEE (EL2) have been utilizing the Peripheral
> Authentication Service (PAS) from TrustZone (TZ) firmware to securely
> authenticate and reset remote processors via a single SMC call,
> _auth_and_reset_. This call is first trapped by QHEE, which then invokes
> TZ for authentication. Once authentication is complete, the call returns
> to QHEE, which sets up the IOMMU translation scheme for the remote
> processors and subsequently brings them out of reset. The design of the
> Qualcomm EL2 hypervisor dictates that the Linux host OS running at EL1
> is not permitted to configure IOMMU translation for remote processors,
> and only a single-stage translation is configured.
> 
> To make the remote processor bring-up (PAS) sequence
> hypervisor-independent, the auth_and_reset SMC call is now handled
> entirely by TZ. However, the issue of IOMMU configuration remains
> unresolved, for example a scenario, when KVM host at EL2 has no
> knowledge of the remote processors’ IOMMU settings.  This is being
> addressed by overlaying the IOMMU properties when the SoC runs a Linux
> host at EL2. SMC call is being provided from the TrustZone firmware to
> retrieve the resource table for a given subsystem.
> 
> There are also remote processors such as those for video, camera, and
> graphics that do not use the remoteproc framework to manage their
> lifecycle. Instead, they rely on the Qualcomm PAS service to
> authenticate their firmware. These processors also need to be brought
> out of reset when Linux is running at EL2. The client drivers for these
> processors use the MDT loader function to load and authenticate
> firmware. Similar to the Qualcomm remoteproc PAS driver, they also need
> to retrieve the resource table, create a shared memory bridge
> (shmbridge), and map the resources before bringing the processors out of
> reset.
> 
> It is based on next-20251010 and tested on SA8775p which is now called
> Lemans IOT platform and does not addresses DMA problem discussed at
> [1] which is future scope of the series.
> 
> Note that there is a regression on booting KVM on Qualcomm SoCs after
> commit efad60e46057 ("KVM: arm64: Initialize PMSCR_EL1 when in VHE").
> A fix has been purposed here
> https://lore.kernel.org/lkml/20251010174707.1684200-1-mukesh.ojha@oss.qualcomm.com/
> 
> Changes in v5: https://lore.kernel.org/lkml/20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com/
>  - Replaced minitems with maxitems.
>  - Addressed comments made by Bryan, Mani and Konrad.
>  - Fixed some of highlighted issues in v4.
>  - Added a new patch which removes qcom_mdt_pas_init() from exported
>    symbol list.
>  - Slight change in  v4's 5/12, so that it does use qcom_mdt_pas_load()
>    directly while it should use in the commit where it gets introduced.
>    Hence, reordered the patches a bit like v4 5/12 comes early before
>    4/12.
> 
> Changes in v4: https://lore.kernel.org/lkml/20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com/
>  - Fixed kernel robot warning/errors.
>  - Reworded some of the commit log, code comment as per suggestion from Bryan.
>  - Added support of gpdsp0 and gpdsp1 and disabled iris node.
>  - Add R-b tag to some of the reviewed patches.
>  - Rename struct qcom_scm_pas_cxt to qcom_scm_pas_context.
> 
> Changes in v3: https://lore.kernel.org/lkml/20250819165447.4149674-1-mukesh.ojha@oss.qualcomm.com/
>  - Dropped video subsystem enablement for now, could add it in future
>    or on a separate series.
>  - Addressed most of the suggestion from Stephen and Bryan like some
>    remoteproc code checking resource table presence or right error
>    code propagation above the layer.
>  - Added leman-el2 overlay file.
>  - Added missed iommus binding which was missed last series.
>  - Separated qcom_mdt_pas_load() patch and its usage.
>  - Patch numbering got changed compared to last version
> 
> Changes in v2: https://lore.kernel.org/lkml/20241004212359.2263502-1-quic_mojha@quicinc.com/
>  - A lot has changed from the V1 and a fresh look would be preferred.
>  - Removed approach where device tree contain devmem resources in
>    remoteproc node.
>  - SHMbridge need to created for both carveout and metadata memory
>    shared to TZ in a new way.
>  - Now, resource table would be given by SMC call which need to mapped
>    along with carveout before triggering _auth_and_reset_.
>  - IOMMU properties need to be added to firmware devices tree node when Linux
>    control IOMMU.
> 
> ---
> Mukesh Ojha (13):
>       dt-bindings: remoteproc: qcom,pas: Add iommus property
>       firmware: qcom_scm: Rename peripheral as pas_id
>       firmware: qcom_scm: Introduce PAS context initialization helper function
>       remoteproc: pas: Replace metadata context with PAS context structure
>       soc: qcom: mdtloader: Add PAS context aware qcom_mdt_pas_load() function
>       soc: qcom: mdtloader: Remove qcom_mdt_pas_init() from exported symbols
>       firmware: qcom_scm: Add a prep version of auth_and_reset function
>       firmware: qcom_scm: Simplify qcom_scm_pas_init_image()
>       firmware: qcom_scm: Add SHM bridge handling for PAS when running without QHEE
>       firmware: qcom_scm: Add qcom_scm_pas_get_rsc_table() to get resource table
>       remoteproc: pas: Extend parse_fw callback to fetch resources via SMC call
>       remoteproc: qcom: pas: Enable Secure PAS support with IOMMU managed by Linux
>       arm64: dts: qcom: Add EL2 overlay for Lemans
> 
>  .../bindings/remoteproc/qcom,pas-common.yaml       |   3 +
>  arch/arm64/boot/dts/qcom/Makefile                  |   8 +
>  arch/arm64/boot/dts/qcom/lemans-el2.dtso           |  41 +++
>  drivers/firmware/qcom/qcom_scm.c                   | 394 ++++++++++++++++++---
>  drivers/firmware/qcom/qcom_scm.h                   |   1 +
>  drivers/remoteproc/qcom_q6v5_pas.c                 | 165 +++++++--
>  drivers/soc/qcom/mdt_loader.c                      |  42 ++-
>  include/linux/firmware/qcom/qcom_scm.h             |  35 +-
>  include/linux/soc/qcom/mdt_loader.h                |  22 +-
>  9 files changed, 598 insertions(+), 113 deletions(-)
> ---
> base-commit: 2b763d4652393c90eaa771a5164502ec9dd965ae
> change-id: 20251013-kvm_rprocv5-d24c1407a7c9
> 
> Best regards,
> -- 
> -Mukesh Ojha
> 

-- 
-Mukesh Ojha

