Return-Path: <devicetree+bounces-266684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFS/JSwxl2kcvgIAu9opvQ
	(envelope-from <devicetree+bounces-266684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:50:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C541605DD
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4D1E3015714
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AB9A3491C7;
	Thu, 19 Feb 2026 15:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXebsbrT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163811DE3B7;
	Thu, 19 Feb 2026 15:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771515904; cv=none; b=UFWPktRNzKGOEIgE3xpMblrleq/yyBYlIKpk3XvwBqf09PUnsfdWPHLPz77rXWjxhlPycDrILDxr+HfWb+Wkl6qH5Mref2G5jx2ReVgEysWl7I2p07ji30s1Ri5wz4p2/hu4pQLjPhim4UeBr9Oi4mTkv6MwxHMZTZDk8K9tjEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771515904; c=relaxed/simple;
	bh=MEZIWk5e9iRnjMniEvcze5MIU7mUhoymJgLFKvBIwxQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=b1fdQtMUQlwv87Mz8VFc2xFbKStxGUAQynHOV+5tobM0oN2mYw+gyAi2J26V8k/LzRmpyxMF2h52O6jCmXOCEpJgP/7DxznRoDvBVc5OhEkkns/YtqSUCgoV16AfXbpxcp5akuAEK+ngsUefu7KsTs65LBsq5dzM+t5Pr3pNpRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXebsbrT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF78CC4CEF7;
	Thu, 19 Feb 2026 15:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771515903;
	bh=MEZIWk5e9iRnjMniEvcze5MIU7mUhoymJgLFKvBIwxQ=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=cXebsbrTQgF5mniykYiyeGQVEbO8JzzkkCbu1/vbhC8UUO29DXHEehHJiNU/ZbJbn
	 s84RQKoi34A/mhaxJADHAKA3tX3mZEOQxg27ZLkhazft25zKZyGWTPBPZ+18+4bQFr
	 nLDnA4BS79JeAc3s2ziLgUZ6KXZoqdYWhk/nsL4LiVyyCzXq7/Fv6P6w0j20po/S9A
	 A1+9yNB9zn0DxysDgEZFfSioJ11IQ4Vh7uLgRSLleilxlqFs0xA7HmIUePzDkjdaeH
	 0RNxZyNnCuKNDHWw9rmxlpNj658vpdlqfNvgIbR6OOnmzzbxU/SRGQ35pqDWcoKF4y
	 tSKnk2BjIeO1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBFBE9A03B;
	Thu, 19 Feb 2026 15:45:03 +0000 (UTC)
From: Dirk Chen via B4 Relay <devnull+dirkchen.amd.com@kernel.org>
Date: Thu, 19 Feb 2026 23:44:47 +0800
Subject: [PATCH v3] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260219-b4-anacapa-dts-fix-v3-1-4f70fd2d1070@amd.com>
X-B4-Tracking: v=1; b=H4sIAO4vl2kC/33NOQ7CMBAF0KtEU2NkOyZbxT0QxXgjLrLIjixQl
 LszSQMFohnpf+m/WSG5GFyCrlghuhxSmEYK5akA0+P4cCxYyiC5rDgdphXDEQ3OyOySmA9PJnn
 tvWux1NwADefoqD7Q251yH9IyxdfxI4u9/ctlwQSZVmkuhGou6oqDPZtpgB3L8htofwKSAO+Uq
 rDmZaP9B9i27Q2awI6R8wAAAA==
X-Change-ID: 20260202-b4-anacapa-dts-fix-207ffe9a3b0c
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Dirk Chen <dirkchen@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771515902; l=1779;
 i=dirkchen@amd.com; s=20260202; h=from:subject:message-id;
 bh=e6uon8fDwRBTubN8ywUAkYjtYXx6mIWRj19Qi3Y6T6g=;
 b=yPhRCyA6wRLeJlcr0K5q0+OqpgObOJe/AzDQSJiYDKvOW5cRhT9MUc8VQfNRlWLPZMUt0q/EO
 hdK+ttB1juxBEjXrPe59DC/BQLuAYSuWc+elt78/2d3j+BRmO5H9K/+
X-Developer-Key: i=dirkchen@amd.com; a=ed25519;
 pk=NBIyLsVg/YYtGLruq9XLdLWx2PP/1MH4jDDQ1V+7wes=
X-Endpoint-Received: by B4 Relay for dirkchen@amd.com/20260202 with
 auth_id=622
X-Original-From: Dirk Chen <dirkchen@amd.com>
Reply-To: dirkchen@amd.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266684-lists,devicetree=lfdr.de,dirkchen.amd.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[dirkchen@amd.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.3:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amd.com:mid,amd.com:email,amd.com:replyto,0.0.0.70:email,0.0.0.50:email]
X-Rspamd-Queue-Id: D0C541605DD
X-Rspamd-Action: no action

From: Dirk Chen <dirkchen@amd.com>

The Anacapa board features Atmel 24C2048 EEPROMs on i2c0 and i2c1, which
are used to store retimer configurations. Add the corresponding device
tree nodes to support these components.

Signed-off-by: Dirk Chen <dirkchen@amd.com>
---
Changes in v3:
- Reorder I2C device nodes by ascending address (place eeprom@50
  before i2c-mux@70)
- Link to v2: https://lore.kernel.org/r/20260209-b4-anacapa-dts-fix-v2-1-fe446a7038bf@amd.com

Changes in v2:
- Improved commit description to clarify that the change reflects
  actual hardware as requested by the reviewer.
- Removed mentions of other platforms to avoid confusion.
- Link to v1: https://lore.kernel.org/r/20260202-b4-anacapa-dts-fix-v1-1-20d4b0114854@amd.com
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 221af858cb6b..1502773d9c30 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -300,6 +300,12 @@ &gpio1 {
 &i2c0 {
 	status = "okay";
 
+	eeprom@50 {
+		compatible = "atmel,24c2048";
+		reg = <0x50>;
+		pagesize = <128>;
+	};
+
 	i2c-mux@70 {
 		compatible = "nxp,pca9546";
 		reg = <0x70>;
@@ -334,6 +340,12 @@ i2c0mux0ch3: i2c@3 {
 &i2c1 {
 	status = "okay";
 
+	eeprom@50 {
+		compatible = "atmel,24c2048";
+		reg = <0x50>;
+		pagesize = <128>;
+	};
+
 	i2c-mux@70 {
 		compatible = "nxp,pca9546";
 		reg = <0x70>;

---
base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
change-id: 20260202-b4-anacapa-dts-fix-207ffe9a3b0c

Best regards,
-- 
Dirk Chen <dirkchen@amd.com>



