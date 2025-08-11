Return-Path: <devicetree+bounces-203093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D8FB20050
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:30:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 393A1189B5DE
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 07:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3C1D2DA75C;
	Mon, 11 Aug 2025 07:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VapAIphb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CF52DA751
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754897420; cv=none; b=sWz3nIWdy/QkN4brB55ETGqpt5jXvpF7uhuZo1KfeBI9JiObUtmFOIWHzuE6K2Ei2RcL58MKFZz+a188P9cfOTqJk1YLgf+r0587xoLKTxosWcLS/0jahJ9OKMTwjWCe4mdCaFkD+g7IYsD9PdfgS2u/9cyPSG308jqEjgwCuc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754897420; c=relaxed/simple;
	bh=lckde+jMQk66xn8OaUk0PP30d4mhLqwl/Duo1sMYROs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=batPH8xMltYntSGb+1QNKWILvbq+F0hCf55k9Xul80P3SOFQga6QdolQ8E3dz/cGVW/TMHxYmOM/hR38eID1yyvTuo2O8uWhKfw6hMkqXJjf/KV5HWL1nuRw/AWQTc4ihIs0NhmtQ/EvNaVOp2DxcIc+UYR9QYOWBfe6ebR0sEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VapAIphb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57ANwAk4003985
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:30:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OcP8VyIXvYe2IEmI7Z5YRpFJhorfq3DAeG+V0H/cwMw=; b=VapAIphbd8bN8TYF
	KwQSuuSb3hiRYQTYuLISG6SZfskrWNw6Y2pgFpEbB6BBiDhnOzKFlZIXPQE7x91f
	yiCK8qaiHN4f7Z/ZBBc8IxtiMo0KpinwBS1Uj+uujrvhAuHJy2yJjmVN6m674Q7l
	fVm98d+K1AYJsop9feoQeqGixCsh7tYiVlHM/b04Oq3K6NS77sreOqYBjJg5mmTm
	WmrYuaB/3Zt88OHfrkMZFNL/u1tv49W9ugzONqGiVbYGe35EH4ugRmwRbZ2SemuR
	m6haRxxUuP8MPAa9zo7icgn36bIc/AhoamaKy2MA7R6VqbFEz1Y2k7A+OL9fzPdO
	T4jqXQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dw9skka0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:30:18 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76bf73032abso4145011b3a.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 00:30:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754897417; x=1755502217;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OcP8VyIXvYe2IEmI7Z5YRpFJhorfq3DAeG+V0H/cwMw=;
        b=FN5uQjTx21PoWAeTEaoLSlCQR1ox8/ry/Rnk67Q3gONWLZDWkfBJaMkhYuzEXo73By
         k9xcNFSdIIgDnTGHLjIuopRMS8kHIejo3n9wkkz6e+bcnWR8OoMMSVYMAFjasso2oa5k
         yx4K9lco1PV1Ci8QmW4dM8hhS3/m7vKACLb8LU8WREvrBDyAsQ75t+F/J08UOWQjifkE
         xtBfmLtLVsZWXfBBxEgieFmfyF4jRzFpmrW1uKcsGFbcIf7v0m6qYGjlmhiRFatSYQ2s
         wQ+s0aBkpUtwDfX3MKnQ3Lsw7zPGOxctrrQ9Tz/XaSuHLxRo6MwImQSqY1l75LhY9cps
         y2cA==
X-Forwarded-Encrypted: i=1; AJvYcCUmnY7kqnfYkh12Rv96/Yg1N6/mcZ+eFYLjE2cSYo41BPBbnBArhaA8kIxiefU+eWttpHLcex+mr4bN@vger.kernel.org
X-Gm-Message-State: AOJu0YyZrt+nx+/mtVizsSUGvmn+TkZQQ7B1kCphxK6dDx3PPJCrKxZI
	w5cEej0PifNse9ZbCkcXAgTAvWpQA/HTnmz7z52wFFNzzSvKPwhQ6eq0WpsBadk0ak5QtkmkPPX
	uxKBk/B45ujXYn4mGD9kQD7ar2niug3aX1PaMO5QakEGVJRi5NaFQcR5ZurBuWv6+
X-Gm-Gg: ASbGncug+k4XYvssVJZcNljoQPqX726eYaF2qQn+U+kUo8ntsK/EwCtMAmLMdyJop/w
	ZsANUPSdwlvlaoqopxwVZyyS9f+3fkm8OmBNdN2g4ox2q84olq1xwAdbUctiiiM9Na1qLi0A693
	hhYuVuKf0rxexMMxH1rEUMS9JMjChzE4lqfNLDwEgsW6+Z5w50Bhmeo1g29SsIF9ezTHr2icIfo
	uZQdRf8rnMJxPGO1eL0xvJX44hx6zFZRTsIIzL0aG3nE+nQGYcFvJvQ2wYCkvEI5RulsLv6CSBw
	hcEhnVo5xFjBsyneBFxY44NzFwMlal/gvYcDLIVwWk5pyiwkrxy9sXxdk3nHzHSlCw5Vltw/IWu
	1Mga5HkkXi1xQ1OOO3SLZWGdfbUhP
X-Received: by 2002:a05:6a00:b85:b0:76b:c9b9:a11b with SMTP id d2e1a72fcca58-76c46088bc4mr19460949b3a.3.1754897417506;
        Mon, 11 Aug 2025 00:30:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcltBUJ0g3R1fj2EUKLW6qYXdOXJ4NHnBg4nb4hNe0riHVIhAk6EPyUknxW89lXsGXleL63A==
X-Received: by 2002:a05:6a00:b85:b0:76b:c9b9:a11b with SMTP id d2e1a72fcca58-76c46088bc4mr19460907b3a.3.1754897417066;
        Mon, 11 Aug 2025 00:30:17 -0700 (PDT)
Received: from [10.133.33.12] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfd8ebbsm26141096b3a.102.2025.08.11.00.30.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 00:30:16 -0700 (PDT)
Message-ID: <e9e77527-202c-411e-add2-2af9d82b8e8d@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 15:30:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/2] pci: qcom: Add QCS615 PCIe support
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
References: <20250725112346.614316-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250725112346.614316-1-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=J+Wq7BnS c=1 sm=1 tr=0 ts=68999c0a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=0rveLjV9VWli9pvRdbwA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: OEqvrSsQ7bM_XvMJQpvRQ5BqLvwJ2H3K
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxNSBTYWx0ZWRfX3HxBi+hK+Dyl
 YN+EWyf8A2vMDWd3RsDLEsq/8MoS095yfbPW9U0E2r9bMHrBYyYSW8xtvs+opi4UGcqBETm5gEN
 JwL21iBh3GG9GSw8Ts2/RpIEDEhOHwDfTN171p9OM+7NEXX+O1h21rFooyyZgnxunMb9UimiHnw
 23oeXk/bxfCExcH1kzlSb0cMkHOCWZms9kB4KcC3JrH/v91SdQAh/AEPwJdJD0tmyBp4u+KsvfD
 LfAfrD+0DTAaxrf+6lEE8BZD7E7WcAVxewzdpRxQ9DDlvo2P4iIcHfhcgVEowiCgcFORlwE1QAz
 wDQcHW4Qm4Py3huL5i8JlbNlkjBTZI2SG2Qph4UBRv0ZAq2i0KkgIqFnY0YEg/9E38VArOvZe54
 v0HbFUDO
X-Proofpoint-GUID: OEqvrSsQ7bM_XvMJQpvRQ5BqLvwJ2H3K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090015


On 7/25/2025 7:23 PM, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS615.
>
> This series depend on the dt-bindings change
> https://lore.kernel.org/all/20250521-topic-8150_pcie_drop_clocks-v1-0-3d42e84f6453@oss.qualcomm.com/
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
> Have following changes:
> 	- Add a new Document the QCS615 PCIe Controller
> 	- Add configurations in devicetree for PCIe, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe, platform related gpios, PMIC regulators, etc.
>
> Changes in v9:
> - Patch rebased
> - Link to v8: https://lore.kernel.org/all/20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v8:
> - Fix scripts/checkpatch.pl error (Krzystof)
> - Link to v7: https://lore.kernel.org/all/20250702103549.712039-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v7:
> - Add Fixes tag to phy bindings patch (Johan)
> - QCS615 is Gen3 controller but Gen2 phy, so limited max link speed to Gen2.
> - Remove eq-presets-8gts and oppopp-8000000 for only support Gen2.
> - Link to v6: https://lore.kernel.org/all/t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe/
>
> Changes in v6:
> - Change PCIe equalization setting to one lane
> - Add reviewed by tags
> - Link to v5: https://lore.kernel.org/all/t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe/
>
> Changes in v5:
> - Drop qcs615-pcie.yaml and use sm8150, as qcs615 is the downgraded
>    version of sm8150, which can share the same yaml.
> - Drop compatible enrty in driver and use sm8150's enrty (Krzysztof)
> - Fix the DT format problem (Konrad)
> - Link to v4: https://lore.kernel.org/all/20250507031559.4085159-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v4:
> - Fixed compile error found by kernel test robot(Krzysztof)
> - Update DT format (Konrad & Krzysztof)
> - Remove QCS8550 compatible use QCS615 compatible only (Konrad)
> - Update phy dt bindings to fix the dtb check errors.
> - Link to v3: https://lore.kernel.org/all/20250310065613.151598-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v3:
> - Update qcs615 dt-bindings to fit the qcom-soc.yaml (Krzysztof & Dmitry)
> - Removed the driver patch and using fallback method (Mani)
> - Update DT format, keep it same with the x1e801000.dtsi (Konrad)
> - Update DT commit message (Bojor)
> - Link to v2: https://lore.kernel.org/all/20241122023314.1616353-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Update commit message for qcs615 phy
> - Update qcs615 phy, using lowercase hex
> - Removed redundant function
> - split the soc dtsi and the platform dts into two changes
> - Link to v1: https://lore.kernel.org/all/20241118082619.177201-1-quic_ziyuzhan@quicinc.com/
>
>
> Krishna chaitanya chundru (2):
>    arm64: dts: qcom: qcs615: enable pcie
>    arm64: dts: qcom: qcs615-ride: Enable PCIe interface
>
>   arch/arm64/boot/dts/qcom/qcs615-ride.dts |  42 +++++++
>   arch/arm64/boot/dts/qcom/sm6150.dtsi     | 138 +++++++++++++++++++++++
>   2 files changed, 180 insertions(+)
>
>
> base-commit: d7af19298454ed155f5cf67201a70f5cf836c842
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

