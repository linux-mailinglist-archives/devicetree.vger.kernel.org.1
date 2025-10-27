Return-Path: <devicetree+bounces-231241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F3EC0B95E
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 02:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 369293ABE2B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 01:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EEFF23D2B4;
	Mon, 27 Oct 2025 01:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iGo1ncHI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD2C23BCF3
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761527746; cv=none; b=BZpPWIjgIQwrDFDwY1IoWmWmYUnThCVYgGhd8wAGImTWHJe9RZWyEUmocA5MgyoEo4pdYSL6GrTD6R0AcuvX3AGzmcSZSjyDcS/509DmJuEcmE1kV2xBnoHCIUTO0e2wfzM56uoT2qlPcKle7tigGTRoB1atl1tABH5eUuBiTxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761527746; c=relaxed/simple;
	bh=t93Yp8RmSB0G1hSO4EL81AtKN9KA+9xMA+XdWUMYetE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PHHWbgAJCUQem3VrMEg84mQuYnDMGZJ+Yn6f7w2/rYLJGMNxQNOlW4ZAhmJJtXHqyIcIMdJLaGd/BlITgTBIX5wQD31NoAkR+NajwcuBcrpgEKoBdpIwIH2igRpAp11jsUajDyMxuEvVKhpe3pgFKFIuWGCuYPjqDhuj8kwe2UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iGo1ncHI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59QNPoif1142740
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:15:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q+7a7BdSUX1H4XYC5sftPvUND0oWh/62HBMHDzpCxI4=; b=iGo1ncHIQF3TKNPv
	+ru2TcdU/qQ8oHm/ajlDPxfKBc8QB9mWMKotQ1skrldzEVH+G6Mykk+HqSC6cQtp
	Kv4Mko9pN3cZduZ/jEWAQ18vkpWA2lVizoz9Hjs5fApu/DRRY5Lnsn1Xs7TFk/Uo
	DT89urDTRXH6CmBuvsLPgtPjRsrMoqi33/49LbWLhpy9EY6Xsy/cwSqYeYeH9P/H
	eu+KoYXltw0bLi9GrY9Z7+gfAYC44DgoHfsX74i5ZFBoQruwp9ErukByfsWRAKMe
	IHLws87FHva2+sTfSKgP1wto2sSZqOqwiyicsv4HzfqaTQBaxcUMg3NLrxYyd0X/
	7XMNIA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nnb2vuc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:15:44 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a43210187cso233336b3a.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 18:15:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761527744; x=1762132544;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q+7a7BdSUX1H4XYC5sftPvUND0oWh/62HBMHDzpCxI4=;
        b=BYotLzOIPU0M7xKr2tUf6w6nI1C7dFP5Gy+Ag/k72g+d5uTEzvf8oDLfQc52htUGen
         EFOc85ukdP2bYzgUOSw8ABBeuYwwM3+hrPLBOiPikM4klu+c6+FAqHMAgvrBn6mpP6oG
         s9xgvSsIGbE9qRtk5Ahwg0hW9ajlpuftFymIoO4wDX4UT4tJJX79bL9Ksg7vPcyYfgQr
         vYyJlOK4BxYygaonwDlKdR8JL9X7b5ctKmmqjY5A+SlbwsIoGONHD8MOS6K7O/jvm7Qr
         DM9Coy3n0dnnQZuEIGaE/Uc3/z8VIlT6Mh7/iyI9aQ/8uVmYJ3nPPkdECnlby6PggVF6
         BO5g==
X-Forwarded-Encrypted: i=1; AJvYcCXnYkmYW6/5EoAnLjZVXjFhd863ZAUIIaAtOzNJmI4gt8bbH0re/fOhtETSSG76cnW5AEVocsOjpVSc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8T5Qk4GgXmqkbRCh69xO1OquFWrguI9RyqpGkWz/wUP36wWML
	r2eCkwIbFjCwJ3s2UF/sH6w2fVHpSss51TgJVsJdkTkvJ/5kRv0uxKrFI2KdOvYS+QSWHq3YAvM
	EOpHXOIJK8a9hkUmSCNrtrt3Ki1oin2v1yixWK80TQAUhtY327ioAvWFzhoDC+Koh
X-Gm-Gg: ASbGnctSucLvj7A98kB/lxGNLp0JlXkKIBJXRyyWwbiegpHHUKsynq3xeBacFI2o2Zi
	ugT2dVXbIVmaCSw8ccbBDRHCE7wp1l2HcHWyxjdZRSx3dJXxoevRE9QVF9bK49NqOo64aYuifR5
	E4bfvrWbqWp35OI2wwAGWHl9j3N5Ts+a32HbfUcr1qces8Y2SGlQSgQwQJPTUL+i6T7wL52IdQt
	a6xpfBba0//q7TWpX4rW2Vz/Ez8hsykSGG1UZlHPR9pE5ZuBuHv6zlON2w+Tzib6Nfx2+jxUxF1
	yDHfFA+QOcDtjdYbitK03/c8Q99PoLMijcW7yx4OSSS1+B/Dl4mmjDQlzL9Bp/Suo4wSrxw7sPx
	ae1TmtIJCfljvSaC0I01h0Ew84dRLffWi/IwM5MAMk7BK/Hv2r6WqM2WSS/qKtUHK
X-Received: by 2002:a05:6a20:918c:b0:334:9bbd:39c7 with SMTP id adf61e73a8af0-33deb36ec75mr12023893637.51.1761527743996;
        Sun, 26 Oct 2025 18:15:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvB8qqyzh0X9NyroUn58B+zjJ+gl/No1zjTrW0lEw1jH8sE1qhiGkm3tGhFUWui+5c86exCw==
X-Received: by 2002:a05:6a20:918c:b0:334:9bbd:39c7 with SMTP id adf61e73a8af0-33deb36ec75mr12023852637.51.1761527743538;
        Sun, 26 Oct 2025 18:15:43 -0700 (PDT)
Received: from [10.133.33.212] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414012bf4sm6220585b3a.1.2025.10.26.18.15.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 18:15:43 -0700 (PDT)
Message-ID: <bcaffc33-851c-4b73-add3-affe864414ed@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 09:15:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Enable CTCU device for QCS8300
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>
References: <20251013-enable-ctcu-for-qcs8300-v3-0-611e6e0d3085@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251013-enable-ctcu-for-qcs8300-v3-0-611e6e0d3085@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: sCy9j6eyZJyFI28fKkKe2faTNFoZk8r-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDAwOSBTYWx0ZWRfX9n0oGFa0jz1Z
 oAdFvfZ2G/lvnrgT1aePImxTWblx+dsNcmuuKNGEazGerauKke05DkmsYAsGfNik6u3NWbP2mlI
 mhB9M8fvcWFGum0aLb6c4LpP5M33KbxG26d5yhbiGpKMhFcoNShn4iJV1TXL/PphlHgr76t+vrA
 Mt3D0GoRQIYqJXRW28BjsKFSNqrrPDdkE3qU+TRHyxIfLIV/70mexhborIQSn9hcbXOf6vO4eo1
 4GcUGnc6chwF2KcW9683Zmxm8uLUchOtH8D1ePtHfaIeGEPchanBX1b6w210zwRe2NS45gHztNK
 GUP8qILzhQ2RWsolhGZbX2wfUEUMpgjq1n9TK38X1LEnyxVp1+22+YWJFwC5Oeg6cWDPnTG7vPy
 AQ7NRj8Lk7to0ymOkGO5DID1dsZ86Q==
X-Authority-Analysis: v=2.4 cv=AJoZt3K7 c=1 sm=1 tr=0 ts=68fec7c0 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fSwdLtKwHKkDrnzOdDIA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: sCy9j6eyZJyFI28fKkKe2faTNFoZk8r-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270009



On 10/13/2025 4:34 PM, Jie Gan wrote:
> Hi Suzuki, Mike, James, Rob
> 
> Can you please help to review the dt patches? The dt maintainer needs
> your comment before apply this patch series.
> 
> Thanks a lot
> 

Gentle reminder.

Thanks
Jie

> Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in binding to utilize
> the compitable of the SA8775p platform becuase the CTCU for QCS8300 shares same
> configurations as SA8775p platform.
> 
> Changes in V3:
> 1. rebased on tag next-20251010
> Link to V2 - https://lore.kernel.org/all/20250624095905.7609-1-jie.gan@oss.qualcomm.com/
> 
> Changes in V2:
> 1. Add Krzysztof's R-B tag for dt-binding patch.
> 2. Add Konrad's Acked-by tag for dt patch.
> 3. Rebased on tag next-20250623.
> 4. Missed email addresses for coresight's maintainers in V1, loop them.
> Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1-jie.gan@oss.qualcomm.com/
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
> Jie Gan (2):
>        dt-bindings: arm: add CTCU device for QCS8300
>        arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
> 
>   .../bindings/arm/qcom,coresight-ctcu.yaml          |   9 +-
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi              | 153 +++++++++++++++++++++
>   2 files changed, 160 insertions(+), 2 deletions(-)
> ---
> base-commit: 2b763d4652393c90eaa771a5164502ec9dd965ae
> change-id: 20251013-enable-ctcu-for-qcs8300-ec83661e5acd
> 
> Best regards,


