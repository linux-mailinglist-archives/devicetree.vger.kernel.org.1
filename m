Return-Path: <devicetree+bounces-109279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C168995E6C
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 06:05:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62EA61C21D8B
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 04:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337AF7DA88;
	Wed,  9 Oct 2024 04:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="the8NpTM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-0.canonical.com (smtp-relay-canonical-0.canonical.com [185.125.188.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90100208D0
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 04:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.120
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728446698; cv=none; b=jRgeTlQNSNK5EHznONVU67QMjILEnrGcTszrr7B34ILuIlnhNPrSUoV9B3ctZjIcZ54NDI8HuO+3uTBCSbUPuuXeDHBZT6cZtwyhMJI56G0/3t7i/BtYkXVk1PGsrptn54VerqOb5bJqXVyxIt03/V/P9Js/xx7CEyW66bsqWiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728446698; c=relaxed/simple;
	bh=ALN3VWnzVXtecBWeX8VemaGdyA5XaS1nkV2eaPuL85Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ec+/RenvSzd5bUrhwM1XkTn3SViGi3Ayd2TSJhfMFaO4vAIv5kST33uHfNhDQbcKqJv/HoylPwTpO68gnH5XIwYnmuWyEBPTTPCTSkhCbAgzj+bxk6FRBfpAuNrKrCmpEDLn631DI6B/sivk0o4KVY8DsYTdn8aSu/jacBXmp60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=the8NpTM; arc=none smtp.client-ip=185.125.188.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from hwang4-ThinkPad-T14s-Gen-2a.. (unknown [103.229.218.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 105A53F0A3;
	Wed,  9 Oct 2024 04:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1728446693;
	bh=OExibLz3O02HLYF9YXyuoHpa0bk7RqXiqYnTOKJB0WM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=the8NpTMs3D++qDa5j5vA0mHpmKK42MqlE/9KWQomRSz1MJ9z+jOwHEATyyvqMnlb
	 7iu613JxV8pGeLjhzIeWr2rI2hvqF9sLgmcphDdkCfUSC2uGYWTudOoI1mSb4/cbhQ
	 hODEGUbBjX72rIueUvHm6DvylbNbIDdLJBgVulaz8u3J5zIab1VtfAg3FtaPPrJJ49
	 u4XsFuV/fGCfSq2fj9tUVipnEbaojl15xkjN2V7XbIuvKszCK0rVRgsVLwaJqWIOTO
	 BwIarCU5O9a3g9p3GHE2PfIoIyMfJLSDj/L94owuS5HEJTOftEcloEGN2sy75OqvW1
	 4SUzpglWWYkLw==
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
Subject: [PATCH v2] dt-bindings: soc: ti: pruss: Drop the desc for assigned-clock-parents
Date: Wed,  9 Oct 2024 12:04:46 +0800
Message-Id: <20241009040446.9446-1-hui.wang@canonical.com>
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

Fixes: 25bafac9408f ("dt-bindings: soc: ti: Update TI PRUSS bindings regarding clock-muxes")
Signed-off-by: Hui Wang <hui.wang@canonical.com>
---
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


