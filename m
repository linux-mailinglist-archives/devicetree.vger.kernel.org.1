Return-Path: <devicetree+bounces-325618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2I6IACz+VGoxigAAu9opvQ
	(envelope-from <devicetree+bounces-325618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:03:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C34B74CBDF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:03:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b=IAF9RlYR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325618-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325618-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 412763139E56
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 14:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CCD43C05E;
	Mon, 13 Jul 2026 14:55:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C03437440;
	Mon, 13 Jul 2026 14:55:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783954530; cv=none; b=qA/vPMww8QmUjpauleUa/VY8x+i8JrTW7mRi0uDl3D0vSev8ubtnU3TLch+DtItGUTK5OjHZZSmKvIkW5ZRARwwNSF6WgIDv0cZTcxRToPPEIagSWXMTBkWWcGKNv3er4ZYSvapcL9cRW3fTvzlWDWWlj/3mDRgfd/KPTI+h1hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783954530; c=relaxed/simple;
	bh=ezOWvH/osRE6H/cXFkg9H9smMaW9rStaT6bb3eJPa3Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hcNimcUbBNB5cw9ifiVN/0W9qZrnYULioNryFJb9de8cugAq8dZXK5LFIiFMXqFLi/iDI1d5fSTszxTzfjINIKyjmMMmK4KemN32qZqCuYrRL8D7ZIMSyNJeLxowr1cam2ZlhI4qUXemxxWeiOIDi7C0mlmdWI2ZJv9rNEEQXZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=IAF9RlYR; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1783954517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hg5tW1Rb6Nt7cG6Ff89MFT0HTZsA91xkclD1Vy8H15c=;
	b=IAF9RlYRY32TgRdGT9RUVAxp8kZ+ISAA2djU9dBRkpEcG9FaNaKr9whnLDozCgy0seIGa6
	U5yICggsp6HBXPFGYOprdnY6FEQxihmgmE9Ti4KsqJpdc29NKTlePtZtUNfRzKACXWgKQ5
	M5GyPCZ6N2Q1JWDxYf1zcQRyAzSfLczT97j8wdS1RLQTkLZvfa31oD65V5nC0LofckDhHZ
	x2qLdC4AB5s5n6Y2oUzy3v8I4DV0re7fnhIoyBsrZ4toumES5fUP+EFGhg0uAPPPUuFNFo
	QvejdVnIiPIpu8ilBuKBmCvATk7MIubpoeXZGX6jZ2j7ODtkKIs5G3/cLTayGg==
Date: Mon, 13 Jul 2026 16:53:44 +0200
Subject: [PATCH v2 08/10] nvmem: imx-ocotp-ele: Remove the FUSE_ELE type
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-8-b8266d93514b@kontron.de>
References: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-0-b8266d93514b@kontron.de>
In-Reply-To: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-0-b8266d93514b@kontron.de>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
 Pankaj Gupta <pankaj.gupta@nxp.com>, 
 "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2820;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=CqKbLWJEprAuY0A/3w0FIvWFGg+83f0jb6ih5HsLxAE=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JISvkTxCb6Ecx23P9bN8iv/GeaXfd3LRl4au9x4pMfkdJn
 dnI8+51RykLgxgXg6yYIosUv8VrW7NYH/lj1VEwc1iZQIYwcHEKwESYPzEynLpcPIm37Jje82n8
 3BYJGe8vnVrXGmZg/O7I+9MOQRJrjzIy3LvEOKm3duX/KWKmKyd9X+ht4fumNF1noe+/228nuh4
 7zgMA
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:pankaj.gupta@nxp.com,m:peng.fan@oss.nxp.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:frieder.schrempf@kontron.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,oss.nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325618-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fris.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kontron.de:email,kontron.de:mid,fris.de:from_mime,fris.de:dkim,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C34B74CBDF

From: Frieder Schrempf <frieder.schrempf@kontron.de>

There is no use in tracking the fuses that are only accessible via
ELE API and the current lists are incomplete. If the ELE API is
available it will be used as primary access method anyway, otherwise
the fuses not listed as accessible through the FSB can be considered
invalid.

No functional changes intended.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 6ac7d588c4bd..f07565c0a02d 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -19,8 +19,7 @@
 
 enum fuse_type {
 	FUSE_FSB = BIT(0),
-	FUSE_ELE = BIT(1),
-	FUSE_ECC = BIT(2),
+	FUSE_ECC = BIT(1),
 	FUSE_INVALID = -1
 };
 
@@ -215,7 +214,7 @@ static int imx_ocotp_reg_read(void *context, unsigned int offset, void *val, siz
 		}
 
 		type = imx_ocotp_fuse_type(context, i);
-		if (type == FUSE_INVALID || type == FUSE_ELE) {
+		if (type == FUSE_INVALID) {
 			*buf++ = 0;
 			continue;
 		}
@@ -365,13 +364,9 @@ static const struct nvmem_keepout imx93_ocotp_keepout[] = {
 static const struct ocotp_devtype_data imx93_ocotp_data = {
 	.reg_off = 0x8000,
 	.size = 2048,
-	.num_entry = 6,
+	.num_entry = 2,
 	.entry = {
 		{ 0, 52, FUSE_FSB },
-		{ 63, 1, FUSE_ELE},
-		{ 128, 16, FUSE_ELE },
-		{ 182, 1, FUSE_ELE },
-		{ 188, 1, FUSE_ELE },
 		{ 312, 200, FUSE_FSB }
 	},
 	.keepout = imx93_ocotp_keepout,
@@ -381,7 +376,7 @@ static const struct ocotp_devtype_data imx93_ocotp_data = {
 static const struct ocotp_devtype_data imx94_ocotp_data = {
 	.reg_off = 0x8000,
 	.size = 3296, /* 103 Banks */
-	.num_entry = 10,
+	.num_entry = 9,
 	.entry = {
 		{ 0, 1, FUSE_FSB | FUSE_ECC },
 		{ 7, 1, FUSE_FSB | FUSE_ECC },
@@ -389,7 +384,6 @@ static const struct ocotp_devtype_data imx94_ocotp_data = {
 		{ 12, 24, FUSE_FSB },
 		{ 36, 2, FUSE_FSB  | FUSE_ECC },
 		{ 38, 14, FUSE_FSB },
-		{ 59, 1, FUSE_ELE },
 		{ 525, 2, FUSE_FSB | FUSE_ECC },
 		{ 528, 7, FUSE_FSB },
 		{ 536, 280, FUSE_FSB },
@@ -399,7 +393,7 @@ static const struct ocotp_devtype_data imx94_ocotp_data = {
 static const struct ocotp_devtype_data imx95_ocotp_data = {
 	.reg_off = 0x8000,
 	.size = 2048,
-	.num_entry = 12,
+	.num_entry = 9,
 	.entry = {
 		{ 0, 1, FUSE_FSB | FUSE_ECC },
 		{ 7, 1, FUSE_FSB | FUSE_ECC },
@@ -407,9 +401,6 @@ static const struct ocotp_devtype_data imx95_ocotp_data = {
 		{ 12, 24, FUSE_FSB },
 		{ 36, 2, FUSE_FSB  | FUSE_ECC },
 		{ 38, 14, FUSE_FSB },
-		{ 63, 1, FUSE_ELE },
-		{ 128, 16, FUSE_ELE },
-		{ 188, 1, FUSE_ELE },
 		{ 317, 2, FUSE_FSB | FUSE_ECC },
 		{ 320, 7, FUSE_FSB },
 		{ 328, 184, FUSE_FSB }

-- 
2.55.0


