Return-Path: <devicetree+bounces-133771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0539FBBCF
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:02:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50888165DB2
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222921DE2AB;
	Tue, 24 Dec 2024 09:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="T7LND+Xf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m121146.qiye.163.com (mail-m121146.qiye.163.com [115.236.121.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF601CDFBE;
	Tue, 24 Dec 2024 09:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.121.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735033784; cv=none; b=Ou5fenMmQpsmXgXEp3XdEQnjeHwE1EFfoBTCAYn61bv75BXKYpeh7b8mukljAKYpwqPZosLBVJ9l1TrkmduYNidpg8rG0e64RpYXhcsfHuB9XvGeJZdWSMFaOiJX5FD/ZXfQHjmjnE5/8Hi9C88E6Vcmx2OT0O/DoTeTjBuHCOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735033784; c=relaxed/simple;
	bh=yX1efV3vxWaB+V9q+ARgCgX2dEqq7xoActrT8Fj3DOo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fstW0vLKz+FsiKEl7aezPLl77SW8S8S8pNCPyYDr/TMptRk+mWYmIfmbnCmiMzEnw0lFCKlG+gijMgi8cNxBY2gj7KD/3XPIAItxpr4nyGFHQGiy/TOXkWtsKBTecHD8mTaA3KMWeFgOPKKVI+kFF2s0z5WLU1sIAU6WoENcbnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=T7LND+Xf; arc=none smtp.client-ip=115.236.121.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4f0b;
	Tue, 24 Dec 2024 17:49:32 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Simona Vetter <simona@ffwll.ch>
Subject: [PATCH v2 06/17] dt-bindings: gpu: Add rockchip,rk3562-mali compatible
Date: Tue, 24 Dec 2024 17:49:09 +0800
Message-Id: <20241224094920.3821861-7-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhCS1YaGRgeHUxPHk0YTklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f81258f503afkunm6aad4f0b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PVE6ATo4SjILHEojS0oILCFR
	EFYwCjdVSlVKTEhOS0hITExITU5IVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS05NNwY+
DKIM-Signature:a=rsa-sha256;
	b=T7LND+XfDLkMaBiBZdsXWlMZ20wC0hDD2YrIeXQLdN2oTHRdXeEfAqIqS7XRckXVUKbjvhX/ExBAVZNrzvu4oBR5u0IEsbf88I+onTvMahEKB+q28VzzCjIHlthBYUHNmCw3NmzUgDf0iZ84SS8R2PQkZXjiB7vdDpC9tRzbTFM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=9e0fkON3OqPWW/xMJm4rwqQ0FxbNptJZ1Px6QOShTng=;
	h=date:mime-version:subject:message-id:from;

rk3562 has 1 ARM Mali-G52 GPU,.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 735c7f06c24e..b0d4806614aa 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -25,6 +25,7 @@ properties:
               - renesas,r9a07g044-mali
               - renesas,r9a07g054-mali
               - rockchip,px30-mali
+              - rockchip,rk3562-mali
               - rockchip,rk3568-mali
               - rockchip,rk3576-mali
           - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
@@ -60,7 +61,7 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 4
 
   clock-names: true
 
-- 
2.25.1


