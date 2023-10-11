Return-Path: <devicetree+bounces-7820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAD87C5A9F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 19:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6881F1C20B50
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 17:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29BFD39950;
	Wed, 11 Oct 2023 17:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="mv+3BIHl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4742139945
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 17:58:07 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 819D68F;
	Wed, 11 Oct 2023 10:58:05 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39BEw0GX007819;
	Wed, 11 Oct 2023 19:57:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=TAaAF2q
	3limPjnQvFZPK8yGWYOFgr3YyW+A1RHS94jI=; b=mv+3BIHl/k+x1WNBa6p97xv
	T4rn9dp+uqlV3GnVyd4g2hjO9/vnYRCXv9xFgTRqfV40mke4pII0ajgM64kATqXF
	1qsxptDi6BB17+qa4kKizwp9EgImiXx7UJfSHmW/h/1UExPZ6yLZdpvbRjFk83Sb
	4o6ROhGf7bpYLOFJkJGHOfihdKQgTl4yyjWg/gNQSQUyYSOT6RTCIqh8MbzksGw7
	LQvghlueItbs95yL+76YC8rGT5dhRTjrT3w6cYBhylttwr+gDej/HxZdb8SnpRmX
	ef1cmRSpYFOMpy6K5n7GqQTvAMuGtgNcDqlRxY7PPAmU/lSTEarEZGTU6dlzOIw=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tns0cj739-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 19:57:51 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5775F100057;
	Wed, 11 Oct 2023 19:57:50 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 44EAA20F55A;
	Wed, 11 Oct 2023 19:57:50 +0200 (CEST)
Received: from localhost (10.129.178.213) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 11 Oct
 2023 19:57:50 +0200
From: Alain Volmat <alain.volmat@foss.st.com>
To: Alain Volmat <alain.volmat@foss.st.com>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        Kieran Bingham
	<kieran.bingham@ideasonboard.com>,
        Rob Herring <robh@kernel.org>, <linux-media@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/3] media: i2c: gc2145: GC2145 sensor support
Date: Wed, 11 Oct 2023 19:57:27 +0200
Message-ID: <20231011175735.1824782-1-alain.volmat@foss.st.com>
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
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_12,2023-10-11_01,2023-05-22_02
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
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

v2: - split vendor-prefixes update into a separate commit
    - correction into dt-bindings (description, const i2c address,
      lowcase of supplies, node naming
    - correct KConfig (avoid VIDEO_V4L2_SUBDEV_API, V4L2_FWNODE and add
      V4L2_CCI_I2C)
    - usage of v4l2-cci framework for accessing to device registers
    - correction in power-on / power-off sequences and update
      usleep_range delay
    - detail MIPI configuration and stop register access to stop
      streaming
    - removal of SYSTEM_SLEEP_PM_OPS (and streaming variable)
    - various small fixes, typo, oneline functions
    - removal of useless HBLANK control considereing that RAW isn't
      supported for the time being
    - removal of RAW parts
    - usage of dev_err_probe

Alain Volmat (3):
  dt-bindings: vendor-prefixes: Add prefix for GalaxyCore Inc.
  dt-bindings: media: i2c: add galaxycore,gc2145 dt-bindings
  media: i2c: gc2145: Galaxy Core GC2145 sensor support

 .../bindings/media/i2c/galaxycore,gc2145.yaml |  104 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    8 +
 drivers/media/i2c/Kconfig                     |   10 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/gc2145.c                    | 1440 +++++++++++++++++
 6 files changed, 1565 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/galaxycore,gc2145.yaml
 create mode 100644 drivers/media/i2c/gc2145.c

-- 
2.25.1


