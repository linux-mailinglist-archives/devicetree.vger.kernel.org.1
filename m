Return-Path: <devicetree+bounces-16693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDE77EF48E
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 15:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08FE01C20AA4
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56BF43035F;
	Fri, 17 Nov 2023 14:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="Tz6QUcA4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C370D71;
	Fri, 17 Nov 2023 06:34:31 -0800 (PST)
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3AHBMVhP011100;
	Fri, 17 Nov 2023 15:34:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=8xdj8SH
	PK8NulxaFgQvXVA78MnGud+kVb8iCWdM/E9g=; b=Tz6QUcA4VJLYeONM5WzysQY
	QlED5ROx7HvSoiDqkWKoYlAj+1P3bi39M4jlXnZbOQESzK/Wz5B7xCiX67CYpUmS
	Zmd6h7SYj4oyWrydcCqj774qcp3pLlvdlYHK5QW7sjDwYb8u9xZ4Giae9Yg+Hf8u
	pXkQHuNUzua73agN+gHmdbdXrk+cl+Sa7b+4B0KlnyCQJe6be4a7TySaw2gUh+Ur
	H1hMjQBjmnF7E1kp1H8woyHh7ygPTz71HX7XjU4NrHN3aCTd8TIO+rmxhiWYYRo2
	QWGpVOVZOjme/eD3Jf2r5/84G4SkcMRr9Se2xL19Ld6o9FlBTB6iFRXUIIQhbVQ=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uanep98k6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 15:34:05 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EE4F410002A;
	Fri, 17 Nov 2023 15:33:46 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C06F12309EB;
	Fri, 17 Nov 2023 15:33:46 +0100 (CET)
Received: from localhost (10.201.22.165) by SHFDAG1NODE3.st.com (10.75.129.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 17 Nov
 2023 15:33:46 +0100
From: Patrick Delaunay <patrick.delaunay@foss.st.com>
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
        Srinivas Kandagatla
	<srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Catalin
 Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Fabrice
 Gasnier <fabrice.gasnier@foss.st.com>
CC: Patrick Delaunay <patrick.delaunay@foss.st.com>,
        Arnd Bergmann
	<arnd@arndb.de>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry
 Baryshkov <dmitry.baryshkov@linaro.org>,
        Geert Uytterhoeven
	<geert+renesas@glider.be>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Marek Szyprowski
	<m.szyprowski@samsung.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        =?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?=
	<nfraprado@collabora.com>,
        Peng Fan <peng.fan@nxp.com>, Udit Kumar
	<u-kumar1@ti.com>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
Subject: [PATCH 0/4] stm32: add support for STM32MP25 BSEC to control OTP data
Date: Fri, 17 Nov 2023 15:33:33 +0100
Message-ID: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.201.22.165]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-17_13,2023-11-17_01,2023-05-22_02


Non volatile memory area is available on STM32MP25 with OTP in BSEC.

The 12 Kbits of OTP (effective) for STM32MP25x SoC Family
are organized into the following regions:
- lower OTP (OTP0 to OTP127) = 4096 lower OTP bits,
  bitwise (1-bit) programmable
- mid OTP (OTP128 to OTP255) = 4096 middle OTP bits,
  bulk (32-bit) programmable
- upper OTP (OTP256 to OTP383) = 4096 upper OTP bits,
  bulk (32-bit) programmable,
  only accessible when BSEC is in closed state.

BSEC is only accessible by secure world, so the OTP access is done
by driver with OP-TEE TA, as on STM32MP13x family.



Patrick Delaunay (4):
  dt-bindings: nvmem: add new stm32mp25 compatible for stm32-romem
  nvmem: stm32: add support for STM32MP25 BSEC to control OTP data
  arm64: defconfig: enable NVMEM STM32 ROMEM for stm32mp25
  nvmem: add bsec support to stm32mp25

 .../bindings/nvmem/st,stm32-romem.yaml           |  1 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi           | 16 ++++++++++++++++
 arch/arm64/configs/defconfig                     |  1 +
 drivers/nvmem/stm32-romem.c                      | 16 ++++++++++++++++
 4 files changed, 34 insertions(+)

-- 
2.25.1


