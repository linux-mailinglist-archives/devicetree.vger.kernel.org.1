Return-Path: <devicetree+bounces-158156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17711A64DD6
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:04:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A89C162C65
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C39D230BEB;
	Mon, 17 Mar 2025 12:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="HN2PDw0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3435C19CD19
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742213089; cv=none; b=EzEmGxALMSaC0q2H/XFnz3NpmJU1HpTyXpOBA/jdAQFV1pqqcg8rMwDDDAxhv5CjebyZt+oZhWTuWFnHOtqHWUwSjjVPgrL0UvxgnPeJ96iCl0L+V3OWOaSA0xLLwLm9glOCES0o6K9tSAySaR0iSXEFSFtF+fcDvBvh5gRMFtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742213089; c=relaxed/simple;
	bh=1UoTWFts0bGtzzjOQFFJBt56Df+MynMz3+ye0XxEul0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=t+KKKNShH4dVuFlxjc7grn302rycd2uAMZKaU2nhHsF+7D1ObjN+5Isf5Q5eeWvJjSfA51zkAxFJ3ZjcGZmm0zXCtzp03rzizDz8ysKDrZG+8mJRkeb+VVgqb7+vRr2axIOr2JQU9VQkfE5WEuZyHspsdNEkmztFziuV5D/cXv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=HN2PDw0J; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=dX49vKBE+MSNuQ
	E/lhGd+fyN6Zu2+fc64xPUSy2tMC4=; b=HN2PDw0JpFmW44L6kbSQHcStTr+bLX
	z1Doc1/24yGN9QAEzToLmPbeG9HH00mFx1SD9j/p36NDu810wmtgNkh6UQqE5vR9
	ad15J7nExePJkJ0dC/ybW9IubhCTP5yCphW9k30QXjo5zBwmOHAxkcKn+htLVlEz
	12HhV/QfSomV0WfFDo39o6jdvfFhsMZcLqcxxs7mxd+eiaE0qIywIH3oN/iPBgm2
	iW8Hx5uq3fqZwy2e55xsvb6DhSq0x/pgLwFi9wQN3zlHUa73FibMOUEKvumAkqus
	WpAKafe1sEDinTksvhCb7RllotWV9EtYDabCOBeUqMng6/wBM/+5Ivyw==
Received: (qmail 3133718 invoked from network); 17 Mar 2025 13:04:43 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 17 Mar 2025 13:04:43 +0100
X-UD-Smtp-Session: l3s3148p1@P+33l4gwiLAgAwDPXyTHAJp038nK7dx+
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: serial: snps-dw-apb-uart: document RZ/N1 binding without DMA
Date: Mon, 17 Mar 2025 13:04:37 +0100
Message-ID: <20250317120437.67683-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Renesas RZ/N1D has this UART with and without DMA support. Currently,
only the binding with DMA support is described. Add the missing one
without DMA support which can fallback even more.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 .../devicetree/bindings/serial/snps-dw-apb-uart.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 1c163cb5dff1..5b5799c21243 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -30,6 +30,12 @@ allOf:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - renesas,r9a06g032-uart
+              - renesas,r9a06g033-uart
+          - const: renesas,rzn1-uart
+          - const: snps,dw-apb-uart
       - items:
           - enum:
               - renesas,r9a06g032-uart
-- 
2.47.2


