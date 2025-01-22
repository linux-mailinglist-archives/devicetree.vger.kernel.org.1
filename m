Return-Path: <devicetree+bounces-140285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D3EA19196
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:42:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 911DB1881F87
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 12:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC114212D81;
	Wed, 22 Jan 2025 12:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="dtI3npWW"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1261E1F8F16;
	Wed, 22 Jan 2025 12:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737549756; cv=none; b=gJqhdO75rJip5aWV1miqwzVwtoe0/i5pb8o6QjCnEhNCfGLUt3EVRQlD/+BK/NcMfzQrinDd1PnmDod7W3VVGC+jPD0YU6Dds8PgRp85NjXdbZG4PyDZHPhElAAZjFm1jBblhfgaIFUvJrZztSvTNwaIFADav0FhqYoSnlg6+lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737549756; c=relaxed/simple;
	bh=DROAJhltjVfucBBUFtCChWFe6BGuqtxEMCApytfPOJE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Fybp7eTn62sgRG8FE8JvRU00uzRMbw37HH692UBbiQnfk+ibH8SKcSVgnem1xRs7QqpLX1vteQkXeEhTObcBBjnGN1Ha1jAKKqUyzC+MTyw0qUX4BJI6Bwp13Eqg2Mo7HJPtcBqRbaC9U8u1QnJkH5irMkUiyQPm7bW6QaCQhkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=dtI3npWW; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50MCgROE990400
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 22 Jan 2025 06:42:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737549747;
	bh=Z8BxS1ovMFK/OAlihLVLKauzGGuhuJxVTnxHmVbPyG0=;
	h=From:To:CC:Subject:Date;
	b=dtI3npWW01XycrGuIRsJ6/OuPd0r8HkyIZ24AFBimN4sTkRnubHSV2iTKkPmAyTMo
	 tcuJHjBOGxTTsUcUTNISlg2MJXE1Apr+goZCkK2Md/ibTwSSJP1OJUR0dQX6cSWRrG
	 1N31jNtVtdYj4XLNhfDquKdDyWrkBWYtjXRNUmy8=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50MCgR6v020940
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 22 Jan 2025 06:42:27 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 22
 Jan 2025 06:42:27 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 22 Jan 2025 06:42:27 -0600
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50MCgN23007253;
	Wed, 22 Jan 2025 06:42:24 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 0/2] Add boot phase tag to USB0 on AM62A7-SK and AM62P5-SK
Date: Wed, 22 Jan 2025 18:11:47 +0530
Message-ID: <20250122124223.1118789-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hello,

This series adds the boot phase tag "bootph-all" to the device-tree node
for USB0 on AM62A7-SK and AM62P5-SK boards. USB0 instance of USB on the
AM62Ax and AM62Px SoCs which the aforementioned boards are based on, can
be used for USB DFU boot. Since USB0 has to be enabled at all stages of
the boot process when booting via USB DFU, the "bootph-all" tag is added
in the USB0 node of the respective board files.

Series is based on linux-next tagged next-20250122.

Regards,
Siddharth.

Siddharth Vadapalli (2):
  arm64: dts: ti: k3-am62a7-sk: Add boot phase tag for USB0
  arm64: dts: ti: k3-am62p5-sk: Add boot phase tag for USB0

 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 1 +
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 1 +
 2 files changed, 2 insertions(+)

-- 
2.43.0


