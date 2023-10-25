Return-Path: <devicetree+bounces-11850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 069CA7D6D8E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:45:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 210761C20C2E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0685F286BE;
	Wed, 25 Oct 2023 13:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="PY8ftMQn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E90726E08
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:44:55 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE4F2132;
	Wed, 25 Oct 2023 06:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698241493; x=1729777493;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=qsWPpHChbj6eevlntikLCMGGhKdN1IGjbsMPO1RBLKc=;
  b=PY8ftMQntozJ0/f8L2mcaKYHC31SMUTiTVa4erJlsDjlP2tegtE5sFq/
   B+bd9aVLKRMd1wtq2v2GW8Uz5cojnSMnJLnDFOJ21e4F6a2NxQnkWAzuQ
   P4BWCGSmKzyH+QJEsDjefkq7bBUR6kx4BAYztryeq5iDY1NLbaDr3pKLu
   LiIourrMk/Q/uBVh7sdcQgexL8HmKvnKEPDbUo6IeDDlYkspDoLefc16Q
   himC232jzmsrSeCZBo1Y4lzLqVM5Nl4ZuaZMFJCR+/T0dw7Zqhwj2LuU0
   QVLa0+f5MPHZBXMhzoZWg7JQ1nY43AE25znhpE+d6fzORF6VG20Q6ac9B
   w==;
X-CSE-ConnectionGUID: hKESaP82Toq6NENXDanU3Q==
X-CSE-MsgGUID: jFhgmQrLQFStVJ4OPoGYxw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="177743696"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 25 Oct 2023 06:44:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 25 Oct 2023 06:44:16 -0700
Received: from marius-VM.mshome.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 25 Oct 2023 06:44:14 -0700
From: <marius.cristea@microchip.com>
To: <jic23@kernel.org>, <lars@metafoo.de>, <robh+dt@kernel.org>
CC: <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <marius.cristea@microchip.com>
Subject: [PATCH v2 0/2] adding support for Microchip PAC193X Power Monitor
Date: Wed, 25 Oct 2023 16:44:02 +0300
Message-ID: <20231025134404.131485-1-marius.cristea@microchip.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Marius Cristea <marius.cristea@microchip.com>

Adding support for Microchip PAC193X series of Power Monitor with
Accumulator chip family. This driver covers the following part numbers:
 - PAC1931, PAC1932, PAC1933 and PAC1934

Differences related to previous patch:

v2:
- fix review comments:
  - change the device tree bindings
  - use label property
  - fix coding style issues
  - remove unused headers
  - use get_unaligned_bexx instead of own functions
  - change to use a system work queue
  - use probe_new instead of old probe

v1:
- first version comitted to review

Marius Cristea (2):
  dt-bindings: iio: adc: adding dt-bindings for PAC193X
  iio: adc: adding support for pac193x

 .../ABI/testing/sysfs-bus-iio-adc-pac1934     |   15 +
 .../bindings/iio/adc/microchip,pac1934.yaml   |  146 ++
 MAINTAINERS                                   |    7 +
 drivers/iio/adc/Kconfig                       |   12 +
 drivers/iio/adc/Makefile                      |    1 +
 drivers/iio/adc/pac1934.c                     | 1775 +++++++++++++++++
 6 files changed, 1956 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-adc-pac1934
 create mode 100644 Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml
 create mode 100644 drivers/iio/adc/pac1934.c


base-commit: 5e99f692d4e32e3250ab18d511894ca797407aec
-- 
2.34.1


