Return-Path: <devicetree+bounces-16691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8710D7EF488
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 15:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C5571F26D94
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C87E19BD2;
	Fri, 17 Nov 2023 14:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="Rwdg4qj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0797C4;
	Fri, 17 Nov 2023 06:34:13 -0800 (PST)
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3AHB9I00011299;
	Fri, 17 Nov 2023 15:33:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=X7vC/oh1sqsCBQ9A3jJscHwCqNijqttGlrrT0QsvOmc=; b=Rw
	dg4qj7QbukbvkX0twVSUDUY8ZxPNFKSK6dlwNsTEyX3CfqB/NgJCL5iDnNs20tDW
	XiDdjnH0wVRCxZ6UGNkkWnmWrgZJg08udXvXQ3+Dv4jvKWzZ4itk2oofee60akn3
	tWZ4/6Jv1BhjU2CVFbeMFl8xsOQh7CoYmYIyDRNqVdGDiGmWnPAT61da4kSzOFab
	RTE/+Oa530W5O1hPYPAT77+hzlsylWhF1Dj3eCa1wF68FS89zbKT1hez7Ax+8KK4
	6NunQ0Z6+IW2mQEBFYOpj/XZezcBUzhNkR3DtL9fc7gSpmXJ14t0+NEX/HgQxCM+
	KdvhtuMCvuz/PBvEukLg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uanep98jv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 15:33:48 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DCBE7100034;
	Fri, 17 Nov 2023 15:33:47 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D3AE52309C5;
	Fri, 17 Nov 2023 15:33:47 +0100 (CET)
Received: from localhost (10.201.22.165) by SHFDAG1NODE3.st.com (10.75.129.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 17 Nov
 2023 15:33:47 +0100
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
        Fabrice
 Gasnier <fabrice.gasnier@foss.st.com>
CC: Patrick Delaunay <patrick.delaunay@foss.st.com>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
Subject: [PATCH 1/4] dt-bindings: nvmem: add new stm32mp25 compatible for stm32-romem
Date: Fri, 17 Nov 2023 15:33:34 +0100
Message-ID: <20231117153310.1.I1784fc7f33cc928e9007d85354707d6382b48b72@changeid>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
References: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
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

Add a new compatible for stm32mp25 support.

Signed-off-by: Patrick Delaunay <patrick.delaunay@foss.st.com>
---

 Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
index a69de3e92282..92bfe25f0571 100644
--- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
@@ -24,6 +24,7 @@ properties:
       - st,stm32f4-otp
       - st,stm32mp13-bsec
       - st,stm32mp15-bsec
+      - st,stm32mp25-bsec
 
   reg:
     maxItems: 1
-- 
2.25.1


