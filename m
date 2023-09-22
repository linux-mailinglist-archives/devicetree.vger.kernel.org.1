Return-Path: <devicetree+bounces-2417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E407AAC09
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0B5C8283341
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4951DDC5;
	Fri, 22 Sep 2023 08:11:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0D814F81
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:11:22 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C612F1985;
	Fri, 22 Sep 2023 01:11:19 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38M3QBi7003962;
	Fri, 22 Sep 2023 10:11:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version:content-type; s=
	selector1; bh=Ll3q+d7qJRZQ1dQlukS/+mz6Xi234zuXF2SWIz0fdz4=; b=ds
	T3eVsCBy15GHMbT/Wqk6kE3XnpoQOeaNZ46W/PvkBvtPQ4A+MEdJs9XXoSFZoxEe
	PMLQ0dbJSHgUuKNmw6ffGiWEXeVi2iADrN8WHRtPX4KVptWA48WwU8GEvS6EMEWI
	h1t8LWUo3kFyb1aGwBzbOCMlMFeC0SIFh68AMEcWIJy7vuXCO74mNN4w6LNNzxaA
	Ng5d74xW3YRchZLvGLJAWrj6nY2fAhUurRWweQaTM4mC4ls3IkG+Ect+bLy1vqdZ
	BsnSSavYFIZakcm4e90WjxPE+X+MhBH+VCTfzRg2A0UDGYueYRnVzU9bg/9TToX3
	20mUDBWl3PJEMCoykDUw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t8tt7aa8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 10:11:02 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B461A100056;
	Fri, 22 Sep 2023 10:11:00 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A9BFB21230D;
	Fri, 22 Sep 2023 10:11:00 +0200 (CEST)
Received: from localhost (10.201.21.122) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 22 Sep
 2023 10:11:00 +0200
From: Alexandre Torgue <alexandre.torgue@foss.st.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] Declare and enable watchdog on stm32mp25
Date: Fri, 22 Sep 2023 10:10:53 +0200
Message-ID: <20230922081055.6242-1-alexandre.torgue@foss.st.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.201.21.122]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_06,2023-09-21_01,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Secure ARM watchdog is used on stm32mp25 relying on SMC to configure
and kick the watchdog. It is set to 32 seconds on stm32mp257f-ev1
board.

Regards
Alex

Alexandre Torgue (2):
  arm64: dts: st: add arm-wdt node for watchdog support on stm32mp251
  arm64: dts: st: enable secure arm-wdt watchdog on stm32mp257f-ev1

 arch/arm64/boot/dts/st/stm32mp251.dtsi     | 6 ++++++
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts | 5 +++++
 2 files changed, 11 insertions(+)

-- 
2.17.1

