Return-Path: <devicetree+bounces-14727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B627E6596
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:50:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7DEA1C209C3
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 08:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB35FD2FE;
	Thu,  9 Nov 2023 08:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="aDZLp3j1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1E7D291
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 08:50:36 +0000 (UTC)
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA0C0210A;
	Thu,  9 Nov 2023 00:50:35 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 517661506C8;
	Thu,  9 Nov 2023 08:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1699519834; h=from:subject:date:message-id:to:mime-version:
	 content-transfer-encoding; bh=cD6HIvwS1+eD7lmzk4U069SbWiB68SgbaID0yXccmhM=;
	b=aDZLp3j11jfHj1w+dkJjDQmX75SXmjAGrwYH6Y+rWWJgRthl68IQSJ3K8OSASbFeTYp66O
	/RK8a6rfbE0genlAmaLhir3mWSRvghogQ52JhRjFm30t3M296Z3zjqtd5pYUwVZzeP2EX7
	vpTxg+7Hg5iJ7xu1HKGBB65gZZ3kjtUSQ8mmumz+oYmT8d4BKPyf0ZhRzc9YGVIc4vqkhS
	PUylTPi1gEPSMk+Wzstc3R+giHWZgeWgAoemjqNTYq3/KRtgMUb3vuVzGnTVFt3xOtatL0
	S+1tLvIYO1HHk4sIHdadttgBE0YDcnnXLIj5VnFVnvBlsOgjXwXRB8n7OVv9eQ==
From: Viacheslav Bocharov <adeep@lexina.in>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] firmware: meson-sm: change sprintf to scnprintf
Date: Thu,  9 Nov 2023 11:50:29 +0300
Message-Id: <20231109085029.2079176-1-adeep@lexina.in>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Update sprintf in serial_show frunction to scnprintf command to
prevent sysfs buffer overflow (buffer always is PAGE_SIZE bytes).

Signed-off-by: Viacheslav Bocharov <adeep@lexina.in>
---
 drivers/firmware/meson/meson_sm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index ed60f1103053..c1c694b485ee 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -265,7 +265,7 @@ static ssize_t serial_show(struct device *dev, struct device_attribute *attr,
 		return ret;
 	}
 
-	ret = sprintf(buf, "%12phN\n", &id_buf[SM_CHIP_ID_OFFSET]);
+	ret = scnprintf(buf, PAGE_SIZE, "%12phN\n", &id_buf[SM_CHIP_ID_OFFSET]);
 
 	kfree(id_buf);
 
-- 
2.34.1


