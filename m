Return-Path: <devicetree+bounces-224466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 934E6BC4246
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D2D6E34BAB5
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE5A2F5329;
	Wed,  8 Oct 2025 09:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WCXeKTrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DFF1AAA1C
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759915179; cv=none; b=RJkFllB6MYYRwtLJRGezGOszDS4cEo3BxuKbb5EFDvh/Z5gBL/mwnGS6hVlbygFBC5qDk4G7t+SDKRPTULB2NwztBFvz8ZLNz9zlOnb9eMXgJEGXF+JvvkozZO03ssldxw/azLgfj+npPWRrBMOkMm2fZVW1ygHwB2hg52QAUkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759915179; c=relaxed/simple;
	bh=7QRpahmcmOdw5PQH5i1we5xeffs7vinNRUO2Yk6g8rM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gUHnb3et3vG1Um88wpvcafbW/t114gi6bCTmaxrNsV3ynuZfKEUygzF5sp1FynIe0QrMD6PNO+IhPxRmOGpP22IEd5EIamLDrZOIBTI2lYGLBNZzLayC5VMf1hK+BhOIBZxIAVPPTwzBWFhQ/oXUiII/qmXaNt9WxOh4ozwz+Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WCXeKTrg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890P0p028801
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 09:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DDebG30uzC8d/gzatvcnaoRcwyzXptUm9ibGKb8H8Lw=; b=WCXeKTrgFRUsUMWM
	vKLcmY3fLjkDW8xAjUmfLuR67jar8W60WZJBTMzWqK7rKvz6srdwR0qTsnaDwbrQ
	Tjg4RRzSMnHlp03SoV1ZkLUwbK6SE89t056abEGJ43s19o7S3Kw25oSPjjdlKLRf
	p7L/E0oj3X4vF4w2PQLm1DvpX75ltYIIwF+rwGlb1PAl30FsBkgd4dtR1rEYsLKa
	BbayXb9YO3/vznh7hM0k2fdbBBRWxwuSYNseDKFw+sDMwDaTC5BPlzfODLsAPXtu
	mUMfOlRs+YIqoU+O6hafIu/V81eZtZSQWA0AJfKlt7rfYfUkXc4H4eGDG7Z6zrxE
	HbfoOQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgsy50-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:19:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85d43cd080eso226320285a.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:19:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759915176; x=1760519976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DDebG30uzC8d/gzatvcnaoRcwyzXptUm9ibGKb8H8Lw=;
        b=vrLfCpdZTPSxPnnjVwljdDvWuxZPfMFvgCtwZVRB/31MnTZLDVCpG+H0ZaB4OILm/9
         vNWkQ9/hMz97IMfP/CBKg9PXmf4LWMvpL1us2xWW+MMnRKp+J3zYchaKxcafpGTGQJbs
         M1cMbfxMTOKI7RkC+klgAI7VCsArRNZJ0EYqkRoYILasIz6OuP4uCKRCQ5lSa+LUa71B
         edRzUCJajDhzUAe6/3nSeS2xCryDRtvwc8tKUwHYgMSU7jhdb5RrFs9hPjt672sGGydw
         n3S6pXG07685QGR3aFCIq5dp68YO+s2qECIm7HYyGNczsf3wrXU+bwMW1yzen0/IDZb1
         G4cQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgdz/MjPWc0bLX4g6/LkyY1uROXP+8/cLyqs71QRpsfITMzvk124glOmARrvbi8H+DExFlgJZUXfoi@vger.kernel.org
X-Gm-Message-State: AOJu0YwBewtDMRMKpuiYsJJIkdQzZY8aMUEny5ctr0KCXY4nQgUPqFJ0
	7CZbFlIMrDirHguW4GoSQCHc2geUE1x7zjqrNU1WGzWOk9oLSSHuYG5w8iFc4aIkvVLxtN0I2yU
	Er5U3L3l6QpDqR5ZQprFTG1/cCXh5Gx3Cqpht4bNB0yeQ19q0AcW+WT0Zr0u+k56a
X-Gm-Gg: ASbGncs8MI+UbybojfsRxL1dZZbQySOSvWMsGmKlkB4eRJ03ayiSp7eEY0SLZ8ye3x3
	gM0Mz9vgUQeOO6OkVWm5KRuC5EBWMg+LGBR1B4JxlT5yqJheIWGB6ivaZ756xDuNd+M0w0nZIBw
	Q4H01CwGQo/zaJQuJUa9wPwFrbr1c+BUl0uLkmI2uoOxvrR+uOX7pRGAZje2ZQC21EPMobdkzfn
	XRPnmVMxaOZwYw5SK3MUNiqUbUMD/iMw+Y9BYeX0pr3SQzaYCA10kM8EBLkDkSUhM/yNyX7Y49h
	mFLvZQIa9BtOUNtz6hd2DUnirHzMyV7Fki8SSjNch+JGX+9byoMRQhblSLB7U2zZ+H3blQOPTCm
	+5lJrIj9/HP6HMLbUKyUNx3hm6C4=
X-Received: by 2002:a05:6214:20e1:b0:798:f061:66bb with SMTP id 6a1803df08f44-87b20ff97f9mr21368966d6.1.1759915176081;
        Wed, 08 Oct 2025 02:19:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9AtoSWRycJFNeyXgDRo0UkanPNUKvhGlX9n3GDw60mCueMa0GPqxCfk2qdRytGJj+xJFElg==
X-Received: by 2002:a05:6214:20e1:b0:798:f061:66bb with SMTP id 6a1803df08f44-87b20ff97f9mr21368696d6.1.1759915175560;
        Wed, 08 Oct 2025 02:19:35 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639773d4d8esm8542528a12.30.2025.10.08.02.19.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:19:35 -0700 (PDT)
Message-ID: <65e6d61a-7648-4125-8550-8a8c6d476b0a@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 11:19:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/12] remoteproc: qcom: pas: Enable Secure PAS support
 with IOMMU managed by Linux
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
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
 <20251007-kvm_rprocv4_next-20251007-v4-11-de841623af3c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251007-kvm_rprocv4_next-20251007-v4-11-de841623af3c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX9ozwAECgj1jd
 1Wmh/ApCFR+sW48tCoxBgxKpD7uaNW+w5IFKEUySxfeuyOSMZwDHjnPo1jkXV/FneitUK4JFVWJ
 K3xbxJ/Nczp6Yvxp1HIx78CVoDCox72yglGnaEafSWqaF1sefgIP9c5XoEcg3L+NvYRzCraR4SQ
 w74V4ouY2mJepAsgiAWXZsLewXF07xj4ZYwgGv3me0HUVocY72cIgagZy3Hc8hn+REnQ12+gnHF
 i36fgD7i79QEGdCJgIGboG/ivbYCIlB3XQDpGhgYVBoqsgVb/1xjnhsXa/OqGMbDuljNkfSyk2K
 8L4tB4qztPh3q3msfhSzaBTP2o7hOj2OiXfiaddB3cDZxoT/l6FberPbvo2uCBZS2IHpNd02IdQ
 9yVz+JuZGDHi5CxfzoLO6nCgxE4FhQ==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e62ca9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=XzL6S5KsqyWbBsQ6UhUA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: xpFT1SJO939MNEIoKN5qCWQamGWZQVFN
X-Proofpoint-ORIG-GUID: xpFT1SJO939MNEIoKN5qCWQamGWZQVFN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/7/25 6:48 PM, Mukesh Ojha wrote:
> Most Qualcomm platforms feature Gunyah hypervisor, which typically
> handles IOMMU configuration. This includes mapping memory regions and
> device memory resources for remote processors by intercepting
> qcom_scm_pas_auth_and_reset() calls. These mappings are later removed
> during teardown. Additionally, SHM bridge setup is required to enable
> memory protection for both remoteproc metadata and its memory regions.
> When the aforementioned hypervisor is absent, the operating system must
> perform these configurations instead.
> 
> When Linux runs as the hypervisor (@ EL2) on a SoC, it will have its
> own device tree overlay file that specifies the firmware stream ID now
> managed by Linux for a particular remote processor. If the iommus
> property is specified in the remoteproc device tree node, it indicates
> that IOMMU configuration must be handled by Linux. In this case, the
> has_iommu flag is set for the remote processor, which ensures that the
> resource table, carveouts, and SHM bridge are properly configured before
> memory is passed to TrustZone for authentication. Otherwise, the
> has_iommu flag remains unset, which indicates default behavior.
> 
> Enables Secure PAS support for remote processors when IOMMU configuration
> is managed by Linux.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

[...]

> +	if (of_property_present(pdev->dev.of_node, "iommus")) {
> +		struct of_phandle_args args;
> +
> +		ret = of_parse_phandle_with_args(pdev->dev.of_node, "iommus",
> +						 "#iommu-cells", 0, &args);
> +		if (ret < 0)
> +			return ret;
> +
> +		rproc->has_iommu = true;
> +		of_node_put(args.np);
> +	} else {
> +		rproc->has_iommu = false;
> +	}

I think the above is a little heavy-handed..

rproc->has_iommu = of_property_present(...)

should suffice.. if the developer puts something that isn't a #xxx-cells
-marked provider in xxx = <>, that's on them

Konrad

