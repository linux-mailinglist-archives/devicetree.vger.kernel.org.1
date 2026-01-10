Return-Path: <devicetree+bounces-253494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2BFD0D8CD
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 16:45:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 829DF301399C
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 15:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2382C348860;
	Sat, 10 Jan 2026 15:44:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA514347BBF;
	Sat, 10 Jan 2026 15:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768059873; cv=none; b=ngnVt7dY+C8NrhjrPwciqU5rPL2snSBq4hR/4dNnoXUJTxHW6oRIhZDHyE93pOmLhUxBfu/hUEJoXOk2LhL3BGjxo3MoNUSJHxYrTRYmPoxkoWk3lA8HXFLCdpuaMbL86qZPmBs2v45qt/toUbkHnBqS9Sb1cERwi4FvcOnU95w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768059873; c=relaxed/simple;
	bh=htEEoJCZ/bfiOYrSmY569PpuX3Mj9YagDELUDKQbxFM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lfEZB3v2EkUbtxKWmbS2RTGNxNroqbPWiE/RcioNY0GJiRJwJczbfFU2lWxz0xMKVfCDtw1aq9xVS3Z/IpjGd8An5nynh7ipDr/maiklI5oALvNQD7Wud7tOZm1TGLRCHrJWmqFBW2SnI1zA7252ebom4EINV/7xcxB9kxeBnJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id AE43C1C2454;
	Sat, 10 Jan 2026 16:44:12 +0100 (CET)
X-Spam-Level: 
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdde:8c00:6078:eb97:88d9:587f])
	by srv01.abscue.de (Postfix) with ESMTPSA id 27C421C244E;
	Sat, 10 Jan 2026 16:44:12 +0100 (CET)
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Sat, 10 Jan 2026 16:43:35 +0100
Subject: [PATCH 1/4] dt-bindings: mailbox: sprd: add compatible for UMS9230
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260110-ums9230-mailbox-v1-1-5941cab4f4e5@abscue.de>
References: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
In-Reply-To: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.2

Add a compatible string for the mailbox controller found in the UMS9230
SoC.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 Documentation/devicetree/bindings/mailbox/sprd-mailbox.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/sprd-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/sprd-mailbox.yaml
index b526f9c0c272b566688748302b5d939773d9932a..bf6ab4e7050cb75657977b9a07aaeb8191183510 100644
--- a/Documentation/devicetree/bindings/mailbox/sprd-mailbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/sprd-mailbox.yaml
@@ -16,6 +16,7 @@ properties:
     enum:
       - sprd,sc9860-mailbox
       - sprd,sc9863a-mailbox
+      - sprd,ums9230-mailbox
 
   reg:
     items:

-- 
2.50.0


