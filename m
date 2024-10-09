Return-Path: <devicetree+bounces-109366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E384996245
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 10:19:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F5BD1C217E2
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 08:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84F317C220;
	Wed,  9 Oct 2024 08:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="paP3h/PV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com [185.125.188.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EED617E8E2
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 08:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728461975; cv=none; b=MLflGhvVCNKcKIzRAuC/d6OhIAbMS+bJU71Tj3qkEDHGKTtThX/wxfKAx3khmbXQ3cWAU7vbmLwZ4WWJ3axe9n/nHEZevxRARhIMJ+J+mYP3Dg+s8JQSQjkuqCEWddNpux7tCVVWZq0BnqT4w8/H/56U+8+RsFB3XUvDIFPSlCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728461975; c=relaxed/simple;
	bh=cdRIbJLGn7YxKBGuMqpxMtsVyFrjgweIZiA7ooI9VRA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=EIdbwY8ruI3GGD3q5gqGlsGZX4HT3vrcIzgt4K2wS1VYtupNPmJIpqDhHrkq76c6+YycwXad5e+tAYV0m3ButdnF/LWFXL7WhnSYWPAYROr9WhUneWnYF8+k5sk4pBn56c82rsSkxFpnslhAUA1zCaStHGi71VWCBWYpofjcv+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=paP3h/PV; arc=none smtp.client-ip=185.125.188.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from hwang4-ThinkPad-T14s-Gen-2a.conference (unknown [103.229.218.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 9E7823F776;
	Wed,  9 Oct 2024 08:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1728461967;
	bh=deNrMf3Olx7rgFVfWl4J5LPh/1V6+gur8Mue2zZit/4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=paP3h/PV21Jt7ZYnzvUwyuViaTJq2TztzZJq7io9GPqMEmNMsmc9eXin9KiE3r79F
	 GBfW3RezHNAf2nUNTcAZqx5El/2OhCs4BU3c0cUcB4jhlpfB9wCvNOqGlxQQnt6yV7
	 CnN3utog5g4ounkJsInQ5qsx44KKVHcXczOT6TCtzMgrhQwaqmNT68t7qIxGWE5MmO
	 4sigpGPPlvatcKZPWncsV8lCWf5YnfZDhNGgNML433ylnirIW0/ZveXlYlF4YsSMpV
	 nrldAp3PMpxh3p1R/H96C9AqlI7kinxlGwzQRkcezIW6wkNsILJjhiwifV8WFRedYW
	 A5hr6/EP/8ieQ==
From: Hui Wang <hui.wang@canonical.com>
To: devicetree@vger.kernel.org,
	nm@ti.com,
	ssantosh@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	s-anna@ti.com,
	grzegorz.jaszczyk@linaro.org
Cc: hui.wang@canonical.com
Subject: [PATCH v3] dt-bindings: soc: ti: pruss: Drop the desc for assigned-clock-parents
Date: Wed,  9 Oct 2024 16:19:20 +0800
Message-Id: <20241009081920.15077-1-hui.wang@canonical.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The description for assigned-clock-parents looks redundant, It doesn't
contain anything new apart from rephrasing the straightforward meaning
of assigned-clock-parents, and furthermore there is a typo in the
description, hence let me drop the description here.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Hui Wang <hui.wang@canonical.com>
---
In the v3:
 drop the tag of Fixes since it is not worth backporting such a typo and desc fix
In the v2:
 drop the description for assigned-clock-parents instead of fixing the typo

 Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
index 3cb1471cc6b6..9b495bac0343 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
@@ -184,9 +184,6 @@ patternProperties:
 
               assigned-clock-parents:
                 maxItems: 1
-                description: |
-                  Standard assigned-clocks-parents definition used for selecting
-                  mux parent (one of the mux input).
 
               reg:
                 maxItems: 1
@@ -218,9 +215,6 @@ patternProperties:
 
               assigned-clock-parents:
                 maxItems: 1
-                description: |
-                  Standard assigned-clocks-parents definition used for selecting
-                  mux parent (one of the mux input).
 
               reg:
                 maxItems: 1
-- 
2.34.1


