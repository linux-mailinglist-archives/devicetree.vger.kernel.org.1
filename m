Return-Path: <devicetree+bounces-235009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 636EFC3395A
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 02:05:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 471574E372B
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 01:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2C81DF75B;
	Wed,  5 Nov 2025 01:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HAe9xfjD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S+QHBiu5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDC522D4F6
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 01:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762304720; cv=none; b=StOJG67RUD4pQkDW+pewQO1e1C/YnXvWU+BPmqCy8zw0AktHiv8vEyUcvRSO+D+VTOUS4F8rDzZhENSfmbQKYlbXzgQM1dWHEo0l3CgCG6ijaYQ/Xmexod7g3JqeecLhiHNQxNftnNcEpiU0JbGG261o88t4PKpk7aHAj00Nfsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762304720; c=relaxed/simple;
	bh=rJtYVnNy7gj+m3wBMg5oFKaq644ysYMWoHfp47xDheU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZBui7SM145PZEZjPpz9uJrxLfM/AV8uRkUvRQEBO3f34czdz5nsfBqpmUAmdr2NJ82Iy39sKBIwZFG7r/klV+aELFJ2rFc+5GuICycyX2gw6U1fkNZW/V/7u+mwjxYteBVf0nDUHB88W61sd36cQRTmXxyhd0taOKLX+ZM3uD5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HAe9xfjD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S+QHBiu5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4Kh4o62929952
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 01:05:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UKB3wyWvpcPr7K0yIT6UZfC+SjpvEvAQpR2nzIL2AxA=; b=HAe9xfjDP1B+Igrf
	87XNDwPyr8F8I16Gx7x9bzHay5IWPo2hYvhmVaD396GTtsPb+BUIg2Yr+DkCS8FK
	9U+T0zOvs73Wb69XyRaPPX0wLR/Ta4t/vJxRlfaQJ0n396B6qln+bPKKcogbDzfi
	f76C7wvFu1PZtk1qGRiOliABbQDXRCMvLoT5BuKEPBr+ESMOksLvirKbreUJ3i1D
	pP1wfd0WSTn9pFX2wW637jlywr9iCFnUbDHTMC3I4+UhE7dl2zcV3yselKb6aDnT
	e3OjcZou9TbstJHI+8I/wzATRS51R+ZTPf8m/izRp0cdZEaJ+S231V5qw8lHyODc
	1m3+GQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7me5shj3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:05:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e8984d8833so167827771cf.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 17:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762304717; x=1762909517; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UKB3wyWvpcPr7K0yIT6UZfC+SjpvEvAQpR2nzIL2AxA=;
        b=S+QHBiu5QPOSijwSILiNvOmtCNsua3KZ+yYEt4ZNIfzl+lv1HFUwd7iuOkY3d8c6xb
         FzwXI+CfVI1dl0bpnNrF9LvdJesjLlnwimu5j09BzUxQKc8uj2PMB+gWD4G2vt7745LI
         OniB7oPylTScCF/XOJ8FXkeyZunmmsyFCb1RlPiOqOEboWihaong3eDSv3sMiSO7tap6
         rx+MnXHoWviCDNZSieU/0/inj5705QKq99hcu8FXON7mso95qQe3K/JezyC+pmVt/v9K
         0JtSf0RhW227+DFZpz1GCnE6DXJaFzfr9InqpFwbyZhiva2KjlAK7aqANn/6nFebscKb
         UNow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762304717; x=1762909517;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UKB3wyWvpcPr7K0yIT6UZfC+SjpvEvAQpR2nzIL2AxA=;
        b=G9p/1/kkjq8ZWZIVIl++eVU64Z+TdMt0ND6ymqnDA24wN2lsRS9myujqGeBZYCWDmM
         wj8avGlNcFjdLjihl8aLZ1aZsfrxV9K+UKpWvKKHq2y6H/FVcROiJ9P6m/3kFN/MczBD
         K/d9uQkrc05wu0gTVNuS0XWFW8bU80Gv7BN3c5AVgvvsrohuE7fsaMserLuO9FvTFM40
         qchlMncbyFdbYWADft7yiFpRAmaJclUcMoY9fDJEhUeD7zGT1D4WkH1jqmTTNTKLk9i0
         oGh08GeugpoL7OiTc21uLoMM1TXAo2qjvK85BXokcqK7ZSrPMl2or88ozxFWs5CAdV7j
         Zk7g==
X-Forwarded-Encrypted: i=1; AJvYcCWkCx07dvjnDcCFgFpmtGja5FBeuA/0jcB2bXa+anscp369GgTBoVhULgDxTFv9SqPTCbFH97W+J47Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxOqxcrEr5vqV8Wtv+Yebkg+iBzB5SBtvspOWF3LH/2VPuz+Sv8
	P+4T0qgywfFJ7kGTqo4G3jJVbIrKlNKxW5veaoG7Mr/CVHCnpuXkaivzMsfgyq9S9EK+wkghZPu
	LlOgtuSnE5tpNhgrIh4vFrKwzBT6I5VwFCvoHYNeGlHAJmdnXxsT2qkh3fZFizPEqgdfnqla0
X-Gm-Gg: ASbGncs69I4XoLjzT9KLRwurTR/8vQ24SjDAsyZB7xo4LnqUThqSGGQkBam3crhVG8o
	VYe2Gkk9X/jB60fJhkyJNcHO3NRa2G+0lMGUBXvnJ7ahVC+xogmwn9OMc6y1bOhqG3EsenA/cUf
	FLDb4253by7Z3VBq4yoK3VUYsnlt6Tzr9aF+4IqmPyBGXX+WyC18HieX/q6+cdwd7hhFMz13CQ7
	fVfuIwtTXnUgP34IJgsE5qY5V7R/F4izGvWJLUnfIkyhlslA1uzDrH3cuFOJ54qTIoMCcOsLCz3
	VsiVm17/Iv0EC4rB85v9JVYbyUEdyxcXAlUhbsMpp5pXrSjrQuI6ZF1fuLSt1IFvPt2+uI1V/RB
	wJuW85vHTwvyWE3jL+JyT9tP+BYO7J4VWSvAgX4As/Y5f1Bh6O1cJj99y7yqrw7qfWM3D6jCuPp
	UOR5qwFfh09OXF
X-Received: by 2002:a05:622a:13cd:b0:4d2:4df8:4cb5 with SMTP id d75a77b69052e-4ed723769ebmr20660311cf.4.1762304716828;
        Tue, 04 Nov 2025 17:05:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7Pr3olhiTuSINhpQDsTtR+kYGQ/VuHjHNLQdRp69Wwe2b5u1dtEzPf+NBtNigm3oiU9boaA==
X-Received: by 2002:a05:622a:13cd:b0:4d2:4df8:4cb5 with SMTP id d75a77b69052e-4ed723769ebmr20660041cf.4.1762304716391;
        Tue, 04 Nov 2025 17:05:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a414a0ddasm10514441fa.8.2025.11.04.17.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 17:05:15 -0800 (PST)
Date: Wed, 5 Nov 2025 03:05:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/2] Add Qualcomm Technologies, Inc. Talos EVK SMARC
 support
Message-ID: <xq4jidiffovpg3armhlzrzxloug4irumlycyyvmfaugajbtq4t@cutuj5736ayo>
References: <20251104125126.1006400-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251104125126.1006400-1-tessolveupstream@gmail.com>
X-Proofpoint-GUID: Dnds9hfbUzP7kNc0vRMW_bwyzyvd_b6C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDAwNyBTYWx0ZWRfXxZ0Aj781VhUc
 /O1BbaZ2xFXFD2IQOqi/wqgVbC5SUM3U7zH3ItE118TLQ8gTKoFDaHPyOjSrvFr4/IHIfgXbmwA
 ssNscXB76cmnO8kqcUfoGDhI2ZWsfzQI6QPWejffkCgDBRbpTKLkmxs/qeUqyQm0vwRrcj5zVE5
 gzxes9yq7u8yv+hKNUow3viyUoaiq52u6H778UsqZDGtT5M7nTi5zQl64j/ovU4VarsLI2inp00
 s03NuAhHl0fwFY1pzOQ/vfYp5yT9U+Y/qA0bW/HwQuT7QnaDBsBiA+e6KdObHujKgNkokx+bGDZ
 THRm4ZGMJDd/+ynWKF2HqfF2c98Iyh5+VTDX0TogVlWz4SFJnv26JoXtxKy4C/wGkzjMB85h5ey
 rJq6VxoR/RzOMyzped4+nS7Je3sHgA==
X-Proofpoint-ORIG-GUID: Dnds9hfbUzP7kNc0vRMW_bwyzyvd_b6C
X-Authority-Analysis: v=2.4 cv=IpsTsb/g c=1 sm=1 tr=0 ts=690aa2ce cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COHdNaOoP-U2MmXgnREA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050007

On Tue, Nov 04, 2025 at 06:21:24PM +0530, Sudarshan Shetty wrote:
> Hi all,
> 
> This patch series adds device tree binding and board support for the
> Qualcomm Technologies, Inc. Talos EVK SMARC platform based on the
> QCS615 SoC.
> 
> The first patch introduces the DT binding entry for the Talos EVK
> SMARC board, and the second patch adds the corresponding DTS
> files for the platform.
> 
> Note:
> USB(usb_1_dwc3) supports host-only mode based on the switch SW1 on
> the SoM, which is purely a hardware controlled as USB-ID and USB-VBUS
> is not connected the switching cannot be handled from SW.
> Hence from SW Host-only mode is supported on Linux boot up.
> 
> Changes in v5:
>  - Updated commit message. (suggested by Krzysztof)
>  - Introduced generic node name for can, dp, hdmi-bridge. (suggested by
>    Krzysztof)
>  - Introduced talos-evk-cb.dtsi, which has common carrier board
>    interfaces.

Common between what?

>  - No functional change in bindings file.
> 
> Changes in v4:
>  - Updated product name to full form per Krzysztof’s feedback in
>    dt-binding comment.
>  - Hook up the ADV7535 DSI-to-HDMI bridge to base DTS file.
>  - Add DP connector node and MDSS DisplayPort controller.
>  - Added USB note in the cover letter for maintainers' awareness.
> 
> Changes in v3:
>  - Addressed comments from Dmitry regarding USB1 `dr_mode` and 
>    added a DTS comment.
>  - No functional change in bindings file.
> 
> Changes in v2:
>  - Renamed compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
>  - Merged enum entry with existing `qcs615-ride` block (Krzysztof)
>  - Fixed subject and commit message to use imperative mood.
> 
> Thanks,
> Sudarshan
> 
> Sudarshan Shetty (2):
>   dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
>   arm64: dts: qcom: talos-evk: Add support for QCS615 talos evk board
> 
>  .../devicetree/bindings/arm/qcom.yaml         |   1 +
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi    |  56 +++
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 442 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/talos-evk.dts        |  87 ++++
>  5 files changed, 587 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

