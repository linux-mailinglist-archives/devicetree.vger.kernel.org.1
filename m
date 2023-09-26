Return-Path: <devicetree+bounces-3369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F347AE92B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5AEF11C20429
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE0F9134AF;
	Tue, 26 Sep 2023 09:28:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96818134A4
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 09:28:55 +0000 (UTC)
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A6D0CFE;
	Tue, 26 Sep 2023 02:28:42 -0700 (PDT)
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38Q6wueW015499;
	Tue, 26 Sep 2023 11:28:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=NP1x+5v
	Zem9x6RaJxKfUdD6O0ZJxnxrd2tW8HRcyiMk=; b=SGyN+jb+kJhJp64mZRw+081
	QMAgnMI/djAaRCPOsEDzAQmE8IGFIu5bN0ftGt/H6TDzJzCw7HxYm0TcMNb+bjaC
	fIRtK1bSi6sueo7LQ0vx037nVqnuP/phdrf6AARypYST9Gcwu85OKuTSuyKeRcXs
	1ZFyxmAyd25/Stdkqndpy9cYD9SKIn6I22zQJCiYTUbHqp62yQv0xiMUimd1VYQC
	dl6Le6m9jCtpbp9LgZK12Kmhwu8hnS5KI0lCaxuPVpIXhFNKRRCPDlxNBL/TBSAa
	vbOLftDxAg8GbZRV0bTH+q/lnzNlPA/dgxog0QvrUydGuWHhSs/YTjftlf8ah7g=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3taayhhtx9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Sep 2023 11:28:33 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E4EDB100059;
	Tue, 26 Sep 2023 11:28:32 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DB7B422FA4D;
	Tue, 26 Sep 2023 11:28:32 +0200 (CEST)
Received: from localhost (10.129.178.213) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 26 Sep
 2023 11:28:32 +0200
From: Alain Volmat <alain.volmat@foss.st.com>
To: Alain Volmat <alain.volmat@foss.st.com>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: Andrey Skvortsov <andrej.skvortzov@gmail.com>,
        Rob Herring
	<robh@kernel.org>, <linux-media@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] media: i2c: gc2145: GC2145 sensor support
Date: Tue, 26 Sep 2023 11:28:18 +0200
Message-ID: <20230926092825.819229-1-alain.volmat@foss.st.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.129.178.213]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-26_07,2023-09-25_01,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This serie adds support for the GalaxyCore GC2145 sensor.
Initialization is based on scripts provided by GalaxyCore,
allowing 3 fixed configurations supported for the time being.

Minimum controls have been added in order to allow it to
be successfully used with libcamera and dcmipp driver (under
review) on STM32MP13 platform.

The sensor also supports Bayer formats however I removed
them for the time being since they would require more
controls to be exposed.  They will be added again later on.

Alain Volmat (2):
  dt-bindings: media: i2c: add galaxycore,gc2145 dt-bindings
  media: i2c: gc2145: Galaxy Core GC2145 sensor support

 .../bindings/media/i2c/galaxycore,gc2145.yaml |  108 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    8 +
 drivers/media/i2c/Kconfig                     |   12 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/gc2145.c                    | 1591 +++++++++++++++++
 6 files changed, 1722 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/galaxycore,gc2145.yaml
 create mode 100644 drivers/media/i2c/gc2145.c

-- 
2.25.1


