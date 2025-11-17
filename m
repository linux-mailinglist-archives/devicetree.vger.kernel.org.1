Return-Path: <devicetree+bounces-239418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2471C64A1C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id A21C828B80
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023B8333737;
	Mon, 17 Nov 2025 14:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Di+l2jkC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE85F333727;
	Mon, 17 Nov 2025 14:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763389483; cv=none; b=GLANglG5+A90vxW/3Kn/XTBTfP/X/eMH3ksflEiu2fNr92roY1GzsxdizaIV0vUemsHfME8EsFP0GZZQajmVZsYpBgAYzKI0ZoNUgeEfVkHQDG/txTRdk7i3BF/yyiAmdw5Jk/yTTG44T9/EyI7vfc5lsf3i37fq+u6VeP4Y5YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763389483; c=relaxed/simple;
	bh=BDKG7XUa8rnXnpXGUzZd9vrLZaSbarLWWRV5Gl7xd0k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=foByNw4jYW4/hEoSIXGOKhaybEJTLJ3bp6Dzv/vPwNwyDfLy/YnG4SMEldoD1zsT75zySR+ZQoErUJnLbTu85EkOmbdZ91Vbzc0R3xWrEhQHgkm1YD/s9K4lQ3V40yjQbs/GG6+8Y+AYpI3GS3XAOLuIHRjhIwnG0cg6RTfkuTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Di+l2jkC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 347AAC116B1;
	Mon, 17 Nov 2025 14:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763389483;
	bh=BDKG7XUa8rnXnpXGUzZd9vrLZaSbarLWWRV5Gl7xd0k=;
	h=From:To:Cc:Subject:Date:From;
	b=Di+l2jkCHPmhuWmywggLQnHetuBxRMnf14nf7l7MMwEJH7G0QGy0Ce80g0jq9hQog
	 tIY59KpG0T0mrYhGTmqXeM8PB1TKvOkDIQ/bTrIXw77Nkv6rn3HS7I+UZZ0osSb4PO
	 IxA/A4MCglkJmKIpv9STMXel1vr87VWCO8veWM1ZhHPnkev5kj84CE2j+EaHO+l+/7
	 tp/As5Sgqa2C76PCkfHL3RWq1wkGCgyVgJjXQMGNomeIKhP8Ijdcm/bIyAZYag9c+/
	 yyZJOQOTdRPihh/iMHzeEGRTaAnNQLT8DJixrtqpsrtlIpnjbuBU6JLSIqlGmuVDVY
	 lJNc8jjWwLcFg==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1] dt-bindings: cache: sifive,ccache0: add a pic64gx compatible
Date: Mon, 17 Nov 2025 14:24:37 +0000
Message-ID: <20251117-colt-carnival-8aab0a900816@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1336; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=xVC4naZvJqIKQsdgFTu1CkfEm/T81TARj47gE0EvuZw=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSBqoiD6qv9mknuldP/a5W1aaW8cf68HT7CIdPCeo2K Qdaes06SlkYxLgYZMUUWRJv97VIrf/jssO55y3MHFYmkCEMXJwCMJGanwz/M63zJwp077leVNhy 0DT/0nQX4enO+tMrPq/7rPSWIcSAk5HhTPRf86tJ9ffXX5q11Fd44RWOa0H8p970FWUYv/ypl6b PBwA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

The pic64gx use the same IP than mpfs, therefore add compatibility with
mpfs as fallback.

Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Paul Walmsley <pjw@kernel.org>
CC: Samuel Holland <samuel.holland@sifive.com>
CC: devicetree@vger.kernel.org
CC: linux-riscv@lists.infradead.org
CC: linux-kernel@vger.kernel.org
 Documentation/devicetree/bindings/cache/sifive,ccache0.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
index 579bacb66f34..c0e5ebb1fa4c 100644
--- a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
+++ b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
@@ -48,6 +48,11 @@ properties:
           - const: microchip,mpfs-ccache
           - const: sifive,fu540-c000-ccache
           - const: cache
+      - items:
+          - const: microchip,pic64gx-ccache
+          - const: microchip,mpfs-ccache
+          - const: sifive,fu540-c000-ccache
+          - const: cache
 
   cache-block-size:
     const: 64
-- 
2.51.0


