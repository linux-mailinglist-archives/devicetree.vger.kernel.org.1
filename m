Return-Path: <devicetree+bounces-23865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 610C780C8CF
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 13:01:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E619CB20F88
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00ACA38F9A;
	Mon, 11 Dec 2023 12:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="lilYDK4R"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.217])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 81633186;
	Mon, 11 Dec 2023 04:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version:
	Content-Type; bh=EZVVJRwESSfyxJj8cjY5o4AEGpnzdaLjkCRiW1DtUyM=;
	b=lilYDK4Rvv0jvU84xq4OPY6MN4B+MwwXJwm2cWWAM7seJv2e32u0Ug3eUOh+20
	7LIOt3WqOb0a8Zz5lYO7zWFCmR1wbAzTwiNdSOD66acS26Bd9WAw1xJ/382OmOM5
	xdwiW8X13geDiLqLrGirC9f5aL6fJLW1S9n/Skcl5xvNM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-3 (Coremail) with SMTP id _____wDXvx3Z+XZl3Fm+Dw--.13317S2;
	Mon, 11 Dec 2023 20:00:29 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v5 16/16] MAINTAINERS: Add myself as a reviewer for rockchip drm
Date: Mon, 11 Dec 2023 20:00:23 +0800
Message-Id: <20231211120023.1785687-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=all
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDXvx3Z+XZl3Fm+Dw--.13317S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU-nmiDUUUU
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAtDXlghl75lJwABsZ

From: Andy Yan <andy.yan@rock-chips.com>

As I am familiar with all the details of vop2 display
architecture, I can help review and test all related
changes in this subsystem, so add my email here to make
sure I get CC'd on rockchip drm changes.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e2c6187a3ac8..ef58773071fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7141,6 +7141,7 @@ F:	include/linux/platform_data/shmob_drm.h
 DRM DRIVERS FOR ROCKCHIP
 M:	Sandy Huang <hjc@rock-chips.com>
 M:	Heiko Stübner <heiko@sntech.de>
+M:	Andy Yan <andy.yan@rock-chips.com>
 L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
-- 
2.34.1


