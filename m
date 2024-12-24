Return-Path: <devicetree+bounces-133724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9BD9FBA76
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:24:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F87418844EF
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 08:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8363183CD1;
	Tue, 24 Dec 2024 08:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="XFOUyotv"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C31F327702;
	Tue, 24 Dec 2024 08:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735028643; cv=none; b=trT/ygwJOahEPmMO2ull/sgBnxpO4NPRP1+JNzNCM1fLNViZztjS2hO5bek3c8QNTPqsxSM1fhe245Wupn/ocpsmDcOG53Ak+VB9HOLqUPx2fGku8dkGYDzScGp0fe2xYf/lHSxIuAZxcNfOS5SiRRw2pPsOGPVQ5kIJ77Te/2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735028643; c=relaxed/simple;
	bh=LAUZHMRcN88MW4EajhRbRQ8ljSNAjtpgQzecKPwIMmc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LgMrullQweP8VslQ8rKA2NI8v+JEEDW4noBiW04HXLEVdX26Qux0beNEQ0Yz0JVHCHaZrLaXtCjSJnob/DR4ZFWjEFEnbfjFN4d0Vx7Y35eJmtzXdjHFjX7ztutrQ0z0IrcpA07TmdCpSikETmDCXDz8dGJX/01E9RPUsJJDjjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=XFOUyotv; arc=none smtp.client-ip=117.135.210.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=4e1ob
	V0cPgwgcDo8hxgun6VysOTGhY7lznRi05MbxUo=; b=XFOUyotvyRIhch8RN2oEj
	a6coWCFhfprvFsF2HxT78buQS8B2Y9ZwSBBk2fp2+PEGq33VPGLBady9lOWLeaMT
	cKXmEgstp/orNNB9cXPHCebNIJq8CHTuE+Ic5SyVw2hzjKZD6J7ZoudWAh0JMJT8
	dVLALRjGWfE9OQFc2ya5PE=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wD3R1F0b2pnfyNbBQ--.5317S2;
	Tue, 24 Dec 2024 16:23:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: cristian.ciocaltea@collabora.com,
	detlev.casanova@collabora.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
Date: Tue, 24 Dec 2024 16:23:09 +0800
Message-ID: <20241224082315.264091-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3R1F0b2pnfyNbBQ--.5317S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gr1rGw13Ww4UJr43CF45KFg_yoWfJFgEya
	4xZw1UZFs5tr1Fgw1DAayI9Fn8Aas7Kr95CF4UAF48CayqkFZ5KF95Xw1akr18W3WxuFyf
	ua1IqrWUGanxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1yrW7UUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMx2-XmdqaMi32AAAsN

From: Andy Yan <andy.yan@rock-chips.com>

Add hdptxphy grf syscon compatibles for rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7eca9e1ad6a3..61f38b68a4a3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -23,6 +23,7 @@ properties:
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
               - rockchip,rk3576-gpu-grf
+              - rockchip,rk3576-hdptxphy-grf
               - rockchip,rk3576-litcore-grf
               - rockchip,rk3576-npu-grf
               - rockchip,rk3576-php-grf
-- 
2.34.1


