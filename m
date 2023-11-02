Return-Path: <devicetree+bounces-13549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 440B47DED9E
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC3E9B210DA
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FBE76ABD;
	Thu,  2 Nov 2023 07:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="XXDo3QUD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB0963DB
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:49:31 +0000 (UTC)
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACBD6102;
	Thu,  2 Nov 2023 00:49:26 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 25750147B80;
	Thu,  2 Nov 2023 07:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1698911364; h=from:subject:date:message-id:to:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=cD6HIvwS1+eD7lmzk4U069SbWiB68SgbaID0yXccmhM=;
	b=XXDo3QUDQez6r8fp1+UL4OuCuhJxp2tWksc8eDpgFkHOaUPxZJmoa2+uMCxI5iTvhJknNt
	t1x3grkVoj+J7HAnFgMqjusL1kqqsSE+jw5avzCrhUfSgMcLwbbUpNod1Yx0ysl1s3sI5G
	WbWE6IDGiJuNqYaJSgsAN/38CTqhT6dwlqmEHzLb7EZzT3FKdYzCsILoDyT42qMeGxLRPt
	DWDGpmYr3M79+0X97AwRpev0DNOthfXdFNMtzclvZG9X2BWqJnjV4mdUxiJwv4pfMiU99r
	2crUzil/ADrHYLiCALecVnT5Kj5DsE0OnN/8toOwhpcVAoBCStukjn9c3wCYKg==
From: Viacheslav Bocharov <adeep@lexina.in>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/4] firmware: meson-sm: change sprintf to scnprintf
Date: Thu,  2 Nov 2023 10:49:13 +0300
Message-Id: <20231102074916.3280809-2-adeep@lexina.in>
In-Reply-To: <20231102074916.3280809-1-adeep@lexina.in>
References: <20231102074916.3280809-1-adeep@lexina.in>
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


