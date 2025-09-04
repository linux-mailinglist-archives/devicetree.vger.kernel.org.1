Return-Path: <devicetree+bounces-212617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C52B43587
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7BAB17A954
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45482C0F8E;
	Thu,  4 Sep 2025 08:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JPB3uAve"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2E523B638
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 08:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756974106; cv=none; b=JIIwdvmIMnfXCF2dvxYTVNMnFcZUVpkpeZe3ZfqD55gNSFDPvuuTnUsIYsvRcmyFY7K4A5sJWE9rTwcB7G5GCJC3CMW2WLjxOCAs56U4FATFyIzSTcNwBSRamNIxNhspkw80wyrBOYnKXTSue6o1zMOgdkaRbIg7uhL0KbTu5oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756974106; c=relaxed/simple;
	bh=+0o6nanF+ouPh99kLb7isxJ2NCHwAMGXrJkRklYIDBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cfDi08Ed2SdS7RnK2fr+VejqQVG1PQ2B99T9OVs7BYXyfipxQ0+dzrU9swt4uynV5E5LlPcJEF3PU0Dk/73lil1VEwTTea6wDgzDEPPeUeG/7wbXr7hpn/qSN9NBEV/SZn0Swk4MZPHKVwcuGqTPLzzIH34glBy/krV9L6ITsY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JPB3uAve; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841Eih3005586
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 08:21:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G7vuEYezAclQnGX21qrANx4NW0HHSU2TfxUcHGP8ds8=; b=JPB3uAveMgUrSI7/
	911ArKRLgZ4O/OmBy4WFH/QceijOt6uCIoHlTldWGrpLQzwMsVDRCx663rJKZkj0
	nlv7YjWR2HP/qZ43SQ1FbT1/jcgceLFPlGXEYQ5HE7J3r39cBPZ1rCJ6UW158vs8
	3YuzBzlKlMaT/PGemRUQTo3PRCrwBgQJf9bV6Mds50ncPNxODQwc6WYHcQzNB4Op
	hTYo2KYSgzw1S+4g2kLwbU2vRgTrHLOfVA3S4Ea4qStZ4NKsIpnfwS1cN0660fqp
	sDrTX5gEV2jved0YOZmsL7nP06tAZWmctqQotuKIXcyqu51rTftjFbFUF8oO7tNe
	Ojm5tw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjpqeq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 08:21:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-721eb9fecdcso1529046d6.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 01:21:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756974101; x=1757578901;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G7vuEYezAclQnGX21qrANx4NW0HHSU2TfxUcHGP8ds8=;
        b=eVBJy41SoL+izwLef+mNsxB17viduKGN3EKwCiatZYtBvYgedilLTFsONu0gqMMpqf
         X4e9BsCwYuoyiXzLlomSw5ctWULlvt1gvouNUGS/BDlfXcfwADQF/I2HkwBRNIgapIaX
         CJFyHjewfB7LDp5BFIsdGz25aHF0+8s9s+AHizzXxbldSa1rlvfsjVv0GT0DVOCsaX+a
         43MxHh5jyl0a6TokPoaDS9N66BxOb4YThfvRb5bT9T/Q8NjhHI6FKqNqsetQ0so9z1GO
         GxgbnY63pjaYXEpoJD8i7VsT9L3L50zkjL3kbGx++uAYBjAwvNE4hZWumKckHD7FZlN+
         QRBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaTy0cks4dKalDbTlMq6hlR6oO1TOoYMJc3bTQXiKxUqiu1qQSKDMCk6OMBqAqoDPdqAsVvwXqCzAe@vger.kernel.org
X-Gm-Message-State: AOJu0YzJMJqFxs7L6tB1+rBJNkKEIdx/umT2FEZ7X28vbgC3N8omxn6a
	nkZSLYe4R25UzPbcP+ilItBZi6BCZOKTb1vFNB2Ml21Kqe3NX7cIcpldBVpcpNxOlHy9fNF4wBk
	N0pRrWAUx68jyKVDPITDkXqZEbIKEFRXS0E2zHg/3Iw0vAqv+xLkIDVttc3gqEW+L
X-Gm-Gg: ASbGncsta2v/rHkf4jBU8B9Ts+859AIHK71ckkW8h10+sWpzWTgol1eCURAkfI3Ty5Q
	Bge9Qsm/BtGY5jGPed7WmWov/siBS1K7AmDANJHiRBuEh4f56V0PGOkxxgECYyKvfyW6SWRO0LS
	URUm5hcPF3pRMt6oGHGrqak4RQD03L6AWpRalQeYW5tEzqUMTGXFWUVeWCwfOy2g4kMwzKdP0wN
	OIVEzHxunXw8WCcYKOp5S0vhf+ilAUPYRVUApEqHIjWWdX3YdQIiyPT7Ws/3YwK5ib+gOWCxPuZ
	PWrt4QO/ys5CuEBIkERsuzRA288KzqC6A1AeXRfsiNZKGCMaLf3uJ8MOZn3pUZHRcGZFAArOCLk
	mT+66GrWUiI346VW6CtBdpA==
X-Received: by 2002:ac8:57c5:0:b0:4b2:d4ff:9ef1 with SMTP id d75a77b69052e-4b30e91ece8mr193805511cf.5.1756974101242;
        Thu, 04 Sep 2025 01:21:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhpdB1EGq/rqFX09t8O7MeDdp3MZRYztL04B/dtliw3WnUXk0wRSxWriQ2b/SMaKMgYlG0yg==
X-Received: by 2002:ac8:57c5:0:b0:4b2:d4ff:9ef1 with SMTP id d75a77b69052e-4b30e91ece8mr193805301cf.5.1756974100631;
        Thu, 04 Sep 2025 01:21:40 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0416e878a2sm1087490866b.95.2025.09.04.01.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 01:21:39 -0700 (PDT)
Message-ID: <d2940186-7baf-41d3-80dd-fbc860ac5acb@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 10:21:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/6] Display enablement changes for Qualcomm QCS8300
 platform
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
 <5bc0203c-21a1-4948-96ff-8eae844bfb93@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5bc0203c-21a1-4948-96ff-8eae844bfb93@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b94c17 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=QEN1f650Fdx1fgK6Dx0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: q6ZWxL-aqf7Oc-gNgyx8KnxvTLKr-4MO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX8RSP8T8RNQOl
 xu3sklDusl94IScjNB2cZrGCYH4W/GNm3YJfPI2WBX7f2INRH686RSM7nyj95Fg65UWLU/LLofm
 nREf+MKMpiXnjeJCyZHIuzRkCuig89rvup+7KDB6x7oKLF1gxlajoBXbrhjN5O8gY+lJTj/ynyp
 oTiiak7sv6iY+pNoqqsNEO0eMhRTuQlkCLPdNKuQy6lS0tIcrWF73DOTuqF2KpCoWQoSjKPZNdw
 8Mi9f5KJ4XsMrElxs5t6aO6+g+BR92eBK/XSZ215Z0kkKJnNsSaB8eBW2zZIQMUla8R1I6jUD8/
 bfPVeamCbrJXkAN5eCh9Tc3Fh02VGYrWGVLrGV+b2eT5rYBbszBLfHy2l2cEuU7bOEgx6A+4htW
 gn/IIrOT
X-Proofpoint-ORIG-GUID: q6ZWxL-aqf7Oc-gNgyx8KnxvTLKr-4MO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On 9/4/25 9:55 AM, Yongxing Mou wrote:
> 
> 
> On 9/4/2025 3:22 PM, Yongxing Mou wrote:
>> This series introduces support to enable the Mobile Display Subsystem (MDSS)
>> , Display Processing Unit (DPU), DisplayPort controller for the Qualcomm
>> QCS8300 target. It includes the addition of the hardware catalog, compatible
>> string, and their YAML bindings.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
>> Changes in v11: Fixed review comments from Dmitry.
>> - Rebase to MST bindings V8.
>> - Update the clocks-name for QCS8300 in dp-controller.
>> - Link to v10: https://lore.kernel.org/r/20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com
>>
>> Changes in v10:
>> - Rebase to MST bindings V7.
>> - Update the P2/P3/MST2LINK/MST3LINK regions in MDSS yaml.
>> - Link to v9: https://lore.kernel.org/r/20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com
>>
>> Changes in v9: Fixed review comments from Dmitry.
>> - Updated the description of dp-controller DT binding.
>> - Add new clause only work for QCS8300(one DP controller with 4 streams).
>> - Link to v8: https://lore.kernel.org/r/20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com
>>
>> Changes in v8: Fixed review comments from Krzysztof, Dmitry.
>> - Fixed incorrect description for dp-controller in driver/dt-binding.[Krzysztof][Dmitry]
>> - Fixed incorrect description for ubwc change.[Dmitry]
>> - Link to v7: https://lore.kernel.org/r/20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com
>>
>> Changes in v7: Fixed review comments from Dmitry.
>> - Rebase to next-20250818 and 4 pixel stream series V6.
>> - Add more description for the dp-controller dt-bingding change.[Dmitry]
>> - Reorder the MDSS change and UBWC change.[Dmitry]
>> - Switch to the OSS email.
>> - Link to v6: https://lore.kernel.org/r/20250806-mdssdt_qcs8300-v6-0-dbc17a8b86af@quicinc.com
>>
>> Changes in v6: Fixed review comments from Konrad, Dmitry.
>> - Rewrite commit msg in dp-controller dt-binding change.[Dmitry]
>> - Optimize the description in MDSS dt-binding.[Dmitry]
>> - Pass the sc8280xp_data as fallback in the UBWC change.[Konrad]
>> - Add the DP controller driver change.
>> - Link to v5: https://lore.kernel.org/r/20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com
>>
>> Changes in v5:Fixed review comments from Krzysztof, Dmitry.
>> - Rebase to next-20250717.
>> - Change DP compatible to qcs8300-dp due to add 4 streams support.
>> - Add QCS8300 UBWC config change due to rebase.
>> - Add 4 streams clk and phy in the mdss yaml.
>> - Link to v4: https://lore.kernel.org/r/20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com
>>
>> Changes in v4:Fixed review comments from Krzysztof, Dmitry.
>> - Use the common style for the dt-bindings commits.[Dmitry]
>> - Update the commits msg for the mdss binding patch, explain why they
>>    reuse different platform drivers.[Krzysztof]
>> - Link to v3: https://lore.kernel.org/r/20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com
>>
>> Changes in v3:Fixed review comments from Krzysztof, Dmitry.
>> - Fix the missing space issue in commit message.[Krzysztof]
>> - Separate the patch for the phy from this series.[Dmitry]
>> - Remove unused dependencies and update in the cover letter.[Dmitry][Krzysztof]
>> - Link to v2: https://lore.kernel.org/r/20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com
>>
>> Changes in v2:Fixed review comments from Krzysztof, Dmitry, Rob.
>> - Decouple the devicetree changes from this series.[Dmitry][Krzysztof]
>> - Drop the dpu driver changes and reuse SA8775P DPU driver.[Dmitry]
>> - Fix compilation issues in MDSS bindings.[Rob][Krzysztof]
>> - Correct formatting errors and remove unnecessary status in MDSS
>>    bindings.[Krzysztof]
>> - Add the the necessary information in MDSS changes commit msg.[Dmitry]
>> - Rebase MDSS driver changes to https://lore.kernel.org/dri-devel/
>>    20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/.[Dmitry]
>> - Package the DisplayPort controller and eDP PHY bindings document to
>>    this patch series.
>> - Collecting MDSS changes reviewd-by Dmitry.
>> - Reuse the sa8775p eDP PHY as a fallback compat.[Dmitry]
>> - Reuse the sm8650 DP controller as a fallback compat.[Dmitry]
>> - Link to v1: https://lore.kernel.org/r/20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com
>> ---
>> This series depend on 4 pixel streams dt-binding series:
>> https://lore.kernel.org/all/20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com/
>>
>> and separate eDP PHY binding:
>> https://lore.kernel.org/all/20250730072725.1433360-1-quic_yongmou@quicinc.com/
>>
>> ---
>> Yongxing Mou (6):
>>        dt-bindings: display/msm: Document the DPU for QCS8300
>>        dt-bindings: display/msm: dp-controller: document QCS8300 compatible
>>        dt-bindings: display/msm: Document MDSS on QCS8300
>>        soc: qcom: ubwc: Add QCS8300 UBWC cfg
>>        drm/msm: mdss: Add QCS8300 support
>>        drm/msm/dp: Add DisplayPort controller for QCS8300
>>
>>   .../bindings/display/msm/dp-controller.yaml        |  22 ++
>>   .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 286 +++++++++++++++++++++
>>   .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  15 +-
>>   drivers/gpu/drm/msm/dp/dp_display.c                |   1 +
>>   drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
>>   drivers/soc/qcom/ubwc_config.c                     |   1 +
>>   6 files changed, 321 insertions(+), 5 deletions(-)
>> ---
>> base-commit: 3ac864c2d9bb8608ee236e89bf561811613abfce
>> change-id: 20250818-qcs8300_mdss-a363f0d0ba0b
>> prerequisite-message-id: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
>> prerequisite-patch-id: ffeeb0739a4b3d310912f4bb6c0bd17802818879
>> prerequisite-patch-id: cdc3f4515ab23a8b2ce719bbdbcb56043803d03f
>> prerequisite-patch-id: 048b11765f49af4a728db1525fef1eb8ad48bf88
>> prerequisite-patch-id: f0f92109d1bfffa6a1142f2aaecbd72a29b858c0
>> prerequisite-patch-id: a8185cf3ddd85b9058691500b8dc0c57c8226e97
>> prerequisite-patch-id: a389a2e4eca44bf62bb2c861c96596368be7a021
>> prerequisite-patch-id: 09ec7f51de0a65c68c2c781750177017f32747ba
>> prerequisite-patch-id: f76ab0ae189df14acc851fa52f8f8e8faed9a505
>> prerequisite-patch-id: 983fc8a7bea459505c5b27db1a1ef7581936555c
>> prerequisite-message-id: <20250730072725.1433360-1-quic_yongmou@quicinc.com>
>> prerequisite-patch-id: 2ea89bba3c9c6ba37250ebd947c1d4acedc78a5d
>>
>> Best regards,
> 
> Hi, maintainers:
> sorry for the inconvenience caused. This series is missing patch 5 and patch 6 due to network issues. May I resend it? The missed two changes are identical to V10.

You can fix that manually by sending them both through

b4 send -o /tmp/
git send-email --in-reply-to=<cover letter msgid> /tmp/0005-xyz-abc.patch
git send-email --in-reply-to=<cover letter msgid> /tmp/0006-xyz-abc.patch

Konrad

