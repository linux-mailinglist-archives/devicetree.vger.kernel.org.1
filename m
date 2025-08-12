Return-Path: <devicetree+bounces-203616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 279B1B22167
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:40:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA69C1B64760
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FDFA2E4244;
	Tue, 12 Aug 2025 08:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SgNbkgDq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774602E282A
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754987500; cv=none; b=aPUOhINJZ/D/2OQJNVPgCAGZpFyb1eeBPbREs9VofVjgHtL3+vLABOdBe9PgRUTmEEMfIe4ZjkmAovvix15d/bRr0ZTwwfxZZIAjiDdf4c3A8PNWQbUH+wvyiFNNiESv0kmUjwNDMm7rgtmTE7syY+drXpePdWIy2dwji+8WDcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754987500; c=relaxed/simple;
	bh=3FmUf3Hp30CS50cj34xwa1ruTjcKGUB3eCltwPgVm10=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oLPp8tXCCpmQMm13yo4vI60HjUXYEShIHmq1x4yJj5cTK+62cUH21+njMyXTb8gO0MKsriDmvuZ01mkbKAKRj4md1WMF6rdELH9qDyKsX9YMP4gRzRfq7Qlby9zKY9B1pXM6gksJUkc54y9HV9wcHuv2xeyBAy2y1E4VluK+xLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SgNbkgDq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5KxgJ021654
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:31:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GWWmZRGTBwubXompLpnOIPrbDAFgCGljYAqe2x5V7LM=; b=SgNbkgDqi7XDEWln
	RZr9DtJhRQpkMIQ5zjVNGLh+FVDF90W6U5RfWZPcG3/dBZuXr+V1Xevvyl5WYipg
	e6hc171zifFPw7sZ86EXhisHppXmm3jLNdFct3Mdi+jdT6w/1rpmJzh8uI2Emd5E
	xacGeF/n4bxZdd337sULWgy9EWhsygD7qe1CAzKB+K4HDU3HGDtufNjSOQPIPfA2
	8bMeRSz64+zHIsnnGwgU/rGdCQM1cnqdxlADMSFoFZPouj6JReE2LR7/MCIrf9P3
	mMigss7rehYm6kdb/kN9LbdhBJ/aG6EnycSBoVQhEqWFOZZe5DtKvXz2byxGD18K
	i/nEvg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxj47d42-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:31:38 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-75ab147e0f7so5130076b3a.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:31:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754987498; x=1755592298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GWWmZRGTBwubXompLpnOIPrbDAFgCGljYAqe2x5V7LM=;
        b=T4Jym/1WgHhAXZtLAuQDRrNa6JKMx9d79o7jySi0mBrfDYbUzsLOfAgyySpIuYuRz/
         GOPRgup8FdVi2/7N3kZgjtAaNjk4Xm/8kn30zMOEppM6ue6ClYr9MS24G+Gg16MsWRUh
         B7wlUKh9dIVpJPYiy31JueIRN9j5FRRNx9FHTethzDwTTYFi/HvZ9cP3tRKN8CUgvYrk
         XRRrQJG9K5SPtagEv9MR+u5mgS0k5KqdmflP8k/QEdXdCQJE4Te6r4JXZzKARCakJ//z
         7h8EQlLK0znLIVUjrMabgmM23dmOdm/GbHrTEdqpIJg7NpVKFmhcetMYhQe87DuU4FTT
         Bpmw==
X-Forwarded-Encrypted: i=1; AJvYcCX9spP3c6QIytaXrEGki+Q/WZAB1lC2aoLljXmzh9hCO3IL50urHZ6Ko3mnqXynSOv1+Ppt/Kh0OWP8@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd0/4mySJBEwykNaezocXYg4oJDbJbR93hXJV6Wqu0t7BItEJO
	q0HC1O5O8LFR2fXCJkbiWunzuIn+dQ4EcPzjoc2iLAxtt2VYXi/wleSQiTSag618GhJXPS53NSh
	7ql9Fm4pYPFedtRgsAsQqqgfx4iOKC98Ib4uPScaFCpaSeTnOIuPRPFte4yLy5K+c
X-Gm-Gg: ASbGncvZU5/HSt5g5bpqKbzjsoBqKbWz+mpEEpDohi4+gQ2TpyC7TW7XYn3Q4xTxZrH
	7nGcaA+dYjDRgU8PEH1+d6JdkUYYPnRfpHd7DnGwOIaw0oGOXE0pCLkwUCwo3KI861W4ypO1kCO
	blqB7LoHELEo115W3rjIRrY1qUeV1ZOvkpDlltxOBM96PWV6sWb4yQnO2IQdlvozO9UEL0tcHhQ
	m1Xcww4+pPMlbWkDXswYzR7JGnR7G4mSuyGIIXKTQMTwnvzpDT3rwuGLBPgDaoZh7fmhp3YK3GW
	SJU9CgD3rQ/JbkkVXytmr0XI0sTPcWqA6KZe0yDC5uON2qM3rxjQDJEe/oVG2uWPYZjsNBp9n/s
	HzX8SeXHxaCX7BJPttL9tD2yYrE/c
X-Received: by 2002:a05:6a00:b86:b0:76b:f318:2d41 with SMTP id d2e1a72fcca58-76e0de53d0bmr3500002b3a.7.1754987497674;
        Tue, 12 Aug 2025 01:31:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMlyo0ZIuqdKYZz9q+kCc6x7EFMtEPl2fYK55x280gUgeOGPCcKX8cqv6uh3bg01xS6rsZvQ==
X-Received: by 2002:a05:6a00:b86:b0:76b:f318:2d41 with SMTP id d2e1a72fcca58-76e0de53d0bmr3499949b3a.7.1754987497144;
        Tue, 12 Aug 2025 01:31:37 -0700 (PDT)
Received: from [10.133.33.66] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce6f319sm28833238b3a.18.2025.08.12.01.31.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 01:31:36 -0700 (PDT)
Message-ID: <e9c9005f-dab3-4bed-999d-9a7563f5f2cd@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 16:31:29 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
 <20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNyBTYWx0ZWRfX0u09LS4knkkA
 dlqGCZnDA5E+Vq3f2Bgx1rGbqn+b67oaueR+nsZL5W0eUTjNX3XYC3hgnFDn95UMRkPcB532x9j
 KTOjnlGZtDWqoeMKnDucsIO5tiuXhNPEUyUZ9bTPq6yczwQGWyIIp/GTbaw5mqD8f9PUjho0UG6
 AdYhErixM5LViElhXUg2dPqisyrIloGrNU3g1nKz3Nt5rF5AoQ4SGmBlsdGOxOBXpdKuhZ2i6uF
 emDcBWGYFlF+J0z+kj1btY+hU8G4DkONe+ku8vG6azb6zrmWbsT9iWjJGgQCX1b7wMI3UYqf3XG
 u2ACTZXkJ9OrxQAA2Aj6yPo1GLW03da9hDSv3z8ABlTPSsbxIunqDN1MhvNVWZ5MoPyLXwM3Rmt
 Q+qTuIXU
X-Authority-Analysis: v=2.4 cv=fvDcZE4f c=1 sm=1 tr=0 ts=689afbea cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=FKzoDJ5KnSRyQqape44A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: 6pkRMdlyPJYf-7IV4mZ6OfdEQpN35wWn
X-Proofpoint-GUID: 6pkRMdlyPJYf-7IV4mZ6OfdEQpN35wWn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090027


On 7/25/2025 6:22 PM, Ziyue Zhang wrote:
> The gcc_aux_clk is required by the PCIe controller but not by the PCIe
> PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
> be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
> gcc_phy_aux_clk.
>
> Fixes: fd2d4e4c1986 ("dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY")
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index a1ae8c7988c8..b6f140bf5b3b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -176,6 +176,8 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x4-pcie-phy
>                 - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>                 - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                 - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> @@ -197,8 +199,6 @@ allOf:
>             contains:
>               enum:
>                 - qcom,qcs8300-qmp-gen4x2-pcie-phy
> -              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> -              - qcom,sa8775p-qmp-gen4x4-pcie-phy
>       then:
>         properties:
>           clocks:
Hi Maintainers,

It seems the patche get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

