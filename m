Return-Path: <devicetree+bounces-136852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E28A068F9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 23:55:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6D217A1773
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 22:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2C8620551D;
	Wed,  8 Jan 2025 22:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Zcnos1hV"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3567B2054F7;
	Wed,  8 Jan 2025 22:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736376791; cv=none; b=ZvR6Wlf2mDZXqYTPcJqJmhuzqSQhy8VNyhjmjVQ4WAbzj6+H9m2N36WqgVSFVW6mRflfG+uI9LezKL8jCVOSLU2rkE5HvpuvUbEDb3oYt6JXl/lQbNU9/Qp42HAqkcM0Lh53+Frxhx3gSXUtj7WADCCNBSiNqUECH2kHCnzYn1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736376791; c=relaxed/simple;
	bh=9zjr0PfSafrvP01TZ+70pbAdUxS74CrMPxKjkg4gfL0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=XnCjYAFjUG2J7aUEI5+HNXOBHicvRXXUj0RVquzvGXp3pMRyJJ6lUrfAbLcsaEw1AJr1O5bl1qEBWH+sxPBd1K3SRCyp8ua5kubuHN628TIEjKRVkAVLye6kd0PntzyL7bX9srFShVUnzdYsKW9My2kne0kNmkkPujKNkBUOzFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Zcnos1hV; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 508MqDwv081041;
	Wed, 8 Jan 2025 16:52:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736376733;
	bh=B9mvSUZhe0Gs54mE7MNJ44HT1A+T/9sT90UthccBd5g=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=Zcnos1hVIL9p58Nrt4+8ae4JuYezcAdOHGqMqKq2dKtSw1H+DBfKN6C++l0xqaQd4
	 lqjvw7QdNxPtc3SYTVOLHoqkOgIYj568lYwU+XHucGDVgtD0N5pMXfe+Z+7mHNNIbO
	 lZYkUrvnEp80CxNbjuNQVq+CMof4GecEFOBurSTs=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 508MqDhv080915
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 8 Jan 2025 16:52:13 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Jan 2025 16:52:12 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Jan 2025 16:52:12 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508MqCNw019025;
	Wed, 8 Jan 2025 16:52:12 -0600
From: Bryan Brattlof <bb@ti.com>
Date: Wed, 8 Jan 2025 16:51:53 -0600
Subject: [PATCH v2 1/3] dt-bindings: arm: ti: Add binding for AM62L SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250108-am62lx-v2-1-581285a37d8f@ti.com>
References: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
In-Reply-To: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=890; i=bb@ti.com;
 h=from:subject:message-id; bh=9zjr0PfSafrvP01TZ+70pbAdUxS74CrMPxKjkg4gfL0=;
 b=owNCWmg5MUFZJlNZI8PS+QAAYf///v5txq1/7/+1nuXF392TnNd/9teT7///3O/+/9Nv8c2wA
 RswIeoGgNDQ0AGgyBoNNDRkBkGhpkAaAAaaGhoANBpk0BoNDRoNPUyBkyaaMTGmUQaZDTRpo2oM
 gNBkAAyMjQYgaMhkAyZpND1GjIAAaBpoAA0NMEA0GhpoyaZNCGRiMIGgyNBkAMjBDENNGmQ0BkN
 GmhgIZGgaMgYQABkGgyA0yNAAADAQLBDVQNPh3PkBPQYlRDxc7bjgiHaNBpCNEwBwa6ALVsmV1r
 rKO9wDQCT3m6/Uw3tKgJEoXoOY4BXgRmujnRrqRhZ39kv2u6YChMSsq+9A9IQTzz2/F028fVXkX
 nsqXiAWG64LLwPn9qFgJdzctFQ7zJcqSjVtclqrzriFUcIWXKhE9xw0APaChMlJpl2QIr4+tsHO
 Px9GxjbEhsUCh2PEloxOdGOGUUjpsUoKSLSiir7FISr1Larnq5ktqBENOgOEQmuc4CP+Biozpoi
 ogGag72BB2Cl+JYaHaPo0LsDMZXU7HD5Ty8WrI/hzueWwO6iKm25dd9qQycCLucdIfljDUQaCzF
 FzjcmAyXymYA4Gm2SFymWDRwRZstAqrPBJNUBhwcQ4Wk2sAxCI8q6CtmYYpOI6OhSoSUCHF5wPm
 JvC2Z10IJ/i7kinChIEeHpfIA==
X-Developer-Key: i=bb@ti.com; a=openpgp;
 fpr=D3D177E40A38DF4D1853FEEF41B90D5D71D56CE0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Add the binding for TI's AM62L family of devices.

Signed-off-by: Bryan Brattlof <bb@ti.com>
---
Changes in v1:
 - separated out devicetree bindings
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 18f155cd06c84..b109e854879cb 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -31,6 +31,12 @@ properties:
           - const: phytec,am62a-phycore-som
           - const: ti,am62a7
 
+      - description: K3 AM62L3 SoC and Boards
+        items:
+          - enum:
+              - ti,am62l3-evm
+          - const: ti,am62l3
+
       - description: K3 AM62P5 SoC and Boards
         items:
           - enum:

-- 
2.47.1


