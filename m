Return-Path: <devicetree+bounces-9524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8DC7CD4CE
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:02:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9263281A8D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 07:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CADBC8CB;
	Wed, 18 Oct 2023 07:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="N6+2Ol1k"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96528F5F
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 07:02:37 +0000 (UTC)
Received: from mail-m12772.qiye.163.com (mail-m12772.qiye.163.com [115.236.127.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5CA3FD;
	Wed, 18 Oct 2023 00:02:34 -0700 (PDT)
DKIM-Signature: a=rsa-sha256;
	b=N6+2Ol1k51E6JWP/gsM/nEjC/4dgFUyqaGcEs5R23VJbcRGC+quRYMjjuy1wTrNPbZpND7bbRTmPCaEL/GKrcU8azvzt+amHH7klqDJ15ObTp2yIBJX575o33hg0oWwQzpsYww6Q5jsHrZ2wH+wXmvRfponmKzWu3J/eLHavMdQ=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1XvCOfyGPEo/kOJS0FZNwvhpiSiL4ph7pVogJ4dlp7w=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id 7EFC0400308;
	Wed, 18 Oct 2023 15:01:53 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com
Subject: [PATCH v4 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk id
Date: Wed, 18 Oct 2023 15:01:43 +0800
Message-Id: <20231018070144.8512-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231018070144.8512-1-zhangqing@rock-chips.com>
References: <20231018070144.8512-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR9KSlZKHkJJGk0eHhhOQkxVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8b4197423d2eb3kusn7efc0400308
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzY6NDo4LTw*DEtKTS9JGkIR
	KgswFDZVSlVKTUJMTUpJTkpPSENDVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlJTEw3Bg++
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

MBIST_MCLK_PDM1 is not used,
Use PCLK_VO1GRF to replace it.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 include/dt-bindings/clock/rockchip,rk3588-cru.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
index 5790b1391201..5816cd71a4e3 100644
--- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
@@ -36,7 +36,7 @@
 #define PCLK_DSU			21
 #define PCLK_S_DAPLITE			22
 #define PCLK_M_DAPLITE			23
-#define MBIST_MCLK_PDM1			24
+#define PCLK_VO1GRF			24
 #define MBIST_CLK_ACDCDIG		25
 #define HCLK_I2S2_2CH			26
 #define HCLK_I2S3_2CH			27
-- 
2.17.1


