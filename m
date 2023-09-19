Return-Path: <devicetree+bounces-1483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A96247A68FA
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 18:31:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 633432816F7
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 16:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B85BB3B292;
	Tue, 19 Sep 2023 16:31:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AAF3AC08
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 16:31:02 +0000 (UTC)
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFCA7B0;
	Tue, 19 Sep 2023 09:30:59 -0700 (PDT)
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38JCaXhu002143;
	Tue, 19 Sep 2023 18:30:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=x1TjoRi
	jvr+uct79J3Z24kJLT+F8IedgNb1aH1QZH40=; b=sjJGp96C63Kg7S/p0qwXNHD
	w6RTcDVGO5Bdrog+h6QBojSX54GXF7p6RWX6sAmnQBGas5MuExFrGIQw3CE/doZ/
	zOXWMPYQ35JkjD9331Wwb0dtcsrA7KB+lEqwMY7N4LLUMe8Vb4wJ2vlK6U48e3/m
	9GnblW2zkqb/xRhsf9ycBmzm35Ngi+cuwwvhUkc209WbbbhUESfq+fn4AkEqYsIC
	9/ToiJUWoJBGMWz7dr5ua44c3We1+nM4DNsWQwBDF2SWtJ1oK77WHg9WeOlO9RxZ
	m07rB5uWc7Oh2YShrjPkt1ii0JJkVrI8uf5jkJhgoagJGSPyyhZaAA0YL4iGBkg=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t5qaht03g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 18:30:40 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 64524100057;
	Tue, 19 Sep 2023 18:30:39 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5C835268467;
	Tue, 19 Sep 2023 18:30:39 +0200 (CEST)
Received: from localhost (10.252.1.15) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 19 Sep
 2023 18:30:39 +0200
From: Olivier Moysan <olivier.moysan@foss.st.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>
CC: Olivier Moysan <olivier.moysan@foss.st.com>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] ARM: dts: stm32: add dfsdm & sai pin muxings on stm32mp13
Date: Tue, 19 Sep 2023 18:30:07 +0200
Message-ID: <20230919163009.203752-1-olivier.moysan@foss.st.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.252.1.15]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-19_08,2023-09-19_01,2023-05-22_02
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add pin muxings for STM32 DFSDM and SAI audio peripherals on STM32MP13
Disco boards expansion connector.

Olivier Moysan (2):
  ARM: dts: stm32: add pins muxing for sai1 on stm32mp13
  ARM: dts: stm32: add pins muxing for dfsdm on stm32mp13

 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 60 +++++++++++++++++++++
 1 file changed, 60 insertions(+)

-- 
2.25.1


