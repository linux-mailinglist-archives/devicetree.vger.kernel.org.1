Return-Path: <devicetree+bounces-13550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFAA7DED9C
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:49:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B1C81F220CE
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 460046D19;
	Thu,  2 Nov 2023 07:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="f2TVScPo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE9863DD
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:49:34 +0000 (UTC)
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACD9E116;
	Thu,  2 Nov 2023 00:49:26 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AB0E3147A5E;
	Thu,  2 Nov 2023 07:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1698911363; h=from:subject:date:message-id:to:mime-version:
	 content-transfer-encoding; bh=GoLjHDRTTW8k5/1bTK3z5jsye70DcJV8VXEiUmIhCQU=;
	b=f2TVScPohn6mMajkHmoB9lQPM9mD8PdGq8rL7/PE0KikPEz59iBRBdg5ySrvpx4WcQmNxP
	xabPeg/SfOcTsxa6TTivRdcH/TcRn25tA12YjRKKMB52OVkHKqrX1dUy7qO64mRA6udHx+
	RB9nptRE6s6h5E/IxWyYdaI+keRcSp/JipBi4crQL836fm/MpT8+ZIJ9VYETBwrqyEI3OP
	ZWBM6orm8F3VpxD8yoHtPZbG98jfcstnjCj9lQliF2DiGubC7jV5Pe5dnsLGS5VfKigBE3
	lE67obYwbdTbpkGW2Z+FHImn21kSGQ6rVCXemoulIDDgpyQ1NAfJ8YDP1lib6w==
From: Viacheslav Bocharov <adeep@lexina.in>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/4] RFC: firmware: meson-sm: add chipid sysfs export
Date: Thu,  2 Nov 2023 10:49:12 +0300
Message-Id: <20231102074916.3280809-1-adeep@lexina.in>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The Amlogic Meson SoC Secure Monitor implements a call to retrieve an
unique SoC ID starting from the GX Family and all new families.
But GX-family chips (e.g. GXB, GXL and newer) supports also 128-bit
chip ID. 128-bit chip ID consists 32-bit SoC version and 96-bit OTP data.

This patchset introduces an exported sysfs string for the 128-bit chipid,
considering a check for the version of the returned value. If the chip
does not support version 2 of the call, it falls back to (where possible)
information from the meson-gx-socinfo driver to supplement the data from OTP.

Viacheslav Bocharov (4):
  firmware: meson-sm: change sprintf to scnprintf
  firmware: meson_sm: Add chipid number sysfs entry
  soc: amlogic: meson-gx-socinfo: export socinfo for use in other
    modules
  firmware: meson_sm: use meson_gx_socinfo for compatibility

 drivers/firmware/meson/meson_sm.c      | 72 +++++++++++++++++++++++++-
 drivers/soc/amlogic/meson-gx-socinfo.c | 34 +++++++-----
 2 files changed, 90 insertions(+), 16 deletions(-)

-- 
2.34.1


