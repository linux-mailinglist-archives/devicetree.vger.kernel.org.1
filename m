Return-Path: <devicetree+bounces-183586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9970CAD12F9
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 17:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 312CE1887D53
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 15:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D2320F093;
	Sun,  8 Jun 2025 15:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cVuFddRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5907D54769
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 15:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749396181; cv=none; b=DTZBYOPq4gjBwZF9T3DXi2dG80YxU08Mg2RVUH+KJpp4biVcwKZKaEWC5gAMFW/mUdbgKRWTiYFZrcytR9u5ZLcotDT3v42xsf3a3nyt1n02RdpmMIWMCBx0j64NJjeJPQ6qhwzg90jED9LdKico2fqkBKphcBEYCmaEvu74eek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749396181; c=relaxed/simple;
	bh=ptQFao/OofQlTfqLItAwl+GhxtDOI0XRBcE6Lieou/k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uBPfnv3aeD6Xn0FslSAqSHoLN3nKZbrDHKi9HKHJ6Bv64oPjyL3MwZwIC91tRaDeaRhemX8GFuHPwNmHQSJYV5+qb+8m8z7qGpg6eKqnF2JYJNwBwFtxG/mIVHWs832z1L6chPb4kX7SVT4mdAaROxzSeMF/Es56UJsLhmE3uAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cVuFddRP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 558C0Pvm007932
	for <devicetree@vger.kernel.org>; Sun, 8 Jun 2025 15:22:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	13P65ulnafQqWcDpy1/wER8wngffFs27twU25vBaqvs=; b=cVuFddRPlSAGRaz1
	T5lZpRUwacP3P7VOp8cw+vUU5FaUnLcX1hx7O6T+R+d2lJs4symDIKwM4dWakOIe
	hPh8DtJ9CFRqUMgZknPDV0CveDVL04DdQ9tAwYc5qjPeGBBdcq8ZwcacNL1Yet7t
	KoFncOBxCUdCJjpOcLFsIwms0v+JxX3QQf/57DGSpZ+zZe9V4JfmJOoav2PV/ee6
	PRKZkcOgeD603ZsOcULghJMHz8/TJ9Q+ewxAfU82jkzsKc9jiPYFW6johDAxh+15
	lCB2NauGw2Y15s7WuBuf5ilsJIR4yi56pNbf44xF4KxcJKs51OGg8yBVyxtNjjAx
	xFARsA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ekpjytu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 15:22:59 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d099c1779dso658569285a.0
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 08:22:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749396178; x=1750000978;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=13P65ulnafQqWcDpy1/wER8wngffFs27twU25vBaqvs=;
        b=weC87K9Bd7vP+AsbT9FDLNP1Xk/xX/b/nY5jFO8dHwZ5y9SDCNzee9iRi+p4y9hP+h
         CMDEobTnHlobKD2Z8cGPN5W/qRLv4yvmnF8WzuX1DN+nfOYd0d1VO+NQpVOtLSf6gf7P
         sGMIfxnJTph+gMLLpjqOIm40/0F1PASvsWL0hySjtSTun8LFmrOeIQOhLmyuTjo34zE5
         Z9WDR29IaZiW7uviSwTWNQq9D6HPIo69kBBWjroaZFjN13zSeC+Lgkjhn0koxCx/htvv
         5U/g6MPIArafHMXEGe3sm5jvIsXBg2vMW6AFS5hQ92coCh/WiV4zOEfnnXH9IMbLODHY
         FshA==
X-Forwarded-Encrypted: i=1; AJvYcCUucG3SAR9DVzngmLqkhz53E+TGvajezfqChynYGGguyckTc9jdCJeO5ieHwJKL+jpyJn2MIV9j9Pvk@vger.kernel.org
X-Gm-Message-State: AOJu0YxXvPH0zElSl4LtWpwiZHQ9nfWkrVx1PpIIf7qEfnYArrM31Ko7
	/Yiliawf6YA6Azj4zcx9GiuqWOzMbHiGtBpSKnCg91cuVy9JXIsRicnnRfRXXTI06nYNCoIlnsG
	RnTiVuDDalINniBGcMqdR4J1Gl04kcTvavWhlTi/jHX4eJbtlT6q/52vR75Z/CnSx
X-Gm-Gg: ASbGncsBPYQWelv1ZVnqm4c4VKWxBhY0TX/zoh/BXrdKswHt1U5L+lte/VyEBno5zHs
	U1MS6mID4NQevKjC/RktWvfxJEXvIHvlDTIVE3eQzvTsOQXpgT7QFLNfsRduUOdUnAW27z1TabR
	vDcE1F8ZQwQzeFbRT0g8nnv15tw5KeYlTKi9Z8jDOP18ys/oH9Q/dUPz8X2SQwPJS7jI/0hLZ3A
	AgbOojPCfMBcIreet1UY6JI4NjcVXsG//YICLWWX32T+b4U5SelfCWAZYV2fN1cVhXVR5xhOXK6
	cYmwAiA7JaLrOt7/2C/nIVaN/wB9GYhk/J31LFTd3xarEzIkADXF5QBAR5ht5hjf4K8US3WETZP
	YBALOlBgmhD9EPA==
X-Received: by 2002:a05:620a:4115:b0:7ca:f3d0:e7c8 with SMTP id af79cd13be357-7d229902399mr1639045085a.52.1749396178128;
        Sun, 08 Jun 2025 08:22:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnSqt4f5d27nfmpGHazAr/AHomdNBLRlQ7g+WSi7FPRafeIv8WYiG9jip5qK2a13UFctyKXg==
X-Received: by 2002:a05:620a:4115:b0:7ca:f3d0:e7c8 with SMTP id af79cd13be357-7d229902399mr1639040585a.52.1749396177705;
        Sun, 08 Jun 2025 08:22:57 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5536773896dsm796917e87.254.2025.06.08.08.22.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Jun 2025 08:22:55 -0700 (PDT)
Message-ID: <42a69fa4-48ac-4a2f-a2ff-b4e1fe3a228a@oss.qualcomm.com>
Date: Sun, 8 Jun 2025 18:22:54 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add GPU support to X1P42100 SoC
To: rob.clark@oss.qualcomm.com
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
 <20250607-x1p-adreno-v1-3-a8ea80f3b18b@oss.qualcomm.com>
 <wayrour74vlli27xrtxi2ff2v7q7ye2yknmk2mjpur5ry5gruv@hhh2mdb6lw2i>
 <CACSVV03X5EyAb5yCPDn1ot8vOFV_dKG7f6+yO5t9srr31AiUKw@mail.gmail.com>
 <rwjc7zkitubi6cdre5a7owmo76nopavkgifvvn6yq2mv2hrth4@bhwbodchd2gx>
 <CACSVV03mNkELWDB_uxdjEa5GeWZUY=42O8QG4qTrg6zquT1Bgw@mail.gmail.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <CACSVV03mNkELWDB_uxdjEa5GeWZUY=42O8QG4qTrg6zquT1Bgw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=JcO8rVKV c=1 sm=1 tr=0 ts=6845aad3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=qMk0qIXPt1Ot_Wd-wSIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA4MDEyMiBTYWx0ZWRfX4KOOgVCsOGeY
 1B8JhXgR+CcrhWBb3aQ8d3cNJ5q8M79U7AumEa/Bnp2JodWNn88qaekdc+sQfnvR6S3plrOVyUQ
 VhmrZRdiDrmx7QB6gep6wjTELE4Xbi0q8onK4rgr3o4DMXOTMkS0je7ooxL+RrBWUn+oW2zV2TD
 UmTD6rhwaLewpx7Qb0ekAUA96YSMijWhy0RMDKoMtdIR5OE/IZY1tL670X+JBayu9pavcYhKgX+
 TNdMRJJOW3tvUDQn/XtvHYa78NqQhW7HYeeRGG2UxIJ1qd0Qgzz4brcS28+XeOdPrpbM/OQ7kqj
 7pKyl/XP0okyR5uezpY3WRkjc/ge1BDFf+PnRuV+/3UTw5eVlEvo7zykd1lgOac6dnoZdhJrfjx
 BebktI9W7GyYn1vbQ0GBioECzVnvRSIeSKJZVAlM7nyukwwR3MoxWO1v6e2ETeThxETJGv62
X-Proofpoint-GUID: kLNa5-N8mivM5jv-J4J3axd7Uqn-nnyc
X-Proofpoint-ORIG-GUID: kLNa5-N8mivM5jv-J4J3axd7Uqn-nnyc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-08_02,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506080122

On 08/06/2025 18:20, Rob Clark wrote:
> On Sun, Jun 8, 2025 at 8:09 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>
>> On Sun, Jun 08, 2025 at 07:10:11AM -0700, Rob Clark wrote:
>>> On Sat, Jun 7, 2025 at 1:17 PM Dmitry Baryshkov
>>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>>
>>>> On Sat, Jun 07, 2025 at 07:45:01PM +0530, Akhil P Oommen wrote:
>>>>> X1P42100 SoC has a new GPU called Adreno X1-45 which is a smaller
>>>>> version of Adreno X1-85 GPU. Describe this new GPU and also add
>>>>> the secure gpu firmware path that should used for X1P42100 CRD.
>>>>>
>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>> ---
>>>>>   arch/arm64/boot/dts/qcom/x1e80100.dtsi    |   7 ++
>>>>>   arch/arm64/boot/dts/qcom/x1p42100-crd.dts |   4 +
>>>>>   arch/arm64/boot/dts/qcom/x1p42100.dtsi    | 121 +++++++++++++++++++++++++++++-
>>>>>   3 files changed, 131 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>> index a8eb4c5fe99fe6dd49af200a738b6476d87279b2..558d7d387d7710770244fcc901f461384dd9b0d4 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>>> @@ -8245,6 +8245,13 @@ sbsa_watchdog: watchdog@1c840000 {
>>>>>                        interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
>>>>>                };
>>>>>
>>>>> +             qfprom: efuse@221c8000 {
>>>>> +                     compatible = "qcom,x1e80100-qfprom", "qcom,qfprom";
>>>>> +                     reg = <0 0x221c8000 0 0x1000>;
>>>>> +                     #address-cells = <1>;
>>>>> +                     #size-cells = <1>;
>>>>> +             };
>>>>> +
>>>>>                pmu@24091000 {
>>>>>                        compatible = "qcom,x1e80100-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
>>>>>                        reg = <0 0x24091000 0 0x1000>;
>>>>> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-crd.dts b/arch/arm64/boot/dts/qcom/x1p42100-crd.dts
>>>>> index cf07860a63e97c388909fb5721ae7b9729b6c586..cf999c2cf8d4e0af83078253fd39ece3a0c26a49 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/x1p42100-crd.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/x1p42100-crd.dts
>>>>> @@ -15,3 +15,7 @@ / {
>>>>>        model = "Qualcomm Technologies, Inc. X1P42100 CRD";
>>>>>        compatible = "qcom,x1p42100-crd", "qcom,x1p42100";
>>>>>   };
>>>>> +
>>>>> +&gpu_zap_shader {
>>>>> +     firmware-name = "qcom/x1p42100/gen71500_zap.mbn";
>>>>> +};
>>>>> diff --git a/arch/arm64/boot/dts/qcom/x1p42100.dtsi b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
>>>>> index 27f479010bc330eb6445269a1c46bf78ec6f1bd4..5ed461ed5cca271d43647888aa6eacac3de2ac9d 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/x1p42100.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
>>>>> @@ -17,15 +17,134 @@
>>>>>   /delete-node/ &cpu_pd9;
>>>>>   /delete-node/ &cpu_pd10;
>>>>>   /delete-node/ &cpu_pd11;
>>>>> +/delete-node/ &gpu_opp_table;
>>>>>   /delete-node/ &pcie3_phy;
>>>>>
>>>>>   &gcc {
>>>>>        compatible = "qcom,x1p42100-gcc", "qcom,x1e80100-gcc";
>>>>>   };
>>>>>
>>>>> -/* The GPU is physically different and will be brought up later */
>>>>> +&gmu {
>>>>> +     /delete-property/ compatible;
>>>>> +     compatible = "qcom,adreno-gmu-x145.0", "qcom,adreno-gmu";
>>>>> +};
>>>>> +
>>>>> +&qfprom {
>>>>> +     gpu_speed_bin: gpu_speed_bin@119 {
>>>>> +             reg = <0x119 0x2>;
>>>>> +             bits = <7 9>;
>>>>> +     };
>>>>> +};
>>>>> +
>>>>>   &gpu {
>>>>>        /delete-property/ compatible;
>>>>
>>>> I think, you can drop this line.
>>>>
>>>>> +
>>>>> +     compatible = "qcom,adreno-43030c00", "qcom,adreno";
>>>>> +
>>>>> +     nvmem-cells = <&gpu_speed_bin>;
>>>>> +     nvmem-cell-names = "speed_bin";
>>>>> +
>>>>> +     gpu_opp_table: opp-table {
>>>>> +             compatible = "operating-points-v2-adreno", "operating-points-v2";
>>>>> +
>>>>> +             opp-1400000000 {
>>>>> +                     opp-hz = /bits/ 64 <1400000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L4>;
>>>>> +                     opp-peak-kBps = <16500000>;
>>>>> +                     qcom,opp-acd-level = <0xa8295ffd>;
>>>>> +                     opp-supported-hw = <0x3>;
>>>>> +             };
>>>>> +
>>>>> +             opp-1250000000 {
>>>>> +                     opp-hz = /bits/ 64 <1250000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L3>;
>>>>> +                     opp-peak-kBps = <16500000>;
>>>>> +                     qcom,opp-acd-level = <0x882a5ffd>;
>>>>> +                     opp-supported-hw = <0x7>;
>>>>> +             };
>>>>> +
>>>>> +             opp-1107000000 {
>>>>> +                     opp-hz = /bits/ 64 <1107000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
>>>>> +                     opp-peak-kBps = <16500000>;
>>>>> +                     qcom,opp-acd-level = <0x882a5ffd>;
>>>>> +                     opp-supported-hw = <0xf>;
>>>>> +             };
>>>>> +
>>>>> +             opp-1014000000 {
>>>>> +                     opp-hz = /bits/ 64 <1014000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
>>>>> +                     opp-peak-kBps = <14398438>;
>>>>> +                     qcom,opp-acd-level = <0xa82a5ffd>;
>>>>> +                     opp-supported-hw = <0xf>;
>>>>> +             };
>>>>> +
>>>>> +             opp-940000000 {
>>>>> +                     opp-hz = /bits/ 64 <940000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
>>>>> +                     opp-peak-kBps = <14398438>;
>>>>> +                     qcom,opp-acd-level = <0xa82a5ffd>;
>>>>> +                     opp-supported-hw = <0xf>;
>>>>> +             };
>>>>> +
>>>>> +             opp-825000000 {
>>>>> +                     opp-hz = /bits/ 64 <825000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
>>>>> +                     opp-peak-kBps = <12449219>;
>>>>> +                     qcom,opp-acd-level = <0x882b5ffd>;
>>>>> +                     opp-supported-hw = <0xf>;
>>>>> +             };
>>>>> +
>>>>> +             opp-720000000 {
>>>>> +                     opp-hz = /bits/ 64 <720000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_SVS_L2>;
>>>>> +                     opp-peak-kBps = <10687500>;
>>>>> +                     qcom,opp-acd-level = <0xa82c5ffd>;
>>>>> +                     opp-supported-hw = <0xf>;
>>>>> +             };
>>>>> +
>>>>> +             opp-666000000-0 {
>>>>> +                     opp-hz = /bits/ 64 <666000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
>>>>> +                     opp-peak-kBps = <8171875>;
>>>>> +                     qcom,opp-acd-level = <0xa82d5ffd>;
>>>>> +                     opp-supported-hw = <0xf>;
>>>>> +             };
>>>>> +
>>>>> +             /* Only applicable for SKUs which has 666Mhz as Fmax */
>>>>> +             opp-666000000-1 {
>>>>> +                     opp-hz = /bits/ 64 <666000000>;
>>>>> +                     opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
>>>>> +                     opp-peak-kBps = <16500000>;
>>>>
>>>> This looks odd, why is it so high?
>>>
>>> You want max bandwidth on max opp
>>
>> Yes, but can it actually sustain / provide this BW?
>>
> 
> I'd have to trust Akhil on that one, but I have no reason to believe
> otherwise.  Just pointing out we've done analogous things elsewhere
> (for ex, cpu bw for sc7180-lite.dtsi)

Ack. Then I'll wait for v2 with no deleting of compatible lines (a new 
line here would just replace the existing one).


-- 
With best wishes
Dmitry

