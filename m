Return-Path: <devicetree+bounces-133844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A959B9FBE48
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 14:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1666E1880676
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB0EB1D6DB5;
	Tue, 24 Dec 2024 13:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="USCz0+cT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127172.xmail.ntesmail.com (mail-m127172.xmail.ntesmail.com [115.236.127.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C8D1DF724
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735045716; cv=none; b=aRededK3wWOGeRVn1jUsVWRO4FimEk7j0JWvPETVmqeMxt8oOP8yXRrWstRIQAWazaWGVm/YiOnXPAmGcQw1vwrJeqZYm+f3E+KAQ8HWs9z1UrcopblXgQ2IaW9+aMMSAzefKnHJa2Ms8hn30NRkhHc+FaigDQfVDJpHqvwrkLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735045716; c=relaxed/simple;
	bh=joo+4kBLO+ogjD4Zt1TPGj0xW29p+/hknOrdvl1LK+E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ctG5NqgNXrTDqBGmZhzyvNuo4fkLzQn2P2IVCoHBKfgxRlsuNweES0m10dC97EpIQA2MwuC8uRNu40sd+DgTUlSc+FowylhVBPsS6Ni5ELKBC00axz0cbbbQGBPuS7nbf7Zc/5cThIR7ZH1FkcVVQV1WJSC0prXxbJ4YvPunVl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=USCz0+cT; arc=none smtp.client-ip=115.236.127.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aa90325;
	Tue, 24 Dec 2024 17:39:21 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: power: add power binding header for RK3562 SoC
Date: Tue, 24 Dec 2024 17:39:19 +0800
Message-Id: <20241224093920.3816071-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhhCHlYZS0xJGRlJTElPTE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f809083303afkunm6aa90325
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K006ORw5KjIUTUoaPU83EC0t
	ERMKCwJVSlVKTEhOS0hISk1JQ0tLVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTUtINwY+
DKIM-Signature:a=rsa-sha256;
	b=USCz0+cTFZYqsuy50xTDM+NZLqMW8vVGjw+vgsjS6V3ay97cZ5EKbHJPjb7QvziW7spZJlabQkrMiGvD8Op2pbWtQbcgVv0xg5P3ro1ldQ7fOI/8NSbloKYdNAqxHnMnjFMVn5ggCvhHGIZ96GixPGMYY4lmpCZGeK/OGPMB1pM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=TF+TORshgAPHG06YtQFQVSUqYlUt1YDkgX4r9t+o1GA=;
	h=date:mime-version:subject:message-id:from;

From: Finley Xiao <finley.xiao@rock-chips.com>

According to a description from TRM, add all the power domains.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2:
- rename to rockchip,rk3562-power.h
- update the subject
- use dual license

 .../dt-bindings/power/rockchip,rk3562-power.h | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 include/dt-bindings/power/rockchip,rk3562-power.h

diff --git a/include/dt-bindings/power/rockchip,rk3562-power.h b/include/dt-bindings/power/rockchip,rk3562-power.h
new file mode 100644
index 000000000000..d728c9ee908d
--- /dev/null
+++ b/include/dt-bindings/power/rockchip,rk3562-power.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+/*
+ * Copyright (c) 2022-2024 Rockchip Electronics Co., Ltd.
+ */
+#ifndef __DT_BINDINGS_POWER_RK3562_POWER_H__
+#define __DT_BINDINGS_POWER_RK3562_POWER_H__
+
+/* VD_CORE */
+#define RK3562_PD_CPU_0		0
+#define RK3562_PD_CPU_1		1
+#define RK3562_PD_CPU_2		2
+#define RK3562_PD_CPU_3		3
+#define RK3562_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RK3562_PD_PMU		5
+#define RK3562_PD_PMU_ALIVE	6
+
+/* VD_NPU */
+#define RK3562_PD_NPU		7
+
+/* VD_GPU */
+#define RK3562_PD_GPU		8
+
+/* VD_LOGIC */
+#define RK3562_PD_DDR		9
+#define RK3562_PD_VEPU		10
+#define RK3562_PD_VDPU		11
+#define RK3562_PD_VI		12
+#define RK3562_PD_VO		13
+#define RK3562_PD_RGA		14
+#define RK3562_PD_PHP		15
+#define RK3562_PD_LOGIC_ALIVE	16
+
+#endif
-- 
2.25.1


