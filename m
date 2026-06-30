Return-Path: <devicetree+bounces-317781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PwkWLS+/Q2qPgQoAu9opvQ
	(envelope-from <devicetree+bounces-317781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:05:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9BC6E49C2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:05:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fi2Qexid;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317781-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317781-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18CD531ADB5A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BD58421A09;
	Tue, 30 Jun 2026 12:54:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4386413245;
	Tue, 30 Jun 2026 12:54:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782824087; cv=none; b=rbuG+u876Ep52S3nI/8gMfCWIJqxPsntrYABZOJvQZ67VTHXDwM7/wy7Jqmwn7edEh7kmeEdcyeT77k+Y6blKExz8KlCy3Lb2sz1jQvplwIi6QvNUD8XfxcYnkqQsXQ3yc3C1x84o7qao4REzmaOLrquhBI0UJasbPfv/Opv8VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782824087; c=relaxed/simple;
	bh=/hlpe6cnaNnjH8M3ZgDbGLL+CA8dnfXHdAP46wuyD1Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kv0RIn3W665TfcpQydZVNJFY+SXijZU28HbvMGKGmq3Mq7ltazzvS+MrxweDg5qa5ZZN7EHx77O5hscm6SLwXyb8M2u02doZR8g6q5nHrLZoZArSAM8XFbgCQ6YCDoEAORa0edomMrWyDb6g6UZhOjAXED+JGRkphXaHIdPNTgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fi2Qexid; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B17C2BCF6;
	Tue, 30 Jun 2026 12:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782824086;
	bh=/hlpe6cnaNnjH8M3ZgDbGLL+CA8dnfXHdAP46wuyD1Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=fi2QexidsvJlA0AaAArvBcIc3zfYhzv/gbKTJqDAs2AfX2ba/W8lKosjgk9hNyfvg
	 9PaLsLs8HCIr//R+QghJBkUyT3khbcK1RkE2lTvn4gRL+9lf1yYunLHdMbwNVeHh+v
	 JQrZ91TS7CDIipurznVoR89V41cyFTGI+J8Wkf70s+aVTgElA8lJjpxEXdetU/W9Yw
	 YKoL1tOBfodtQF3zWG697gcMeHJuRfIDidAx3TeUIuXDHCcIk1WSEp32o6NHSBPQ5N
	 97iy1XiU3cI4x2yaIEuAc1WdM+qMBPLbRFdjgqYik26Lp2UgCgRrzZKx7nuJwPzLJV
	 WGpUlGRry2tRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9441C43458;
	Tue, 30 Jun 2026 12:54:46 +0000 (UTC)
From: Michael Reeves via B4 Relay <devnull+michael.reeves077.gmail.com@kernel.org>
Date: Tue, 30 Jun 2026 22:54:35 +1000
Subject: [PATCH 07/10] HID: apple: Add support for DockChannel HID
 keyboards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-apple-mtp-keyboard-final-v1-7-506d936a1707@gmail.com>
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
In-Reply-To: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Jassi Brar <jassisinghbrar@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hector Martin <marcan@marcan.st>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Jiri Kosina <jikos@kernel.org>, 
 Benjamin Tissoires <bentiss@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 iommu@lists.linux.dev, linux-input@vger.kernel.org, 
 Michael Reeves <michael.reeves077@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782824083; l=8555;
 i=michael.reeves077@gmail.com; s=20260105; h=from:subject:message-id;
 bh=6yE6aPZb9tp6hFgVMnmA6H50KbXFNGStoSs+JCgZxl0=;
 b=OpXm1MgNkoDy8VFQrjkrrXlTcOxcFF3aH5P9H/l26/nx7yJoWCrq7WjkQdz4JA26KJpJSrAy/
 KTzmxv9DIlFDxT18Lf/5y7YBG5sHOZZJjxfnK+o6hr8TGI0oyBy+C4g
X-Developer-Key: i=michael.reeves077@gmail.com; a=ed25519;
 pk=QIrgWBGCm3LG0YYc6MLCDkwuVXLTGGooVBdWX/KhSiU=
X-Endpoint-Received: by B4 Relay for michael.reeves077@gmail.com/20260105
 with auth_id=591
X-Original-From: Michael Reeves <michael.reeves077@gmail.com>
Reply-To: michael.reeves077@gmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317781-lists,devicetree=lfdr.de,michael.reeves077.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:jassisinghbrar@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:marcan@marcan.st,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dmitry.torokhov@gmail.com,m:jikos@kernel.org,m:bentiss@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-input@vger.kernel.org,m:michael.reeves077@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,m:michaelreeves077@gmail.com,s:lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,jannau.net,gompa.dev,gmail.com,marcan.st,8bytes.org,arm.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[michael.reeves077@gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F9BC6E49C2

From: Michael Reeves <michael.reeves077@gmail.com>

DockChannel keyboards are registered as host-bus Apple HID devices
instead of USB or Bluetooth devices.

Match them in hid-apple, use the modern Magic Keyboard function-key
table, and fix up the oversized report-size descriptor pattern before
parsing.

Signed-off-by: Michael Reeves <michael.reeves077@gmail.com>
---
 drivers/hid/hid-apple.c | 139 ++++++++++++++++++++++++++++++++----------------
 include/linux/hid.h     |   1 +
 2 files changed, 94 insertions(+), 46 deletions(-)

diff --git a/drivers/hid/hid-apple.c b/drivers/hid/hid-apple.c
index bf7dd0fbf249..47c6ec09d5fa 100644
--- a/drivers/hid/hid-apple.c
+++ b/drivers/hid/hid-apple.c
@@ -390,6 +390,12 @@ static bool apple_is_omoton_kb066(struct hid_device *hdev)
 		strcmp(hdev->name, "Bluetooth Keyboard") == 0;
 }
 
+static bool apple_is_dockchannel_keyboard(struct hid_device *hdev)
+{
+	return hdev->bus == BUS_HOST &&
+	       hdev->group == HID_GROUP_APPLE_DOCKCHANNEL;
+}
+
 static inline void apple_setup_key_translation(struct input_dev *input,
 		const struct apple_key_translation *table)
 {
@@ -477,53 +483,57 @@ static int hidinput_apple_event(struct hid_device *hid, struct input_dev *input,
 		asc->fn_on = !!value;
 
 	if (real_fnmode) {
-		switch (hid->product) {
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_ANSI:
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_ISO:
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_JIS:
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2009_ANSI:
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2009_ISO:
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2009_JIS:
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2011_ANSI:
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2011_ISO:
-		case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2011_JIS:
-			table = magic_keyboard_alu_fn_keys;
-			break;
-		case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_2015:
-		case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_NUMPAD_2015:
-			table = magic_keyboard_2015_fn_keys;
-			break;
-		case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_2021:
-		case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_FINGERPRINT_2021:
-		case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_NUMPAD_2021:
-		case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_2024:
-		case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_FINGERPRINT_2024:
-		case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_NUMPAD_2024:
+		if (apple_is_dockchannel_keyboard(hid)) {
 			table = magic_keyboard_2021_and_2024_fn_keys;
-			break;
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J132:
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J213:
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J680:
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J680_ALT:
-			table = macbookpro_no_esc_fn_keys;
-			break;
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J152F:
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J214K:
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J223:
-			table = macbookpro_dedicated_esc_fn_keys;
-			break;
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J140K:
-		case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J230K:
-			table = apple_fn_keys;
-			break;
-		default:
-			if (hid->product >= USB_DEVICE_ID_APPLE_WELLSPRING4_ANSI &&
-			    hid->product <= USB_DEVICE_ID_APPLE_WELLSPRING4A_JIS)
-				table = macbookair_fn_keys;
-			else if (hid->product < 0x21d || hid->product >= 0x300)
-				table = powerbook_fn_keys;
-			else
+		} else {
+			switch (hid->product) {
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_ANSI:
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_ISO:
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_JIS:
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2009_ANSI:
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2009_ISO:
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2009_JIS:
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2011_ANSI:
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2011_ISO:
+			case USB_DEVICE_ID_APPLE_ALU_WIRELESS_2011_JIS:
+				table = magic_keyboard_alu_fn_keys;
+				break;
+			case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_2015:
+			case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_NUMPAD_2015:
+				table = magic_keyboard_2015_fn_keys;
+				break;
+			case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_2021:
+			case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_FINGERPRINT_2021:
+			case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_NUMPAD_2021:
+			case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_2024:
+			case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_FINGERPRINT_2024:
+			case USB_DEVICE_ID_APPLE_MAGIC_KEYBOARD_NUMPAD_2024:
+				table = magic_keyboard_2021_and_2024_fn_keys;
+				break;
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J132:
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J213:
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J680:
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J680_ALT:
+				table = macbookpro_no_esc_fn_keys;
+				break;
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J152F:
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J214K:
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J223:
+				table = macbookpro_dedicated_esc_fn_keys;
+				break;
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J140K:
+			case USB_DEVICE_ID_APPLE_WELLSPRINGT2_J230K:
 				table = apple_fn_keys;
+				break;
+			default:
+				if (hid->product >= USB_DEVICE_ID_APPLE_WELLSPRING4_ANSI &&
+				    hid->product <= USB_DEVICE_ID_APPLE_WELLSPRING4A_JIS)
+					table = macbookair_fn_keys;
+				else if (hid->product < 0x21d || hid->product >= 0x300)
+					table = powerbook_fn_keys;
+				else
+					table = apple_fn_keys;
+			}
 		}
 
 		trans = apple_find_translation(table, code);
@@ -659,6 +669,7 @@ static void apple_battery_timer_tick(struct timer_list *t)
 /*
  * MacBook JIS keyboard has wrong logical maximum
  * Magic Keyboard JIS has wrong logical maximum
+ * Internal DockChannel keyboards can advertise oversized report sizes
  */
 static const __u8 *apple_report_fixup(struct hid_device *hdev, __u8 *rdesc,
 		unsigned int *rsize)
@@ -699,6 +710,27 @@ static const __u8 *apple_report_fixup(struct hid_device *hdev, __u8 *rdesc,
 		rdesc[3] = 0x06;
 	}
 
+	if (apple_is_dockchannel_keyboard(hdev) && *rsize >= 5) {
+		int i;
+
+		for (i = 0; i <= *rsize - 5; i++) {
+			if (rdesc[i] == 0x76 && rdesc[i + 1] == 0x00 &&
+			    rdesc[i + 2] == 0x40 && rdesc[i + 3] == 0x95) {
+				u8 count = rdesc[i + 4];
+
+				if (count > 0 && count < 32) {
+					hid_info(hdev,
+						 "fixing up DockChannel report size\n");
+					rdesc[i] = 0x75;
+					rdesc[i + 1] = 0x08;
+					rdesc[i + 2] = 0x96;
+					rdesc[i + 3] = 0x00;
+					rdesc[i + 4] = count * 8;
+				}
+			}
+		}
+	}
+
 	return rdesc;
 }
 
@@ -763,7 +795,7 @@ static int apple_input_configured(struct hid_device *hdev,
 	struct apple_sc *asc = hid_get_drvdata(hdev);
 
 	if (((asc->quirks & APPLE_HAS_FN) && !asc->fn_found) || apple_is_omoton_kb066(hdev)) {
-		hid_info(hdev, "Fn key not found (Apple Wireless Keyboard clone?), disabling Fn key handling\n");
+		hid_info(hdev, "Disabling function quirk for device without function key\n");
 		asc->quirks &= ~APPLE_HAS_FN;
 	}
 
@@ -1003,6 +1035,17 @@ static void apple_remove(struct hid_device *hdev)
 	hid_hw_stop(hdev);
 }
 
+static bool apple_match(struct hid_device *hdev, bool ignore_special_driver)
+{
+	if (ignore_special_driver)
+		return false;
+
+	if (hdev->group == HID_GROUP_APPLE_DOCKCHANNEL)
+		return apple_is_dockchannel_keyboard(hdev);
+
+	return true;
+}
+
 static const struct hid_device_id apple_devices[] = {
 	{ HID_USB_DEVICE(USB_VENDOR_ID_APPLE, USB_DEVICE_ID_APPLE_MIGHTYMOUSE),
 		.driver_data = APPLE_MIGHTYMOUSE | APPLE_INVERT_HWHEEL },
@@ -1224,6 +1267,9 @@ static const struct hid_device_id apple_devices[] = {
 		.driver_data = APPLE_HAS_FN | APPLE_ISO_TILDE_QUIRK },
 	{ HID_USB_DEVICE(USB_VENDOR_ID_APPLE, USB_DEVICE_ID_APPLE_TOUCHBAR_BACKLIGHT),
 		.driver_data = APPLE_MAGIC_BACKLIGHT },
+	{ HID_DEVICE(BUS_HOST, HID_GROUP_APPLE_DOCKCHANNEL,
+		     HID_ANY_ID, HID_ANY_ID),
+		.driver_data = APPLE_HAS_FN | APPLE_ISO_TILDE_QUIRK },
 
 	{ }
 };
@@ -1232,6 +1278,7 @@ MODULE_DEVICE_TABLE(hid, apple_devices);
 static struct hid_driver apple_driver = {
 	.name = "apple",
 	.id_table = apple_devices,
+	.match = apple_match,
 	.report_fixup = apple_report_fixup,
 	.probe = apple_probe,
 	.remove = apple_remove,
diff --git a/include/linux/hid.h b/include/linux/hid.h
index 47dc0bc89fa4..0d40deec6295 100644
--- a/include/linux/hid.h
+++ b/include/linux/hid.h
@@ -441,6 +441,7 @@ struct hid_item {
 #define HID_GROUP_STEAM				0x0103
 #define HID_GROUP_LOGITECH_27MHZ_DEVICE		0x0104
 #define HID_GROUP_VIVALDI			0x0105
+#define HID_GROUP_APPLE_DOCKCHANNEL		0x0106
 
 /*
  * HID protocol status

-- 
2.51.2



