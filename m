Return-Path: <devicetree+bounces-323546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nOr7A5R5T2rqhgIAu9opvQ
	(envelope-from <devicetree+bounces-323546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:36:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D02D72FAF0
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:36:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=cDYIfjw0;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323546-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323546-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71C45318C98A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C303407CCD;
	Thu,  9 Jul 2026 09:58:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1044071C8
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 09:57:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783591080; cv=none; b=dlXZdwUULJEYKZH0ugjqCPsseywMaArIaAVCZqaIzug24Ps6DKmQs8c5nNZvqwJd0PluOEc6r1FBYQEJoYRibdB5zWNroFhxa2K2j5+82DIGFxyfr1X9Sf9UOmUvr5k0Re+CmarF86ub8hSPoe50amU1ozdVSojvKmdL04llo4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783591080; c=relaxed/simple;
	bh=8mYc+Nbjm6+sQSrADVmvWRSMeKKljH7evJpSSNXklR0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=blN3DHP2hleYOayHkFadsOZN4JKua7JAbKn0jjT153PkXqM9oBna7VlqasPZXRdldSwt3Wrmku7HRBL3eFzU+6CUotl0Mi4e1oJiVB8MBtRFZtfDa9SebvUwMmDeDsKkSCLyeyvULzyLkKoB67cFs3QzqO2QMTECBNJJby985nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cDYIfjw0; arc=none smtp.client-ip=209.85.214.179
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2cacf197759so26005965ad.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 02:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783591078; x=1784195878; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZO05xNK1Hbq+tmP+bxjD79MnCLqnvQlOFToHRwo4P0Q=;
        b=cDYIfjw0tctxjV3LHr28wZw9HbFx0L59CuLb636tk53eH0xU2HiwPhvAuL8JzpDcrU
         XeZJOnKHysmF3AnmritDPjyvF7sF8zPc1FkSLZXuos3fWoIPowIJWcTT/B4bTw0UQ9nR
         f9Zjs5VWNq9gbpVMDZqmQLs7n+FlXIL88kkGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783591078; x=1784195878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZO05xNK1Hbq+tmP+bxjD79MnCLqnvQlOFToHRwo4P0Q=;
        b=gShRiFHGMexhnLUmaLNJKzwXWjuE8+mb+0oru+RkJ+jv+YBeP7Lqmj4ZpaXizPf7pA
         AIyu+WWFRsJUGJiRk3xb/jqijRGlBmNZ1/D2vZESWruCchfK+RIAkp3gwpzhCVN3mFI/
         wLOtyNA2ZKn9otZ8+UfAux8nlYTRI1e43VV9K5itn6gMI/yDcd31oRHhI3P0PlIBN7RU
         ALAODQgIYo2znqIJu/fm6YoNkkk9WtatTaY6IUDrC4tbYIZqpPQmAM2XjssRrTD+tfmA
         bTfaLFsGpNQTVmNaGCHULzmRbFPSDfhrJxKIolRsDdL+BNrtMJCErSpyG+V0jFziivbG
         AZkw==
X-Forwarded-Encrypted: i=1; AHgh+Ro8a0hxsub2J7aDk+qvv//sPS0gb6nsAiAYvKiQKiVuZkZjKMnqGXIsph/Jz3iMvqqNOKNdn60iNyJx@vger.kernel.org
X-Gm-Message-State: AOJu0YxAFVEOoUCLdqydlX9GzhB952EUG0CxuePE7Jy7IF5CN05Wpi50
	75qdJOriy/KOgFpFhU4p+tD8squZ0PpYFskefFBJdCcJi+7B+dV/sbW+9AlCTqqnMA==
X-Gm-Gg: AfdE7cng5OSEuyHoSlO0eX5lWIL5JPosQTENEP/OoaBVV2V7YbedNPWgLjgJMs4en71
	IyKCKSwZ+MLjV60LHp4iASs0miI4W9i+jmV3DGie705z897sVC8Bbj11w56i0ZalzoG4b7r5zWV
	XZYWr2U9L27hQpvQEjFUhb/k14i/kGm0a8OdheqvPvzh8CJNtOVGHP7mTTbV4dIGD+PMw/1Ihhc
	auYgd7z4/aXntgJpVVbjftFNLVaibFxSDcAtFZddvhQpxcBd0ShiTbHVGuG05mIGzsCkQbh6juY
	3v0ptGuSYbJPW7b0bl5SCtXhpSy6+nhzN6T4+5EpScGdzp6b0Xb9QGBhSXxfm5ogr1dn9pDPy9x
	OZF/4wUnLe92e+dGAdHFST5nvdjse459ELL686hOf9rwkQTKRtvG34o0HkmxaCkKHT2FpUk1uT4
	ElRYHHdMV8udF7R5zQ+RfRCpIzot3FwNNC/uyPZYwXbe4ge+dvfRAY8GbMJVWcfKb2Hq/qXg==
X-Received: by 2002:a17:902:e78e:b0:2bf:dd0:c8b1 with SMTP id d9443c01a7336-2ccea1a4d4cmr66175845ad.0.1783591077993;
        Thu, 09 Jul 2026 02:57:57 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:bd09:6ddb:180a:69c5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d5bd2fsm41082155ad.78.2026.07.09.02.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 02:57:57 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Bartosz Golaszewski <brgl@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v4 04/14] usb: hub: Return actual error from hub_configure() in hub_probe()
Date: Thu,  9 Jul 2026 17:57:09 +0800
Message-ID: <20260709095726.704448-5-wenst@chromium.org>
X-Mailer: git-send-email 2.55.0.795.g602f6c329a-goog
In-Reply-To: <20260709095726.704448-1-wenst@chromium.org>
References: <20260709095726.704448-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-323546-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:bartosz.golaszewski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:from_mime,chromium.org:email,chromium.org:mid,chromium.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D02D72FAF0

The addition of power sequencing descriptor handling in the USB hub code
requires dealing with deferred probing from pwrseq_get(). The power
sequencing provider may not yet be available when the USB hub probes.

Return the actual error code from hub_configure() when it fails, so that
the driver core can notice the deferred probe request.

Also rewrite this section into the standard error handling pattern:

    if (error) {
        # handle error
        return error;
    }

    # do more work
    return 0;

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v2:
- Rewrite into standard error handling pattern

Changes since v1:
- Moved "int ret" declaration in hub_configure() over here from the next
  patch
---
 drivers/usb/core/hub.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 13264e86bc6d..fe10d72ef39d 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -1874,6 +1874,7 @@ static int hub_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	struct usb_host_interface *desc;
 	struct usb_device *hdev;
 	struct usb_hub *hub;
+	int ret;
 
 	desc = intf->cur_altsetting;
 	hdev = interface_to_usbdev(intf);
@@ -2005,14 +2006,15 @@ static int hub_probe(struct usb_interface *intf, const struct usb_device_id *id)
 		usb_set_interface(hdev, 0, 0);
 	}
 
-	if (hub_configure(hub, &desc->endpoint[0].desc) >= 0) {
-		onboard_dev_create_pdevs(hdev, &hub->onboard_devs);
-
-		return 0;
+	ret = hub_configure(hub, &desc->endpoint[0].desc);
+	if (ret < 0) {
+		hub_disconnect(intf);
+		return ret;
 	}
 
-	hub_disconnect(intf);
-	return -ENODEV;
+	onboard_dev_create_pdevs(hdev, &hub->onboard_devs);
+
+	return 0;
 }
 
 static int
-- 
2.55.0.795.g602f6c329a-goog


