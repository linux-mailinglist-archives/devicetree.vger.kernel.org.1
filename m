Return-Path: <devicetree+bounces-227330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9507BE08D9
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:54:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 183A03A79F3
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F9D30275F;
	Wed, 15 Oct 2025 19:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nVZYanpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8EB20E00B
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760558045; cv=none; b=Dv+mheRIHcDLw0RN7wDw3wWvvIWoXheFqdMs4pogsDdukuumtgyPxjS98JGutxVa1SDV4AOu6soWUdx4cbOBvmics84gf2+cZ18PMXAaXnq+hfBcob3x/WUg2oxZ6VAn9uTgzNVyr+Oj1xCy5F+nRLbunrUKCSl06vx21N5UJI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760558045; c=relaxed/simple;
	bh=E1mSK4DtRW376aeS4DLRibG/tHG9H4wmvFypBSpxzc4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=usOkft28IxvOuXjYq8DFYhO+Lcfmhnp9k8zw4tdXtwJcjuQCmmV1I9AEEuk0XAuaI8BKYdzqz+eyCAqmDrnqJ2MhQePS2Z8Dvmemp1qDBwWA+IqIMRpmTDax1PFTltswhQlfZbgPwxd43OSHhvRAhK3yWccKhg1C6nMd2JIUwTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nVZYanpF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FJDuw5017425
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:54:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TX48lldHpN6bC+BPsWUhDcw+
	OVmNzRgnU/ggfqvvlng=; b=nVZYanpFHB5dOiVP1dsdCSjjhIlOC0kEUr97Jx7C
	/WcKvaPOf64FyR0e6cP8bPTq1KSwNxBz4wmI1HxXL2duvnxsfxidpqJVz+jGV/eK
	3JJ8t6FoQTH0tMiWbC9ScHo5ZXqW4OEFhnWvdtL7SFEIOrSfjC3cIq0n5SwV+BD4
	adUsCGmBZjzb77LGrYxE73acB/LG3SP3RA2g6W8JjBzcFG66db4Q2XwU/aI3gCpS
	3EyAeacqhnXb/o5E2Q62vpAE1+HW4jOvqb8BDrp+0tGxqo8bALR/3GwLPA0Ck46i
	mqCKL80mjxSjdxLIm44c36eDcRKsw1cNwscz93G1u8THyw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rtrtapg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:54:02 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2698b5fbe5bso140837345ad.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:54:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760558041; x=1761162841;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TX48lldHpN6bC+BPsWUhDcw+OVmNzRgnU/ggfqvvlng=;
        b=j+Vt3IUt6dwNaoL5vlSyEbLQTV4gs0hsg3qMWINZ4crpNYR+8wuHLtGrVF2h7X/CrN
         Oh9ByK3k9XmZelaMWvmPS84IzFHVCvdAi/+y5jQNLFd3dBvdcX5jbk6koGWfRcPPA0lN
         l8kUUwiT+EUiI3VmExMkO01LuZt1VBtv5IzLop9TearggQ6cvgK5Z1CkNZkwcxS/UKld
         l891DqrkgblIrvrys0kzUSYtwh369SoKQaG9+evIq1b29xTPEqrZAB5iIA5vkHMPb7LI
         xpvire7jbJhp2+Vbtn5x8TxrlwOZpuLcSxiqOY8rNq+2C9JsimNxMEwuBtqkIa2HPpD4
         009g==
X-Forwarded-Encrypted: i=1; AJvYcCXMilySjG9lTmUgGv966WixZXKVPgUc/FAgZpl5wI/Dv3SHylh6W6yPrZfFKkzMzU/jEXUhbxK0X2UB@vger.kernel.org
X-Gm-Message-State: AOJu0YxU6sW/BOXy7cVkXTEbp/Z/11VbRKnsdDSmicJqFtrRT5m7yCor
	JazBVSeyzwi06Vm39LSjy7447Rx4/X0zQVJE/gyDCnISqRh4szPBJz8q8V5G/wvfykQ2o8Gyk2C
	AqaoAf9wbI02fslpUA/HRcHng5Ud2DDkTPyMWTe7vtisu5fj2b0E8H2iQflbeAN8uROnIgrypm7
	yTqdgwliAQvwiBHs0T9PKljptDVPj3zVUscd6z+XI=
X-Gm-Gg: ASbGncvriW1Go3e3MDpX5mdrCRKfU3edXY3nR9j3aJDYF9hfFDhb5bwt6TsISdo3Fkp
	oqtP1he6fvf/6no0QO84qWKKIWGvW3Rh9PRShS88UPotdB9GmwhYZ9pV4z38T67xbOL69oQLLQi
	OAYQOhTRjZrAVlCwn9/rUJpDGx6fuktvTJLfK6Mk7sqVo1ye/+nB+EyYDCMY0O5krE/qibf2Lu4
	o2MZpHcdaUQyjc=
X-Received: by 2002:a17:902:d481:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-2902723d3e5mr422269115ad.18.1760558040721;
        Wed, 15 Oct 2025 12:54:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5z2DxBR/Z5Mpt5OTV9XjMmY6/lFsbRWdHvRg5cMZlYIBEwXcQoXzMYM+A2htVGGIaWs3BTv95RvDnImPGt6A=
X-Received: by 2002:a17:902:d481:b0:24c:7bc6:7ac7 with SMTP id
 d9443c01a7336-2902723d3e5mr422268855ad.18.1760558040268; Wed, 15 Oct 2025
 12:54:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
 <8828946b-3979-4e7b-a11c-740d8a6253ce@oss.qualcomm.com> <235cf6b7-e758-4d16-b5a1-182cc869b2e4@oss.qualcomm.com>
 <bngdsqmcxtlolmwr4it3wy7rldikzffgwwuyj443dc3v3ilaju@eiveujsf4up4> <6b6a6cd1-faf7-4ef5-ab24-171a59c99085@oss.qualcomm.com>
In-Reply-To: <6b6a6cd1-faf7-4ef5-ab24-171a59c99085@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 22:53:49 +0300
X-Gm-Features: AS18NWAmm9hGxMXkOPorFbS6ZmuVvAN5j6Z8_fAoHeMhwo7GGfmhMgwew6Gfwwo
Message-ID: <CAO9ioeVdFU_+yt1KuF87c9S7Tt9Q8goZGnrGaz7NohKRPjp3NA@mail.gmail.com>
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
To: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: Vu1LqlOjJT5IZR5xwn5P_Da_ZzoZdZ1A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAyMiBTYWx0ZWRfX06wWkMd6nhLw
 rKF1SAh9UNzxxwnTxEVTm1UGdDlgFkEQ7f+GgPx5Jtj1hDnRQ71KnvCuG97LdUY8POKvQ67TcdB
 MHCSVyy5wyBx4+iELkiNnHvXiPReNwinuUYyNAaB+Q08eZhLivpOS4/DoUF6tWqQYU5SSUA+NUe
 P7rQU/JpTvI3uvUaB00fnJ8MgjW6pGGHvqED8TmKxFxN4hsUIH4OkDIW1PrnfN0xsY2x9tSEfqI
 wMUTiFhLHw/MaH5IHEbU72DiJOwJkN4BFR/jPHf0WC9txsEyw//fCzwDHZYIinn0rvIl/OF9PHq
 QXgqGqN8Hby91nUiUAd3UdT2VRxqCVrywUb0yxZyVqTAemdarGjS5qysl6YiD5riyopLbj80hLr
 85fH+qlNQlVj6mUA4+j3mgLYdjEPAw==
X-Authority-Analysis: v=2.4 cv=SfD6t/Ru c=1 sm=1 tr=0 ts=68effbda cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=eaa-GZcDK8UfARH1VbwA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: Vu1LqlOjJT5IZR5xwn5P_Da_ZzoZdZ1A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130022

On Wed, 15 Oct 2025 at 17:12, Jyothi Kumar Seerapu
<jyothi.seerapu@oss.qualcomm.com> wrote:
>
>
>
> On 10/15/2025 7:03 PM, Dmitry Baryshkov wrote:
> > On Wed, Oct 15, 2025 at 03:58:31PM +0530, Jyothi Kumar Seerapu wrote:
> >>
> >>
> >> On 9/25/2025 3:48 PM, Konrad Dybcio wrote:
> >>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
> >>>> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> >>>>
> >>>> Add device tree support for QUPv3 serial engine protocols on Glymur.
> >>>> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
> >>>> support of GPI DMA engines.
> >>>>
> >>>> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> >>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> >>>> ---
> >>>
> >>> [...]
> >>>
> >>>> +          gpi_dma2: dma-controller@800000 {
> >>>> +                  compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
> >>>> +                  reg = <0 0x00800000 0 0x60000>;
> >>>> +                  interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
> >>>> +                               <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
> >>>> +                  dma-channels = <16>;
> >>>> +                  dma-channel-mask = <0x3f>;
> >>>> +                  #dma-cells = <3>;
> >>>> +                  iommus = <&apps_smmu 0xd76 0x0>;
> >>>> +                  status = "ok";
> >>>
> >>> this is implied by default, drop
> >>
> >> Hi Konard,
> >>
> >> Do you mean we should remove the status property for all QUPs and GPI_DMAs
> >> from the common device tree (SOC) and enable them only in the board-specific
> >> device tree files?
> >
> > Could you please check how it is done for all other platforms?
> In other platforms, the status is set to 'disabled' in the SoC device
> tree file and enabled in the board-specific device tree files.
> I believe it's fine to make the same change here.

Before implementing something, please, always check how others did it
before you and ask if you really need to deviate from the existing
solutions.
-- 
With best wishes
Dmitry

