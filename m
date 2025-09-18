Return-Path: <devicetree+bounces-218646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86107B82AFF
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 04:51:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BFD4488566
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 02:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC101E1A17;
	Thu, 18 Sep 2025 02:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="la9pR+Bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4AB1FC8
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758163897; cv=none; b=gx5xD+8EFwiSd2hdE/0oeoZ+LzsBE3fMZ8G39gkDTKGdXs8xpEMPlg2ZDZ95wA5E9qWwiGvlRTTgDYdMO6PsmkCmklaQXYXU3qFULgBcLQ9s9if6PU4e70k3XeDoKEVh8/Hw2La1CrvRHL1CmbSGaFExacs08yyvqaegwidEdnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758163897; c=relaxed/simple;
	bh=WcSRvEvShhrqbxNvzLtiCjssybnUH82Y+EQUkkK4AkQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d4DK0SfkBDsByVLbzfSuCoEiJZoFhKjlpfntpXWFsIpmEnUWoaJNqNdXsEcsk8Nd7/na3o0mHxm62JazF3nMXg1NDcCeJXKsAHHgsNaI7h/pxsigdVIMr5slT7rwwJsLDMk2LBl7ef9xTiTEKtoKpqEIL7Xi+LmdC9z+RohBKv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=la9pR+Bl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HGWsZQ019611
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fgecCebfDJtpE3JoBpenuay0Bs5D6Xykj3YET5V/PY8=; b=la9pR+BldbY1vaar
	z2ZOcpik7u9tIlKZiJvBbA9VeNGYARVhcmkrJowjycZL6wbInfwlv2zl+ZiCjaqn
	QZRDTZeAzsNpa3RQOGjAA2EPuq2qPgOGIDGzQqnbR0MrD7Irko5v64FWHZJmHCtc
	6tigV/dNKYaXzM6qk/j8wbpckq1CTRow47BYmA+AXC4FSgZ/KfiTWOtZFPCh6eeX
	0U4TVstOEz/r6gCTphdgxh6crAuReFj7aP0FKuSQGA7kxsPWjrR8RYTHsZ5DFxpr
	v9BzvTyZcCefnD5wd6motgT6CdM5zkRIvfKNJpsn51OhYEOFEmfhapQ2TgOdDW58
	0oMqCg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy1vra9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:51:33 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4f86568434so324511a12.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 19:51:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758163892; x=1758768692;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fgecCebfDJtpE3JoBpenuay0Bs5D6Xykj3YET5V/PY8=;
        b=rVkmVTfeFGjxoEesIA53RaksjJSIaRNrMIX9jQ0Dk0CH983umCgLVXDHoHDKWNVsYW
         XnQzmFH7nNGJWLFDLjtQ+13ipVLqEGrU6WN/rDwqAXo5J6HG61NO2CBh7aIB++Iyf7pV
         Xt08scuh2b6uOV0tmgNs71oqdDZururCRhOCcaX66HoGJ5TqrWOmbFO46IhEGRX+/GQc
         RnCp8aW4JvQ+XLgy4e/4+y/QzmrkcKqKVKLCxe1tibWLE+E101vVGasHeNxV9sL88FNY
         x1xRgwPuGCev/Tqv8FRtqTdLyBpGeIRSZCXBN4DGBIJnrbMHpwrWS6LWpTW7gmuZ355k
         41DA==
X-Forwarded-Encrypted: i=1; AJvYcCWUE2mNXxxFLkpgNGrdj7ZAn2bBVD1WnUsjOCFF5WXSoIHmZQ3t/f+YXPDnoU1pEVEo5JKi36LowhZA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/R30QvHcDRef6XV3wowAc0iQ7I8Q8FTNszVp8yBz+jd2rC7ix
	croOK8JbjHOJoHK1CBItr0ivKLRBHpVQLl1eLTQzC9P8/eTMKwJvChZTNVxrL83c4qN9OE5tTfw
	K3aDBVdICXmWqOna1gKwPYA0ezrxrtI0imBekDqIho3esjpPqveMDLrFd9mfypFFZ
X-Gm-Gg: ASbGncvp+rjtK/bg5efoI/JfVstTbBGhP8kfsQMMGfZ7zLzdXfyk4zNLN15mrF5ygIY
	AIPETkHrjVdHwSWONs6VAXAYwL5ZM/uFp3Oc/3e/FNist/UKQL5QBQnK6wuZFqzDzE2od+WRu5h
	f727WFqyiNATIIYTPnzZxK3LhclAFpflyoJbV8A4SeJybfvxVWyBmdoeUJIZG5W/PC2djW7faFc
	47ML/hf7FVM2+2CCP8LfPUZgdmNX/tG7HzblMKG7mUPpSJJhxeA4gwL9Gyxl3d9ZuG0c5sPwCje
	jwrlZh3gNGf1MUA62Qv3j2pbaNoUtjOFd8oDLQbvOxIIG+849kERxmbNwvQsk6pnKY03wA2PucH
	yYYVoOGP21UOvDi3us2CY5x0mYbJi
X-Received: by 2002:a05:6a20:548d:b0:24f:f79d:66a8 with SMTP id adf61e73a8af0-27a96a993f3mr5835807637.24.1758163891913;
        Wed, 17 Sep 2025 19:51:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO8+Yv7Mvypcl39Oo+6RrtTJ5B0aTO0XwTIkdwLESldoizSlNvP5sGd7bDmK1hg4lFmJhW6A==
X-Received: by 2002:a05:6a20:548d:b0:24f:f79d:66a8 with SMTP id adf61e73a8af0-27a96a993f3mr5835757637.24.1758163891401;
        Wed, 17 Sep 2025 19:51:31 -0700 (PDT)
Received: from [10.133.33.24] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff435325sm869595a12.43.2025.09.17.19.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 19:51:30 -0700 (PDT)
Message-ID: <f16f14ab-ff11-42a2-b63b-ed28e85d620b@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 10:51:22 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/5] pci: qcom: Add QCS8300 PCIe support
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
References: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: cTDNWgpKp_4sWn4DLrXx6_cE0_emZmr7
X-Proofpoint-ORIG-GUID: cTDNWgpKp_4sWn4DLrXx6_cE0_emZmr7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX4jmpJT2Di8oE
 XHIUtsgm8d8NgXB4BECKaWrfTpiR0puA8OqI2vS0RKhRBiitqHgXZfikPbibocATZzQCbW+i8du
 Tb7WlZ96/C7nuqHYP5P9NjD4vrqd7kXDrSg2sgCxRxSVytmOUZrRONwJQf+K0XW0/HAEJRQgtmZ
 J5Xl+CPuUYLH2Ff9y87Zbue2M2CMKN05dBSvih33m7eA7QSlS2m6MZa4L1KIcartmepCxsSyBib
 ys9nXPKYLK0bdhEM6GaSr2X6/3x3Cw3nhZqSzfNsSZsPxIcBr4+ucFYtNw0IRimzLjOhZkatobJ
 Eu8U+/A2V3hdqHuVc2vLbnZRv02fHaD/D7+LOcA7qBHYxUzU4maFn23QAwmdjONmzAmLXS3DhVW
 2x8NBND5
X-Authority-Analysis: v=2.4 cv=cf7SrmDM c=1 sm=1 tr=0 ts=68cb73b5 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=QyXUC8HyAAAA:8 a=IHEL40AIkIxnPEiLsFYA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202


On 9/8/2025 3:38 PM, Ziyue Zhang wrote:
> This series depend on this patch
> https://lore.kernel.org/all/20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com/
>
> This series adds document, phy, configs support for PCIe in QCS8300.
> It also adds 'link_down' reset for sa8775p.
>
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Changes in v13:
> - Fix dtb error
> - Link to v12: https://lore.kernel.org/all/20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v12:
> - rebased pcie phy bindings
> - Link to v11: https://lore.kernel.org/all/20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v11:
> - move phy/perst/wake to pcie bridge node (Mani)
> - Link to v10: https://lore.kernel.org/all/20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v10:
> - Update PHY max_items (Johan)
> - Link to v9: https://lore.kernel.org/all/20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v9:
> - Fix DTB error (Vinod)
> - Link to v8: https://lore.kernel.org/all/20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v8:
> - rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
> - Add Fixes tag to phy change (Johan)
> - Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v7:
> - rebase qcs8300-ride.dtsi change to solve conflicts.
> - Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v6:
> - move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
> - Update QCS8300 and sa8775p phy dt, remove aux clock.
> - Fixed compile error found by kernel test robot
> - Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v5:
> - Add QCOM PCIe controller version in commit msg (Mani)
> - Modify platform dts change subject (Dmitry)
> - Fixed compile error found by kernel test robot
> - Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v4:
> - Add received tag
> - Fixed compile error found by kernel test robot
> - Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7
>
> Changes in v3:
> - Add received tag(Rob & Dmitry)
> - Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
> - remove pcieprot0 node(Konrad & Mani)
> - Fix format comments(Konrad)
> - Update base-commit to tag: next-20241213(Bjorn)
> - Corrected of_device_id.data from 1.9.0 to 1.34.0.
> - Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Fix some format comments and match the style in x1e80100(Konrad)
> - Add global interrupt for PCIe0 and PCIe1(Konrad)
> - split the soc dtsi and the platform dts into two changes(Konrad)
> - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
>
> Ziyue Zhang (5):
>    dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>      for qcs8300
>    arm64: dts: qcom: qcs8300: enable pcie0
>    arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
>    arm64: dts: qcom: qcs8300: enable pcie1
>    arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
>
>   .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  17 +-
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  84 +++++
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 310 +++++++++++++++++-
>   3 files changed, 394 insertions(+), 17 deletions(-)
>
>
> base-commit: be5d4872e528796df9d7425f2bd9b3893eb3a42c
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

