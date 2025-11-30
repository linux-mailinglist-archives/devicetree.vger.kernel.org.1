Return-Path: <devicetree+bounces-243191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6779AC95048
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 15:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 614534E02E8
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 14:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AD6824111D;
	Sun, 30 Nov 2025 14:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b="ohy9TBDr"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-221.mail.qq.com (out203-205-221-221.mail.qq.com [203.205.221.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5FA1373;
	Sun, 30 Nov 2025 14:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764513420; cv=none; b=VB8dOWI5rb2TXS/ScTjrRh29U7vUXddHD3sE+b2SSHra9r9q0MCP/cFFi75X91654SOAI4I3DkQy0oOmWlpSv2YFMj0DXJvMv4NvgeN9+gIosFAJgJn/qzYI7W6ZOf1EjZ0k/IRPgxV04RhAVMTHqc10s0mWNS4LnOyj97j7jJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764513420; c=relaxed/simple;
	bh=T7qadSE+8ledPGDv9lUwtBmwDWP+0IvEt1OJieaycuc=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=EamenociGTT7NPoErEiackJ5cuLgzW2iMvYgAMPdLuhgBJUw6cx++Y4C1KELOcoCGFW2MV6phM3q25NuwBfVnY4FdpjDykvngDU/Wc9geXdMsqxgsJKJ+Yvn+0SctVFRCoIAwXLI2jJv/i2fVpgKMRW+DeH7VKehn+wWkJSfFFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com; spf=pass smtp.mailfrom=foxmail.com; dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b=ohy9TBDr; arc=none smtp.client-ip=203.205.221.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foxmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1764513410;
	bh=qReGk1WfsHOyiBno1NOk+49x8+G9e2IJ9Nlz9CqVvbE=;
	h=From:To:Cc:Subject:Date;
	b=ohy9TBDrM7K3Tue0wlw5mW1i7JlLi2lJGaqxSgofe0IvK/JdvSUC3F3F5deKHLpLI
	 22hmsjiO9CLaw4x/4xNFo8qzW7k/+2jPfUPoRi7KEX2GMHVIMhJvI4L2/kFbz+CmVB
	 215ZU1FnudED1mLulp965mtOx45JME7h7jTdhGo8=
Received: from localhost.localdomain ([171.223.167.52])
	by newxmesmtplogicsvrszb51-1.qq.com (NewEsmtp) with SMTP
	id 8E6A52C2; Sun, 30 Nov 2025 22:35:38 +0800
X-QQ-mid: xmsmtpt1764513338t3z1son2f
Message-ID: <tencent_FD75580BB3BF35F44985E237E7DE56BE2407@qq.com>
X-QQ-XMAILINFO: MJf32pulH4812iR2pxWgduXPSR8oEa1DaOvphV0IbBF3lyi/IvzL7a69v182Mw
	 7gauB0JK/LTDfFLut1dVvWm0plgmq+8LrPGRSaR3yvSE1Ke+WQEYjzISxBweKyeVKLNUXqvUypyB
	 ftHoJb0a3x611rhwH0zYUeKDfL/kYD5lqdRAF1uTkZNqfUe7Q5Yc64AS/C4FH3ONBfy0pv78thok
	 JeSAf9NVB+Dce4rmtsLSCig9hec8mFFSGvUv9h0F1i1ljmC0KtcB76vM8RQNnTp7yc/OnsOp6Yk0
	 Mjr1EP8BTQmEnfxG0UWoeS7zEXE98o1Kvoykcp0cr0dXGYsWS6bLeZDAI5C0pioKMtqUyz9dbnEO
	 c9oM37ki4GfWueB5SjBSvJRcOu7VedxZfShFjs16E9Z6rlfBnRe6/FVqnYy2S5A4jIm6fCWs6cGb
	 4zIWoeDA2lrso1LOeZJkh5aOlL2UDsAUBq3qcg2FudEf85coIsBclyxqNCFoe7LbeImvDePm7kyt
	 LN8yWDPEeWnWKMtRHnB3LkRK1lz8ZS9VUh7Tbxqiz+QjYoTjiNA+BkzLNcSk/D8cMdvzmRiv+gxe
	 h8lom0tOpt74wrFwuD7rdmZFs4FMSDsRvR6Shy8E5VCyeWP4qI9yphhMDYWVc3D/mjAIFueffS9d
	 M+3haVDox4FZvS7jhZWLzqQ6B4YMbryeDjk1nHVr3jAOlLjy2iy3duRaJXHYEZfyN2MRn4IrA+dz
	 iCsrm3Xgj+4EmgPh0TxJzslApUzXpAHwCjPgd5zhd1cYRHRS8wNFDTbjqfUi/EbMM9AzRMNAiLKr
	 Z/b15DDjEVYTeM0/Hh8IUP9h8k6LiIea2BqcbiTueDWMxe7dgE0qAL4H4IZdbnenYaF1VKotWoDA
	 guy6w2KBfaHBddNBR/wLjO+Q9JsVqk1ZD2NzRyqjpH/evCHpme8U4kqHXQziAAENMddWlwwRjJxX
	 MhWggQtNrdRV1Yl5YbtkSECmnHKjHCCUmFuTGX/Z3fMp/SkRQtgx4GhcF9g14SxdWpF3R7PfM3bI
	 9XGP/tZq/3lDvhtYHoGxIztGMZ1/8WGfbKfNehJmqXsa98rN0HN/rGu+rKYMB3rZCto8YMnrCBZU
	 ItLuHs
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
From: Renjun Wang <renjunw0@foxmail.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Renjun Wang <renjunw0@foxmail.com>
Subject: [PATCH 1/2] dt-bindings: display: simple: Add HannStar HSD156JUW2
Date: Sun, 30 Nov 2025 22:35:27 +0800
X-OQ-MSGID: <20251130143527.81309-1-renjunw0@foxmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the HannStar HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel to
the panel-simple compatible list.

Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 2017428d8828..918dd6d303cd 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -154,6 +154,8 @@ properties:
       - hannstar,hsd070pww1
         # HannStar Display Corp. HSD100PXN1 10.1" XGA LVDS panel
       - hannstar,hsd100pxn1
+        # HannStar Display Corp. HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel
+      - hannstar,hsd156juw2
         # Hitachi Ltd. Corporation 9" WVGA (800x480) TFT LCD panel
       - hit,tx23d38vm0caa
         # Innolux AT043TN24 4.3" WQVGA TFT LCD panel
-- 
2.39.5


