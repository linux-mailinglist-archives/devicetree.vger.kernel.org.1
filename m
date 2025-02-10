Return-Path: <devicetree+bounces-144869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A32A2F872
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5C1D1681D6
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28AA92566C0;
	Mon, 10 Feb 2025 19:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d3onEnb7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F191F4635
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739215236; cv=none; b=J6Fwx0rCyrdvIfaB/WH6cgMoPfeo1G7A16od13W70mmqtL7IyLfYJ3pCb+jofMA0X8BGbyt/VtSCzhIMfS38YWlEsEhucn9wqM43c9olx9EEZihdRpmaJeg4/DyYt6yGXWcVQY61J47UqIz2PMBYQCLXqcv1wrJz9/ZdZ6j//r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739215236; c=relaxed/simple;
	bh=2S8sds+FiM0QeleBbqPHslxZ1ylft5S/XBauMQ/noPc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QaW01I49qy5OD299SN/GTbRGRcGpw0a/9MdN9BK1GAtAL/dvqAoII32dX+5MWg5fz7F2yGgIj4QMOZX90KXuWbW7jq8gpRC+3tyfehJOcX6JD2HLWqJXp9MG8XZkH9PNKbZrHaoPZUb222yOCA4bRnFSzOQAT172Hkkwyk2l9rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d3onEnb7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A9prIM023543
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UHTGfvXpoiSary/QibcMXc8tUfGDgzwkgTomq3eCaA8=; b=d3onEnb7b6F2REdr
	agGZdVd0ylJuhAB5T1LsBZYP9jou9ZsTxCYsQ7jiqELxet6WR4g7AWTJSYia/CEK
	/RMJhKmHHDDQXVrrva4Y8rOHaecVIcZKY6AMRMw5Ah09H5aqsDNqA3PeRpxg87eV
	4JqHqbTpmwKCj9akV+m7yeBff2yF9YghM2gpAdwCATRTavOSp88Qq+ITX8a1MGCA
	3mp2HlSMglmFR2as9gZhW3cgU/NXxNfUrx6aOXT4mWlVXeLr4ZTIB+OxYCz97BxP
	xQ/VTcJD3DFrDVhrVeFWRyU2E8cvijdrO1AShoCrG5Yp+fGbHfZsqJBGgkk2iV3+
	oWOxsA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0guwcpx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:20:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e249d117b7so5290456d6.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 11:20:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739215232; x=1739820032;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UHTGfvXpoiSary/QibcMXc8tUfGDgzwkgTomq3eCaA8=;
        b=u9bj1yD9wT6/iSu4WnPZwFxacqecYEoAcBs7dtVJcYlEEukQLO1MEdrCm2f9ZqGEHR
         ikWvX9htiSbJZ/n06UjGiUhVqt1z1DjyIBD6aEEBTNHydG97wWehX3upSnCltnrEGCUD
         Mf6pgyI0XhV/D7tk9gzoljyv6ApgYpuiAzekDxLxGjDdeY95XTLdkjtW8/ncrGCdsxNv
         a1qq4IXFMLTXkS1+oFkmzuLbLhumbJE6nYwgOp2kl/+x7yQrEHkwJyTtHaTbuHkYfxeC
         dj1YwLYFodogi341F/hgHxMJd83hcFY9vGWhUe/9gMpkFj7LDT+C3RukZ4jL9GwJntad
         6V3w==
X-Forwarded-Encrypted: i=1; AJvYcCVwcTOjtLWgpXimnwz8DUtlHiUEW/NBMEgh0vsvuNufuHTfVk6xIAqrB6tK19dAwf6hQsaq+Cp0FcSn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6w4k8CPU34TDkCPx/RMrMs0oVCGebbYvHwWD0/ktxKrYgbh2p
	xGzoFaKPDHcrpUvun2S+GrEW72weiqGW2NooSxY3urouNincLYyRcQt1YMcSi9qWEOax+LWhkug
	0J+bpT/rfEMbD0SzxX4MqMFiJpk+n10znaSHA+hlZu/LINZd+XUHGRh0o5HK4
X-Gm-Gg: ASbGncvlAeN51C7bP83Ks7SmOQpttjPrQSrCLQdWCVxpFWc3mbz5zCNA7iPhpQ8+fGd
	Jw6Q/yIZyFJxihdp0V+ALrPw6JAAIrOp/DTqEKHOQMepbvW4fl0KpMBeQG7ACzyJTts3L2t6xPP
	gD6Iliw7FarwVclMi374G3tBF4XOT+s6j1TgnD71BcHGEv6uTpkr+zC32JOy7zTeeQajdFfX0p0
	3nbvrcPzLed3Dk7MII+VIc6N+QK/p7aDMHtwR/pV2pATth8dFGQr/MLIrVLh5n37nLGXO9fbwZi
	iolra14Oz32qZOdlzTvAL2vGs2HBcm7LiUVlN20k767O0n/a7XZuUfEBl0A=
X-Received: by 2002:a05:622a:1c15:b0:471:8a2a:d9b3 with SMTP id d75a77b69052e-4718a2adb82mr41530371cf.3.1739215232117;
        Mon, 10 Feb 2025 11:20:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGhPZhlsQZyrDwqBCWlfYeWNtHXkddUkvcf5DV4cGq6f1WRrWGhD5y1vSBMq6awgol6oyxogA==
X-Received: by 2002:a05:622a:1c15:b0:471:8a2a:d9b3 with SMTP id d75a77b69052e-4718a2adb82mr41530101cf.3.1739215231617;
        Mon, 10 Feb 2025 11:20:31 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7a58abd76sm549411266b.26.2025.02.10.11.20.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 11:20:31 -0800 (PST)
Message-ID: <354f8710-a5ec-47b5-bcfa-bff75ac3ca71@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 20:20:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
 <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
 <be8a4f65-3b36-4740-a4f7-312126cfd547@quicinc.com>
 <ferdaevlfrpf2ewzcct7mqyxltvmt6aaar4fujxfehrmizm3qw@aaroprnpwlxq>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ferdaevlfrpf2ewzcct7mqyxltvmt6aaar4fujxfehrmizm3qw@aaroprnpwlxq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: QGs0j0eTs4VnoJsVlLeDj-dV0gV0Qfiz
X-Proofpoint-GUID: QGs0j0eTs4VnoJsVlLeDj-dV0gV0Qfiz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100156

On 8.02.2025 11:06 PM, Dmitry Baryshkov wrote:
> On Sun, Feb 09, 2025 at 12:47:56AM +0530, Nitin Rawat wrote:
>>
>>
>> On 1/14/2025 4:22 PM, Dmitry Baryshkov wrote:
>>> On Mon, Jan 13, 2025 at 01:46:27PM -0800, Melody Olvera wrote:
>>>> From: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>
>>>> Add UFS host controller and PHY nodes for SM8750 SoC.
>>>>
>>>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
>>>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
>>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>>> ---

[...]

>>> Use OPP table instead
>>
>> Currently, OPP is not enabled in the device tree for any previous targets. I
> 
> Excuse me? ufs_opp_table is present on SM8250, SM8550 and SDM845 (and
> QCS615). So this is not correct
> 
>> plan to enable OPP in a separate patch at a later stage. This is because
>> there is an ongoing patch in the upstream that aims to enable multiple-level
>> clock scaling using OPP, which may introduce changes to the device tree
>> entries. To avoid extra efforts, I intend to enable OPP once that patch is
>> merged.
> 
> Whatever changes are introduced, old DT must still continue to work.
> There is no reason to use legacy freq-table-hz if you can use OPP table.
> 
>> Please let me know if you have any concerns.

Go ahead with the OPP table. freq-table-hz is ancient and doesn't describe
e.g. the required RPMh levels for core clock frequencies.

You should then drop required-opps from the UFS node.

>>>> +
>>>> +			resets = <&gcc GCC_UFS_PHY_BCR>;
>>>> +			reset-names = "rst";
>>>> +
>>>> +
>>>> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
>>>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>>>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>>>> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
>>>
>>> Shouldn't cpu-ufs be ACTIVE_ONLY?
>>
>> As per ufs driver implementation, Icc voting from ufs driver is removed as
>> part of low power mode (suspend or clock gating) and voted again in
>> resume/ungating path. Hence TAG_ALWAYS will have no power concern.
>> All previous targets have the same configuration.
> 
> arch/arm64/boot/dts/qcom/qcs615.dtsi:                                    &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> 
> It might be a mistake for that target though. Your explanation sounds
> fine to me.

Let's use QCOM_ICC_TAG_ACTIVE_ONLY for the CPU path to clear up confusion.

Toggling it from the driver makes sense for UFS-idling-while-CPUs-are-online
cases and accidentally also does what RPMh does internally in the other case.

Konrad

