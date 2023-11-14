Return-Path: <devicetree+bounces-15611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 802627EAF03
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 12:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67DB81C20A95
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C8C13E494;
	Tue, 14 Nov 2023 11:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="cmKt0NUU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F4D3E46B
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 11:29:09 +0000 (UTC)
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id CA4DF1BFF;
	Tue, 14 Nov 2023 03:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=+qJQz
	SNuwveCVk6IeGOImzTHjvxdDU1zu6KXYVYxyLc=; b=cmKt0NUUEPaBE2jgl05B+
	tvPDMgJFGKT7lSHB+MBQryPs+Uoc/tWpnOvOHAOAsep1dGyzXG/4tr7F3vHA6K1n
	PXq65iW+bCbO+Pa0kl2wHCeJaP5AV2WoktPYXLadv4bZJ7MsUpCANTWJJjnQKrWu
	gN6i4Bztc3l2OuF6B0NtVg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-2 (Coremail) with SMTP id _____wD3X_PVWVNldxVuBQ--.54859S2;
	Tue, 14 Nov 2023 19:28:24 +0800 (CST)
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
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 07/11] dt-bindings: soc: rockchip: add rk3588 vop/vo syscon
Date: Tue, 14 Nov 2023 19:28:20 +0800
Message-Id: <20231114112820.1771240-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231114112534.1770731-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3X_PVWVNldxVuBQ--.54859S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7GrWkAF4UAr4rZrWUtF1xAFb_yoWfJrgE9a
	4xZ3WUuFW8GryFgw1qyayIk3Z8A3Z2kF1kCa1jyF4kCaykZrZ8KF95Jw1avr15uF4fuw1f
	uF1kWrWUCFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8iSdPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAEoXlghlUyjWgAAsy

From: Andy Yan <andy.yan@rock-chips.com>

Add VOP and VO GRF syscon compatibles for RK3588

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

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


