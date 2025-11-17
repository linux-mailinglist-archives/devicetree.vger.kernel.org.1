Return-Path: <devicetree+bounces-239410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEE8C64981
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:15:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AB1744E407B
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B4927EC7C;
	Mon, 17 Nov 2025 14:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VwW+gQ1b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WMT4byCu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734C423ABB9
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763388709; cv=none; b=Z3l0WUs0qV/hu6MDDHo1aqRNXCnfslhL+ZufniLuoG4bBWCF3ZkBKduJf7qwVLJ9c+oJBQaXTNaavulIL50X/YXBtmVGWdxFdbLb0lZxCH5dFjGaJgtiOddH/wm+mjMBuSPg2aC5nTnz4u4A9GLHUEF508Gi4zLheIPoleQfso0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763388709; c=relaxed/simple;
	bh=SU7heSg5zapbqrEFBITwtgnp1Q0ghfjt2PmWzfpMmCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mgkOrd3s4vIxJzz9vymPFB6DyqCff2uRRhQpnN+d9xdMLopqnle20AzHJCdBDUGH++rDtx4ti351OMtSBTMPH1Rul5sn5WF2GV+OQRLujdj2Cs54gZwhuoRMYVSOC8SqugDo+IxpYWnveiL/tp1NEozIbg7bon2T7h+e1otcJWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VwW+gQ1b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WMT4byCu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB64qH4107469
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:11:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j31M6W20uEBiKJiOsyxMXe5wI1O9DbfibFtCfzdK93w=; b=VwW+gQ1bZKZ4bchC
	0eJAWTU0VhFxfW1xuIn75ZsOvLyxTQrNZ1t8te6kxDyjM1hZVtlBS5t7caEgkLne
	1cVCEybNvgdIr/8kSF6m8DwZxbJ5HES/sOt8tYmLsbJ9S8TVboE/HkX8gceqA1TO
	/My0IsHahPTUpNJrusBF72DkQ9NgV0eAKTvwYwzIR3Gl9O5KDpIeQiPu8RlccaUH
	a54WhQPVksyZz+wN3Ip73+XBZo6poBe/3quHKAJpSr5j7RGUIS/YOAzBZ4J1dxi2
	6y/XlSMOATHyo7jb5IgPoEfEy8fUy77ri1l0VTdpC4cwlhRQvvpNx5UhHurjLZ+3
	1gEbRA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2hp8g81-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:11:46 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9352023accaso206002241.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763388706; x=1763993506; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j31M6W20uEBiKJiOsyxMXe5wI1O9DbfibFtCfzdK93w=;
        b=WMT4byCul2HyRC5YlAMfKNgd1eGaTwW8okgHbgsIYiLjLumNJKlh/acDrblNaGdVp0
         ODTfejtnGdD/qN0Lh2du/w1+3tr5jYxpvPYIKyiO/qYtqph6TEaLFMYtp5qnB4FOnXI/
         7BX3qgDiiIxBjFTSqst1wJFpNl3ZhbZvDoYT74rsaBPVG87Ecp9T7lW2ok3lOy+ijpqv
         EL2pi2y2lx5PTN7dAc9+fmMEKVtJ8dxKDo5Yc6sK04NPzObXxNicK3bR5i7OFhYsScM6
         Z6PK57HqIHtzv1vAHMzkaBLI4TiW2/BimS6q/ICpz0KsqUxwOdQk8/DLoQXFb7Sduten
         EBYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763388706; x=1763993506;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j31M6W20uEBiKJiOsyxMXe5wI1O9DbfibFtCfzdK93w=;
        b=fTFDB1WafFUD4ijzKGa19pp3KuahA4osJwXXOQZM++eJv2tm8EL1Yy266ZBSblLcKV
         gVZPI06M145wJoHrG2/Q778pOdwKadUiFc0ud2SRRCeQRbuuCnUcpvXxH96hzYBMXvb7
         zCoprjRHt61Gh0MqLcasaOOQm8t56AJ0/mRxVBYpdEX5yWT6tYiqtpldSKH2+tkftjNO
         a51quUpDtibL3A/bMFaAI/xwxlc5EOLa+g3S9VwuhUZq8G18Zotfbw/NJnjtsfPkLT97
         GUtm7lu/4RZJLEvLpAqRGJUnvg+layV/FhIIurqFWl+/3Sp2ZWqXogNxgJMnHB4GLJXZ
         DgFg==
X-Forwarded-Encrypted: i=1; AJvYcCVW+JqtnezBjfyQq9GjAmEmYr2yUjHE0CHMq7OWs1CbduXEKRLXsApcAZSEa2xxv0Z5IdfQ6VzMt1JP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx83C1zoiNLbLdnbmOIQKO+3f31LJbNcMBu3pDZE2dBKxrSP8bA
	9yoB6uVuuAkTfS6nBKgMv+8ERpKZ3Np0hhfYHPUS+78pbiYs858wqAaVcWX136tadoidPdTGZ+F
	hkWCpyOyvABIqdKeCdMUCWsP7RldudxAr55pDHJjygih/wZ6yXZrVykJdzHGM4l6L
X-Gm-Gg: ASbGncuBwtPc3ugtaUmlko9QjTtK3IObKsmWNCIFP2ZXt7IBWu/J/yppwIL4qcdZrbR
	xekBqc1LsEdhSU7G9c/aMQsVwvd67YaCjqTKNqLVISPQdmt5E5P3mch10Gwt0GKNvEDqzHYkYdi
	7J33/cVpBRLWBTPWM42FbJtvgi8O2+wMCuFViDIKa9EP52m14xoZ4qPerJzUrGOPPFKg5b+6QUy
	JsvIl3y7tnQLdVGcnjtAsBvWX2s8Tps7pIihQVbvHaK6eUWANQHB8Wh0ypLudfu+8M1dbAnvE8W
	Oo1P6yL51/A1NQmN5RPGzIy2Z17ebx75yzYKLAOBDXBwPDe6P8xgXfRwF731gQ2E2NEB30TkRtG
	RKP/Rb+2P+BmMippBkElvl4D6Sjm9ZIOC5cz6LdCQVbSxivsG9zCst8XQ
X-Received: by 2002:a67:e703:0:b0:5db:ce49:5c64 with SMTP id ada2fe7eead31-5dfc85a1070mr1838375137.5.1763388705799;
        Mon, 17 Nov 2025 06:11:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IENBd0uWmCrys3Bjr4M1SOKmS2/3SUY9Sd2AfbAO69+iQX3Prr35SDtghb4rlEALS2PgI5ogQ==
X-Received: by 2002:a67:e703:0:b0:5db:ce49:5c64 with SMTP id ada2fe7eead31-5dfc85a1070mr1838348137.5.1763388705349;
        Mon, 17 Nov 2025 06:11:45 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fdae69fsm1066684766b.51.2025.11.17.06.11.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 06:11:44 -0800 (PST)
Message-ID: <e2d50441-bb32-4a66-b00f-7c656c8817e1@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 15:11:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/20] drm/msm/a6xx: Improve MX rail fallback in RPMH
 vote init
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
 <20251114-kaana-gpu-support-v3-11-92300c7ec8ff@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-kaana-gpu-support-v3-11-92300c7ec8ff@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: a2BvNVgsulnyW479AWM3_jEDR5XzBB3S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEyMSBTYWx0ZWRfX3vtDbM5jpkXJ
 1EilALwN3PxZ2Ui61of10yXXBvElzmgteyF/A9oaxJRQR9bzZxWwu8ATGdLWWCl9CGaH+dVcKJt
 Etm8d9AUujjFwX9KF4l1nYS6ok3tZPzV4AZeroly1ENkFzl5HwEfn6CpJottn1cyzSORdoTaT/m
 vtkjVGuZkGeJuLcCmb8DHZF4q1fRAIgIuuR9Cf4h5lEb4uSk6XHJbGpTdFkqXy3YjtYjop6Youo
 c9BFtCtNKgkLmdQvnAtVTrlFsGDPBTa+SFNZVbKpVguqG0j0KqbD1KsSBJiCzH0ggVs063iH+Db
 sSwgjMiCuLrT64KsukU2cN6GcD98EpnyG2Q/eRFaUwg6MkRX1NcGG1CMj2k1ssACbr4azNLgfRS
 dmgaw5HxGpzf0o8mhn5OQWhSRAPypA==
X-Proofpoint-ORIG-GUID: a2BvNVgsulnyW479AWM3_jEDR5XzBB3S
X-Authority-Analysis: v=2.4 cv=Y5L1cxeN c=1 sm=1 tr=0 ts=691b2d22 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VffenE3n-DyGx4saXfUA:9
 a=QEXdDO2ut3YA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170121

On 11/14/25 12:29 AM, Akhil P Oommen wrote:
> Current logic assumes that the voltage corners in both MxG and MxA are
> always same. This is not true for recent targets. So, rework the rpmh init
> sequence to probe and calculate the votes with the respective rails, ie,
> GX rails should use MxG as secondary rail and Cx rail should use MxA as
> the secondary rail.
> 
> Fixes: d6225e0cd096 ("drm/msm/adreno: Add support for X185 GPU")
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

