Return-Path: <devicetree+bounces-17932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B3A7F4764
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 14:10:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61D2F2810DC
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 060314C60D;
	Wed, 22 Nov 2023 13:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="au2PgyJL"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6E43510C;
	Wed, 22 Nov 2023 05:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=4hIly
	MNzL863/Hk1Ll2QKnKQl9tBh0XjMWCIZh2OIFg=; b=au2PgyJL/bjGttIJMD62T
	RHAv/C7HQl34bh4ztAGqzKKk6ULmy5SAzPS/vNNRKQwJzkcKMxoiiuxJYb6Zil9V
	wS+eR8GXHhA3ioDva3GwNHwRPrTVAavHqEAoQ01whsASEfno4OhamLf2DEqviTKJ
	6pG79E9YFBNusM4Bj4lYgU=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-0 (Coremail) with SMTP id _____wAnLJsr+l1llBLPDg--.52769S2;
	Wed, 22 Nov 2023 20:55:11 +0800 (CST)
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
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 07/12] dt-bindings: soc: rockchip: add rk3588 vop/vo syscon
Date: Wed, 22 Nov 2023 20:55:06 +0800
Message-Id: <20231122125506.3454736-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231122125316.3454268-1-andyshrk@163.com>
References: <20231122125316.3454268-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wAnLJsr+l1llBLPDg--.52769S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XF13Ar4UKr17uw1Utw47urg_yoWfCFgE9a
	4xZ3WUuFW8GryFgw1qyayIk3Z8A3Z2kFykCa1jyF4kCaykZrWDKF95tw1Svr15u3Wfuwn3
	GFn5WrWUGFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8dwI3UUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiFhAwXl44X9n0EwAAsv

From: Andy Yan <andy.yan@rock-chips.com>

Add VOP and VO GRF syscon compatibles for RK3588

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Acked-by: Rob Herring <robh@kernel.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index e4fa6a07b4fa..26db4f48ff62 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -28,6 +28,8 @@ properties:
               - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
+              - rockchip,rk3588-vo-grf
+              - rockchip,rk3588-vop-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
-- 
2.34.1


