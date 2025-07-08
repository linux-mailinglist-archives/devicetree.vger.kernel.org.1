Return-Path: <devicetree+bounces-194046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB89AFC8A4
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 12:42:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D85D4562E33
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 10:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E372DA749;
	Tue,  8 Jul 2025 10:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="nQI0UJp/"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C3E2D97B9
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 10:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751971273; cv=none; b=JqOx0beSf0hSnr3fnGEidE5haa+YlVDMkbwGfAUUIW1higQ4YZoUO/oioTA4+vPTiJSkxnj+nUyy5SSn55EQMdWAVIxiqWw/V9URdroVMEsWkRFwrmmHmREAbEjvPkLlLYzraSI3UAKW4A5npTu8WOsV/5zrrIhA7670ednKqAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751971273; c=relaxed/simple;
	bh=h8WzAtP1deJY97IsehBiHpJJmky6zH0Upj7s8EmaukQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=iDDuFJuBrSCs4zUyFHEr9u4YNfV4qfZ5kZnP4AEWAnEV3lziA6c3oCYZe4mvdJoF9KWQ5dYPR1mrmC/mQoJFr/RV6f0xHmVST0g7Nir79cLrI2BeaAP2TJuyxXlN6PP55vYbgfJlOUscClzqHICMcdgFbtB8c+gokgwdZoOxoAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=nQI0UJp/; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250708104110epoutp03d59cc075bb940859614113d222992be1~QQJaEzUJs2789027890epoutp03d
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 10:41:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250708104110epoutp03d59cc075bb940859614113d222992be1~QQJaEzUJs2789027890epoutp03d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751971270;
	bh=wKNM/MVkW5+UIAF/DDkf6NK4GoimrDLpjI5p5ZBJ8t8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nQI0UJp/aEZHp3uJivzKfYJIBb1cTXi1bbF656pyNNMPJFAI01ZCufSdUCSzORIGm
	 xqLuOsMxWqtNfW5kUp6D1b4OnPNijKNgbTDNi67vS9OxTX5LFdAyFwzOgkWGkRsv6y
	 I7RAHtnOJaB9jOmYh6jdnkKw01XE+7Zbze3bWtto=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250708104109epcas5p2c53a6a032b6f49f6e749fceb3bf3b87d~QQJZeMmWX3102631026epcas5p2O;
	Tue,  8 Jul 2025 10:41:09 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.181]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4bbyM82djqz2SSKs; Tue,  8 Jul
	2025 10:41:08 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250708103246epcas5p47b446ec342f9d49361c0a9a3929bcdd2~QQCFFnJsk0186101861epcas5p4N;
	Tue,  8 Jul 2025 10:32:46 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250708103243epsmtip152f34feb66a77e0fa50f13329b23b7ca~QQCCbn-4T1977519775epsmtip1_;
	Tue,  8 Jul 2025 10:32:43 +0000 (GMT)
From: Vivek Yadav <vivek.2311@samsung.com>
To: pankaj.dubey@samsung.com, ravi.patel@samsung.com, shradha.t@samsung.com,
	mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, krzk@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, will@kernel.org,
	mark.rutland@arm.com, s.nawrocki@samsung.com, cw00.choi@samsung.com,
	alim.akhtar@samsung.com, linux-fsd@tesla.com
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-perf-users@vger.kernel.org, linux-samsung-soc@vger.kernel.org, Vivek
	Yadav <vivek.2311@samsung.com>
Subject: [PATCH 6/6] MAINTAINERS: Add maintainers for Samsung PPMU driver
Date: Tue,  8 Jul 2025 16:02:08 +0530
Message-ID: <20250708103208.79444-7-vivek.2311@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250708103208.79444-1-vivek.2311@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250708103246epcas5p47b446ec342f9d49361c0a9a3929bcdd2
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250708103246epcas5p47b446ec342f9d49361c0a9a3929bcdd2
References: <20250708103208.79444-1-vivek.2311@samsung.com>
	<CGME20250708103246epcas5p47b446ec342f9d49361c0a9a3929bcdd2@epcas5p4.samsung.com>

Add maintainers entry for Samsung PPMU driver

Signed-off-by: Ravi Patel <ravi.patel@samsung.com>
Signed-off-by: Vivek Yadav <vivek.2311@samsung.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ca11a553d412..5895b4e70c9e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21023,6 +21023,13 @@ F:	drivers/regulator/s5m*.c
 F:	drivers/rtc/rtc-s5m.c
 F:	include/linux/mfd/samsung/
 
+SAMSUNG PPMU DRIVER
+M:	Vivek Yadav <vivek.2311@samsung.com>
+M:	Ravi Patel <ravi.patel@samsung.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/perf/samsung,ppmu-v2.yaml
+F:	drivers/perf/samsung/
+
 SAMSUNG S3C24XX/S3C64XX SOC SERIES CAMIF DRIVER
 M:	Sylwester Nawrocki <sylvester.nawrocki@gmail.com>
 L:	linux-media@vger.kernel.org
-- 
2.49.0


