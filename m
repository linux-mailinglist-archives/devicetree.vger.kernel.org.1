Return-Path: <devicetree+bounces-99985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6D696BB81
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 346451F24CF0
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C241D6792;
	Wed,  4 Sep 2024 12:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="lHwQJHG1"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF32B1D6191
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725451411; cv=none; b=iZOxypUIbLm39pAHRRt1t1nhhG45SaaQ75EcCl123cLYAqkARDS06T5o0pyueLwjWaek5NwE1DiUeY3JTd2JJm3LNN8NSiQTT07A+uyvLgilwtoLXwI+F3MJfpaYv7MCNybS0mtvjDdY1EAd3Xc7x2r6rT/bk0HIoKgoQo05Pig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725451411; c=relaxed/simple;
	bh=p2sX0yFW9G8NfLH2l2ApVcrhZFUyCTewAkdbqOzKocA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LSbxa7y33hqk55n8w29V8QpK251v0BtfQ9g205F6JccylO6GluUmiDq2YD6/V7LjwN8u5udFIqpQ+4fcc/kPYqyYWi8Pd/gzJwwKE8Mqv6nvg0TT5YQDI6XFMHfB50TFrFEl/uVtk9mIBvZomJSLDGdHhsZPGHfMm7+eNC0A66M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=lHwQJHG1; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=N/7uy
	jrB7KGGQTklpL1mV9iDvL5KrMqFqDQRAvh4XYM=; b=lHwQJHG1UBk4qFhgJ2PyF
	WGfy5bAlcr6mEF8JLqo2YISbqqDyNddWLAGiGbO9ZICh4DO2d/ocMwLlb7juwQeU
	RvuB5wv1IIbuhUz2P4lTHS2nfBvAUSsY1jdl50sYd4OTVKYAFOUt623xrOBsFYkp
	byjVP3Ik23xQ0SAcDg8RlU=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wA3HxFgTNhmiRMZCA--.50872S11;
	Wed, 04 Sep 2024 20:02:53 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Cc: sjoerd@collabora.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	hjc@rock-chips.com,
	cristian.ciocaltea@collabora.com,
	mripard@kernel.org,
	dri-devel@lists.freedesktop.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 09/11] dt-bindings: display: vop2: Add rk3576 support
Date: Wed,  4 Sep 2024 20:02:36 +0800
Message-Id: <20240904120238.3856782-10-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904120238.3856782-1-andyshrk@163.com>
References: <20240904120238.3856782-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wA3HxFgTNhmiRMZCA--.50872S11
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFyrWrWUKFy7ZF1DAw48Crg_yoW3trbEqa
	yxZwn8XF4kXr1Yqw1DJ3yxGw15Xa12kF1kCa1jyF4qya4kG348tF95Jw15Gr1UuF47uF4f
	uFnYqrW7WanxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU873ktUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRJQXmVOCpvz-gAAsC

From: Andy Yan <andy.yan@rock-chips.com>

Add vop found on rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- Add dt bindings

 .../devicetree/bindings/display/rockchip/rockchip-vop2.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306..23b2371aea46 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
       - rockchip,rk3588-vop
+      - rockchip,rk3576-vop
 
   reg:
     items:
-- 
2.34.1


