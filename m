Return-Path: <devicetree+bounces-134498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 992B79FDA7C
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 13:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A6E53A13A7
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 12:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C25C11662EF;
	Sat, 28 Dec 2024 12:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="kbv58woR"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E6AF15A856;
	Sat, 28 Dec 2024 12:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735388571; cv=none; b=gBJ/B33Y7VHNMh9LMHS0CAOie1xbWnCc3LCWQ01ejjYR5CKUkIMPRKy2uy7XAlngkN/HxrtWXuD0pDTuK9XRmIFe+7UBLVV2JdcmxgH8NMv5HBXzjmZD3AkO6hhIUTeycON3n+wir4SxwBuUkw40Z5uWBOQolsb5eabfJi9pLR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735388571; c=relaxed/simple;
	bh=FmNuaD6MaJEQxkXYNvGq0aPFPQ1l8v6R0pJkcKmSMSg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eTww8b6UcQLNzt1eFkUuKOg6UpgGJaPfx4GU27ztkgkJPySagWXLoMNnVKVKLHVw5wVrXVkXDsGMUN97Y8p4IM9SRTM4MP74PT/a2SpFcB4KOvh35qBv2LKX4EnOgi49aJPDKDnabhqmZdtlX66Zv6j2ubs4F2Rs9V+V3xqsFow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=kbv58woR; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=FmSpJ
	+e209IgLZ68tXXKsnh3RVerdeFHGl/h+V8EMEE=; b=kbv58woRhslEWE41zJD4/
	DaaK000dFmsxacFSBISixE1I7kMoZgD9wO/T3qgPYtiyWORbhDqO1whKNILB/TtR
	nVN6tiaJeRlEftaA92cvcSJrMVl+qnXoSInAvkC/iS9Vtp926VxAJwOLbg3/sR4o
	MrItHXwFEgFKBAEN4+2PsE=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wD3t0tl7W9nUxdCCQ--.1009S3;
	Sat, 28 Dec 2024 20:22:03 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzk+dt@kernel.org,
	joro@8bytes.org
Cc: cl@rock-chips.com,
	robh@kernel.org,
	hjc@rock-chips.com,
	vkoul@kernel.org,
	devicetree@vger.kernel.org,
	detlev.casanova@collabora.com,
	cristian.ciocaltea@collabora.com,
	dri-devel@lists.freedesktop.org,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 1/8] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
Date: Sat, 28 Dec 2024 20:21:44 +0800
Message-ID: <20241228122155.646957-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241228122155.646957-1-andyshrk@163.com>
References: <20241228122155.646957-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3t0tl7W9nUxdCCQ--.1009S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gr15tF4DZFy3CF48tF4kXrb_yoWfXFbEka
	4xZ3WUZFs5tr1Fqw1DAa4IkFn8Aas7KrykCF4UAF48CayqkFWkKF95Jw1akr18W3WI9Fyf
	ua1vqrWUGanxJjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU00JPtUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRPDXmdv5wS0uAAAsA

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


