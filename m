Return-Path: <devicetree+bounces-87192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC2F938C6C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:50:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A388B21C58
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06B3316EC17;
	Mon, 22 Jul 2024 09:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b="Gd9+bBtb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout34.security-mail.net (smtpout34.security-mail.net [85.31.212.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33344171670
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.31.212.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721641443; cv=none; b=CEP4U8Q0qHv1O6swUXItdik017j/TuYS9X28ta993P/VHOlYErVpx5n6iDB5IK220xeyM2L+lH55ezqJ+nRMfTLfIe9iwvoZZtU2NekwbKbkX/6UouK0lxHRAEfHuK7PCP/PuE1jg0eS27COJ7zevVwBUK9Mv7r3J9fnqL1roVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721641443; c=relaxed/simple;
	bh=EDin7GOUDLOxcNYm0ukHHaGK6/4+5NlqKHtphjQOXC0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QP/xjRqPIUddyh+wbsmYYI49aySkPcskqb3HhoAeAsYXVNTzOeT3ue+wuDIgy+J08zNk2XpWRLc9n3GrlK6/cYYzJDeJFfVmZ7EZfX0PGMxQY3KovYlXtSIdWC9IT6L4Oc0pVPUsQknwdfHNu4TKNYzn8cIhH+kgiVIdmiuMwW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com; spf=pass smtp.mailfrom=kalrayinc.com; dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b=Gd9+bBtb; arc=none smtp.client-ip=85.31.212.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kalrayinc.com
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id A23008363C2
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1721641435;
	bh=EDin7GOUDLOxcNYm0ukHHaGK6/4+5NlqKHtphjQOXC0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Gd9+bBtbW1BmeV67QCjDcEABzUFljyyettzgbdi7PgInBb0sfUmW0Z2NTQy6Xmew2
	 XnzzHgHlFRxh0Zf78RyHvRcxrLErG4iWcDiO0+eV4wp1fCNm5WF8/dWUmxPSpZ/xOS
	 YlVZ7isTKT1Vn/of5MmIEBB0CenjBGd/qqpR2Dkk=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 77AAA836509; Mon, 22 Jul 2024 11:43:55 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx304.security-mail.net (Postfix) with ESMTPS id DE6378359FB; Mon, 22 Jul
 2024 11:43:54 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id B08DB40317; Mon, 22 Jul
 2024 11:43:54 +0200 (CEST)
X-Quarantine-ID: <q-0Bl8ejGJPd>
X-Secumail-id: <137c4.669e29da.dcdf0.0>
From: ysionneau@kalrayinc.com
To: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Borne <jborne@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>, Yann Sionneau <ysionneau@kalrayinc.com>,
 devicetree@vger.kernel.org
Subject: [RFC PATCH v3 37/37] Add Kalray Inc. to the list of
 vendor-prefixes.yaml
Date: Mon, 22 Jul 2024 11:41:48 +0200
Message-ID: <20240722094226.21602-38-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722094226.21602-1-ysionneau@kalrayinc.com>
References: <20240722094226.21602-1-ysionneau@kalrayinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done

From: Julian Vetter <jvetter@kalrayinc.com>

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---

Notes:

V2 -> V3: New patch
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fbf47f0bacf1a..65954a1077ed7 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -754,6 +754,8 @@ patternProperties:
     description: Jide Tech
   "^joz,.*":
     description: JOZ BV
+  "^kalray,.*":
+    description: Kalray Inc.
   "^kam,.*":
     description: Kamstrup A/S
   "^karo,.*":
-- 
2.45.2






