Return-Path: <devicetree+bounces-40038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F249B84F0AF
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 08:24:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D58A288EB9
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 07:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 631F12E3E0;
	Fri,  9 Feb 2024 07:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="LXtykBmX"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FBE664A5
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 07:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707463413; cv=none; b=lZpicIWb3b5oEv1CIga8btqqIcTBwpXqaGVOMYSt90t2J32UAu+5Rl3gXMNVOv9t/V51edTNEPmBqYrKzi96bBubyJdrbI9b7Ssb9vty05T5fYQKB0+pjb4az8fvNrjn9kVtrslEFbOSTrNVgDLxUDfGl1GfNZgaLVvMGZ7ttOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707463413; c=relaxed/simple;
	bh=BXHf8bSFqMRDKpHNP0Bi4qB+zeNTBA97tTKWD4lT45U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QBPr+4emv+Gb/9rPATXQiQMaG5bzF8W2CVvgU4+4i0w47K5oRXQshIGLvZkDtQAjabO78yzG8xeebdPwWO35q5XCiza9iAHw51sW6w5a5qWDn+kdkss7WuhbRhEQ5RNnawnfsdUJTWmx6d/fcSSiAtPeBVxOWOba5cPIBw7D0DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=LXtykBmX; arc=none smtp.client-ip=185.136.65.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 20240209072323236806ab35d7e47625
        for <devicetree@vger.kernel.org>;
        Fri, 09 Feb 2024 08:23:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=d4oZ1vDSY7M3mK9PrAl/qDky65iWWq9JdkDYhp5N1LQ=;
 b=LXtykBmXXuQVm7H477xpGO3T6+CsIje7Ltj13Zg+YYWkN5QB95PRaWhFOWIhgD7c51yzIf
 NBvzmUTrbd0rQCRD3YnfZwDYJW1qQXwExnLV2MUFMqdKyuCWhV7ihrkDEJ8O0IvbREzAvu0K
 CI0hY9geyEZOacmILngbU6Rd8QYZU=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/7] dt-bindings: arm: ti: Add binding for Siemens IOT2050 SM variant
Date: Fri,  9 Feb 2024 08:23:15 +0100
Message-Id: <595d8d79647a0f5e6e635a22ee0fee011f8a5c5e.1707463401.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1707463401.git.jan.kiszka@siemens.com>
References: <cover.1707463401.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Su Bao Cheng <baocheng.su@siemens.com>

This new variant is derived from the Advanced PG2 board, removing the
Arduino interface, and adding a new ASIC for communicating with the
PLC 1200 signal modules.

Signed-off-by: Su Bao Cheng <baocheng.su@siemens.com>
Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index c6506bccfe88..1723e1fa7fee 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -93,6 +93,7 @@ properties:
               - siemens,iot2050-advanced
               - siemens,iot2050-advanced-m2
               - siemens,iot2050-advanced-pg2
+              - siemens,iot2050-advanced-sm
               - siemens,iot2050-basic
               - siemens,iot2050-basic-pg2
               - ti,am654-evm
-- 
2.35.3


