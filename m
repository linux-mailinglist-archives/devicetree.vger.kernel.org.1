Return-Path: <devicetree+bounces-250995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E27BCEDA09
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 04:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 53E413003043
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 03:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E503E23AE62;
	Fri,  2 Jan 2026 03:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EsdGxvty";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OqUnEmnZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AC217BB21
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 03:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767325946; cv=none; b=DKguPMKAVyhc0LvuiawEFyAQJroAeFnmke5Rw13yClWd2y0dQGU93Cy0C+/HePYMKkTmozdnlvBSQC4KsxGoKYzaldSDKqhWcG9UI9OxQY65No7BSk9QIPS4AKwVvN6C0fdxes2nGdvWu1X7MaH43Ro9EjZT8q2berGlEinfvB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767325946; c=relaxed/simple;
	bh=Rp+uBO5VCABx56c9L2JztalDnHvrp+oYJVAo/4zxB6M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sRmhI63H3eEK5AEDbixErZj61nAlLpB7L9K2Hnqb90xkcvmFbor6L8OtH+fgg1hm3jf4rUZI1gxwvFUS7cXGFUylaHO5qf6BFXirEZHKBc/Tmepkq+EnRx/c4BVUy6IzkdVzaNwyByZleodMAgRbiQMx/GnqVXq52Z8zeWcYE+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EsdGxvty; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OqUnEmnZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601Nvp7x3179479
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 03:52:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S61SjyiHBkIhWo/HAA8SDc3EP7YavRLTn5aWkirrCNM=; b=EsdGxvtyhsO3XTzz
	lMtW7AFOjv/2/3n9+XcrlezBBNytqIsqOgzo2q89u1tNvUw3yRBl7cBRTmYw6RU4
	cKtwBkbfzhdGMjeJaa7aRW5jd3TEcKghzFhK3SD0pAylfXlq9btoSCzF/UbxJbBY
	Jx9v4Vcs3eOqZ7j3Pf5DC0nCjVO9q+CIKFSb68X43+dk8mV1M127MwH71fNqPJcu
	7/posnD7wgh8MrvcHPf7Clo4b4JiNjgOJ4Ylnr/6qOvnWAfBOg3m/lMyKqpVPE28
	gY67g3GCK5QQ74RRTB+/cKm/7dunh9MvbK29Cz1GLBNulc72CtjsYmCS9/3uMhVa
	lup9Rg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd3v8tvmb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 03:52:24 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b9321b9312so24879858b3a.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 19:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767325943; x=1767930743; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S61SjyiHBkIhWo/HAA8SDc3EP7YavRLTn5aWkirrCNM=;
        b=OqUnEmnZBXcL/TtDWP3pcHyeNVDgsfZlE2unDc66zlJxYimlN5JJ8Y9eKQJwMjqr+M
         JBQnsgOkA6usQVPfHmxtpnO6cr66VilQE+berZO+yR9yN6vak0Rqif3cDWOUt3DfDB4j
         kSbkhg4d/ptvL6I/sgrnhDB0fT7mQWfUyc2JsvuRvrzw1PiD/bdZSBSAP2Z3avCaC5aG
         4KFuEjg250cv1FhL8s2fZZRzF0D6lWAv4WJmzE4VA/kj/iUHoskKtT5/TNdmxcycRbob
         HOsCvjH8pjj0PlOpXHNH31gTFvrDTaS/p25YabbPNN3CeP7HdFM4NYa65pVSQXX+zI+Z
         vijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767325943; x=1767930743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S61SjyiHBkIhWo/HAA8SDc3EP7YavRLTn5aWkirrCNM=;
        b=TEDC3uAdRlq1LHb6/Wvxz09pG2sQ++4MHfAF0lz0oGHDNlRaqO/n295/qf2WTh06Q7
         C3VjCz5r/zurMtNRLO7UIlTU0od8XrUNLN4z+k94I1zD5xBBCr5fQYJT/bOmhY6X9w47
         tsEFuv6/0C5LPjZdEUMf0pSXJUP6CfKT/lIlLA27k694qvC7W9jyJqWfXeQsoNgckNjy
         Xa4Un05pcagxcXvUa0hN/07B2ItMjNuawCE2yhildXHgVtpWPe61AzolefJRBWS2vzaB
         12xJ12q1cQu7NccPB1SdX0FMmPOPUdurwKjUl9nJX6Pa3I/gYqSS6kFYLnU1Vwvted2D
         UwHw==
X-Forwarded-Encrypted: i=1; AJvYcCUJC5yG7L/OpIUuHZlpnx0HPfOSFpfCqzb13QwtgafNVs+MFY8h00JcnZG1qNvUfoyXii2gnpbicAjK@vger.kernel.org
X-Gm-Message-State: AOJu0YxCyvZj4x7PKWbFh3D4SYBpr1FIyElBuuJplJhRz+NcVwmZejZg
	YsrJyOHTs322/5W4dADWx5di1LiZZAi+KTb9TghU9yv8CWAsRlIkeJX7jgzql/52okHZr2jdz+i
	I66xCkD51s7Kfo2a+O/3kQGmHe6JcEFsivSedA9v2HrstZlhTralFP1OsmjEawmTC
X-Gm-Gg: AY/fxX6omAgBb/exEafMidCQ4saXPaPCF9ln6d3cXtKkcG8U1KCYsD/evu4w9Q42bly
	AsXe24dSyzdiFwFnQwIRd8i6q76ij+7W2LkjOyzv2/AoJKxPcw7GRvKYfp1FlzRpUBqxXALsSGE
	3cA6452+/S2PlsL90P4gD44NEwdyxrgXDuEU++NDq3BbCS+tyujClje4MuXCsTze2ekKFujzT4T
	K0ci0V4bmptBQyTTcVx2gQFiAJvfhvW+76PDnDXXBHIv8Zs7wvEwEDxyXggu/wiDXcwbae4EqmN
	Tb6b4Egiw/WlQ6zIDsEG5SM3ICeKlvcnaDiN4xoZb6JeHRKfMfogF45KvCWnqjQRcYUgWaH0krk
	vZMqETpKkrjsNa7RvaCtos+LlfgrP5tj9QKqbxg==
X-Received: by 2002:aa7:8e0f:0:b0:7ff:c6fd:d687 with SMTP id d2e1a72fcca58-7ffc6fdd6c0mr25749798b3a.8.1767325943065;
        Thu, 01 Jan 2026 19:52:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCUiCeAS919Ljjowcde1IpwT1czKdpjSEIheCNC48NWCcuQPiQiqia/YF9M2MMiRl0VY40wg==
X-Received: by 2002:aa7:8e0f:0:b0:7ff:c6fd:d687 with SMTP id d2e1a72fcca58-7ffc6fdd6c0mr25749782b3a.8.1767325942574;
        Thu, 01 Jan 2026 19:52:22 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff77abe95dsm39061316b3a.0.2026.01.01.19.52.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jan 2026 19:52:22 -0800 (PST)
Message-ID: <93a90b3a-f083-4621-8a25-f3d1171c812a@oss.qualcomm.com>
Date: Fri, 2 Jan 2026 09:22:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDAzMiBTYWx0ZWRfX50YJ9zYMgH7O
 3ORP0on1jCsM1kf8YmmR5CTuv+i40Kb/jnaSQOozjYiOnzYqjYC2vf5TlozNxGmfVaU4iOSdgQb
 IxJgO/6X8htJx+JrhijXEasZG3AFmgeEHU1qSYiJ8PR61b1Fjzvzf0kytJKd64ZUBimLhK21FwN
 SIQdPq1II4gz5oTfF1lC6sWUjn6kL6N2khIF9QizzSvxwE6TmQg/3aftS18237iXutf3omZTe+V
 /4ZzR232d7MbsyF9H20aEUukRMGJsNWpF7ukbEVNOzFu0OWd/yVsDxuSzF4HezEMhDGOYmT97Yq
 L2Dmmf2fXjmcHMdApiN/Sdw+5edLjpuIZHvNzn58GIS0XPfaSAncpXGVsSl6FKbGu2nck4GrtRy
 IfBwlJQVTeo/ApYR6zhNESDBdDiRo/NSQjJq1oom3trMBQ6h2X5XheuSEsJ9n0EnLkCFqazuzbt
 WSVMfDWrnmHyf4VlOOw==
X-Authority-Analysis: v=2.4 cv=JdOxbEKV c=1 sm=1 tr=0 ts=695740f8 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gjJwvVq1TDH_Shb35fsA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: B_7HH02zLY976_cdOQffplKvf9XppCgB
X-Proofpoint-ORIG-GUID: B_7HH02zLY976_cdOQffplKvf9XppCgB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601020032



On 12/31/2025 3:49 PM, Pradeep P V K wrote:
> Add UFS host controller and PHY nodes for x1e80100 SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
>  1 file changed, 120 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index 21ab6ef61520..cd7e2f130fe2 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -835,9 +835,9 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>,
> -				 <0>,
> -				 <0>;
> +				 <&ufs_mem_phy 0>,
> +				 <&ufs_mem_phy 1>,
> +				 <&ufs_mem_phy 2>;

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das


