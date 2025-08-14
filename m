Return-Path: <devicetree+bounces-204541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 194FFB25EA5
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 10:24:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 422551C284DE
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 08:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1957E2E763F;
	Thu, 14 Aug 2025 08:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DslO9j9n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A1A134A8
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755159852; cv=none; b=BENfjv5oKXlFpK/H7BNU+iprqxG7q+bJ8le7/Jz2bEeCyJu6pZ5fY55s31cciOlrUmkDFPdl6ovfy9b3hiFXMpyyAK58ZBtKwczspO4YEm0W2FSuLIhk9/3ojbk0E7nTrgRlnNH4uSNc6RJdxS3X9fyvdVp6qsnL/S1cuEUR8o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755159852; c=relaxed/simple;
	bh=x/vD0eT82eorZ1S1sGi4+1pN1ugsh/LpqIA/GYt0GoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CZCmo8Tyh/RuDtKQ07l5Xf70O5K0WXGLYvDA7dw1lXGo24z4fQ0ndlpPoadTtlsXaPvPiBbRy9LAmTOGZuTH9Ay9iHMbFJMECOD4lC4VVzFHUAMAf7ZPDDHW7ViBYQX+eF5AgUhjgxPzmvgOp7tFxWsuaoo6gux8DDRc7lzKDek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DslO9j9n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DNX3mP023964
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:24:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	STzZkkK3s0ULF0XUFVwg+6IbX+TqSk42ASKMrRFRGxU=; b=DslO9j9nblKbzgNf
	BNwzqd1SbsWTyxqEQeROfmxT6a31d4mNuu/RUSEgLWkSIROuw8IOdzTkmNOH9z+F
	hB2+LYefIvKIip92mMg/F39Hd7CCiuP9tuJuM5AWRwgSR2Lkm5RFUFdPrRwp658C
	FWWncXWqurgyEfU7ZjCBXI+rK6r9pRYg/4WozZsgjfCH3b4B9HJmME51KoUvagkY
	+ZVs61lRWleBIFDku22rGyimLxvJckjujQlZe4kPVe1MUTeBgnNeXAWtpAjcpylq
	5c2aLRZb5JukM9X4pYFMDZQAQdLRPUU7Z7NkuMyke7SGE+5lAG7uvcyBY1XZMo5k
	cBLXXA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9ruk6a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:24:08 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109c4c2cfso28087561cf.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 01:24:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755159847; x=1755764647;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=STzZkkK3s0ULF0XUFVwg+6IbX+TqSk42ASKMrRFRGxU=;
        b=s6s3lsY3RtobS4KCxNBeftPAoN1BOoaQZBoGDjxttEcfnGDSjrC8XeW+hoHeiw3lFH
         E3ydZynvS+CFBsYXD7tWUdg4aunbIXCp+qleokKSN9pGn7L2c6xnZwOqeFe6QE5RTps1
         go0Zj+AJfANRK4IQBemMXGYond+KD74kRC+emPASTStSZ8rOx8JZTpaC9VA1IzeQQ3qx
         lUn8sqsofTDJgeqPFYrdhiZnlOsFMgKl+rdrhimQAksfArKPleJlIdvq6M8SlG7h/pXp
         PzivOMhAGn828J0QYYWdOMT6gPNDV+bCZq3ZSu0jClQ3l/THHDV/rhPmkbTa6u3VHQ0m
         DtCg==
X-Forwarded-Encrypted: i=1; AJvYcCWBbEOoUHV13XcVsN8mnitzOuvdjbkAUlAunX49F2xFgwLPZhBoGQBiH/5ueLf5UBW01wlwVAfPOy3d@vger.kernel.org
X-Gm-Message-State: AOJu0YwJx6KUzfTaik1ZQzklBODhgn+qF9y4coXlBtNcHJ2+fw7nE272
	dyR2CAJowCBLj02QFkPzwMu31UzKYEsiLJwRe5zqgsKUi4veBuzWeJJ/f6o40zN9/WXqGfs5vyO
	N4BPhwq+0tA8EfCM2aABbriQmqHG72aQHnlWuOvMMbqXn3GqDPoCQ/jaeLqVPidX7
X-Gm-Gg: ASbGncsqCku4xsIL++QGIzqt/0loYZbgiUHWH0la7KEvrzrMAdCqclSelFNeyVJ0lYO
	QduesRALF7HLVSwHuZisFN9yp9GF/xbaFviJrPgSXtIo0yqL/6jGP4X6gPVQnbQ0oAgiN2+0nkl
	x6nAPciQkh7S//KTcsye5BAFBHrXm0eZ/1ykgixfES63r3UZLgzhoL7kGJwrAS4tTnhja28HCgR
	GqlVSZiTb+Z91qhwEDIwzTlJ2NzKAIZyq5DzUZKZP3j0suByOmjZZq5VEcRvoH3bhQ5CSPhZK1X
	vY/FT6ogaXPCqiO/Ui5x/pbPTO93VT4A4aXhBvhQ+u07q4RkmaFro0mjBj8TBcxeKq4MOYJecq0
	zPboVsU2DJlxqs/yN1K4037J2cCuPeMfEiKyZC4BZnnJd1qsupPJR
X-Received: by 2002:a05:622a:99a:b0:4ab:6499:7864 with SMTP id d75a77b69052e-4b10a96a5a5mr36305821cf.22.1755159846680;
        Thu, 14 Aug 2025 01:24:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPX29qryebvlyshE3WKiFvt9j6kVQRM4jDsF730RtTEEqTpS7RsbGTjBh8FQJrkQYwPSfPYg==
X-Received: by 2002:a05:622a:99a:b0:4ab:6499:7864 with SMTP id d75a77b69052e-4b10a96a5a5mr36305601cf.22.1755159845980;
        Thu, 14 Aug 2025 01:24:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88cb7f40sm5652859e87.171.2025.08.14.01.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 01:24:05 -0700 (PDT)
Date: Thu, 14 Aug 2025 11:24:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yingying Tang <quic_yintang@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
Subject: Re: [PATCH v5 0/3] Initial support for Qualcomm Hamoa IOT EVK board
Message-ID: <5reeryefhw7burzf2lymhg5wivaq2n4gq5hszvfp57dergvpyx@qehaf334gdrn>
References: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX8eq5yNwjreaf
 avOM27fFUMNhifgez8KrkhiPc1xd4wNQT+xz6qc+bVYzzCrsZwCygKo4yYfVmLov+o4PTD1rmW0
 bBh/cz1X4nQlvEyKvJtBHY7UyKZuErxvv0IFnHq1LIYNJq3hCU1qpL4F5EB0ERjxD3mz36GNywP
 d+Fw/ze25Fbj8werJCAaPAjX+AgMv9xAHCCiRbZlE30VEOhxh2MFjs4lrYLSpxcGdEMjPF3KrzB
 RUqNle42BoFubbTNTnZndoCvfe08GQz9Y1H7rd8eUWsSD9Y8g+SOooy8DdcgyQ2rG2SmreSb8ny
 pl+9v91q7qK7Lo3GxBSVEzQ4cTYc9v6P61lMe4n/c17vUHzW4GOg/HAOsreFQw/hOtOJZar6QuI
 Sn91StbN
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689d9d28 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=wouTI8Ndp15Em8D2RjsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: jwLBk0njO3RuophtXd4dLWyOPW-CCiC8
X-Proofpoint-GUID: jwLBk0njO3RuophtXd4dLWyOPW-CCiC8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094

On Thu, Aug 14, 2025 at 03:27:27PM +0800, Yijie Yang wrote:
> Introduce the device tree, DT bindings, and driver modifications required
> to bring up the HAMOA-IOT-EVK evaluation board—based on the X1E80100 SoC—to
> a UART shell.
> This patch set focuses on two key hardware components: the HAMOA-IOT-SOM
> and the HAMOA-IOT-EVK carrier board.
> The HAMOA-IOT-SOM is a compact System on Module that integrates the SoC,
> GPIOs, and PMICs. It is designed to be modular and can be paired with
> various carrier boards to support different use cases.
> The HAMOA-IOT-EVK is one such carrier board, designed for IoT scenarios.
> It provides essential peripherals such as UART, on-board PMICs, and
> USB-related components.
> Together, these components form a flexible and scalable platform, and this
> patch set enables their initial bring-up through proper device tree
> configuration and driver support.
> 
> Qualcomm SoCs often have multiple product variants, each identified by a
> different SoC ID. For instance, the x1e80100 SoC has closely related
> variants such as x1e78100 and x1e001de. This diversity in SoC identifiers
> can lead to confusion and unnecessary maintenance complexity in the device
> tree and related subsystems.
> To address this, code names offer a more consistent and project-agnostic
> way to represent SoC families. They tend to remain stable across
> development efforts.
> This patch series introduces "hamoa" as the codename for the x1e80100 SoC.
> Going forward, all x1e80100-related variants—including x1e81000 and others
> in the same family—will be represented under the "hamoa" designation in the
> device tree.
> This improves readability, streamlines future maintenance, and aligns with
> common naming practices across Qualcomm-based platforms. 
> 
> Features added and enabled:
> - UART
> - On-board regulators
> - Regulators on the SOM
> - PMIC GLINK
> - USB0 through USB6 and their PHYs
> - Embedded USB (eUSB) repeaters
> - USB Type-C mux
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - Reserved memory regions
> - Pinctrl
> - NVMe
> - ADSP, CDSP
> - WLAN, Bluetooth (M.2 interface)
> - USB DisplayPort
> 
> DTS Dependency:
> https://lore.kernel.org/all/20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com/
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konradybcio@kernel.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> 
> ---
> Changes in v5:
> - Update base commit.
> - Drop an already merged patch:
> https://lore.kernel.org/all/20250804-hamoa_initial-v4-2-19edbb28677b@oss.qualcomm.com/
> - Link to v4: https://lore.kernel.org/r/20250804-hamoa_initial-v4-0-19edbb28677b@oss.qualcomm.com

Please keep full changelog rather than trimming previous iterations.

Also, is there a reason why you didn't pick up audio and display chunks
as it was requested on the corresponding reviews?

> 
> ---
> Yijie Yang (3):
>       dt-bindings: arm: qcom: Document HAMOA-IOT-EVK board
>       arm64: dts: qcom: Add HAMOA-IOT-SOM platform
>       arm64: dts: qcom: Add base HAMOA-IOT-EVK board
> 
>  Documentation/devicetree/bindings/arm/qcom.yaml |   6 +
>  arch/arm64/boot/dts/qcom/Makefile               |   1 +
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts      | 987 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi     | 609 +++++++++++++++
>  4 files changed, 1603 insertions(+)
> ---
> base-commit: 2016d952577e807ee89e0cef02af1f95aabbbcb2
> change-id: 20250604-hamoa_initial-0cd7036d7271
> prerequisite-message-id: <20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com>
> prerequisite-patch-id: c536bf9ec7fd22af9b05b695272997615dfd675f
> prerequisite-patch-id: d513e5a08d3be585b9b6a737ef3a1ad275d7caad
> prerequisite-patch-id: 605ef6f89dd84f810df11be9d11ee6803a6bf289
> prerequisite-patch-id: 2ab2430624acbdd9011f6c0c2a77469fd19fc75a
> prerequisite-patch-id: bfbb562513763ce75f2bb5da7f12e7b54ff3919d
> 
> Best regards,
> -- 
> Yijie Yang <yijie.yang@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

