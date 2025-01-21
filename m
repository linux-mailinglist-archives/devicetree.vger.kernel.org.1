Return-Path: <devicetree+bounces-140009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C86A17BEF
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:36:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B2FB18843CA
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA7B91E9B0A;
	Tue, 21 Jan 2025 10:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="M2ZGcCIg"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5704B1F0E2F;
	Tue, 21 Jan 2025 10:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737455721; cv=none; b=Wwjux1jBdtigMmRbfPJXcUSR9j49FSID3WIzEWFF+WG8k8CS7HOtQmgU52jbQoUPTfNWWOaIB7SYuGy6jdAl0BDnRNEM4NoICC2l02ZnoiiLqBiL9gAY9d+RtdvcxAPYKAWx5zMVYO5Q1InsKojACOmQTOquSRN6uJNaTZkOzzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737455721; c=relaxed/simple;
	bh=zeRdI1JNNWRlZJxXy6MGxECXgeQn8N0yi4573Pia7ZU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ox4OavPZLhtouS4P+J3ox7Wb7mZNeR8xBGTbG1SRZiJh+1iFvLHZoqvK/eoOV/I6mlupmU9ufOteS5HFaeVbxzKU9HH9D0fDhVRsLmPqF+65NhTCF1oWD6UeO7hpxh4BsL+ObCiJojHkrsut3J+gBgtfIY4+kxtNaaT6/Yehoss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=M2ZGcCIg; arc=none smtp.client-ip=117.135.210.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=rIdeV
	1+pXq0QaKtzBsI6ANLMHSHhAqjh7JQhiSF7JzM=; b=M2ZGcCIgxmuY+dOCZstHE
	iEv6LegmSeOgJ4xguxvbAPFnG+Qc2hPNxnzZNkK3S4nbQkUzQc0HMCoG6K2jUeVQ
	6HEbcIRL04L/0FnBYnwbdRUPhSJxpMVxrQNBv5orjkR9nYODeb9pVv1FKWkUwWpZ
	fMDooB+Cs4/pfYFWV63yXE=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp5 (Coremail) with SMTP id QCgvCgDHVyxIeI9nfog_LQ--.31266S2;
	Tue, 21 Jan 2025 18:34:51 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v12 11/13] dt-bindings: display: vop2: Add missing rockchip,grf propertie for rk3566/8
Date: Tue, 21 Jan 2025 18:34:44 +0800
Message-ID: <20250121103446.2528212-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250121103254.2528004-1-andyshrk@163.com>
References: <20250121103254.2528004-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:QCgvCgDHVyxIeI9nfog_LQ--.31266S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtFWxtw43Zr4UGrWxXF1kKrg_yoWDZFXEq3
	yxuF1Y9rs5Xrn8Kw1DA3yxCrs8Za1Ikr4DCayqyF4qy3Z5A34v9F95Jw15CF18CF43uF4S
	krs5urZrWanxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8RRRtUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gDbXmePdPdBiAAAs1

From: Andy Yan <andy.yan@rock-chips.com>

Propertie "rockchip,grf" is required for rk3566/8.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v12:
- Split from patch 10/13

 .../devicetree/bindings/display/rockchip/rockchip-vop2.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index f23939e67fd0..157a37ed84da 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -145,6 +145,9 @@ allOf:
         rockchip,vop-grf: false
         rockchip,pmu: false
 
+      required:
+        - rockchip,grf
+
   - if:
       properties:
         compatible:
@@ -200,6 +203,7 @@ examples:
                               "dclk_vp1",
                               "dclk_vp2";
                 power-domains = <&power RK3568_PD_VO>;
+                rockchip,grf = <&grf>;
                 iommus = <&vop_mmu>;
                 vop_out: ports {
                     #address-cells = <1>;
-- 
2.34.1


