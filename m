Return-Path: <devicetree+bounces-312512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 30izHNE6MWoMegUAu9opvQ
	(envelope-from <devicetree+bounces-312512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 14:00:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 084CE68F0A0
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 14:00:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b="OD0/Tv7B";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312512-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312512-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DABF330819EE
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C6D544BC91;
	Tue, 16 Jun 2026 11:54:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AE243E49D;
	Tue, 16 Jun 2026 11:54:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610846; cv=none; b=As25Ag6GJ8600gSklZ+Un2XWF2EIDSfyMNyBjzyJHNdmzjoHNI1qtH2VfsxvVSj5Fpnheda4eR1x5mxlXtz40WFkoSkYY9rHAbvvAvz4GVxM2jfIZFpS5Qo3dAKefatPd8aMMqznV48kYf7YSY5QFs0/Frrm8GN1y+ZUZIQOJ58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610846; c=relaxed/simple;
	bh=eA+WsGNq3+SD/MoB/RnFarEUy7TH9TdWiVb7VTOqQz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ceSxI5rvpPO0nYsAd8nFNRKMoouMt4zXByYYIZwsoTyDXaAu7CeCzWEOceM/MutG8bnOrvlRqcki9WXL6tIp5IwjZLIkS42RJJkwyWnecYW0REUiYQasrWTohfjINfUj6H6KrKg8MH4quxpqly//8SGDe4bpw3X6Oe1b03U5TSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=OD0/Tv7B; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1781610840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lz3BFOgimGh+U4Fzs9XXQPItFZyIG75AeiRmFd9/Mks=;
	b=OD0/Tv7Bn4cgGri0JEQ2ctPF+uYpwsMgEDdZ3vjFQihqlZLu0/gAqxTWJpqV2r43TGxMjV
	XsIHwXJaeA/zgCawEEp7XbIzEfyY4rul5N6A6W9obBh98xztp3MLn/gb2fXKtOl2t0sV5j
	HYytXfrUF2MPp6Ku31LRmyPLUROhbxfL0WuGY9CSPWTxv5cpTIcSdIQRt400h773GCoZAH
	+5NzzCYX2aQUxX8zAiD7lHTdEENYP5ifDhK2PxrPxEU9fSmyZzS5UG/m6n0AIVnlMwDzpY
	6TyjsmXayXl36Cy/Q+DgpAQar4jeAjgJu1kMo5UMoqT0CCRr3BlEkoW3JzdphQ==
Date: Tue, 16 Jun 2026 13:52:23 +0200
Subject: [PATCH 8/9] nvmem: imx-ocotp-ele: Rename FSB access map
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-8-cb7f3698c3e6@kontron.de>
References: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
In-Reply-To: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2462;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=Wd5eCJlsF1JPDy+pYFEyJ8yPtL/vqi1kQOk1CZFzDNw=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JIcvQMpRd+tB94eM3J+9r2ft00t1Xq9Sb1XmcZFzWv4n/M
 f80w8PejlIWBjEuBlkxRRYpfovXtmaxPvLHqqNg5rAygQxh4OIUgIl0+zH8M6+ettJp8qx4kftG
 TXY6F2dKFmlqr7z4yuX9ol6BzoWJbgx/JdYFc1q91Sxmeetn5r7hjVDHlan3CoIKPXiyhbkDfug
 zAQA=
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:frieder.schrempf@kontron.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312512-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kontron.de:mid,kontron.de:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,fris.de:dkim,fris.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 084CE68F0A0

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The table is used to declare which fuse registers are accessible
through the FSB block. Name it accordingly to make this clearer for
the reader.

No functional changes intended.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 3d6fad149ed5..766b0d746f6c 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -32,11 +32,11 @@ struct ocotp_devtype_data {
 	u32 reg_off;
 	char *name;
 	u32 size;
-	u32 num_entry;
+	u32 num_fsb_map;
 	u32 flag;
 	const struct nvmem_keepout *keepout;
 	unsigned int nkeepout;
-	struct ocotp_map_entry entry[];
+	struct ocotp_map_entry fsb_map[];
 };
 
 struct imx_ocotp_priv {
@@ -56,12 +56,12 @@ static enum fuse_type imx_ocotp_fuse_type(void *context, u32 index)
 	u32 start, end;
 	int i;
 
-	for (i = 0; i < data->num_entry; i++) {
-		start = data->entry[i].start;
-		end = data->entry[i].start + data->entry[i].num;
+	for (i = 0; i < data->num_fsb_map; i++) {
+		start = data->fsb_map[i].start;
+		end = data->fsb_map[i].start + data->fsb_map[i].num;
 
 		if (index >= start && index < end)
-			return data->entry[i].type;
+			return data->fsb_map[i].type;
 	}
 
 	return FUSE_INVALID;
@@ -263,8 +263,8 @@ static const struct nvmem_keepout imx93_ocotp_keepout[] = {
 static const struct ocotp_devtype_data imx93_ocotp_data = {
 	.reg_off = 0x8000,
 	.size = 2048,
-	.num_entry = 2,
-	.entry = {
+	.num_fsb_map = 2,
+	.fsb_map = {
 		{ 0, 52, FUSE_FSB },
 		{ 312, 200, FUSE_FSB }
 	},
@@ -275,8 +275,8 @@ static const struct ocotp_devtype_data imx93_ocotp_data = {
 static const struct ocotp_devtype_data imx94_ocotp_data = {
 	.reg_off = 0x8000,
 	.size = 3296, /* 103 Banks */
-	.num_entry = 9,
-	.entry = {
+	.num_fsb_map = 9,
+	.fsb_map = {
 		{ 0, 1, FUSE_FSB | FUSE_ECC },
 		{ 7, 1, FUSE_FSB | FUSE_ECC },
 		{ 9, 3, FUSE_FSB | FUSE_ECC },
@@ -292,8 +292,8 @@ static const struct ocotp_devtype_data imx94_ocotp_data = {
 static const struct ocotp_devtype_data imx95_ocotp_data = {
 	.reg_off = 0x8000,
 	.size = 2048,
-	.num_entry = 9,
-	.entry = {
+	.num_fsb_map = 9,
+	.fsb_map = {
 		{ 0, 1, FUSE_FSB | FUSE_ECC },
 		{ 7, 1, FUSE_FSB | FUSE_ECC },
 		{ 9, 3, FUSE_FSB | FUSE_ECC },

-- 
2.54.0


