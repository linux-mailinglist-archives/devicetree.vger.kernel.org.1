Return-Path: <devicetree+bounces-225237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A036BCBC88
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A87774ED4C7
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 06:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6975926A1CF;
	Fri, 10 Oct 2025 06:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZS/Du9ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50BF257846
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 06:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760077645; cv=none; b=RPfAuIO3SlGBvOBzFKEtFV4oCnKo8Pu9HUJb0sbJFuD8wiKWdigKHZ5Ir483QHNA0z1FLkVfJykhriZ/m0j0CGujgEJtmgLQxK7gdiNCUJR5TPlKfHPMDp5AF9QBcGFOGXPHGRnLSfSgCnX90auIzXzlA5J+la4Rq9w3QaU42Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760077645; c=relaxed/simple;
	bh=pnGq//BMmE5bY73Ar2fzVMMFUkllb6bB1zHYfLKr9oI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IEngxK16Jpw1DN6Q6DlNzr/Y6dOkId7GxMxAuWET1WJ1j5LNqNdovkijBQxk4DOvpLz/aVbioixvy5iYiFdDytmnOxCBrcMPIUCoWdocih9ibHuvbgNIkQOAv/MVFTxM6E0Bqg1hTV2dDpMK/8gJOz03Jamq46T9nU0rKeLKhfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZS/Du9ps; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6IsWZ032086
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 06:27:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8KOlJ1KeODNmXdXyLJpBfhqY
	iV7WSitTJL7ZDmq9RSY=; b=ZS/Du9psdphoUphP4v5iSES+PKhNKQ+r2OENk8JG
	9Tlubmfx4AzXz0g2xsn4SQCq2mBJySL1YqJakn4eeIBjEJS/gzgD6Ys7GhCJ95ca
	PzzMHvw1pHub3PQqO7hm/v6X1R1MbyXtozpe49V/35ykvDP+2FZKz3fbiiWt0viO
	wgi+8XiphatwvH5b0YgfCb+T1tBAiRDefzM2MPY2oA5mVYk0r6iV7QY7R4g1D/5H
	r+wmeiAgxf1q/vESbVCJC2onK/PfcT2ZL70rYQpreJJeEmIzLk4zR8ypo1Vn2Rg0
	0mWMG3GGRDTSyMLDtIxjCiXhO1VQwPur/JUlGLW3T6Z26g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nnbky-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 06:27:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-28e8112143fso42275105ad.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 23:27:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760077641; x=1760682441;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8KOlJ1KeODNmXdXyLJpBfhqYiV7WSitTJL7ZDmq9RSY=;
        b=uNbuqdrbBqEGW3DgzTuyrHaGnVG8XkY09ks1r83KbJSk48vWfqbVvFD2JKbTweP94m
         VxKoAwlJCkY7kTlwmSDdA7J3mCdghrgUT6lt/DD96eflqdZgihg2cTdFyp+lkM7LZS5X
         wsgPqh/SbYV9SJJ8JwcsRurV7fUq/a6O+jYebRy2jFllNdRZo+bsm7lmwWG8MztLdWme
         x04gCZBe9J5z2bVcCmX1wmaUUljTJpQGsBybsqP1SKqPRXfhVM2LBbRFVz8LO5C3dAnJ
         zwYKWxTpKtQhun6V+1rdxIEmlPEgE4D5bJr/CH+fpp9WkNLQTJUjYhWlysyqKxFw04bw
         OeNw==
X-Forwarded-Encrypted: i=1; AJvYcCWXoqPJGLxarRf+YvZjvX07yQA3lpH8vjOVojeTby7irGUgsY/jXuC9ZpQxddt22HTgCIPkQTGzXUFP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4TPyRReOBih8enprBT+lBG1V6bkXErcgrAiFdEYuk147Kpp0S
	/LoB/CFQ1vRi7zttAnfhsPs3J+z7AzVfphV/kRak/Aewc4TSk7HDRpjwylBTgE/Zy60qwbfTZ82
	L2RinsE2OCaGkGzuBNXfkoDHfz3SVbwsubx3MzoL9ZmZRdrJtvyR9tgsm0CFu5gWz
X-Gm-Gg: ASbGncvgqenNNeZ7QHGXU3mL9Iwy66CjgNAZ+3BhjPwUa46vN8DxRmr7JmBbB/94cnH
	SOAXJ2rBqfNfKUwvXOPy0hrvryzR5jK6yi87iHeDgJiCGt64tq5wHJK5Ci3vDb4/wsW2XHHk/AK
	3sIBthuOe5yPhTgXiK1ljSy1njpwarXivslUxIVJM8hzeSHDDRNAn/Cxz357JD6zs1kbQOfCpOt
	PZVBy5HCogxmfgUEoCYIPEQAZ66zIudbhgY1KqCpncNaEQGdNaLG/3gS9IXZxT6wYMmgQ7WPMYd
	JYjIIJ0NafzKtj2tE6Se0+0IVrxw20Z22S3tB9CrcLXfpOvrCRfmgwwURrevDHh9HqQ=
X-Received: by 2002:a17:903:94f:b0:27e:c27f:b834 with SMTP id d9443c01a7336-290272f7e6fmr145372035ad.56.1760077640815;
        Thu, 09 Oct 2025 23:27:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfC4Z+Rtwh20NJKoWgbMQbKmnRvWnaw1tbJid4gWcGtL7HdfPaybNBG6CJfaeKuWX+dFJFFg==
X-Received: by 2002:a17:903:94f:b0:27e:c27f:b834 with SMTP id d9443c01a7336-290272f7e6fmr145371765ad.56.1760077640123;
        Thu, 09 Oct 2025 23:27:20 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de7871sm47073245ad.16.2025.10.09.23.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 23:27:19 -0700 (PDT)
Date: Fri, 10 Oct 2025 11:57:13 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 12/12] arm64: dts: qcom: Add EL2 overlay for Lemans
Message-ID: <20251010062713.jff37ulgskv5xllf@hu-mojha-hyd.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
 <20251007-kvm_rprocv4_next-20251007-v4-12-de841623af3c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251007-kvm_rprocv4_next-20251007-v4-12-de841623af3c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXyOTZYzrI5hW7
 GHTSVw75c4/VjwyiZU414dwr6iUwzJ8hg0F40BK9iCrdZlFRi+EACC5QkqhxiEDDvbtFeK9mUy2
 Cu4sqla4X6iak9xTia6PYX5Ey5MFmdNlGM6ehXLYYSZ6xtx17Rf9dlPFUq/9qE7cWL7FAO3OUdS
 SgN2+8Qu76aomEJAP8fjrJJQj/RB4eJI4C14Rgfz1Lu1EqhCq4ASfNd0WnvCiHw4PNvYYdQqCqn
 2h23pqP5cKLwZxvpvOKL2gb3O/J8XziePlP8+DM6wfo2dD8xPHny5Yo2sA6H5tq5l9PMkIIUXBu
 v7uILMg5SEoss4LlVU4t90qvDBsoE7hWVX/6k+AX3/9FNXK6hL+FlptetsMcqRus9cDBNoBL3YA
 wqbquPZOdNK5gyDa/DjIombie7AjFg==
X-Proofpoint-ORIG-GUID: LL8NG4xIfOHg2hG5c3qKJvtNbZo5vzrb
X-Proofpoint-GUID: LL8NG4xIfOHg2hG5c3qKJvtNbZo5vzrb
X-Authority-Analysis: v=2.4 cv=VK3QXtPX c=1 sm=1 tr=0 ts=68e8a74a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=oFCgBSb2_MPOKaEsi3wA:9
 a=CjuIK1q_8ugA:10 a=eSe6kog-UzkA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Tue, Oct 07, 2025 at 10:18:57PM +0530, Mukesh Ojha wrote:
> All the Lemans IOT variants boards are using Gunyah hypervisor which
> means that, so far, Linux-based OS could only boot in EL1 on those
> devices.  However, it is possible for us to boot Linux at EL2 on these
> devices [1].
> 
> When running under Gunyah, remote processor firmware IOMMU streams is
> controlled by the Gunyah however when Linux take ownership of it in EL2,
> It need to configure it properly to use remote processor.
> 
> Add a EL2-specific DT overlay and apply it to Lemans IOT variant
> devices to create -el2.dtb for each of them alongside "normal" dtb.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |  7 +++++-
>  arch/arm64/boot/dts/qcom/lemans-el2.dtso | 41 ++++++++++++++++++++++++++++++++
>  2 files changed, 47 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 296688f7cb26..e2eb6c4f8e25 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -35,6 +35,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk.dtb
>  lemans-evk-camera-csi1-imx577-dtbs	:= lemans-evk.dtb lemans-evk-camera-csi1-imx577.dtbo
>  
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera-csi1-imx577.dtb
> +lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
> @@ -136,7 +138,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-vision-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb

Either this can be removed., or removed from below line.

> -dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
> +qcs9100-ride-el2-dtbs := qcs9100-ride.dtb lemans-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb qcs9100-ride-el2.dtb
> +qcs9100-ride-r3-el2-dtbs := qcs9100-ride-r3.dtb lemans-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb qcs9100-ride-r3-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
> diff --git a/arch/arm64/boot/dts/qcom/lemans-el2.dtso b/arch/arm64/boot/dts/qcom/lemans-el2.dtso
> new file mode 100644
> index 000000000000..582b0a3a291a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/lemans-el2.dtso
> @@ -0,0 +1,41 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/*
> + * Lemans specific modifications required to boot in EL2.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +&iris {
> +	/* TODO: Add video-firmware iommus to start IRIS from EL2 */
> +	status = "disabled";
> +};
> +
> +/*
> + * When running under Gunyah, remote processor firmware IOMMU streams is
> + * controlled by the Gunyah however when we take ownership of it in EL2,
> + * we need to configure it properly to use remote processor.
> + */
> +&remoteproc_adsp {
> +	iommus = <&apps_smmu 0x3000 0x0>;
> +};
> +
> +&remoteproc_cdsp0 {
> +	iommus = <&apps_smmu 0x21c0 0x0400>;
> +};
> +
> +&remoteproc_cdsp1 {
> +	iommus = <&apps_smmu 0x29c0 0x0400>;
> +};
> +
> +&remoteproc_gpdsp0 {
> +       iommus = <&apps_smmu 0x38a0 0x0>;
> +};
> +
> +&remoteproc_gpdsp1 {
> +       iommus = <&apps_smmu 0x38c0 0x0>;
> +};
> 
> -- 
> 2.50.1
> 

-- 
-Mukesh Ojha

