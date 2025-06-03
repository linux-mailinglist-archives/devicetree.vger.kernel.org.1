Return-Path: <devicetree+bounces-182477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E47FACC768
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 15:11:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 056CF18944D7
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 13:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22ADF23182D;
	Tue,  3 Jun 2025 13:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rufqe/D8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6149F130A73
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 13:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748956304; cv=none; b=I9XrH2q7mZiuU1irvSYLXFVI8AEqpjnvhKRBRAGkJPJ7HPQenwlqNMRaS1yRaSduF4Astw+NVyS91hmp9XOCzOh0hccZC/Zrlo4IGWmsJHCsKmCkr2t4n+CXZd9EQVKbi4xkMln/EaH1OVb3Wam5ZoT+11jHdIk7C+zPFXt5MwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748956304; c=relaxed/simple;
	bh=DSxHBEJTE3+uuOMUX4IXmCl9C9IKgdtq7Yhg2vjoBWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P5wytfdjS5nOEa+0s4SpCWb6v6sK9R40e8x9cO2Q6DV0+Mo8TTdEImogDfIDFFsbp43NaQkZxrLFrzGzNrC06kCMHBGDT6Ot9YJ+0YqdFfBFrS51wEmrIqiHzovVYKeJVKyRS4SdRdw3bicC04Yt6eAvSU/NvWlTFXOoUAKaRNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rufqe/D8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JSjL006669
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 13:11:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hkowjwQkIBoerXsoTVXb43GI
	N60uMuMxhmK0iRDbVQQ=; b=Rufqe/D8kes8A+oWpf1AyhIj2j2I3Ay5OjESE69n
	aNjJpAklteOXnWpFTb4qravFc2D9X4A8JTG+kvPtG4Vx3XYwWDDCNX3lskS90cVU
	nWa3tuQPkQIq6gMLFJUIMTIFYyK8+r3Oz/GoaTJtKx/K8+8Se2IKn9nvVXX/sc89
	Wx9Vt0Zr/Of7fB7JOg1rDHi9mYE6d2/YeJoQSQqE++R7lSfW58iUcjT52QBX8ZjK
	p47geWL1PLqV4T9pSSOizefyYhOIHeqHjDh2JOy3tCJNGMNRdNJRNsyKpOjhnZno
	kO1gPlrEuIGAzKEG7aIkBlOydGNo5+I4i2mAd3peXdNhyg==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8stmby-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 13:11:40 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-72c3169fa24so1381146a34.3
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 06:11:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748956299; x=1749561099;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkowjwQkIBoerXsoTVXb43GIN60uMuMxhmK0iRDbVQQ=;
        b=FhvGUfKEP4k/uKIR33Fix8b1IIhJSd9W7yl42d1Fyw+V8PhfemyfQ4aBUbN8QItNrU
         J814EnmPUd9g7QSnKc304URovngF/iWctkM9QVjzvgOVaZxXQlzC3BlxS1o0oKBvoVJH
         6pWlTRCq1xD3zIJDzdoyGA3dGVdiM3h6jEzofp10iSWKCuK2lMnnJD9XOAtaLFtVbhTi
         n6rgOMKBsFSxd7SZk1FRsnzEMdsBuk3VlkTa9aCs228JODvL8jL0iipSj14sGPLVPhXY
         2X6nGSi+ak54tYHfjH37Vz7TDKRMbcSbTqkiGy2Sf2fSBWdZzSJUgmFFKVqN0y+Xlqf9
         aMxg==
X-Forwarded-Encrypted: i=1; AJvYcCWL2nXGDOTSVXeY+kaiI0H/LU7npzVavVdIcsf2Ueojnk5sX0tx3bQUtij1saawrJtldnYiHX9jTRi3@vger.kernel.org
X-Gm-Message-State: AOJu0YzMyrAEOtUh/OGcR67epwoghR0o2eB5Q3I5S8TpNClbDJY/qQBC
	dinnsxKTFgzIrdipJg7sBfJxNvyNOakckvBqM/x1Q8vGyfo8o+4d/BVjDjviLJnkTC0hDvKtSwU
	4ambTU/NJcQ9VVRrEWlGlynJQQxqLmqBY/oddAJTQCIGPoHJ/79xq+Gw3HvLzGyE5
X-Gm-Gg: ASbGnctN9RXs1vGsq6r0X/jBzHPA4JCiOtfKpJEbTQwR8F0+nV7wzOeEGFW/t3GRED2
	Eu1+f+kBXqpFHWy4yEIQYOcMsPcBGm2U5ascbl+3axIM2FGa8cYTEVkKnfy0WMmsHpSvg0ieGvj
	5axJQGu0STON8NAU+6KfJTz7Fs97DB0zrwqdD0Scqo2NRZ6FVOKt7Eo4pEdfM5xslzwjZ6V+GlB
	F+zVOpe0tQn8rlYFyomqunKmRWtYsMFOE8K3hq6JNStYd50xtEDRkXQZ+TJE0BqBXSx3ZzaFzIc
	gS3HGesvR7ElODBD/cZe/Ai9lhCecRBmN5KHVLQDoFbYxmvXniMOCxSLu5vR6ArNgM6M5QZM3zU
	=
X-Received: by 2002:a05:6830:3c8c:b0:72b:8297:e988 with SMTP id 46e09a7af769-736ecf38198mr9861962a34.25.1748956299383;
        Tue, 03 Jun 2025 06:11:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrv6xy9Z9gKos6U7bwZdGI8uQ9F+7hgkYBjMqaT3/DoXyQAJAhoI0Awytxg6+zEQ8YdBqDPw==
X-Received: by 2002:a05:6830:3c8c:b0:72b:8297:e988 with SMTP id 46e09a7af769-736ecf38198mr9861924a34.25.1748956298927;
        Tue, 03 Jun 2025 06:11:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55337910f91sm1920796e87.157.2025.06.03.06.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 06:11:38 -0700 (PDT)
Date: Tue, 3 Jun 2025 16:11:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
 <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
X-Proofpoint-ORIG-GUID: Bv-KB-RrdGtOo8ks8ODZ8po5ifE9E6OM
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=683ef48c cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=MMspel2jwrA65jTUX34A:9
 a=CjuIK1q_8ugA:10 a=EyFUmsFV_t8cxB2kMr4A:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Bv-KB-RrdGtOo8ks8ODZ8po5ifE9E6OM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDExNCBTYWx0ZWRfX4ObX2cORGNGw
 3efI+yff3YUpiP5TDDWJIEeHp34dha4KoQofFpJQR+Y3l1pJo3WyyM/3YOHHsRMs31hugk73A6Q
 0TFJMbz2HdRS//UzkckQ/rsGtp75RMcJcqHVHEIF6OICSAOksePeSPb/OX00WH/0QwAm9/l46y4
 54/c6nHcE6IoIFt+62NWYgA/OKFXfMzFZG0i4E+Ctgh97c/5LWZfGap5f56ivhw9o8eTQfrszeb
 n6Kz2EYMlqu6MWJdWVSQVqcI+THf/759kSFpELkWkaPeK9HrE9YbmXaFZwNelEv0hjmAjSiq2B8
 dafUC8TF05IOWtBWzFbevYscFNgZqMc2v5i0nfVOCnEsD+IbIyJOEfVPgVJHNojpwoHA5A++Pjm
 VCAMCxts93V+EO6i936ruKRzoRfAUX2QBVt13TSI4ski0dkPaTPehEvZz0JeOFA+lckbDU5Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506030114

On Thu, May 29, 2025 at 11:54:14AM +0800, Ziyue Zhang wrote:
> Each PCIe controller on sa8775p supports 'link_down'reset on hardware,
> document it.

I don't think it's possible to "support" reset in hardware. Either it
exists and is routed, or it is not.

> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml  | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> index e3fa232da2ca..805258cbcf2f 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> @@ -61,11 +61,14 @@ properties:
>        - const: global
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

Shouldn't we just update this to maxItems:2 / minItems:2 and drop
minItems:1 from the next clause?

>  
>    reset-names:
> +    minItems: 1
>      items:
> -      - const: pci
> +      - const: pci # PCIe core reset
> +      - const: link_down # PCIe link down reset
>  
>  required:
>    - interconnects
> @@ -161,8 +164,10 @@ examples:
>  
>              power-domains = <&gcc PCIE_0_GDSC>;
>  
> -            resets = <&gcc GCC_PCIE_0_BCR>;
> -            reset-names = "pci";
> +            resets = <&gcc GCC_PCIE_0_BCR>,
> +                     <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
> +            reset-names = "pci",
> +                          "link_down";
>  
>              perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>              wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

