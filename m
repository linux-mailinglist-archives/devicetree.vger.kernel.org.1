Return-Path: <devicetree+bounces-133787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B51889FBBFB
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50EFE169966
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B92F1B6CF8;
	Tue, 24 Dec 2024 10:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="glO0dxbI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12780.qiye.163.com (mail-m12780.qiye.163.com [115.236.127.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775501B0F1B;
	Tue, 24 Dec 2024 10:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.80
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735034712; cv=none; b=E6LvDqetIb+xqcXEheCg6Ca9NpYXJjSoj8Umgxv4pUZb8171Xen/9E22XexGyiFFSnDFuajd1KC4VpqlAWLMPo5oSRn5vmyg9wOanV8qUamlgeHzP2IUPDr3f3kt8B6RjnSYDkHiF6lS95Tudc8IvDS86ZrXXDwXaS7W400othY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735034712; c=relaxed/simple;
	bh=IJ3ZC7aM9ktxzp48GdsTTcOSTQnW5Jfj2N/LMnId7Dc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SMXCTP06LbpfhMEZkUeGa3LkIqZqfShO+D7az80/kKDhhjYfl6FSyS8l4uivZKNTZpfEFTmbLlbVzMwoR6RahjfJhFUab7dnGihDaUDJ9+fDGDvtPrWLt/d72svr3WWrFjLfN83RGL0JKaBVmzcN7SoonBa6GcIJgXaI88mH+1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=glO0dxbI; arc=none smtp.client-ip=115.236.127.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4f82;
	Tue, 24 Dec 2024 17:49:45 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH v2 15/17] dt-bindings: mfd: syscon: Add rk3562 QoS register compatible
Date: Tue, 24 Dec 2024 17:49:18 +0800
Message-Id: <20241224094920.3821861-16-kever.yang@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0IaGFYYQ0JJQ0tOGExCTEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEtNT0
	1VSktLVUpCWQY+
X-HM-Tid: 0a93f8128b8703afkunm6aad4f82
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MCI6Ghw5NjIUKkoBFlYsLCo3
	Ly0wFExVSlVKTEhOS0hITENNSUxOVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS05INwY+
DKIM-Signature:a=rsa-sha256;
	b=glO0dxbIc5mAlSbO4TG6QTNTemfww1OyLNPrv8Ydpx1FdMDDasxs2HRJTuZqv32JwA4JgHhkAuCNoZMebwRGWJkIlue622UP7YYY1FR4khMwbiNVU1RG3GA2gPalU0HOZNjhYv/12fg7OgaCqgTqXEOV9Fy1te+W7dTM2EOqRZc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PA0QQbiZYVOq710Nd9y5Bo6g0MIw2h3IL327OaalC58=;
	h=date:mime-version:subject:message-id:from;

Document rk3562 compatible for QoS registers.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index b414de4fa779..03937a82db0f 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -103,6 +103,7 @@ select:
           - rockchip,rk3288-qos
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
+          - rockchip,rk3562-qos
           - rockchip,rk3568-qos
           - rockchip,rk3576-qos
           - rockchip,rk3588-qos
@@ -201,6 +202,7 @@ properties:
           - rockchip,rk3288-qos
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
+          - rockchip,rk3562-qos
           - rockchip,rk3568-qos
           - rockchip,rk3576-qos
           - rockchip,rk3588-qos
-- 
2.25.1


