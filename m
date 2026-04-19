Return-Path: <devicetree+bounces-288472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPb8Lyxk5WmojQEAu9opvQ
	(envelope-from <devicetree+bounces-288472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 01:24:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15841425BFE
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 01:24:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC0BB3016937
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 23:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D36512FD69E;
	Sun, 19 Apr 2026 23:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOglYu7F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15CA28000F
	for <devicetree@vger.kernel.org>; Sun, 19 Apr 2026 23:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776641065; cv=none; b=UH7wJ/jrWJ/FWOCXomQSpXMXTk5ny46j6vc3jIumZ3RzO8KNY3Wq7nplKxJwDrmyXkwjInaweD2nfwaaspSHWWa0tzG/TYN9yVfZFfo3vZQ5j28pJgcgakSz1bjvem5YERHDcoOwfzTybR59tPr/JFRdiQwa2UpqF3JJIwXO0+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776641065; c=relaxed/simple;
	bh=jxd2p1YV1Y4iHqOPvE10Cnu4wDpAAB7/t8CdCih5ngU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gsZ0xbXI/24nAh6vUkjz8+oArilDLbh7lnjKq/O3A0cPNtRBPfFF4enRArm1Wyc45uXKpLpJlgEQ4U/iio00kX/QIDj5bIUiNgXOhJTFwpDa5tJ447cCXF2JWwzYrSjiOW01DRczbKx/J6pNe8q0QRbXjuFyUfINKMDU66gAzW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOglYu7F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD5DBC2BCAF;
	Sun, 19 Apr 2026 23:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776641065;
	bh=jxd2p1YV1Y4iHqOPvE10Cnu4wDpAAB7/t8CdCih5ngU=;
	h=From:To:Cc:Subject:Date:From;
	b=lOglYu7F8Dfh3kgN2Uy4UTq/FXdDLGppGyQlD5hpKrXueg9wAbQC91tqZh5NDtUyD
	 IYzv7R9Am/Z77oBVX8mqLthKHiTHs6+vU4ElF51Z1H+HT0PE+wI2OfW7Du5iqnDvFH
	 ZE2xjgr6ydDjaahKe0Zqiz6vAKJTMHmOWLYsDHjobT1tUA/coFMEHgkLrbhgkRBMDA
	 GpQB/dc2w/85WOzBYT7N6d7m/+862UG1lBzSipQ3ZiHBcO+eJSTwum4gHQM4xqcxiA
	 eJZdAWtSCr3glgBY8fRKIAudWW3xocT9CP/92DCG2hoO3v0pENQT121irL50Wr4CMw
	 z1w6r9hWRGf4w==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCHv2 1/2] dt-bindings: arm: altera: document the Agilex7-M devkit
Date: Sun, 19 Apr 2026 18:24:15 -0500
Message-ID: <20260419232416.68331-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288472-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 15841425BFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Agilex7-M is a rebranded version of the original Agilex SoC. The
Agilex7-M SoC has the same core peripherals as the Agilex device.

This change is to document the Agilex7m devkit which has the Agilex7-M
device. The Agilex7-M SoC supports DDR4, DDR5, LPDDR5, PCIE 5.0(x16), but
not QSPI.

Also, now that Altera has separated from Intel, use the "altr" company
prefix.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: use a specific binding, "altr,socfpga-agilex7m" for the Agilex7-M SoC
---
 Documentation/devicetree/bindings/arm/altera.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 13a3a9696821..550f484c06ff 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -108,6 +108,12 @@ properties:
               - intel,socfpga-agilex5-socdk-nand
           - const: intel,socfpga-agilex5
 
+      - description: Agilex7m boards
+        items:
+          - enum:
+              - altr,socfpga-agilex7m-socdk
+          - const: altr,socfpga-agilex7m
+
       - description: SoCFPGA VT
         items:
           - const: altr,socfpga-vt
-- 
2.42.0.411.g813d9a9188


