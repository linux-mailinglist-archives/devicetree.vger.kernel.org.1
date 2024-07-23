Return-Path: <devicetree+bounces-87576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F150939EE9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 12:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70E371C21E3D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 10:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11AB914EC71;
	Tue, 23 Jul 2024 10:42:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 436B114EC5E
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 10:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721731356; cv=none; b=CwHR+g8DztQbEEUhDhSbyfeNyj8NTXmS6pbbr3Jm2GZ6wWXnhPjhwgM0gbGc8u4zsV0jC+qstyElhJXo+/QHdtdRa0JWKlaZPdoWIfvutkfKiCR6XgkKxEXumRiEyTkIuUFF2x9I/7JX+2s9nRHpP0PdBRZTRQUreIKXGwkyNp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721731356; c=relaxed/simple;
	bh=snP9cPFloSQOLUnrcJKpt6/dOYNHcF8Fkv854jGiy4M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YqkL8NnSWRVjDPFkeFKkS0PcR1WBEcCLdTRYHYO0dKOfrzb3aDyQULcr55N5WB0EwB1Ni0a5aLJWmTUTjb1DMeGRd0rOXZIOK24xAdAXUFWxEDMJM+ssXuQwjmjJRjPnDIWk6mls1e4Kr4kcc2TYav0b58wCcVKwuzBL/HBJtKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; arc=none smtp.client-ip=210.160.252.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
X-IronPort-AV: E=Sophos;i="6.09,230,1716217200"; 
   d="scan'208";a="212369756"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 23 Jul 2024 19:37:31 +0900
Received: from localhost.localdomain (unknown [10.226.93.79])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id B71B240065AD;
	Tue, 23 Jul 2024 19:37:27 +0900 (JST)
From: Oliver Rhodes <oliver.rhodes.aj@renesas.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oliver Rhodes <oliver.rhodes.aj@renesas.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH 5/6] dt-bindings: serial: renesas: Document RZ/G2M v3.0 (r8a774a3) scif
Date: Tue, 23 Jul 2024 11:37:04 +0100
Message-Id: <20240723103705.9774-6-oliver.rhodes.aj@renesas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240723103705.9774-1-oliver.rhodes.aj@renesas.com>
References: <20240723103705.9774-1-oliver.rhodes.aj@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document scif bindings for the Renesas RZ/G2M v3.0 (a.k.a r8a774a3) SoC.

Signed-off-by: Oliver Rhodes <oliver.rhodes.aj@renesas.com>
---
 Documentation/devicetree/bindings/serial/renesas,scif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/renesas,scif.yaml b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
index afc7c05898a1..51d9fb0f4763 100644
--- a/Documentation/devicetree/bindings/serial/renesas,scif.yaml
+++ b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
@@ -46,6 +46,7 @@ properties:
       - items:
           - enum:
               - renesas,scif-r8a774a1     # RZ/G2M
+              - renesas,scif-r8a774a3     # RZ/G2M v3.0
               - renesas,scif-r8a774b1     # RZ/G2N
               - renesas,scif-r8a774c0     # RZ/G2E
               - renesas,scif-r8a774e1     # RZ/G2H
-- 
2.34.1


