Return-Path: <devicetree+bounces-249549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC607CDCCFF
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DADA43030FE9
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E17328B5E;
	Wed, 24 Dec 2025 16:13:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp84.cstnet.cn [159.226.251.84])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C4D2DEA6F;
	Wed, 24 Dec 2025 16:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766592788; cv=none; b=B43t3YSqyuH/D+tKXFgN0GKhjjGQrPQYhreGswvQWSz9q/d23D5O+Am4RRO3bMv6M0q98la8E+/rBp77zJx4vs9r3Hv4F26sBbfhh6Bkm2auPx1GQuWw4SVaJiRs3YpAN9rC/yrdmZM7DgB3EoS3ph1kqop6cjww7C0m0+id384=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766592788; c=relaxed/simple;
	bh=n+BwR8Coa0t5jobpCwR8pqX28/SIXStbhYA8aS9a73U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V6bOJu8qjgN4SHS4nflyTu5ogXC4QjkaHzaLb8Woy5GbwWS3kwvybHG/Mnjs03slz0A9Jb/bJbtMSTta90Mt7fm18Q3sfstzWVA074DuzbX90OPt+SsbrpSy1qCEjEV7oAggMGyEG3+JZr2vIeytsGF2RHqqkRiaDAr5WhfxVvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iscas.ac.cn
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.100.54])
	by APP-05 (Coremail) with SMTP id zQCowAA3yw7WEExpgGPNAQ--.14041S10;
	Thu, 25 Dec 2025 00:12:26 +0800 (CST)
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: [PATCH v4 8/9] MAINTAINERS: assign myself as maintainer for verisilicon DC driver
Date: Thu, 25 Dec 2025 00:12:04 +0800
Message-ID: <20251224161205.1132149-9-zhengxingda@iscas.ac.cn>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:zQCowAA3yw7WEExpgGPNAQ--.14041S10
X-Coremail-Antispam: 1UD129KBjvdXoWrKrW5tFyfCw1kXr18KF4DArb_yoWkGwb_WF
	4kC34DZw47GFnYk39YyFs0y3yF93y5Jr4rZ3Zxtanay34Utryqg3Wvgw15Cw4UCFWfGF1D
	Aa9rJr93GF4a9jkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb9xFF20E14v26rWj6s0DM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28IrcIa0xkI8VA2jI8067AKxVWUAVCq3wA2048vs2
	IY020Ec7CjxVAFwI0_Xr0E3s1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28E
	F7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr
	1UM28EF7xvwVC2z280aVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4UJVWx
	Jr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2I
	x0cI8IcVAFwI0_Jrv_JF1lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8
	JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2
	ka0xkIwI1lc7CjxVAaw2AFwI0_GFv_Wryl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
	z7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zV
	AF1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_JFI_Gr1l
	IxAIcVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r
	1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIY
	CTnIWIevJa73UjIFyTuYvjTR_nYFDUUUU
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/

From: Icenowy Zheng <uwu@icenowy.me>

As I am the author of this rewritten driver, it makes sense for me to be
the maintainer.

Confirm this in MAINTAINERS file.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
---
No changes in v4.

Changes in v3:
- Switch to my ISCAS mailbox.

No changes in v2.

 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fc04fc007a054..507ffef26dac1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8658,6 +8658,13 @@ F:	Documentation/devicetree/bindings/display/brcm,bcm2835-*.yaml
 F:	drivers/gpu/drm/vc4/
 F:	include/uapi/drm/vc4_drm.h
 
+DRM DRIVERS FOR VERISILICON DISPLAY CONTROLLER IP
+M:	Icenowy Zheng <zhengxingda@iscas.ac.cn>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/verisilicon,dc.yaml
+F:	drivers/gpu/drm/verisilicon/
+
 DRM DRIVERS FOR VIVANTE GPU IP
 M:	Lucas Stach <l.stach@pengutronix.de>
 R:	Russell King <linux+etnaviv@armlinux.org.uk>
-- 
2.52.0


