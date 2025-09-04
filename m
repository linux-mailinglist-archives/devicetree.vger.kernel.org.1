Return-Path: <devicetree+bounces-212678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD43B43726
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 11:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0496D160332
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB15C2F658E;
	Thu,  4 Sep 2025 09:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="duc11Pck"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022582F28F7
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 09:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756978276; cv=none; b=f5zJqFY4zKhS6zrLvdv0v5BHKW3DDW5FYTgohPmdNg4Sftc4GGfIojf8lW7GgHP9PCmDzpiToBDw3XMnKLRfHGQD5iWlu0jDpo/AbZXVRVPYK0xqQg9KYwfJN7nz0/zXuBc4/rEw8QStxaqkEksLR5H8uDMCtIxGKeRvF8lQzVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756978276; c=relaxed/simple;
	bh=z/QwrrZNxjwcrb7wvaaTbtnsQUrZSsz13LHcHnVObQE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Taij9jnpLWIQL1C25E7OTQUQEJ3r9coMEzduxeDruUNXHwAvJD2EpsWJTIQtqrgXl4O8ICDtoXSlqxgjOi3FyvVD95wfT1MsDi412OQDr1tdz+oUoKt3CSbzcBWR46dIKmgWPZtv5DrcLS2OXugoz7uBA2gRNWk4UN+zSiZgR8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=duc11Pck; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849Tp5I008175
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 09:31:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CKdQw7nAUXkvTJEDO9CicrkX772HD7M0hMjIZAdWS6g=; b=duc11PckvO8lTbgz
	+DHAnYcHTO7AtFvAQptbH+2WcwKpwuk0jCjKUV1SEaKkr45M+5mGn6ZZutnQspKJ
	GRBVji1rT79Z/ic1+qtYrE9CoqnLmzJ37hOLnbhhPl2PdCSOqAmdnEHEzp+sYh4E
	6toM5Zc+qD0SVLsFKM1NmOpO7a20w7v8tobc8+qh+dRBYsKqmkqtNsvaVFezum2a
	wPdTIenWdYD6jD4yTQM8511Jnr0VIVVIgvBYAr1tqQnBOyWJyLKGGfDMbJmtaqqj
	mvnupBd4Giy4/PryLz5eZXa1gTU6WAuI6XgjLGWCEDnJ8OuAl4M+/PiFyRHecU5t
	gHRVqw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv74eu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:31:12 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b47174bdce2so581440a12.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 02:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756978271; x=1757583071;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CKdQw7nAUXkvTJEDO9CicrkX772HD7M0hMjIZAdWS6g=;
        b=JTXNYl7yWS3JX2ChOL1AeMX5M5vXHkrRFSrlx3drUrt8NIVGZt6GYg/hsUqX/hESjS
         yYyND10aYY49mT12mPoW8IWic130boaAT0Uobtv/a1FZrT6G3sRY06YPrC2MEPchfqLy
         gS1O7pqv6IKC3fc+BOSvTbnfmgJSYld/CtQEq7NSzVIrVPC1guvhaRHItjz1BO+5Or67
         mmahe9TsRZQK8fIXC7wtcC8SlO2dT/f19LkV+McXhybQeXbg5+jaeYpDRWKjL7Y1SbbD
         q102NFd188hlbukPB4Z98sQlTsVvTicT8W0KUeorG1G6gDhtd7AHGqrkQ0F8qn6gW+cm
         cQqg==
X-Forwarded-Encrypted: i=1; AJvYcCVmIKXv9srAMQ7CI90FnSDbLW7AEun9k1Z2KSMMGliEirv3wl4swsgSzNJ7m2cXS9Exf3WMhRYELNIA@vger.kernel.org
X-Gm-Message-State: AOJu0YzRDqALogM8w5/gm7W5igUMHYDZxGknVHDYw1D2zw3iE9QgVl7B
	jgCri6nx3bX5n9vCUF6v6qUcgaXwfvh1biJyh2khYtl6MrWruUYybaFuVCDFvqAeShkD4lXbgMi
	tMlvHO9Gt1CsrQgWdy1a2MSWROJHnQIpzYErtph81QhXKyKcIzaErSIEN7oEMtNi7
X-Gm-Gg: ASbGnctpUzmLjJkE0gTvv+rvn97P1BKlG/BmyHzcGidYTHr6eDe2FxnnE591ImVkH6H
	bvY1AAniY5hWGzZ5NbEJ5NvpdY+IagRSByRt2Zu7Fl/3Fx5M4F1g+aF9okJbyb4XgYFlBtd2cf1
	i1gYhwf7dARMp5ehJL9laxL6FixEd77toBZaQihiUdu9X6BvDq+DbL1L3f1lHYY0Ow0Lsq3d0gH
	Dafrf1dJicaVgJ89q+/QCWhyLeP7nQFDrG9f58dkBckP5PhVrh6mh5tKms3a7qsjQt3xtSx5VUr
	IPP+enhRuZy7jc/34aCrjdQHuRAg36abCMVqQbBOtsK2Jt0+caBKKzrXGutk2KNAm+/PJ3EYFC1
	u5qzA4cYeGlqsythUNqjBLPwDoCH8HQ==
X-Received: by 2002:a05:6a20:6a06:b0:249:d3d:a4ea with SMTP id adf61e73a8af0-2490d3db2d4mr7632540637.39.1756978270871;
        Thu, 04 Sep 2025 02:31:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKMm8Afbwr7ngOp8CqIU5ydDUE32QQZhbVM/77fYeYZoBOBBxuC9/YkYIeukJQNNNmOv0Z0Q==
X-Received: by 2002:a05:6a20:6a06:b0:249:d3d:a4ea with SMTP id adf61e73a8af0-2490d3db2d4mr7632502637.39.1756978270285;
        Thu, 04 Sep 2025 02:31:10 -0700 (PDT)
Received: from [10.133.33.41] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-329b3e28a10sm10862807a91.18.2025.09.04.02.31.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 02:31:09 -0700 (PDT)
Message-ID: <f3aa35bb-5ac7-4fe3-904e-2dd97b9c034a@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 17:31:01 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/6] Display enablement changes for Qualcomm QCS8300
 platform
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
 <d2940186-7baf-41d3-80dd-fbc860ac5acb@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <d2940186-7baf-41d3-80dd-fbc860ac5acb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX50SQgF/wcgX8
 4Z8k3/6bvUpCu6122P6XOwzM0fGw7PPS/U7KrhrVTBiopegvuRsTo5HnoxQA4jq2ganbEGkrCbz
 HTQCnnfFaGZnlD40Vq3NkZLTX1ULQhOwfc9tfInfXDJ/nC6fK4sVePKntCMyVKU1lXlPlPo29mQ
 FsuDOe6QjUK9Kmd8h3KuZTkH5IQv9Hs5eAirAbJ5cpmKqzLGiv85Ld2Wg0F60rV6QLJVwyBHhEF
 J0aQ7e1n7wYculbvOQQZksa3QPS9sNbKnav/H0fgv560w7o9UI8Xt9T5dgFHrNn5UXLVUszNTMh
 lom1rmAnF/lccheDZX2V+QWy0XZF8soZkZYuBwgydfA+W+xvgtGz3jM7Z97VaDIusoKBCr3lNAX
 7fjGdYUo
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b95c60 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=1XWaLZrsAAAA:8 a=KKAkSRfTAAAA:8 a=0yE2TYaOs8xmGIxx25QA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 4ck7ZSNL9aZfc1jujhW_VRcS2thBCE93
X-Proofpoint-GUID: 4ck7ZSNL9aZfc1jujhW_VRcS2thBCE93
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031



On 9/4/2025 4:21 PM, Konrad Dybcio wrote:
> On 9/4/25 9:55 AM, Yongxing Mou wrote:
>>
>>
>> On 9/4/2025 3:22 PM, Yongxing Mou wrote:
>>> This series introduces support to enable the Mobile Display Subsystem (MDSS)
>>> , Display Processing Unit (DPU), DisplayPort controller for the Qualcomm
>>> QCS8300 target. It includes the addition of the hardware catalog, compatible
>>> string, and their YAML bindings.
>>>
>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>> ---
>>> Changes in v11: Fixed review comments from Dmitry.
>>> - Rebase to MST bindings V8.
>>> - Update the clocks-name for QCS8300 in dp-controller.
>>> - Link to v10: https://lore.kernel.org/r/20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com
>>>
>>> Changes in v10:
>>> - Rebase to MST bindings V7.
>>> - Update the P2/P3/MST2LINK/MST3LINK regions in MDSS yaml.
>>> - Link to v9: https://lore.kernel.org/r/20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com
>>>
>>> Changes in v9: Fixed review comments from Dmitry.
>>> - Updated the description of dp-controller DT binding.
>>> - Add new clause only work for QCS8300(one DP controller with 4 streams).
>>> - Link to v8: https://lore.kernel.org/r/20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com
>>>
>>> Changes in v8: Fixed review comments from Krzysztof, Dmitry.
>>> - Fixed incorrect description for dp-controller in driver/dt-binding.[Krzysztof][Dmitry]
>>> - Fixed incorrect description for ubwc change.[Dmitry]
>>> - Link to v7: https://lore.kernel.org/r/20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com
>>>
>>> Changes in v7: Fixed review comments from Dmitry.
>>> - Rebase to next-20250818 and 4 pixel stream series V6.
>>> - Add more description for the dp-controller dt-bingding change.[Dmitry]
>>> - Reorder the MDSS change and UBWC change.[Dmitry]
>>> - Switch to the OSS email.
>>> - Link to v6: https://lore.kernel.org/r/20250806-mdssdt_qcs8300-v6-0-dbc17a8b86af@quicinc.com
>>>
>>> Changes in v6: Fixed review comments from Konrad, Dmitry.
>>> - Rewrite commit msg in dp-controller dt-binding change.[Dmitry]
>>> - Optimize the description in MDSS dt-binding.[Dmitry]
>>> - Pass the sc8280xp_data as fallback in the UBWC change.[Konrad]
>>> - Add the DP controller driver change.
>>> - Link to v5: https://lore.kernel.org/r/20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com
>>>
>>> Changes in v5:Fixed review comments from Krzysztof, Dmitry.
>>> - Rebase to next-20250717.
>>> - Change DP compatible to qcs8300-dp due to add 4 streams support.
>>> - Add QCS8300 UBWC config change due to rebase.
>>> - Add 4 streams clk and phy in the mdss yaml.
>>> - Link to v4: https://lore.kernel.org/r/20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com
>>>
>>> Changes in v4:Fixed review comments from Krzysztof, Dmitry.
>>> - Use the common style for the dt-bindings commits.[Dmitry]
>>> - Update the commits msg for the mdss binding patch, explain why they
>>>     reuse different platform drivers.[Krzysztof]
>>> - Link to v3: https://lore.kernel.org/r/20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com
>>>
>>> Changes in v3:Fixed review comments from Krzysztof, Dmitry.
>>> - Fix the missing space issue in commit message.[Krzysztof]
>>> - Separate the patch for the phy from this series.[Dmitry]
>>> - Remove unused dependencies and update in the cover letter.[Dmitry][Krzysztof]
>>> - Link to v2: https://lore.kernel.org/r/20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com
>>>
>>> Changes in v2:Fixed review comments from Krzysztof, Dmitry, Rob.
>>> - Decouple the devicetree changes from this series.[Dmitry][Krzysztof]
>>> - Drop the dpu driver changes and reuse SA8775P DPU driver.[Dmitry]
>>> - Fix compilation issues in MDSS bindings.[Rob][Krzysztof]
>>> - Correct formatting errors and remove unnecessary status in MDSS
>>>     bindings.[Krzysztof]
>>> - Add the the necessary information in MDSS changes commit msg.[Dmitry]
>>> - Rebase MDSS driver changes to https://lore.kernel.org/dri-devel/
>>>     20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/.[Dmitry]
>>> - Package the DisplayPort controller and eDP PHY bindings document to
>>>     this patch series.
>>> - Collecting MDSS changes reviewd-by Dmitry.
>>> - Reuse the sa8775p eDP PHY as a fallback compat.[Dmitry]
>>> - Reuse the sm8650 DP controller as a fallback compat.[Dmitry]
>>> - Link to v1: https://lore.kernel.org/r/20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com
>>> ---
>>> This series depend on 4 pixel streams dt-binding series:
>>> https://lore.kernel.org/all/20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com/
>>>
>>> and separate eDP PHY binding:
>>> https://lore.kernel.org/all/20250730072725.1433360-1-quic_yongmou@quicinc.com/
>>>
>>> ---
>>> Yongxing Mou (6):
>>>         dt-bindings: display/msm: Document the DPU for QCS8300
>>>         dt-bindings: display/msm: dp-controller: document QCS8300 compatible
>>>         dt-bindings: display/msm: Document MDSS on QCS8300
>>>         soc: qcom: ubwc: Add QCS8300 UBWC cfg
>>>         drm/msm: mdss: Add QCS8300 support
>>>         drm/msm/dp: Add DisplayPort controller for QCS8300
>>>
>>>    .../bindings/display/msm/dp-controller.yaml        |  22 ++
>>>    .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 286 +++++++++++++++++++++
>>>    .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  15 +-
>>>    drivers/gpu/drm/msm/dp/dp_display.c                |   1 +
>>>    drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
>>>    drivers/soc/qcom/ubwc_config.c                     |   1 +
>>>    6 files changed, 321 insertions(+), 5 deletions(-)
>>> ---
>>> base-commit: 3ac864c2d9bb8608ee236e89bf561811613abfce
>>> change-id: 20250818-qcs8300_mdss-a363f0d0ba0b
>>> prerequisite-message-id: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
>>> prerequisite-patch-id: ffeeb0739a4b3d310912f4bb6c0bd17802818879
>>> prerequisite-patch-id: cdc3f4515ab23a8b2ce719bbdbcb56043803d03f
>>> prerequisite-patch-id: 048b11765f49af4a728db1525fef1eb8ad48bf88
>>> prerequisite-patch-id: f0f92109d1bfffa6a1142f2aaecbd72a29b858c0
>>> prerequisite-patch-id: a8185cf3ddd85b9058691500b8dc0c57c8226e97
>>> prerequisite-patch-id: a389a2e4eca44bf62bb2c861c96596368be7a021
>>> prerequisite-patch-id: 09ec7f51de0a65c68c2c781750177017f32747ba
>>> prerequisite-patch-id: f76ab0ae189df14acc851fa52f8f8e8faed9a505
>>> prerequisite-patch-id: 983fc8a7bea459505c5b27db1a1ef7581936555c
>>> prerequisite-message-id: <20250730072725.1433360-1-quic_yongmou@quicinc.com>
>>> prerequisite-patch-id: 2ea89bba3c9c6ba37250ebd947c1d4acedc78a5d
>>>
>>> Best regards,
>>
>> Hi, maintainers:
>> sorry for the inconvenience caused. This series is missing patch 5 and patch 6 due to network issues. May I resend it? The missed two changes are identical to V10.
> 
> You can fix that manually by sending them both through
> 
> b4 send -o /tmp/
> git send-email --in-reply-to=<cover letter msgid> /tmp/0005-xyz-abc.patch
> git send-email --in-reply-to=<cover letter msgid> /tmp/0006-xyz-abc.patch
> 
> Konrad
Thanks for guide, when i use cmd  "git send-email 
--in-reply-to="20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com" 
~/tmpyongmou/0005-drm-msm-mdss-add-qcs8300-support.eml", seems something 
wrong, error log:
mou@oss.qualcomm.com>,  Dmitry Baryshkov 
<dmitry.baryshkov@oss.qualcomm.com>'
(body) Adding cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 
from line 'Reviewed-by: Dmitry Baryshkov 
<dmitry.baryshkov@oss.qualcomm.com>'
5.1.3 The recipient address <y> is not a valid RFC 5321 address. For more
5.1.3 information, go to
5.1.3  https://support.google.com/a/answer/3221692 and review RFC 5321
5.1.3 specifications. d9443c01a7336-24b1ba1718bsm64512315ad.39 - 
gsmtpWould you mind sharing some suggestions for this? Thanks~~

