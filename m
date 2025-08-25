Return-Path: <devicetree+bounces-209089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B9EB347D5
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 18:44:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C77D17E950
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 16:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F1530101F;
	Mon, 25 Aug 2025 16:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dkEjYpXW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A242309B2
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 16:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756140253; cv=none; b=TXdFi2zUWMEHLSvdhwXaORToz1Y7EM1LbL8xnfkBJE4iZtSjpNzQpHQm/7OKsucysUdU+NcOdfT2P5+BWwIBltbsAUFTAE+df8gJ1foJuACKVyJKCFSL5IDhO5MLKaudf+Dg7yEMcFlQNdrqSISGZ2iowj/jqr7VvXttgdxT5nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756140253; c=relaxed/simple;
	bh=4+DrdL61UaJwKBOPyjvDbGLxMCh1l0N12pclwMqiu1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dX55FP6dsLQzD58bhYffsT+0Q9ByyM6tuGbrQ4gAV3+mJ6fsJJUckqSkr4quM+/bVmuVcrHNQIs15ACs7Vc2mXeYSUqUv5hp7i2nDuOgyJ/xCS6sQuHVtRYy2pCsiQOm2OjfPl06aiaGqv/YKA6u6V26BLbZyqelbbq3UM0JveE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dkEjYpXW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8rmvR023616
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 16:44:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VkXgtXV7f37xL22OCgZ71BFwpcYjM8tCLgUNGf2Ra+o=; b=dkEjYpXW5sHvhH4g
	ghdGqvR2iEkwBjqgPHURmzUcyhmYK8tF82KGlkDrORTWNR4SG57jWfIaHY2KaQdA
	skJ0p0qxEMGw+SJUBJMU1PD6VEJ1K2hq1Fjr71j60nZMgQpCMbEd0uNYHfYu3jXL
	QzCZm9inT7LXSNVCD8A32S60W7XMHp8Lrc2VTsw8qWX+SMMAFNXK4E1U4bWMtRWo
	UHzS/AHSZK/LvzO8crc23P3sL81Uz1mfkM64PNaBzSjctycOZQoj8dmuaNSnv6TS
	Fvuzst8IlOfMdfzazl8DSqImr0yzwYCIFf5JJXqVS2MZ0qiZR56mBVdlVxn6+bTG
	cerzGg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5dpqb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 16:44:10 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4c2c09a760so266827a12.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:44:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756140249; x=1756745049;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VkXgtXV7f37xL22OCgZ71BFwpcYjM8tCLgUNGf2Ra+o=;
        b=WgI5TJWU6AK9dZkk57lWK9YnMV2sgDd7Nwau+f2CHAjO41FgN+S49iC2TTGy6okKuR
         gfqoox1UfK6w3x8CcqO3paToIKwgED+WL5l4xMgMwUAARs1KPaU6JbnYm+Nz9QcSxLvo
         wISpQGaTQQT1PF9fGW9g9DYyWvw4eP4ZvpDrdG1OBP6diaVSw/evEMXnbjmQRQ2s6Rjw
         b1bC1+qB/ub9PleMoLnoeXqRFBE318I4E9jAOL7jyAVPWpoj/qU+fTC8SiXtwbhsvxDx
         uYBhoSnHYcFOFIgFJ3vDEMxY/rZ1bOHLTnRJlmYKMr1zv/JY/FIzVb3L2gAw8pcmfTAK
         +ylg==
X-Forwarded-Encrypted: i=1; AJvYcCW63LvN3UsBOkKiyxHOnWpxeXCmnd9T/cTyctZC7JE9LbI0/zDwipsIFOgV4/yoR4QDFeYC/PNxL1OY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8wXcjSxkH3QlcA/woP/83x/RqGvWs1is5c5vn13SYO92W2d/n
	8gf9YOL/3JuiuS600L2FNLF+rxF6igL5MC5+scnQyFvMIFKoMaV6R931dW8KOwJo3n9aNFbpDBF
	jD9YjIu/f4eofGqU9d/lFPlFAFJGuHe4ZsOcpQ90p15aDclb5kUos0PWDoTmD6Hy1
X-Gm-Gg: ASbGncvSTSHOzrq6FGUhywyMLwrNZE+gANRK3jgMCDMDd3zz2T2VY3ivxyCbFHTgopp
	+YsFUEiPqBuw26MRprnghE0NXWkOULXT3Zqyr59vmyBzLfgYLADqaFkNctTKg8KzyYGcl/r/UlK
	sCF7MfPA9amgc3deRkiI+Xq0yDLjSpQ8DTMigp4ZozCvr+j/JMAWPEI9lcEn/59rbCCmFOVyjC7
	Yj478bbqyT2V/j5Q2d6y0HYcvcBFpzulfjygF33xonUh+UoR/+36CPOlez8oWSyPqOlCgpnYN/K
	3sNuk+P7z5Ve+YjBro2EegjmmF5BIInVeyBDNiAZe2fT6DEBRq0yLG97FPB0YD+0MAxW
X-Received: by 2002:a17:902:ce8b:b0:240:52c8:2564 with SMTP id d9443c01a7336-2462ee8e8f4mr191030435ad.26.1756140249189;
        Mon, 25 Aug 2025 09:44:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+qUQTI7dH9WfoK+mxz4DLGdk08USfScffsegOK+mgoCLUWBBdePL8ik/Y/ki6NK0tKflmSw==
X-Received: by 2002:a17:902:ce8b:b0:240:52c8:2564 with SMTP id d9443c01a7336-2462ee8e8f4mr191030065ad.26.1756140248682;
        Mon, 25 Aug 2025 09:44:08 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24668889dbbsm72715395ad.132.2025.08.25.09.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 09:44:08 -0700 (PDT)
Date: Mon, 25 Aug 2025 22:14:01 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/7] OPP: Add support to find OPP for a set of keys
Message-ID: <aKyS0RGZX4bxbjDj@hu-wasimn-hyd.qualcomm.com>
References: <20250820-opp_pcie-v4-0-273b8944eed0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250820-opp_pcie-v4-0-273b8944eed0@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX0qeJwXE/jjNC
 z/1Au8z6hI7hdojq1lJcBhN3RA678UfWlnp2mhI4WxwuqiNbPnC/aHdbkUVOZXdVoPvGVFerThD
 QcPl906Q5MJUBCvM3kpbU9HbQUcbf/ZVu07jbNxUfDVZGg0m/5bqoxPnaczD/vbgKhIkMuPq4hw
 iustTKV3HXJL+cuxSG0rGmRpRXHZOHVYc/i0BrtQMTz9qM0yrnpwb0XPheQmUAGlRQ1+n+bP4QN
 +n7lTP3hblBF5KpZjVqyszAbTX2QKmMdzuoBAXdqopYiMlE1MKUKGC8WZppED6NcOv1WulmBXrM
 Xpf2PaDouwE8kH+xOCE+mx+JlfeCR8zsywu9BnRPK1LwIFXUIXzgtyGXlhiP3Td4In46fjq3Q5J
 ibiCpbHA
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68ac92da cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=76l3OPsZB85xAofE:21 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=1xens5CjvSCak2KtytIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: IjbYQ1fLEbF5oPUZ9tt-us5hlH0FTsN4
X-Proofpoint-ORIG-GUID: IjbYQ1fLEbF5oPUZ9tt-us5hlH0FTsN4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_08,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

On Wed, Aug 20, 2025 at 01:58:46PM +0530, Krishna Chaitanya Chundru wrote:
> The existing OPP table in the device tree for PCIe is shared across
> different link configurations such as data rates 8GT/s x2 and 16GT/s x1.
> These configurations often operate at the same frequency, allowing them
> to reuse the same OPP entries. However, 8GT/s and 16 GT/s may have
> different characteristics beyond frequency—such as RPMh votes in QCOM
> case, which cannot be represented accurately when sharing a single OPP.
> 
> In such cases, frequency alone is not sufficient to uniquely identify
> an OPP. To support these scenarios, introduce a new API
> dev_pm_opp_find_key_exact() that allows OPP lookup for set of keys like
> frequency, level & bandwidth.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
> Changes in v4:
> - Included dtsi changes for all platforms.
> - Made the changes as requested by Viresh like adding comments, some
>   coding styles etc.
> - Link to v3: https://lore.kernel.org/r/20250819-opp_pcie-v3-0-f8bd7e05ce41@oss.qualcomm.com
> 
> Changes in v3:
> - Always check for frequency match unless user doesn't pass it (Viresh).
> - Make dev_pm_opp_key public and let user pass the key (Viresh).
> - Include bandwidth as part of dev_pm_opp_key (Viresh).
> - Link to v2: https://lore.kernel.org/r/20250818-opp_pcie-v2-0-071524d98967@oss.qualcomm.com
> 
> Changes in v2:
> - Use opp-level to indentify data rate and use both frequency and level
>   to identify the OPP. (Viresh)
> - Link to v1: https://lore.kernel.org/r/20250717-opp_pcie-v1-0-dde6f452571b@oss.qualcomm.com
> 
> ---
> Krishna Chaitanya Chundru (7):
>       OPP: Add support to find OPP for a set of keys
>       OPP: Move refcount and key update for readability in _opp_table_find_key()

Hi Krishna,

Patch 2/7 is applied in linux-next (20250825) as commit
b5323835f050 (OPP: Reorganize _opp_table_find_key()) which is causing
regression on my board (lemans-evk (arm64)).
Reverting the change is resolving the issue.

Kernel log:
Unable to handle kernel NULL pointer dereference at virtual address 0000000000000016
...
Call trace:
 _read_bw+0x0/0x10 (P)
 _find_key+0xb8/0x194
 dev_pm_opp_find_bw_floor+0x54/0x8c
 bwmon_intr_thread+0x84/0x284 [icc_bwmon]
 irq_thread_fn+0x2c/0xa8
 irq_thread+0x174/0x334
 kthread+0x134/0x208
 ret_from_fork+0x10/0x20

>       arm64: dts: qcom: sm8450: Add opp-level to indicate PCIe data rates
>       arm64: dts: qcom: sm8550: Add opp-level to indicate PCIe data rates
>       arm64: dts: qcom: sm8650: Add opp-level to indicate PCIe data rates
>       arm64: dts: qcom: x1e80100: Add opp-level to indicate PCIe data rates
>       PCI: qcom: Use frequency and level based OPP lookup
> 
>  arch/arm64/boot/dts/qcom/sm8450.dtsi   |  41 ++++++++++---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi   |  63 ++++++++++++++-----
>  arch/arm64/boot/dts/qcom/sm8650.dtsi   |  63 ++++++++++++++-----
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi |  90 ++++++++++++++++++++++-----
>  drivers/opp/core.c                     | 107 +++++++++++++++++++++++++++++++--
>  drivers/pci/controller/dwc/pcie-qcom.c |   7 ++-
>  include/linux/pm_opp.h                 |  30 +++++++++
>  7 files changed, 341 insertions(+), 60 deletions(-)
> ---
> base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
> change-id: 20250717-opp_pcie-793160b2b113
> 
> Best regards,
> -- 
> Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> 

-- 
Regards,
Wasim

