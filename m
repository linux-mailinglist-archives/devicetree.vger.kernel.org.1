Return-Path: <devicetree+bounces-226312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2727BD7092
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:00:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77DA93B0017
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 02:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CAF33009C4;
	Tue, 14 Oct 2025 02:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nq2ymSzx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E2B3002AD
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760407250; cv=none; b=hvG+TTll64s+VLyQyQ0N5aJyDoytMB4G4hDhqzIeGy8LZ5n/7esExtd2EVRWTsy9nOZ5jYnQSDv48Bt83PlDVXjANFE3BoTmUyS2KCYTSbY7tgdVLnfrx+5QEYtUf5gXkx40qtV89JWhb2DKjXMuGg3xoyfl+60quOW2jCb313E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760407250; c=relaxed/simple;
	bh=I5yuLUogbuf/qT1pEerkxeA4bO738cmzner82eiqjeg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F9IyQ0q0vJmPrwiiSsE5ZbmLyo2n3phmkMjb6uzRCFzwyA30t5hg78aVkHXT7K1GmeywHysxKEC8FXblDT5OOIMtzXLiiP8wt+ASw0clgC9IpcSSTwRqH3gP+pc9gsVbL6SFVVnwmGPaNaZ51O68PTY7kTzFZkW7IjEz0W2cKdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nq2ymSzx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHD8bG002460
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:00:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MLgxIENZ2R89bUot9QQ1S92TKgSyswfQZ1AW/g+iuO4=; b=nq2ymSzxKgLEUi5q
	Fmb7sea5GlWbiHtkJLiGw04wp9AYPZn/VgezGmAvCr5uHhLCyWW7AJd1plfdUNhc
	rbExRX+QSO+y2GC6DeMULYcAIkLcHQDIoZucYncE4oEB66yNlkv0MeU01E2Eak7u
	/ASKuJFhrCKeTDaDo3rSwKL6wZRTkQI2Kb6I9hP+B/4IvI8tKvFckyLT9q6gGCr7
	tAP8jugRv8aF/ZUJUFNY63UOB5uwer+CUq6FraKUj4PHX6F8HYhPjE+5nMw1/vVQ
	Q1Kx659iEqIcB4tc4sA9xlGf1r0B2oueSbpy8zie2on+5q9Ahq2YVYraUImpl1Ei
	MXuufQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbhxsah-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:00:44 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-79e43c51e6fso513594b3a.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 19:00:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760407244; x=1761012044;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MLgxIENZ2R89bUot9QQ1S92TKgSyswfQZ1AW/g+iuO4=;
        b=bN7hmeE0L5wztQMTFmLgjCcpOfZPSX6mnAHg54eVTiKC7xQKOJEdmR6X+wypfSUVVq
         v5RkCrlB9f/Gnid+udotdx71gUMtI4Ap3jhcwySWZlIGI/0JCWG0PYzFtW4dn5fuFjR8
         H3ncaiclCK+KN21oyOZHo0fDoXyAmTuYBIS2TJmQ/731/Qr0EfXj/JKuf6ry1j9WUT0m
         6yRGXNyMTTqOKI7ZkVuGd+PDXKOG0gHk132Ht9hqy5GUG1QZOJqDQXItJ5EmYBWKiuHL
         oTtfNuIo8ngrzJ4Ctba0sDS9vifFZWnPGwUs9HZOLnCZBf5vc0VzhEPzTyWFvGQ49HCR
         SW0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWehpbNfN5J1Q2OBJIel35FsuzRaecXiNZxA4Pscn645i5ij/8tvg8rg/dlBJGOv4zuytCRqzd0UbXx@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs4Fsej3FpXwI7JB2wJH39lPqN7azO5jGzmDc3YMxuHxbWTL7U
	nfgFTM1ICBsasYUVMmw6r8gEfqwoDC+FfnchjbPqY7sOKUQ3/hAhskhXT/P2PrY6sjRnER7p2T/
	7mYL0MwaetLpz8hNe6WoYGhp3s4l9PI2hjIXAcCDk3nF5d+uqzQ61y2LnDrTl0EPf
X-Gm-Gg: ASbGncswfOrW3NeFGqWooAt1bXvQrfRErsQR80c65p2Uvg1JGTr0LtOf4M3MXrDcfnt
	BI3cyqE4x5ywLevSvIz7vzpTY5+hYy2E1QAsoQg+tukYhW2ZTLI8f5VD8S1LjmMWCzg2TDLPjqx
	2m6HzbWvzkrmp4l4GFnvk4/cmRmekEY0WUdQ2rwwoVnhHsjuwKBBYUbiDB2Xpan0Jqkb3N7ZAb6
	sDAsh8TPIW0A0l1jAhVqDAUcT/F6pv/zvwnhZYnV8K1vn6Rz0ZEk/vG2js0i+1gBF5H8+Gk59em
	X2Dl9xJR+lk35ulhxbtlvmgAjd8/wojPfLfUh+XVV/fOI8t7S5RrDh+UvFncPoYR9KgJpiBRZIg
	ZPE+zVVM1XsWGs5M3oJybiTls5PlV7w==
X-Received: by 2002:a05:6a00:3e25:b0:77f:2b7d:ee01 with SMTP id d2e1a72fcca58-79396e6902emr28455819b3a.1.1760407243567;
        Mon, 13 Oct 2025 19:00:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2lp7WYqpQQEvlMh5VIkBpxmzWMyfuY4bZZbU3xd5R2fAco236d4BOgMZcSwP2nYK88hnexQ==
X-Received: by 2002:a05:6a00:3e25:b0:77f:2b7d:ee01 with SMTP id d2e1a72fcca58-79396e6902emr28455772b3a.1.1760407243059;
        Mon, 13 Oct 2025 19:00:43 -0700 (PDT)
Received: from [10.133.33.141] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb116basm13161398b3a.30.2025.10.13.19.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 19:00:42 -0700 (PDT)
Message-ID: <c9cb2086-8826-40e4-989f-1bb1335ac4ef@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 10:00:34 +0800
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX1xl65+AIroGz
 ltaJXaz4mgTayh0y5jNcqOCQP4HeBgtPfNP3SJ9VLuUOEmC4FZrXHxEkBleOd3GTCzwqxKQHLim
 KjVrwX2yXT66UdLm+6kK2YPsSYx6bXaezrIiaSTyokrpRvGxoRWmU6jpMTH1zkXiF+/pcHCOxq5
 uSa9o0hHYTkil5HGgcXCtndn9GM8TZCGoTac7acnT/cTcZlwovAVsuNKyap//IeJ70LAbgZJq8d
 ULm1VBAO3imTk7ll2He0UJiUq0sxUcK4Wp02ibh7cYv+FHkzV4TONcVzbXq1CQAGp6MSc2yWDPA
 yh9dYtIGEAHHi47zmmfBdl7BmXFvICUmryA3YHSID2SRlKHI1a1KclyynGL0sqjDjebMCq7UV63
 eZTSMdRSO0WJq5js3nQ3OJh3K7nAzA==
X-Proofpoint-ORIG-GUID: PHDsOl9ECc_d1F5RVMdTRZLpKLLtRv0m
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68edaecd cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=QyXUC8HyAAAA:8
 a=IHEL40AIkIxnPEiLsFYA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: PHDsOl9ECc_d1F5RVMdTRZLpKLLtRv0m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018


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


