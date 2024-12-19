Return-Path: <devicetree+bounces-132859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 890979F8567
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B6C5164CBF
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB4D1DE3D7;
	Thu, 19 Dec 2024 20:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XkN41dM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F431D9A40
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734638630; cv=none; b=pmdItzTwTPCzRC4L5nC/JWT1rcsMVaamsCycfnh0NctuEUXR6KHKCXIvw3P1i/OyPKjkohTRQxYINgC8wr8GP3guTSUKo+NPVprNMtNLr/HQVeWEV+jrUDeibinZAmpd5nQ0lQjcro91vWty82YVJoOJmUuIgfhyNMkfXlbNwow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734638630; c=relaxed/simple;
	bh=rrxkM9wENQkQ5BRvp3GV3Fgk68SnQpzcLBWyU5asn80=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cUNpxF/8mMcUhW6mwSD3ZnBzi4tfc0ieeqQVVALlsRvkhIKQ9ll/pR1uJzMdFDsRklYUcq83mdfOOwyjdUhSdFoUzvkPWf0GewnMm8F1gi3zxERvlybM2iO0rsaKGsWocMSSSOkkZNkLNCX6wYQxvXJSDGOAeYerLVS4seYeJV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XkN41dM7; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa66ead88b3so217783066b.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734638626; x=1735243426; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uFRZT6aUXjKTbCGojpalElYCZdqSqNPmKq/izywmlN4=;
        b=XkN41dM7JA/JLLgzIxGsDTsnus9tHcHVWsVeOejbBFtvdumAyj0lqC+F0jZJ6AkK10
         uNoByreUaE1fcoc+JXNe3XHZrZJyR0TeITZ7yI6/MRmq7pm7eqZIWyUR/kUiBAHAgWS3
         UftrNfvFWOhexkofc8xOBGtGBODkm1CjHraNWb3TlHI818HK5UrRvdaisCt9o50BE0k2
         qih+XYEDTByBxrltdA1xkFhoC3e/rOTbP/6+8184A3q+1jCK3TQCJb71OC1iS1lSel7c
         XMaYUbtLC68B1LaU+bxxt/S2MWfFAjA4lp3ipQpIXxHUmbBg2BQTbsv2nWNmOu0gJnjl
         LEdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734638626; x=1735243426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uFRZT6aUXjKTbCGojpalElYCZdqSqNPmKq/izywmlN4=;
        b=jxupuzAo3jEoBGwk92OzD5Jj8CFyb87ZHY7/Koqm05HIgCZJe0+QyZgCITaY6DLI/l
         ohXOGWu1Q5IAOCPreP10kTFP5wkXhA11cCj8UZRltUu7MRayofaPiAOF+z/vlRzi4Ayt
         zO1H9lEGh1xDpyEfY8SZM05Ss2eV2OXYbbz4VZ3eCTE25LmfmmrK3e3U21zu+n3+L1al
         rFNY8baey2t81q/ha5uLikCIBZcb26cO723nGMYLc1Q0UP3no1OOHPwug6JAdOmXI7Xy
         wVlvB13knDeGMiVyy6CKcOqLbWQPyVayY1B4C9IovfdDx5lW7NhIKb966PDKGYdM299k
         yeZg==
X-Forwarded-Encrypted: i=1; AJvYcCUD1YTt/m4h05hUFBFR6+qp5j3Mv9WWfGbJtsOjkrD/o1VFj4A9nNP5pVz0X3nVvFgh66EsiFc3A2BM@vger.kernel.org
X-Gm-Message-State: AOJu0YyBeW4n/7D/xxE7PHbG9rUp/82le9naWCaEQfSyCTiE+asC2dJ3
	aY3W8EMNwg0gKZpOyuN+s8jNMDYy6adjnPjIvn6N156ACdxtRCNtJprVXXORnWAqM+cOiJQkvB6
	n
X-Gm-Gg: ASbGncs/oqMU8XIavdL7InFYcf+45UyvkOGb/e//dXJo5NIHV2lHbGjg5Y6MurQVcPa
	NkawM6S/kqXDB33zCCM+Ks0utGr0PtmzDteWCwiNyHy/EZD4OCx0qEWtgtlH8BXdM6M6tiXqZ9X
	qvmXi88bDgL8Hp/63Jtcd7qVXk+BgcwrCbwckLYYukeArweiFomsqyzg4GN4oRXNqNecx38Eqtm
	PyLleDjFfpg7ijnj8PNF+6lhtYz+T5MRC1c1MPptAT50OkOag==
X-Google-Smtp-Source: AGHT+IEUHdNFbmAQ3AycKsc1OqVii/2jmmJDssrKygmG3svwpvJf2fJe2z0LuAZH9swXToIpEPPk/w==
X-Received: by 2002:a17:907:3d8a:b0:aab:9842:71f9 with SMTP id a640c23a62f3a-aac2ad8c58dmr5033166b.22.1734638626100;
        Thu, 19 Dec 2024 12:03:46 -0800 (PST)
Received: from localhost ([2001:4090:a244:82f5:6854:cb:184:5d19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066130sm98016366b.183.2024.12.19.12.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 12:03:45 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 19 Dec 2024 21:02:13 +0100
Subject: [PATCH v4 2/4] firmware: ti_sci: Partial-IO support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-topic-am62-partialio-v6-12-b4-v4-2-1cb8eabd407e@baylibre.com>
References: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
In-Reply-To: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6234; i=msp@baylibre.com;
 h=from:subject:message-id; bh=rrxkM9wENQkQ5BRvp3GV3Fgk68SnQpzcLBWyU5asn80=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJTavhLGkUXvH4w9/vuA289jCQ/sJ2Szn3/On7dpYsBP
 kVvqmfLdZSyMIhxMMiKKbLc/bDwXZ3c9QUR6x45wsxhZQIZwsDFKQATOTeB4b/D7DXBOyd2G66e
 lTqxX/OJ36E96avWPr6x1P2PuMkULt3nDP+Uvuq99HbiuvmpKHCn8kOe038VGSSETe6edjm+Skx
 hzhpOAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add support for Partial-IO poweroff. In Partial-IO pins of a few
hardware units can generate system wakeups while DDR memory is not
powered resulting in a fresh boot of the system. These hardware units in
the SoC are always powered so that some logic can detect pin activity.

If the system supports Partial-IO as described in the fw capabilities, a
sys_off handler is added. This sys_off handler decides if the poweroff
is executed by entering normal poweroff or Partial-IO instead. The
decision is made by checking if wakeup is enabled on all devices that
may wake up the SoC from Partial-IO.

The possible wakeup devices are found by checking which devices have the
"poweroff" in the list of wakeup-source power states. Only devices that
are actually enabled by the user will be considered as an active wakeup
source. If none of the wakeup sources is enabled the system will do a
normal poweroff. If at least one wakeup source is enabled it will
instead send a TI_SCI_MSG_PREPARE_SLEEP message from the sys_off
handler. Sending this message will result in an immediate shutdown of
the system. No execution is expected after this point. The code will
wait for 5s and do an emergency_restart afterwards if Partial-IO wasn't
entered at that point.

A short documentation about Partial-IO can be found in section 6.2.4.5
of the TRM at
  https://www.ti.com/lit/pdf/spruiv7

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/firmware/ti_sci.c | 115 +++++++++++++++++++++++++++++++++++++++++++++-
 drivers/firmware/ti_sci.h |   5 ++
 2 files changed, 119 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index ec0c54935ac0d667323d98b86ac9d288b73be6aa..693ac816f8ba3941a9156bd39524099ca476d712 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -3746,6 +3746,100 @@ static const struct dev_pm_ops ti_sci_pm_ops = {
 #endif
 };
 
+/*
+ * Enter Partial-IO, which disables everything including DDR with only a small
+ * logic being active for wakeup.
+ */
+static int tisci_enter_partial_io(struct ti_sci_info *info)
+{
+	struct ti_sci_msg_req_prepare_sleep *req;
+	struct ti_sci_xfer *xfer;
+	struct device *dev = info->dev;
+	int ret = 0;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_PREPARE_SLEEP,
+				   TI_SCI_FLAG_REQ_GENERIC_NORESPONSE,
+				   sizeof(*req), sizeof(struct ti_sci_msg_hdr));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+
+	req = (struct ti_sci_msg_req_prepare_sleep *)xfer->xfer_buf;
+	req->mode = TISCI_MSG_VALUE_SLEEP_MODE_PARTIAL_IO;
+	req->ctx_lo = 0;
+	req->ctx_hi = 0;
+	req->debug_flags = 0;
+
+	dev_info(dev, "Entering Partial-IO because a powered wakeup-enabled device was found.\n");
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
+static bool tisci_canuart_wakeup_enabled(struct ti_sci_info *info)
+{
+	struct device_node *wakeup_node = NULL;
+
+	for (wakeup_node = of_find_node_with_property(NULL, "wakeup-source");
+	     wakeup_node;
+	     wakeup_node = of_find_node_with_property(wakeup_node, "wakeup-source")) {
+		struct platform_device *pdev;
+		int index;
+
+		index = of_property_match_string(wakeup_node, "wakeup-source", "poweroff");
+		if (index < 0)
+			continue;
+
+		pdev = of_find_device_by_node(wakeup_node);
+		if (!pdev)
+			break;
+
+		if (device_may_wakeup(&pdev->dev)) {
+			dev_dbg(info->dev, "%pOF identified as wakeup source for Partial-IO\n",
+				wakeup_node);
+			put_device(&pdev->dev);
+			of_node_put(wakeup_node);
+			return true;
+		}
+	}
+
+	return false;
+}
+
+static int tisci_sys_off_handler(struct sys_off_data *data)
+{
+	struct ti_sci_info *info = data->cb_data;
+	bool enter_partial_io = tisci_canuart_wakeup_enabled(info);
+	int ret;
+
+	if (!enter_partial_io)
+		return NOTIFY_DONE;
+
+	ret = tisci_enter_partial_io(info);
+
+	if (ret) {
+		dev_err(info->dev,
+			"Failed to enter Partial-IO %pe, trying to do an emergency restart\n",
+			ERR_PTR(ret));
+		emergency_restart();
+	}
+
+	mdelay(5000);
+	emergency_restart();
+
+	return NOTIFY_DONE;
+}
+
 /* Description for K2G */
 static const struct ti_sci_desc ti_sci_pmmc_k2g_desc = {
 	.default_host_id = 2,
@@ -3889,6 +3983,19 @@ static int ti_sci_probe(struct platform_device *pdev)
 		goto out;
 	}
 
+	if (info->fw_caps & MSG_FLAG_CAPS_LPM_PARTIAL_IO) {
+		ret = devm_register_sys_off_handler(dev,
+						    SYS_OFF_MODE_POWER_OFF,
+						    SYS_OFF_PRIO_FIRMWARE,
+						    tisci_sys_off_handler,
+						    info);
+		if (ret) {
+			dev_err(dev, "Failed to register sys_off_handler %pe\n",
+				ERR_PTR(ret));
+			goto out;
+		}
+	}
+
 	dev_info(dev, "ABI: %d.%d (firmware rev 0x%04x '%s')\n",
 		 info->handle.version.abi_major, info->handle.version.abi_minor,
 		 info->handle.version.firmware_revision,
@@ -3898,7 +4005,13 @@ static int ti_sci_probe(struct platform_device *pdev)
 	list_add_tail(&info->node, &ti_sci_list);
 	mutex_unlock(&ti_sci_list_mutex);
 
-	return of_platform_populate(dev->of_node, NULL, NULL, dev);
+	ret = of_platform_populate(dev->of_node, NULL, NULL, dev);
+	if (ret) {
+		dev_err(dev, "platform_populate failed %pe\n", ERR_PTR(ret));
+		goto out;
+	}
+	return 0;
+
 out:
 	if (!IS_ERR(info->chan_tx))
 		mbox_free_channel(info->chan_tx);
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index 053387d7baa064498e6a208daa7f70040ef87281..dec9e20cbe5da8f6d9393d56bb9a1e73cb083a42 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -592,6 +592,11 @@ struct ti_sci_msg_resp_get_clock_freq {
 struct ti_sci_msg_req_prepare_sleep {
 	struct ti_sci_msg_hdr	hdr;
 
+/*
+ * When sending perpare_sleep with MODE_PARTIAL_IO no response will be sent,
+ * no further steps are required.
+ */
+#define TISCI_MSG_VALUE_SLEEP_MODE_PARTIAL_IO				0x03
 #define TISCI_MSG_VALUE_SLEEP_MODE_DM_MANAGED				0xfd
 	u8			mode;
 	u32			ctx_lo;

-- 
2.45.2


