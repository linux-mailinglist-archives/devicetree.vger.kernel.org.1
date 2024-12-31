Return-Path: <devicetree+bounces-134900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9489FEE4F
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C32233A27D5
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B75F18D625;
	Tue, 31 Dec 2024 09:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="cZT/vtog"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2663C189915;
	Tue, 31 Dec 2024 09:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735636764; cv=none; b=o2Pxb1Q+OLSoOsW5OzBRq0qvLe5o06Y4a98i9cF9LAAFN/NKIj2AO/yVnHzlXpspERqYf2FUgcBSUv7NLJgGgyxZLLhxxBPbwRwZ6LCuVsYzzJ4PMxvH6WvaIr48FSVTHBsSi/pCUezanY7Z12bu9n8A+Opj8c+j92b5lH1MMGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735636764; c=relaxed/simple;
	bh=FmNuaD6MaJEQxkXYNvGq0aPFPQ1l8v6R0pJkcKmSMSg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EKM/NR6dy/c8DXpS4l9z3vZlh61UYVlxwUcDj73rr6oyRGYhZGmW5Sdbsw8Zy6fX7eex7kdbiezM8nodbNNd4/IN4T5+fty3vn0bHb2xPk+2xR9UJoyuZc3qjjWmQrecJfcK3cKz2IjJMFeNmHeew/SnhYkf6kMZbO9oPUWrYUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=cZT/vtog; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=FmSpJ
	+e209IgLZ68tXXKsnh3RVerdeFHGl/h+V8EMEE=; b=cZT/vtogPH2LQj1S2IO2W
	ZIifzDTCu5GbHGpBvn+8WO4J16/jJz5/e4E6WlGLNTlvB3j9QV0UqEVYfMGXiRDv
	1YnYFw5OUai5SV3u/Gv+QT5CLFGx/nfxbGt5dt9YLslg4YxvHhS89Ie1il263tR6
	0X8qkm8BhNML2NSDHg3KYQ=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wDXzqH4tnNnSeTeCw--.54152S2;
	Tue, 31 Dec 2024 17:18:54 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzk+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	detlev.casanova@collabora.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [RESEND PATCH v1] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
Date: Tue, 31 Dec 2024 17:18:41 +0800
Message-ID: <20241231091841.252103-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDXzqH4tnNnSeTeCw--.54152S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gr15tF4DZFy3CF48tF4kXrb_yoWfXFbEka
	4xZ3WUZFs5tr1Fqw1DAa4IkFn8Aas7KrykCF4UAF48CayqkFWkKF95Jw1akr18W3WI9Fyf
	ua1vqrWUGanxJjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbyv37UUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqArGXmdzr9a-lwABs+

From: Andy Yan <andy.yan@rock-chips.com>

Add hdptxphy grf syscon compatibles for rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

(no changes since v1)

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


