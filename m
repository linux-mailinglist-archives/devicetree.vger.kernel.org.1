Return-Path: <devicetree+bounces-22571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E0128808286
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:04:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BC711F219F5
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:04:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3471E4A9;
	Thu,  7 Dec 2023 08:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="piEgUb0B"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.219])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A8517D73;
	Thu,  7 Dec 2023 00:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version:
	Content-Type; bh=JoDdbs1Wrd/5YB34shDi+Os3xSvT1skK3pYG7RWo9/8=;
	b=piEgUb0B0pJoPEnz/h//4n9PcqCUGXky7twxwiMouZIWRHdqNxC9ccnF56Vto+
	Oy15MkxM67x+1DvFHTdhVJFkbhEAkwJ9/Z1y7J3PYgwMXKgm7ubTBAeXFMUrEEcQ
	9UuSJi+LFrhQ9FGEXciAvpqUgzNHuyNoxzpIjxiOVAFfs=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-3 (Coremail) with SMTP id _____wDnb9JAfHFlkGmwEw--.43967S2;
	Thu, 07 Dec 2023 16:03:16 +0800 (CST)
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
Subject: [PATCH v4 17/17] MAINTAINERS: Add myself as a reviewer for rockchip drm
Date: Thu,  7 Dec 2023 16:03:02 +0800
Message-Id: <20231207080302.652839-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnb9JAfHFlkGmwEw--.43967S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKr1xtF17uw13Gr1fAF4rAFb_yoW3Krg_WF
	WIq34kXr48CFZ8J3yvk3Z7G3sIyayFyan3Zrn7tw4kAa48XrWDtrZYkr1Ikrn8J3W8KrWq
	vay3Ga43Cr43ujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnjQ6PUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnBs-Xlghl3ZRWwABs1

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
index 788be9ab5b73..e50c47c1d411 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7158,6 +7158,7 @@ F:	include/linux/platform_data/shmob_drm.h
 DRM DRIVERS FOR ROCKCHIP
 M:	Sandy Huang <hjc@rock-chips.com>
 M:	Heiko Stübner <heiko@sntech.de>
+M:	Andy Yan <andy.yan@rock-chips.com>
 L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
-- 
2.34.1


