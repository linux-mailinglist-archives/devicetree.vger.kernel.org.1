Return-Path: <devicetree+bounces-166535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0D4A879B0
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:03:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 496F416DB7A
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 08:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21165258CD2;
	Mon, 14 Apr 2025 08:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aBHAiRM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975BB1F2360
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 08:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744617796; cv=none; b=i+yExx3SHmEWGPpBiDKn2Njtc/D5yfZg/INuRfPHAwAOu0pjfyS90STwrUCn396e6t6X/YNRq3bDoHlRELgLQlo8O8haTPQeok0dOEK1MP7W4FoXLmdSLvuitYo0D48RTbcKqbX2m49oWTWaW2rQ7Yhlf7JdGXNR8srDgUEzU9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744617796; c=relaxed/simple;
	bh=uph4zHoLG9oMayUKP51V7Ui3CVrfNf+hdd0i3wJU+DE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ei33MPbL2U//P7UeDEjx+0vsEncn+cx1f3VIstL0RBwy0qoPKehQ6D7ve5ncK7QiqBrDudkpvN/RjLmKX4GxyGszfaZHnlNVdn4bVicIgdu4bi80X8h/23kk6qPmjC81E35+8XDk7vIalkvpijniSTRlaGQrp4yc4A2f6C/Q3Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aBHAiRM7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53DN98HQ020918
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 08:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EiwHhk5vFVCbL/7IZb2Z7mJo
	tSciivUHSnNHCf6n2sg=; b=aBHAiRM7Q1VfL1y0K6s3z+x/5ZKAsAY9QlbSd8aC
	iSd30+jetXyNpi/691BqB/PwLpKDQN+bfF5wqA0zU3pLQpj1rmoS2IZXDFBxA/Bd
	eauPqAO1Pe/YZDPATzcvLVY5Bl9SpJqgsN6YmNVhugyyJi/jFkZeVXZaPuSjW5sx
	oHMMDsDWKytXXloFN2OALp80xj9Wj8NX06CYtrU9IV7IgT+oNmw7QJlqgFPwnPmB
	BpvFDqpuEPRF5giNDnF1yrxE3+174py2MJfShAcEKKtvvzdXVa8fDvqVj3mBzheM
	vhlOjbTq9n3qvzgP1t9jE/SXcd2hxZlJtLi/HIpN7SZveg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj3x1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 08:03:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5d9d8890fso900604985a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 01:03:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744617792; x=1745222592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EiwHhk5vFVCbL/7IZb2Z7mJotSciivUHSnNHCf6n2sg=;
        b=Agc1V5XssnrsIQ1SRKv3tV+Qf0fdA4LyjVEhC3ddbaSc1uajuoOKSA98QbDOsabHex
         diC7f301wtsNjiWINmJtSYFdqeU9ly1mUzFAsEwD4IDc4yko8x38kZGRje9PaWKN6v0X
         HuBrNH4CvM0LCY0+8d3eqF8ZMrvADBfFtD/c8bXpljD6zYLwgWkvYyeUqtIcS3SPPcMH
         xA/iRSx5V/qx5czEcD4ONoOrlOqH1eusPzpHF9BwXC7VDTgpWNOMi8Wn7eONCKaRgQsk
         HqnSbIAIHfxaxw4y1FkSYr/MAfN0aALg8jIf9jqiOpaTfGtK3rC8PMCkVFj+6FGjUBKj
         oJNA==
X-Forwarded-Encrypted: i=1; AJvYcCV6/trZp1weCNOPH95HTQXYP0DRgxigMnsVTc6NDbD/OhkmCxfNGT5fZuwCjzWcZQu4oh/vYhaECZl9@vger.kernel.org
X-Gm-Message-State: AOJu0YzHXljAJmSDPaBSj0IPC2zcAdW3qwqVlyGuMf6JrW+/yY+QVDW1
	AFoh0xvxYWcqrMS52rz7SCb0cnDNouIK5YUiRk/Yfa4IEWInpkSbS5F2qb5P1u9wzgjlEITlzHp
	FpDmN2Ek5E09oXVrE6vPW+OqD+R3M02sdWTYIyYz8qpcHyJiuTeJPcqKERjwQ
X-Gm-Gg: ASbGnctldz5CJF8zpdgRCFFCqBCpIh0+sQuY+rDVTVLBx4eF5YBSnbyB33Js0XS9bLV
	ZaYgO0h0pHRFVqlYPSLIsRRf2W8bLTLB2MmjyKyTQuquczPeV0hdurwCk0400pqvC5hsTiHSikd
	p/VHY9xgFWltjbPNlr481TvPKXyH8Xp/UbZtOl0kWhfKiGcWL5rQTligpReZiDFabp5ZudIQEZm
	hUeymIj1dF/KgJoQoEU+6tDjqjFJUUOa8ttLqUYjQxzofwYRMeKtEah8bhItqKSWf0+iKt2gdMB
	R7qnBwFC8yFW0SjCZWA4ab8Rxjx9PtzmRdXGzy40dZbq1SxcyZawZVOGSPObfEWDsN0gXdFwuUk
	=
X-Received: by 2002:a05:620a:d87:b0:7c3:b7c2:acf6 with SMTP id af79cd13be357-7c7a7675c27mr2162278085a.15.1744617791940;
        Mon, 14 Apr 2025 01:03:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESZN07wYmkacvSwp8lFk2vRdDEFr2/a3rzDrW2cfKAF3hpIHMbwXYQcEMnw4snP4Wfu7vADQ==
X-Received: by 2002:a05:620a:d87:b0:7c3:b7c2:acf6 with SMTP id af79cd13be357-7c7a7675c27mr2162273685a.15.1744617791394;
        Mon, 14 Apr 2025 01:03:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d521931sm1022102e87.257.2025.04.14.01.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 01:03:10 -0700 (PDT)
Date: Mon, 14 Apr 2025 11:03:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
Subject: Re: [PATCH v2 0/3] PCI: qcom: Move PERST# GPIO & phy retrieval from
 controller to PCIe bridge node
Message-ID: <b5ucd2ypwk3qv3pl7cij5geg6e2bt72xqb4hx3yvpei44wdc7c@ub5cujnfvz3d>
References: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fcc141 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1xens5CjvSCak2KtytIA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: azeRXiZBDoDkjtNtv1FZQvEOgegr2yVJ
X-Proofpoint-ORIG-GUID: azeRXiZBDoDkjtNtv1FZQvEOgegr2yVJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_02,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140057

On Mon, Apr 14, 2025 at 11:09:11AM +0530, Krishna Chaitanya Chundru wrote:
> There are many places we agreed to move the wake and perst gpio's
> and phy etc to the pcie root port node instead of bridge node[1].

Which problem are you trying to solve?

> 
> So move the phy, phy-names, wake-gpio's in the root port.

Is there a reason why you've selected only these properties? Is there a
plan to 

> There is already reset-gpio defined for PERST# in pci-bus-common.yaml,
> start using that property instead of perst-gpio.
> 
> For backward compatibility, not removing any existing properties in the
> bridge node.

'don't remove', rather than 'not removing'.

> There are some other properties like num-lanes, max-link-speed which
> needs to be moved to the root port nodes, but in this series we are
> excluding them for now as this requires more changes in dwc layer and
> can complicate the things.
> 
> The main intention of this series is to move wake# to the root port node.
> After this series we wil come up with a patch which regiters for wake IRQ
> from the pcieport driver. The wake IRQ is needed for the endpoint to wakeup
> the host from D3cold.

This should have been in the beginning of the series. In the next run
please include the functional change to prove that this is enough and
that you won't have to restrucutre DT bindings again.

Please include the note about merging order. You have to mention
explicitly that DT bits must go after the driver changes. Ask
maintainers to provide the immutable branch with the PCIe changes.

> 
> [1] https://lore.kernel.org/linux-pci/20241211192014.GA3302752@bhelgaas/
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
> Changes in v2:
> - Remove phy-names property and change the driver, dtsi accordingly (Rob)
> - Link to v1: https://lore.kernel.org/r/20250322-perst-v1-0-e5e4da74a204@oss.qualcomm.com
> 
> ---
> Krishna Chaitanya Chundru (3):
>       dt-bindings: PCI: qcom: Move phy, wake & reset gpio's to root port
>       arm64: qcom: sc7280: Move phy, perst to root port node
>       PCI: qcom: Add support for multi-root port

This order of patches suggests that one can merge DT bits before the
driver changes and that it will still work. Is that the case?

> 
>  .../devicetree/bindings/pci/qcom,pcie-common.yaml  |  18 +++
>  .../devicetree/bindings/pci/qcom,pcie-sc7280.yaml  |  17 ++-
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   5 +-
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi     |   5 +-
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |   5 +-
>  arch/arm64/boot/dts/qcom/sc7280.dtsi               |   6 +-
>  drivers/pci/controller/dwc/pcie-qcom.c             | 149 +++++++++++++++++----
>  7 files changed, 168 insertions(+), 37 deletions(-)
> ---
> base-commit: 8ffd015db85fea3e15a77027fda6c02ced4d2444
> change-id: 20250101-perst-cb885b5a6129
> 
> Best regards,
> -- 
> Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

