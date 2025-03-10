Return-Path: <devicetree+bounces-156145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19137A595CD
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:13:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B17016CB6F
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 13:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98DE322D4DC;
	Mon, 10 Mar 2025 13:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="M+EdyFu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1BDF22C321;
	Mon, 10 Mar 2025 13:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.180.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741612293; cv=none; b=ma3rhVpd9jz7auaABNX9rH4MMpriH9XeL1I+tvqFbG+acnB/BsoUpw09z1aHgqQuXiEDxVgYUZuPhociEFwuSJcvFh/ZZ3H+r5dIyNnk0Q4fkdIZiHlLL/HnBUvGLfXlVbI9WG+iGV77etW7qrHG6LygQbMGBuG4HsyXDywXZms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741612293; c=relaxed/simple;
	bh=OIZt4+jjToOipp31+L0+GUZ9xT4I19g9KFCIywONxSE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=IinNfGyHnIoFNbjgDSKtdL5Btkr7kdE6QaWWsb+kdzLqRyDZPlqUIFNdOe08tH98C9YvIE79xcYldOtuXH/6dU+19WE9aMU3j+IR9YeYIbB+Qzt/nQ6nfXgKILDKcji/oYXyjFcQAzGrJUHq9Vw2tJOUNQFbHilHZqkTrJbkUgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=M+EdyFu9; arc=none smtp.client-ip=185.132.180.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52A55uUI006364;
	Mon, 10 Mar 2025 13:10:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=c
	C2ajFFW3/YI8HRtjIWTgL7LFrZuLtOfxpJrLZoBtts=; b=M+EdyFu9NLmbmmoyX
	IIOdM8FMODesaou3UuCzlsOKK9MvPaf53EAk0hWIYQYNQtapsYNnwmYiVOF0uyp5
	DECkevZpk6GUfSGgCbgljrZ3qUc8KjFfP9ZyX0s2DyXKKpr6bmtBlgi0Yj663TO8
	2KzEf/+5cQ/bAzd/SndaykGaap+R1fgTktukuUaKSxAK7RGee/dljhI9qeeJhye4
	9iKvCfw7B938jd7YAwmNoRgIFiMzkx6mVQC4lwIwZUGTk1ZbNZ82b4aVnKFhZkdz
	Lm1rSLmg6Ug6m53a9ocrAOTAGDOUS7YLws+FAHjLMq3jmfF20626LGJ7MaQgiVNP
	29k7Q==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 458ev09es1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 10 Mar 2025 13:10:58 +0000 (GMT)
Received: from Matts-MacBook-Pro.local (172.25.0.133) by
 HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Mar 2025 13:10:56 +0000
From: Matt Coster <matt.coster@imgtec.com>
Date: Mon, 10 Mar 2025 13:10:42 +0000
Subject: [PATCH DO NOT MERGE v3 18/18] arm64: dts: ti: k3-j721s2: Add GPU
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250310-sets-bxs-4-64-patch-v1-v3-18-143b3dbef02f@imgtec.com>
References: <20250310-sets-bxs-4-64-patch-v1-v3-0-143b3dbef02f@imgtec.com>
In-Reply-To: <20250310-sets-bxs-4-64-patch-v1-v3-0-143b3dbef02f@imgtec.com>
To: Frank Binns <frank.binns@imgtec.com>,
        Matt Coster
	<matt.coster@imgtec.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        "Vignesh
 Raghavendra" <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Randolph Sapp <rs@ti.com>, Darren Etheridge <detheridge@ti.com>,
        "Alessio
 Belle" <alessio.belle@imgtec.com>,
        Alexandru Dadu <alexandru.dadu@imgtec.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1805;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=OIZt4+jjToOipp31+L0+GUZ9xT4I19g9KFCIywONxSE=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaSfe3LpDL+Ie9uNFZdYbvCpfy/q4s3k3+zWuKjnd/j3N
 yXfZ/y41lHKwiDGwSArpsiyY4XlCrU/aloSN34Vw8xhZQIZwsDFKQAT2WzCyHBgP1eL956Wre8e
 OJ4oYTv64A6b4wR5Z7PISFaJKTWtjxkYGaZGXdq9P0nvTNPetFt25T9tUhPk/JuuFseIZs6zZpq
 3nQEA
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Authority-Analysis: v=2.4 cv=CeII5Krl c=1 sm=1 tr=0 ts=67cee4e2 cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=ETbM1kImDFEA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=sozttTNsAAAA:8 a=VwQbUJbxAAAA:8 a=r_1tXGB3AAAA:8
 a=rLJv8WYccUdZFC7c5UsA:9 a=QEXdDO2ut3YA:10 a=S-JV1fTmrHgA:10 a=j2-svP0xy3wA:10 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: ge343qt0aTLIAE1RI1G7DJoeTBiyJ9M6
X-Proofpoint-ORIG-GUID: ge343qt0aTLIAE1RI1G7DJoeTBiyJ9M6

The J721S2 binding is based on the TI downstream binding in 54b0f2a00d92
("arm64: dts: ti: k3-j721s2-main: add gpu node") from [1] but with updated
compatible strings.

The clock[2] and power[3] indices were verified from docs, but the
source of the interrupt index remains elusive.

[1]: https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel
[2]: https://downloads.ti.com/tisci/esd/latest/5_soc_doc/j721s2/clocks.html
[3]: https://downloads.ti.com/tisci/esd/latest/5_soc_doc/j721s2/devices.html

Signed-off-by: Matt Coster <matt.coster@imgtec.com>
---
Changes in v3:
- None
- Link to v2: https://lore.kernel.org/r/20241118-sets-bxs-4-64-patch-v1-v2-21-3fd45d9fb0cf@imgtec.com
Changes in v2:
- Use normal reg syntax for 64-bit values
- Link to v1: https://lore.kernel.org/r/20241105-sets-bxs-4-64-patch-v1-v1-21-4ed30e865892@imgtec.com
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 92bf48fdbeba45ecca8c854db5f72fd3666239c5..a79ac41b2c1f51b7193e6133864428bd35a5e835 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -2048,4 +2048,16 @@ watchdog8: watchdog@23f0000 {
 		/* reserved for MAIN_R5F1_1 */
 		status = "reserved";
 	};
+
+	gpu: gpu@4e20000000 {
+		compatible = "ti,j721s2-gpu", "img,img-bxs-4-64", "img,img-rogue";
+		reg = <0x4e 0x20000000 0x00 0x80000>;
+		clocks = <&k3_clks 130 1>;
+		clock-names = "core";
+		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&k3_pds 130 TI_SCI_PD_EXCLUSIVE>,
+				<&k3_pds 373 TI_SCI_PD_EXCLUSIVE>;
+		power-domain-names = "a", "b";
+		dma-coherent;
+	};
 };

-- 
2.48.1


