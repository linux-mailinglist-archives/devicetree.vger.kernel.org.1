Return-Path: <devicetree+bounces-305672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7YZ/IFLaHmoPWQAAu9opvQ
	(envelope-from <devicetree+bounces-305672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:27:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A7062E7A7
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:27:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=oL3XWzqy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305672-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305672-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66A8F3094CA5
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 404833E3C46;
	Tue,  2 Jun 2026 13:25:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FA13E1D07;
	Tue,  2 Jun 2026 13:25:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780406705; cv=none; b=Wig+UHukH4m665fbY+GV86/AbaA5jLWoHnk/0kbaoHdyKiOwiz3oR3uKIXm0mQVqlg6zMsACrNdj3x8ruurq05LdEUMWre3VVrc/0n+L6zOuqYigxcGaM4zX1C4FLu2V+i7vI1m4WZmmfV2DARE5dFWC9Lr457mHiMqTmWXv5yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780406705; c=relaxed/simple;
	bh=l4tZmoa0x3aA9qC0egLepPeLCCFRw16PSq7HETSLkJs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rB2ms7eOh9qfzH0JS0Djr6rmUp8D2KnYh1o8X932w2SlxzHBgfvrPUcyncesv+M9QD8YRDR64jRQJYsdZer3MPzRiO0HhdA0ZvMgcKTD7LLWVgiUzEAThPzLBT45vux3DX928rO+zxOwwWwsReNpKpzwEuOmtnHIaifxw6Lj31A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL3XWzqy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC0BEC2BCB4;
	Tue,  2 Jun 2026 13:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780406705;
	bh=l4tZmoa0x3aA9qC0egLepPeLCCFRw16PSq7HETSLkJs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=oL3XWzqy3UUHWlkZ5VcQ2vB1BF2u1m5l5OR6A64AMDFOoMejaoeUm8R4nhGHN0P3u
	 P9SsbCW0jLqRAOlrtRIaM9uYOEnvzlukeIqTQ/+xxpcBoY+A1qQQ0M1pcBiX72CsFs
	 nLTQ6CZiDAdpQJztCXOdpfOhNnAptcEuosmgTauYxaGY2ue4P6dXVqaTy1QpOlDC1G
	 cATA9EjoZ0FdNK+M7KdfJl4kgi1EmDfbHMQLR1d2fN4amb5n0VH4gRUr5IiyWed59D
	 0EXrNR0MqmA0K/kSyA9fhG97SzSV5rhsxkiREdoDuomAGGW0TVIPIqlMjdmnVhd5Ww
	 Wn6OZLQpYg0tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E38B6CD6E64;
	Tue,  2 Jun 2026 13:25:04 +0000 (UTC)
From: Colin Huang via B4 Relay <devnull+u8813345.gmail.com@kernel.org>
Date: Tue, 02 Jun 2026 21:25:02 +0800
Subject: [PATCH v3 7/9] ARM: dts: aspeed: anacapa: Align PDB fan GPIO
 numbering
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260602-anacapa-devlop-phase-devicetree-v3-7-7c93c5df8d9b@gmail.com>
References: <20260602-anacapa-devlop-phase-devicetree-v3-0-7c93c5df8d9b@gmail.com>
In-Reply-To: <20260602-anacapa-devlop-phase-devicetree-v3-0-7c93c5df8d9b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 colin.huang2@amd.com, Colin Huang <u8813345@gmail.com>, 
 Rex Fu <rex.fu.amd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780406700; l=2161;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=gT219DNuHxVGx46EEdxGOjRGMVdr1IWCg5Am0KC7qdQ=;
 b=GzMK2oG6vuFeC3uQWCKA8E6WjSBtprj2by4f31yoAWzXwveSQgkzHLNUkL2Th9P3LQzVQ9201
 eD4oRty2efECbLfuHWorPxbBgoqF1Fb2jyuPY65OMkdD3vHvGOIO5NF
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Endpoint-Received: by B4 Relay for u8813345@gmail.com/20260202 with
 auth_id=761
X-Original-From: Colin Huang <u8813345@gmail.com>
Reply-To: u8813345@gmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305672-lists,devicetree=lfdr.de,u8813345.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:colin.huang2@amd.com,m:u8813345@gmail.com,m:rex.fu.amd@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:rexfuamd@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[u8813345@gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 16A7062E7A7

From: Rex Fu <rex.fu.amd@gmail.com>

Update the LPDB and RPDB fan GPIO line names to align with the platform
fan numbering scheme.

The LPDB fan GPIOs are named FAN0 through FAN4, while the RPDB fan GPIOs
are named FAN5 through FAN8. This keeps the GPIO line names consistent
with the fan inventory and platform-level fan numbering.

Signed-off-by: Rex Fu <rex.fu.amd@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts  | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
index c703d64edfae..29df10697613 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
@@ -510,11 +510,11 @@ gpio@24 {
 					"RPDB_EAM2_PRSNT_MOS_N_R", "RPDB_EAM3_PRSNT_MOS_N_R",
 					"RPDB_PWRGD_P50V_HSC4_SYS_R",
 					"RPDB_PWRGD_P50V_STBY_SYS_BUF_R",
-					"RPDB_P50V_FAN1_R2_PG", "RPDB_P50V_FAN2_R2_PG",
-					"RPDB_P50V_FAN3_R2_PG", "RPDB_P50V_FAN4_R2_PG",
-					"", "RPDB_FAN1_PRSNT_N_R",
-					"", "RPDB_FAN2_PRSNT_N_R",
-					"RPDB_FAN3_PRSNT_N_R", "RPDB_FAN4_PRSNT_N_R",
+					"RPDB_P50V_FAN5_R2_PG", "RPDB_P50V_FAN6_R2_PG",
+					"RPDB_P50V_FAN7_R2_PG", "RPDB_P50V_FAN8_R2_PG",
+					"", "RPDB_FAN5_PRSNT_N_R",
+					"", "RPDB_FAN6_PRSNT_N_R",
+					"RPDB_FAN7_PRSNT_N_R", "RPDB_FAN8_PRSNT_N_R",
 					"", "";
 			};
 
@@ -559,11 +559,11 @@ gpio@24 {
 				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
 
 				gpio-line-names =
-					"LPDB_P50V_FAN1_R2_PG","LPDB_P50V_FAN2_R2_PG",
-					"LPDB_P50V_FAN3_R2_PG","LPDB_P50V_FAN4_R2_PG",
-					"LPDB_P50V_FAN5_R2_PG","LPDB_FAN1_PRSNT_N_R",
-					"LPDB_FAN2_PRSNT_N_R","LPDB_FAN3_PRSNT_N_R",
-					"LPDB_FAN4_PRSNT_N_R","LPDB_FAN5_PRSNT_N_R",
+					"LPDB_P50V_FAN0_R2_PG","LPDB_P50V_FAN1_R2_PG",
+					"LPDB_P50V_FAN2_R2_PG","LPDB_P50V_FAN3_R2_PG",
+					"LPDB_P50V_FAN4_R2_PG","LPDB_FAN0_PRSNT_N_R",
+					"LPDB_FAN1_PRSNT_N_R","LPDB_FAN2_PRSNT_N_R",
+					"LPDB_FAN3_PRSNT_N_R","LPDB_FAN4_PRSNT_N_R",
 					"","",
 					"","",
 					"","";

-- 
2.34.1



